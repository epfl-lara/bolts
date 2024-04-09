; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111902 () Bool)

(assert start!111902)

(declare-fun b_free!30465 () Bool)

(declare-fun b_next!30465 () Bool)

(assert (=> start!111902 (= b_free!30465 (not b_next!30465))))

(declare-fun tp!106876 () Bool)

(declare-fun b_and!49035 () Bool)

(assert (=> start!111902 (= tp!106876 b_and!49035)))

(declare-fun b!1325317 () Bool)

(declare-fun res!879682 () Bool)

(declare-fun e!755558 () Bool)

(assert (=> b!1325317 (=> (not res!879682) (not e!755558))))

(declare-datatypes ((array!89439 0))(
  ( (array!89440 (arr!43188 (Array (_ BitVec 32) (_ BitVec 64))) (size!43739 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!89439)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-datatypes ((V!53483 0))(
  ( (V!53484 (val!18217 Int)) )
))
(declare-datatypes ((ValueCell!17244 0))(
  ( (ValueCellFull!17244 (v!20848 V!53483)) (EmptyCell!17244) )
))
(declare-datatypes ((array!89441 0))(
  ( (array!89442 (arr!43189 (Array (_ BitVec 32) ValueCell!17244)) (size!43740 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!89441)

(declare-fun mask!2019 () (_ BitVec 32))

(assert (=> b!1325317 (= res!879682 (and (= (size!43740 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43739 _keys!1609) (size!43740 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!56079 () Bool)

(declare-fun mapRes!56079 () Bool)

(assert (=> mapIsEmpty!56079 mapRes!56079))

(declare-fun b!1325318 () Bool)

(declare-fun e!755557 () Bool)

(declare-fun e!755556 () Bool)

(assert (=> b!1325318 (= e!755557 (and e!755556 mapRes!56079))))

(declare-fun condMapEmpty!56079 () Bool)

(declare-fun mapDefault!56079 () ValueCell!17244)

(assert (=> b!1325318 (= condMapEmpty!56079 (= (arr!43189 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17244)) mapDefault!56079)))))

(declare-fun b!1325319 () Bool)

(assert (=> b!1325319 (= e!755558 false)))

(declare-fun lt!589714 () Bool)

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun zeroValue!1279 () V!53483)

(declare-fun minValue!1279 () V!53483)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun defaultEntry!1340 () Int)

(declare-datatypes ((tuple2!23646 0))(
  ( (tuple2!23647 (_1!11833 (_ BitVec 64)) (_2!11833 V!53483)) )
))
(declare-datatypes ((List!30814 0))(
  ( (Nil!30811) (Cons!30810 (h!32019 tuple2!23646) (t!44757 List!30814)) )
))
(declare-datatypes ((ListLongMap!21315 0))(
  ( (ListLongMap!21316 (toList!10673 List!30814)) )
))
(declare-fun contains!8766 (ListLongMap!21315 (_ BitVec 64)) Bool)

(declare-fun +!4589 (ListLongMap!21315 tuple2!23646) ListLongMap!21315)

(declare-fun getCurrentListMapNoExtraKeys!6307 (array!89439 array!89441 (_ BitVec 32) (_ BitVec 32) V!53483 V!53483 (_ BitVec 32) Int) ListLongMap!21315)

(declare-fun get!21794 (ValueCell!17244 V!53483) V!53483)

(declare-fun dynLambda!3626 (Int (_ BitVec 64)) V!53483)

(assert (=> b!1325319 (= lt!589714 (contains!8766 (+!4589 (+!4589 (+!4589 (getCurrentListMapNoExtraKeys!6307 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23647 (select (arr!43188 _keys!1609) from!2000) (get!21794 (select (arr!43189 _values!1337) from!2000) (dynLambda!3626 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!23647 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)) (tuple2!23647 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279)) k0!1164))))

(declare-fun b!1325320 () Bool)

(declare-fun res!879678 () Bool)

(assert (=> b!1325320 (=> (not res!879678) (not e!755558))))

(assert (=> b!1325320 (= res!879678 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43739 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1325321 () Bool)

(declare-fun res!879679 () Bool)

(assert (=> b!1325321 (=> (not res!879679) (not e!755558))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!89439 (_ BitVec 32)) Bool)

(assert (=> b!1325321 (= res!879679 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun mapNonEmpty!56079 () Bool)

(declare-fun tp!106875 () Bool)

(declare-fun e!755560 () Bool)

(assert (=> mapNonEmpty!56079 (= mapRes!56079 (and tp!106875 e!755560))))

(declare-fun mapRest!56079 () (Array (_ BitVec 32) ValueCell!17244))

(declare-fun mapValue!56079 () ValueCell!17244)

(declare-fun mapKey!56079 () (_ BitVec 32))

(assert (=> mapNonEmpty!56079 (= (arr!43189 _values!1337) (store mapRest!56079 mapKey!56079 mapValue!56079))))

(declare-fun b!1325322 () Bool)

(declare-fun tp_is_empty!36285 () Bool)

(assert (=> b!1325322 (= e!755560 tp_is_empty!36285)))

(declare-fun b!1325323 () Bool)

(declare-fun res!879683 () Bool)

(assert (=> b!1325323 (=> (not res!879683) (not e!755558))))

(declare-fun getCurrentListMap!5608 (array!89439 array!89441 (_ BitVec 32) (_ BitVec 32) V!53483 V!53483 (_ BitVec 32) Int) ListLongMap!21315)

(assert (=> b!1325323 (= res!879683 (contains!8766 (getCurrentListMap!5608 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1325324 () Bool)

(declare-fun res!879684 () Bool)

(assert (=> b!1325324 (=> (not res!879684) (not e!755558))))

(assert (=> b!1325324 (= res!879684 (not (= (select (arr!43188 _keys!1609) from!2000) k0!1164)))))

(declare-fun res!879681 () Bool)

(assert (=> start!111902 (=> (not res!879681) (not e!755558))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111902 (= res!879681 (validMask!0 mask!2019))))

(assert (=> start!111902 e!755558))

(declare-fun array_inv!32543 (array!89439) Bool)

(assert (=> start!111902 (array_inv!32543 _keys!1609)))

(assert (=> start!111902 true))

(assert (=> start!111902 tp_is_empty!36285))

(declare-fun array_inv!32544 (array!89441) Bool)

(assert (=> start!111902 (and (array_inv!32544 _values!1337) e!755557)))

(assert (=> start!111902 tp!106876))

(declare-fun b!1325325 () Bool)

(declare-fun res!879677 () Bool)

(assert (=> b!1325325 (=> (not res!879677) (not e!755558))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1325325 (= res!879677 (validKeyInArray!0 (select (arr!43188 _keys!1609) from!2000)))))

(declare-fun b!1325326 () Bool)

(declare-fun res!879680 () Bool)

(assert (=> b!1325326 (=> (not res!879680) (not e!755558))))

(declare-datatypes ((List!30815 0))(
  ( (Nil!30812) (Cons!30811 (h!32020 (_ BitVec 64)) (t!44758 List!30815)) )
))
(declare-fun arrayNoDuplicates!0 (array!89439 (_ BitVec 32) List!30815) Bool)

(assert (=> b!1325326 (= res!879680 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30812))))

(declare-fun b!1325327 () Bool)

(assert (=> b!1325327 (= e!755556 tp_is_empty!36285)))

(assert (= (and start!111902 res!879681) b!1325317))

(assert (= (and b!1325317 res!879682) b!1325321))

(assert (= (and b!1325321 res!879679) b!1325326))

(assert (= (and b!1325326 res!879680) b!1325320))

(assert (= (and b!1325320 res!879678) b!1325323))

(assert (= (and b!1325323 res!879683) b!1325324))

(assert (= (and b!1325324 res!879684) b!1325325))

(assert (= (and b!1325325 res!879677) b!1325319))

(assert (= (and b!1325318 condMapEmpty!56079) mapIsEmpty!56079))

(assert (= (and b!1325318 (not condMapEmpty!56079)) mapNonEmpty!56079))

(get-info :version)

(assert (= (and mapNonEmpty!56079 ((_ is ValueCellFull!17244) mapValue!56079)) b!1325322))

(assert (= (and b!1325318 ((_ is ValueCellFull!17244) mapDefault!56079)) b!1325327))

(assert (= start!111902 b!1325318))

(declare-fun b_lambda!23753 () Bool)

(assert (=> (not b_lambda!23753) (not b!1325319)))

(declare-fun t!44756 () Bool)

(declare-fun tb!11747 () Bool)

(assert (=> (and start!111902 (= defaultEntry!1340 defaultEntry!1340) t!44756) tb!11747))

(declare-fun result!24543 () Bool)

(assert (=> tb!11747 (= result!24543 tp_is_empty!36285)))

(assert (=> b!1325319 t!44756))

(declare-fun b_and!49037 () Bool)

(assert (= b_and!49035 (and (=> t!44756 result!24543) b_and!49037)))

(declare-fun m!1214245 () Bool)

(assert (=> b!1325323 m!1214245))

(assert (=> b!1325323 m!1214245))

(declare-fun m!1214247 () Bool)

(assert (=> b!1325323 m!1214247))

(declare-fun m!1214249 () Bool)

(assert (=> b!1325326 m!1214249))

(declare-fun m!1214251 () Bool)

(assert (=> mapNonEmpty!56079 m!1214251))

(declare-fun m!1214253 () Bool)

(assert (=> b!1325321 m!1214253))

(declare-fun m!1214255 () Bool)

(assert (=> b!1325324 m!1214255))

(declare-fun m!1214257 () Bool)

(assert (=> b!1325319 m!1214257))

(declare-fun m!1214259 () Bool)

(assert (=> b!1325319 m!1214259))

(assert (=> b!1325319 m!1214257))

(declare-fun m!1214261 () Bool)

(assert (=> b!1325319 m!1214261))

(declare-fun m!1214263 () Bool)

(assert (=> b!1325319 m!1214263))

(declare-fun m!1214265 () Bool)

(assert (=> b!1325319 m!1214265))

(declare-fun m!1214267 () Bool)

(assert (=> b!1325319 m!1214267))

(assert (=> b!1325319 m!1214261))

(declare-fun m!1214269 () Bool)

(assert (=> b!1325319 m!1214269))

(assert (=> b!1325319 m!1214255))

(assert (=> b!1325319 m!1214269))

(assert (=> b!1325319 m!1214263))

(assert (=> b!1325319 m!1214267))

(assert (=> b!1325319 m!1214259))

(declare-fun m!1214271 () Bool)

(assert (=> b!1325319 m!1214271))

(declare-fun m!1214273 () Bool)

(assert (=> start!111902 m!1214273))

(declare-fun m!1214275 () Bool)

(assert (=> start!111902 m!1214275))

(declare-fun m!1214277 () Bool)

(assert (=> start!111902 m!1214277))

(assert (=> b!1325325 m!1214255))

(assert (=> b!1325325 m!1214255))

(declare-fun m!1214279 () Bool)

(assert (=> b!1325325 m!1214279))

(check-sat (not b!1325319) (not b!1325321) (not b_next!30465) (not start!111902) tp_is_empty!36285 (not b!1325326) (not b!1325325) (not mapNonEmpty!56079) (not b!1325323) b_and!49037 (not b_lambda!23753))
(check-sat b_and!49037 (not b_next!30465))

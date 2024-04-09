; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!111562 () Bool)

(assert start!111562)

(declare-fun b_free!30183 () Bool)

(declare-fun b_next!30183 () Bool)

(assert (=> start!111562 (= b_free!30183 (not b_next!30183))))

(declare-fun tp!106026 () Bool)

(declare-fun b_and!48535 () Bool)

(assert (=> start!111562 (= tp!106026 b_and!48535)))

(declare-fun mapNonEmpty!55652 () Bool)

(declare-fun mapRes!55652 () Bool)

(declare-fun tp!106025 () Bool)

(declare-fun e!753185 () Bool)

(assert (=> mapNonEmpty!55652 (= mapRes!55652 (and tp!106025 e!753185))))

(declare-datatypes ((V!53107 0))(
  ( (V!53108 (val!18076 Int)) )
))
(declare-datatypes ((ValueCell!17103 0))(
  ( (ValueCellFull!17103 (v!20704 V!53107)) (EmptyCell!17103) )
))
(declare-fun mapValue!55652 () ValueCell!17103)

(declare-datatypes ((array!88901 0))(
  ( (array!88902 (arr!42920 (Array (_ BitVec 32) ValueCell!17103)) (size!43471 (_ BitVec 32))) )
))
(declare-fun _values!1337 () array!88901)

(declare-fun mapRest!55652 () (Array (_ BitVec 32) ValueCell!17103))

(declare-fun mapKey!55652 () (_ BitVec 32))

(assert (=> mapNonEmpty!55652 (= (arr!42920 _values!1337) (store mapRest!55652 mapKey!55652 mapValue!55652))))

(declare-fun b!1320319 () Bool)

(declare-fun e!753184 () Bool)

(declare-fun tp_is_empty!36003 () Bool)

(assert (=> b!1320319 (= e!753184 tp_is_empty!36003)))

(declare-fun mapIsEmpty!55652 () Bool)

(assert (=> mapIsEmpty!55652 mapRes!55652))

(declare-fun b!1320320 () Bool)

(declare-fun e!753186 () Bool)

(assert (=> b!1320320 (= e!753186 (not true))))

(declare-datatypes ((tuple2!23438 0))(
  ( (tuple2!23439 (_1!11729 (_ BitVec 64)) (_2!11729 V!53107)) )
))
(declare-datatypes ((List!30620 0))(
  ( (Nil!30617) (Cons!30616 (h!31825 tuple2!23438) (t!44359 List!30620)) )
))
(declare-datatypes ((ListLongMap!21107 0))(
  ( (ListLongMap!21108 (toList!10569 List!30620)) )
))
(declare-fun lt!586879 () ListLongMap!21107)

(declare-fun k0!1164 () (_ BitVec 64))

(declare-fun contains!8660 (ListLongMap!21107 (_ BitVec 64)) Bool)

(assert (=> b!1320320 (contains!8660 lt!586879 k0!1164)))

(declare-fun zeroValue!1279 () V!53107)

(declare-datatypes ((Unit!43446 0))(
  ( (Unit!43447) )
))
(declare-fun lt!586876 () Unit!43446)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!138 ((_ BitVec 64) (_ BitVec 64) V!53107 ListLongMap!21107) Unit!43446)

(assert (=> b!1320320 (= lt!586876 (lemmaInListMapAfterAddingDiffThenInBefore!138 k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279 lt!586879))))

(declare-fun lt!586877 () ListLongMap!21107)

(assert (=> b!1320320 (contains!8660 lt!586877 k0!1164)))

(declare-fun minValue!1279 () V!53107)

(declare-fun lt!586878 () Unit!43446)

(assert (=> b!1320320 (= lt!586878 (lemmaInListMapAfterAddingDiffThenInBefore!138 k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1279 lt!586877))))

(declare-fun +!4523 (ListLongMap!21107 tuple2!23438) ListLongMap!21107)

(assert (=> b!1320320 (= lt!586877 (+!4523 lt!586879 (tuple2!23439 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1279)))))

(declare-datatypes ((array!88903 0))(
  ( (array!88904 (arr!42921 (Array (_ BitVec 32) (_ BitVec 64))) (size!43472 (_ BitVec 32))) )
))
(declare-fun _keys!1609 () array!88903)

(declare-fun extraKeys!1258 () (_ BitVec 32))

(declare-fun from!2000 () (_ BitVec 32))

(declare-fun defaultEntry!1340 () Int)

(declare-fun mask!2019 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6238 (array!88903 array!88901 (_ BitVec 32) (_ BitVec 32) V!53107 V!53107 (_ BitVec 32) Int) ListLongMap!21107)

(declare-fun get!21631 (ValueCell!17103 V!53107) V!53107)

(declare-fun dynLambda!3560 (Int (_ BitVec 64)) V!53107)

(assert (=> b!1320320 (= lt!586879 (+!4523 (getCurrentListMapNoExtraKeys!6238 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 (bvadd #b00000000000000000000000000000001 from!2000) defaultEntry!1340) (tuple2!23439 (select (arr!42921 _keys!1609) from!2000) (get!21631 (select (arr!42920 _values!1337) from!2000) (dynLambda!3560 defaultEntry!1340 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!1320321 () Bool)

(declare-fun res!876396 () Bool)

(assert (=> b!1320321 (=> (not res!876396) (not e!753186))))

(declare-fun getCurrentListMap!5512 (array!88903 array!88901 (_ BitVec 32) (_ BitVec 32) V!53107 V!53107 (_ BitVec 32) Int) ListLongMap!21107)

(assert (=> b!1320321 (= res!876396 (contains!8660 (getCurrentListMap!5512 _keys!1609 _values!1337 mask!2019 extraKeys!1258 zeroValue!1279 minValue!1279 from!2000 defaultEntry!1340) k0!1164))))

(declare-fun b!1320322 () Bool)

(declare-fun res!876400 () Bool)

(assert (=> b!1320322 (=> (not res!876400) (not e!753186))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1320322 (= res!876400 (validKeyInArray!0 (select (arr!42921 _keys!1609) from!2000)))))

(declare-fun b!1320323 () Bool)

(declare-fun e!753187 () Bool)

(assert (=> b!1320323 (= e!753187 (and e!753184 mapRes!55652))))

(declare-fun condMapEmpty!55652 () Bool)

(declare-fun mapDefault!55652 () ValueCell!17103)

(assert (=> b!1320323 (= condMapEmpty!55652 (= (arr!42920 _values!1337) ((as const (Array (_ BitVec 32) ValueCell!17103)) mapDefault!55652)))))

(declare-fun b!1320324 () Bool)

(declare-fun res!876398 () Bool)

(assert (=> b!1320324 (=> (not res!876398) (not e!753186))))

(declare-datatypes ((List!30621 0))(
  ( (Nil!30618) (Cons!30617 (h!31826 (_ BitVec 64)) (t!44360 List!30621)) )
))
(declare-fun arrayNoDuplicates!0 (array!88903 (_ BitVec 32) List!30621) Bool)

(assert (=> b!1320324 (= res!876398 (arrayNoDuplicates!0 _keys!1609 #b00000000000000000000000000000000 Nil!30618))))

(declare-fun b!1320325 () Bool)

(declare-fun res!876399 () Bool)

(assert (=> b!1320325 (=> (not res!876399) (not e!753186))))

(assert (=> b!1320325 (= res!876399 (and (= (size!43471 _values!1337) (bvadd #b00000000000000000000000000000001 mask!2019)) (= (size!43472 _keys!1609) (size!43471 _values!1337)) (bvsge mask!2019 #b00000000000000000000000000000000) (bvsge extraKeys!1258 #b00000000000000000000000000000000) (bvsle extraKeys!1258 #b00000000000000000000000000000011)))))

(declare-fun res!876397 () Bool)

(assert (=> start!111562 (=> (not res!876397) (not e!753186))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!111562 (= res!876397 (validMask!0 mask!2019))))

(assert (=> start!111562 e!753186))

(declare-fun array_inv!32357 (array!88903) Bool)

(assert (=> start!111562 (array_inv!32357 _keys!1609)))

(assert (=> start!111562 true))

(assert (=> start!111562 tp_is_empty!36003))

(declare-fun array_inv!32358 (array!88901) Bool)

(assert (=> start!111562 (and (array_inv!32358 _values!1337) e!753187)))

(assert (=> start!111562 tp!106026))

(declare-fun b!1320326 () Bool)

(declare-fun res!876393 () Bool)

(assert (=> b!1320326 (=> (not res!876393) (not e!753186))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!88903 (_ BitVec 32)) Bool)

(assert (=> b!1320326 (= res!876393 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1609 mask!2019))))

(declare-fun b!1320327 () Bool)

(assert (=> b!1320327 (= e!753185 tp_is_empty!36003)))

(declare-fun b!1320328 () Bool)

(declare-fun res!876395 () Bool)

(assert (=> b!1320328 (=> (not res!876395) (not e!753186))))

(assert (=> b!1320328 (= res!876395 (and (not (= (bvand extraKeys!1258 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1258 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (bvsge from!2000 #b00000000000000000000000000000000) (bvslt from!2000 (size!43472 _keys!1609)) (not (= k0!1164 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1164 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1320329 () Bool)

(declare-fun res!876394 () Bool)

(assert (=> b!1320329 (=> (not res!876394) (not e!753186))))

(assert (=> b!1320329 (= res!876394 (not (= (select (arr!42921 _keys!1609) from!2000) k0!1164)))))

(assert (= (and start!111562 res!876397) b!1320325))

(assert (= (and b!1320325 res!876399) b!1320326))

(assert (= (and b!1320326 res!876393) b!1320324))

(assert (= (and b!1320324 res!876398) b!1320328))

(assert (= (and b!1320328 res!876395) b!1320321))

(assert (= (and b!1320321 res!876396) b!1320329))

(assert (= (and b!1320329 res!876394) b!1320322))

(assert (= (and b!1320322 res!876400) b!1320320))

(assert (= (and b!1320323 condMapEmpty!55652) mapIsEmpty!55652))

(assert (= (and b!1320323 (not condMapEmpty!55652)) mapNonEmpty!55652))

(get-info :version)

(assert (= (and mapNonEmpty!55652 ((_ is ValueCellFull!17103) mapValue!55652)) b!1320327))

(assert (= (and b!1320323 ((_ is ValueCellFull!17103) mapDefault!55652)) b!1320319))

(assert (= start!111562 b!1320323))

(declare-fun b_lambda!23519 () Bool)

(assert (=> (not b_lambda!23519) (not b!1320320)))

(declare-fun t!44358 () Bool)

(declare-fun tb!11543 () Bool)

(assert (=> (and start!111562 (= defaultEntry!1340 defaultEntry!1340) t!44358) tb!11543))

(declare-fun result!24133 () Bool)

(assert (=> tb!11543 (= result!24133 tp_is_empty!36003)))

(assert (=> b!1320320 t!44358))

(declare-fun b_and!48537 () Bool)

(assert (= b_and!48535 (and (=> t!44358 result!24133) b_and!48537)))

(declare-fun m!1208071 () Bool)

(assert (=> b!1320326 m!1208071))

(declare-fun m!1208073 () Bool)

(assert (=> b!1320329 m!1208073))

(declare-fun m!1208075 () Bool)

(assert (=> mapNonEmpty!55652 m!1208075))

(declare-fun m!1208077 () Bool)

(assert (=> start!111562 m!1208077))

(declare-fun m!1208079 () Bool)

(assert (=> start!111562 m!1208079))

(declare-fun m!1208081 () Bool)

(assert (=> start!111562 m!1208081))

(declare-fun m!1208083 () Bool)

(assert (=> b!1320321 m!1208083))

(assert (=> b!1320321 m!1208083))

(declare-fun m!1208085 () Bool)

(assert (=> b!1320321 m!1208085))

(declare-fun m!1208087 () Bool)

(assert (=> b!1320320 m!1208087))

(declare-fun m!1208089 () Bool)

(assert (=> b!1320320 m!1208089))

(assert (=> b!1320320 m!1208087))

(declare-fun m!1208091 () Bool)

(assert (=> b!1320320 m!1208091))

(declare-fun m!1208093 () Bool)

(assert (=> b!1320320 m!1208093))

(declare-fun m!1208095 () Bool)

(assert (=> b!1320320 m!1208095))

(declare-fun m!1208097 () Bool)

(assert (=> b!1320320 m!1208097))

(declare-fun m!1208099 () Bool)

(assert (=> b!1320320 m!1208099))

(declare-fun m!1208101 () Bool)

(assert (=> b!1320320 m!1208101))

(declare-fun m!1208103 () Bool)

(assert (=> b!1320320 m!1208103))

(assert (=> b!1320320 m!1208099))

(assert (=> b!1320320 m!1208089))

(declare-fun m!1208105 () Bool)

(assert (=> b!1320320 m!1208105))

(assert (=> b!1320320 m!1208073))

(assert (=> b!1320322 m!1208073))

(assert (=> b!1320322 m!1208073))

(declare-fun m!1208107 () Bool)

(assert (=> b!1320322 m!1208107))

(declare-fun m!1208109 () Bool)

(assert (=> b!1320324 m!1208109))

(check-sat (not b_next!30183) (not b_lambda!23519) (not b!1320324) (not b!1320321) tp_is_empty!36003 (not b!1320326) (not b!1320320) (not b!1320322) b_and!48537 (not mapNonEmpty!55652) (not start!111562))
(check-sat b_and!48537 (not b_next!30183))

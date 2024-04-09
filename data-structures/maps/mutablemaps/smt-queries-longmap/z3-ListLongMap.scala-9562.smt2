; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113272 () Bool)

(assert start!113272)

(declare-fun b_free!31287 () Bool)

(declare-fun b_next!31287 () Bool)

(assert (=> start!113272 (= b_free!31287 (not b_next!31287))))

(declare-fun tp!109666 () Bool)

(declare-fun b_and!50491 () Bool)

(assert (=> start!113272 (= tp!109666 b_and!50491)))

(declare-fun b!1343246 () Bool)

(declare-fun e!764602 () Bool)

(assert (=> b!1343246 (= e!764602 (not true))))

(declare-datatypes ((V!54819 0))(
  ( (V!54820 (val!18718 Int)) )
))
(declare-datatypes ((tuple2!24262 0))(
  ( (tuple2!24263 (_1!12141 (_ BitVec 64)) (_2!12141 V!54819)) )
))
(declare-datatypes ((List!31440 0))(
  ( (Nil!31437) (Cons!31436 (h!32645 tuple2!24262) (t!45945 List!31440)) )
))
(declare-datatypes ((ListLongMap!21931 0))(
  ( (ListLongMap!21932 (toList!10981 List!31440)) )
))
(declare-fun lt!594812 () ListLongMap!21931)

(declare-fun zeroValue!1245 () V!54819)

(declare-fun k0!1142 () (_ BitVec 64))

(declare-fun contains!9093 (ListLongMap!21931 (_ BitVec 64)) Bool)

(declare-fun +!4779 (ListLongMap!21931 tuple2!24262) ListLongMap!21931)

(assert (=> b!1343246 (contains!9093 (+!4779 lt!594812 (tuple2!24263 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245)) k0!1142)))

(declare-datatypes ((Unit!44023 0))(
  ( (Unit!44024) )
))
(declare-fun lt!594817 () Unit!44023)

(declare-fun addStillContains!1205 (ListLongMap!21931 (_ BitVec 64) V!54819 (_ BitVec 64)) Unit!44023)

(assert (=> b!1343246 (= lt!594817 (addStillContains!1205 lt!594812 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 k0!1142))))

(assert (=> b!1343246 (contains!9093 lt!594812 k0!1142)))

(declare-datatypes ((array!91375 0))(
  ( (array!91376 (arr!44139 (Array (_ BitVec 32) (_ BitVec 64))) (size!44690 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91375)

(declare-fun lt!594815 () V!54819)

(declare-fun lt!594813 () Unit!44023)

(declare-fun from!1960 () (_ BitVec 32))

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!371 ((_ BitVec 64) (_ BitVec 64) V!54819 ListLongMap!21931) Unit!44023)

(assert (=> b!1343246 (= lt!594813 (lemmaInListMapAfterAddingDiffThenInBefore!371 k0!1142 (select (arr!44139 _keys!1571) from!1960) lt!594815 lt!594812))))

(declare-fun lt!594816 () ListLongMap!21931)

(assert (=> b!1343246 (contains!9093 lt!594816 k0!1142)))

(declare-fun lt!594814 () Unit!44023)

(assert (=> b!1343246 (= lt!594814 (lemmaInListMapAfterAddingDiffThenInBefore!371 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594816))))

(assert (=> b!1343246 (= lt!594816 (+!4779 lt!594812 (tuple2!24263 (select (arr!44139 _keys!1571) from!1960) lt!594815)))))

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((ValueCell!17745 0))(
  ( (ValueCellFull!17745 (v!21364 V!54819)) (EmptyCell!17745) )
))
(declare-datatypes ((array!91377 0))(
  ( (array!91378 (arr!44140 (Array (_ BitVec 32) ValueCell!17745)) (size!44691 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91377)

(declare-fun get!22336 (ValueCell!17745 V!54819) V!54819)

(declare-fun dynLambda!3816 (Int (_ BitVec 64)) V!54819)

(assert (=> b!1343246 (= lt!594815 (get!22336 (select (arr!44140 _values!1303) from!1960) (dynLambda!3816 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun minValue!1245 () V!54819)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!6502 (array!91375 array!91377 (_ BitVec 32) (_ BitVec 32) V!54819 V!54819 (_ BitVec 32) Int) ListLongMap!21931)

(assert (=> b!1343246 (= lt!594812 (getCurrentListMapNoExtraKeys!6502 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1343247 () Bool)

(declare-fun e!764604 () Bool)

(declare-fun tp_is_empty!37287 () Bool)

(assert (=> b!1343247 (= e!764604 tp_is_empty!37287)))

(declare-fun b!1343248 () Bool)

(declare-fun res!891296 () Bool)

(assert (=> b!1343248 (=> (not res!891296) (not e!764602))))

(assert (=> b!1343248 (= res!891296 (not (= (select (arr!44139 _keys!1571) from!1960) k0!1142)))))

(declare-fun mapNonEmpty!57637 () Bool)

(declare-fun mapRes!57637 () Bool)

(declare-fun tp!109667 () Bool)

(assert (=> mapNonEmpty!57637 (= mapRes!57637 (and tp!109667 e!764604))))

(declare-fun mapValue!57637 () ValueCell!17745)

(declare-fun mapRest!57637 () (Array (_ BitVec 32) ValueCell!17745))

(declare-fun mapKey!57637 () (_ BitVec 32))

(assert (=> mapNonEmpty!57637 (= (arr!44140 _values!1303) (store mapRest!57637 mapKey!57637 mapValue!57637))))

(declare-fun mapIsEmpty!57637 () Bool)

(assert (=> mapIsEmpty!57637 mapRes!57637))

(declare-fun b!1343249 () Bool)

(declare-fun e!764603 () Bool)

(declare-fun e!764606 () Bool)

(assert (=> b!1343249 (= e!764603 (and e!764606 mapRes!57637))))

(declare-fun condMapEmpty!57637 () Bool)

(declare-fun mapDefault!57637 () ValueCell!17745)

(assert (=> b!1343249 (= condMapEmpty!57637 (= (arr!44140 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17745)) mapDefault!57637)))))

(declare-fun b!1343250 () Bool)

(declare-fun res!891295 () Bool)

(assert (=> b!1343250 (=> (not res!891295) (not e!764602))))

(assert (=> b!1343250 (= res!891295 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44690 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1343251 () Bool)

(declare-fun res!891299 () Bool)

(assert (=> b!1343251 (=> (not res!891299) (not e!764602))))

(declare-datatypes ((List!31441 0))(
  ( (Nil!31438) (Cons!31437 (h!32646 (_ BitVec 64)) (t!45946 List!31441)) )
))
(declare-fun arrayNoDuplicates!0 (array!91375 (_ BitVec 32) List!31441) Bool)

(assert (=> b!1343251 (= res!891299 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31438))))

(declare-fun b!1343252 () Bool)

(declare-fun res!891298 () Bool)

(assert (=> b!1343252 (=> (not res!891298) (not e!764602))))

(assert (=> b!1343252 (= res!891298 (and (= (size!44691 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44690 _keys!1571) (size!44691 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(declare-fun b!1343253 () Bool)

(declare-fun res!891291 () Bool)

(assert (=> b!1343253 (=> (not res!891291) (not e!764602))))

(assert (=> b!1343253 (= res!891291 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun res!891293 () Bool)

(assert (=> start!113272 (=> (not res!891293) (not e!764602))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113272 (= res!891293 (validMask!0 mask!1977))))

(assert (=> start!113272 e!764602))

(assert (=> start!113272 tp_is_empty!37287))

(assert (=> start!113272 true))

(declare-fun array_inv!33189 (array!91375) Bool)

(assert (=> start!113272 (array_inv!33189 _keys!1571)))

(declare-fun array_inv!33190 (array!91377) Bool)

(assert (=> start!113272 (and (array_inv!33190 _values!1303) e!764603)))

(assert (=> start!113272 tp!109666))

(declare-fun b!1343254 () Bool)

(declare-fun res!891294 () Bool)

(assert (=> b!1343254 (=> (not res!891294) (not e!764602))))

(declare-fun getCurrentListMap!5876 (array!91375 array!91377 (_ BitVec 32) (_ BitVec 32) V!54819 V!54819 (_ BitVec 32) Int) ListLongMap!21931)

(assert (=> b!1343254 (= res!891294 (contains!9093 (getCurrentListMap!5876 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1343255 () Bool)

(declare-fun res!891292 () Bool)

(assert (=> b!1343255 (=> (not res!891292) (not e!764602))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1343255 (= res!891292 (validKeyInArray!0 (select (arr!44139 _keys!1571) from!1960)))))

(declare-fun b!1343256 () Bool)

(declare-fun res!891297 () Bool)

(assert (=> b!1343256 (=> (not res!891297) (not e!764602))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91375 (_ BitVec 32)) Bool)

(assert (=> b!1343256 (= res!891297 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1343257 () Bool)

(assert (=> b!1343257 (= e!764606 tp_is_empty!37287)))

(assert (= (and start!113272 res!891293) b!1343252))

(assert (= (and b!1343252 res!891298) b!1343256))

(assert (= (and b!1343256 res!891297) b!1343251))

(assert (= (and b!1343251 res!891299) b!1343250))

(assert (= (and b!1343250 res!891295) b!1343254))

(assert (= (and b!1343254 res!891294) b!1343248))

(assert (= (and b!1343248 res!891296) b!1343255))

(assert (= (and b!1343255 res!891292) b!1343253))

(assert (= (and b!1343253 res!891291) b!1343246))

(assert (= (and b!1343249 condMapEmpty!57637) mapIsEmpty!57637))

(assert (= (and b!1343249 (not condMapEmpty!57637)) mapNonEmpty!57637))

(get-info :version)

(assert (= (and mapNonEmpty!57637 ((_ is ValueCellFull!17745) mapValue!57637)) b!1343247))

(assert (= (and b!1343249 ((_ is ValueCellFull!17745) mapDefault!57637)) b!1343257))

(assert (= start!113272 b!1343249))

(declare-fun b_lambda!24473 () Bool)

(assert (=> (not b_lambda!24473) (not b!1343246)))

(declare-fun t!45944 () Bool)

(declare-fun tb!12309 () Bool)

(assert (=> (and start!113272 (= defaultEntry!1306 defaultEntry!1306) t!45944) tb!12309))

(declare-fun result!25701 () Bool)

(assert (=> tb!12309 (= result!25701 tp_is_empty!37287)))

(assert (=> b!1343246 t!45944))

(declare-fun b_and!50493 () Bool)

(assert (= b_and!50491 (and (=> t!45944 result!25701) b_and!50493)))

(declare-fun m!1230987 () Bool)

(assert (=> start!113272 m!1230987))

(declare-fun m!1230989 () Bool)

(assert (=> start!113272 m!1230989))

(declare-fun m!1230991 () Bool)

(assert (=> start!113272 m!1230991))

(declare-fun m!1230993 () Bool)

(assert (=> b!1343248 m!1230993))

(declare-fun m!1230995 () Bool)

(assert (=> b!1343256 m!1230995))

(declare-fun m!1230997 () Bool)

(assert (=> mapNonEmpty!57637 m!1230997))

(declare-fun m!1230999 () Bool)

(assert (=> b!1343246 m!1230999))

(declare-fun m!1231001 () Bool)

(assert (=> b!1343246 m!1231001))

(declare-fun m!1231003 () Bool)

(assert (=> b!1343246 m!1231003))

(declare-fun m!1231005 () Bool)

(assert (=> b!1343246 m!1231005))

(declare-fun m!1231007 () Bool)

(assert (=> b!1343246 m!1231007))

(assert (=> b!1343246 m!1231003))

(declare-fun m!1231009 () Bool)

(assert (=> b!1343246 m!1231009))

(declare-fun m!1231011 () Bool)

(assert (=> b!1343246 m!1231011))

(declare-fun m!1231013 () Bool)

(assert (=> b!1343246 m!1231013))

(declare-fun m!1231015 () Bool)

(assert (=> b!1343246 m!1231015))

(assert (=> b!1343246 m!1231015))

(declare-fun m!1231017 () Bool)

(assert (=> b!1343246 m!1231017))

(assert (=> b!1343246 m!1231005))

(assert (=> b!1343246 m!1230993))

(declare-fun m!1231019 () Bool)

(assert (=> b!1343246 m!1231019))

(declare-fun m!1231021 () Bool)

(assert (=> b!1343246 m!1231021))

(assert (=> b!1343246 m!1230993))

(assert (=> b!1343255 m!1230993))

(assert (=> b!1343255 m!1230993))

(declare-fun m!1231023 () Bool)

(assert (=> b!1343255 m!1231023))

(declare-fun m!1231025 () Bool)

(assert (=> b!1343251 m!1231025))

(declare-fun m!1231027 () Bool)

(assert (=> b!1343254 m!1231027))

(assert (=> b!1343254 m!1231027))

(declare-fun m!1231029 () Bool)

(assert (=> b!1343254 m!1231029))

(check-sat (not b!1343251) (not b!1343256) (not start!113272) tp_is_empty!37287 (not b!1343246) (not b!1343255) b_and!50493 (not mapNonEmpty!57637) (not b_lambda!24473) (not b_next!31287) (not b!1343254))
(check-sat b_and!50493 (not b_next!31287))

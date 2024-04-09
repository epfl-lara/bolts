; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!113224 () Bool)

(assert start!113224)

(declare-fun b_free!31239 () Bool)

(declare-fun b_next!31239 () Bool)

(assert (=> start!113224 (= b_free!31239 (not b_next!31239))))

(declare-fun tp!109522 () Bool)

(declare-fun b_and!50395 () Bool)

(assert (=> start!113224 (= tp!109522 b_and!50395)))

(declare-fun b!1342334 () Bool)

(declare-fun res!890648 () Bool)

(declare-fun e!764245 () Bool)

(assert (=> b!1342334 (=> (not res!890648) (not e!764245))))

(declare-fun k0!1142 () (_ BitVec 64))

(declare-datatypes ((array!91285 0))(
  ( (array!91286 (arr!44094 (Array (_ BitVec 32) (_ BitVec 64))) (size!44645 (_ BitVec 32))) )
))
(declare-fun _keys!1571 () array!91285)

(declare-fun from!1960 () (_ BitVec 32))

(assert (=> b!1342334 (= res!890648 (not (= (select (arr!44094 _keys!1571) from!1960) k0!1142)))))

(declare-fun b!1342335 () Bool)

(declare-fun res!890649 () Bool)

(assert (=> b!1342335 (=> (not res!890649) (not e!764245))))

(declare-datatypes ((V!54755 0))(
  ( (V!54756 (val!18694 Int)) )
))
(declare-fun minValue!1245 () V!54755)

(declare-fun mask!1977 () (_ BitVec 32))

(declare-fun zeroValue!1245 () V!54755)

(declare-fun extraKeys!1224 () (_ BitVec 32))

(declare-datatypes ((ValueCell!17721 0))(
  ( (ValueCellFull!17721 (v!21340 V!54755)) (EmptyCell!17721) )
))
(declare-datatypes ((array!91287 0))(
  ( (array!91288 (arr!44095 (Array (_ BitVec 32) ValueCell!17721)) (size!44646 (_ BitVec 32))) )
))
(declare-fun _values!1303 () array!91287)

(declare-fun defaultEntry!1306 () Int)

(declare-datatypes ((tuple2!24226 0))(
  ( (tuple2!24227 (_1!12123 (_ BitVec 64)) (_2!12123 V!54755)) )
))
(declare-datatypes ((List!31407 0))(
  ( (Nil!31404) (Cons!31403 (h!32612 tuple2!24226) (t!45864 List!31407)) )
))
(declare-datatypes ((ListLongMap!21895 0))(
  ( (ListLongMap!21896 (toList!10963 List!31407)) )
))
(declare-fun contains!9075 (ListLongMap!21895 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!5862 (array!91285 array!91287 (_ BitVec 32) (_ BitVec 32) V!54755 V!54755 (_ BitVec 32) Int) ListLongMap!21895)

(assert (=> b!1342335 (= res!890649 (contains!9075 (getCurrentListMap!5862 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 from!1960 defaultEntry!1306) k0!1142))))

(declare-fun b!1342336 () Bool)

(assert (=> b!1342336 (= e!764245 (not true))))

(declare-fun lt!594415 () ListLongMap!21895)

(assert (=> b!1342336 (contains!9075 lt!594415 k0!1142)))

(declare-fun lt!594413 () V!54755)

(declare-datatypes ((Unit!43995 0))(
  ( (Unit!43996) )
))
(declare-fun lt!594414 () Unit!43995)

(declare-fun lemmaInListMapAfterAddingDiffThenInBefore!357 ((_ BitVec 64) (_ BitVec 64) V!54755 ListLongMap!21895) Unit!43995)

(assert (=> b!1342336 (= lt!594414 (lemmaInListMapAfterAddingDiffThenInBefore!357 k0!1142 (select (arr!44094 _keys!1571) from!1960) lt!594413 lt!594415))))

(declare-fun lt!594411 () ListLongMap!21895)

(assert (=> b!1342336 (contains!9075 lt!594411 k0!1142)))

(declare-fun lt!594412 () Unit!43995)

(assert (=> b!1342336 (= lt!594412 (lemmaInListMapAfterAddingDiffThenInBefore!357 k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1245 lt!594411))))

(declare-fun +!4765 (ListLongMap!21895 tuple2!24226) ListLongMap!21895)

(assert (=> b!1342336 (= lt!594411 (+!4765 lt!594415 (tuple2!24227 (select (arr!44094 _keys!1571) from!1960) lt!594413)))))

(declare-fun get!22306 (ValueCell!17721 V!54755) V!54755)

(declare-fun dynLambda!3802 (Int (_ BitVec 64)) V!54755)

(assert (=> b!1342336 (= lt!594413 (get!22306 (select (arr!44095 _values!1303) from!1960) (dynLambda!3802 defaultEntry!1306 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun getCurrentListMapNoExtraKeys!6488 (array!91285 array!91287 (_ BitVec 32) (_ BitVec 32) V!54755 V!54755 (_ BitVec 32) Int) ListLongMap!21895)

(assert (=> b!1342336 (= lt!594415 (getCurrentListMapNoExtraKeys!6488 _keys!1571 _values!1303 mask!1977 extraKeys!1224 zeroValue!1245 minValue!1245 (bvadd #b00000000000000000000000000000001 from!1960) defaultEntry!1306))))

(declare-fun b!1342337 () Bool)

(declare-fun res!890646 () Bool)

(assert (=> b!1342337 (=> (not res!890646) (not e!764245))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!91285 (_ BitVec 32)) Bool)

(assert (=> b!1342337 (= res!890646 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1571 mask!1977))))

(declare-fun b!1342338 () Bool)

(declare-fun res!890650 () Bool)

(assert (=> b!1342338 (=> (not res!890650) (not e!764245))))

(assert (=> b!1342338 (= res!890650 (not (= (bvand extraKeys!1224 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!57565 () Bool)

(declare-fun mapRes!57565 () Bool)

(declare-fun tp!109523 () Bool)

(declare-fun e!764242 () Bool)

(assert (=> mapNonEmpty!57565 (= mapRes!57565 (and tp!109523 e!764242))))

(declare-fun mapValue!57565 () ValueCell!17721)

(declare-fun mapRest!57565 () (Array (_ BitVec 32) ValueCell!17721))

(declare-fun mapKey!57565 () (_ BitVec 32))

(assert (=> mapNonEmpty!57565 (= (arr!44095 _values!1303) (store mapRest!57565 mapKey!57565 mapValue!57565))))

(declare-fun b!1342339 () Bool)

(declare-fun res!890647 () Bool)

(assert (=> b!1342339 (=> (not res!890647) (not e!764245))))

(declare-datatypes ((List!31408 0))(
  ( (Nil!31405) (Cons!31404 (h!32613 (_ BitVec 64)) (t!45865 List!31408)) )
))
(declare-fun arrayNoDuplicates!0 (array!91285 (_ BitVec 32) List!31408) Bool)

(assert (=> b!1342339 (= res!890647 (arrayNoDuplicates!0 _keys!1571 #b00000000000000000000000000000000 Nil!31405))))

(declare-fun res!890644 () Bool)

(assert (=> start!113224 (=> (not res!890644) (not e!764245))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!113224 (= res!890644 (validMask!0 mask!1977))))

(assert (=> start!113224 e!764245))

(declare-fun tp_is_empty!37239 () Bool)

(assert (=> start!113224 tp_is_empty!37239))

(assert (=> start!113224 true))

(declare-fun array_inv!33155 (array!91285) Bool)

(assert (=> start!113224 (array_inv!33155 _keys!1571)))

(declare-fun e!764246 () Bool)

(declare-fun array_inv!33156 (array!91287) Bool)

(assert (=> start!113224 (and (array_inv!33156 _values!1303) e!764246)))

(assert (=> start!113224 tp!109522))

(declare-fun b!1342340 () Bool)

(declare-fun e!764243 () Bool)

(assert (=> b!1342340 (= e!764246 (and e!764243 mapRes!57565))))

(declare-fun condMapEmpty!57565 () Bool)

(declare-fun mapDefault!57565 () ValueCell!17721)

(assert (=> b!1342340 (= condMapEmpty!57565 (= (arr!44095 _values!1303) ((as const (Array (_ BitVec 32) ValueCell!17721)) mapDefault!57565)))))

(declare-fun b!1342341 () Bool)

(declare-fun res!890651 () Bool)

(assert (=> b!1342341 (=> (not res!890651) (not e!764245))))

(assert (=> b!1342341 (= res!890651 (and (= (bvand extraKeys!1224 #b00000000000000000000000000000010) #b00000000000000000000000000000000) (bvsge from!1960 #b00000000000000000000000000000000) (bvslt from!1960 (size!44645 _keys!1571)) (not (= k0!1142 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1142 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1342342 () Bool)

(declare-fun res!890643 () Bool)

(assert (=> b!1342342 (=> (not res!890643) (not e!764245))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1342342 (= res!890643 (validKeyInArray!0 (select (arr!44094 _keys!1571) from!1960)))))

(declare-fun b!1342343 () Bool)

(assert (=> b!1342343 (= e!764242 tp_is_empty!37239)))

(declare-fun b!1342344 () Bool)

(assert (=> b!1342344 (= e!764243 tp_is_empty!37239)))

(declare-fun mapIsEmpty!57565 () Bool)

(assert (=> mapIsEmpty!57565 mapRes!57565))

(declare-fun b!1342345 () Bool)

(declare-fun res!890645 () Bool)

(assert (=> b!1342345 (=> (not res!890645) (not e!764245))))

(assert (=> b!1342345 (= res!890645 (and (= (size!44646 _values!1303) (bvadd #b00000000000000000000000000000001 mask!1977)) (= (size!44645 _keys!1571) (size!44646 _values!1303)) (bvsge mask!1977 #b00000000000000000000000000000000) (bvsge extraKeys!1224 #b00000000000000000000000000000000) (bvsle extraKeys!1224 #b00000000000000000000000000000011)))))

(assert (= (and start!113224 res!890644) b!1342345))

(assert (= (and b!1342345 res!890645) b!1342337))

(assert (= (and b!1342337 res!890646) b!1342339))

(assert (= (and b!1342339 res!890647) b!1342341))

(assert (= (and b!1342341 res!890651) b!1342335))

(assert (= (and b!1342335 res!890649) b!1342334))

(assert (= (and b!1342334 res!890648) b!1342342))

(assert (= (and b!1342342 res!890643) b!1342338))

(assert (= (and b!1342338 res!890650) b!1342336))

(assert (= (and b!1342340 condMapEmpty!57565) mapIsEmpty!57565))

(assert (= (and b!1342340 (not condMapEmpty!57565)) mapNonEmpty!57565))

(get-info :version)

(assert (= (and mapNonEmpty!57565 ((_ is ValueCellFull!17721) mapValue!57565)) b!1342343))

(assert (= (and b!1342340 ((_ is ValueCellFull!17721) mapDefault!57565)) b!1342344))

(assert (= start!113224 b!1342340))

(declare-fun b_lambda!24425 () Bool)

(assert (=> (not b_lambda!24425) (not b!1342336)))

(declare-fun t!45863 () Bool)

(declare-fun tb!12261 () Bool)

(assert (=> (and start!113224 (= defaultEntry!1306 defaultEntry!1306) t!45863) tb!12261))

(declare-fun result!25605 () Bool)

(assert (=> tb!12261 (= result!25605 tp_is_empty!37239)))

(assert (=> b!1342336 t!45863))

(declare-fun b_and!50397 () Bool)

(assert (= b_and!50395 (and (=> t!45863 result!25605) b_and!50397)))

(declare-fun m!1229997 () Bool)

(assert (=> b!1342337 m!1229997))

(declare-fun m!1229999 () Bool)

(assert (=> start!113224 m!1229999))

(declare-fun m!1230001 () Bool)

(assert (=> start!113224 m!1230001))

(declare-fun m!1230003 () Bool)

(assert (=> start!113224 m!1230003))

(declare-fun m!1230005 () Bool)

(assert (=> b!1342339 m!1230005))

(declare-fun m!1230007 () Bool)

(assert (=> b!1342342 m!1230007))

(assert (=> b!1342342 m!1230007))

(declare-fun m!1230009 () Bool)

(assert (=> b!1342342 m!1230009))

(declare-fun m!1230011 () Bool)

(assert (=> b!1342335 m!1230011))

(assert (=> b!1342335 m!1230011))

(declare-fun m!1230013 () Bool)

(assert (=> b!1342335 m!1230013))

(declare-fun m!1230015 () Bool)

(assert (=> mapNonEmpty!57565 m!1230015))

(declare-fun m!1230017 () Bool)

(assert (=> b!1342336 m!1230017))

(declare-fun m!1230019 () Bool)

(assert (=> b!1342336 m!1230019))

(declare-fun m!1230021 () Bool)

(assert (=> b!1342336 m!1230021))

(declare-fun m!1230023 () Bool)

(assert (=> b!1342336 m!1230023))

(assert (=> b!1342336 m!1230019))

(assert (=> b!1342336 m!1230021))

(assert (=> b!1342336 m!1230007))

(declare-fun m!1230025 () Bool)

(assert (=> b!1342336 m!1230025))

(declare-fun m!1230027 () Bool)

(assert (=> b!1342336 m!1230027))

(declare-fun m!1230029 () Bool)

(assert (=> b!1342336 m!1230029))

(declare-fun m!1230031 () Bool)

(assert (=> b!1342336 m!1230031))

(assert (=> b!1342336 m!1230007))

(declare-fun m!1230033 () Bool)

(assert (=> b!1342336 m!1230033))

(assert (=> b!1342334 m!1230007))

(check-sat (not b!1342335) (not mapNonEmpty!57565) (not b!1342339) (not b!1342336) (not b!1342337) (not b_next!31239) (not start!113224) b_and!50397 tp_is_empty!37239 (not b_lambda!24425) (not b!1342342))
(check-sat b_and!50397 (not b_next!31239))

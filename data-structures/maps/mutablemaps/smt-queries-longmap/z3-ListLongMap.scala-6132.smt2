; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!78930 () Bool)

(assert start!78930)

(declare-fun b_free!17115 () Bool)

(declare-fun b_next!17115 () Bool)

(assert (=> start!78930 (= b_free!17115 (not b_next!17115))))

(declare-fun tp!59787 () Bool)

(declare-fun b_and!27985 () Bool)

(assert (=> start!78930 (= tp!59787 b_and!27985)))

(declare-fun b!922274 () Bool)

(declare-fun e!517522 () Bool)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!922274 (= e!517522 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!922275 () Bool)

(declare-fun res!622049 () Bool)

(declare-fun e!517517 () Bool)

(assert (=> b!922275 (=> (not res!622049) (not e!517517))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55234 0))(
  ( (array!55235 (arr!26558 (Array (_ BitVec 32) (_ BitVec 64))) (size!27018 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55234)

(assert (=> b!922275 (= res!622049 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27018 _keys!1487))))))

(declare-fun b!922276 () Bool)

(declare-fun e!517519 () Bool)

(declare-fun e!517524 () Bool)

(declare-fun mapRes!31191 () Bool)

(assert (=> b!922276 (= e!517519 (and e!517524 mapRes!31191))))

(declare-fun condMapEmpty!31191 () Bool)

(declare-datatypes ((V!31129 0))(
  ( (V!31130 (val!9862 Int)) )
))
(declare-datatypes ((ValueCell!9330 0))(
  ( (ValueCellFull!9330 (v!12380 V!31129)) (EmptyCell!9330) )
))
(declare-datatypes ((array!55236 0))(
  ( (array!55237 (arr!26559 (Array (_ BitVec 32) ValueCell!9330)) (size!27019 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55236)

(declare-fun mapDefault!31191 () ValueCell!9330)

(assert (=> b!922276 (= condMapEmpty!31191 (= (arr!26559 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9330)) mapDefault!31191)))))

(declare-fun b!922277 () Bool)

(declare-fun e!517523 () Bool)

(assert (=> b!922277 (= e!517517 e!517523)))

(declare-fun res!622054 () Bool)

(assert (=> b!922277 (=> (not res!622054) (not e!517523))))

(declare-datatypes ((tuple2!12932 0))(
  ( (tuple2!12933 (_1!6476 (_ BitVec 64)) (_2!6476 V!31129)) )
))
(declare-datatypes ((List!18770 0))(
  ( (Nil!18767) (Cons!18766 (h!19912 tuple2!12932) (t!26623 List!18770)) )
))
(declare-datatypes ((ListLongMap!11643 0))(
  ( (ListLongMap!11644 (toList!5837 List!18770)) )
))
(declare-fun lt!414178 () ListLongMap!11643)

(declare-fun contains!4863 (ListLongMap!11643 (_ BitVec 64)) Bool)

(assert (=> b!922277 (= res!622054 (contains!4863 lt!414178 k0!1099))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31129)

(declare-fun minValue!1173 () V!31129)

(declare-fun getCurrentListMap!3057 (array!55234 array!55236 (_ BitVec 32) (_ BitVec 32) V!31129 V!31129 (_ BitVec 32) Int) ListLongMap!11643)

(assert (=> b!922277 (= lt!414178 (getCurrentListMap!3057 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!922278 () Bool)

(declare-fun arrayContainsKey!0 (array!55234 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!922278 (= e!517522 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!922279 () Bool)

(declare-fun res!622052 () Bool)

(assert (=> b!922279 (=> (not res!622052) (not e!517523))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!922279 (= res!622052 (validKeyInArray!0 k0!1099))))

(declare-fun b!922280 () Bool)

(declare-fun res!622047 () Bool)

(assert (=> b!922280 (=> (not res!622047) (not e!517517))))

(assert (=> b!922280 (= res!622047 (and (= (size!27019 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27018 _keys!1487) (size!27019 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!922281 () Bool)

(declare-fun res!622051 () Bool)

(assert (=> b!922281 (=> (not res!622051) (not e!517517))))

(declare-datatypes ((List!18771 0))(
  ( (Nil!18768) (Cons!18767 (h!19913 (_ BitVec 64)) (t!26624 List!18771)) )
))
(declare-fun arrayNoDuplicates!0 (array!55234 (_ BitVec 32) List!18771) Bool)

(assert (=> b!922281 (= res!622051 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18768))))

(declare-fun b!922282 () Bool)

(declare-fun e!517518 () Bool)

(assert (=> b!922282 (= e!517523 e!517518)))

(declare-fun res!622050 () Bool)

(assert (=> b!922282 (=> (not res!622050) (not e!517518))))

(declare-fun lt!414172 () (_ BitVec 64))

(assert (=> b!922282 (= res!622050 (validKeyInArray!0 lt!414172))))

(assert (=> b!922282 (= lt!414172 (select (arr!26558 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!922283 () Bool)

(assert (=> b!922283 (= e!517518 (not true))))

(assert (=> b!922283 (not (= lt!414172 k0!1099))))

(declare-datatypes ((Unit!31107 0))(
  ( (Unit!31108) )
))
(declare-fun lt!414179 () Unit!31107)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55234 (_ BitVec 64) (_ BitVec 32) List!18771) Unit!31107)

(assert (=> b!922283 (= lt!414179 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18768))))

(assert (=> b!922283 e!517522))

(declare-fun c!96092 () Bool)

(assert (=> b!922283 (= c!96092 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!414175 () Unit!31107)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!196 (array!55234 array!55236 (_ BitVec 32) (_ BitVec 32) V!31129 V!31129 (_ BitVec 64) (_ BitVec 32) Int) Unit!31107)

(assert (=> b!922283 (= lt!414175 (lemmaListMapContainsThenArrayContainsFrom!196 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!922283 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18768)))

(declare-fun lt!414177 () Unit!31107)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55234 (_ BitVec 32) (_ BitVec 32)) Unit!31107)

(assert (=> b!922283 (= lt!414177 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!414174 () tuple2!12932)

(declare-fun +!2650 (ListLongMap!11643 tuple2!12932) ListLongMap!11643)

(assert (=> b!922283 (contains!4863 (+!2650 lt!414178 lt!414174) k0!1099)))

(declare-fun lt!414176 () Unit!31107)

(declare-fun lt!414173 () V!31129)

(declare-fun addStillContains!412 (ListLongMap!11643 (_ BitVec 64) V!31129 (_ BitVec 64)) Unit!31107)

(assert (=> b!922283 (= lt!414176 (addStillContains!412 lt!414178 lt!414172 lt!414173 k0!1099))))

(assert (=> b!922283 (= (getCurrentListMap!3057 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2650 (getCurrentListMap!3057 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!414174))))

(assert (=> b!922283 (= lt!414174 (tuple2!12933 lt!414172 lt!414173))))

(declare-fun get!13967 (ValueCell!9330 V!31129) V!31129)

(declare-fun dynLambda!1489 (Int (_ BitVec 64)) V!31129)

(assert (=> b!922283 (= lt!414173 (get!13967 (select (arr!26559 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1489 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!414180 () Unit!31107)

(declare-fun lemmaListMapRecursiveValidKeyArray!85 (array!55234 array!55236 (_ BitVec 32) (_ BitVec 32) V!31129 V!31129 (_ BitVec 32) Int) Unit!31107)

(assert (=> b!922283 (= lt!414180 (lemmaListMapRecursiveValidKeyArray!85 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!922284 () Bool)

(declare-fun res!622046 () Bool)

(assert (=> b!922284 (=> (not res!622046) (not e!517517))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55234 (_ BitVec 32)) Bool)

(assert (=> b!922284 (= res!622046 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!922285 () Bool)

(declare-fun res!622048 () Bool)

(assert (=> b!922285 (=> (not res!622048) (not e!517523))))

(declare-fun v!791 () V!31129)

(declare-fun apply!642 (ListLongMap!11643 (_ BitVec 64)) V!31129)

(assert (=> b!922285 (= res!622048 (= (apply!642 lt!414178 k0!1099) v!791))))

(declare-fun mapIsEmpty!31191 () Bool)

(assert (=> mapIsEmpty!31191 mapRes!31191))

(declare-fun b!922286 () Bool)

(declare-fun e!517520 () Bool)

(declare-fun tp_is_empty!19623 () Bool)

(assert (=> b!922286 (= e!517520 tp_is_empty!19623)))

(declare-fun b!922287 () Bool)

(declare-fun res!622053 () Bool)

(assert (=> b!922287 (=> (not res!622053) (not e!517523))))

(assert (=> b!922287 (= res!622053 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!922288 () Bool)

(assert (=> b!922288 (= e!517524 tp_is_empty!19623)))

(declare-fun res!622055 () Bool)

(assert (=> start!78930 (=> (not res!622055) (not e!517517))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!78930 (= res!622055 (validMask!0 mask!1881))))

(assert (=> start!78930 e!517517))

(assert (=> start!78930 true))

(assert (=> start!78930 tp_is_empty!19623))

(declare-fun array_inv!20676 (array!55236) Bool)

(assert (=> start!78930 (and (array_inv!20676 _values!1231) e!517519)))

(assert (=> start!78930 tp!59787))

(declare-fun array_inv!20677 (array!55234) Bool)

(assert (=> start!78930 (array_inv!20677 _keys!1487)))

(declare-fun mapNonEmpty!31191 () Bool)

(declare-fun tp!59786 () Bool)

(assert (=> mapNonEmpty!31191 (= mapRes!31191 (and tp!59786 e!517520))))

(declare-fun mapKey!31191 () (_ BitVec 32))

(declare-fun mapRest!31191 () (Array (_ BitVec 32) ValueCell!9330))

(declare-fun mapValue!31191 () ValueCell!9330)

(assert (=> mapNonEmpty!31191 (= (arr!26559 _values!1231) (store mapRest!31191 mapKey!31191 mapValue!31191))))

(assert (= (and start!78930 res!622055) b!922280))

(assert (= (and b!922280 res!622047) b!922284))

(assert (= (and b!922284 res!622046) b!922281))

(assert (= (and b!922281 res!622051) b!922275))

(assert (= (and b!922275 res!622049) b!922277))

(assert (= (and b!922277 res!622054) b!922285))

(assert (= (and b!922285 res!622048) b!922287))

(assert (= (and b!922287 res!622053) b!922279))

(assert (= (and b!922279 res!622052) b!922282))

(assert (= (and b!922282 res!622050) b!922283))

(assert (= (and b!922283 c!96092) b!922278))

(assert (= (and b!922283 (not c!96092)) b!922274))

(assert (= (and b!922276 condMapEmpty!31191) mapIsEmpty!31191))

(assert (= (and b!922276 (not condMapEmpty!31191)) mapNonEmpty!31191))

(get-info :version)

(assert (= (and mapNonEmpty!31191 ((_ is ValueCellFull!9330) mapValue!31191)) b!922286))

(assert (= (and b!922276 ((_ is ValueCellFull!9330) mapDefault!31191)) b!922288))

(assert (= start!78930 b!922276))

(declare-fun b_lambda!13647 () Bool)

(assert (=> (not b_lambda!13647) (not b!922283)))

(declare-fun t!26622 () Bool)

(declare-fun tb!5703 () Bool)

(assert (=> (and start!78930 (= defaultEntry!1235 defaultEntry!1235) t!26622) tb!5703))

(declare-fun result!11221 () Bool)

(assert (=> tb!5703 (= result!11221 tp_is_empty!19623)))

(assert (=> b!922283 t!26622))

(declare-fun b_and!27987 () Bool)

(assert (= b_and!27985 (and (=> t!26622 result!11221) b_and!27987)))

(declare-fun m!856447 () Bool)

(assert (=> b!922277 m!856447))

(declare-fun m!856449 () Bool)

(assert (=> b!922277 m!856449))

(declare-fun m!856451 () Bool)

(assert (=> b!922278 m!856451))

(declare-fun m!856453 () Bool)

(assert (=> start!78930 m!856453))

(declare-fun m!856455 () Bool)

(assert (=> start!78930 m!856455))

(declare-fun m!856457 () Bool)

(assert (=> start!78930 m!856457))

(declare-fun m!856459 () Bool)

(assert (=> b!922285 m!856459))

(declare-fun m!856461 () Bool)

(assert (=> b!922282 m!856461))

(declare-fun m!856463 () Bool)

(assert (=> b!922282 m!856463))

(declare-fun m!856465 () Bool)

(assert (=> mapNonEmpty!31191 m!856465))

(declare-fun m!856467 () Bool)

(assert (=> b!922284 m!856467))

(declare-fun m!856469 () Bool)

(assert (=> b!922283 m!856469))

(declare-fun m!856471 () Bool)

(assert (=> b!922283 m!856471))

(declare-fun m!856473 () Bool)

(assert (=> b!922283 m!856473))

(declare-fun m!856475 () Bool)

(assert (=> b!922283 m!856475))

(assert (=> b!922283 m!856471))

(assert (=> b!922283 m!856473))

(declare-fun m!856477 () Bool)

(assert (=> b!922283 m!856477))

(declare-fun m!856479 () Bool)

(assert (=> b!922283 m!856479))

(declare-fun m!856481 () Bool)

(assert (=> b!922283 m!856481))

(declare-fun m!856483 () Bool)

(assert (=> b!922283 m!856483))

(declare-fun m!856485 () Bool)

(assert (=> b!922283 m!856485))

(declare-fun m!856487 () Bool)

(assert (=> b!922283 m!856487))

(declare-fun m!856489 () Bool)

(assert (=> b!922283 m!856489))

(declare-fun m!856491 () Bool)

(assert (=> b!922283 m!856491))

(assert (=> b!922283 m!856487))

(declare-fun m!856493 () Bool)

(assert (=> b!922283 m!856493))

(assert (=> b!922283 m!856481))

(declare-fun m!856495 () Bool)

(assert (=> b!922283 m!856495))

(declare-fun m!856497 () Bool)

(assert (=> b!922279 m!856497))

(declare-fun m!856499 () Bool)

(assert (=> b!922281 m!856499))

(check-sat (not b!922281) (not start!78930) (not b!922278) (not b!922285) (not b!922284) (not b!922282) (not b!922279) tp_is_empty!19623 (not b_next!17115) (not b!922283) (not b!922277) b_and!27987 (not b_lambda!13647) (not mapNonEmpty!31191))
(check-sat b_and!27987 (not b_next!17115))

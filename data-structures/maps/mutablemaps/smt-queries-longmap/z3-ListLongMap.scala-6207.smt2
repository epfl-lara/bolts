; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79406 () Bool)

(assert start!79406)

(declare-fun b_free!17565 () Bool)

(declare-fun b_next!17565 () Bool)

(assert (=> start!79406 (= b_free!17565 (not b_next!17565))))

(declare-fun tp!61139 () Bool)

(declare-fun b_and!28707 () Bool)

(assert (=> start!79406 (= tp!61139 b_and!28707)))

(declare-fun b!932418 () Bool)

(declare-fun res!628094 () Bool)

(declare-fun e!523649 () Bool)

(assert (=> b!932418 (=> (not res!628094) (not e!523649))))

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!932418 (= res!628094 (validKeyInArray!0 k0!1099))))

(declare-fun b!932419 () Bool)

(declare-fun res!628093 () Bool)

(assert (=> b!932419 (=> (not res!628093) (not e!523649))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!932419 (= res!628093 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!932420 () Bool)

(declare-fun e!523643 () Bool)

(declare-fun e!523648 () Bool)

(declare-fun mapRes!31869 () Bool)

(assert (=> b!932420 (= e!523643 (and e!523648 mapRes!31869))))

(declare-fun condMapEmpty!31869 () Bool)

(declare-datatypes ((V!31729 0))(
  ( (V!31730 (val!10087 Int)) )
))
(declare-datatypes ((ValueCell!9555 0))(
  ( (ValueCellFull!9555 (v!12606 V!31729)) (EmptyCell!9555) )
))
(declare-datatypes ((array!56108 0))(
  ( (array!56109 (arr!26994 (Array (_ BitVec 32) ValueCell!9555)) (size!27454 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56108)

(declare-fun mapDefault!31869 () ValueCell!9555)

(assert (=> b!932420 (= condMapEmpty!31869 (= (arr!26994 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9555)) mapDefault!31869)))))

(declare-fun b!932421 () Bool)

(declare-fun res!628095 () Bool)

(declare-fun e!523645 () Bool)

(assert (=> b!932421 (=> (not res!628095) (not e!523645))))

(declare-datatypes ((array!56110 0))(
  ( (array!56111 (arr!26995 (Array (_ BitVec 32) (_ BitVec 64))) (size!27455 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56110)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!932421 (= res!628095 (and (= (size!27454 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27455 _keys!1487) (size!27454 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31869 () Bool)

(declare-fun tp!61140 () Bool)

(declare-fun e!523644 () Bool)

(assert (=> mapNonEmpty!31869 (= mapRes!31869 (and tp!61140 e!523644))))

(declare-fun mapKey!31869 () (_ BitVec 32))

(declare-fun mapRest!31869 () (Array (_ BitVec 32) ValueCell!9555))

(declare-fun mapValue!31869 () ValueCell!9555)

(assert (=> mapNonEmpty!31869 (= (arr!26994 _values!1231) (store mapRest!31869 mapKey!31869 mapValue!31869))))

(declare-fun b!932422 () Bool)

(declare-fun e!523647 () Bool)

(assert (=> b!932422 (= e!523649 e!523647)))

(declare-fun res!628092 () Bool)

(assert (=> b!932422 (=> (not res!628092) (not e!523647))))

(declare-fun lt!419901 () (_ BitVec 64))

(assert (=> b!932422 (= res!628092 (validKeyInArray!0 lt!419901))))

(assert (=> b!932422 (= lt!419901 (select (arr!26995 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!932423 () Bool)

(assert (=> b!932423 (= e!523645 e!523649)))

(declare-fun res!628090 () Bool)

(assert (=> b!932423 (=> (not res!628090) (not e!523649))))

(declare-datatypes ((tuple2!13320 0))(
  ( (tuple2!13321 (_1!6670 (_ BitVec 64)) (_2!6670 V!31729)) )
))
(declare-datatypes ((List!19131 0))(
  ( (Nil!19128) (Cons!19127 (h!20273 tuple2!13320) (t!27248 List!19131)) )
))
(declare-datatypes ((ListLongMap!12031 0))(
  ( (ListLongMap!12032 (toList!6031 List!19131)) )
))
(declare-fun lt!419899 () ListLongMap!12031)

(declare-fun contains!5031 (ListLongMap!12031 (_ BitVec 64)) Bool)

(assert (=> b!932423 (= res!628090 (contains!5031 lt!419899 k0!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31729)

(declare-fun minValue!1173 () V!31729)

(declare-fun getCurrentListMap!3224 (array!56110 array!56108 (_ BitVec 32) (_ BitVec 32) V!31729 V!31729 (_ BitVec 32) Int) ListLongMap!12031)

(assert (=> b!932423 (= lt!419899 (getCurrentListMap!3224 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!932424 () Bool)

(declare-fun tp_is_empty!20073 () Bool)

(assert (=> b!932424 (= e!523644 tp_is_empty!20073)))

(declare-fun b!932426 () Bool)

(assert (=> b!932426 (= e!523648 tp_is_empty!20073)))

(declare-fun b!932427 () Bool)

(declare-fun res!628096 () Bool)

(assert (=> b!932427 (=> (not res!628096) (not e!523645))))

(assert (=> b!932427 (= res!628096 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27455 _keys!1487))))))

(declare-fun mapIsEmpty!31869 () Bool)

(assert (=> mapIsEmpty!31869 mapRes!31869))

(declare-fun b!932428 () Bool)

(declare-fun res!628089 () Bool)

(assert (=> b!932428 (=> (not res!628089) (not e!523645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56110 (_ BitVec 32)) Bool)

(assert (=> b!932428 (= res!628089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!932429 () Bool)

(assert (=> b!932429 (= e!523647 (not true))))

(declare-datatypes ((List!19132 0))(
  ( (Nil!19129) (Cons!19128 (h!20274 (_ BitVec 64)) (t!27249 List!19132)) )
))
(declare-fun arrayNoDuplicates!0 (array!56110 (_ BitVec 32) List!19132) Bool)

(assert (=> b!932429 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19129)))

(declare-datatypes ((Unit!31464 0))(
  ( (Unit!31465) )
))
(declare-fun lt!419902 () Unit!31464)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56110 (_ BitVec 32) (_ BitVec 32)) Unit!31464)

(assert (=> b!932429 (= lt!419902 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!419900 () tuple2!13320)

(declare-fun +!2738 (ListLongMap!12031 tuple2!13320) ListLongMap!12031)

(assert (=> b!932429 (contains!5031 (+!2738 lt!419899 lt!419900) k0!1099)))

(declare-fun lt!419904 () Unit!31464)

(declare-fun lt!419905 () V!31729)

(declare-fun addStillContains!494 (ListLongMap!12031 (_ BitVec 64) V!31729 (_ BitVec 64)) Unit!31464)

(assert (=> b!932429 (= lt!419904 (addStillContains!494 lt!419899 lt!419901 lt!419905 k0!1099))))

(assert (=> b!932429 (= (getCurrentListMap!3224 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2738 (getCurrentListMap!3224 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!419900))))

(assert (=> b!932429 (= lt!419900 (tuple2!13321 lt!419901 lt!419905))))

(declare-fun get!14208 (ValueCell!9555 V!31729) V!31729)

(declare-fun dynLambda!1577 (Int (_ BitVec 64)) V!31729)

(assert (=> b!932429 (= lt!419905 (get!14208 (select (arr!26994 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1577 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!419903 () Unit!31464)

(declare-fun lemmaListMapRecursiveValidKeyArray!173 (array!56110 array!56108 (_ BitVec 32) (_ BitVec 32) V!31729 V!31729 (_ BitVec 32) Int) Unit!31464)

(assert (=> b!932429 (= lt!419903 (lemmaListMapRecursiveValidKeyArray!173 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!932430 () Bool)

(declare-fun res!628097 () Bool)

(assert (=> b!932430 (=> (not res!628097) (not e!523649))))

(declare-fun v!791 () V!31729)

(declare-fun apply!816 (ListLongMap!12031 (_ BitVec 64)) V!31729)

(assert (=> b!932430 (= res!628097 (= (apply!816 lt!419899 k0!1099) v!791))))

(declare-fun res!628088 () Bool)

(assert (=> start!79406 (=> (not res!628088) (not e!523645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79406 (= res!628088 (validMask!0 mask!1881))))

(assert (=> start!79406 e!523645))

(assert (=> start!79406 true))

(assert (=> start!79406 tp_is_empty!20073))

(declare-fun array_inv!20980 (array!56108) Bool)

(assert (=> start!79406 (and (array_inv!20980 _values!1231) e!523643)))

(assert (=> start!79406 tp!61139))

(declare-fun array_inv!20981 (array!56110) Bool)

(assert (=> start!79406 (array_inv!20981 _keys!1487)))

(declare-fun b!932425 () Bool)

(declare-fun res!628091 () Bool)

(assert (=> b!932425 (=> (not res!628091) (not e!523645))))

(assert (=> b!932425 (= res!628091 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19129))))

(assert (= (and start!79406 res!628088) b!932421))

(assert (= (and b!932421 res!628095) b!932428))

(assert (= (and b!932428 res!628089) b!932425))

(assert (= (and b!932425 res!628091) b!932427))

(assert (= (and b!932427 res!628096) b!932423))

(assert (= (and b!932423 res!628090) b!932430))

(assert (= (and b!932430 res!628097) b!932419))

(assert (= (and b!932419 res!628093) b!932418))

(assert (= (and b!932418 res!628094) b!932422))

(assert (= (and b!932422 res!628092) b!932429))

(assert (= (and b!932420 condMapEmpty!31869) mapIsEmpty!31869))

(assert (= (and b!932420 (not condMapEmpty!31869)) mapNonEmpty!31869))

(get-info :version)

(assert (= (and mapNonEmpty!31869 ((_ is ValueCellFull!9555) mapValue!31869)) b!932424))

(assert (= (and b!932420 ((_ is ValueCellFull!9555) mapDefault!31869)) b!932426))

(assert (= start!79406 b!932420))

(declare-fun b_lambda!13929 () Bool)

(assert (=> (not b_lambda!13929) (not b!932429)))

(declare-fun t!27247 () Bool)

(declare-fun tb!5967 () Bool)

(assert (=> (and start!79406 (= defaultEntry!1235 defaultEntry!1235) t!27247) tb!5967))

(declare-fun result!11751 () Bool)

(assert (=> tb!5967 (= result!11751 tp_is_empty!20073)))

(assert (=> b!932429 t!27247))

(declare-fun b_and!28709 () Bool)

(assert (= b_and!28707 (and (=> t!27247 result!11751) b_and!28709)))

(declare-fun m!866507 () Bool)

(assert (=> b!932418 m!866507))

(declare-fun m!866509 () Bool)

(assert (=> b!932422 m!866509))

(declare-fun m!866511 () Bool)

(assert (=> b!932422 m!866511))

(declare-fun m!866513 () Bool)

(assert (=> b!932429 m!866513))

(declare-fun m!866515 () Bool)

(assert (=> b!932429 m!866515))

(declare-fun m!866517 () Bool)

(assert (=> b!932429 m!866517))

(declare-fun m!866519 () Bool)

(assert (=> b!932429 m!866519))

(declare-fun m!866521 () Bool)

(assert (=> b!932429 m!866521))

(declare-fun m!866523 () Bool)

(assert (=> b!932429 m!866523))

(declare-fun m!866525 () Bool)

(assert (=> b!932429 m!866525))

(assert (=> b!932429 m!866515))

(assert (=> b!932429 m!866517))

(declare-fun m!866527 () Bool)

(assert (=> b!932429 m!866527))

(declare-fun m!866529 () Bool)

(assert (=> b!932429 m!866529))

(assert (=> b!932429 m!866523))

(declare-fun m!866531 () Bool)

(assert (=> b!932429 m!866531))

(declare-fun m!866533 () Bool)

(assert (=> b!932429 m!866533))

(assert (=> b!932429 m!866519))

(declare-fun m!866535 () Bool)

(assert (=> b!932429 m!866535))

(declare-fun m!866537 () Bool)

(assert (=> b!932423 m!866537))

(declare-fun m!866539 () Bool)

(assert (=> b!932423 m!866539))

(declare-fun m!866541 () Bool)

(assert (=> start!79406 m!866541))

(declare-fun m!866543 () Bool)

(assert (=> start!79406 m!866543))

(declare-fun m!866545 () Bool)

(assert (=> start!79406 m!866545))

(declare-fun m!866547 () Bool)

(assert (=> b!932430 m!866547))

(declare-fun m!866549 () Bool)

(assert (=> mapNonEmpty!31869 m!866549))

(declare-fun m!866551 () Bool)

(assert (=> b!932425 m!866551))

(declare-fun m!866553 () Bool)

(assert (=> b!932428 m!866553))

(check-sat (not b!932430) (not b!932429) (not start!79406) (not b!932423) (not b_next!17565) (not b_lambda!13929) (not b!932422) (not mapNonEmpty!31869) tp_is_empty!20073 b_and!28709 (not b!932418) (not b!932428) (not b!932425))
(check-sat b_and!28709 (not b_next!17565))

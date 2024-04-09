; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79688 () Bool)

(assert start!79688)

(declare-fun b_free!17709 () Bool)

(declare-fun b_next!17709 () Bool)

(assert (=> start!79688 (= b_free!17709 (not b_next!17709))))

(declare-fun tp!61583 () Bool)

(declare-fun b_and!29027 () Bool)

(assert (=> start!79688 (= tp!61583 b_and!29027)))

(declare-fun b!936538 () Bool)

(declare-datatypes ((V!31921 0))(
  ( (V!31922 (val!10159 Int)) )
))
(declare-datatypes ((tuple2!13444 0))(
  ( (tuple2!13445 (_1!6732 (_ BitVec 64)) (_2!6732 V!31921)) )
))
(declare-datatypes ((List!19251 0))(
  ( (Nil!19248) (Cons!19247 (h!20393 tuple2!13444) (t!27512 List!19251)) )
))
(declare-datatypes ((ListLongMap!12155 0))(
  ( (ListLongMap!12156 (toList!6093 List!19251)) )
))
(declare-fun lt!422367 () ListLongMap!12155)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun lt!422374 () V!31921)

(declare-fun apply!871 (ListLongMap!12155 (_ BitVec 64)) V!31921)

(assert (=> b!936538 (= (apply!871 lt!422367 k0!1099) lt!422374)))

(declare-datatypes ((Unit!31602 0))(
  ( (Unit!31603) )
))
(declare-fun lt!422362 () Unit!31602)

(declare-fun lt!422366 () V!31921)

(declare-fun lt!422371 () ListLongMap!12155)

(declare-fun lt!422365 () (_ BitVec 64))

(declare-fun addApplyDifferent!419 (ListLongMap!12155 (_ BitVec 64) V!31921 (_ BitVec 64)) Unit!31602)

(assert (=> b!936538 (= lt!422362 (addApplyDifferent!419 lt!422371 lt!422365 lt!422366 k0!1099))))

(assert (=> b!936538 (not (= lt!422365 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun lt!422373 () Unit!31602)

(declare-datatypes ((array!56398 0))(
  ( (array!56399 (arr!27135 (Array (_ BitVec 32) (_ BitVec 64))) (size!27595 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56398)

(declare-datatypes ((List!19252 0))(
  ( (Nil!19249) (Cons!19248 (h!20394 (_ BitVec 64)) (t!27513 List!19252)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56398 (_ BitVec 64) (_ BitVec 32) List!19252) Unit!31602)

(assert (=> b!936538 (= lt!422373 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19249))))

(declare-fun e!525906 () Bool)

(assert (=> b!936538 e!525906))

(declare-fun c!97360 () Bool)

(assert (=> b!936538 (= c!97360 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun lt!422364 () Unit!31602)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9627 0))(
  ( (ValueCellFull!9627 (v!12684 V!31921)) (EmptyCell!9627) )
))
(declare-datatypes ((array!56400 0))(
  ( (array!56401 (arr!27136 (Array (_ BitVec 32) ValueCell!9627)) (size!27596 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56400)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31921)

(declare-fun minValue!1173 () V!31921)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!302 (array!56398 array!56400 (_ BitVec 32) (_ BitVec 32) V!31921 V!31921 (_ BitVec 64) (_ BitVec 32) Int) Unit!31602)

(assert (=> b!936538 (= lt!422364 (lemmaListMapContainsThenArrayContainsFrom!302 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56398 (_ BitVec 32) List!19252) Bool)

(assert (=> b!936538 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19249)))

(declare-fun lt!422370 () Unit!31602)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56398 (_ BitVec 32) (_ BitVec 32)) Unit!31602)

(assert (=> b!936538 (= lt!422370 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5103 (ListLongMap!12155 (_ BitVec 64)) Bool)

(assert (=> b!936538 (contains!5103 lt!422367 k0!1099)))

(declare-fun lt!422369 () tuple2!13444)

(declare-fun +!2789 (ListLongMap!12155 tuple2!13444) ListLongMap!12155)

(assert (=> b!936538 (= lt!422367 (+!2789 lt!422371 lt!422369))))

(declare-fun lt!422368 () Unit!31602)

(declare-fun addStillContains!545 (ListLongMap!12155 (_ BitVec 64) V!31921 (_ BitVec 64)) Unit!31602)

(assert (=> b!936538 (= lt!422368 (addStillContains!545 lt!422371 lt!422365 lt!422366 k0!1099))))

(declare-fun getCurrentListMap!3282 (array!56398 array!56400 (_ BitVec 32) (_ BitVec 32) V!31921 V!31921 (_ BitVec 32) Int) ListLongMap!12155)

(assert (=> b!936538 (= (getCurrentListMap!3282 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2789 (getCurrentListMap!3282 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422369))))

(assert (=> b!936538 (= lt!422369 (tuple2!13445 lt!422365 lt!422366))))

(declare-fun get!14319 (ValueCell!9627 V!31921) V!31921)

(declare-fun dynLambda!1628 (Int (_ BitVec 64)) V!31921)

(assert (=> b!936538 (= lt!422366 (get!14319 (select (arr!27136 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1628 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422363 () Unit!31602)

(declare-fun lemmaListMapRecursiveValidKeyArray!224 (array!56398 array!56400 (_ BitVec 32) (_ BitVec 32) V!31921 V!31921 (_ BitVec 32) Int) Unit!31602)

(assert (=> b!936538 (= lt!422363 (lemmaListMapRecursiveValidKeyArray!224 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!525911 () Unit!31602)

(assert (=> b!936538 (= e!525911 lt!422362)))

(declare-fun b!936539 () Bool)

(declare-fun Unit!31604 () Unit!31602)

(assert (=> b!936539 (= e!525911 Unit!31604)))

(declare-fun b!936540 () Bool)

(declare-fun e!525913 () Bool)

(declare-fun tp_is_empty!20217 () Bool)

(assert (=> b!936540 (= e!525913 tp_is_empty!20217)))

(declare-fun b!936541 () Bool)

(declare-fun arrayContainsKey!0 (array!56398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!936541 (= e!525906 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun res!630655 () Bool)

(declare-fun e!525910 () Bool)

(assert (=> start!79688 (=> (not res!630655) (not e!525910))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79688 (= res!630655 (validMask!0 mask!1881))))

(assert (=> start!79688 e!525910))

(assert (=> start!79688 true))

(assert (=> start!79688 tp_is_empty!20217))

(declare-fun e!525905 () Bool)

(declare-fun array_inv!21072 (array!56400) Bool)

(assert (=> start!79688 (and (array_inv!21072 _values!1231) e!525905)))

(assert (=> start!79688 tp!61583))

(declare-fun array_inv!21073 (array!56398) Bool)

(assert (=> start!79688 (array_inv!21073 _keys!1487)))

(declare-fun b!936542 () Bool)

(declare-fun e!525912 () Unit!31602)

(assert (=> b!936542 (= e!525912 e!525911)))

(assert (=> b!936542 (= lt!422365 (select (arr!27135 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97361 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!936542 (= c!97361 (validKeyInArray!0 lt!422365))))

(declare-fun b!936543 () Bool)

(declare-fun res!630652 () Bool)

(assert (=> b!936543 (=> (not res!630652) (not e!525910))))

(assert (=> b!936543 (= res!630652 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27595 _keys!1487))))))

(declare-fun b!936544 () Bool)

(declare-fun e!525909 () Bool)

(declare-fun e!525908 () Bool)

(assert (=> b!936544 (= e!525909 e!525908)))

(declare-fun res!630650 () Bool)

(assert (=> b!936544 (=> (not res!630650) (not e!525908))))

(declare-fun v!791 () V!31921)

(assert (=> b!936544 (= res!630650 (and (= lt!422374 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!936544 (= lt!422374 (apply!871 lt!422371 k0!1099))))

(declare-fun b!936545 () Bool)

(declare-fun e!525907 () Bool)

(declare-fun mapRes!32097 () Bool)

(assert (=> b!936545 (= e!525905 (and e!525907 mapRes!32097))))

(declare-fun condMapEmpty!32097 () Bool)

(declare-fun mapDefault!32097 () ValueCell!9627)

(assert (=> b!936545 (= condMapEmpty!32097 (= (arr!27136 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9627)) mapDefault!32097)))))

(declare-fun b!936546 () Bool)

(assert (=> b!936546 (= e!525908 false)))

(declare-fun lt!422372 () Unit!31602)

(assert (=> b!936546 (= lt!422372 e!525912)))

(declare-fun c!97359 () Bool)

(assert (=> b!936546 (= c!97359 (validKeyInArray!0 k0!1099))))

(declare-fun b!936547 () Bool)

(declare-fun Unit!31605 () Unit!31602)

(assert (=> b!936547 (= e!525912 Unit!31605)))

(declare-fun b!936548 () Bool)

(assert (=> b!936548 (= e!525906 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!936549 () Bool)

(declare-fun res!630651 () Bool)

(assert (=> b!936549 (=> (not res!630651) (not e!525910))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56398 (_ BitVec 32)) Bool)

(assert (=> b!936549 (= res!630651 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!936550 () Bool)

(declare-fun res!630654 () Bool)

(assert (=> b!936550 (=> (not res!630654) (not e!525910))))

(assert (=> b!936550 (= res!630654 (and (= (size!27596 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27595 _keys!1487) (size!27596 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!936551 () Bool)

(declare-fun res!630653 () Bool)

(assert (=> b!936551 (=> (not res!630653) (not e!525910))))

(assert (=> b!936551 (= res!630653 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19249))))

(declare-fun mapIsEmpty!32097 () Bool)

(assert (=> mapIsEmpty!32097 mapRes!32097))

(declare-fun b!936552 () Bool)

(assert (=> b!936552 (= e!525907 tp_is_empty!20217)))

(declare-fun b!936553 () Bool)

(assert (=> b!936553 (= e!525910 e!525909)))

(declare-fun res!630656 () Bool)

(assert (=> b!936553 (=> (not res!630656) (not e!525909))))

(assert (=> b!936553 (= res!630656 (contains!5103 lt!422371 k0!1099))))

(assert (=> b!936553 (= lt!422371 (getCurrentListMap!3282 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun mapNonEmpty!32097 () Bool)

(declare-fun tp!61584 () Bool)

(assert (=> mapNonEmpty!32097 (= mapRes!32097 (and tp!61584 e!525913))))

(declare-fun mapValue!32097 () ValueCell!9627)

(declare-fun mapRest!32097 () (Array (_ BitVec 32) ValueCell!9627))

(declare-fun mapKey!32097 () (_ BitVec 32))

(assert (=> mapNonEmpty!32097 (= (arr!27136 _values!1231) (store mapRest!32097 mapKey!32097 mapValue!32097))))

(assert (= (and start!79688 res!630655) b!936550))

(assert (= (and b!936550 res!630654) b!936549))

(assert (= (and b!936549 res!630651) b!936551))

(assert (= (and b!936551 res!630653) b!936543))

(assert (= (and b!936543 res!630652) b!936553))

(assert (= (and b!936553 res!630656) b!936544))

(assert (= (and b!936544 res!630650) b!936546))

(assert (= (and b!936546 c!97359) b!936542))

(assert (= (and b!936546 (not c!97359)) b!936547))

(assert (= (and b!936542 c!97361) b!936538))

(assert (= (and b!936542 (not c!97361)) b!936539))

(assert (= (and b!936538 c!97360) b!936541))

(assert (= (and b!936538 (not c!97360)) b!936548))

(assert (= (and b!936545 condMapEmpty!32097) mapIsEmpty!32097))

(assert (= (and b!936545 (not condMapEmpty!32097)) mapNonEmpty!32097))

(get-info :version)

(assert (= (and mapNonEmpty!32097 ((_ is ValueCellFull!9627) mapValue!32097)) b!936540))

(assert (= (and b!936545 ((_ is ValueCellFull!9627) mapDefault!32097)) b!936552))

(assert (= start!79688 b!936545))

(declare-fun b_lambda!14145 () Bool)

(assert (=> (not b_lambda!14145) (not b!936538)))

(declare-fun t!27511 () Bool)

(declare-fun tb!6111 () Bool)

(assert (=> (and start!79688 (= defaultEntry!1235 defaultEntry!1235) t!27511) tb!6111))

(declare-fun result!12047 () Bool)

(assert (=> tb!6111 (= result!12047 tp_is_empty!20217)))

(assert (=> b!936538 t!27511))

(declare-fun b_and!29029 () Bool)

(assert (= b_and!29027 (and (=> t!27511 result!12047) b_and!29029)))

(declare-fun m!871287 () Bool)

(assert (=> b!936551 m!871287))

(declare-fun m!871289 () Bool)

(assert (=> b!936546 m!871289))

(declare-fun m!871291 () Bool)

(assert (=> b!936538 m!871291))

(declare-fun m!871293 () Bool)

(assert (=> b!936538 m!871293))

(declare-fun m!871295 () Bool)

(assert (=> b!936538 m!871295))

(declare-fun m!871297 () Bool)

(assert (=> b!936538 m!871297))

(declare-fun m!871299 () Bool)

(assert (=> b!936538 m!871299))

(declare-fun m!871301 () Bool)

(assert (=> b!936538 m!871301))

(declare-fun m!871303 () Bool)

(assert (=> b!936538 m!871303))

(declare-fun m!871305 () Bool)

(assert (=> b!936538 m!871305))

(declare-fun m!871307 () Bool)

(assert (=> b!936538 m!871307))

(assert (=> b!936538 m!871293))

(assert (=> b!936538 m!871297))

(declare-fun m!871309 () Bool)

(assert (=> b!936538 m!871309))

(declare-fun m!871311 () Bool)

(assert (=> b!936538 m!871311))

(declare-fun m!871313 () Bool)

(assert (=> b!936538 m!871313))

(declare-fun m!871315 () Bool)

(assert (=> b!936538 m!871315))

(assert (=> b!936538 m!871313))

(declare-fun m!871317 () Bool)

(assert (=> b!936538 m!871317))

(declare-fun m!871319 () Bool)

(assert (=> b!936538 m!871319))

(declare-fun m!871321 () Bool)

(assert (=> b!936538 m!871321))

(declare-fun m!871323 () Bool)

(assert (=> mapNonEmpty!32097 m!871323))

(declare-fun m!871325 () Bool)

(assert (=> b!936542 m!871325))

(declare-fun m!871327 () Bool)

(assert (=> b!936542 m!871327))

(declare-fun m!871329 () Bool)

(assert (=> b!936553 m!871329))

(declare-fun m!871331 () Bool)

(assert (=> b!936553 m!871331))

(declare-fun m!871333 () Bool)

(assert (=> b!936541 m!871333))

(declare-fun m!871335 () Bool)

(assert (=> start!79688 m!871335))

(declare-fun m!871337 () Bool)

(assert (=> start!79688 m!871337))

(declare-fun m!871339 () Bool)

(assert (=> start!79688 m!871339))

(declare-fun m!871341 () Bool)

(assert (=> b!936544 m!871341))

(declare-fun m!871343 () Bool)

(assert (=> b!936549 m!871343))

(check-sat (not b_lambda!14145) (not b!936553) (not b_next!17709) tp_is_empty!20217 (not b!936551) (not start!79688) (not b!936538) b_and!29029 (not b!936542) (not b!936544) (not mapNonEmpty!32097) (not b!936546) (not b!936549) (not b!936541))
(check-sat b_and!29029 (not b_next!17709))

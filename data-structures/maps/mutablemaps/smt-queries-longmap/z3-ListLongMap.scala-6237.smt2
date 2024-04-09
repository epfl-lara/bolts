; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79724 () Bool)

(assert start!79724)

(declare-fun b_free!17745 () Bool)

(declare-fun b_next!17745 () Bool)

(assert (=> start!79724 (= b_free!17745 (not b_next!17745))))

(declare-fun tp!61692 () Bool)

(declare-fun b_and!29099 () Bool)

(assert (=> start!79724 (= tp!61692 b_and!29099)))

(declare-fun b!937438 () Bool)

(declare-fun e!526447 () Bool)

(declare-fun e!526453 () Bool)

(assert (=> b!937438 (= e!526447 e!526453)))

(declare-fun res!631028 () Bool)

(assert (=> b!937438 (=> (not res!631028) (not e!526453))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((V!31969 0))(
  ( (V!31970 (val!10177 Int)) )
))
(declare-fun lt!423066 () V!31969)

(declare-fun v!791 () V!31969)

(assert (=> b!937438 (= res!631028 (and (= lt!423066 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-datatypes ((tuple2!13478 0))(
  ( (tuple2!13479 (_1!6749 (_ BitVec 64)) (_2!6749 V!31969)) )
))
(declare-datatypes ((List!19286 0))(
  ( (Nil!19283) (Cons!19282 (h!20428 tuple2!13478) (t!27583 List!19286)) )
))
(declare-datatypes ((ListLongMap!12189 0))(
  ( (ListLongMap!12190 (toList!6110 List!19286)) )
))
(declare-fun lt!423064 () ListLongMap!12189)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun apply!888 (ListLongMap!12189 (_ BitVec 64)) V!31969)

(assert (=> b!937438 (= lt!423066 (apply!888 lt!423064 k0!1099))))

(declare-fun e!526449 () Bool)

(declare-fun b!937439 () Bool)

(declare-datatypes ((array!56470 0))(
  ( (array!56471 (arr!27171 (Array (_ BitVec 32) (_ BitVec 64))) (size!27631 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56470)

(declare-fun arrayContainsKey!0 (array!56470 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!937439 (= e!526449 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!937440 () Bool)

(declare-fun res!631030 () Bool)

(declare-fun e!526448 () Bool)

(assert (=> b!937440 (=> (not res!631030) (not e!526448))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56470 (_ BitVec 32)) Bool)

(assert (=> b!937440 (= res!631030 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!937441 () Bool)

(declare-fun e!526454 () Bool)

(declare-fun tp_is_empty!20253 () Bool)

(assert (=> b!937441 (= e!526454 tp_is_empty!20253)))

(declare-fun b!937442 () Bool)

(declare-fun lt!423070 () ListLongMap!12189)

(assert (=> b!937442 (= (apply!888 lt!423070 k0!1099) lt!423066)))

(declare-fun lt!423068 () V!31969)

(declare-datatypes ((Unit!31665 0))(
  ( (Unit!31666) )
))
(declare-fun lt!423073 () Unit!31665)

(declare-fun lt!423074 () (_ BitVec 64))

(declare-fun addApplyDifferent!436 (ListLongMap!12189 (_ BitVec 64) V!31969 (_ BitVec 64)) Unit!31665)

(assert (=> b!937442 (= lt!423073 (addApplyDifferent!436 lt!423064 lt!423074 lt!423068 k0!1099))))

(assert (=> b!937442 (not (= lt!423074 k0!1099))))

(declare-fun lt!423067 () Unit!31665)

(declare-datatypes ((List!19287 0))(
  ( (Nil!19284) (Cons!19283 (h!20429 (_ BitVec 64)) (t!27584 List!19287)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56470 (_ BitVec 64) (_ BitVec 32) List!19287) Unit!31665)

(assert (=> b!937442 (= lt!423067 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19284))))

(assert (=> b!937442 e!526449))

(declare-fun c!97521 () Bool)

(assert (=> b!937442 (= c!97521 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9645 0))(
  ( (ValueCellFull!9645 (v!12702 V!31969)) (EmptyCell!9645) )
))
(declare-datatypes ((array!56472 0))(
  ( (array!56473 (arr!27172 (Array (_ BitVec 32) ValueCell!9645)) (size!27632 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56472)

(declare-fun lt!423075 () Unit!31665)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31969)

(declare-fun minValue!1173 () V!31969)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!319 (array!56470 array!56472 (_ BitVec 32) (_ BitVec 32) V!31969 V!31969 (_ BitVec 64) (_ BitVec 32) Int) Unit!31665)

(assert (=> b!937442 (= lt!423075 (lemmaListMapContainsThenArrayContainsFrom!319 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56470 (_ BitVec 32) List!19287) Bool)

(assert (=> b!937442 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19284)))

(declare-fun lt!423065 () Unit!31665)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56470 (_ BitVec 32) (_ BitVec 32)) Unit!31665)

(assert (=> b!937442 (= lt!423065 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5120 (ListLongMap!12189 (_ BitVec 64)) Bool)

(assert (=> b!937442 (contains!5120 lt!423070 k0!1099)))

(declare-fun lt!423071 () tuple2!13478)

(declare-fun +!2806 (ListLongMap!12189 tuple2!13478) ListLongMap!12189)

(assert (=> b!937442 (= lt!423070 (+!2806 lt!423064 lt!423071))))

(declare-fun lt!423076 () Unit!31665)

(declare-fun addStillContains!562 (ListLongMap!12189 (_ BitVec 64) V!31969 (_ BitVec 64)) Unit!31665)

(assert (=> b!937442 (= lt!423076 (addStillContains!562 lt!423064 lt!423074 lt!423068 k0!1099))))

(declare-fun getCurrentListMap!3299 (array!56470 array!56472 (_ BitVec 32) (_ BitVec 32) V!31969 V!31969 (_ BitVec 32) Int) ListLongMap!12189)

(assert (=> b!937442 (= (getCurrentListMap!3299 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2806 (getCurrentListMap!3299 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!423071))))

(assert (=> b!937442 (= lt!423071 (tuple2!13479 lt!423074 lt!423068))))

(declare-fun get!14348 (ValueCell!9645 V!31969) V!31969)

(declare-fun dynLambda!1645 (Int (_ BitVec 64)) V!31969)

(assert (=> b!937442 (= lt!423068 (get!14348 (select (arr!27172 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1645 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!423069 () Unit!31665)

(declare-fun lemmaListMapRecursiveValidKeyArray!241 (array!56470 array!56472 (_ BitVec 32) (_ BitVec 32) V!31969 V!31969 (_ BitVec 32) Int) Unit!31665)

(assert (=> b!937442 (= lt!423069 (lemmaListMapRecursiveValidKeyArray!241 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!526445 () Unit!31665)

(assert (=> b!937442 (= e!526445 lt!423073)))

(declare-fun mapNonEmpty!32151 () Bool)

(declare-fun mapRes!32151 () Bool)

(declare-fun tp!61691 () Bool)

(assert (=> mapNonEmpty!32151 (= mapRes!32151 (and tp!61691 e!526454))))

(declare-fun mapRest!32151 () (Array (_ BitVec 32) ValueCell!9645))

(declare-fun mapValue!32151 () ValueCell!9645)

(declare-fun mapKey!32151 () (_ BitVec 32))

(assert (=> mapNonEmpty!32151 (= (arr!27172 _values!1231) (store mapRest!32151 mapKey!32151 mapValue!32151))))

(declare-fun b!937443 () Bool)

(assert (=> b!937443 (= e!526448 e!526447)))

(declare-fun res!631031 () Bool)

(assert (=> b!937443 (=> (not res!631031) (not e!526447))))

(assert (=> b!937443 (= res!631031 (contains!5120 lt!423064 k0!1099))))

(assert (=> b!937443 (= lt!423064 (getCurrentListMap!3299 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!937444 () Bool)

(declare-fun Unit!31667 () Unit!31665)

(assert (=> b!937444 (= e!526445 Unit!31667)))

(declare-fun b!937445 () Bool)

(declare-fun res!631032 () Bool)

(assert (=> b!937445 (=> (not res!631032) (not e!526448))))

(assert (=> b!937445 (= res!631032 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19284))))

(declare-fun b!937446 () Bool)

(declare-fun e!526452 () Bool)

(assert (=> b!937446 (= e!526452 tp_is_empty!20253)))

(declare-fun res!631029 () Bool)

(assert (=> start!79724 (=> (not res!631029) (not e!526448))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79724 (= res!631029 (validMask!0 mask!1881))))

(assert (=> start!79724 e!526448))

(assert (=> start!79724 true))

(assert (=> start!79724 tp_is_empty!20253))

(declare-fun e!526450 () Bool)

(declare-fun array_inv!21096 (array!56472) Bool)

(assert (=> start!79724 (and (array_inv!21096 _values!1231) e!526450)))

(assert (=> start!79724 tp!61692))

(declare-fun array_inv!21097 (array!56470) Bool)

(assert (=> start!79724 (array_inv!21097 _keys!1487)))

(declare-fun b!937447 () Bool)

(declare-fun res!631034 () Bool)

(assert (=> b!937447 (=> (not res!631034) (not e!526448))))

(assert (=> b!937447 (= res!631034 (and (= (size!27632 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27631 _keys!1487) (size!27632 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!32151 () Bool)

(assert (=> mapIsEmpty!32151 mapRes!32151))

(declare-fun b!937448 () Bool)

(declare-fun e!526451 () Unit!31665)

(declare-fun Unit!31668 () Unit!31665)

(assert (=> b!937448 (= e!526451 Unit!31668)))

(declare-fun b!937449 () Bool)

(assert (=> b!937449 (= e!526451 e!526445)))

(assert (=> b!937449 (= lt!423074 (select (arr!27171 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97522 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937449 (= c!97522 (validKeyInArray!0 lt!423074))))

(declare-fun b!937450 () Bool)

(assert (=> b!937450 (= e!526450 (and e!526452 mapRes!32151))))

(declare-fun condMapEmpty!32151 () Bool)

(declare-fun mapDefault!32151 () ValueCell!9645)

(assert (=> b!937450 (= condMapEmpty!32151 (= (arr!27172 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9645)) mapDefault!32151)))))

(declare-fun b!937451 () Bool)

(assert (=> b!937451 (= e!526453 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27631 _keys!1487)))))

(declare-fun lt!423072 () Unit!31665)

(assert (=> b!937451 (= lt!423072 e!526451)))

(declare-fun c!97523 () Bool)

(assert (=> b!937451 (= c!97523 (validKeyInArray!0 k0!1099))))

(declare-fun b!937452 () Bool)

(declare-fun res!631033 () Bool)

(assert (=> b!937452 (=> (not res!631033) (not e!526448))))

(assert (=> b!937452 (= res!631033 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27631 _keys!1487))))))

(declare-fun b!937453 () Bool)

(assert (=> b!937453 (= e!526449 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!79724 res!631029) b!937447))

(assert (= (and b!937447 res!631034) b!937440))

(assert (= (and b!937440 res!631030) b!937445))

(assert (= (and b!937445 res!631032) b!937452))

(assert (= (and b!937452 res!631033) b!937443))

(assert (= (and b!937443 res!631031) b!937438))

(assert (= (and b!937438 res!631028) b!937451))

(assert (= (and b!937451 c!97523) b!937449))

(assert (= (and b!937451 (not c!97523)) b!937448))

(assert (= (and b!937449 c!97522) b!937442))

(assert (= (and b!937449 (not c!97522)) b!937444))

(assert (= (and b!937442 c!97521) b!937439))

(assert (= (and b!937442 (not c!97521)) b!937453))

(assert (= (and b!937450 condMapEmpty!32151) mapIsEmpty!32151))

(assert (= (and b!937450 (not condMapEmpty!32151)) mapNonEmpty!32151))

(get-info :version)

(assert (= (and mapNonEmpty!32151 ((_ is ValueCellFull!9645) mapValue!32151)) b!937441))

(assert (= (and b!937450 ((_ is ValueCellFull!9645) mapDefault!32151)) b!937446))

(assert (= start!79724 b!937450))

(declare-fun b_lambda!14181 () Bool)

(assert (=> (not b_lambda!14181) (not b!937442)))

(declare-fun t!27582 () Bool)

(declare-fun tb!6147 () Bool)

(assert (=> (and start!79724 (= defaultEntry!1235 defaultEntry!1235) t!27582) tb!6147))

(declare-fun result!12119 () Bool)

(assert (=> tb!6147 (= result!12119 tp_is_empty!20253)))

(assert (=> b!937442 t!27582))

(declare-fun b_and!29101 () Bool)

(assert (= b_and!29099 (and (=> t!27582 result!12119) b_and!29101)))

(declare-fun m!872331 () Bool)

(assert (=> b!937449 m!872331))

(declare-fun m!872333 () Bool)

(assert (=> b!937449 m!872333))

(declare-fun m!872335 () Bool)

(assert (=> b!937439 m!872335))

(declare-fun m!872337 () Bool)

(assert (=> b!937443 m!872337))

(declare-fun m!872339 () Bool)

(assert (=> b!937443 m!872339))

(declare-fun m!872341 () Bool)

(assert (=> mapNonEmpty!32151 m!872341))

(declare-fun m!872343 () Bool)

(assert (=> b!937442 m!872343))

(declare-fun m!872345 () Bool)

(assert (=> b!937442 m!872345))

(declare-fun m!872347 () Bool)

(assert (=> b!937442 m!872347))

(declare-fun m!872349 () Bool)

(assert (=> b!937442 m!872349))

(declare-fun m!872351 () Bool)

(assert (=> b!937442 m!872351))

(declare-fun m!872353 () Bool)

(assert (=> b!937442 m!872353))

(assert (=> b!937442 m!872347))

(assert (=> b!937442 m!872351))

(declare-fun m!872355 () Bool)

(assert (=> b!937442 m!872355))

(declare-fun m!872357 () Bool)

(assert (=> b!937442 m!872357))

(declare-fun m!872359 () Bool)

(assert (=> b!937442 m!872359))

(declare-fun m!872361 () Bool)

(assert (=> b!937442 m!872361))

(declare-fun m!872363 () Bool)

(assert (=> b!937442 m!872363))

(declare-fun m!872365 () Bool)

(assert (=> b!937442 m!872365))

(declare-fun m!872367 () Bool)

(assert (=> b!937442 m!872367))

(declare-fun m!872369 () Bool)

(assert (=> b!937442 m!872369))

(declare-fun m!872371 () Bool)

(assert (=> b!937442 m!872371))

(assert (=> b!937442 m!872367))

(declare-fun m!872373 () Bool)

(assert (=> b!937442 m!872373))

(declare-fun m!872375 () Bool)

(assert (=> b!937438 m!872375))

(declare-fun m!872377 () Bool)

(assert (=> b!937440 m!872377))

(declare-fun m!872379 () Bool)

(assert (=> b!937445 m!872379))

(declare-fun m!872381 () Bool)

(assert (=> start!79724 m!872381))

(declare-fun m!872383 () Bool)

(assert (=> start!79724 m!872383))

(declare-fun m!872385 () Bool)

(assert (=> start!79724 m!872385))

(declare-fun m!872387 () Bool)

(assert (=> b!937451 m!872387))

(check-sat (not b!937449) tp_is_empty!20253 (not mapNonEmpty!32151) (not b_next!17745) (not b!937451) b_and!29101 (not b!937443) (not b!937445) (not b_lambda!14181) (not b!937442) (not b!937438) (not start!79724) (not b!937439) (not b!937440))
(check-sat b_and!29101 (not b_next!17745))

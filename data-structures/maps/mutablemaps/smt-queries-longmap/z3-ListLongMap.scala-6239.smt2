; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79812 () Bool)

(assert start!79812)

(declare-fun b_free!17757 () Bool)

(declare-fun b_next!17757 () Bool)

(assert (=> start!79812 (= b_free!17757 (not b_next!17757))))

(declare-fun tp!61731 () Bool)

(declare-fun b_and!29147 () Bool)

(assert (=> start!79812 (= tp!61731 b_and!29147)))

(declare-fun b!938291 () Bool)

(declare-fun res!631417 () Bool)

(declare-fun e!526989 () Bool)

(assert (=> b!938291 (=> (not res!631417) (not e!526989))))

(declare-datatypes ((array!56494 0))(
  ( (array!56495 (arr!27182 (Array (_ BitVec 32) (_ BitVec 64))) (size!27642 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56494)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56494 (_ BitVec 32)) Bool)

(assert (=> b!938291 (= res!631417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!32173 () Bool)

(declare-fun mapRes!32173 () Bool)

(declare-fun tp!61732 () Bool)

(declare-fun e!526987 () Bool)

(assert (=> mapNonEmpty!32173 (= mapRes!32173 (and tp!61732 e!526987))))

(declare-datatypes ((V!31985 0))(
  ( (V!31986 (val!10183 Int)) )
))
(declare-datatypes ((ValueCell!9651 0))(
  ( (ValueCellFull!9651 (v!12711 V!31985)) (EmptyCell!9651) )
))
(declare-datatypes ((array!56496 0))(
  ( (array!56497 (arr!27183 (Array (_ BitVec 32) ValueCell!9651)) (size!27643 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56496)

(declare-fun mapValue!32173 () ValueCell!9651)

(declare-fun mapRest!32173 () (Array (_ BitVec 32) ValueCell!9651))

(declare-fun mapKey!32173 () (_ BitVec 32))

(assert (=> mapNonEmpty!32173 (= (arr!27183 _values!1231) (store mapRest!32173 mapKey!32173 mapValue!32173))))

(declare-fun b!938292 () Bool)

(declare-datatypes ((Unit!31704 0))(
  ( (Unit!31705) )
))
(declare-fun e!526985 () Unit!31704)

(declare-fun Unit!31706 () Unit!31704)

(assert (=> b!938292 (= e!526985 Unit!31706)))

(declare-fun b!938293 () Bool)

(declare-fun e!526990 () Bool)

(declare-fun e!526991 () Bool)

(assert (=> b!938293 (= e!526990 e!526991)))

(declare-fun res!631416 () Bool)

(assert (=> b!938293 (=> (not res!631416) (not e!526991))))

(declare-datatypes ((tuple2!13486 0))(
  ( (tuple2!13487 (_1!6753 (_ BitVec 64)) (_2!6753 V!31985)) )
))
(declare-datatypes ((List!19293 0))(
  ( (Nil!19290) (Cons!19289 (h!20435 tuple2!13486) (t!27602 List!19293)) )
))
(declare-datatypes ((ListLongMap!12197 0))(
  ( (ListLongMap!12198 (toList!6114 List!19293)) )
))
(declare-fun lt!423733 () ListLongMap!12197)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!5126 (ListLongMap!12197 (_ BitVec 64)) Bool)

(assert (=> b!938293 (= res!631416 (contains!5126 lt!423733 k0!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31985)

(declare-fun minValue!1173 () V!31985)

(declare-fun getCurrentListMap!3303 (array!56494 array!56496 (_ BitVec 32) (_ BitVec 32) V!31985 V!31985 (_ BitVec 32) Int) ListLongMap!12197)

(assert (=> b!938293 (= lt!423733 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!938294 () Bool)

(declare-fun e!526984 () Unit!31704)

(assert (=> b!938294 (= e!526984 e!526985)))

(declare-fun lt!423727 () (_ BitVec 64))

(assert (=> b!938294 (= lt!423727 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97717 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!938294 (= c!97717 (validKeyInArray!0 lt!423727))))

(declare-fun b!938295 () Bool)

(declare-fun e!526983 () Bool)

(declare-fun e!526994 () Bool)

(assert (=> b!938295 (= e!526983 (and e!526994 mapRes!32173))))

(declare-fun condMapEmpty!32173 () Bool)

(declare-fun mapDefault!32173 () ValueCell!9651)

(assert (=> b!938295 (= condMapEmpty!32173 (= (arr!27183 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9651)) mapDefault!32173)))))

(declare-fun b!938296 () Bool)

(declare-fun res!631415 () Bool)

(assert (=> b!938296 (=> (not res!631415) (not e!526989))))

(declare-datatypes ((List!19294 0))(
  ( (Nil!19291) (Cons!19290 (h!20436 (_ BitVec 64)) (t!27603 List!19294)) )
))
(declare-fun arrayNoDuplicates!0 (array!56494 (_ BitVec 32) List!19294) Bool)

(assert (=> b!938296 (= res!631415 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19291))))

(declare-fun res!631421 () Bool)

(assert (=> start!79812 (=> (not res!631421) (not e!526989))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79812 (= res!631421 (validMask!0 mask!1881))))

(assert (=> start!79812 e!526989))

(assert (=> start!79812 true))

(declare-fun tp_is_empty!20265 () Bool)

(assert (=> start!79812 tp_is_empty!20265))

(declare-fun array_inv!21100 (array!56496) Bool)

(assert (=> start!79812 (and (array_inv!21100 _values!1231) e!526983)))

(assert (=> start!79812 tp!61731))

(declare-fun array_inv!21101 (array!56494) Bool)

(assert (=> start!79812 (array_inv!21101 _keys!1487)))

(declare-fun b!938297 () Bool)

(declare-fun e!526986 () Bool)

(assert (=> b!938297 (= e!526986 e!526990)))

(declare-fun res!631419 () Bool)

(assert (=> b!938297 (=> (not res!631419) (not e!526990))))

(assert (=> b!938297 (= res!631419 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun lt!423725 () Unit!31704)

(assert (=> b!938297 (= lt!423725 e!526984)))

(declare-fun c!97716 () Bool)

(assert (=> b!938297 (= c!97716 (validKeyInArray!0 k0!1099))))

(declare-fun e!526992 () Bool)

(declare-fun b!938298 () Bool)

(declare-fun arrayContainsKey!0 (array!56494 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!938298 (= e!526992 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!938299 () Bool)

(declare-fun e!526988 () Bool)

(assert (=> b!938299 (= e!526989 e!526988)))

(declare-fun res!631418 () Bool)

(assert (=> b!938299 (=> (not res!631418) (not e!526988))))

(declare-fun lt!423722 () ListLongMap!12197)

(assert (=> b!938299 (= res!631418 (contains!5126 lt!423722 k0!1099))))

(assert (=> b!938299 (= lt!423722 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun v!791 () V!31985)

(declare-fun b!938300 () Bool)

(declare-fun apply!892 (ListLongMap!12197 (_ BitVec 64)) V!31985)

(assert (=> b!938300 (= e!526991 (not (= (apply!892 lt!423733 k0!1099) v!791)))))

(declare-fun b!938301 () Bool)

(declare-fun lt!423731 () ListLongMap!12197)

(declare-fun lt!423726 () V!31985)

(assert (=> b!938301 (= (apply!892 lt!423731 k0!1099) lt!423726)))

(declare-fun lt!423723 () V!31985)

(declare-fun lt!423729 () Unit!31704)

(declare-fun addApplyDifferent!439 (ListLongMap!12197 (_ BitVec 64) V!31985 (_ BitVec 64)) Unit!31704)

(assert (=> b!938301 (= lt!423729 (addApplyDifferent!439 lt!423722 lt!423727 lt!423723 k0!1099))))

(assert (=> b!938301 (not (= lt!423727 k0!1099))))

(declare-fun lt!423728 () Unit!31704)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56494 (_ BitVec 64) (_ BitVec 32) List!19294) Unit!31704)

(assert (=> b!938301 (= lt!423728 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19291))))

(assert (=> b!938301 e!526992))

(declare-fun c!97715 () Bool)

(assert (=> b!938301 (= c!97715 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!423734 () Unit!31704)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!322 (array!56494 array!56496 (_ BitVec 32) (_ BitVec 32) V!31985 V!31985 (_ BitVec 64) (_ BitVec 32) Int) Unit!31704)

(assert (=> b!938301 (= lt!423734 (lemmaListMapContainsThenArrayContainsFrom!322 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!938301 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19291)))

(declare-fun lt!423724 () Unit!31704)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56494 (_ BitVec 32) (_ BitVec 32)) Unit!31704)

(assert (=> b!938301 (= lt!423724 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!938301 (contains!5126 lt!423731 k0!1099)))

(declare-fun lt!423732 () tuple2!13486)

(declare-fun +!2809 (ListLongMap!12197 tuple2!13486) ListLongMap!12197)

(assert (=> b!938301 (= lt!423731 (+!2809 lt!423722 lt!423732))))

(declare-fun lt!423721 () Unit!31704)

(declare-fun addStillContains!565 (ListLongMap!12197 (_ BitVec 64) V!31985 (_ BitVec 64)) Unit!31704)

(assert (=> b!938301 (= lt!423721 (addStillContains!565 lt!423722 lt!423727 lt!423723 k0!1099))))

(assert (=> b!938301 (= (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2809 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!423732))))

(assert (=> b!938301 (= lt!423732 (tuple2!13487 lt!423727 lt!423723))))

(declare-fun get!14358 (ValueCell!9651 V!31985) V!31985)

(declare-fun dynLambda!1648 (Int (_ BitVec 64)) V!31985)

(assert (=> b!938301 (= lt!423723 (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!423730 () Unit!31704)

(declare-fun lemmaListMapRecursiveValidKeyArray!244 (array!56494 array!56496 (_ BitVec 32) (_ BitVec 32) V!31985 V!31985 (_ BitVec 32) Int) Unit!31704)

(assert (=> b!938301 (= lt!423730 (lemmaListMapRecursiveValidKeyArray!244 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!938301 (= e!526985 lt!423729)))

(declare-fun mapIsEmpty!32173 () Bool)

(assert (=> mapIsEmpty!32173 mapRes!32173))

(declare-fun b!938302 () Bool)

(assert (=> b!938302 (= e!526994 tp_is_empty!20265)))

(declare-fun b!938303 () Bool)

(declare-fun res!631413 () Bool)

(assert (=> b!938303 (=> (not res!631413) (not e!526989))))

(assert (=> b!938303 (= res!631413 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27642 _keys!1487))))))

(declare-fun b!938304 () Bool)

(assert (=> b!938304 (= e!526988 e!526986)))

(declare-fun res!631420 () Bool)

(assert (=> b!938304 (=> (not res!631420) (not e!526986))))

(assert (=> b!938304 (= res!631420 (and (= lt!423726 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!938304 (= lt!423726 (apply!892 lt!423722 k0!1099))))

(declare-fun b!938305 () Bool)

(assert (=> b!938305 (= e!526992 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!938306 () Bool)

(assert (=> b!938306 (= e!526987 tp_is_empty!20265)))

(declare-fun b!938307 () Bool)

(declare-fun Unit!31707 () Unit!31704)

(assert (=> b!938307 (= e!526984 Unit!31707)))

(declare-fun b!938308 () Bool)

(declare-fun res!631414 () Bool)

(assert (=> b!938308 (=> (not res!631414) (not e!526989))))

(assert (=> b!938308 (= res!631414 (and (= (size!27643 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27642 _keys!1487) (size!27643 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(assert (= (and start!79812 res!631421) b!938308))

(assert (= (and b!938308 res!631414) b!938291))

(assert (= (and b!938291 res!631417) b!938296))

(assert (= (and b!938296 res!631415) b!938303))

(assert (= (and b!938303 res!631413) b!938299))

(assert (= (and b!938299 res!631418) b!938304))

(assert (= (and b!938304 res!631420) b!938297))

(assert (= (and b!938297 c!97716) b!938294))

(assert (= (and b!938297 (not c!97716)) b!938307))

(assert (= (and b!938294 c!97717) b!938301))

(assert (= (and b!938294 (not c!97717)) b!938292))

(assert (= (and b!938301 c!97715) b!938298))

(assert (= (and b!938301 (not c!97715)) b!938305))

(assert (= (and b!938297 res!631419) b!938293))

(assert (= (and b!938293 res!631416) b!938300))

(assert (= (and b!938295 condMapEmpty!32173) mapIsEmpty!32173))

(assert (= (and b!938295 (not condMapEmpty!32173)) mapNonEmpty!32173))

(get-info :version)

(assert (= (and mapNonEmpty!32173 ((_ is ValueCellFull!9651) mapValue!32173)) b!938306))

(assert (= (and b!938295 ((_ is ValueCellFull!9651) mapDefault!32173)) b!938302))

(assert (= start!79812 b!938295))

(declare-fun b_lambda!14243 () Bool)

(assert (=> (not b_lambda!14243) (not b!938301)))

(declare-fun t!27601 () Bool)

(declare-fun tb!6159 () Bool)

(assert (=> (and start!79812 (= defaultEntry!1235 defaultEntry!1235) t!27601) tb!6159))

(declare-fun result!12145 () Bool)

(assert (=> tb!6159 (= result!12145 tp_is_empty!20265)))

(assert (=> b!938301 t!27601))

(declare-fun b_and!29149 () Bool)

(assert (= b_and!29147 (and (=> t!27601 result!12145) b_and!29149)))

(declare-fun m!873713 () Bool)

(assert (=> b!938297 m!873713))

(declare-fun m!873715 () Bool)

(assert (=> b!938298 m!873715))

(declare-fun m!873717 () Bool)

(assert (=> b!938299 m!873717))

(declare-fun m!873719 () Bool)

(assert (=> b!938299 m!873719))

(declare-fun m!873721 () Bool)

(assert (=> b!938296 m!873721))

(declare-fun m!873723 () Bool)

(assert (=> b!938304 m!873723))

(declare-fun m!873725 () Bool)

(assert (=> b!938293 m!873725))

(declare-fun m!873727 () Bool)

(assert (=> b!938293 m!873727))

(declare-fun m!873729 () Bool)

(assert (=> mapNonEmpty!32173 m!873729))

(declare-fun m!873731 () Bool)

(assert (=> b!938301 m!873731))

(declare-fun m!873733 () Bool)

(assert (=> b!938301 m!873733))

(declare-fun m!873735 () Bool)

(assert (=> b!938301 m!873735))

(declare-fun m!873737 () Bool)

(assert (=> b!938301 m!873737))

(declare-fun m!873739 () Bool)

(assert (=> b!938301 m!873739))

(declare-fun m!873741 () Bool)

(assert (=> b!938301 m!873741))

(assert (=> b!938301 m!873735))

(assert (=> b!938301 m!873737))

(declare-fun m!873743 () Bool)

(assert (=> b!938301 m!873743))

(assert (=> b!938301 m!873727))

(declare-fun m!873745 () Bool)

(assert (=> b!938301 m!873745))

(declare-fun m!873747 () Bool)

(assert (=> b!938301 m!873747))

(declare-fun m!873749 () Bool)

(assert (=> b!938301 m!873749))

(declare-fun m!873751 () Bool)

(assert (=> b!938301 m!873751))

(declare-fun m!873753 () Bool)

(assert (=> b!938301 m!873753))

(declare-fun m!873755 () Bool)

(assert (=> b!938301 m!873755))

(declare-fun m!873757 () Bool)

(assert (=> b!938301 m!873757))

(assert (=> b!938301 m!873755))

(declare-fun m!873759 () Bool)

(assert (=> b!938301 m!873759))

(declare-fun m!873761 () Bool)

(assert (=> b!938291 m!873761))

(declare-fun m!873763 () Bool)

(assert (=> b!938300 m!873763))

(declare-fun m!873765 () Bool)

(assert (=> start!79812 m!873765))

(declare-fun m!873767 () Bool)

(assert (=> start!79812 m!873767))

(declare-fun m!873769 () Bool)

(assert (=> start!79812 m!873769))

(declare-fun m!873771 () Bool)

(assert (=> b!938294 m!873771))

(declare-fun m!873773 () Bool)

(assert (=> b!938294 m!873773))

(check-sat (not b!938304) (not b!938296) (not b!938300) (not start!79812) (not b!938299) (not b!938298) (not b_next!17757) (not b!938293) (not b!938297) (not b!938291) b_and!29149 tp_is_empty!20265 (not b!938294) (not mapNonEmpty!32173) (not b_lambda!14243) (not b!938301))
(check-sat b_and!29149 (not b_next!17757))
(get-model)

(declare-fun b_lambda!14247 () Bool)

(assert (= b_lambda!14243 (or (and start!79812 b_free!17757) b_lambda!14247)))

(check-sat (not b!938304) (not b!938296) (not b!938300) (not start!79812) (not b!938299) (not b!938298) (not b_lambda!14247) (not b_next!17757) (not b!938301) (not b!938293) (not b!938297) (not b!938291) b_and!29149 tp_is_empty!20265 (not b!938294) (not mapNonEmpty!32173))
(check-sat b_and!29149 (not b_next!17757))
(get-model)

(declare-fun d!113555 () Bool)

(declare-fun res!631453 () Bool)

(declare-fun e!527035 () Bool)

(assert (=> d!113555 (=> res!631453 e!527035)))

(assert (=> d!113555 (= res!631453 (= (select (arr!27182 _keys!1487) from!1844) k0!1099))))

(assert (=> d!113555 (= (arrayContainsKey!0 _keys!1487 k0!1099 from!1844) e!527035)))

(declare-fun b!938371 () Bool)

(declare-fun e!527036 () Bool)

(assert (=> b!938371 (= e!527035 e!527036)))

(declare-fun res!631454 () Bool)

(assert (=> b!938371 (=> (not res!631454) (not e!527036))))

(assert (=> b!938371 (= res!631454 (bvslt (bvadd from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun b!938372 () Bool)

(assert (=> b!938372 (= e!527036 (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd from!1844 #b00000000000000000000000000000001)))))

(assert (= (and d!113555 (not res!631453)) b!938371))

(assert (= (and b!938371 res!631454) b!938372))

(declare-fun m!873837 () Bool)

(assert (=> d!113555 m!873837))

(declare-fun m!873839 () Bool)

(assert (=> b!938372 m!873839))

(assert (=> b!938298 d!113555))

(declare-fun d!113557 () Bool)

(declare-fun e!527041 () Bool)

(assert (=> d!113557 e!527041))

(declare-fun res!631457 () Bool)

(assert (=> d!113557 (=> res!631457 e!527041)))

(declare-fun lt!423785 () Bool)

(assert (=> d!113557 (= res!631457 (not lt!423785))))

(declare-fun lt!423787 () Bool)

(assert (=> d!113557 (= lt!423785 lt!423787)))

(declare-fun lt!423788 () Unit!31704)

(declare-fun e!527042 () Unit!31704)

(assert (=> d!113557 (= lt!423788 e!527042)))

(declare-fun c!97729 () Bool)

(assert (=> d!113557 (= c!97729 lt!423787)))

(declare-fun containsKey!452 (List!19293 (_ BitVec 64)) Bool)

(assert (=> d!113557 (= lt!423787 (containsKey!452 (toList!6114 lt!423733) k0!1099))))

(assert (=> d!113557 (= (contains!5126 lt!423733 k0!1099) lt!423785)))

(declare-fun b!938379 () Bool)

(declare-fun lt!423786 () Unit!31704)

(assert (=> b!938379 (= e!527042 lt!423786)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!347 (List!19293 (_ BitVec 64)) Unit!31704)

(assert (=> b!938379 (= lt!423786 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423733) k0!1099))))

(declare-datatypes ((Option!493 0))(
  ( (Some!492 (v!12713 V!31985)) (None!491) )
))
(declare-fun isDefined!357 (Option!493) Bool)

(declare-fun getValueByKey!487 (List!19293 (_ BitVec 64)) Option!493)

(assert (=> b!938379 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423733) k0!1099))))

(declare-fun b!938380 () Bool)

(declare-fun Unit!31712 () Unit!31704)

(assert (=> b!938380 (= e!527042 Unit!31712)))

(declare-fun b!938381 () Bool)

(assert (=> b!938381 (= e!527041 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423733) k0!1099)))))

(assert (= (and d!113557 c!97729) b!938379))

(assert (= (and d!113557 (not c!97729)) b!938380))

(assert (= (and d!113557 (not res!631457)) b!938381))

(declare-fun m!873841 () Bool)

(assert (=> d!113557 m!873841))

(declare-fun m!873843 () Bool)

(assert (=> b!938379 m!873843))

(declare-fun m!873845 () Bool)

(assert (=> b!938379 m!873845))

(assert (=> b!938379 m!873845))

(declare-fun m!873847 () Bool)

(assert (=> b!938379 m!873847))

(assert (=> b!938381 m!873845))

(assert (=> b!938381 m!873845))

(assert (=> b!938381 m!873847))

(assert (=> b!938293 d!113557))

(declare-fun b!938424 () Bool)

(declare-fun e!527075 () Bool)

(assert (=> b!938424 (= e!527075 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!938425 () Bool)

(declare-fun c!97743 () Bool)

(assert (=> b!938425 (= c!97743 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!527076 () ListLongMap!12197)

(declare-fun e!527073 () ListLongMap!12197)

(assert (=> b!938425 (= e!527076 e!527073)))

(declare-fun b!938426 () Bool)

(declare-fun res!631478 () Bool)

(declare-fun e!527071 () Bool)

(assert (=> b!938426 (=> (not res!631478) (not e!527071))))

(declare-fun e!527072 () Bool)

(assert (=> b!938426 (= res!631478 e!527072)))

(declare-fun c!97747 () Bool)

(assert (=> b!938426 (= c!97747 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!938427 () Bool)

(declare-fun e!527074 () Unit!31704)

(declare-fun Unit!31713 () Unit!31704)

(assert (=> b!938427 (= e!527074 Unit!31713)))

(declare-fun bm!40839 () Bool)

(declare-fun call!40842 () ListLongMap!12197)

(declare-fun getCurrentListMapNoExtraKeys!3320 (array!56494 array!56496 (_ BitVec 32) (_ BitVec 32) V!31985 V!31985 (_ BitVec 32) Int) ListLongMap!12197)

(assert (=> bm!40839 (= call!40842 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!938428 () Bool)

(declare-fun call!40843 () ListLongMap!12197)

(assert (=> b!938428 (= e!527073 call!40843)))

(declare-fun b!938429 () Bool)

(declare-fun e!527079 () Bool)

(declare-fun lt!423853 () ListLongMap!12197)

(assert (=> b!938429 (= e!527079 (= (apply!892 lt!423853 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun bm!40840 () Bool)

(declare-fun call!40845 () Bool)

(assert (=> bm!40840 (= call!40845 (contains!5126 lt!423853 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938430 () Bool)

(declare-fun e!527077 () Bool)

(assert (=> b!938430 (= e!527077 (not call!40845))))

(declare-fun bm!40841 () Bool)

(declare-fun call!40848 () ListLongMap!12197)

(assert (=> bm!40841 (= call!40848 call!40842)))

(declare-fun b!938431 () Bool)

(declare-fun e!527069 () ListLongMap!12197)

(assert (=> b!938431 (= e!527069 e!527076)))

(declare-fun c!97744 () Bool)

(assert (=> b!938431 (= c!97744 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!938432 () Bool)

(declare-fun e!527070 () Bool)

(assert (=> b!938432 (= e!527072 e!527070)))

(declare-fun res!631476 () Bool)

(declare-fun call!40846 () Bool)

(assert (=> b!938432 (= res!631476 call!40846)))

(assert (=> b!938432 (=> (not res!631476) (not e!527070))))

(declare-fun b!938433 () Bool)

(assert (=> b!938433 (= e!527070 (= (apply!892 lt!423853 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!938434 () Bool)

(assert (=> b!938434 (= e!527076 call!40843)))

(declare-fun d!113559 () Bool)

(assert (=> d!113559 e!527071))

(declare-fun res!631480 () Bool)

(assert (=> d!113559 (=> (not res!631480) (not e!527071))))

(assert (=> d!113559 (= res!631480 (or (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)) (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))))

(declare-fun lt!423851 () ListLongMap!12197)

(assert (=> d!113559 (= lt!423853 lt!423851)))

(declare-fun lt!423834 () Unit!31704)

(assert (=> d!113559 (= lt!423834 e!527074)))

(declare-fun c!97746 () Bool)

(declare-fun e!527080 () Bool)

(assert (=> d!113559 (= c!97746 e!527080)))

(declare-fun res!631482 () Bool)

(assert (=> d!113559 (=> (not res!631482) (not e!527080))))

(assert (=> d!113559 (= res!631482 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(assert (=> d!113559 (= lt!423851 e!527069)))

(declare-fun c!97742 () Bool)

(assert (=> d!113559 (= c!97742 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113559 (validMask!0 mask!1881)))

(assert (=> d!113559 (= (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!423853)))

(declare-fun b!938435 () Bool)

(assert (=> b!938435 (= e!527071 e!527077)))

(declare-fun c!97745 () Bool)

(assert (=> b!938435 (= c!97745 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!938436 () Bool)

(declare-fun lt!423850 () Unit!31704)

(assert (=> b!938436 (= e!527074 lt!423850)))

(declare-fun lt!423849 () ListLongMap!12197)

(assert (=> b!938436 (= lt!423849 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423842 () (_ BitVec 64))

(assert (=> b!938436 (= lt!423842 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423840 () (_ BitVec 64))

(assert (=> b!938436 (= lt!423840 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!423835 () Unit!31704)

(assert (=> b!938436 (= lt!423835 (addStillContains!565 lt!423849 lt!423842 zeroValue!1173 lt!423840))))

(assert (=> b!938436 (contains!5126 (+!2809 lt!423849 (tuple2!13487 lt!423842 zeroValue!1173)) lt!423840)))

(declare-fun lt!423837 () Unit!31704)

(assert (=> b!938436 (= lt!423837 lt!423835)))

(declare-fun lt!423848 () ListLongMap!12197)

(assert (=> b!938436 (= lt!423848 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423846 () (_ BitVec 64))

(assert (=> b!938436 (= lt!423846 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423854 () (_ BitVec 64))

(assert (=> b!938436 (= lt!423854 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!423847 () Unit!31704)

(assert (=> b!938436 (= lt!423847 (addApplyDifferent!439 lt!423848 lt!423846 minValue!1173 lt!423854))))

(assert (=> b!938436 (= (apply!892 (+!2809 lt!423848 (tuple2!13487 lt!423846 minValue!1173)) lt!423854) (apply!892 lt!423848 lt!423854))))

(declare-fun lt!423839 () Unit!31704)

(assert (=> b!938436 (= lt!423839 lt!423847)))

(declare-fun lt!423844 () ListLongMap!12197)

(assert (=> b!938436 (= lt!423844 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423838 () (_ BitVec 64))

(assert (=> b!938436 (= lt!423838 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423833 () (_ BitVec 64))

(assert (=> b!938436 (= lt!423833 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!423843 () Unit!31704)

(assert (=> b!938436 (= lt!423843 (addApplyDifferent!439 lt!423844 lt!423838 zeroValue!1173 lt!423833))))

(assert (=> b!938436 (= (apply!892 (+!2809 lt!423844 (tuple2!13487 lt!423838 zeroValue!1173)) lt!423833) (apply!892 lt!423844 lt!423833))))

(declare-fun lt!423852 () Unit!31704)

(assert (=> b!938436 (= lt!423852 lt!423843)))

(declare-fun lt!423845 () ListLongMap!12197)

(assert (=> b!938436 (= lt!423845 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!423836 () (_ BitVec 64))

(assert (=> b!938436 (= lt!423836 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423841 () (_ BitVec 64))

(assert (=> b!938436 (= lt!423841 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!938436 (= lt!423850 (addApplyDifferent!439 lt!423845 lt!423836 minValue!1173 lt!423841))))

(assert (=> b!938436 (= (apply!892 (+!2809 lt!423845 (tuple2!13487 lt!423836 minValue!1173)) lt!423841) (apply!892 lt!423845 lt!423841))))

(declare-fun b!938437 () Bool)

(declare-fun call!40844 () ListLongMap!12197)

(assert (=> b!938437 (= e!527069 (+!2809 call!40844 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun bm!40842 () Bool)

(assert (=> bm!40842 (= call!40843 call!40844)))

(declare-fun bm!40843 () Bool)

(declare-fun call!40847 () ListLongMap!12197)

(assert (=> bm!40843 (= call!40847 call!40848)))

(declare-fun bm!40844 () Bool)

(assert (=> bm!40844 (= call!40846 (contains!5126 lt!423853 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938438 () Bool)

(assert (=> b!938438 (= e!527080 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!938439 () Bool)

(declare-fun e!527081 () Bool)

(declare-fun e!527078 () Bool)

(assert (=> b!938439 (= e!527081 e!527078)))

(declare-fun res!631479 () Bool)

(assert (=> b!938439 (=> (not res!631479) (not e!527078))))

(assert (=> b!938439 (= res!631479 (contains!5126 lt!423853 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!938439 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun bm!40845 () Bool)

(assert (=> bm!40845 (= call!40844 (+!2809 (ite c!97742 call!40842 (ite c!97744 call!40848 call!40847)) (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!938440 () Bool)

(assert (=> b!938440 (= e!527073 call!40847)))

(declare-fun b!938441 () Bool)

(assert (=> b!938441 (= e!527077 e!527079)))

(declare-fun res!631481 () Bool)

(assert (=> b!938441 (= res!631481 call!40845)))

(assert (=> b!938441 (=> (not res!631481) (not e!527079))))

(declare-fun b!938442 () Bool)

(declare-fun res!631477 () Bool)

(assert (=> b!938442 (=> (not res!631477) (not e!527071))))

(assert (=> b!938442 (= res!631477 e!527081)))

(declare-fun res!631483 () Bool)

(assert (=> b!938442 (=> res!631483 e!527081)))

(assert (=> b!938442 (= res!631483 (not e!527075))))

(declare-fun res!631484 () Bool)

(assert (=> b!938442 (=> (not res!631484) (not e!527075))))

(assert (=> b!938442 (= res!631484 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun b!938443 () Bool)

(assert (=> b!938443 (= e!527078 (= (apply!892 lt!423853 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938443 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27643 _values!1231)))))

(assert (=> b!938443 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun b!938444 () Bool)

(assert (=> b!938444 (= e!527072 (not call!40846))))

(assert (= (and d!113559 c!97742) b!938437))

(assert (= (and d!113559 (not c!97742)) b!938431))

(assert (= (and b!938431 c!97744) b!938434))

(assert (= (and b!938431 (not c!97744)) b!938425))

(assert (= (and b!938425 c!97743) b!938428))

(assert (= (and b!938425 (not c!97743)) b!938440))

(assert (= (or b!938428 b!938440) bm!40843))

(assert (= (or b!938434 bm!40843) bm!40841))

(assert (= (or b!938434 b!938428) bm!40842))

(assert (= (or b!938437 bm!40841) bm!40839))

(assert (= (or b!938437 bm!40842) bm!40845))

(assert (= (and d!113559 res!631482) b!938438))

(assert (= (and d!113559 c!97746) b!938436))

(assert (= (and d!113559 (not c!97746)) b!938427))

(assert (= (and d!113559 res!631480) b!938442))

(assert (= (and b!938442 res!631484) b!938424))

(assert (= (and b!938442 (not res!631483)) b!938439))

(assert (= (and b!938439 res!631479) b!938443))

(assert (= (and b!938442 res!631477) b!938426))

(assert (= (and b!938426 c!97747) b!938432))

(assert (= (and b!938426 (not c!97747)) b!938444))

(assert (= (and b!938432 res!631476) b!938433))

(assert (= (or b!938432 b!938444) bm!40844))

(assert (= (and b!938426 res!631478) b!938435))

(assert (= (and b!938435 c!97745) b!938441))

(assert (= (and b!938435 (not c!97745)) b!938430))

(assert (= (and b!938441 res!631481) b!938429))

(assert (= (or b!938441 b!938430) bm!40840))

(declare-fun b_lambda!14249 () Bool)

(assert (=> (not b_lambda!14249) (not b!938443)))

(assert (=> b!938443 t!27601))

(declare-fun b_and!29155 () Bool)

(assert (= b_and!29149 (and (=> t!27601 result!12145) b_and!29155)))

(declare-fun m!873849 () Bool)

(assert (=> b!938433 m!873849))

(assert (=> d!113559 m!873765))

(declare-fun m!873851 () Bool)

(assert (=> b!938436 m!873851))

(declare-fun m!873853 () Bool)

(assert (=> b!938436 m!873853))

(declare-fun m!873855 () Bool)

(assert (=> b!938436 m!873855))

(declare-fun m!873857 () Bool)

(assert (=> b!938436 m!873857))

(declare-fun m!873859 () Bool)

(assert (=> b!938436 m!873859))

(assert (=> b!938436 m!873857))

(declare-fun m!873861 () Bool)

(assert (=> b!938436 m!873861))

(assert (=> b!938436 m!873851))

(declare-fun m!873863 () Bool)

(assert (=> b!938436 m!873863))

(declare-fun m!873865 () Bool)

(assert (=> b!938436 m!873865))

(assert (=> b!938436 m!873771))

(declare-fun m!873867 () Bool)

(assert (=> b!938436 m!873867))

(declare-fun m!873869 () Bool)

(assert (=> b!938436 m!873869))

(declare-fun m!873871 () Bool)

(assert (=> b!938436 m!873871))

(declare-fun m!873873 () Bool)

(assert (=> b!938436 m!873873))

(declare-fun m!873875 () Bool)

(assert (=> b!938436 m!873875))

(declare-fun m!873877 () Bool)

(assert (=> b!938436 m!873877))

(assert (=> b!938436 m!873873))

(declare-fun m!873879 () Bool)

(assert (=> b!938436 m!873879))

(assert (=> b!938436 m!873863))

(declare-fun m!873881 () Bool)

(assert (=> b!938436 m!873881))

(declare-fun m!873883 () Bool)

(assert (=> b!938429 m!873883))

(assert (=> bm!40839 m!873855))

(assert (=> b!938443 m!873735))

(assert (=> b!938443 m!873737))

(assert (=> b!938443 m!873743))

(assert (=> b!938443 m!873735))

(assert (=> b!938443 m!873737))

(assert (=> b!938443 m!873771))

(declare-fun m!873885 () Bool)

(assert (=> b!938443 m!873885))

(assert (=> b!938443 m!873771))

(declare-fun m!873887 () Bool)

(assert (=> bm!40845 m!873887))

(declare-fun m!873889 () Bool)

(assert (=> b!938437 m!873889))

(assert (=> b!938439 m!873771))

(assert (=> b!938439 m!873771))

(declare-fun m!873891 () Bool)

(assert (=> b!938439 m!873891))

(assert (=> b!938424 m!873771))

(assert (=> b!938424 m!873771))

(declare-fun m!873893 () Bool)

(assert (=> b!938424 m!873893))

(declare-fun m!873895 () Bool)

(assert (=> bm!40840 m!873895))

(declare-fun m!873897 () Bool)

(assert (=> bm!40844 m!873897))

(assert (=> b!938438 m!873771))

(assert (=> b!938438 m!873771))

(assert (=> b!938438 m!873893))

(assert (=> b!938293 d!113559))

(declare-fun d!113561 () Bool)

(declare-fun e!527082 () Bool)

(assert (=> d!113561 e!527082))

(declare-fun res!631485 () Bool)

(assert (=> d!113561 (=> res!631485 e!527082)))

(declare-fun lt!423855 () Bool)

(assert (=> d!113561 (= res!631485 (not lt!423855))))

(declare-fun lt!423857 () Bool)

(assert (=> d!113561 (= lt!423855 lt!423857)))

(declare-fun lt!423858 () Unit!31704)

(declare-fun e!527083 () Unit!31704)

(assert (=> d!113561 (= lt!423858 e!527083)))

(declare-fun c!97748 () Bool)

(assert (=> d!113561 (= c!97748 lt!423857)))

(assert (=> d!113561 (= lt!423857 (containsKey!452 (toList!6114 lt!423722) k0!1099))))

(assert (=> d!113561 (= (contains!5126 lt!423722 k0!1099) lt!423855)))

(declare-fun b!938445 () Bool)

(declare-fun lt!423856 () Unit!31704)

(assert (=> b!938445 (= e!527083 lt!423856)))

(assert (=> b!938445 (= lt!423856 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423722) k0!1099))))

(assert (=> b!938445 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423722) k0!1099))))

(declare-fun b!938446 () Bool)

(declare-fun Unit!31714 () Unit!31704)

(assert (=> b!938446 (= e!527083 Unit!31714)))

(declare-fun b!938447 () Bool)

(assert (=> b!938447 (= e!527082 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423722) k0!1099)))))

(assert (= (and d!113561 c!97748) b!938445))

(assert (= (and d!113561 (not c!97748)) b!938446))

(assert (= (and d!113561 (not res!631485)) b!938447))

(declare-fun m!873899 () Bool)

(assert (=> d!113561 m!873899))

(declare-fun m!873901 () Bool)

(assert (=> b!938445 m!873901))

(declare-fun m!873903 () Bool)

(assert (=> b!938445 m!873903))

(assert (=> b!938445 m!873903))

(declare-fun m!873905 () Bool)

(assert (=> b!938445 m!873905))

(assert (=> b!938447 m!873903))

(assert (=> b!938447 m!873903))

(assert (=> b!938447 m!873905))

(assert (=> b!938299 d!113561))

(declare-fun b!938448 () Bool)

(declare-fun e!527090 () Bool)

(assert (=> b!938448 (= e!527090 (validKeyInArray!0 (select (arr!27182 _keys!1487) from!1844)))))

(declare-fun b!938449 () Bool)

(declare-fun c!97750 () Bool)

(assert (=> b!938449 (= c!97750 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!527091 () ListLongMap!12197)

(declare-fun e!527088 () ListLongMap!12197)

(assert (=> b!938449 (= e!527091 e!527088)))

(declare-fun b!938450 () Bool)

(declare-fun res!631488 () Bool)

(declare-fun e!527086 () Bool)

(assert (=> b!938450 (=> (not res!631488) (not e!527086))))

(declare-fun e!527087 () Bool)

(assert (=> b!938450 (= res!631488 e!527087)))

(declare-fun c!97754 () Bool)

(assert (=> b!938450 (= c!97754 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!938451 () Bool)

(declare-fun e!527089 () Unit!31704)

(declare-fun Unit!31715 () Unit!31704)

(assert (=> b!938451 (= e!527089 Unit!31715)))

(declare-fun call!40849 () ListLongMap!12197)

(declare-fun bm!40846 () Bool)

(assert (=> bm!40846 (= call!40849 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!938452 () Bool)

(declare-fun call!40850 () ListLongMap!12197)

(assert (=> b!938452 (= e!527088 call!40850)))

(declare-fun b!938453 () Bool)

(declare-fun e!527094 () Bool)

(declare-fun lt!423879 () ListLongMap!12197)

(assert (=> b!938453 (= e!527094 (= (apply!892 lt!423879 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun bm!40847 () Bool)

(declare-fun call!40852 () Bool)

(assert (=> bm!40847 (= call!40852 (contains!5126 lt!423879 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938454 () Bool)

(declare-fun e!527092 () Bool)

(assert (=> b!938454 (= e!527092 (not call!40852))))

(declare-fun bm!40848 () Bool)

(declare-fun call!40855 () ListLongMap!12197)

(assert (=> bm!40848 (= call!40855 call!40849)))

(declare-fun b!938455 () Bool)

(declare-fun e!527084 () ListLongMap!12197)

(assert (=> b!938455 (= e!527084 e!527091)))

(declare-fun c!97751 () Bool)

(assert (=> b!938455 (= c!97751 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!938456 () Bool)

(declare-fun e!527085 () Bool)

(assert (=> b!938456 (= e!527087 e!527085)))

(declare-fun res!631486 () Bool)

(declare-fun call!40853 () Bool)

(assert (=> b!938456 (= res!631486 call!40853)))

(assert (=> b!938456 (=> (not res!631486) (not e!527085))))

(declare-fun b!938457 () Bool)

(assert (=> b!938457 (= e!527085 (= (apply!892 lt!423879 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!938458 () Bool)

(assert (=> b!938458 (= e!527091 call!40850)))

(declare-fun d!113563 () Bool)

(assert (=> d!113563 e!527086))

(declare-fun res!631490 () Bool)

(assert (=> d!113563 (=> (not res!631490) (not e!527086))))

(assert (=> d!113563 (= res!631490 (or (bvsge from!1844 (size!27642 _keys!1487)) (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27642 _keys!1487)))))))

(declare-fun lt!423877 () ListLongMap!12197)

(assert (=> d!113563 (= lt!423879 lt!423877)))

(declare-fun lt!423860 () Unit!31704)

(assert (=> d!113563 (= lt!423860 e!527089)))

(declare-fun c!97753 () Bool)

(declare-fun e!527095 () Bool)

(assert (=> d!113563 (= c!97753 e!527095)))

(declare-fun res!631492 () Bool)

(assert (=> d!113563 (=> (not res!631492) (not e!527095))))

(assert (=> d!113563 (= res!631492 (bvslt from!1844 (size!27642 _keys!1487)))))

(assert (=> d!113563 (= lt!423877 e!527084)))

(declare-fun c!97749 () Bool)

(assert (=> d!113563 (= c!97749 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113563 (validMask!0 mask!1881)))

(assert (=> d!113563 (= (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) lt!423879)))

(declare-fun b!938459 () Bool)

(assert (=> b!938459 (= e!527086 e!527092)))

(declare-fun c!97752 () Bool)

(assert (=> b!938459 (= c!97752 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!938460 () Bool)

(declare-fun lt!423876 () Unit!31704)

(assert (=> b!938460 (= e!527089 lt!423876)))

(declare-fun lt!423875 () ListLongMap!12197)

(assert (=> b!938460 (= lt!423875 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!423868 () (_ BitVec 64))

(assert (=> b!938460 (= lt!423868 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423866 () (_ BitVec 64))

(assert (=> b!938460 (= lt!423866 (select (arr!27182 _keys!1487) from!1844))))

(declare-fun lt!423861 () Unit!31704)

(assert (=> b!938460 (= lt!423861 (addStillContains!565 lt!423875 lt!423868 zeroValue!1173 lt!423866))))

(assert (=> b!938460 (contains!5126 (+!2809 lt!423875 (tuple2!13487 lt!423868 zeroValue!1173)) lt!423866)))

(declare-fun lt!423863 () Unit!31704)

(assert (=> b!938460 (= lt!423863 lt!423861)))

(declare-fun lt!423874 () ListLongMap!12197)

(assert (=> b!938460 (= lt!423874 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!423872 () (_ BitVec 64))

(assert (=> b!938460 (= lt!423872 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423880 () (_ BitVec 64))

(assert (=> b!938460 (= lt!423880 (select (arr!27182 _keys!1487) from!1844))))

(declare-fun lt!423873 () Unit!31704)

(assert (=> b!938460 (= lt!423873 (addApplyDifferent!439 lt!423874 lt!423872 minValue!1173 lt!423880))))

(assert (=> b!938460 (= (apply!892 (+!2809 lt!423874 (tuple2!13487 lt!423872 minValue!1173)) lt!423880) (apply!892 lt!423874 lt!423880))))

(declare-fun lt!423865 () Unit!31704)

(assert (=> b!938460 (= lt!423865 lt!423873)))

(declare-fun lt!423870 () ListLongMap!12197)

(assert (=> b!938460 (= lt!423870 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!423864 () (_ BitVec 64))

(assert (=> b!938460 (= lt!423864 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423859 () (_ BitVec 64))

(assert (=> b!938460 (= lt!423859 (select (arr!27182 _keys!1487) from!1844))))

(declare-fun lt!423869 () Unit!31704)

(assert (=> b!938460 (= lt!423869 (addApplyDifferent!439 lt!423870 lt!423864 zeroValue!1173 lt!423859))))

(assert (=> b!938460 (= (apply!892 (+!2809 lt!423870 (tuple2!13487 lt!423864 zeroValue!1173)) lt!423859) (apply!892 lt!423870 lt!423859))))

(declare-fun lt!423878 () Unit!31704)

(assert (=> b!938460 (= lt!423878 lt!423869)))

(declare-fun lt!423871 () ListLongMap!12197)

(assert (=> b!938460 (= lt!423871 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun lt!423862 () (_ BitVec 64))

(assert (=> b!938460 (= lt!423862 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423867 () (_ BitVec 64))

(assert (=> b!938460 (= lt!423867 (select (arr!27182 _keys!1487) from!1844))))

(assert (=> b!938460 (= lt!423876 (addApplyDifferent!439 lt!423871 lt!423862 minValue!1173 lt!423867))))

(assert (=> b!938460 (= (apply!892 (+!2809 lt!423871 (tuple2!13487 lt!423862 minValue!1173)) lt!423867) (apply!892 lt!423871 lt!423867))))

(declare-fun b!938461 () Bool)

(declare-fun call!40851 () ListLongMap!12197)

(assert (=> b!938461 (= e!527084 (+!2809 call!40851 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun bm!40849 () Bool)

(assert (=> bm!40849 (= call!40850 call!40851)))

(declare-fun bm!40850 () Bool)

(declare-fun call!40854 () ListLongMap!12197)

(assert (=> bm!40850 (= call!40854 call!40855)))

(declare-fun bm!40851 () Bool)

(assert (=> bm!40851 (= call!40853 (contains!5126 lt!423879 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938462 () Bool)

(assert (=> b!938462 (= e!527095 (validKeyInArray!0 (select (arr!27182 _keys!1487) from!1844)))))

(declare-fun b!938463 () Bool)

(declare-fun e!527096 () Bool)

(declare-fun e!527093 () Bool)

(assert (=> b!938463 (= e!527096 e!527093)))

(declare-fun res!631489 () Bool)

(assert (=> b!938463 (=> (not res!631489) (not e!527093))))

(assert (=> b!938463 (= res!631489 (contains!5126 lt!423879 (select (arr!27182 _keys!1487) from!1844)))))

(assert (=> b!938463 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27642 _keys!1487)))))

(declare-fun bm!40852 () Bool)

(assert (=> bm!40852 (= call!40851 (+!2809 (ite c!97749 call!40849 (ite c!97751 call!40855 call!40854)) (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!938464 () Bool)

(assert (=> b!938464 (= e!527088 call!40854)))

(declare-fun b!938465 () Bool)

(assert (=> b!938465 (= e!527092 e!527094)))

(declare-fun res!631491 () Bool)

(assert (=> b!938465 (= res!631491 call!40852)))

(assert (=> b!938465 (=> (not res!631491) (not e!527094))))

(declare-fun b!938466 () Bool)

(declare-fun res!631487 () Bool)

(assert (=> b!938466 (=> (not res!631487) (not e!527086))))

(assert (=> b!938466 (= res!631487 e!527096)))

(declare-fun res!631493 () Bool)

(assert (=> b!938466 (=> res!631493 e!527096)))

(assert (=> b!938466 (= res!631493 (not e!527090))))

(declare-fun res!631494 () Bool)

(assert (=> b!938466 (=> (not res!631494) (not e!527090))))

(assert (=> b!938466 (= res!631494 (bvslt from!1844 (size!27642 _keys!1487)))))

(declare-fun b!938467 () Bool)

(assert (=> b!938467 (= e!527093 (= (apply!892 lt!423879 (select (arr!27182 _keys!1487) from!1844)) (get!14358 (select (arr!27183 _values!1231) from!1844) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938467 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27643 _values!1231)))))

(assert (=> b!938467 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27642 _keys!1487)))))

(declare-fun b!938468 () Bool)

(assert (=> b!938468 (= e!527087 (not call!40853))))

(assert (= (and d!113563 c!97749) b!938461))

(assert (= (and d!113563 (not c!97749)) b!938455))

(assert (= (and b!938455 c!97751) b!938458))

(assert (= (and b!938455 (not c!97751)) b!938449))

(assert (= (and b!938449 c!97750) b!938452))

(assert (= (and b!938449 (not c!97750)) b!938464))

(assert (= (or b!938452 b!938464) bm!40850))

(assert (= (or b!938458 bm!40850) bm!40848))

(assert (= (or b!938458 b!938452) bm!40849))

(assert (= (or b!938461 bm!40848) bm!40846))

(assert (= (or b!938461 bm!40849) bm!40852))

(assert (= (and d!113563 res!631492) b!938462))

(assert (= (and d!113563 c!97753) b!938460))

(assert (= (and d!113563 (not c!97753)) b!938451))

(assert (= (and d!113563 res!631490) b!938466))

(assert (= (and b!938466 res!631494) b!938448))

(assert (= (and b!938466 (not res!631493)) b!938463))

(assert (= (and b!938463 res!631489) b!938467))

(assert (= (and b!938466 res!631487) b!938450))

(assert (= (and b!938450 c!97754) b!938456))

(assert (= (and b!938450 (not c!97754)) b!938468))

(assert (= (and b!938456 res!631486) b!938457))

(assert (= (or b!938456 b!938468) bm!40851))

(assert (= (and b!938450 res!631488) b!938459))

(assert (= (and b!938459 c!97752) b!938465))

(assert (= (and b!938459 (not c!97752)) b!938454))

(assert (= (and b!938465 res!631491) b!938453))

(assert (= (or b!938465 b!938454) bm!40847))

(declare-fun b_lambda!14251 () Bool)

(assert (=> (not b_lambda!14251) (not b!938467)))

(assert (=> b!938467 t!27601))

(declare-fun b_and!29157 () Bool)

(assert (= b_and!29155 (and (=> t!27601 result!12145) b_and!29157)))

(declare-fun m!873907 () Bool)

(assert (=> b!938457 m!873907))

(assert (=> d!113563 m!873765))

(declare-fun m!873909 () Bool)

(assert (=> b!938460 m!873909))

(declare-fun m!873911 () Bool)

(assert (=> b!938460 m!873911))

(declare-fun m!873913 () Bool)

(assert (=> b!938460 m!873913))

(declare-fun m!873915 () Bool)

(assert (=> b!938460 m!873915))

(declare-fun m!873917 () Bool)

(assert (=> b!938460 m!873917))

(assert (=> b!938460 m!873915))

(declare-fun m!873919 () Bool)

(assert (=> b!938460 m!873919))

(assert (=> b!938460 m!873909))

(declare-fun m!873921 () Bool)

(assert (=> b!938460 m!873921))

(declare-fun m!873923 () Bool)

(assert (=> b!938460 m!873923))

(assert (=> b!938460 m!873837))

(declare-fun m!873925 () Bool)

(assert (=> b!938460 m!873925))

(declare-fun m!873927 () Bool)

(assert (=> b!938460 m!873927))

(declare-fun m!873929 () Bool)

(assert (=> b!938460 m!873929))

(declare-fun m!873931 () Bool)

(assert (=> b!938460 m!873931))

(declare-fun m!873933 () Bool)

(assert (=> b!938460 m!873933))

(declare-fun m!873935 () Bool)

(assert (=> b!938460 m!873935))

(assert (=> b!938460 m!873931))

(declare-fun m!873937 () Bool)

(assert (=> b!938460 m!873937))

(assert (=> b!938460 m!873921))

(declare-fun m!873939 () Bool)

(assert (=> b!938460 m!873939))

(declare-fun m!873941 () Bool)

(assert (=> b!938453 m!873941))

(assert (=> bm!40846 m!873913))

(declare-fun m!873943 () Bool)

(assert (=> b!938467 m!873943))

(assert (=> b!938467 m!873737))

(declare-fun m!873945 () Bool)

(assert (=> b!938467 m!873945))

(assert (=> b!938467 m!873943))

(assert (=> b!938467 m!873737))

(assert (=> b!938467 m!873837))

(declare-fun m!873947 () Bool)

(assert (=> b!938467 m!873947))

(assert (=> b!938467 m!873837))

(declare-fun m!873949 () Bool)

(assert (=> bm!40852 m!873949))

(declare-fun m!873951 () Bool)

(assert (=> b!938461 m!873951))

(assert (=> b!938463 m!873837))

(assert (=> b!938463 m!873837))

(declare-fun m!873953 () Bool)

(assert (=> b!938463 m!873953))

(assert (=> b!938448 m!873837))

(assert (=> b!938448 m!873837))

(declare-fun m!873955 () Bool)

(assert (=> b!938448 m!873955))

(declare-fun m!873957 () Bool)

(assert (=> bm!40847 m!873957))

(declare-fun m!873959 () Bool)

(assert (=> bm!40851 m!873959))

(assert (=> b!938462 m!873837))

(assert (=> b!938462 m!873837))

(assert (=> b!938462 m!873955))

(assert (=> b!938299 d!113563))

(declare-fun d!113565 () Bool)

(assert (=> d!113565 (= (validKeyInArray!0 k0!1099) (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938297 d!113565))

(declare-fun b!938477 () Bool)

(declare-fun e!527103 () Bool)

(declare-fun call!40858 () Bool)

(assert (=> b!938477 (= e!527103 call!40858)))

(declare-fun d!113567 () Bool)

(declare-fun res!631500 () Bool)

(declare-fun e!527105 () Bool)

(assert (=> d!113567 (=> res!631500 e!527105)))

(assert (=> d!113567 (= res!631500 (bvsge #b00000000000000000000000000000000 (size!27642 _keys!1487)))))

(assert (=> d!113567 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881) e!527105)))

(declare-fun bm!40855 () Bool)

(assert (=> bm!40855 (= call!40858 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(declare-fun b!938478 () Bool)

(declare-fun e!527104 () Bool)

(assert (=> b!938478 (= e!527104 call!40858)))

(declare-fun b!938479 () Bool)

(assert (=> b!938479 (= e!527104 e!527103)))

(declare-fun lt!423889 () (_ BitVec 64))

(assert (=> b!938479 (= lt!423889 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000))))

(declare-fun lt!423887 () Unit!31704)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!56494 (_ BitVec 64) (_ BitVec 32)) Unit!31704)

(assert (=> b!938479 (= lt!423887 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!423889 #b00000000000000000000000000000000))))

(assert (=> b!938479 (arrayContainsKey!0 _keys!1487 lt!423889 #b00000000000000000000000000000000)))

(declare-fun lt!423888 () Unit!31704)

(assert (=> b!938479 (= lt!423888 lt!423887)))

(declare-fun res!631499 () Bool)

(declare-datatypes ((SeekEntryResult!8969 0))(
  ( (MissingZero!8969 (index!38246 (_ BitVec 32))) (Found!8969 (index!38247 (_ BitVec 32))) (Intermediate!8969 (undefined!9781 Bool) (index!38248 (_ BitVec 32)) (x!80442 (_ BitVec 32))) (Undefined!8969) (MissingVacant!8969 (index!38249 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!56494 (_ BitVec 32)) SeekEntryResult!8969)

(assert (=> b!938479 (= res!631499 (= (seekEntryOrOpen!0 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) (Found!8969 #b00000000000000000000000000000000)))))

(assert (=> b!938479 (=> (not res!631499) (not e!527103))))

(declare-fun b!938480 () Bool)

(assert (=> b!938480 (= e!527105 e!527104)))

(declare-fun c!97757 () Bool)

(assert (=> b!938480 (= c!97757 (validKeyInArray!0 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)))))

(assert (= (and d!113567 (not res!631500)) b!938480))

(assert (= (and b!938480 c!97757) b!938479))

(assert (= (and b!938480 (not c!97757)) b!938478))

(assert (= (and b!938479 res!631499) b!938477))

(assert (= (or b!938477 b!938478) bm!40855))

(declare-fun m!873961 () Bool)

(assert (=> bm!40855 m!873961))

(declare-fun m!873963 () Bool)

(assert (=> b!938479 m!873963))

(declare-fun m!873965 () Bool)

(assert (=> b!938479 m!873965))

(declare-fun m!873967 () Bool)

(assert (=> b!938479 m!873967))

(assert (=> b!938479 m!873963))

(declare-fun m!873969 () Bool)

(assert (=> b!938479 m!873969))

(assert (=> b!938480 m!873963))

(assert (=> b!938480 m!873963))

(declare-fun m!873971 () Bool)

(assert (=> b!938480 m!873971))

(assert (=> b!938291 d!113567))

(declare-fun d!113569 () Bool)

(declare-fun get!14359 (Option!493) V!31985)

(assert (=> d!113569 (= (apply!892 lt!423731 k0!1099) (get!14359 (getValueByKey!487 (toList!6114 lt!423731) k0!1099)))))

(declare-fun bs!26341 () Bool)

(assert (= bs!26341 d!113569))

(declare-fun m!873973 () Bool)

(assert (=> bs!26341 m!873973))

(assert (=> bs!26341 m!873973))

(declare-fun m!873975 () Bool)

(assert (=> bs!26341 m!873975))

(assert (=> b!938301 d!113569))

(declare-fun b!938481 () Bool)

(declare-fun e!527112 () Bool)

(assert (=> b!938481 (= e!527112 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!938482 () Bool)

(declare-fun c!97759 () Bool)

(assert (=> b!938482 (= c!97759 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!527113 () ListLongMap!12197)

(declare-fun e!527110 () ListLongMap!12197)

(assert (=> b!938482 (= e!527113 e!527110)))

(declare-fun b!938483 () Bool)

(declare-fun res!631503 () Bool)

(declare-fun e!527108 () Bool)

(assert (=> b!938483 (=> (not res!631503) (not e!527108))))

(declare-fun e!527109 () Bool)

(assert (=> b!938483 (= res!631503 e!527109)))

(declare-fun c!97763 () Bool)

(assert (=> b!938483 (= c!97763 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!938484 () Bool)

(declare-fun e!527111 () Unit!31704)

(declare-fun Unit!31716 () Unit!31704)

(assert (=> b!938484 (= e!527111 Unit!31716)))

(declare-fun bm!40856 () Bool)

(declare-fun call!40859 () ListLongMap!12197)

(assert (=> bm!40856 (= call!40859 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun b!938485 () Bool)

(declare-fun call!40860 () ListLongMap!12197)

(assert (=> b!938485 (= e!527110 call!40860)))

(declare-fun b!938486 () Bool)

(declare-fun e!527116 () Bool)

(declare-fun lt!423910 () ListLongMap!12197)

(assert (=> b!938486 (= e!527116 (= (apply!892 lt!423910 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun bm!40857 () Bool)

(declare-fun call!40862 () Bool)

(assert (=> bm!40857 (= call!40862 (contains!5126 lt!423910 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938487 () Bool)

(declare-fun e!527114 () Bool)

(assert (=> b!938487 (= e!527114 (not call!40862))))

(declare-fun bm!40858 () Bool)

(declare-fun call!40865 () ListLongMap!12197)

(assert (=> bm!40858 (= call!40865 call!40859)))

(declare-fun b!938488 () Bool)

(declare-fun e!527106 () ListLongMap!12197)

(assert (=> b!938488 (= e!527106 e!527113)))

(declare-fun c!97760 () Bool)

(assert (=> b!938488 (= c!97760 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!938489 () Bool)

(declare-fun e!527107 () Bool)

(assert (=> b!938489 (= e!527109 e!527107)))

(declare-fun res!631501 () Bool)

(declare-fun call!40863 () Bool)

(assert (=> b!938489 (= res!631501 call!40863)))

(assert (=> b!938489 (=> (not res!631501) (not e!527107))))

(declare-fun b!938490 () Bool)

(assert (=> b!938490 (= e!527107 (= (apply!892 lt!423910 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!938491 () Bool)

(assert (=> b!938491 (= e!527113 call!40860)))

(declare-fun d!113571 () Bool)

(assert (=> d!113571 e!527108))

(declare-fun res!631505 () Bool)

(assert (=> d!113571 (=> (not res!631505) (not e!527108))))

(assert (=> d!113571 (= res!631505 (or (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)) (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)))))))

(declare-fun lt!423908 () ListLongMap!12197)

(assert (=> d!113571 (= lt!423910 lt!423908)))

(declare-fun lt!423891 () Unit!31704)

(assert (=> d!113571 (= lt!423891 e!527111)))

(declare-fun c!97762 () Bool)

(declare-fun e!527117 () Bool)

(assert (=> d!113571 (= c!97762 e!527117)))

(declare-fun res!631507 () Bool)

(assert (=> d!113571 (=> (not res!631507) (not e!527117))))

(assert (=> d!113571 (= res!631507 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)))))

(assert (=> d!113571 (= lt!423908 e!527106)))

(declare-fun c!97758 () Bool)

(assert (=> d!113571 (= c!97758 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113571 (validMask!0 mask!1881)))

(assert (=> d!113571 (= (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!423910)))

(declare-fun b!938492 () Bool)

(assert (=> b!938492 (= e!527108 e!527114)))

(declare-fun c!97761 () Bool)

(assert (=> b!938492 (= c!97761 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!938493 () Bool)

(declare-fun lt!423907 () Unit!31704)

(assert (=> b!938493 (= e!527111 lt!423907)))

(declare-fun lt!423906 () ListLongMap!12197)

(assert (=> b!938493 (= lt!423906 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!423899 () (_ BitVec 64))

(assert (=> b!938493 (= lt!423899 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423897 () (_ BitVec 64))

(assert (=> b!938493 (= lt!423897 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!423892 () Unit!31704)

(assert (=> b!938493 (= lt!423892 (addStillContains!565 lt!423906 lt!423899 zeroValue!1173 lt!423897))))

(assert (=> b!938493 (contains!5126 (+!2809 lt!423906 (tuple2!13487 lt!423899 zeroValue!1173)) lt!423897)))

(declare-fun lt!423894 () Unit!31704)

(assert (=> b!938493 (= lt!423894 lt!423892)))

(declare-fun lt!423905 () ListLongMap!12197)

(assert (=> b!938493 (= lt!423905 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!423903 () (_ BitVec 64))

(assert (=> b!938493 (= lt!423903 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423911 () (_ BitVec 64))

(assert (=> b!938493 (= lt!423911 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!423904 () Unit!31704)

(assert (=> b!938493 (= lt!423904 (addApplyDifferent!439 lt!423905 lt!423903 minValue!1173 lt!423911))))

(assert (=> b!938493 (= (apply!892 (+!2809 lt!423905 (tuple2!13487 lt!423903 minValue!1173)) lt!423911) (apply!892 lt!423905 lt!423911))))

(declare-fun lt!423896 () Unit!31704)

(assert (=> b!938493 (= lt!423896 lt!423904)))

(declare-fun lt!423901 () ListLongMap!12197)

(assert (=> b!938493 (= lt!423901 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!423895 () (_ BitVec 64))

(assert (=> b!938493 (= lt!423895 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423890 () (_ BitVec 64))

(assert (=> b!938493 (= lt!423890 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun lt!423900 () Unit!31704)

(assert (=> b!938493 (= lt!423900 (addApplyDifferent!439 lt!423901 lt!423895 zeroValue!1173 lt!423890))))

(assert (=> b!938493 (= (apply!892 (+!2809 lt!423901 (tuple2!13487 lt!423895 zeroValue!1173)) lt!423890) (apply!892 lt!423901 lt!423890))))

(declare-fun lt!423909 () Unit!31704)

(assert (=> b!938493 (= lt!423909 lt!423900)))

(declare-fun lt!423902 () ListLongMap!12197)

(assert (=> b!938493 (= lt!423902 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))))

(declare-fun lt!423893 () (_ BitVec 64))

(assert (=> b!938493 (= lt!423893 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!423898 () (_ BitVec 64))

(assert (=> b!938493 (= lt!423898 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!938493 (= lt!423907 (addApplyDifferent!439 lt!423902 lt!423893 minValue!1173 lt!423898))))

(assert (=> b!938493 (= (apply!892 (+!2809 lt!423902 (tuple2!13487 lt!423893 minValue!1173)) lt!423898) (apply!892 lt!423902 lt!423898))))

(declare-fun b!938494 () Bool)

(declare-fun call!40861 () ListLongMap!12197)

(assert (=> b!938494 (= e!527106 (+!2809 call!40861 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun bm!40859 () Bool)

(assert (=> bm!40859 (= call!40860 call!40861)))

(declare-fun bm!40860 () Bool)

(declare-fun call!40864 () ListLongMap!12197)

(assert (=> bm!40860 (= call!40864 call!40865)))

(declare-fun bm!40861 () Bool)

(assert (=> bm!40861 (= call!40863 (contains!5126 lt!423910 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938495 () Bool)

(assert (=> b!938495 (= e!527117 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!938496 () Bool)

(declare-fun e!527118 () Bool)

(declare-fun e!527115 () Bool)

(assert (=> b!938496 (= e!527118 e!527115)))

(declare-fun res!631504 () Bool)

(assert (=> b!938496 (=> (not res!631504) (not e!527115))))

(assert (=> b!938496 (= res!631504 (contains!5126 lt!423910 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!938496 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)))))

(declare-fun bm!40862 () Bool)

(assert (=> bm!40862 (= call!40861 (+!2809 (ite c!97758 call!40859 (ite c!97760 call!40865 call!40864)) (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!938497 () Bool)

(assert (=> b!938497 (= e!527110 call!40864)))

(declare-fun b!938498 () Bool)

(assert (=> b!938498 (= e!527114 e!527116)))

(declare-fun res!631506 () Bool)

(assert (=> b!938498 (= res!631506 call!40862)))

(assert (=> b!938498 (=> (not res!631506) (not e!527116))))

(declare-fun b!938499 () Bool)

(declare-fun res!631502 () Bool)

(assert (=> b!938499 (=> (not res!631502) (not e!527108))))

(assert (=> b!938499 (= res!631502 e!527118)))

(declare-fun res!631508 () Bool)

(assert (=> b!938499 (=> res!631508 e!527118)))

(assert (=> b!938499 (= res!631508 (not e!527112))))

(declare-fun res!631509 () Bool)

(assert (=> b!938499 (=> (not res!631509) (not e!527112))))

(assert (=> b!938499 (= res!631509 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)))))

(declare-fun b!938500 () Bool)

(assert (=> b!938500 (= e!527115 (= (apply!892 lt!423910 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (get!14358 (select (arr!27183 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938500 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27643 _values!1231)))))

(assert (=> b!938500 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)))))

(declare-fun b!938501 () Bool)

(assert (=> b!938501 (= e!527109 (not call!40863))))

(assert (= (and d!113571 c!97758) b!938494))

(assert (= (and d!113571 (not c!97758)) b!938488))

(assert (= (and b!938488 c!97760) b!938491))

(assert (= (and b!938488 (not c!97760)) b!938482))

(assert (= (and b!938482 c!97759) b!938485))

(assert (= (and b!938482 (not c!97759)) b!938497))

(assert (= (or b!938485 b!938497) bm!40860))

(assert (= (or b!938491 bm!40860) bm!40858))

(assert (= (or b!938491 b!938485) bm!40859))

(assert (= (or b!938494 bm!40858) bm!40856))

(assert (= (or b!938494 bm!40859) bm!40862))

(assert (= (and d!113571 res!631507) b!938495))

(assert (= (and d!113571 c!97762) b!938493))

(assert (= (and d!113571 (not c!97762)) b!938484))

(assert (= (and d!113571 res!631505) b!938499))

(assert (= (and b!938499 res!631509) b!938481))

(assert (= (and b!938499 (not res!631508)) b!938496))

(assert (= (and b!938496 res!631504) b!938500))

(assert (= (and b!938499 res!631502) b!938483))

(assert (= (and b!938483 c!97763) b!938489))

(assert (= (and b!938483 (not c!97763)) b!938501))

(assert (= (and b!938489 res!631501) b!938490))

(assert (= (or b!938489 b!938501) bm!40861))

(assert (= (and b!938483 res!631503) b!938492))

(assert (= (and b!938492 c!97761) b!938498))

(assert (= (and b!938492 (not c!97761)) b!938487))

(assert (= (and b!938498 res!631506) b!938486))

(assert (= (or b!938498 b!938487) bm!40857))

(declare-fun b_lambda!14253 () Bool)

(assert (=> (not b_lambda!14253) (not b!938500)))

(assert (=> b!938500 t!27601))

(declare-fun b_and!29159 () Bool)

(assert (= b_and!29157 (and (=> t!27601 result!12145) b_and!29159)))

(declare-fun m!873977 () Bool)

(assert (=> b!938490 m!873977))

(assert (=> d!113571 m!873765))

(declare-fun m!873979 () Bool)

(assert (=> b!938493 m!873979))

(declare-fun m!873981 () Bool)

(assert (=> b!938493 m!873981))

(declare-fun m!873983 () Bool)

(assert (=> b!938493 m!873983))

(declare-fun m!873985 () Bool)

(assert (=> b!938493 m!873985))

(declare-fun m!873987 () Bool)

(assert (=> b!938493 m!873987))

(assert (=> b!938493 m!873985))

(declare-fun m!873989 () Bool)

(assert (=> b!938493 m!873989))

(assert (=> b!938493 m!873979))

(declare-fun m!873991 () Bool)

(assert (=> b!938493 m!873991))

(declare-fun m!873993 () Bool)

(assert (=> b!938493 m!873993))

(declare-fun m!873995 () Bool)

(assert (=> b!938493 m!873995))

(declare-fun m!873997 () Bool)

(assert (=> b!938493 m!873997))

(declare-fun m!873999 () Bool)

(assert (=> b!938493 m!873999))

(declare-fun m!874001 () Bool)

(assert (=> b!938493 m!874001))

(declare-fun m!874003 () Bool)

(assert (=> b!938493 m!874003))

(declare-fun m!874005 () Bool)

(assert (=> b!938493 m!874005))

(declare-fun m!874007 () Bool)

(assert (=> b!938493 m!874007))

(assert (=> b!938493 m!874003))

(declare-fun m!874009 () Bool)

(assert (=> b!938493 m!874009))

(assert (=> b!938493 m!873991))

(declare-fun m!874011 () Bool)

(assert (=> b!938493 m!874011))

(declare-fun m!874013 () Bool)

(assert (=> b!938486 m!874013))

(assert (=> bm!40856 m!873983))

(declare-fun m!874015 () Bool)

(assert (=> b!938500 m!874015))

(assert (=> b!938500 m!873737))

(declare-fun m!874017 () Bool)

(assert (=> b!938500 m!874017))

(assert (=> b!938500 m!874015))

(assert (=> b!938500 m!873737))

(assert (=> b!938500 m!873995))

(declare-fun m!874019 () Bool)

(assert (=> b!938500 m!874019))

(assert (=> b!938500 m!873995))

(declare-fun m!874021 () Bool)

(assert (=> bm!40862 m!874021))

(declare-fun m!874023 () Bool)

(assert (=> b!938494 m!874023))

(assert (=> b!938496 m!873995))

(assert (=> b!938496 m!873995))

(declare-fun m!874025 () Bool)

(assert (=> b!938496 m!874025))

(assert (=> b!938481 m!873995))

(assert (=> b!938481 m!873995))

(declare-fun m!874027 () Bool)

(assert (=> b!938481 m!874027))

(declare-fun m!874029 () Bool)

(assert (=> bm!40857 m!874029))

(declare-fun m!874031 () Bool)

(assert (=> bm!40861 m!874031))

(assert (=> b!938495 m!873995))

(assert (=> b!938495 m!873995))

(assert (=> b!938495 m!874027))

(assert (=> b!938301 d!113571))

(declare-fun d!113573 () Bool)

(assert (=> d!113573 (= (apply!892 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723)) k0!1099) (apply!892 lt!423722 k0!1099))))

(declare-fun lt!423914 () Unit!31704)

(declare-fun choose!1567 (ListLongMap!12197 (_ BitVec 64) V!31985 (_ BitVec 64)) Unit!31704)

(assert (=> d!113573 (= lt!423914 (choose!1567 lt!423722 lt!423727 lt!423723 k0!1099))))

(declare-fun e!527121 () Bool)

(assert (=> d!113573 e!527121))

(declare-fun res!631512 () Bool)

(assert (=> d!113573 (=> (not res!631512) (not e!527121))))

(assert (=> d!113573 (= res!631512 (contains!5126 lt!423722 k0!1099))))

(assert (=> d!113573 (= (addApplyDifferent!439 lt!423722 lt!423727 lt!423723 k0!1099) lt!423914)))

(declare-fun b!938505 () Bool)

(assert (=> b!938505 (= e!527121 (not (= k0!1099 lt!423727)))))

(assert (= (and d!113573 res!631512) b!938505))

(declare-fun m!874033 () Bool)

(assert (=> d!113573 m!874033))

(assert (=> d!113573 m!873723))

(assert (=> d!113573 m!874033))

(declare-fun m!874035 () Bool)

(assert (=> d!113573 m!874035))

(declare-fun m!874037 () Bool)

(assert (=> d!113573 m!874037))

(assert (=> d!113573 m!873717))

(assert (=> b!938301 d!113573))

(declare-fun d!113575 () Bool)

(declare-fun e!527124 () Bool)

(assert (=> d!113575 e!527124))

(declare-fun res!631515 () Bool)

(assert (=> d!113575 (=> (not res!631515) (not e!527124))))

(assert (=> d!113575 (= res!631515 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27643 _values!1231))))))

(declare-fun lt!423917 () Unit!31704)

(declare-fun choose!1568 (array!56494 array!56496 (_ BitVec 32) (_ BitVec 32) V!31985 V!31985 (_ BitVec 32) Int) Unit!31704)

(assert (=> d!113575 (= lt!423917 (choose!1568 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> d!113575 (validMask!0 mask!1881)))

(assert (=> d!113575 (= (lemmaListMapRecursiveValidKeyArray!244 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!423917)))

(declare-fun b!938508 () Bool)

(assert (=> b!938508 (= e!527124 (= (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2809 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (= (and d!113575 res!631515) b!938508))

(declare-fun b_lambda!14255 () Bool)

(assert (=> (not b_lambda!14255) (not b!938508)))

(assert (=> b!938508 t!27601))

(declare-fun b_and!29161 () Bool)

(assert (= b_and!29159 (and (=> t!27601 result!12145) b_and!29161)))

(declare-fun m!874039 () Bool)

(assert (=> d!113575 m!874039))

(assert (=> d!113575 m!873765))

(assert (=> b!938508 m!873735))

(assert (=> b!938508 m!873737))

(assert (=> b!938508 m!873743))

(declare-fun m!874041 () Bool)

(assert (=> b!938508 m!874041))

(assert (=> b!938508 m!873771))

(assert (=> b!938508 m!874041))

(declare-fun m!874043 () Bool)

(assert (=> b!938508 m!874043))

(assert (=> b!938508 m!873737))

(assert (=> b!938508 m!873735))

(assert (=> b!938508 m!873727))

(assert (=> b!938301 d!113575))

(declare-fun d!113577 () Bool)

(assert (=> d!113577 (contains!5126 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723)) k0!1099)))

(declare-fun lt!423920 () Unit!31704)

(declare-fun choose!1569 (ListLongMap!12197 (_ BitVec 64) V!31985 (_ BitVec 64)) Unit!31704)

(assert (=> d!113577 (= lt!423920 (choose!1569 lt!423722 lt!423727 lt!423723 k0!1099))))

(assert (=> d!113577 (contains!5126 lt!423722 k0!1099)))

(assert (=> d!113577 (= (addStillContains!565 lt!423722 lt!423727 lt!423723 k0!1099) lt!423920)))

(declare-fun bs!26342 () Bool)

(assert (= bs!26342 d!113577))

(assert (=> bs!26342 m!874033))

(assert (=> bs!26342 m!874033))

(declare-fun m!874045 () Bool)

(assert (=> bs!26342 m!874045))

(declare-fun m!874047 () Bool)

(assert (=> bs!26342 m!874047))

(assert (=> bs!26342 m!873717))

(assert (=> b!938301 d!113577))

(declare-fun d!113579 () Bool)

(declare-fun res!631524 () Bool)

(declare-fun e!527135 () Bool)

(assert (=> d!113579 (=> res!631524 e!527135)))

(assert (=> d!113579 (= res!631524 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(assert (=> d!113579 (= (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19291) e!527135)))

(declare-fun b!938520 () Bool)

(declare-fun e!527133 () Bool)

(declare-fun contains!5127 (List!19294 (_ BitVec 64)) Bool)

(assert (=> b!938520 (= e!527133 (contains!5127 Nil!19291 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!938521 () Bool)

(declare-fun e!527134 () Bool)

(declare-fun call!40868 () Bool)

(assert (=> b!938521 (= e!527134 call!40868)))

(declare-fun b!938522 () Bool)

(declare-fun e!527136 () Bool)

(assert (=> b!938522 (= e!527136 e!527134)))

(declare-fun c!97766 () Bool)

(assert (=> b!938522 (= c!97766 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!938523 () Bool)

(assert (=> b!938523 (= e!527134 call!40868)))

(declare-fun b!938524 () Bool)

(assert (=> b!938524 (= e!527135 e!527136)))

(declare-fun res!631523 () Bool)

(assert (=> b!938524 (=> (not res!631523) (not e!527136))))

(assert (=> b!938524 (= res!631523 (not e!527133))))

(declare-fun res!631522 () Bool)

(assert (=> b!938524 (=> (not res!631522) (not e!527133))))

(assert (=> b!938524 (= res!631522 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun bm!40865 () Bool)

(assert (=> bm!40865 (= call!40868 (arrayNoDuplicates!0 _keys!1487 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (ite c!97766 (Cons!19290 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19291) Nil!19291)))))

(assert (= (and d!113579 (not res!631524)) b!938524))

(assert (= (and b!938524 res!631522) b!938520))

(assert (= (and b!938524 res!631523) b!938522))

(assert (= (and b!938522 c!97766) b!938523))

(assert (= (and b!938522 (not c!97766)) b!938521))

(assert (= (or b!938523 b!938521) bm!40865))

(assert (=> b!938520 m!873771))

(assert (=> b!938520 m!873771))

(declare-fun m!874049 () Bool)

(assert (=> b!938520 m!874049))

(assert (=> b!938522 m!873771))

(assert (=> b!938522 m!873771))

(assert (=> b!938522 m!873893))

(assert (=> b!938524 m!873771))

(assert (=> b!938524 m!873771))

(assert (=> b!938524 m!873893))

(assert (=> bm!40865 m!873771))

(declare-fun m!874051 () Bool)

(assert (=> bm!40865 m!874051))

(assert (=> b!938301 d!113579))

(declare-fun d!113581 () Bool)

(declare-fun e!527139 () Bool)

(assert (=> d!113581 e!527139))

(declare-fun c!97769 () Bool)

(assert (=> d!113581 (= c!97769 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!423923 () Unit!31704)

(declare-fun choose!1570 (array!56494 array!56496 (_ BitVec 32) (_ BitVec 32) V!31985 V!31985 (_ BitVec 64) (_ BitVec 32) Int) Unit!31704)

(assert (=> d!113581 (= lt!423923 (choose!1570 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> d!113581 (validMask!0 mask!1881)))

(assert (=> d!113581 (= (lemmaListMapContainsThenArrayContainsFrom!322 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235) lt!423923)))

(declare-fun b!938529 () Bool)

(assert (=> b!938529 (= e!527139 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!938530 () Bool)

(assert (=> b!938530 (= e!527139 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!113581 c!97769) b!938529))

(assert (= (and d!113581 (not c!97769)) b!938530))

(declare-fun m!874053 () Bool)

(assert (=> d!113581 m!874053))

(assert (=> d!113581 m!873765))

(assert (=> b!938529 m!873715))

(assert (=> b!938301 d!113581))

(declare-fun d!113583 () Bool)

(assert (=> d!113583 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)) (not (= (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) k0!1099)))))

(declare-fun lt!423926 () Unit!31704)

(declare-fun choose!21 (array!56494 (_ BitVec 64) (_ BitVec 32) List!19294) Unit!31704)

(assert (=> d!113583 (= lt!423926 (choose!21 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19291))))

(assert (=> d!113583 (bvslt (size!27642 _keys!1487) #b01111111111111111111111111111111)))

(assert (=> d!113583 (= (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19291) lt!423926)))

(declare-fun bs!26343 () Bool)

(assert (= bs!26343 d!113583))

(assert (=> bs!26343 m!873771))

(declare-fun m!874055 () Bool)

(assert (=> bs!26343 m!874055))

(assert (=> b!938301 d!113583))

(declare-fun d!113585 () Bool)

(declare-fun e!527142 () Bool)

(assert (=> d!113585 e!527142))

(declare-fun res!631529 () Bool)

(assert (=> d!113585 (=> (not res!631529) (not e!527142))))

(declare-fun lt!423937 () ListLongMap!12197)

(assert (=> d!113585 (= res!631529 (contains!5126 lt!423937 (_1!6753 lt!423732)))))

(declare-fun lt!423938 () List!19293)

(assert (=> d!113585 (= lt!423937 (ListLongMap!12198 lt!423938))))

(declare-fun lt!423936 () Unit!31704)

(declare-fun lt!423935 () Unit!31704)

(assert (=> d!113585 (= lt!423936 lt!423935)))

(assert (=> d!113585 (= (getValueByKey!487 lt!423938 (_1!6753 lt!423732)) (Some!492 (_2!6753 lt!423732)))))

(declare-fun lemmaContainsTupThenGetReturnValue!261 (List!19293 (_ BitVec 64) V!31985) Unit!31704)

(assert (=> d!113585 (= lt!423935 (lemmaContainsTupThenGetReturnValue!261 lt!423938 (_1!6753 lt!423732) (_2!6753 lt!423732)))))

(declare-fun insertStrictlySorted!317 (List!19293 (_ BitVec 64) V!31985) List!19293)

(assert (=> d!113585 (= lt!423938 (insertStrictlySorted!317 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)) (_1!6753 lt!423732) (_2!6753 lt!423732)))))

(assert (=> d!113585 (= (+!2809 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!423732) lt!423937)))

(declare-fun b!938535 () Bool)

(declare-fun res!631530 () Bool)

(assert (=> b!938535 (=> (not res!631530) (not e!527142))))

(assert (=> b!938535 (= res!631530 (= (getValueByKey!487 (toList!6114 lt!423937) (_1!6753 lt!423732)) (Some!492 (_2!6753 lt!423732))))))

(declare-fun b!938536 () Bool)

(declare-fun contains!5128 (List!19293 tuple2!13486) Bool)

(assert (=> b!938536 (= e!527142 (contains!5128 (toList!6114 lt!423937) lt!423732))))

(assert (= (and d!113585 res!631529) b!938535))

(assert (= (and b!938535 res!631530) b!938536))

(declare-fun m!874057 () Bool)

(assert (=> d!113585 m!874057))

(declare-fun m!874059 () Bool)

(assert (=> d!113585 m!874059))

(declare-fun m!874061 () Bool)

(assert (=> d!113585 m!874061))

(declare-fun m!874063 () Bool)

(assert (=> d!113585 m!874063))

(declare-fun m!874065 () Bool)

(assert (=> b!938535 m!874065))

(declare-fun m!874067 () Bool)

(assert (=> b!938536 m!874067))

(assert (=> b!938301 d!113585))

(declare-fun d!113587 () Bool)

(declare-fun e!527143 () Bool)

(assert (=> d!113587 e!527143))

(declare-fun res!631531 () Bool)

(assert (=> d!113587 (=> res!631531 e!527143)))

(declare-fun lt!423939 () Bool)

(assert (=> d!113587 (= res!631531 (not lt!423939))))

(declare-fun lt!423941 () Bool)

(assert (=> d!113587 (= lt!423939 lt!423941)))

(declare-fun lt!423942 () Unit!31704)

(declare-fun e!527144 () Unit!31704)

(assert (=> d!113587 (= lt!423942 e!527144)))

(declare-fun c!97770 () Bool)

(assert (=> d!113587 (= c!97770 lt!423941)))

(assert (=> d!113587 (= lt!423941 (containsKey!452 (toList!6114 lt!423731) k0!1099))))

(assert (=> d!113587 (= (contains!5126 lt!423731 k0!1099) lt!423939)))

(declare-fun b!938537 () Bool)

(declare-fun lt!423940 () Unit!31704)

(assert (=> b!938537 (= e!527144 lt!423940)))

(assert (=> b!938537 (= lt!423940 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423731) k0!1099))))

(assert (=> b!938537 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423731) k0!1099))))

(declare-fun b!938538 () Bool)

(declare-fun Unit!31717 () Unit!31704)

(assert (=> b!938538 (= e!527144 Unit!31717)))

(declare-fun b!938539 () Bool)

(assert (=> b!938539 (= e!527143 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423731) k0!1099)))))

(assert (= (and d!113587 c!97770) b!938537))

(assert (= (and d!113587 (not c!97770)) b!938538))

(assert (= (and d!113587 (not res!631531)) b!938539))

(declare-fun m!874069 () Bool)

(assert (=> d!113587 m!874069))

(declare-fun m!874071 () Bool)

(assert (=> b!938537 m!874071))

(assert (=> b!938537 m!873973))

(assert (=> b!938537 m!873973))

(declare-fun m!874073 () Bool)

(assert (=> b!938537 m!874073))

(assert (=> b!938539 m!873973))

(assert (=> b!938539 m!873973))

(assert (=> b!938539 m!874073))

(assert (=> b!938301 d!113587))

(assert (=> b!938301 d!113559))

(declare-fun d!113589 () Bool)

(declare-fun e!527145 () Bool)

(assert (=> d!113589 e!527145))

(declare-fun res!631532 () Bool)

(assert (=> d!113589 (=> (not res!631532) (not e!527145))))

(declare-fun lt!423945 () ListLongMap!12197)

(assert (=> d!113589 (= res!631532 (contains!5126 lt!423945 (_1!6753 lt!423732)))))

(declare-fun lt!423946 () List!19293)

(assert (=> d!113589 (= lt!423945 (ListLongMap!12198 lt!423946))))

(declare-fun lt!423944 () Unit!31704)

(declare-fun lt!423943 () Unit!31704)

(assert (=> d!113589 (= lt!423944 lt!423943)))

(assert (=> d!113589 (= (getValueByKey!487 lt!423946 (_1!6753 lt!423732)) (Some!492 (_2!6753 lt!423732)))))

(assert (=> d!113589 (= lt!423943 (lemmaContainsTupThenGetReturnValue!261 lt!423946 (_1!6753 lt!423732) (_2!6753 lt!423732)))))

(assert (=> d!113589 (= lt!423946 (insertStrictlySorted!317 (toList!6114 lt!423722) (_1!6753 lt!423732) (_2!6753 lt!423732)))))

(assert (=> d!113589 (= (+!2809 lt!423722 lt!423732) lt!423945)))

(declare-fun b!938540 () Bool)

(declare-fun res!631533 () Bool)

(assert (=> b!938540 (=> (not res!631533) (not e!527145))))

(assert (=> b!938540 (= res!631533 (= (getValueByKey!487 (toList!6114 lt!423945) (_1!6753 lt!423732)) (Some!492 (_2!6753 lt!423732))))))

(declare-fun b!938541 () Bool)

(assert (=> b!938541 (= e!527145 (contains!5128 (toList!6114 lt!423945) lt!423732))))

(assert (= (and d!113589 res!631532) b!938540))

(assert (= (and b!938540 res!631533) b!938541))

(declare-fun m!874075 () Bool)

(assert (=> d!113589 m!874075))

(declare-fun m!874077 () Bool)

(assert (=> d!113589 m!874077))

(declare-fun m!874079 () Bool)

(assert (=> d!113589 m!874079))

(declare-fun m!874081 () Bool)

(assert (=> d!113589 m!874081))

(declare-fun m!874083 () Bool)

(assert (=> b!938540 m!874083))

(declare-fun m!874085 () Bool)

(assert (=> b!938541 m!874085))

(assert (=> b!938301 d!113589))

(declare-fun d!113591 () Bool)

(declare-fun c!97773 () Bool)

(assert (=> d!113591 (= c!97773 ((_ is ValueCellFull!9651) (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun e!527148 () V!31985)

(assert (=> d!113591 (= (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!527148)))

(declare-fun b!938546 () Bool)

(declare-fun get!14360 (ValueCell!9651 V!31985) V!31985)

(assert (=> b!938546 (= e!527148 (get!14360 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!938547 () Bool)

(declare-fun get!14361 (ValueCell!9651 V!31985) V!31985)

(assert (=> b!938547 (= e!527148 (get!14361 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113591 c!97773) b!938546))

(assert (= (and d!113591 (not c!97773)) b!938547))

(assert (=> b!938546 m!873735))

(assert (=> b!938546 m!873737))

(declare-fun m!874087 () Bool)

(assert (=> b!938546 m!874087))

(assert (=> b!938547 m!873735))

(assert (=> b!938547 m!873737))

(declare-fun m!874089 () Bool)

(assert (=> b!938547 m!874089))

(assert (=> b!938301 d!113591))

(declare-fun d!113593 () Bool)

(assert (=> d!113593 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19291)))

(declare-fun lt!423949 () Unit!31704)

(declare-fun choose!39 (array!56494 (_ BitVec 32) (_ BitVec 32)) Unit!31704)

(assert (=> d!113593 (= lt!423949 (choose!39 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> d!113593 (bvslt (size!27642 _keys!1487) #b01111111111111111111111111111111)))

(assert (=> d!113593 (= (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)) lt!423949)))

(declare-fun bs!26344 () Bool)

(assert (= bs!26344 d!113593))

(assert (=> bs!26344 m!873749))

(declare-fun m!874091 () Bool)

(assert (=> bs!26344 m!874091))

(assert (=> b!938301 d!113593))

(declare-fun d!113595 () Bool)

(assert (=> d!113595 (= (validMask!0 mask!1881) (and (or (= mask!1881 #b00000000000000000000000000000111) (= mask!1881 #b00000000000000000000000000001111) (= mask!1881 #b00000000000000000000000000011111) (= mask!1881 #b00000000000000000000000000111111) (= mask!1881 #b00000000000000000000000001111111) (= mask!1881 #b00000000000000000000000011111111) (= mask!1881 #b00000000000000000000000111111111) (= mask!1881 #b00000000000000000000001111111111) (= mask!1881 #b00000000000000000000011111111111) (= mask!1881 #b00000000000000000000111111111111) (= mask!1881 #b00000000000000000001111111111111) (= mask!1881 #b00000000000000000011111111111111) (= mask!1881 #b00000000000000000111111111111111) (= mask!1881 #b00000000000000001111111111111111) (= mask!1881 #b00000000000000011111111111111111) (= mask!1881 #b00000000000000111111111111111111) (= mask!1881 #b00000000000001111111111111111111) (= mask!1881 #b00000000000011111111111111111111) (= mask!1881 #b00000000000111111111111111111111) (= mask!1881 #b00000000001111111111111111111111) (= mask!1881 #b00000000011111111111111111111111) (= mask!1881 #b00000000111111111111111111111111) (= mask!1881 #b00000001111111111111111111111111) (= mask!1881 #b00000011111111111111111111111111) (= mask!1881 #b00000111111111111111111111111111) (= mask!1881 #b00001111111111111111111111111111) (= mask!1881 #b00011111111111111111111111111111) (= mask!1881 #b00111111111111111111111111111111)) (bvsle mask!1881 #b00111111111111111111111111111111)))))

(assert (=> start!79812 d!113595))

(declare-fun d!113597 () Bool)

(assert (=> d!113597 (= (array_inv!21100 _values!1231) (bvsge (size!27643 _values!1231) #b00000000000000000000000000000000))))

(assert (=> start!79812 d!113597))

(declare-fun d!113599 () Bool)

(assert (=> d!113599 (= (array_inv!21101 _keys!1487) (bvsge (size!27642 _keys!1487) #b00000000000000000000000000000000))))

(assert (=> start!79812 d!113599))

(declare-fun d!113601 () Bool)

(declare-fun res!631536 () Bool)

(declare-fun e!527151 () Bool)

(assert (=> d!113601 (=> res!631536 e!527151)))

(assert (=> d!113601 (= res!631536 (bvsge #b00000000000000000000000000000000 (size!27642 _keys!1487)))))

(assert (=> d!113601 (= (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19291) e!527151)))

(declare-fun b!938548 () Bool)

(declare-fun e!527149 () Bool)

(assert (=> b!938548 (= e!527149 (contains!5127 Nil!19291 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!938549 () Bool)

(declare-fun e!527150 () Bool)

(declare-fun call!40869 () Bool)

(assert (=> b!938549 (= e!527150 call!40869)))

(declare-fun b!938550 () Bool)

(declare-fun e!527152 () Bool)

(assert (=> b!938550 (= e!527152 e!527150)))

(declare-fun c!97774 () Bool)

(assert (=> b!938550 (= c!97774 (validKeyInArray!0 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!938551 () Bool)

(assert (=> b!938551 (= e!527150 call!40869)))

(declare-fun b!938552 () Bool)

(assert (=> b!938552 (= e!527151 e!527152)))

(declare-fun res!631535 () Bool)

(assert (=> b!938552 (=> (not res!631535) (not e!527152))))

(assert (=> b!938552 (= res!631535 (not e!527149))))

(declare-fun res!631534 () Bool)

(assert (=> b!938552 (=> (not res!631534) (not e!527149))))

(assert (=> b!938552 (= res!631534 (validKeyInArray!0 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun bm!40866 () Bool)

(assert (=> bm!40866 (= call!40869 (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97774 (Cons!19290 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) Nil!19291) Nil!19291)))))

(assert (= (and d!113601 (not res!631536)) b!938552))

(assert (= (and b!938552 res!631534) b!938548))

(assert (= (and b!938552 res!631535) b!938550))

(assert (= (and b!938550 c!97774) b!938551))

(assert (= (and b!938550 (not c!97774)) b!938549))

(assert (= (or b!938551 b!938549) bm!40866))

(assert (=> b!938548 m!873963))

(assert (=> b!938548 m!873963))

(declare-fun m!874093 () Bool)

(assert (=> b!938548 m!874093))

(assert (=> b!938550 m!873963))

(assert (=> b!938550 m!873963))

(assert (=> b!938550 m!873971))

(assert (=> b!938552 m!873963))

(assert (=> b!938552 m!873963))

(assert (=> b!938552 m!873971))

(assert (=> bm!40866 m!873963))

(declare-fun m!874095 () Bool)

(assert (=> bm!40866 m!874095))

(assert (=> b!938296 d!113601))

(declare-fun d!113603 () Bool)

(assert (=> d!113603 (= (validKeyInArray!0 lt!423727) (and (not (= lt!423727 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= lt!423727 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938294 d!113603))

(declare-fun d!113605 () Bool)

(assert (=> d!113605 (= (apply!892 lt!423722 k0!1099) (get!14359 (getValueByKey!487 (toList!6114 lt!423722) k0!1099)))))

(declare-fun bs!26345 () Bool)

(assert (= bs!26345 d!113605))

(assert (=> bs!26345 m!873903))

(assert (=> bs!26345 m!873903))

(declare-fun m!874097 () Bool)

(assert (=> bs!26345 m!874097))

(assert (=> b!938304 d!113605))

(declare-fun d!113607 () Bool)

(assert (=> d!113607 (= (apply!892 lt!423733 k0!1099) (get!14359 (getValueByKey!487 (toList!6114 lt!423733) k0!1099)))))

(declare-fun bs!26346 () Bool)

(assert (= bs!26346 d!113607))

(assert (=> bs!26346 m!873845))

(assert (=> bs!26346 m!873845))

(declare-fun m!874099 () Bool)

(assert (=> bs!26346 m!874099))

(assert (=> b!938300 d!113607))

(declare-fun mapNonEmpty!32179 () Bool)

(declare-fun mapRes!32179 () Bool)

(declare-fun tp!61741 () Bool)

(declare-fun e!527157 () Bool)

(assert (=> mapNonEmpty!32179 (= mapRes!32179 (and tp!61741 e!527157))))

(declare-fun mapKey!32179 () (_ BitVec 32))

(declare-fun mapRest!32179 () (Array (_ BitVec 32) ValueCell!9651))

(declare-fun mapValue!32179 () ValueCell!9651)

(assert (=> mapNonEmpty!32179 (= mapRest!32173 (store mapRest!32179 mapKey!32179 mapValue!32179))))

(declare-fun mapIsEmpty!32179 () Bool)

(assert (=> mapIsEmpty!32179 mapRes!32179))

(declare-fun b!938559 () Bool)

(assert (=> b!938559 (= e!527157 tp_is_empty!20265)))

(declare-fun b!938560 () Bool)

(declare-fun e!527158 () Bool)

(assert (=> b!938560 (= e!527158 tp_is_empty!20265)))

(declare-fun condMapEmpty!32179 () Bool)

(declare-fun mapDefault!32179 () ValueCell!9651)

(assert (=> mapNonEmpty!32173 (= condMapEmpty!32179 (= mapRest!32173 ((as const (Array (_ BitVec 32) ValueCell!9651)) mapDefault!32179)))))

(assert (=> mapNonEmpty!32173 (= tp!61732 (and e!527158 mapRes!32179))))

(assert (= (and mapNonEmpty!32173 condMapEmpty!32179) mapIsEmpty!32179))

(assert (= (and mapNonEmpty!32173 (not condMapEmpty!32179)) mapNonEmpty!32179))

(assert (= (and mapNonEmpty!32179 ((_ is ValueCellFull!9651) mapValue!32179)) b!938559))

(assert (= (and mapNonEmpty!32173 ((_ is ValueCellFull!9651) mapDefault!32179)) b!938560))

(declare-fun m!874101 () Bool)

(assert (=> mapNonEmpty!32179 m!874101))

(declare-fun b_lambda!14257 () Bool)

(assert (= b_lambda!14253 (or (and start!79812 b_free!17757) b_lambda!14257)))

(declare-fun b_lambda!14259 () Bool)

(assert (= b_lambda!14249 (or (and start!79812 b_free!17757) b_lambda!14259)))

(declare-fun b_lambda!14261 () Bool)

(assert (= b_lambda!14251 (or (and start!79812 b_free!17757) b_lambda!14261)))

(declare-fun b_lambda!14263 () Bool)

(assert (= b_lambda!14255 (or (and start!79812 b_free!17757) b_lambda!14263)))

(check-sat (not bm!40839) (not b!938372) (not bm!40844) (not d!113593) (not d!113605) (not bm!40845) (not b!938467) (not b_lambda!14259) (not b_lambda!14261) (not b!938546) (not bm!40847) (not b!938537) (not d!113557) (not b!938552) (not bm!40851) (not b!938463) (not b!938460) (not b!938424) (not d!113563) (not b!938436) b_and!29161 (not b!938429) (not d!113587) (not bm!40861) (not b!938486) (not b!938541) (not bm!40846) (not b!938500) (not b!938520) (not b_lambda!14257) (not b!938433) (not b!938495) (not d!113571) (not b!938447) (not b!938494) (not d!113589) (not b!938524) (not bm!40857) (not bm!40840) (not d!113561) (not b!938493) (not d!113575) (not d!113585) (not bm!40852) (not b!938461) (not b!938529) (not b!938453) (not d!113559) (not b!938448) (not b!938481) (not b_lambda!14247) (not b!938379) (not b!938548) (not b!938445) (not d!113569) (not bm!40865) (not b_lambda!14263) (not mapNonEmpty!32179) (not b_next!17757) (not d!113581) (not b!938508) (not b!938439) tp_is_empty!20265 (not bm!40855) (not b!938457) (not b!938490) (not d!113607) (not bm!40866) (not bm!40856) (not b!938437) (not b!938536) (not b!938496) (not b!938540) (not b!938547) (not b!938462) (not b!938480) (not b!938535) (not b!938438) (not b!938479) (not d!113573) (not bm!40862) (not b!938381) (not b!938522) (not b!938443) (not b!938550) (not b!938539) (not d!113577) (not d!113583))
(check-sat b_and!29161 (not b_next!17757))
(get-model)

(declare-fun d!113609 () Bool)

(assert (=> d!113609 (= (get!14361 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938547 d!113609))

(declare-fun d!113611 () Bool)

(assert (=> d!113611 (= (apply!892 lt!423910 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (get!14359 (getValueByKey!487 (toList!6114 lt!423910) (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))))

(declare-fun bs!26347 () Bool)

(assert (= bs!26347 d!113611))

(assert (=> bs!26347 m!873995))

(declare-fun m!874103 () Bool)

(assert (=> bs!26347 m!874103))

(assert (=> bs!26347 m!874103))

(declare-fun m!874105 () Bool)

(assert (=> bs!26347 m!874105))

(assert (=> b!938500 d!113611))

(declare-fun d!113613 () Bool)

(declare-fun c!97775 () Bool)

(assert (=> d!113613 (= c!97775 ((_ is ValueCellFull!9651) (select (arr!27183 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun e!527159 () V!31985)

(assert (=> d!113613 (= (get!14358 (select (arr!27183 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!527159)))

(declare-fun b!938561 () Bool)

(assert (=> b!938561 (= e!527159 (get!14360 (select (arr!27183 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!938562 () Bool)

(assert (=> b!938562 (= e!527159 (get!14361 (select (arr!27183 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113613 c!97775) b!938561))

(assert (= (and d!113613 (not c!97775)) b!938562))

(assert (=> b!938561 m!874015))

(assert (=> b!938561 m!873737))

(declare-fun m!874107 () Bool)

(assert (=> b!938561 m!874107))

(assert (=> b!938562 m!874015))

(assert (=> b!938562 m!873737))

(declare-fun m!874109 () Bool)

(assert (=> b!938562 m!874109))

(assert (=> b!938500 d!113613))

(declare-fun d!113615 () Bool)

(declare-fun e!527160 () Bool)

(assert (=> d!113615 e!527160))

(declare-fun res!631537 () Bool)

(assert (=> d!113615 (=> (not res!631537) (not e!527160))))

(declare-fun lt!423952 () ListLongMap!12197)

(assert (=> d!113615 (= res!631537 (contains!5126 lt!423952 (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun lt!423953 () List!19293)

(assert (=> d!113615 (= lt!423952 (ListLongMap!12198 lt!423953))))

(declare-fun lt!423951 () Unit!31704)

(declare-fun lt!423950 () Unit!31704)

(assert (=> d!113615 (= lt!423951 lt!423950)))

(assert (=> d!113615 (= (getValueByKey!487 lt!423953 (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113615 (= lt!423950 (lemmaContainsTupThenGetReturnValue!261 lt!423953 (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113615 (= lt!423953 (insertStrictlySorted!317 (toList!6114 call!40851) (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113615 (= (+!2809 call!40851 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) lt!423952)))

(declare-fun b!938563 () Bool)

(declare-fun res!631538 () Bool)

(assert (=> b!938563 (=> (not res!631538) (not e!527160))))

(assert (=> b!938563 (= res!631538 (= (getValueByKey!487 (toList!6114 lt!423952) (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun b!938564 () Bool)

(assert (=> b!938564 (= e!527160 (contains!5128 (toList!6114 lt!423952) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(assert (= (and d!113615 res!631537) b!938563))

(assert (= (and b!938563 res!631538) b!938564))

(declare-fun m!874111 () Bool)

(assert (=> d!113615 m!874111))

(declare-fun m!874113 () Bool)

(assert (=> d!113615 m!874113))

(declare-fun m!874115 () Bool)

(assert (=> d!113615 m!874115))

(declare-fun m!874117 () Bool)

(assert (=> d!113615 m!874117))

(declare-fun m!874119 () Bool)

(assert (=> b!938563 m!874119))

(declare-fun m!874121 () Bool)

(assert (=> b!938564 m!874121))

(assert (=> b!938461 d!113615))

(declare-fun d!113617 () Bool)

(declare-fun lt!423956 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!412 (List!19294) (InoxSet (_ BitVec 64)))

(assert (=> d!113617 (= lt!423956 (select (content!412 Nil!19291) (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun e!527165 () Bool)

(assert (=> d!113617 (= lt!423956 e!527165)))

(declare-fun res!631544 () Bool)

(assert (=> d!113617 (=> (not res!631544) (not e!527165))))

(assert (=> d!113617 (= res!631544 ((_ is Cons!19290) Nil!19291))))

(assert (=> d!113617 (= (contains!5127 Nil!19291 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)) lt!423956)))

(declare-fun b!938569 () Bool)

(declare-fun e!527166 () Bool)

(assert (=> b!938569 (= e!527165 e!527166)))

(declare-fun res!631543 () Bool)

(assert (=> b!938569 (=> res!631543 e!527166)))

(assert (=> b!938569 (= res!631543 (= (h!20436 Nil!19291) (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun b!938570 () Bool)

(assert (=> b!938570 (= e!527166 (contains!5127 (t!27603 Nil!19291) (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)))))

(assert (= (and d!113617 res!631544) b!938569))

(assert (= (and b!938569 (not res!631543)) b!938570))

(declare-fun m!874123 () Bool)

(assert (=> d!113617 m!874123))

(assert (=> d!113617 m!873963))

(declare-fun m!874125 () Bool)

(assert (=> d!113617 m!874125))

(assert (=> b!938570 m!873963))

(declare-fun m!874127 () Bool)

(assert (=> b!938570 m!874127))

(assert (=> b!938548 d!113617))

(declare-fun d!113619 () Bool)

(declare-fun isEmpty!703 (Option!493) Bool)

(assert (=> d!113619 (= (isDefined!357 (getValueByKey!487 (toList!6114 lt!423733) k0!1099)) (not (isEmpty!703 (getValueByKey!487 (toList!6114 lt!423733) k0!1099))))))

(declare-fun bs!26348 () Bool)

(assert (= bs!26348 d!113619))

(assert (=> bs!26348 m!873845))

(declare-fun m!874129 () Bool)

(assert (=> bs!26348 m!874129))

(assert (=> b!938381 d!113619))

(declare-fun b!938579 () Bool)

(declare-fun e!527171 () Option!493)

(assert (=> b!938579 (= e!527171 (Some!492 (_2!6753 (h!20435 (toList!6114 lt!423733)))))))

(declare-fun b!938581 () Bool)

(declare-fun e!527172 () Option!493)

(assert (=> b!938581 (= e!527172 (getValueByKey!487 (t!27602 (toList!6114 lt!423733)) k0!1099))))

(declare-fun b!938582 () Bool)

(assert (=> b!938582 (= e!527172 None!491)))

(declare-fun b!938580 () Bool)

(assert (=> b!938580 (= e!527171 e!527172)))

(declare-fun c!97781 () Bool)

(assert (=> b!938580 (= c!97781 (and ((_ is Cons!19289) (toList!6114 lt!423733)) (not (= (_1!6753 (h!20435 (toList!6114 lt!423733))) k0!1099))))))

(declare-fun d!113621 () Bool)

(declare-fun c!97780 () Bool)

(assert (=> d!113621 (= c!97780 (and ((_ is Cons!19289) (toList!6114 lt!423733)) (= (_1!6753 (h!20435 (toList!6114 lt!423733))) k0!1099)))))

(assert (=> d!113621 (= (getValueByKey!487 (toList!6114 lt!423733) k0!1099) e!527171)))

(assert (= (and d!113621 c!97780) b!938579))

(assert (= (and d!113621 (not c!97780)) b!938580))

(assert (= (and b!938580 c!97781) b!938581))

(assert (= (and b!938580 (not c!97781)) b!938582))

(declare-fun m!874131 () Bool)

(assert (=> b!938581 m!874131))

(assert (=> b!938381 d!113621))

(assert (=> d!113571 d!113595))

(declare-fun d!113623 () Bool)

(assert (=> d!113623 (= (isDefined!357 (getValueByKey!487 (toList!6114 lt!423722) k0!1099)) (not (isEmpty!703 (getValueByKey!487 (toList!6114 lt!423722) k0!1099))))))

(declare-fun bs!26349 () Bool)

(assert (= bs!26349 d!113623))

(assert (=> bs!26349 m!873903))

(declare-fun m!874133 () Bool)

(assert (=> bs!26349 m!874133))

(assert (=> b!938447 d!113623))

(declare-fun b!938583 () Bool)

(declare-fun e!527173 () Option!493)

(assert (=> b!938583 (= e!527173 (Some!492 (_2!6753 (h!20435 (toList!6114 lt!423722)))))))

(declare-fun b!938585 () Bool)

(declare-fun e!527174 () Option!493)

(assert (=> b!938585 (= e!527174 (getValueByKey!487 (t!27602 (toList!6114 lt!423722)) k0!1099))))

(declare-fun b!938586 () Bool)

(assert (=> b!938586 (= e!527174 None!491)))

(declare-fun b!938584 () Bool)

(assert (=> b!938584 (= e!527173 e!527174)))

(declare-fun c!97783 () Bool)

(assert (=> b!938584 (= c!97783 (and ((_ is Cons!19289) (toList!6114 lt!423722)) (not (= (_1!6753 (h!20435 (toList!6114 lt!423722))) k0!1099))))))

(declare-fun d!113625 () Bool)

(declare-fun c!97782 () Bool)

(assert (=> d!113625 (= c!97782 (and ((_ is Cons!19289) (toList!6114 lt!423722)) (= (_1!6753 (h!20435 (toList!6114 lt!423722))) k0!1099)))))

(assert (=> d!113625 (= (getValueByKey!487 (toList!6114 lt!423722) k0!1099) e!527173)))

(assert (= (and d!113625 c!97782) b!938583))

(assert (= (and d!113625 (not c!97782)) b!938584))

(assert (= (and b!938584 c!97783) b!938585))

(assert (= (and b!938584 (not c!97783)) b!938586))

(declare-fun m!874135 () Bool)

(assert (=> b!938585 m!874135))

(assert (=> b!938447 d!113625))

(declare-fun d!113627 () Bool)

(assert (=> d!113627 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423733) k0!1099))))

(declare-fun lt!423959 () Unit!31704)

(declare-fun choose!1571 (List!19293 (_ BitVec 64)) Unit!31704)

(assert (=> d!113627 (= lt!423959 (choose!1571 (toList!6114 lt!423733) k0!1099))))

(declare-fun e!527177 () Bool)

(assert (=> d!113627 e!527177))

(declare-fun res!631547 () Bool)

(assert (=> d!113627 (=> (not res!631547) (not e!527177))))

(declare-fun isStrictlySorted!500 (List!19293) Bool)

(assert (=> d!113627 (= res!631547 (isStrictlySorted!500 (toList!6114 lt!423733)))))

(assert (=> d!113627 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423733) k0!1099) lt!423959)))

(declare-fun b!938589 () Bool)

(assert (=> b!938589 (= e!527177 (containsKey!452 (toList!6114 lt!423733) k0!1099))))

(assert (= (and d!113627 res!631547) b!938589))

(assert (=> d!113627 m!873845))

(assert (=> d!113627 m!873845))

(assert (=> d!113627 m!873847))

(declare-fun m!874137 () Bool)

(assert (=> d!113627 m!874137))

(declare-fun m!874139 () Bool)

(assert (=> d!113627 m!874139))

(assert (=> b!938589 m!873841))

(assert (=> b!938379 d!113627))

(assert (=> b!938379 d!113619))

(assert (=> b!938379 d!113621))

(declare-fun d!113629 () Bool)

(assert (=> d!113629 (= (validKeyInArray!0 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)) (and (not (= (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938480 d!113629))

(declare-fun d!113631 () Bool)

(declare-fun res!631550 () Bool)

(declare-fun e!527180 () Bool)

(assert (=> d!113631 (=> res!631550 e!527180)))

(assert (=> d!113631 (= res!631550 (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(assert (=> d!113631 (= (arrayNoDuplicates!0 _keys!1487 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (ite c!97766 (Cons!19290 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19291) Nil!19291)) e!527180)))

(declare-fun b!938590 () Bool)

(declare-fun e!527178 () Bool)

(assert (=> b!938590 (= e!527178 (contains!5127 (ite c!97766 (Cons!19290 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19291) Nil!19291) (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun b!938591 () Bool)

(declare-fun e!527179 () Bool)

(declare-fun call!40870 () Bool)

(assert (=> b!938591 (= e!527179 call!40870)))

(declare-fun b!938592 () Bool)

(declare-fun e!527181 () Bool)

(assert (=> b!938592 (= e!527181 e!527179)))

(declare-fun c!97784 () Bool)

(assert (=> b!938592 (= c!97784 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun b!938593 () Bool)

(assert (=> b!938593 (= e!527179 call!40870)))

(declare-fun b!938594 () Bool)

(assert (=> b!938594 (= e!527180 e!527181)))

(declare-fun res!631549 () Bool)

(assert (=> b!938594 (=> (not res!631549) (not e!527181))))

(assert (=> b!938594 (= res!631549 (not e!527178))))

(declare-fun res!631548 () Bool)

(assert (=> b!938594 (=> (not res!631548) (not e!527178))))

(assert (=> b!938594 (= res!631548 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun bm!40867 () Bool)

(assert (=> bm!40867 (= call!40870 (arrayNoDuplicates!0 _keys!1487 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!97784 (Cons!19290 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (ite c!97766 (Cons!19290 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19291) Nil!19291)) (ite c!97766 (Cons!19290 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) Nil!19291) Nil!19291))))))

(assert (= (and d!113631 (not res!631550)) b!938594))

(assert (= (and b!938594 res!631548) b!938590))

(assert (= (and b!938594 res!631549) b!938592))

(assert (= (and b!938592 c!97784) b!938593))

(assert (= (and b!938592 (not c!97784)) b!938591))

(assert (= (or b!938593 b!938591) bm!40867))

(declare-fun m!874141 () Bool)

(assert (=> b!938590 m!874141))

(assert (=> b!938590 m!874141))

(declare-fun m!874143 () Bool)

(assert (=> b!938590 m!874143))

(assert (=> b!938592 m!874141))

(assert (=> b!938592 m!874141))

(declare-fun m!874145 () Bool)

(assert (=> b!938592 m!874145))

(assert (=> b!938594 m!874141))

(assert (=> b!938594 m!874141))

(assert (=> b!938594 m!874145))

(assert (=> bm!40867 m!874141))

(declare-fun m!874147 () Bool)

(assert (=> bm!40867 m!874147))

(assert (=> bm!40865 d!113631))

(declare-fun d!113633 () Bool)

(assert (=> d!113633 (= (apply!892 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723)) k0!1099) (apply!892 lt!423722 k0!1099))))

(assert (=> d!113633 true))

(declare-fun _$34!1158 () Unit!31704)

(assert (=> d!113633 (= (choose!1567 lt!423722 lt!423727 lt!423723 k0!1099) _$34!1158)))

(declare-fun bs!26350 () Bool)

(assert (= bs!26350 d!113633))

(assert (=> bs!26350 m!874033))

(assert (=> bs!26350 m!874033))

(assert (=> bs!26350 m!874035))

(assert (=> bs!26350 m!873723))

(assert (=> d!113573 d!113633))

(assert (=> d!113573 d!113561))

(assert (=> d!113573 d!113605))

(declare-fun d!113635 () Bool)

(assert (=> d!113635 (= (apply!892 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723)) k0!1099) (get!14359 (getValueByKey!487 (toList!6114 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723))) k0!1099)))))

(declare-fun bs!26351 () Bool)

(assert (= bs!26351 d!113635))

(declare-fun m!874149 () Bool)

(assert (=> bs!26351 m!874149))

(assert (=> bs!26351 m!874149))

(declare-fun m!874151 () Bool)

(assert (=> bs!26351 m!874151))

(assert (=> d!113573 d!113635))

(declare-fun d!113637 () Bool)

(declare-fun e!527182 () Bool)

(assert (=> d!113637 e!527182))

(declare-fun res!631551 () Bool)

(assert (=> d!113637 (=> (not res!631551) (not e!527182))))

(declare-fun lt!423962 () ListLongMap!12197)

(assert (=> d!113637 (= res!631551 (contains!5126 lt!423962 (_1!6753 (tuple2!13487 lt!423727 lt!423723))))))

(declare-fun lt!423963 () List!19293)

(assert (=> d!113637 (= lt!423962 (ListLongMap!12198 lt!423963))))

(declare-fun lt!423961 () Unit!31704)

(declare-fun lt!423960 () Unit!31704)

(assert (=> d!113637 (= lt!423961 lt!423960)))

(assert (=> d!113637 (= (getValueByKey!487 lt!423963 (_1!6753 (tuple2!13487 lt!423727 lt!423723))) (Some!492 (_2!6753 (tuple2!13487 lt!423727 lt!423723))))))

(assert (=> d!113637 (= lt!423960 (lemmaContainsTupThenGetReturnValue!261 lt!423963 (_1!6753 (tuple2!13487 lt!423727 lt!423723)) (_2!6753 (tuple2!13487 lt!423727 lt!423723))))))

(assert (=> d!113637 (= lt!423963 (insertStrictlySorted!317 (toList!6114 lt!423722) (_1!6753 (tuple2!13487 lt!423727 lt!423723)) (_2!6753 (tuple2!13487 lt!423727 lt!423723))))))

(assert (=> d!113637 (= (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723)) lt!423962)))

(declare-fun b!938596 () Bool)

(declare-fun res!631552 () Bool)

(assert (=> b!938596 (=> (not res!631552) (not e!527182))))

(assert (=> b!938596 (= res!631552 (= (getValueByKey!487 (toList!6114 lt!423962) (_1!6753 (tuple2!13487 lt!423727 lt!423723))) (Some!492 (_2!6753 (tuple2!13487 lt!423727 lt!423723)))))))

(declare-fun b!938597 () Bool)

(assert (=> b!938597 (= e!527182 (contains!5128 (toList!6114 lt!423962) (tuple2!13487 lt!423727 lt!423723)))))

(assert (= (and d!113637 res!631551) b!938596))

(assert (= (and b!938596 res!631552) b!938597))

(declare-fun m!874153 () Bool)

(assert (=> d!113637 m!874153))

(declare-fun m!874155 () Bool)

(assert (=> d!113637 m!874155))

(declare-fun m!874157 () Bool)

(assert (=> d!113637 m!874157))

(declare-fun m!874159 () Bool)

(assert (=> d!113637 m!874159))

(declare-fun m!874161 () Bool)

(assert (=> b!938596 m!874161))

(declare-fun m!874163 () Bool)

(assert (=> b!938597 m!874163))

(assert (=> d!113573 d!113637))

(declare-fun d!113639 () Bool)

(assert (=> d!113639 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423722) k0!1099))))

(declare-fun lt!423964 () Unit!31704)

(assert (=> d!113639 (= lt!423964 (choose!1571 (toList!6114 lt!423722) k0!1099))))

(declare-fun e!527183 () Bool)

(assert (=> d!113639 e!527183))

(declare-fun res!631553 () Bool)

(assert (=> d!113639 (=> (not res!631553) (not e!527183))))

(assert (=> d!113639 (= res!631553 (isStrictlySorted!500 (toList!6114 lt!423722)))))

(assert (=> d!113639 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423722) k0!1099) lt!423964)))

(declare-fun b!938598 () Bool)

(assert (=> b!938598 (= e!527183 (containsKey!452 (toList!6114 lt!423722) k0!1099))))

(assert (= (and d!113639 res!631553) b!938598))

(assert (=> d!113639 m!873903))

(assert (=> d!113639 m!873903))

(assert (=> d!113639 m!873905))

(declare-fun m!874165 () Bool)

(assert (=> d!113639 m!874165))

(declare-fun m!874167 () Bool)

(assert (=> d!113639 m!874167))

(assert (=> b!938598 m!873899))

(assert (=> b!938445 d!113639))

(assert (=> b!938445 d!113623))

(assert (=> b!938445 d!113625))

(declare-fun d!113641 () Bool)

(assert (=> d!113641 (= (apply!892 lt!423853 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14359 (getValueByKey!487 (toList!6114 lt!423853) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26352 () Bool)

(assert (= bs!26352 d!113641))

(declare-fun m!874169 () Bool)

(assert (=> bs!26352 m!874169))

(assert (=> bs!26352 m!874169))

(declare-fun m!874171 () Bool)

(assert (=> bs!26352 m!874171))

(assert (=> b!938429 d!113641))

(declare-fun call!40873 () ListLongMap!12197)

(declare-fun bm!40870 () Bool)

(assert (=> bm!40870 (= call!40873 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!938623 () Bool)

(declare-fun e!527201 () Bool)

(declare-fun lt!423984 () ListLongMap!12197)

(declare-fun isEmpty!704 (ListLongMap!12197) Bool)

(assert (=> b!938623 (= e!527201 (isEmpty!704 lt!423984))))

(declare-fun b!938624 () Bool)

(declare-fun e!527199 () ListLongMap!12197)

(assert (=> b!938624 (= e!527199 (ListLongMap!12198 Nil!19290))))

(declare-fun d!113643 () Bool)

(declare-fun e!527204 () Bool)

(assert (=> d!113643 e!527204))

(declare-fun res!631563 () Bool)

(assert (=> d!113643 (=> (not res!631563) (not e!527204))))

(assert (=> d!113643 (= res!631563 (not (contains!5126 lt!423984 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!113643 (= lt!423984 e!527199)))

(declare-fun c!97794 () Bool)

(assert (=> d!113643 (= c!97794 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(assert (=> d!113643 (validMask!0 mask!1881)))

(assert (=> d!113643 (= (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) lt!423984)))

(declare-fun b!938625 () Bool)

(declare-fun e!527200 () ListLongMap!12197)

(assert (=> b!938625 (= e!527199 e!527200)))

(declare-fun c!97793 () Bool)

(assert (=> b!938625 (= c!97793 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!938626 () Bool)

(declare-fun e!527198 () Bool)

(assert (=> b!938626 (= e!527198 e!527201)))

(declare-fun c!97795 () Bool)

(assert (=> b!938626 (= c!97795 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun b!938627 () Bool)

(assert (=> b!938627 (= e!527204 e!527198)))

(declare-fun c!97796 () Bool)

(declare-fun e!527202 () Bool)

(assert (=> b!938627 (= c!97796 e!527202)))

(declare-fun res!631562 () Bool)

(assert (=> b!938627 (=> (not res!631562) (not e!527202))))

(assert (=> b!938627 (= res!631562 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun b!938628 () Bool)

(assert (=> b!938628 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(assert (=> b!938628 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27643 _values!1231)))))

(declare-fun e!527203 () Bool)

(assert (=> b!938628 (= e!527203 (= (apply!892 lt!423984 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!938629 () Bool)

(assert (=> b!938629 (= e!527198 e!527203)))

(assert (=> b!938629 (and (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun res!631564 () Bool)

(assert (=> b!938629 (= res!631564 (contains!5126 lt!423984 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!938629 (=> (not res!631564) (not e!527203))))

(declare-fun b!938630 () Bool)

(declare-fun lt!423981 () Unit!31704)

(declare-fun lt!423979 () Unit!31704)

(assert (=> b!938630 (= lt!423981 lt!423979)))

(declare-fun lt!423983 () (_ BitVec 64))

(declare-fun lt!423982 () V!31985)

(declare-fun lt!423980 () ListLongMap!12197)

(declare-fun lt!423985 () (_ BitVec 64))

(assert (=> b!938630 (not (contains!5126 (+!2809 lt!423980 (tuple2!13487 lt!423985 lt!423982)) lt!423983))))

(declare-fun addStillNotContains!223 (ListLongMap!12197 (_ BitVec 64) V!31985 (_ BitVec 64)) Unit!31704)

(assert (=> b!938630 (= lt!423979 (addStillNotContains!223 lt!423980 lt!423985 lt!423982 lt!423983))))

(assert (=> b!938630 (= lt!423983 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!938630 (= lt!423982 (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!938630 (= lt!423985 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!938630 (= lt!423980 call!40873)))

(assert (=> b!938630 (= e!527200 (+!2809 call!40873 (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!938631 () Bool)

(assert (=> b!938631 (= e!527202 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!938631 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))

(declare-fun b!938632 () Bool)

(assert (=> b!938632 (= e!527201 (= lt!423984 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235)))))

(declare-fun b!938633 () Bool)

(assert (=> b!938633 (= e!527200 call!40873)))

(declare-fun b!938634 () Bool)

(declare-fun res!631565 () Bool)

(assert (=> b!938634 (=> (not res!631565) (not e!527204))))

(assert (=> b!938634 (= res!631565 (not (contains!5126 lt!423984 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113643 c!97794) b!938624))

(assert (= (and d!113643 (not c!97794)) b!938625))

(assert (= (and b!938625 c!97793) b!938630))

(assert (= (and b!938625 (not c!97793)) b!938633))

(assert (= (or b!938630 b!938633) bm!40870))

(assert (= (and d!113643 res!631563) b!938634))

(assert (= (and b!938634 res!631565) b!938627))

(assert (= (and b!938627 res!631562) b!938631))

(assert (= (and b!938627 c!97796) b!938629))

(assert (= (and b!938627 (not c!97796)) b!938626))

(assert (= (and b!938629 res!631564) b!938628))

(assert (= (and b!938626 c!97795) b!938632))

(assert (= (and b!938626 (not c!97795)) b!938623))

(declare-fun b_lambda!14265 () Bool)

(assert (=> (not b_lambda!14265) (not b!938628)))

(assert (=> b!938628 t!27601))

(declare-fun b_and!29163 () Bool)

(assert (= b_and!29161 (and (=> t!27601 result!12145) b_and!29163)))

(declare-fun b_lambda!14267 () Bool)

(assert (=> (not b_lambda!14267) (not b!938630)))

(assert (=> b!938630 t!27601))

(declare-fun b_and!29165 () Bool)

(assert (= b_and!29163 (and (=> t!27601 result!12145) b_and!29165)))

(declare-fun m!874173 () Bool)

(assert (=> b!938630 m!874173))

(declare-fun m!874175 () Bool)

(assert (=> b!938630 m!874175))

(assert (=> b!938630 m!873735))

(assert (=> b!938630 m!873737))

(assert (=> b!938630 m!873743))

(assert (=> b!938630 m!874173))

(declare-fun m!874177 () Bool)

(assert (=> b!938630 m!874177))

(assert (=> b!938630 m!873735))

(declare-fun m!874179 () Bool)

(assert (=> b!938630 m!874179))

(assert (=> b!938630 m!873737))

(assert (=> b!938630 m!873771))

(declare-fun m!874181 () Bool)

(assert (=> b!938634 m!874181))

(assert (=> b!938629 m!873771))

(assert (=> b!938629 m!873771))

(declare-fun m!874183 () Bool)

(assert (=> b!938629 m!874183))

(assert (=> b!938625 m!873771))

(assert (=> b!938625 m!873771))

(assert (=> b!938625 m!873893))

(assert (=> b!938628 m!873771))

(declare-fun m!874185 () Bool)

(assert (=> b!938628 m!874185))

(assert (=> b!938628 m!873735))

(assert (=> b!938628 m!873735))

(assert (=> b!938628 m!873737))

(assert (=> b!938628 m!873743))

(assert (=> b!938628 m!873737))

(assert (=> b!938628 m!873771))

(declare-fun m!874187 () Bool)

(assert (=> bm!40870 m!874187))

(assert (=> b!938632 m!874187))

(declare-fun m!874189 () Bool)

(assert (=> b!938623 m!874189))

(assert (=> b!938631 m!873771))

(assert (=> b!938631 m!873771))

(assert (=> b!938631 m!873893))

(declare-fun m!874191 () Bool)

(assert (=> d!113643 m!874191))

(assert (=> d!113643 m!873765))

(assert (=> bm!40839 d!113643))

(declare-fun d!113645 () Bool)

(declare-fun e!527205 () Bool)

(assert (=> d!113645 e!527205))

(declare-fun res!631566 () Bool)

(assert (=> d!113645 (=> (not res!631566) (not e!527205))))

(declare-fun lt!423988 () ListLongMap!12197)

(assert (=> d!113645 (= res!631566 (contains!5126 lt!423988 (_1!6753 (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun lt!423989 () List!19293)

(assert (=> d!113645 (= lt!423988 (ListLongMap!12198 lt!423989))))

(declare-fun lt!423987 () Unit!31704)

(declare-fun lt!423986 () Unit!31704)

(assert (=> d!113645 (= lt!423987 lt!423986)))

(assert (=> d!113645 (= (getValueByKey!487 lt!423989 (_1!6753 (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!492 (_2!6753 (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113645 (= lt!423986 (lemmaContainsTupThenGetReturnValue!261 lt!423989 (_1!6753 (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6753 (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113645 (= lt!423989 (insertStrictlySorted!317 (toList!6114 (ite c!97758 call!40859 (ite c!97760 call!40865 call!40864))) (_1!6753 (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6753 (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113645 (= (+!2809 (ite c!97758 call!40859 (ite c!97760 call!40865 call!40864)) (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) lt!423988)))

(declare-fun b!938635 () Bool)

(declare-fun res!631567 () Bool)

(assert (=> b!938635 (=> (not res!631567) (not e!527205))))

(assert (=> b!938635 (= res!631567 (= (getValueByKey!487 (toList!6114 lt!423988) (_1!6753 (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!492 (_2!6753 (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))))

(declare-fun b!938636 () Bool)

(assert (=> b!938636 (= e!527205 (contains!5128 (toList!6114 lt!423988) (ite (or c!97758 c!97760) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (= (and d!113645 res!631566) b!938635))

(assert (= (and b!938635 res!631567) b!938636))

(declare-fun m!874193 () Bool)

(assert (=> d!113645 m!874193))

(declare-fun m!874195 () Bool)

(assert (=> d!113645 m!874195))

(declare-fun m!874197 () Bool)

(assert (=> d!113645 m!874197))

(declare-fun m!874199 () Bool)

(assert (=> d!113645 m!874199))

(declare-fun m!874201 () Bool)

(assert (=> b!938635 m!874201))

(declare-fun m!874203 () Bool)

(assert (=> b!938636 m!874203))

(assert (=> bm!40862 d!113645))

(declare-fun d!113647 () Bool)

(assert (=> d!113647 (= (apply!892 lt!423879 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14359 (getValueByKey!487 (toList!6114 lt!423879) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26353 () Bool)

(assert (= bs!26353 d!113647))

(declare-fun m!874205 () Bool)

(assert (=> bs!26353 m!874205))

(assert (=> bs!26353 m!874205))

(declare-fun m!874207 () Bool)

(assert (=> bs!26353 m!874207))

(assert (=> b!938457 d!113647))

(declare-fun d!113649 () Bool)

(assert (=> d!113649 (= (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (and (not (= (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938424 d!113649))

(declare-fun d!113651 () Bool)

(declare-fun e!527206 () Bool)

(assert (=> d!113651 e!527206))

(declare-fun res!631568 () Bool)

(assert (=> d!113651 (=> res!631568 e!527206)))

(declare-fun lt!423990 () Bool)

(assert (=> d!113651 (= res!631568 (not lt!423990))))

(declare-fun lt!423992 () Bool)

(assert (=> d!113651 (= lt!423990 lt!423992)))

(declare-fun lt!423993 () Unit!31704)

(declare-fun e!527207 () Unit!31704)

(assert (=> d!113651 (= lt!423993 e!527207)))

(declare-fun c!97797 () Bool)

(assert (=> d!113651 (= c!97797 lt!423992)))

(assert (=> d!113651 (= lt!423992 (containsKey!452 (toList!6114 lt!423853) (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> d!113651 (= (contains!5126 lt!423853 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) lt!423990)))

(declare-fun b!938637 () Bool)

(declare-fun lt!423991 () Unit!31704)

(assert (=> b!938637 (= e!527207 lt!423991)))

(assert (=> b!938637 (= lt!423991 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423853) (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!938637 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423853) (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!938638 () Bool)

(declare-fun Unit!31718 () Unit!31704)

(assert (=> b!938638 (= e!527207 Unit!31718)))

(declare-fun b!938639 () Bool)

(assert (=> b!938639 (= e!527206 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423853) (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (= (and d!113651 c!97797) b!938637))

(assert (= (and d!113651 (not c!97797)) b!938638))

(assert (= (and d!113651 (not res!631568)) b!938639))

(assert (=> d!113651 m!873771))

(declare-fun m!874209 () Bool)

(assert (=> d!113651 m!874209))

(assert (=> b!938637 m!873771))

(declare-fun m!874211 () Bool)

(assert (=> b!938637 m!874211))

(assert (=> b!938637 m!873771))

(declare-fun m!874213 () Bool)

(assert (=> b!938637 m!874213))

(assert (=> b!938637 m!874213))

(declare-fun m!874215 () Bool)

(assert (=> b!938637 m!874215))

(assert (=> b!938639 m!873771))

(assert (=> b!938639 m!874213))

(assert (=> b!938639 m!874213))

(assert (=> b!938639 m!874215))

(assert (=> b!938439 d!113651))

(declare-fun b!938640 () Bool)

(declare-fun e!527208 () Option!493)

(assert (=> b!938640 (= e!527208 (Some!492 (_2!6753 (h!20435 (toList!6114 lt!423937)))))))

(declare-fun b!938642 () Bool)

(declare-fun e!527209 () Option!493)

(assert (=> b!938642 (= e!527209 (getValueByKey!487 (t!27602 (toList!6114 lt!423937)) (_1!6753 lt!423732)))))

(declare-fun b!938643 () Bool)

(assert (=> b!938643 (= e!527209 None!491)))

(declare-fun b!938641 () Bool)

(assert (=> b!938641 (= e!527208 e!527209)))

(declare-fun c!97799 () Bool)

(assert (=> b!938641 (= c!97799 (and ((_ is Cons!19289) (toList!6114 lt!423937)) (not (= (_1!6753 (h!20435 (toList!6114 lt!423937))) (_1!6753 lt!423732)))))))

(declare-fun d!113653 () Bool)

(declare-fun c!97798 () Bool)

(assert (=> d!113653 (= c!97798 (and ((_ is Cons!19289) (toList!6114 lt!423937)) (= (_1!6753 (h!20435 (toList!6114 lt!423937))) (_1!6753 lt!423732))))))

(assert (=> d!113653 (= (getValueByKey!487 (toList!6114 lt!423937) (_1!6753 lt!423732)) e!527208)))

(assert (= (and d!113653 c!97798) b!938640))

(assert (= (and d!113653 (not c!97798)) b!938641))

(assert (= (and b!938641 c!97799) b!938642))

(assert (= (and b!938641 (not c!97799)) b!938643))

(declare-fun m!874217 () Bool)

(assert (=> b!938642 m!874217))

(assert (=> b!938535 d!113653))

(declare-fun d!113655 () Bool)

(assert (=> d!113655 (= (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (and (not (= (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938495 d!113655))

(declare-fun d!113657 () Bool)

(assert (=> d!113657 (= (get!14359 (getValueByKey!487 (toList!6114 lt!423722) k0!1099)) (v!12713 (getValueByKey!487 (toList!6114 lt!423722) k0!1099)))))

(assert (=> d!113605 d!113657))

(assert (=> d!113605 d!113625))

(declare-fun d!113659 () Bool)

(declare-fun res!631573 () Bool)

(declare-fun e!527214 () Bool)

(assert (=> d!113659 (=> res!631573 e!527214)))

(assert (=> d!113659 (= res!631573 (and ((_ is Cons!19289) (toList!6114 lt!423722)) (= (_1!6753 (h!20435 (toList!6114 lt!423722))) k0!1099)))))

(assert (=> d!113659 (= (containsKey!452 (toList!6114 lt!423722) k0!1099) e!527214)))

(declare-fun b!938648 () Bool)

(declare-fun e!527215 () Bool)

(assert (=> b!938648 (= e!527214 e!527215)))

(declare-fun res!631574 () Bool)

(assert (=> b!938648 (=> (not res!631574) (not e!527215))))

(assert (=> b!938648 (= res!631574 (and (or (not ((_ is Cons!19289) (toList!6114 lt!423722))) (bvsle (_1!6753 (h!20435 (toList!6114 lt!423722))) k0!1099)) ((_ is Cons!19289) (toList!6114 lt!423722)) (bvslt (_1!6753 (h!20435 (toList!6114 lt!423722))) k0!1099)))))

(declare-fun b!938649 () Bool)

(assert (=> b!938649 (= e!527215 (containsKey!452 (t!27602 (toList!6114 lt!423722)) k0!1099))))

(assert (= (and d!113659 (not res!631573)) b!938648))

(assert (= (and b!938648 res!631574) b!938649))

(declare-fun m!874219 () Bool)

(assert (=> b!938649 m!874219))

(assert (=> d!113561 d!113659))

(assert (=> d!113563 d!113595))

(declare-fun d!113661 () Bool)

(declare-fun e!527216 () Bool)

(assert (=> d!113661 e!527216))

(declare-fun res!631575 () Bool)

(assert (=> d!113661 (=> (not res!631575) (not e!527216))))

(declare-fun lt!423996 () ListLongMap!12197)

(assert (=> d!113661 (= res!631575 (contains!5126 lt!423996 (_1!6753 (tuple2!13487 lt!423899 zeroValue!1173))))))

(declare-fun lt!423997 () List!19293)

(assert (=> d!113661 (= lt!423996 (ListLongMap!12198 lt!423997))))

(declare-fun lt!423995 () Unit!31704)

(declare-fun lt!423994 () Unit!31704)

(assert (=> d!113661 (= lt!423995 lt!423994)))

(assert (=> d!113661 (= (getValueByKey!487 lt!423997 (_1!6753 (tuple2!13487 lt!423899 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423899 zeroValue!1173))))))

(assert (=> d!113661 (= lt!423994 (lemmaContainsTupThenGetReturnValue!261 lt!423997 (_1!6753 (tuple2!13487 lt!423899 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423899 zeroValue!1173))))))

(assert (=> d!113661 (= lt!423997 (insertStrictlySorted!317 (toList!6114 lt!423906) (_1!6753 (tuple2!13487 lt!423899 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423899 zeroValue!1173))))))

(assert (=> d!113661 (= (+!2809 lt!423906 (tuple2!13487 lt!423899 zeroValue!1173)) lt!423996)))

(declare-fun b!938650 () Bool)

(declare-fun res!631576 () Bool)

(assert (=> b!938650 (=> (not res!631576) (not e!527216))))

(assert (=> b!938650 (= res!631576 (= (getValueByKey!487 (toList!6114 lt!423996) (_1!6753 (tuple2!13487 lt!423899 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423899 zeroValue!1173)))))))

(declare-fun b!938651 () Bool)

(assert (=> b!938651 (= e!527216 (contains!5128 (toList!6114 lt!423996) (tuple2!13487 lt!423899 zeroValue!1173)))))

(assert (= (and d!113661 res!631575) b!938650))

(assert (= (and b!938650 res!631576) b!938651))

(declare-fun m!874221 () Bool)

(assert (=> d!113661 m!874221))

(declare-fun m!874223 () Bool)

(assert (=> d!113661 m!874223))

(declare-fun m!874225 () Bool)

(assert (=> d!113661 m!874225))

(declare-fun m!874227 () Bool)

(assert (=> d!113661 m!874227))

(declare-fun m!874229 () Bool)

(assert (=> b!938650 m!874229))

(declare-fun m!874231 () Bool)

(assert (=> b!938651 m!874231))

(assert (=> b!938493 d!113661))

(declare-fun d!113663 () Bool)

(assert (=> d!113663 (= (apply!892 (+!2809 lt!423905 (tuple2!13487 lt!423903 minValue!1173)) lt!423911) (apply!892 lt!423905 lt!423911))))

(declare-fun lt!423998 () Unit!31704)

(assert (=> d!113663 (= lt!423998 (choose!1567 lt!423905 lt!423903 minValue!1173 lt!423911))))

(declare-fun e!527217 () Bool)

(assert (=> d!113663 e!527217))

(declare-fun res!631577 () Bool)

(assert (=> d!113663 (=> (not res!631577) (not e!527217))))

(assert (=> d!113663 (= res!631577 (contains!5126 lt!423905 lt!423911))))

(assert (=> d!113663 (= (addApplyDifferent!439 lt!423905 lt!423903 minValue!1173 lt!423911) lt!423998)))

(declare-fun b!938652 () Bool)

(assert (=> b!938652 (= e!527217 (not (= lt!423911 lt!423903)))))

(assert (= (and d!113663 res!631577) b!938652))

(assert (=> d!113663 m!873979))

(assert (=> d!113663 m!874011))

(assert (=> d!113663 m!873979))

(assert (=> d!113663 m!873981))

(declare-fun m!874233 () Bool)

(assert (=> d!113663 m!874233))

(declare-fun m!874235 () Bool)

(assert (=> d!113663 m!874235))

(assert (=> b!938493 d!113663))

(declare-fun d!113665 () Bool)

(assert (=> d!113665 (= (apply!892 lt!423902 lt!423898) (get!14359 (getValueByKey!487 (toList!6114 lt!423902) lt!423898)))))

(declare-fun bs!26354 () Bool)

(assert (= bs!26354 d!113665))

(declare-fun m!874237 () Bool)

(assert (=> bs!26354 m!874237))

(assert (=> bs!26354 m!874237))

(declare-fun m!874239 () Bool)

(assert (=> bs!26354 m!874239))

(assert (=> b!938493 d!113665))

(declare-fun d!113667 () Bool)

(assert (=> d!113667 (= (apply!892 (+!2809 lt!423902 (tuple2!13487 lt!423893 minValue!1173)) lt!423898) (apply!892 lt!423902 lt!423898))))

(declare-fun lt!423999 () Unit!31704)

(assert (=> d!113667 (= lt!423999 (choose!1567 lt!423902 lt!423893 minValue!1173 lt!423898))))

(declare-fun e!527218 () Bool)

(assert (=> d!113667 e!527218))

(declare-fun res!631578 () Bool)

(assert (=> d!113667 (=> (not res!631578) (not e!527218))))

(assert (=> d!113667 (= res!631578 (contains!5126 lt!423902 lt!423898))))

(assert (=> d!113667 (= (addApplyDifferent!439 lt!423902 lt!423893 minValue!1173 lt!423898) lt!423999)))

(declare-fun b!938653 () Bool)

(assert (=> b!938653 (= e!527218 (not (= lt!423898 lt!423893)))))

(assert (= (and d!113667 res!631578) b!938653))

(assert (=> d!113667 m!873985))

(assert (=> d!113667 m!873999))

(assert (=> d!113667 m!873985))

(assert (=> d!113667 m!873987))

(declare-fun m!874241 () Bool)

(assert (=> d!113667 m!874241))

(declare-fun m!874243 () Bool)

(assert (=> d!113667 m!874243))

(assert (=> b!938493 d!113667))

(declare-fun d!113669 () Bool)

(assert (=> d!113669 (contains!5126 (+!2809 lt!423906 (tuple2!13487 lt!423899 zeroValue!1173)) lt!423897)))

(declare-fun lt!424000 () Unit!31704)

(assert (=> d!113669 (= lt!424000 (choose!1569 lt!423906 lt!423899 zeroValue!1173 lt!423897))))

(assert (=> d!113669 (contains!5126 lt!423906 lt!423897)))

(assert (=> d!113669 (= (addStillContains!565 lt!423906 lt!423899 zeroValue!1173 lt!423897) lt!424000)))

(declare-fun bs!26355 () Bool)

(assert (= bs!26355 d!113669))

(assert (=> bs!26355 m!874003))

(assert (=> bs!26355 m!874003))

(assert (=> bs!26355 m!874009))

(declare-fun m!874245 () Bool)

(assert (=> bs!26355 m!874245))

(declare-fun m!874247 () Bool)

(assert (=> bs!26355 m!874247))

(assert (=> b!938493 d!113669))

(declare-fun d!113671 () Bool)

(declare-fun e!527219 () Bool)

(assert (=> d!113671 e!527219))

(declare-fun res!631579 () Bool)

(assert (=> d!113671 (=> (not res!631579) (not e!527219))))

(declare-fun lt!424003 () ListLongMap!12197)

(assert (=> d!113671 (= res!631579 (contains!5126 lt!424003 (_1!6753 (tuple2!13487 lt!423893 minValue!1173))))))

(declare-fun lt!424004 () List!19293)

(assert (=> d!113671 (= lt!424003 (ListLongMap!12198 lt!424004))))

(declare-fun lt!424002 () Unit!31704)

(declare-fun lt!424001 () Unit!31704)

(assert (=> d!113671 (= lt!424002 lt!424001)))

(assert (=> d!113671 (= (getValueByKey!487 lt!424004 (_1!6753 (tuple2!13487 lt!423893 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423893 minValue!1173))))))

(assert (=> d!113671 (= lt!424001 (lemmaContainsTupThenGetReturnValue!261 lt!424004 (_1!6753 (tuple2!13487 lt!423893 minValue!1173)) (_2!6753 (tuple2!13487 lt!423893 minValue!1173))))))

(assert (=> d!113671 (= lt!424004 (insertStrictlySorted!317 (toList!6114 lt!423902) (_1!6753 (tuple2!13487 lt!423893 minValue!1173)) (_2!6753 (tuple2!13487 lt!423893 minValue!1173))))))

(assert (=> d!113671 (= (+!2809 lt!423902 (tuple2!13487 lt!423893 minValue!1173)) lt!424003)))

(declare-fun b!938654 () Bool)

(declare-fun res!631580 () Bool)

(assert (=> b!938654 (=> (not res!631580) (not e!527219))))

(assert (=> b!938654 (= res!631580 (= (getValueByKey!487 (toList!6114 lt!424003) (_1!6753 (tuple2!13487 lt!423893 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423893 minValue!1173)))))))

(declare-fun b!938655 () Bool)

(assert (=> b!938655 (= e!527219 (contains!5128 (toList!6114 lt!424003) (tuple2!13487 lt!423893 minValue!1173)))))

(assert (= (and d!113671 res!631579) b!938654))

(assert (= (and b!938654 res!631580) b!938655))

(declare-fun m!874249 () Bool)

(assert (=> d!113671 m!874249))

(declare-fun m!874251 () Bool)

(assert (=> d!113671 m!874251))

(declare-fun m!874253 () Bool)

(assert (=> d!113671 m!874253))

(declare-fun m!874255 () Bool)

(assert (=> d!113671 m!874255))

(declare-fun m!874257 () Bool)

(assert (=> b!938654 m!874257))

(declare-fun m!874259 () Bool)

(assert (=> b!938655 m!874259))

(assert (=> b!938493 d!113671))

(declare-fun d!113673 () Bool)

(declare-fun e!527220 () Bool)

(assert (=> d!113673 e!527220))

(declare-fun res!631581 () Bool)

(assert (=> d!113673 (=> (not res!631581) (not e!527220))))

(declare-fun lt!424007 () ListLongMap!12197)

(assert (=> d!113673 (= res!631581 (contains!5126 lt!424007 (_1!6753 (tuple2!13487 lt!423903 minValue!1173))))))

(declare-fun lt!424008 () List!19293)

(assert (=> d!113673 (= lt!424007 (ListLongMap!12198 lt!424008))))

(declare-fun lt!424006 () Unit!31704)

(declare-fun lt!424005 () Unit!31704)

(assert (=> d!113673 (= lt!424006 lt!424005)))

(assert (=> d!113673 (= (getValueByKey!487 lt!424008 (_1!6753 (tuple2!13487 lt!423903 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423903 minValue!1173))))))

(assert (=> d!113673 (= lt!424005 (lemmaContainsTupThenGetReturnValue!261 lt!424008 (_1!6753 (tuple2!13487 lt!423903 minValue!1173)) (_2!6753 (tuple2!13487 lt!423903 minValue!1173))))))

(assert (=> d!113673 (= lt!424008 (insertStrictlySorted!317 (toList!6114 lt!423905) (_1!6753 (tuple2!13487 lt!423903 minValue!1173)) (_2!6753 (tuple2!13487 lt!423903 minValue!1173))))))

(assert (=> d!113673 (= (+!2809 lt!423905 (tuple2!13487 lt!423903 minValue!1173)) lt!424007)))

(declare-fun b!938656 () Bool)

(declare-fun res!631582 () Bool)

(assert (=> b!938656 (=> (not res!631582) (not e!527220))))

(assert (=> b!938656 (= res!631582 (= (getValueByKey!487 (toList!6114 lt!424007) (_1!6753 (tuple2!13487 lt!423903 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423903 minValue!1173)))))))

(declare-fun b!938657 () Bool)

(assert (=> b!938657 (= e!527220 (contains!5128 (toList!6114 lt!424007) (tuple2!13487 lt!423903 minValue!1173)))))

(assert (= (and d!113673 res!631581) b!938656))

(assert (= (and b!938656 res!631582) b!938657))

(declare-fun m!874261 () Bool)

(assert (=> d!113673 m!874261))

(declare-fun m!874263 () Bool)

(assert (=> d!113673 m!874263))

(declare-fun m!874265 () Bool)

(assert (=> d!113673 m!874265))

(declare-fun m!874267 () Bool)

(assert (=> d!113673 m!874267))

(declare-fun m!874269 () Bool)

(assert (=> b!938656 m!874269))

(declare-fun m!874271 () Bool)

(assert (=> b!938657 m!874271))

(assert (=> b!938493 d!113673))

(declare-fun d!113675 () Bool)

(assert (=> d!113675 (= (apply!892 lt!423901 lt!423890) (get!14359 (getValueByKey!487 (toList!6114 lt!423901) lt!423890)))))

(declare-fun bs!26356 () Bool)

(assert (= bs!26356 d!113675))

(declare-fun m!874273 () Bool)

(assert (=> bs!26356 m!874273))

(assert (=> bs!26356 m!874273))

(declare-fun m!874275 () Bool)

(assert (=> bs!26356 m!874275))

(assert (=> b!938493 d!113675))

(declare-fun d!113677 () Bool)

(assert (=> d!113677 (= (apply!892 (+!2809 lt!423901 (tuple2!13487 lt!423895 zeroValue!1173)) lt!423890) (apply!892 lt!423901 lt!423890))))

(declare-fun lt!424009 () Unit!31704)

(assert (=> d!113677 (= lt!424009 (choose!1567 lt!423901 lt!423895 zeroValue!1173 lt!423890))))

(declare-fun e!527221 () Bool)

(assert (=> d!113677 e!527221))

(declare-fun res!631583 () Bool)

(assert (=> d!113677 (=> (not res!631583) (not e!527221))))

(assert (=> d!113677 (= res!631583 (contains!5126 lt!423901 lt!423890))))

(assert (=> d!113677 (= (addApplyDifferent!439 lt!423901 lt!423895 zeroValue!1173 lt!423890) lt!424009)))

(declare-fun b!938658 () Bool)

(assert (=> b!938658 (= e!527221 (not (= lt!423890 lt!423895)))))

(assert (= (and d!113677 res!631583) b!938658))

(assert (=> d!113677 m!873991))

(assert (=> d!113677 m!873989))

(assert (=> d!113677 m!873991))

(assert (=> d!113677 m!873993))

(declare-fun m!874277 () Bool)

(assert (=> d!113677 m!874277))

(declare-fun m!874279 () Bool)

(assert (=> d!113677 m!874279))

(assert (=> b!938493 d!113677))

(declare-fun d!113679 () Bool)

(assert (=> d!113679 (= (apply!892 (+!2809 lt!423902 (tuple2!13487 lt!423893 minValue!1173)) lt!423898) (get!14359 (getValueByKey!487 (toList!6114 (+!2809 lt!423902 (tuple2!13487 lt!423893 minValue!1173))) lt!423898)))))

(declare-fun bs!26357 () Bool)

(assert (= bs!26357 d!113679))

(declare-fun m!874281 () Bool)

(assert (=> bs!26357 m!874281))

(assert (=> bs!26357 m!874281))

(declare-fun m!874283 () Bool)

(assert (=> bs!26357 m!874283))

(assert (=> b!938493 d!113679))

(declare-fun d!113681 () Bool)

(declare-fun e!527222 () Bool)

(assert (=> d!113681 e!527222))

(declare-fun res!631584 () Bool)

(assert (=> d!113681 (=> res!631584 e!527222)))

(declare-fun lt!424010 () Bool)

(assert (=> d!113681 (= res!631584 (not lt!424010))))

(declare-fun lt!424012 () Bool)

(assert (=> d!113681 (= lt!424010 lt!424012)))

(declare-fun lt!424013 () Unit!31704)

(declare-fun e!527223 () Unit!31704)

(assert (=> d!113681 (= lt!424013 e!527223)))

(declare-fun c!97800 () Bool)

(assert (=> d!113681 (= c!97800 lt!424012)))

(assert (=> d!113681 (= lt!424012 (containsKey!452 (toList!6114 (+!2809 lt!423906 (tuple2!13487 lt!423899 zeroValue!1173))) lt!423897))))

(assert (=> d!113681 (= (contains!5126 (+!2809 lt!423906 (tuple2!13487 lt!423899 zeroValue!1173)) lt!423897) lt!424010)))

(declare-fun b!938659 () Bool)

(declare-fun lt!424011 () Unit!31704)

(assert (=> b!938659 (= e!527223 lt!424011)))

(assert (=> b!938659 (= lt!424011 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 (+!2809 lt!423906 (tuple2!13487 lt!423899 zeroValue!1173))) lt!423897))))

(assert (=> b!938659 (isDefined!357 (getValueByKey!487 (toList!6114 (+!2809 lt!423906 (tuple2!13487 lt!423899 zeroValue!1173))) lt!423897))))

(declare-fun b!938660 () Bool)

(declare-fun Unit!31719 () Unit!31704)

(assert (=> b!938660 (= e!527223 Unit!31719)))

(declare-fun b!938661 () Bool)

(assert (=> b!938661 (= e!527222 (isDefined!357 (getValueByKey!487 (toList!6114 (+!2809 lt!423906 (tuple2!13487 lt!423899 zeroValue!1173))) lt!423897)))))

(assert (= (and d!113681 c!97800) b!938659))

(assert (= (and d!113681 (not c!97800)) b!938660))

(assert (= (and d!113681 (not res!631584)) b!938661))

(declare-fun m!874285 () Bool)

(assert (=> d!113681 m!874285))

(declare-fun m!874287 () Bool)

(assert (=> b!938659 m!874287))

(declare-fun m!874289 () Bool)

(assert (=> b!938659 m!874289))

(assert (=> b!938659 m!874289))

(declare-fun m!874291 () Bool)

(assert (=> b!938659 m!874291))

(assert (=> b!938661 m!874289))

(assert (=> b!938661 m!874289))

(assert (=> b!938661 m!874291))

(assert (=> b!938493 d!113681))

(declare-fun d!113683 () Bool)

(assert (=> d!113683 (= (apply!892 (+!2809 lt!423901 (tuple2!13487 lt!423895 zeroValue!1173)) lt!423890) (get!14359 (getValueByKey!487 (toList!6114 (+!2809 lt!423901 (tuple2!13487 lt!423895 zeroValue!1173))) lt!423890)))))

(declare-fun bs!26358 () Bool)

(assert (= bs!26358 d!113683))

(declare-fun m!874293 () Bool)

(assert (=> bs!26358 m!874293))

(assert (=> bs!26358 m!874293))

(declare-fun m!874295 () Bool)

(assert (=> bs!26358 m!874295))

(assert (=> b!938493 d!113683))

(declare-fun d!113685 () Bool)

(declare-fun e!527224 () Bool)

(assert (=> d!113685 e!527224))

(declare-fun res!631585 () Bool)

(assert (=> d!113685 (=> (not res!631585) (not e!527224))))

(declare-fun lt!424016 () ListLongMap!12197)

(assert (=> d!113685 (= res!631585 (contains!5126 lt!424016 (_1!6753 (tuple2!13487 lt!423895 zeroValue!1173))))))

(declare-fun lt!424017 () List!19293)

(assert (=> d!113685 (= lt!424016 (ListLongMap!12198 lt!424017))))

(declare-fun lt!424015 () Unit!31704)

(declare-fun lt!424014 () Unit!31704)

(assert (=> d!113685 (= lt!424015 lt!424014)))

(assert (=> d!113685 (= (getValueByKey!487 lt!424017 (_1!6753 (tuple2!13487 lt!423895 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423895 zeroValue!1173))))))

(assert (=> d!113685 (= lt!424014 (lemmaContainsTupThenGetReturnValue!261 lt!424017 (_1!6753 (tuple2!13487 lt!423895 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423895 zeroValue!1173))))))

(assert (=> d!113685 (= lt!424017 (insertStrictlySorted!317 (toList!6114 lt!423901) (_1!6753 (tuple2!13487 lt!423895 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423895 zeroValue!1173))))))

(assert (=> d!113685 (= (+!2809 lt!423901 (tuple2!13487 lt!423895 zeroValue!1173)) lt!424016)))

(declare-fun b!938662 () Bool)

(declare-fun res!631586 () Bool)

(assert (=> b!938662 (=> (not res!631586) (not e!527224))))

(assert (=> b!938662 (= res!631586 (= (getValueByKey!487 (toList!6114 lt!424016) (_1!6753 (tuple2!13487 lt!423895 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423895 zeroValue!1173)))))))

(declare-fun b!938663 () Bool)

(assert (=> b!938663 (= e!527224 (contains!5128 (toList!6114 lt!424016) (tuple2!13487 lt!423895 zeroValue!1173)))))

(assert (= (and d!113685 res!631585) b!938662))

(assert (= (and b!938662 res!631586) b!938663))

(declare-fun m!874297 () Bool)

(assert (=> d!113685 m!874297))

(declare-fun m!874299 () Bool)

(assert (=> d!113685 m!874299))

(declare-fun m!874301 () Bool)

(assert (=> d!113685 m!874301))

(declare-fun m!874303 () Bool)

(assert (=> d!113685 m!874303))

(declare-fun m!874305 () Bool)

(assert (=> b!938662 m!874305))

(declare-fun m!874307 () Bool)

(assert (=> b!938663 m!874307))

(assert (=> b!938493 d!113685))

(declare-fun d!113687 () Bool)

(assert (=> d!113687 (= (apply!892 lt!423905 lt!423911) (get!14359 (getValueByKey!487 (toList!6114 lt!423905) lt!423911)))))

(declare-fun bs!26359 () Bool)

(assert (= bs!26359 d!113687))

(declare-fun m!874309 () Bool)

(assert (=> bs!26359 m!874309))

(assert (=> bs!26359 m!874309))

(declare-fun m!874311 () Bool)

(assert (=> bs!26359 m!874311))

(assert (=> b!938493 d!113687))

(declare-fun d!113689 () Bool)

(assert (=> d!113689 (= (apply!892 (+!2809 lt!423905 (tuple2!13487 lt!423903 minValue!1173)) lt!423911) (get!14359 (getValueByKey!487 (toList!6114 (+!2809 lt!423905 (tuple2!13487 lt!423903 minValue!1173))) lt!423911)))))

(declare-fun bs!26360 () Bool)

(assert (= bs!26360 d!113689))

(declare-fun m!874313 () Bool)

(assert (=> bs!26360 m!874313))

(assert (=> bs!26360 m!874313))

(declare-fun m!874315 () Bool)

(assert (=> bs!26360 m!874315))

(assert (=> b!938493 d!113689))

(declare-fun bm!40871 () Bool)

(declare-fun call!40874 () ListLongMap!12197)

(assert (=> bm!40871 (= call!40874 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!938664 () Bool)

(declare-fun e!527228 () Bool)

(declare-fun lt!424023 () ListLongMap!12197)

(assert (=> b!938664 (= e!527228 (isEmpty!704 lt!424023))))

(declare-fun b!938665 () Bool)

(declare-fun e!527226 () ListLongMap!12197)

(assert (=> b!938665 (= e!527226 (ListLongMap!12198 Nil!19290))))

(declare-fun d!113691 () Bool)

(declare-fun e!527231 () Bool)

(assert (=> d!113691 e!527231))

(declare-fun res!631588 () Bool)

(assert (=> d!113691 (=> (not res!631588) (not e!527231))))

(assert (=> d!113691 (= res!631588 (not (contains!5126 lt!424023 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!113691 (= lt!424023 e!527226)))

(declare-fun c!97802 () Bool)

(assert (=> d!113691 (= c!97802 (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)))))

(assert (=> d!113691 (validMask!0 mask!1881)))

(assert (=> d!113691 (= (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!424023)))

(declare-fun b!938666 () Bool)

(declare-fun e!527227 () ListLongMap!12197)

(assert (=> b!938666 (= e!527226 e!527227)))

(declare-fun c!97801 () Bool)

(assert (=> b!938666 (= c!97801 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!938667 () Bool)

(declare-fun e!527225 () Bool)

(assert (=> b!938667 (= e!527225 e!527228)))

(declare-fun c!97803 () Bool)

(assert (=> b!938667 (= c!97803 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)))))

(declare-fun b!938668 () Bool)

(assert (=> b!938668 (= e!527231 e!527225)))

(declare-fun c!97804 () Bool)

(declare-fun e!527229 () Bool)

(assert (=> b!938668 (= c!97804 e!527229)))

(declare-fun res!631587 () Bool)

(assert (=> b!938668 (=> (not res!631587) (not e!527229))))

(assert (=> b!938668 (= res!631587 (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)))))

(declare-fun b!938669 () Bool)

(assert (=> b!938669 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)))))

(assert (=> b!938669 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27643 _values!1231)))))

(declare-fun e!527230 () Bool)

(assert (=> b!938669 (= e!527230 (= (apply!892 lt!424023 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) (get!14358 (select (arr!27183 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!938670 () Bool)

(assert (=> b!938670 (= e!527225 e!527230)))

(assert (=> b!938670 (and (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) (size!27642 _keys!1487)))))

(declare-fun res!631589 () Bool)

(assert (=> b!938670 (= res!631589 (contains!5126 lt!424023 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!938670 (=> (not res!631589) (not e!527230))))

(declare-fun b!938671 () Bool)

(declare-fun lt!424020 () Unit!31704)

(declare-fun lt!424018 () Unit!31704)

(assert (=> b!938671 (= lt!424020 lt!424018)))

(declare-fun lt!424019 () ListLongMap!12197)

(declare-fun lt!424024 () (_ BitVec 64))

(declare-fun lt!424021 () V!31985)

(declare-fun lt!424022 () (_ BitVec 64))

(assert (=> b!938671 (not (contains!5126 (+!2809 lt!424019 (tuple2!13487 lt!424024 lt!424021)) lt!424022))))

(assert (=> b!938671 (= lt!424018 (addStillNotContains!223 lt!424019 lt!424024 lt!424021 lt!424022))))

(assert (=> b!938671 (= lt!424022 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!938671 (= lt!424021 (get!14358 (select (arr!27183 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!938671 (= lt!424024 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!938671 (= lt!424019 call!40874)))

(assert (=> b!938671 (= e!527227 (+!2809 call!40874 (tuple2!13487 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (get!14358 (select (arr!27183 _values!1231) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!938672 () Bool)

(assert (=> b!938672 (= e!527229 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!938672 (bvsge (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) #b00000000000000000000000000000000)))

(declare-fun b!938673 () Bool)

(assert (=> b!938673 (= e!527228 (= lt!424023 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235)))))

(declare-fun b!938674 () Bool)

(assert (=> b!938674 (= e!527227 call!40874)))

(declare-fun b!938675 () Bool)

(declare-fun res!631590 () Bool)

(assert (=> b!938675 (=> (not res!631590) (not e!527231))))

(assert (=> b!938675 (= res!631590 (not (contains!5126 lt!424023 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113691 c!97802) b!938665))

(assert (= (and d!113691 (not c!97802)) b!938666))

(assert (= (and b!938666 c!97801) b!938671))

(assert (= (and b!938666 (not c!97801)) b!938674))

(assert (= (or b!938671 b!938674) bm!40871))

(assert (= (and d!113691 res!631588) b!938675))

(assert (= (and b!938675 res!631590) b!938668))

(assert (= (and b!938668 res!631587) b!938672))

(assert (= (and b!938668 c!97804) b!938670))

(assert (= (and b!938668 (not c!97804)) b!938667))

(assert (= (and b!938670 res!631589) b!938669))

(assert (= (and b!938667 c!97803) b!938673))

(assert (= (and b!938667 (not c!97803)) b!938664))

(declare-fun b_lambda!14269 () Bool)

(assert (=> (not b_lambda!14269) (not b!938669)))

(assert (=> b!938669 t!27601))

(declare-fun b_and!29167 () Bool)

(assert (= b_and!29165 (and (=> t!27601 result!12145) b_and!29167)))

(declare-fun b_lambda!14271 () Bool)

(assert (=> (not b_lambda!14271) (not b!938671)))

(assert (=> b!938671 t!27601))

(declare-fun b_and!29169 () Bool)

(assert (= b_and!29167 (and (=> t!27601 result!12145) b_and!29169)))

(declare-fun m!874317 () Bool)

(assert (=> b!938671 m!874317))

(declare-fun m!874319 () Bool)

(assert (=> b!938671 m!874319))

(assert (=> b!938671 m!874015))

(assert (=> b!938671 m!873737))

(assert (=> b!938671 m!874017))

(assert (=> b!938671 m!874317))

(declare-fun m!874321 () Bool)

(assert (=> b!938671 m!874321))

(assert (=> b!938671 m!874015))

(declare-fun m!874323 () Bool)

(assert (=> b!938671 m!874323))

(assert (=> b!938671 m!873737))

(assert (=> b!938671 m!873995))

(declare-fun m!874325 () Bool)

(assert (=> b!938675 m!874325))

(assert (=> b!938670 m!873995))

(assert (=> b!938670 m!873995))

(declare-fun m!874327 () Bool)

(assert (=> b!938670 m!874327))

(assert (=> b!938666 m!873995))

(assert (=> b!938666 m!873995))

(assert (=> b!938666 m!874027))

(assert (=> b!938669 m!873995))

(declare-fun m!874329 () Bool)

(assert (=> b!938669 m!874329))

(assert (=> b!938669 m!874015))

(assert (=> b!938669 m!874015))

(assert (=> b!938669 m!873737))

(assert (=> b!938669 m!874017))

(assert (=> b!938669 m!873737))

(assert (=> b!938669 m!873995))

(declare-fun m!874331 () Bool)

(assert (=> bm!40871 m!874331))

(assert (=> b!938673 m!874331))

(declare-fun m!874333 () Bool)

(assert (=> b!938664 m!874333))

(assert (=> b!938672 m!873995))

(assert (=> b!938672 m!873995))

(assert (=> b!938672 m!874027))

(declare-fun m!874335 () Bool)

(assert (=> d!113691 m!874335))

(assert (=> d!113691 m!873765))

(assert (=> b!938493 d!113691))

(assert (=> d!113559 d!113595))

(assert (=> b!938438 d!113649))

(declare-fun d!113693 () Bool)

(declare-fun e!527232 () Bool)

(assert (=> d!113693 e!527232))

(declare-fun res!631591 () Bool)

(assert (=> d!113693 (=> res!631591 e!527232)))

(declare-fun lt!424025 () Bool)

(assert (=> d!113693 (= res!631591 (not lt!424025))))

(declare-fun lt!424027 () Bool)

(assert (=> d!113693 (= lt!424025 lt!424027)))

(declare-fun lt!424028 () Unit!31704)

(declare-fun e!527233 () Unit!31704)

(assert (=> d!113693 (= lt!424028 e!527233)))

(declare-fun c!97805 () Bool)

(assert (=> d!113693 (= c!97805 lt!424027)))

(assert (=> d!113693 (= lt!424027 (containsKey!452 (toList!6114 lt!423879) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113693 (= (contains!5126 lt!423879 #b1000000000000000000000000000000000000000000000000000000000000000) lt!424025)))

(declare-fun b!938676 () Bool)

(declare-fun lt!424026 () Unit!31704)

(assert (=> b!938676 (= e!527233 lt!424026)))

(assert (=> b!938676 (= lt!424026 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423879) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938676 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423879) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938677 () Bool)

(declare-fun Unit!31720 () Unit!31704)

(assert (=> b!938677 (= e!527233 Unit!31720)))

(declare-fun b!938678 () Bool)

(assert (=> b!938678 (= e!527232 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423879) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113693 c!97805) b!938676))

(assert (= (and d!113693 (not c!97805)) b!938677))

(assert (= (and d!113693 (not res!631591)) b!938678))

(declare-fun m!874337 () Bool)

(assert (=> d!113693 m!874337))

(declare-fun m!874339 () Bool)

(assert (=> b!938676 m!874339))

(declare-fun m!874341 () Bool)

(assert (=> b!938676 m!874341))

(assert (=> b!938676 m!874341))

(declare-fun m!874343 () Bool)

(assert (=> b!938676 m!874343))

(assert (=> b!938678 m!874341))

(assert (=> b!938678 m!874341))

(assert (=> b!938678 m!874343))

(assert (=> bm!40847 d!113693))

(declare-fun d!113695 () Bool)

(assert (=> d!113695 (= (get!14359 (getValueByKey!487 (toList!6114 lt!423731) k0!1099)) (v!12713 (getValueByKey!487 (toList!6114 lt!423731) k0!1099)))))

(assert (=> d!113569 d!113695))

(declare-fun b!938679 () Bool)

(declare-fun e!527234 () Option!493)

(assert (=> b!938679 (= e!527234 (Some!492 (_2!6753 (h!20435 (toList!6114 lt!423731)))))))

(declare-fun b!938681 () Bool)

(declare-fun e!527235 () Option!493)

(assert (=> b!938681 (= e!527235 (getValueByKey!487 (t!27602 (toList!6114 lt!423731)) k0!1099))))

(declare-fun b!938682 () Bool)

(assert (=> b!938682 (= e!527235 None!491)))

(declare-fun b!938680 () Bool)

(assert (=> b!938680 (= e!527234 e!527235)))

(declare-fun c!97807 () Bool)

(assert (=> b!938680 (= c!97807 (and ((_ is Cons!19289) (toList!6114 lt!423731)) (not (= (_1!6753 (h!20435 (toList!6114 lt!423731))) k0!1099))))))

(declare-fun d!113697 () Bool)

(declare-fun c!97806 () Bool)

(assert (=> d!113697 (= c!97806 (and ((_ is Cons!19289) (toList!6114 lt!423731)) (= (_1!6753 (h!20435 (toList!6114 lt!423731))) k0!1099)))))

(assert (=> d!113697 (= (getValueByKey!487 (toList!6114 lt!423731) k0!1099) e!527234)))

(assert (= (and d!113697 c!97806) b!938679))

(assert (= (and d!113697 (not c!97806)) b!938680))

(assert (= (and b!938680 c!97807) b!938681))

(assert (= (and b!938680 (not c!97807)) b!938682))

(declare-fun m!874345 () Bool)

(assert (=> b!938681 m!874345))

(assert (=> d!113569 d!113697))

(declare-fun d!113699 () Bool)

(declare-fun e!527236 () Bool)

(assert (=> d!113699 e!527236))

(declare-fun res!631592 () Bool)

(assert (=> d!113699 (=> (not res!631592) (not e!527236))))

(declare-fun lt!424031 () ListLongMap!12197)

(assert (=> d!113699 (= res!631592 (contains!5126 lt!424031 (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun lt!424032 () List!19293)

(assert (=> d!113699 (= lt!424031 (ListLongMap!12198 lt!424032))))

(declare-fun lt!424030 () Unit!31704)

(declare-fun lt!424029 () Unit!31704)

(assert (=> d!113699 (= lt!424030 lt!424029)))

(assert (=> d!113699 (= (getValueByKey!487 lt!424032 (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113699 (= lt!424029 (lemmaContainsTupThenGetReturnValue!261 lt!424032 (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113699 (= lt!424032 (insertStrictlySorted!317 (toList!6114 call!40844) (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113699 (= (+!2809 call!40844 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) lt!424031)))

(declare-fun b!938683 () Bool)

(declare-fun res!631593 () Bool)

(assert (=> b!938683 (=> (not res!631593) (not e!527236))))

(assert (=> b!938683 (= res!631593 (= (getValueByKey!487 (toList!6114 lt!424031) (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun b!938684 () Bool)

(assert (=> b!938684 (= e!527236 (contains!5128 (toList!6114 lt!424031) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(assert (= (and d!113699 res!631592) b!938683))

(assert (= (and b!938683 res!631593) b!938684))

(declare-fun m!874347 () Bool)

(assert (=> d!113699 m!874347))

(declare-fun m!874349 () Bool)

(assert (=> d!113699 m!874349))

(declare-fun m!874351 () Bool)

(assert (=> d!113699 m!874351))

(declare-fun m!874353 () Bool)

(assert (=> d!113699 m!874353))

(declare-fun m!874355 () Bool)

(assert (=> b!938683 m!874355))

(declare-fun m!874357 () Bool)

(assert (=> b!938684 m!874357))

(assert (=> b!938437 d!113699))

(declare-fun d!113701 () Bool)

(assert (=> d!113701 (= (apply!892 lt!423879 (select (arr!27182 _keys!1487) from!1844)) (get!14359 (getValueByKey!487 (toList!6114 lt!423879) (select (arr!27182 _keys!1487) from!1844))))))

(declare-fun bs!26361 () Bool)

(assert (= bs!26361 d!113701))

(assert (=> bs!26361 m!873837))

(declare-fun m!874359 () Bool)

(assert (=> bs!26361 m!874359))

(assert (=> bs!26361 m!874359))

(declare-fun m!874361 () Bool)

(assert (=> bs!26361 m!874361))

(assert (=> b!938467 d!113701))

(declare-fun d!113703 () Bool)

(declare-fun c!97808 () Bool)

(assert (=> d!113703 (= c!97808 ((_ is ValueCellFull!9651) (select (arr!27183 _values!1231) from!1844)))))

(declare-fun e!527237 () V!31985)

(assert (=> d!113703 (= (get!14358 (select (arr!27183 _values!1231) from!1844) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) e!527237)))

(declare-fun b!938685 () Bool)

(assert (=> b!938685 (= e!527237 (get!14360 (select (arr!27183 _values!1231) from!1844) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!938686 () Bool)

(assert (=> b!938686 (= e!527237 (get!14361 (select (arr!27183 _values!1231) from!1844) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113703 c!97808) b!938685))

(assert (= (and d!113703 (not c!97808)) b!938686))

(assert (=> b!938685 m!873943))

(assert (=> b!938685 m!873737))

(declare-fun m!874363 () Bool)

(assert (=> b!938685 m!874363))

(assert (=> b!938686 m!873943))

(assert (=> b!938686 m!873737))

(declare-fun m!874365 () Bool)

(assert (=> b!938686 m!874365))

(assert (=> b!938467 d!113703))

(assert (=> b!938552 d!113629))

(declare-fun d!113705 () Bool)

(declare-fun e!527238 () Bool)

(assert (=> d!113705 e!527238))

(declare-fun res!631594 () Bool)

(assert (=> d!113705 (=> (not res!631594) (not e!527238))))

(declare-fun lt!424035 () ListLongMap!12197)

(assert (=> d!113705 (= res!631594 (contains!5126 lt!424035 (_1!6753 (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun lt!424036 () List!19293)

(assert (=> d!113705 (= lt!424035 (ListLongMap!12198 lt!424036))))

(declare-fun lt!424034 () Unit!31704)

(declare-fun lt!424033 () Unit!31704)

(assert (=> d!113705 (= lt!424034 lt!424033)))

(assert (=> d!113705 (= (getValueByKey!487 lt!424036 (_1!6753 (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!492 (_2!6753 (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113705 (= lt!424033 (lemmaContainsTupThenGetReturnValue!261 lt!424036 (_1!6753 (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6753 (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113705 (= lt!424036 (insertStrictlySorted!317 (toList!6114 (ite c!97749 call!40849 (ite c!97751 call!40855 call!40854))) (_1!6753 (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6753 (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113705 (= (+!2809 (ite c!97749 call!40849 (ite c!97751 call!40855 call!40854)) (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) lt!424035)))

(declare-fun b!938687 () Bool)

(declare-fun res!631595 () Bool)

(assert (=> b!938687 (=> (not res!631595) (not e!527238))))

(assert (=> b!938687 (= res!631595 (= (getValueByKey!487 (toList!6114 lt!424035) (_1!6753 (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!492 (_2!6753 (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))))

(declare-fun b!938688 () Bool)

(assert (=> b!938688 (= e!527238 (contains!5128 (toList!6114 lt!424035) (ite (or c!97749 c!97751) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (= (and d!113705 res!631594) b!938687))

(assert (= (and b!938687 res!631595) b!938688))

(declare-fun m!874367 () Bool)

(assert (=> d!113705 m!874367))

(declare-fun m!874369 () Bool)

(assert (=> d!113705 m!874369))

(declare-fun m!874371 () Bool)

(assert (=> d!113705 m!874371))

(declare-fun m!874373 () Bool)

(assert (=> d!113705 m!874373))

(declare-fun m!874375 () Bool)

(assert (=> b!938687 m!874375))

(declare-fun m!874377 () Bool)

(assert (=> b!938688 m!874377))

(assert (=> bm!40852 d!113705))

(assert (=> d!113593 d!113579))

(declare-fun d!113707 () Bool)

(assert (=> d!113707 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19291)))

(assert (=> d!113707 true))

(declare-fun _$71!183 () Unit!31704)

(assert (=> d!113707 (= (choose!39 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)) _$71!183)))

(declare-fun bs!26362 () Bool)

(assert (= bs!26362 d!113707))

(assert (=> bs!26362 m!873749))

(assert (=> d!113593 d!113707))

(assert (=> b!938529 d!113555))

(declare-fun d!113709 () Bool)

(declare-fun e!527241 () Bool)

(assert (=> d!113709 e!527241))

(declare-fun c!97811 () Bool)

(assert (=> d!113709 (= c!97811 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> d!113709 true))

(declare-fun _$29!183 () Unit!31704)

(assert (=> d!113709 (= (choose!1570 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235) _$29!183)))

(declare-fun b!938693 () Bool)

(assert (=> b!938693 (= e!527241 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!938694 () Bool)

(assert (=> b!938694 (= e!527241 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!113709 c!97811) b!938693))

(assert (= (and d!113709 (not c!97811)) b!938694))

(assert (=> b!938693 m!873715))

(assert (=> d!113581 d!113709))

(assert (=> d!113581 d!113595))

(declare-fun d!113711 () Bool)

(declare-fun e!527242 () Bool)

(assert (=> d!113711 e!527242))

(declare-fun res!631596 () Bool)

(assert (=> d!113711 (=> res!631596 e!527242)))

(declare-fun lt!424037 () Bool)

(assert (=> d!113711 (= res!631596 (not lt!424037))))

(declare-fun lt!424039 () Bool)

(assert (=> d!113711 (= lt!424037 lt!424039)))

(declare-fun lt!424040 () Unit!31704)

(declare-fun e!527243 () Unit!31704)

(assert (=> d!113711 (= lt!424040 e!527243)))

(declare-fun c!97812 () Bool)

(assert (=> d!113711 (= c!97812 lt!424039)))

(assert (=> d!113711 (= lt!424039 (containsKey!452 (toList!6114 lt!423910) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113711 (= (contains!5126 lt!423910 #b1000000000000000000000000000000000000000000000000000000000000000) lt!424037)))

(declare-fun b!938695 () Bool)

(declare-fun lt!424038 () Unit!31704)

(assert (=> b!938695 (= e!527243 lt!424038)))

(assert (=> b!938695 (= lt!424038 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423910) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938695 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423910) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938696 () Bool)

(declare-fun Unit!31721 () Unit!31704)

(assert (=> b!938696 (= e!527243 Unit!31721)))

(declare-fun b!938697 () Bool)

(assert (=> b!938697 (= e!527242 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423910) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113711 c!97812) b!938695))

(assert (= (and d!113711 (not c!97812)) b!938696))

(assert (= (and d!113711 (not res!631596)) b!938697))

(declare-fun m!874379 () Bool)

(assert (=> d!113711 m!874379))

(declare-fun m!874381 () Bool)

(assert (=> b!938695 m!874381))

(declare-fun m!874383 () Bool)

(assert (=> b!938695 m!874383))

(assert (=> b!938695 m!874383))

(declare-fun m!874385 () Bool)

(assert (=> b!938695 m!874385))

(assert (=> b!938697 m!874383))

(assert (=> b!938697 m!874383))

(assert (=> b!938697 m!874385))

(assert (=> bm!40857 d!113711))

(declare-fun d!113713 () Bool)

(declare-fun e!527244 () Bool)

(assert (=> d!113713 e!527244))

(declare-fun res!631597 () Bool)

(assert (=> d!113713 (=> res!631597 e!527244)))

(declare-fun lt!424041 () Bool)

(assert (=> d!113713 (= res!631597 (not lt!424041))))

(declare-fun lt!424043 () Bool)

(assert (=> d!113713 (= lt!424041 lt!424043)))

(declare-fun lt!424044 () Unit!31704)

(declare-fun e!527245 () Unit!31704)

(assert (=> d!113713 (= lt!424044 e!527245)))

(declare-fun c!97813 () Bool)

(assert (=> d!113713 (= c!97813 lt!424043)))

(assert (=> d!113713 (= lt!424043 (containsKey!452 (toList!6114 lt!423937) (_1!6753 lt!423732)))))

(assert (=> d!113713 (= (contains!5126 lt!423937 (_1!6753 lt!423732)) lt!424041)))

(declare-fun b!938698 () Bool)

(declare-fun lt!424042 () Unit!31704)

(assert (=> b!938698 (= e!527245 lt!424042)))

(assert (=> b!938698 (= lt!424042 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423937) (_1!6753 lt!423732)))))

(assert (=> b!938698 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423937) (_1!6753 lt!423732)))))

(declare-fun b!938699 () Bool)

(declare-fun Unit!31722 () Unit!31704)

(assert (=> b!938699 (= e!527245 Unit!31722)))

(declare-fun b!938700 () Bool)

(assert (=> b!938700 (= e!527244 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423937) (_1!6753 lt!423732))))))

(assert (= (and d!113713 c!97813) b!938698))

(assert (= (and d!113713 (not c!97813)) b!938699))

(assert (= (and d!113713 (not res!631597)) b!938700))

(declare-fun m!874387 () Bool)

(assert (=> d!113713 m!874387))

(declare-fun m!874389 () Bool)

(assert (=> b!938698 m!874389))

(assert (=> b!938698 m!874065))

(assert (=> b!938698 m!874065))

(declare-fun m!874391 () Bool)

(assert (=> b!938698 m!874391))

(assert (=> b!938700 m!874065))

(assert (=> b!938700 m!874065))

(assert (=> b!938700 m!874391))

(assert (=> d!113585 d!113713))

(declare-fun b!938701 () Bool)

(declare-fun e!527246 () Option!493)

(assert (=> b!938701 (= e!527246 (Some!492 (_2!6753 (h!20435 lt!423938))))))

(declare-fun b!938703 () Bool)

(declare-fun e!527247 () Option!493)

(assert (=> b!938703 (= e!527247 (getValueByKey!487 (t!27602 lt!423938) (_1!6753 lt!423732)))))

(declare-fun b!938704 () Bool)

(assert (=> b!938704 (= e!527247 None!491)))

(declare-fun b!938702 () Bool)

(assert (=> b!938702 (= e!527246 e!527247)))

(declare-fun c!97815 () Bool)

(assert (=> b!938702 (= c!97815 (and ((_ is Cons!19289) lt!423938) (not (= (_1!6753 (h!20435 lt!423938)) (_1!6753 lt!423732)))))))

(declare-fun d!113715 () Bool)

(declare-fun c!97814 () Bool)

(assert (=> d!113715 (= c!97814 (and ((_ is Cons!19289) lt!423938) (= (_1!6753 (h!20435 lt!423938)) (_1!6753 lt!423732))))))

(assert (=> d!113715 (= (getValueByKey!487 lt!423938 (_1!6753 lt!423732)) e!527246)))

(assert (= (and d!113715 c!97814) b!938701))

(assert (= (and d!113715 (not c!97814)) b!938702))

(assert (= (and b!938702 c!97815) b!938703))

(assert (= (and b!938702 (not c!97815)) b!938704))

(declare-fun m!874393 () Bool)

(assert (=> b!938703 m!874393))

(assert (=> d!113585 d!113715))

(declare-fun d!113717 () Bool)

(assert (=> d!113717 (= (getValueByKey!487 lt!423938 (_1!6753 lt!423732)) (Some!492 (_2!6753 lt!423732)))))

(declare-fun lt!424047 () Unit!31704)

(declare-fun choose!1572 (List!19293 (_ BitVec 64) V!31985) Unit!31704)

(assert (=> d!113717 (= lt!424047 (choose!1572 lt!423938 (_1!6753 lt!423732) (_2!6753 lt!423732)))))

(declare-fun e!527250 () Bool)

(assert (=> d!113717 e!527250))

(declare-fun res!631602 () Bool)

(assert (=> d!113717 (=> (not res!631602) (not e!527250))))

(assert (=> d!113717 (= res!631602 (isStrictlySorted!500 lt!423938))))

(assert (=> d!113717 (= (lemmaContainsTupThenGetReturnValue!261 lt!423938 (_1!6753 lt!423732) (_2!6753 lt!423732)) lt!424047)))

(declare-fun b!938709 () Bool)

(declare-fun res!631603 () Bool)

(assert (=> b!938709 (=> (not res!631603) (not e!527250))))

(assert (=> b!938709 (= res!631603 (containsKey!452 lt!423938 (_1!6753 lt!423732)))))

(declare-fun b!938710 () Bool)

(assert (=> b!938710 (= e!527250 (contains!5128 lt!423938 (tuple2!13487 (_1!6753 lt!423732) (_2!6753 lt!423732))))))

(assert (= (and d!113717 res!631602) b!938709))

(assert (= (and b!938709 res!631603) b!938710))

(assert (=> d!113717 m!874059))

(declare-fun m!874395 () Bool)

(assert (=> d!113717 m!874395))

(declare-fun m!874397 () Bool)

(assert (=> d!113717 m!874397))

(declare-fun m!874399 () Bool)

(assert (=> b!938709 m!874399))

(declare-fun m!874401 () Bool)

(assert (=> b!938710 m!874401))

(assert (=> d!113585 d!113717))

(declare-fun bm!40878 () Bool)

(declare-fun call!40882 () List!19293)

(declare-fun call!40883 () List!19293)

(assert (=> bm!40878 (= call!40882 call!40883)))

(declare-fun b!938731 () Bool)

(declare-fun e!527263 () List!19293)

(assert (=> b!938731 (= e!527263 call!40882)))

(declare-fun b!938732 () Bool)

(declare-fun e!527265 () List!19293)

(declare-fun call!40881 () List!19293)

(assert (=> b!938732 (= e!527265 call!40881)))

(declare-fun b!938734 () Bool)

(declare-fun e!527261 () List!19293)

(assert (=> b!938734 (= e!527261 e!527263)))

(declare-fun c!97826 () Bool)

(assert (=> b!938734 (= c!97826 (and ((_ is Cons!19289) (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (= (_1!6753 (h!20435 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)))) (_1!6753 lt!423732))))))

(declare-fun b!938735 () Bool)

(declare-fun e!527262 () List!19293)

(assert (=> b!938735 (= e!527262 (insertStrictlySorted!317 (t!27602 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (_1!6753 lt!423732) (_2!6753 lt!423732)))))

(declare-fun b!938736 () Bool)

(declare-fun e!527264 () Bool)

(declare-fun lt!424050 () List!19293)

(assert (=> b!938736 (= e!527264 (contains!5128 lt!424050 (tuple2!13487 (_1!6753 lt!423732) (_2!6753 lt!423732))))))

(declare-fun bm!40879 () Bool)

(assert (=> bm!40879 (= call!40881 call!40882)))

(declare-fun c!97827 () Bool)

(declare-fun bm!40880 () Bool)

(declare-fun $colon$colon!554 (List!19293 tuple2!13486) List!19293)

(assert (=> bm!40880 (= call!40883 ($colon$colon!554 e!527262 (ite c!97827 (h!20435 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (tuple2!13487 (_1!6753 lt!423732) (_2!6753 lt!423732)))))))

(declare-fun c!97825 () Bool)

(assert (=> bm!40880 (= c!97825 c!97827)))

(declare-fun b!938737 () Bool)

(declare-fun c!97824 () Bool)

(assert (=> b!938737 (= c!97824 (and ((_ is Cons!19289) (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (bvsgt (_1!6753 (h!20435 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)))) (_1!6753 lt!423732))))))

(assert (=> b!938737 (= e!527263 e!527265)))

(declare-fun b!938738 () Bool)

(declare-fun res!631608 () Bool)

(assert (=> b!938738 (=> (not res!631608) (not e!527264))))

(assert (=> b!938738 (= res!631608 (containsKey!452 lt!424050 (_1!6753 lt!423732)))))

(declare-fun d!113719 () Bool)

(assert (=> d!113719 e!527264))

(declare-fun res!631609 () Bool)

(assert (=> d!113719 (=> (not res!631609) (not e!527264))))

(assert (=> d!113719 (= res!631609 (isStrictlySorted!500 lt!424050))))

(assert (=> d!113719 (= lt!424050 e!527261)))

(assert (=> d!113719 (= c!97827 (and ((_ is Cons!19289) (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (bvslt (_1!6753 (h!20435 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)))) (_1!6753 lt!423732))))))

(assert (=> d!113719 (isStrictlySorted!500 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)))))

(assert (=> d!113719 (= (insertStrictlySorted!317 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)) (_1!6753 lt!423732) (_2!6753 lt!423732)) lt!424050)))

(declare-fun b!938733 () Bool)

(assert (=> b!938733 (= e!527265 call!40881)))

(declare-fun b!938739 () Bool)

(assert (=> b!938739 (= e!527261 call!40883)))

(declare-fun b!938740 () Bool)

(assert (=> b!938740 (= e!527262 (ite c!97826 (t!27602 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (ite c!97824 (Cons!19289 (h!20435 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235))) (t!27602 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235)))) Nil!19290)))))

(assert (= (and d!113719 c!97827) b!938739))

(assert (= (and d!113719 (not c!97827)) b!938734))

(assert (= (and b!938734 c!97826) b!938731))

(assert (= (and b!938734 (not c!97826)) b!938737))

(assert (= (and b!938737 c!97824) b!938732))

(assert (= (and b!938737 (not c!97824)) b!938733))

(assert (= (or b!938732 b!938733) bm!40879))

(assert (= (or b!938731 bm!40879) bm!40878))

(assert (= (or b!938739 bm!40878) bm!40880))

(assert (= (and bm!40880 c!97825) b!938735))

(assert (= (and bm!40880 (not c!97825)) b!938740))

(assert (= (and d!113719 res!631609) b!938738))

(assert (= (and b!938738 res!631608) b!938736))

(declare-fun m!874403 () Bool)

(assert (=> d!113719 m!874403))

(declare-fun m!874405 () Bool)

(assert (=> d!113719 m!874405))

(declare-fun m!874407 () Bool)

(assert (=> b!938735 m!874407))

(declare-fun m!874409 () Bool)

(assert (=> b!938736 m!874409))

(declare-fun m!874411 () Bool)

(assert (=> bm!40880 m!874411))

(declare-fun m!874413 () Bool)

(assert (=> b!938738 m!874413))

(assert (=> d!113585 d!113719))

(assert (=> b!938508 d!113559))

(declare-fun d!113721 () Bool)

(declare-fun e!527266 () Bool)

(assert (=> d!113721 e!527266))

(declare-fun res!631610 () Bool)

(assert (=> d!113721 (=> (not res!631610) (not e!527266))))

(declare-fun lt!424053 () ListLongMap!12197)

(assert (=> d!113721 (= res!631610 (contains!5126 lt!424053 (_1!6753 (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!424054 () List!19293)

(assert (=> d!113721 (= lt!424053 (ListLongMap!12198 lt!424054))))

(declare-fun lt!424052 () Unit!31704)

(declare-fun lt!424051 () Unit!31704)

(assert (=> d!113721 (= lt!424052 lt!424051)))

(assert (=> d!113721 (= (getValueByKey!487 lt!424054 (_1!6753 (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!492 (_2!6753 (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!113721 (= lt!424051 (lemmaContainsTupThenGetReturnValue!261 lt!424054 (_1!6753 (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!6753 (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!113721 (= lt!424054 (insertStrictlySorted!317 (toList!6114 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235)) (_1!6753 (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!6753 (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!113721 (= (+!2809 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!424053)))

(declare-fun b!938741 () Bool)

(declare-fun res!631611 () Bool)

(assert (=> b!938741 (=> (not res!631611) (not e!527266))))

(assert (=> b!938741 (= res!631611 (= (getValueByKey!487 (toList!6114 lt!424053) (_1!6753 (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!492 (_2!6753 (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!938742 () Bool)

(assert (=> b!938742 (= e!527266 (contains!5128 (toList!6114 lt!424053) (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!113721 res!631610) b!938741))

(assert (= (and b!938741 res!631611) b!938742))

(declare-fun m!874415 () Bool)

(assert (=> d!113721 m!874415))

(declare-fun m!874417 () Bool)

(assert (=> d!113721 m!874417))

(declare-fun m!874419 () Bool)

(assert (=> d!113721 m!874419))

(declare-fun m!874421 () Bool)

(assert (=> d!113721 m!874421))

(declare-fun m!874423 () Bool)

(assert (=> b!938741 m!874423))

(declare-fun m!874425 () Bool)

(assert (=> b!938742 m!874425))

(assert (=> b!938508 d!113721))

(declare-fun b!938743 () Bool)

(declare-fun e!527273 () Bool)

(assert (=> b!938743 (= e!527273 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun b!938744 () Bool)

(declare-fun c!97829 () Bool)

(assert (=> b!938744 (= c!97829 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!527274 () ListLongMap!12197)

(declare-fun e!527271 () ListLongMap!12197)

(assert (=> b!938744 (= e!527274 e!527271)))

(declare-fun b!938745 () Bool)

(declare-fun res!631614 () Bool)

(declare-fun e!527269 () Bool)

(assert (=> b!938745 (=> (not res!631614) (not e!527269))))

(declare-fun e!527270 () Bool)

(assert (=> b!938745 (= res!631614 e!527270)))

(declare-fun c!97833 () Bool)

(assert (=> b!938745 (= c!97833 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!938746 () Bool)

(declare-fun e!527272 () Unit!31704)

(declare-fun Unit!31723 () Unit!31704)

(assert (=> b!938746 (= e!527272 Unit!31723)))

(declare-fun bm!40881 () Bool)

(declare-fun call!40884 () ListLongMap!12197)

(assert (=> bm!40881 (= call!40884 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!938747 () Bool)

(declare-fun call!40885 () ListLongMap!12197)

(assert (=> b!938747 (= e!527271 call!40885)))

(declare-fun b!938748 () Bool)

(declare-fun e!527277 () Bool)

(declare-fun lt!424075 () ListLongMap!12197)

(assert (=> b!938748 (= e!527277 (= (apply!892 lt!424075 #b1000000000000000000000000000000000000000000000000000000000000000) minValue!1173))))

(declare-fun bm!40882 () Bool)

(declare-fun call!40887 () Bool)

(assert (=> bm!40882 (= call!40887 (contains!5126 lt!424075 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938749 () Bool)

(declare-fun e!527275 () Bool)

(assert (=> b!938749 (= e!527275 (not call!40887))))

(declare-fun bm!40883 () Bool)

(declare-fun call!40890 () ListLongMap!12197)

(assert (=> bm!40883 (= call!40890 call!40884)))

(declare-fun b!938750 () Bool)

(declare-fun e!527267 () ListLongMap!12197)

(assert (=> b!938750 (= e!527267 e!527274)))

(declare-fun c!97830 () Bool)

(assert (=> b!938750 (= c!97830 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!938751 () Bool)

(declare-fun e!527268 () Bool)

(assert (=> b!938751 (= e!527270 e!527268)))

(declare-fun res!631612 () Bool)

(declare-fun call!40888 () Bool)

(assert (=> b!938751 (= res!631612 call!40888)))

(assert (=> b!938751 (=> (not res!631612) (not e!527268))))

(declare-fun b!938752 () Bool)

(assert (=> b!938752 (= e!527268 (= (apply!892 lt!424075 #b0000000000000000000000000000000000000000000000000000000000000000) zeroValue!1173))))

(declare-fun b!938753 () Bool)

(assert (=> b!938753 (= e!527274 call!40885)))

(declare-fun d!113723 () Bool)

(assert (=> d!113723 e!527269))

(declare-fun res!631616 () Bool)

(assert (=> d!113723 (=> (not res!631616) (not e!527269))))

(assert (=> d!113723 (= res!631616 (or (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27642 _keys!1487)) (and (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27642 _keys!1487)))))))

(declare-fun lt!424073 () ListLongMap!12197)

(assert (=> d!113723 (= lt!424075 lt!424073)))

(declare-fun lt!424056 () Unit!31704)

(assert (=> d!113723 (= lt!424056 e!527272)))

(declare-fun c!97832 () Bool)

(declare-fun e!527278 () Bool)

(assert (=> d!113723 (= c!97832 e!527278)))

(declare-fun res!631618 () Bool)

(assert (=> d!113723 (=> (not res!631618) (not e!527278))))

(assert (=> d!113723 (= res!631618 (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(assert (=> d!113723 (= lt!424073 e!527267)))

(declare-fun c!97828 () Bool)

(assert (=> d!113723 (= c!97828 (and (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!113723 (validMask!0 mask!1881)))

(assert (=> d!113723 (= (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) lt!424075)))

(declare-fun b!938754 () Bool)

(assert (=> b!938754 (= e!527269 e!527275)))

(declare-fun c!97831 () Bool)

(assert (=> b!938754 (= c!97831 (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!938755 () Bool)

(declare-fun lt!424072 () Unit!31704)

(assert (=> b!938755 (= e!527272 lt!424072)))

(declare-fun lt!424071 () ListLongMap!12197)

(assert (=> b!938755 (= lt!424071 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!424064 () (_ BitVec 64))

(assert (=> b!938755 (= lt!424064 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!424062 () (_ BitVec 64))

(assert (=> b!938755 (= lt!424062 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!424057 () Unit!31704)

(assert (=> b!938755 (= lt!424057 (addStillContains!565 lt!424071 lt!424064 zeroValue!1173 lt!424062))))

(assert (=> b!938755 (contains!5126 (+!2809 lt!424071 (tuple2!13487 lt!424064 zeroValue!1173)) lt!424062)))

(declare-fun lt!424059 () Unit!31704)

(assert (=> b!938755 (= lt!424059 lt!424057)))

(declare-fun lt!424070 () ListLongMap!12197)

(assert (=> b!938755 (= lt!424070 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!424068 () (_ BitVec 64))

(assert (=> b!938755 (= lt!424068 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!424076 () (_ BitVec 64))

(assert (=> b!938755 (= lt!424076 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!424069 () Unit!31704)

(assert (=> b!938755 (= lt!424069 (addApplyDifferent!439 lt!424070 lt!424068 minValue!1173 lt!424076))))

(assert (=> b!938755 (= (apply!892 (+!2809 lt!424070 (tuple2!13487 lt!424068 minValue!1173)) lt!424076) (apply!892 lt!424070 lt!424076))))

(declare-fun lt!424061 () Unit!31704)

(assert (=> b!938755 (= lt!424061 lt!424069)))

(declare-fun lt!424066 () ListLongMap!12197)

(assert (=> b!938755 (= lt!424066 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!424060 () (_ BitVec 64))

(assert (=> b!938755 (= lt!424060 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!424055 () (_ BitVec 64))

(assert (=> b!938755 (= lt!424055 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(declare-fun lt!424065 () Unit!31704)

(assert (=> b!938755 (= lt!424065 (addApplyDifferent!439 lt!424066 lt!424060 zeroValue!1173 lt!424055))))

(assert (=> b!938755 (= (apply!892 (+!2809 lt!424066 (tuple2!13487 lt!424060 zeroValue!1173)) lt!424055) (apply!892 lt!424066 lt!424055))))

(declare-fun lt!424074 () Unit!31704)

(assert (=> b!938755 (= lt!424074 lt!424065)))

(declare-fun lt!424067 () ListLongMap!12197)

(assert (=> b!938755 (= lt!424067 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun lt!424058 () (_ BitVec 64))

(assert (=> b!938755 (= lt!424058 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!424063 () (_ BitVec 64))

(assert (=> b!938755 (= lt!424063 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)))))

(assert (=> b!938755 (= lt!424072 (addApplyDifferent!439 lt!424067 lt!424058 minValue!1173 lt!424063))))

(assert (=> b!938755 (= (apply!892 (+!2809 lt!424067 (tuple2!13487 lt!424058 minValue!1173)) lt!424063) (apply!892 lt!424067 lt!424063))))

(declare-fun b!938756 () Bool)

(declare-fun call!40886 () ListLongMap!12197)

(assert (=> b!938756 (= e!527267 (+!2809 call!40886 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(declare-fun bm!40884 () Bool)

(assert (=> bm!40884 (= call!40885 call!40886)))

(declare-fun bm!40885 () Bool)

(declare-fun call!40889 () ListLongMap!12197)

(assert (=> bm!40885 (= call!40889 call!40890)))

(declare-fun bm!40886 () Bool)

(assert (=> bm!40886 (= call!40888 (contains!5126 lt!424075 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938757 () Bool)

(assert (=> b!938757 (= e!527278 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(declare-fun b!938758 () Bool)

(declare-fun e!527279 () Bool)

(declare-fun e!527276 () Bool)

(assert (=> b!938758 (= e!527279 e!527276)))

(declare-fun res!631615 () Bool)

(assert (=> b!938758 (=> (not res!631615) (not e!527276))))

(assert (=> b!938758 (= res!631615 (contains!5126 lt!424075 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))))))

(assert (=> b!938758 (and (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun bm!40887 () Bool)

(assert (=> bm!40887 (= call!40886 (+!2809 (ite c!97828 call!40884 (ite c!97830 call!40890 call!40889)) (ite (or c!97828 c!97830) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun b!938759 () Bool)

(assert (=> b!938759 (= e!527271 call!40889)))

(declare-fun b!938760 () Bool)

(assert (=> b!938760 (= e!527275 e!527277)))

(declare-fun res!631617 () Bool)

(assert (=> b!938760 (= res!631617 call!40887)))

(assert (=> b!938760 (=> (not res!631617) (not e!527277))))

(declare-fun b!938761 () Bool)

(declare-fun res!631613 () Bool)

(assert (=> b!938761 (=> (not res!631613) (not e!527269))))

(assert (=> b!938761 (= res!631613 e!527279)))

(declare-fun res!631619 () Bool)

(assert (=> b!938761 (=> res!631619 e!527279)))

(assert (=> b!938761 (= res!631619 (not e!527273))))

(declare-fun res!631620 () Bool)

(assert (=> b!938761 (=> (not res!631620) (not e!527273))))

(assert (=> b!938761 (= res!631620 (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun b!938762 () Bool)

(assert (=> b!938762 (= e!527276 (= (apply!892 lt!424075 (select (arr!27182 _keys!1487) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001))) (get!14358 (select (arr!27183 _values!1231) (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938762 (and (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27643 _values!1231)))))

(assert (=> b!938762 (and (bvsge (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvslt (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun b!938763 () Bool)

(assert (=> b!938763 (= e!527270 (not call!40888))))

(assert (= (and d!113723 c!97828) b!938756))

(assert (= (and d!113723 (not c!97828)) b!938750))

(assert (= (and b!938750 c!97830) b!938753))

(assert (= (and b!938750 (not c!97830)) b!938744))

(assert (= (and b!938744 c!97829) b!938747))

(assert (= (and b!938744 (not c!97829)) b!938759))

(assert (= (or b!938747 b!938759) bm!40885))

(assert (= (or b!938753 bm!40885) bm!40883))

(assert (= (or b!938753 b!938747) bm!40884))

(assert (= (or b!938756 bm!40883) bm!40881))

(assert (= (or b!938756 bm!40884) bm!40887))

(assert (= (and d!113723 res!631618) b!938757))

(assert (= (and d!113723 c!97832) b!938755))

(assert (= (and d!113723 (not c!97832)) b!938746))

(assert (= (and d!113723 res!631616) b!938761))

(assert (= (and b!938761 res!631620) b!938743))

(assert (= (and b!938761 (not res!631619)) b!938758))

(assert (= (and b!938758 res!631615) b!938762))

(assert (= (and b!938761 res!631613) b!938745))

(assert (= (and b!938745 c!97833) b!938751))

(assert (= (and b!938745 (not c!97833)) b!938763))

(assert (= (and b!938751 res!631612) b!938752))

(assert (= (or b!938751 b!938763) bm!40886))

(assert (= (and b!938745 res!631614) b!938754))

(assert (= (and b!938754 c!97831) b!938760))

(assert (= (and b!938754 (not c!97831)) b!938749))

(assert (= (and b!938760 res!631617) b!938748))

(assert (= (or b!938760 b!938749) bm!40882))

(declare-fun b_lambda!14273 () Bool)

(assert (=> (not b_lambda!14273) (not b!938762)))

(assert (=> b!938762 t!27601))

(declare-fun b_and!29171 () Bool)

(assert (= b_and!29169 (and (=> t!27601 result!12145) b_and!29171)))

(declare-fun m!874427 () Bool)

(assert (=> b!938752 m!874427))

(assert (=> d!113723 m!873765))

(declare-fun m!874429 () Bool)

(assert (=> b!938755 m!874429))

(declare-fun m!874431 () Bool)

(assert (=> b!938755 m!874431))

(assert (=> b!938755 m!874187))

(declare-fun m!874433 () Bool)

(assert (=> b!938755 m!874433))

(declare-fun m!874435 () Bool)

(assert (=> b!938755 m!874435))

(assert (=> b!938755 m!874433))

(declare-fun m!874437 () Bool)

(assert (=> b!938755 m!874437))

(assert (=> b!938755 m!874429))

(declare-fun m!874439 () Bool)

(assert (=> b!938755 m!874439))

(declare-fun m!874441 () Bool)

(assert (=> b!938755 m!874441))

(assert (=> b!938755 m!874141))

(declare-fun m!874443 () Bool)

(assert (=> b!938755 m!874443))

(declare-fun m!874445 () Bool)

(assert (=> b!938755 m!874445))

(declare-fun m!874447 () Bool)

(assert (=> b!938755 m!874447))

(declare-fun m!874449 () Bool)

(assert (=> b!938755 m!874449))

(declare-fun m!874451 () Bool)

(assert (=> b!938755 m!874451))

(declare-fun m!874453 () Bool)

(assert (=> b!938755 m!874453))

(assert (=> b!938755 m!874449))

(declare-fun m!874455 () Bool)

(assert (=> b!938755 m!874455))

(assert (=> b!938755 m!874439))

(declare-fun m!874457 () Bool)

(assert (=> b!938755 m!874457))

(declare-fun m!874459 () Bool)

(assert (=> b!938748 m!874459))

(assert (=> bm!40881 m!874187))

(declare-fun m!874461 () Bool)

(assert (=> b!938762 m!874461))

(assert (=> b!938762 m!873737))

(declare-fun m!874463 () Bool)

(assert (=> b!938762 m!874463))

(assert (=> b!938762 m!874461))

(assert (=> b!938762 m!873737))

(assert (=> b!938762 m!874141))

(declare-fun m!874465 () Bool)

(assert (=> b!938762 m!874465))

(assert (=> b!938762 m!874141))

(declare-fun m!874467 () Bool)

(assert (=> bm!40887 m!874467))

(declare-fun m!874469 () Bool)

(assert (=> b!938756 m!874469))

(assert (=> b!938758 m!874141))

(assert (=> b!938758 m!874141))

(declare-fun m!874471 () Bool)

(assert (=> b!938758 m!874471))

(assert (=> b!938743 m!874141))

(assert (=> b!938743 m!874141))

(assert (=> b!938743 m!874145))

(declare-fun m!874473 () Bool)

(assert (=> bm!40882 m!874473))

(declare-fun m!874475 () Bool)

(assert (=> bm!40886 m!874475))

(assert (=> b!938757 m!874141))

(assert (=> b!938757 m!874141))

(assert (=> b!938757 m!874145))

(assert (=> b!938508 d!113723))

(assert (=> b!938508 d!113591))

(declare-fun d!113725 () Bool)

(assert (=> d!113725 (= (apply!892 lt!423853 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14359 (getValueByKey!487 (toList!6114 lt!423853) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26363 () Bool)

(assert (= bs!26363 d!113725))

(declare-fun m!874477 () Bool)

(assert (=> bs!26363 m!874477))

(assert (=> bs!26363 m!874477))

(declare-fun m!874479 () Bool)

(assert (=> bs!26363 m!874479))

(assert (=> b!938433 d!113725))

(assert (=> b!938550 d!113629))

(declare-fun d!113727 () Bool)

(assert (=> d!113727 (= (validKeyInArray!0 (select (arr!27182 _keys!1487) from!1844)) (and (not (= (select (arr!27182 _keys!1487) from!1844) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!27182 _keys!1487) from!1844) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!938462 d!113727))

(declare-fun d!113729 () Bool)

(assert (=> d!113729 (= (get!14360 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)) (v!12711 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (=> b!938546 d!113729))

(declare-fun d!113731 () Bool)

(declare-fun res!631621 () Bool)

(declare-fun e!527280 () Bool)

(assert (=> d!113731 (=> res!631621 e!527280)))

(assert (=> d!113731 (= res!631621 (= (select (arr!27182 _keys!1487) (bvadd from!1844 #b00000000000000000000000000000001)) k0!1099))))

(assert (=> d!113731 (= (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd from!1844 #b00000000000000000000000000000001)) e!527280)))

(declare-fun b!938764 () Bool)

(declare-fun e!527281 () Bool)

(assert (=> b!938764 (= e!527280 e!527281)))

(declare-fun res!631622 () Bool)

(assert (=> b!938764 (=> (not res!631622) (not e!527281))))

(assert (=> b!938764 (= res!631622 (bvslt (bvadd from!1844 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun b!938765 () Bool)

(assert (=> b!938765 (= e!527281 (arrayContainsKey!0 _keys!1487 k0!1099 (bvadd from!1844 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!113731 (not res!631621)) b!938764))

(assert (= (and b!938764 res!631622) b!938765))

(declare-fun m!874481 () Bool)

(assert (=> d!113731 m!874481))

(declare-fun m!874483 () Bool)

(assert (=> b!938765 m!874483))

(assert (=> b!938372 d!113731))

(declare-fun d!113733 () Bool)

(assert (=> d!113733 (= (apply!892 lt!423910 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14359 (getValueByKey!487 (toList!6114 lt!423910) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26364 () Bool)

(assert (= bs!26364 d!113733))

(assert (=> bs!26364 m!874383))

(assert (=> bs!26364 m!874383))

(declare-fun m!874485 () Bool)

(assert (=> bs!26364 m!874485))

(assert (=> b!938486 d!113733))

(declare-fun d!113735 () Bool)

(assert (=> d!113735 (= (apply!892 lt!423853 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) (get!14359 (getValueByKey!487 (toList!6114 lt!423853) (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun bs!26365 () Bool)

(assert (= bs!26365 d!113735))

(assert (=> bs!26365 m!873771))

(assert (=> bs!26365 m!874213))

(assert (=> bs!26365 m!874213))

(declare-fun m!874487 () Bool)

(assert (=> bs!26365 m!874487))

(assert (=> b!938443 d!113735))

(assert (=> b!938443 d!113591))

(assert (=> bm!40856 d!113691))

(declare-fun d!113737 () Bool)

(declare-fun e!527282 () Bool)

(assert (=> d!113737 e!527282))

(declare-fun res!631623 () Bool)

(assert (=> d!113737 (=> res!631623 e!527282)))

(declare-fun lt!424077 () Bool)

(assert (=> d!113737 (= res!631623 (not lt!424077))))

(declare-fun lt!424079 () Bool)

(assert (=> d!113737 (= lt!424077 lt!424079)))

(declare-fun lt!424080 () Unit!31704)

(declare-fun e!527283 () Unit!31704)

(assert (=> d!113737 (= lt!424080 e!527283)))

(declare-fun c!97834 () Bool)

(assert (=> d!113737 (= c!97834 lt!424079)))

(assert (=> d!113737 (= lt!424079 (containsKey!452 (toList!6114 lt!423853) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113737 (= (contains!5126 lt!423853 #b1000000000000000000000000000000000000000000000000000000000000000) lt!424077)))

(declare-fun b!938766 () Bool)

(declare-fun lt!424078 () Unit!31704)

(assert (=> b!938766 (= e!527283 lt!424078)))

(assert (=> b!938766 (= lt!424078 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423853) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938766 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423853) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938767 () Bool)

(declare-fun Unit!31724 () Unit!31704)

(assert (=> b!938767 (= e!527283 Unit!31724)))

(declare-fun b!938768 () Bool)

(assert (=> b!938768 (= e!527282 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423853) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113737 c!97834) b!938766))

(assert (= (and d!113737 (not c!97834)) b!938767))

(assert (= (and d!113737 (not res!631623)) b!938768))

(declare-fun m!874489 () Bool)

(assert (=> d!113737 m!874489))

(declare-fun m!874491 () Bool)

(assert (=> b!938766 m!874491))

(assert (=> b!938766 m!874169))

(assert (=> b!938766 m!874169))

(declare-fun m!874493 () Bool)

(assert (=> b!938766 m!874493))

(assert (=> b!938768 m!874169))

(assert (=> b!938768 m!874169))

(assert (=> b!938768 m!874493))

(assert (=> bm!40840 d!113737))

(declare-fun d!113739 () Bool)

(assert (=> d!113739 (= (get!14359 (getValueByKey!487 (toList!6114 lt!423733) k0!1099)) (v!12713 (getValueByKey!487 (toList!6114 lt!423733) k0!1099)))))

(assert (=> d!113607 d!113739))

(assert (=> d!113607 d!113621))

(declare-fun call!40891 () ListLongMap!12197)

(declare-fun bm!40888 () Bool)

(assert (=> bm!40888 (= call!40891 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!938769 () Bool)

(declare-fun e!527287 () Bool)

(declare-fun lt!424086 () ListLongMap!12197)

(assert (=> b!938769 (= e!527287 (isEmpty!704 lt!424086))))

(declare-fun b!938770 () Bool)

(declare-fun e!527285 () ListLongMap!12197)

(assert (=> b!938770 (= e!527285 (ListLongMap!12198 Nil!19290))))

(declare-fun d!113741 () Bool)

(declare-fun e!527290 () Bool)

(assert (=> d!113741 e!527290))

(declare-fun res!631625 () Bool)

(assert (=> d!113741 (=> (not res!631625) (not e!527290))))

(assert (=> d!113741 (= res!631625 (not (contains!5126 lt!424086 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!113741 (= lt!424086 e!527285)))

(declare-fun c!97836 () Bool)

(assert (=> d!113741 (= c!97836 (bvsge from!1844 (size!27642 _keys!1487)))))

(assert (=> d!113741 (validMask!0 mask!1881)))

(assert (=> d!113741 (= (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235) lt!424086)))

(declare-fun b!938771 () Bool)

(declare-fun e!527286 () ListLongMap!12197)

(assert (=> b!938771 (= e!527285 e!527286)))

(declare-fun c!97835 () Bool)

(assert (=> b!938771 (= c!97835 (validKeyInArray!0 (select (arr!27182 _keys!1487) from!1844)))))

(declare-fun b!938772 () Bool)

(declare-fun e!527284 () Bool)

(assert (=> b!938772 (= e!527284 e!527287)))

(declare-fun c!97837 () Bool)

(assert (=> b!938772 (= c!97837 (bvslt from!1844 (size!27642 _keys!1487)))))

(declare-fun b!938773 () Bool)

(assert (=> b!938773 (= e!527290 e!527284)))

(declare-fun c!97838 () Bool)

(declare-fun e!527288 () Bool)

(assert (=> b!938773 (= c!97838 e!527288)))

(declare-fun res!631624 () Bool)

(assert (=> b!938773 (=> (not res!631624) (not e!527288))))

(assert (=> b!938773 (= res!631624 (bvslt from!1844 (size!27642 _keys!1487)))))

(declare-fun b!938774 () Bool)

(assert (=> b!938774 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27642 _keys!1487)))))

(assert (=> b!938774 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27643 _values!1231)))))

(declare-fun e!527289 () Bool)

(assert (=> b!938774 (= e!527289 (= (apply!892 lt!424086 (select (arr!27182 _keys!1487) from!1844)) (get!14358 (select (arr!27183 _values!1231) from!1844) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!938775 () Bool)

(assert (=> b!938775 (= e!527284 e!527289)))

(assert (=> b!938775 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27642 _keys!1487)))))

(declare-fun res!631626 () Bool)

(assert (=> b!938775 (= res!631626 (contains!5126 lt!424086 (select (arr!27182 _keys!1487) from!1844)))))

(assert (=> b!938775 (=> (not res!631626) (not e!527289))))

(declare-fun b!938776 () Bool)

(declare-fun lt!424083 () Unit!31704)

(declare-fun lt!424081 () Unit!31704)

(assert (=> b!938776 (= lt!424083 lt!424081)))

(declare-fun lt!424085 () (_ BitVec 64))

(declare-fun lt!424082 () ListLongMap!12197)

(declare-fun lt!424084 () V!31985)

(declare-fun lt!424087 () (_ BitVec 64))

(assert (=> b!938776 (not (contains!5126 (+!2809 lt!424082 (tuple2!13487 lt!424087 lt!424084)) lt!424085))))

(assert (=> b!938776 (= lt!424081 (addStillNotContains!223 lt!424082 lt!424087 lt!424084 lt!424085))))

(assert (=> b!938776 (= lt!424085 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!938776 (= lt!424084 (get!14358 (select (arr!27183 _values!1231) from!1844) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!938776 (= lt!424087 (select (arr!27182 _keys!1487) from!1844))))

(assert (=> b!938776 (= lt!424082 call!40891)))

(assert (=> b!938776 (= e!527286 (+!2809 call!40891 (tuple2!13487 (select (arr!27182 _keys!1487) from!1844) (get!14358 (select (arr!27183 _values!1231) from!1844) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!938777 () Bool)

(assert (=> b!938777 (= e!527288 (validKeyInArray!0 (select (arr!27182 _keys!1487) from!1844)))))

(assert (=> b!938777 (bvsge from!1844 #b00000000000000000000000000000000)))

(declare-fun b!938778 () Bool)

(assert (=> b!938778 (= e!527287 (= lt!424086 (getCurrentListMapNoExtraKeys!3320 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd from!1844 #b00000000000000000000000000000001) defaultEntry!1235)))))

(declare-fun b!938779 () Bool)

(assert (=> b!938779 (= e!527286 call!40891)))

(declare-fun b!938780 () Bool)

(declare-fun res!631627 () Bool)

(assert (=> b!938780 (=> (not res!631627) (not e!527290))))

(assert (=> b!938780 (= res!631627 (not (contains!5126 lt!424086 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113741 c!97836) b!938770))

(assert (= (and d!113741 (not c!97836)) b!938771))

(assert (= (and b!938771 c!97835) b!938776))

(assert (= (and b!938771 (not c!97835)) b!938779))

(assert (= (or b!938776 b!938779) bm!40888))

(assert (= (and d!113741 res!631625) b!938780))

(assert (= (and b!938780 res!631627) b!938773))

(assert (= (and b!938773 res!631624) b!938777))

(assert (= (and b!938773 c!97838) b!938775))

(assert (= (and b!938773 (not c!97838)) b!938772))

(assert (= (and b!938775 res!631626) b!938774))

(assert (= (and b!938772 c!97837) b!938778))

(assert (= (and b!938772 (not c!97837)) b!938769))

(declare-fun b_lambda!14275 () Bool)

(assert (=> (not b_lambda!14275) (not b!938774)))

(assert (=> b!938774 t!27601))

(declare-fun b_and!29173 () Bool)

(assert (= b_and!29171 (and (=> t!27601 result!12145) b_and!29173)))

(declare-fun b_lambda!14277 () Bool)

(assert (=> (not b_lambda!14277) (not b!938776)))

(assert (=> b!938776 t!27601))

(declare-fun b_and!29175 () Bool)

(assert (= b_and!29173 (and (=> t!27601 result!12145) b_and!29175)))

(declare-fun m!874495 () Bool)

(assert (=> b!938776 m!874495))

(declare-fun m!874497 () Bool)

(assert (=> b!938776 m!874497))

(assert (=> b!938776 m!873943))

(assert (=> b!938776 m!873737))

(assert (=> b!938776 m!873945))

(assert (=> b!938776 m!874495))

(declare-fun m!874499 () Bool)

(assert (=> b!938776 m!874499))

(assert (=> b!938776 m!873943))

(declare-fun m!874501 () Bool)

(assert (=> b!938776 m!874501))

(assert (=> b!938776 m!873737))

(assert (=> b!938776 m!873837))

(declare-fun m!874503 () Bool)

(assert (=> b!938780 m!874503))

(assert (=> b!938775 m!873837))

(assert (=> b!938775 m!873837))

(declare-fun m!874505 () Bool)

(assert (=> b!938775 m!874505))

(assert (=> b!938771 m!873837))

(assert (=> b!938771 m!873837))

(assert (=> b!938771 m!873955))

(assert (=> b!938774 m!873837))

(declare-fun m!874507 () Bool)

(assert (=> b!938774 m!874507))

(assert (=> b!938774 m!873943))

(assert (=> b!938774 m!873943))

(assert (=> b!938774 m!873737))

(assert (=> b!938774 m!873945))

(assert (=> b!938774 m!873737))

(assert (=> b!938774 m!873837))

(declare-fun m!874509 () Bool)

(assert (=> bm!40888 m!874509))

(assert (=> b!938778 m!874509))

(declare-fun m!874511 () Bool)

(assert (=> b!938769 m!874511))

(assert (=> b!938777 m!873837))

(assert (=> b!938777 m!873837))

(assert (=> b!938777 m!873955))

(declare-fun m!874513 () Bool)

(assert (=> d!113741 m!874513))

(assert (=> d!113741 m!873765))

(assert (=> b!938460 d!113741))

(declare-fun d!113743 () Bool)

(assert (=> d!113743 (= (apply!892 (+!2809 lt!423870 (tuple2!13487 lt!423864 zeroValue!1173)) lt!423859) (get!14359 (getValueByKey!487 (toList!6114 (+!2809 lt!423870 (tuple2!13487 lt!423864 zeroValue!1173))) lt!423859)))))

(declare-fun bs!26366 () Bool)

(assert (= bs!26366 d!113743))

(declare-fun m!874515 () Bool)

(assert (=> bs!26366 m!874515))

(assert (=> bs!26366 m!874515))

(declare-fun m!874517 () Bool)

(assert (=> bs!26366 m!874517))

(assert (=> b!938460 d!113743))

(declare-fun d!113745 () Bool)

(declare-fun e!527291 () Bool)

(assert (=> d!113745 e!527291))

(declare-fun res!631628 () Bool)

(assert (=> d!113745 (=> (not res!631628) (not e!527291))))

(declare-fun lt!424090 () ListLongMap!12197)

(assert (=> d!113745 (= res!631628 (contains!5126 lt!424090 (_1!6753 (tuple2!13487 lt!423864 zeroValue!1173))))))

(declare-fun lt!424091 () List!19293)

(assert (=> d!113745 (= lt!424090 (ListLongMap!12198 lt!424091))))

(declare-fun lt!424089 () Unit!31704)

(declare-fun lt!424088 () Unit!31704)

(assert (=> d!113745 (= lt!424089 lt!424088)))

(assert (=> d!113745 (= (getValueByKey!487 lt!424091 (_1!6753 (tuple2!13487 lt!423864 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423864 zeroValue!1173))))))

(assert (=> d!113745 (= lt!424088 (lemmaContainsTupThenGetReturnValue!261 lt!424091 (_1!6753 (tuple2!13487 lt!423864 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423864 zeroValue!1173))))))

(assert (=> d!113745 (= lt!424091 (insertStrictlySorted!317 (toList!6114 lt!423870) (_1!6753 (tuple2!13487 lt!423864 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423864 zeroValue!1173))))))

(assert (=> d!113745 (= (+!2809 lt!423870 (tuple2!13487 lt!423864 zeroValue!1173)) lt!424090)))

(declare-fun b!938781 () Bool)

(declare-fun res!631629 () Bool)

(assert (=> b!938781 (=> (not res!631629) (not e!527291))))

(assert (=> b!938781 (= res!631629 (= (getValueByKey!487 (toList!6114 lt!424090) (_1!6753 (tuple2!13487 lt!423864 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423864 zeroValue!1173)))))))

(declare-fun b!938782 () Bool)

(assert (=> b!938782 (= e!527291 (contains!5128 (toList!6114 lt!424090) (tuple2!13487 lt!423864 zeroValue!1173)))))

(assert (= (and d!113745 res!631628) b!938781))

(assert (= (and b!938781 res!631629) b!938782))

(declare-fun m!874519 () Bool)

(assert (=> d!113745 m!874519))

(declare-fun m!874521 () Bool)

(assert (=> d!113745 m!874521))

(declare-fun m!874523 () Bool)

(assert (=> d!113745 m!874523))

(declare-fun m!874525 () Bool)

(assert (=> d!113745 m!874525))

(declare-fun m!874527 () Bool)

(assert (=> b!938781 m!874527))

(declare-fun m!874529 () Bool)

(assert (=> b!938782 m!874529))

(assert (=> b!938460 d!113745))

(declare-fun d!113747 () Bool)

(assert (=> d!113747 (= (apply!892 lt!423871 lt!423867) (get!14359 (getValueByKey!487 (toList!6114 lt!423871) lt!423867)))))

(declare-fun bs!26367 () Bool)

(assert (= bs!26367 d!113747))

(declare-fun m!874531 () Bool)

(assert (=> bs!26367 m!874531))

(assert (=> bs!26367 m!874531))

(declare-fun m!874533 () Bool)

(assert (=> bs!26367 m!874533))

(assert (=> b!938460 d!113747))

(declare-fun d!113749 () Bool)

(declare-fun e!527292 () Bool)

(assert (=> d!113749 e!527292))

(declare-fun res!631630 () Bool)

(assert (=> d!113749 (=> (not res!631630) (not e!527292))))

(declare-fun lt!424094 () ListLongMap!12197)

(assert (=> d!113749 (= res!631630 (contains!5126 lt!424094 (_1!6753 (tuple2!13487 lt!423872 minValue!1173))))))

(declare-fun lt!424095 () List!19293)

(assert (=> d!113749 (= lt!424094 (ListLongMap!12198 lt!424095))))

(declare-fun lt!424093 () Unit!31704)

(declare-fun lt!424092 () Unit!31704)

(assert (=> d!113749 (= lt!424093 lt!424092)))

(assert (=> d!113749 (= (getValueByKey!487 lt!424095 (_1!6753 (tuple2!13487 lt!423872 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423872 minValue!1173))))))

(assert (=> d!113749 (= lt!424092 (lemmaContainsTupThenGetReturnValue!261 lt!424095 (_1!6753 (tuple2!13487 lt!423872 minValue!1173)) (_2!6753 (tuple2!13487 lt!423872 minValue!1173))))))

(assert (=> d!113749 (= lt!424095 (insertStrictlySorted!317 (toList!6114 lt!423874) (_1!6753 (tuple2!13487 lt!423872 minValue!1173)) (_2!6753 (tuple2!13487 lt!423872 minValue!1173))))))

(assert (=> d!113749 (= (+!2809 lt!423874 (tuple2!13487 lt!423872 minValue!1173)) lt!424094)))

(declare-fun b!938783 () Bool)

(declare-fun res!631631 () Bool)

(assert (=> b!938783 (=> (not res!631631) (not e!527292))))

(assert (=> b!938783 (= res!631631 (= (getValueByKey!487 (toList!6114 lt!424094) (_1!6753 (tuple2!13487 lt!423872 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423872 minValue!1173)))))))

(declare-fun b!938784 () Bool)

(assert (=> b!938784 (= e!527292 (contains!5128 (toList!6114 lt!424094) (tuple2!13487 lt!423872 minValue!1173)))))

(assert (= (and d!113749 res!631630) b!938783))

(assert (= (and b!938783 res!631631) b!938784))

(declare-fun m!874535 () Bool)

(assert (=> d!113749 m!874535))

(declare-fun m!874537 () Bool)

(assert (=> d!113749 m!874537))

(declare-fun m!874539 () Bool)

(assert (=> d!113749 m!874539))

(declare-fun m!874541 () Bool)

(assert (=> d!113749 m!874541))

(declare-fun m!874543 () Bool)

(assert (=> b!938783 m!874543))

(declare-fun m!874545 () Bool)

(assert (=> b!938784 m!874545))

(assert (=> b!938460 d!113749))

(declare-fun d!113751 () Bool)

(assert (=> d!113751 (= (apply!892 (+!2809 lt!423871 (tuple2!13487 lt!423862 minValue!1173)) lt!423867) (apply!892 lt!423871 lt!423867))))

(declare-fun lt!424096 () Unit!31704)

(assert (=> d!113751 (= lt!424096 (choose!1567 lt!423871 lt!423862 minValue!1173 lt!423867))))

(declare-fun e!527293 () Bool)

(assert (=> d!113751 e!527293))

(declare-fun res!631632 () Bool)

(assert (=> d!113751 (=> (not res!631632) (not e!527293))))

(assert (=> d!113751 (= res!631632 (contains!5126 lt!423871 lt!423867))))

(assert (=> d!113751 (= (addApplyDifferent!439 lt!423871 lt!423862 minValue!1173 lt!423867) lt!424096)))

(declare-fun b!938785 () Bool)

(assert (=> b!938785 (= e!527293 (not (= lt!423867 lt!423862)))))

(assert (= (and d!113751 res!631632) b!938785))

(assert (=> d!113751 m!873915))

(assert (=> d!113751 m!873927))

(assert (=> d!113751 m!873915))

(assert (=> d!113751 m!873917))

(declare-fun m!874547 () Bool)

(assert (=> d!113751 m!874547))

(declare-fun m!874549 () Bool)

(assert (=> d!113751 m!874549))

(assert (=> b!938460 d!113751))

(declare-fun d!113753 () Bool)

(assert (=> d!113753 (contains!5126 (+!2809 lt!423875 (tuple2!13487 lt!423868 zeroValue!1173)) lt!423866)))

(declare-fun lt!424097 () Unit!31704)

(assert (=> d!113753 (= lt!424097 (choose!1569 lt!423875 lt!423868 zeroValue!1173 lt!423866))))

(assert (=> d!113753 (contains!5126 lt!423875 lt!423866)))

(assert (=> d!113753 (= (addStillContains!565 lt!423875 lt!423868 zeroValue!1173 lt!423866) lt!424097)))

(declare-fun bs!26368 () Bool)

(assert (= bs!26368 d!113753))

(assert (=> bs!26368 m!873931))

(assert (=> bs!26368 m!873931))

(assert (=> bs!26368 m!873937))

(declare-fun m!874551 () Bool)

(assert (=> bs!26368 m!874551))

(declare-fun m!874553 () Bool)

(assert (=> bs!26368 m!874553))

(assert (=> b!938460 d!113753))

(declare-fun d!113755 () Bool)

(assert (=> d!113755 (= (apply!892 (+!2809 lt!423874 (tuple2!13487 lt!423872 minValue!1173)) lt!423880) (get!14359 (getValueByKey!487 (toList!6114 (+!2809 lt!423874 (tuple2!13487 lt!423872 minValue!1173))) lt!423880)))))

(declare-fun bs!26369 () Bool)

(assert (= bs!26369 d!113755))

(declare-fun m!874555 () Bool)

(assert (=> bs!26369 m!874555))

(assert (=> bs!26369 m!874555))

(declare-fun m!874557 () Bool)

(assert (=> bs!26369 m!874557))

(assert (=> b!938460 d!113755))

(declare-fun d!113757 () Bool)

(assert (=> d!113757 (= (apply!892 (+!2809 lt!423870 (tuple2!13487 lt!423864 zeroValue!1173)) lt!423859) (apply!892 lt!423870 lt!423859))))

(declare-fun lt!424098 () Unit!31704)

(assert (=> d!113757 (= lt!424098 (choose!1567 lt!423870 lt!423864 zeroValue!1173 lt!423859))))

(declare-fun e!527294 () Bool)

(assert (=> d!113757 e!527294))

(declare-fun res!631633 () Bool)

(assert (=> d!113757 (=> (not res!631633) (not e!527294))))

(assert (=> d!113757 (= res!631633 (contains!5126 lt!423870 lt!423859))))

(assert (=> d!113757 (= (addApplyDifferent!439 lt!423870 lt!423864 zeroValue!1173 lt!423859) lt!424098)))

(declare-fun b!938786 () Bool)

(assert (=> b!938786 (= e!527294 (not (= lt!423859 lt!423864)))))

(assert (= (and d!113757 res!631633) b!938786))

(assert (=> d!113757 m!873921))

(assert (=> d!113757 m!873919))

(assert (=> d!113757 m!873921))

(assert (=> d!113757 m!873923))

(declare-fun m!874559 () Bool)

(assert (=> d!113757 m!874559))

(declare-fun m!874561 () Bool)

(assert (=> d!113757 m!874561))

(assert (=> b!938460 d!113757))

(declare-fun d!113759 () Bool)

(assert (=> d!113759 (= (apply!892 (+!2809 lt!423874 (tuple2!13487 lt!423872 minValue!1173)) lt!423880) (apply!892 lt!423874 lt!423880))))

(declare-fun lt!424099 () Unit!31704)

(assert (=> d!113759 (= lt!424099 (choose!1567 lt!423874 lt!423872 minValue!1173 lt!423880))))

(declare-fun e!527295 () Bool)

(assert (=> d!113759 e!527295))

(declare-fun res!631634 () Bool)

(assert (=> d!113759 (=> (not res!631634) (not e!527295))))

(assert (=> d!113759 (= res!631634 (contains!5126 lt!423874 lt!423880))))

(assert (=> d!113759 (= (addApplyDifferent!439 lt!423874 lt!423872 minValue!1173 lt!423880) lt!424099)))

(declare-fun b!938787 () Bool)

(assert (=> b!938787 (= e!527295 (not (= lt!423880 lt!423872)))))

(assert (= (and d!113759 res!631634) b!938787))

(assert (=> d!113759 m!873909))

(assert (=> d!113759 m!873939))

(assert (=> d!113759 m!873909))

(assert (=> d!113759 m!873911))

(declare-fun m!874563 () Bool)

(assert (=> d!113759 m!874563))

(declare-fun m!874565 () Bool)

(assert (=> d!113759 m!874565))

(assert (=> b!938460 d!113759))

(declare-fun d!113761 () Bool)

(declare-fun e!527296 () Bool)

(assert (=> d!113761 e!527296))

(declare-fun res!631635 () Bool)

(assert (=> d!113761 (=> (not res!631635) (not e!527296))))

(declare-fun lt!424102 () ListLongMap!12197)

(assert (=> d!113761 (= res!631635 (contains!5126 lt!424102 (_1!6753 (tuple2!13487 lt!423862 minValue!1173))))))

(declare-fun lt!424103 () List!19293)

(assert (=> d!113761 (= lt!424102 (ListLongMap!12198 lt!424103))))

(declare-fun lt!424101 () Unit!31704)

(declare-fun lt!424100 () Unit!31704)

(assert (=> d!113761 (= lt!424101 lt!424100)))

(assert (=> d!113761 (= (getValueByKey!487 lt!424103 (_1!6753 (tuple2!13487 lt!423862 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423862 minValue!1173))))))

(assert (=> d!113761 (= lt!424100 (lemmaContainsTupThenGetReturnValue!261 lt!424103 (_1!6753 (tuple2!13487 lt!423862 minValue!1173)) (_2!6753 (tuple2!13487 lt!423862 minValue!1173))))))

(assert (=> d!113761 (= lt!424103 (insertStrictlySorted!317 (toList!6114 lt!423871) (_1!6753 (tuple2!13487 lt!423862 minValue!1173)) (_2!6753 (tuple2!13487 lt!423862 minValue!1173))))))

(assert (=> d!113761 (= (+!2809 lt!423871 (tuple2!13487 lt!423862 minValue!1173)) lt!424102)))

(declare-fun b!938788 () Bool)

(declare-fun res!631636 () Bool)

(assert (=> b!938788 (=> (not res!631636) (not e!527296))))

(assert (=> b!938788 (= res!631636 (= (getValueByKey!487 (toList!6114 lt!424102) (_1!6753 (tuple2!13487 lt!423862 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423862 minValue!1173)))))))

(declare-fun b!938789 () Bool)

(assert (=> b!938789 (= e!527296 (contains!5128 (toList!6114 lt!424102) (tuple2!13487 lt!423862 minValue!1173)))))

(assert (= (and d!113761 res!631635) b!938788))

(assert (= (and b!938788 res!631636) b!938789))

(declare-fun m!874567 () Bool)

(assert (=> d!113761 m!874567))

(declare-fun m!874569 () Bool)

(assert (=> d!113761 m!874569))

(declare-fun m!874571 () Bool)

(assert (=> d!113761 m!874571))

(declare-fun m!874573 () Bool)

(assert (=> d!113761 m!874573))

(declare-fun m!874575 () Bool)

(assert (=> b!938788 m!874575))

(declare-fun m!874577 () Bool)

(assert (=> b!938789 m!874577))

(assert (=> b!938460 d!113761))

(declare-fun d!113763 () Bool)

(declare-fun e!527297 () Bool)

(assert (=> d!113763 e!527297))

(declare-fun res!631637 () Bool)

(assert (=> d!113763 (=> (not res!631637) (not e!527297))))

(declare-fun lt!424106 () ListLongMap!12197)

(assert (=> d!113763 (= res!631637 (contains!5126 lt!424106 (_1!6753 (tuple2!13487 lt!423868 zeroValue!1173))))))

(declare-fun lt!424107 () List!19293)

(assert (=> d!113763 (= lt!424106 (ListLongMap!12198 lt!424107))))

(declare-fun lt!424105 () Unit!31704)

(declare-fun lt!424104 () Unit!31704)

(assert (=> d!113763 (= lt!424105 lt!424104)))

(assert (=> d!113763 (= (getValueByKey!487 lt!424107 (_1!6753 (tuple2!13487 lt!423868 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423868 zeroValue!1173))))))

(assert (=> d!113763 (= lt!424104 (lemmaContainsTupThenGetReturnValue!261 lt!424107 (_1!6753 (tuple2!13487 lt!423868 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423868 zeroValue!1173))))))

(assert (=> d!113763 (= lt!424107 (insertStrictlySorted!317 (toList!6114 lt!423875) (_1!6753 (tuple2!13487 lt!423868 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423868 zeroValue!1173))))))

(assert (=> d!113763 (= (+!2809 lt!423875 (tuple2!13487 lt!423868 zeroValue!1173)) lt!424106)))

(declare-fun b!938790 () Bool)

(declare-fun res!631638 () Bool)

(assert (=> b!938790 (=> (not res!631638) (not e!527297))))

(assert (=> b!938790 (= res!631638 (= (getValueByKey!487 (toList!6114 lt!424106) (_1!6753 (tuple2!13487 lt!423868 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423868 zeroValue!1173)))))))

(declare-fun b!938791 () Bool)

(assert (=> b!938791 (= e!527297 (contains!5128 (toList!6114 lt!424106) (tuple2!13487 lt!423868 zeroValue!1173)))))

(assert (= (and d!113763 res!631637) b!938790))

(assert (= (and b!938790 res!631638) b!938791))

(declare-fun m!874579 () Bool)

(assert (=> d!113763 m!874579))

(declare-fun m!874581 () Bool)

(assert (=> d!113763 m!874581))

(declare-fun m!874583 () Bool)

(assert (=> d!113763 m!874583))

(declare-fun m!874585 () Bool)

(assert (=> d!113763 m!874585))

(declare-fun m!874587 () Bool)

(assert (=> b!938790 m!874587))

(declare-fun m!874589 () Bool)

(assert (=> b!938791 m!874589))

(assert (=> b!938460 d!113763))

(declare-fun d!113765 () Bool)

(assert (=> d!113765 (= (apply!892 (+!2809 lt!423871 (tuple2!13487 lt!423862 minValue!1173)) lt!423867) (get!14359 (getValueByKey!487 (toList!6114 (+!2809 lt!423871 (tuple2!13487 lt!423862 minValue!1173))) lt!423867)))))

(declare-fun bs!26370 () Bool)

(assert (= bs!26370 d!113765))

(declare-fun m!874591 () Bool)

(assert (=> bs!26370 m!874591))

(assert (=> bs!26370 m!874591))

(declare-fun m!874593 () Bool)

(assert (=> bs!26370 m!874593))

(assert (=> b!938460 d!113765))

(declare-fun d!113767 () Bool)

(assert (=> d!113767 (= (apply!892 lt!423870 lt!423859) (get!14359 (getValueByKey!487 (toList!6114 lt!423870) lt!423859)))))

(declare-fun bs!26371 () Bool)

(assert (= bs!26371 d!113767))

(declare-fun m!874595 () Bool)

(assert (=> bs!26371 m!874595))

(assert (=> bs!26371 m!874595))

(declare-fun m!874597 () Bool)

(assert (=> bs!26371 m!874597))

(assert (=> b!938460 d!113767))

(declare-fun d!113769 () Bool)

(assert (=> d!113769 (= (apply!892 lt!423874 lt!423880) (get!14359 (getValueByKey!487 (toList!6114 lt!423874) lt!423880)))))

(declare-fun bs!26372 () Bool)

(assert (= bs!26372 d!113769))

(declare-fun m!874599 () Bool)

(assert (=> bs!26372 m!874599))

(assert (=> bs!26372 m!874599))

(declare-fun m!874601 () Bool)

(assert (=> bs!26372 m!874601))

(assert (=> b!938460 d!113769))

(declare-fun d!113771 () Bool)

(declare-fun e!527298 () Bool)

(assert (=> d!113771 e!527298))

(declare-fun res!631639 () Bool)

(assert (=> d!113771 (=> res!631639 e!527298)))

(declare-fun lt!424108 () Bool)

(assert (=> d!113771 (= res!631639 (not lt!424108))))

(declare-fun lt!424110 () Bool)

(assert (=> d!113771 (= lt!424108 lt!424110)))

(declare-fun lt!424111 () Unit!31704)

(declare-fun e!527299 () Unit!31704)

(assert (=> d!113771 (= lt!424111 e!527299)))

(declare-fun c!97839 () Bool)

(assert (=> d!113771 (= c!97839 lt!424110)))

(assert (=> d!113771 (= lt!424110 (containsKey!452 (toList!6114 (+!2809 lt!423875 (tuple2!13487 lt!423868 zeroValue!1173))) lt!423866))))

(assert (=> d!113771 (= (contains!5126 (+!2809 lt!423875 (tuple2!13487 lt!423868 zeroValue!1173)) lt!423866) lt!424108)))

(declare-fun b!938792 () Bool)

(declare-fun lt!424109 () Unit!31704)

(assert (=> b!938792 (= e!527299 lt!424109)))

(assert (=> b!938792 (= lt!424109 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 (+!2809 lt!423875 (tuple2!13487 lt!423868 zeroValue!1173))) lt!423866))))

(assert (=> b!938792 (isDefined!357 (getValueByKey!487 (toList!6114 (+!2809 lt!423875 (tuple2!13487 lt!423868 zeroValue!1173))) lt!423866))))

(declare-fun b!938793 () Bool)

(declare-fun Unit!31725 () Unit!31704)

(assert (=> b!938793 (= e!527299 Unit!31725)))

(declare-fun b!938794 () Bool)

(assert (=> b!938794 (= e!527298 (isDefined!357 (getValueByKey!487 (toList!6114 (+!2809 lt!423875 (tuple2!13487 lt!423868 zeroValue!1173))) lt!423866)))))

(assert (= (and d!113771 c!97839) b!938792))

(assert (= (and d!113771 (not c!97839)) b!938793))

(assert (= (and d!113771 (not res!631639)) b!938794))

(declare-fun m!874603 () Bool)

(assert (=> d!113771 m!874603))

(declare-fun m!874605 () Bool)

(assert (=> b!938792 m!874605))

(declare-fun m!874607 () Bool)

(assert (=> b!938792 m!874607))

(assert (=> b!938792 m!874607))

(declare-fun m!874609 () Bool)

(assert (=> b!938792 m!874609))

(assert (=> b!938794 m!874607))

(assert (=> b!938794 m!874607))

(assert (=> b!938794 m!874609))

(assert (=> b!938460 d!113771))

(assert (=> b!938481 d!113655))

(declare-fun d!113773 () Bool)

(declare-fun e!527300 () Bool)

(assert (=> d!113773 e!527300))

(declare-fun res!631640 () Bool)

(assert (=> d!113773 (=> res!631640 e!527300)))

(declare-fun lt!424112 () Bool)

(assert (=> d!113773 (= res!631640 (not lt!424112))))

(declare-fun lt!424114 () Bool)

(assert (=> d!113773 (= lt!424112 lt!424114)))

(declare-fun lt!424115 () Unit!31704)

(declare-fun e!527301 () Unit!31704)

(assert (=> d!113773 (= lt!424115 e!527301)))

(declare-fun c!97840 () Bool)

(assert (=> d!113773 (= c!97840 lt!424114)))

(assert (=> d!113773 (= lt!424114 (containsKey!452 (toList!6114 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723))) k0!1099))))

(assert (=> d!113773 (= (contains!5126 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723)) k0!1099) lt!424112)))

(declare-fun b!938795 () Bool)

(declare-fun lt!424113 () Unit!31704)

(assert (=> b!938795 (= e!527301 lt!424113)))

(assert (=> b!938795 (= lt!424113 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723))) k0!1099))))

(assert (=> b!938795 (isDefined!357 (getValueByKey!487 (toList!6114 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723))) k0!1099))))

(declare-fun b!938796 () Bool)

(declare-fun Unit!31726 () Unit!31704)

(assert (=> b!938796 (= e!527301 Unit!31726)))

(declare-fun b!938797 () Bool)

(assert (=> b!938797 (= e!527300 (isDefined!357 (getValueByKey!487 (toList!6114 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723))) k0!1099)))))

(assert (= (and d!113773 c!97840) b!938795))

(assert (= (and d!113773 (not c!97840)) b!938796))

(assert (= (and d!113773 (not res!631640)) b!938797))

(declare-fun m!874611 () Bool)

(assert (=> d!113773 m!874611))

(declare-fun m!874613 () Bool)

(assert (=> b!938795 m!874613))

(assert (=> b!938795 m!874149))

(assert (=> b!938795 m!874149))

(declare-fun m!874615 () Bool)

(assert (=> b!938795 m!874615))

(assert (=> b!938797 m!874149))

(assert (=> b!938797 m!874149))

(assert (=> b!938797 m!874615))

(assert (=> d!113577 d!113773))

(assert (=> d!113577 d!113637))

(declare-fun d!113775 () Bool)

(assert (=> d!113775 (contains!5126 (+!2809 lt!423722 (tuple2!13487 lt!423727 lt!423723)) k0!1099)))

(assert (=> d!113775 true))

(declare-fun _$35!434 () Unit!31704)

(assert (=> d!113775 (= (choose!1569 lt!423722 lt!423727 lt!423723 k0!1099) _$35!434)))

(declare-fun bs!26373 () Bool)

(assert (= bs!26373 d!113775))

(assert (=> bs!26373 m!874033))

(assert (=> bs!26373 m!874033))

(assert (=> bs!26373 m!874045))

(assert (=> d!113577 d!113775))

(assert (=> d!113577 d!113561))

(declare-fun d!113777 () Bool)

(declare-fun e!527302 () Bool)

(assert (=> d!113777 e!527302))

(declare-fun res!631641 () Bool)

(assert (=> d!113777 (=> res!631641 e!527302)))

(declare-fun lt!424116 () Bool)

(assert (=> d!113777 (= res!631641 (not lt!424116))))

(declare-fun lt!424118 () Bool)

(assert (=> d!113777 (= lt!424116 lt!424118)))

(declare-fun lt!424119 () Unit!31704)

(declare-fun e!527303 () Unit!31704)

(assert (=> d!113777 (= lt!424119 e!527303)))

(declare-fun c!97841 () Bool)

(assert (=> d!113777 (= c!97841 lt!424118)))

(assert (=> d!113777 (= lt!424118 (containsKey!452 (toList!6114 lt!423910) (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> d!113777 (= (contains!5126 lt!423910 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))) lt!424116)))

(declare-fun b!938799 () Bool)

(declare-fun lt!424117 () Unit!31704)

(assert (=> b!938799 (= e!527303 lt!424117)))

(assert (=> b!938799 (= lt!424117 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423910) (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(assert (=> b!938799 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423910) (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)))))))

(declare-fun b!938800 () Bool)

(declare-fun Unit!31727 () Unit!31704)

(assert (=> b!938800 (= e!527303 Unit!31727)))

(declare-fun b!938801 () Bool)

(assert (=> b!938801 (= e!527302 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423910) (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001))))))))

(assert (= (and d!113777 c!97841) b!938799))

(assert (= (and d!113777 (not c!97841)) b!938800))

(assert (= (and d!113777 (not res!631641)) b!938801))

(assert (=> d!113777 m!873995))

(declare-fun m!874617 () Bool)

(assert (=> d!113777 m!874617))

(assert (=> b!938799 m!873995))

(declare-fun m!874619 () Bool)

(assert (=> b!938799 m!874619))

(assert (=> b!938799 m!873995))

(assert (=> b!938799 m!874103))

(assert (=> b!938799 m!874103))

(declare-fun m!874621 () Bool)

(assert (=> b!938799 m!874621))

(assert (=> b!938801 m!873995))

(assert (=> b!938801 m!874103))

(assert (=> b!938801 m!874103))

(assert (=> b!938801 m!874621))

(assert (=> b!938496 d!113777))

(declare-fun b!938802 () Bool)

(declare-fun e!527304 () Bool)

(declare-fun call!40892 () Bool)

(assert (=> b!938802 (= e!527304 call!40892)))

(declare-fun d!113779 () Bool)

(declare-fun res!631643 () Bool)

(declare-fun e!527306 () Bool)

(assert (=> d!113779 (=> res!631643 e!527306)))

(assert (=> d!113779 (= res!631643 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(assert (=> d!113779 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!1487 mask!1881) e!527306)))

(declare-fun bm!40889 () Bool)

(assert (=> bm!40889 (= call!40892 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) _keys!1487 mask!1881))))

(declare-fun b!938803 () Bool)

(declare-fun e!527305 () Bool)

(assert (=> b!938803 (= e!527305 call!40892)))

(declare-fun b!938804 () Bool)

(assert (=> b!938804 (= e!527305 e!527304)))

(declare-fun lt!424122 () (_ BitVec 64))

(assert (=> b!938804 (= lt!424122 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!424120 () Unit!31704)

(assert (=> b!938804 (= lt!424120 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!424122 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!938804 (arrayContainsKey!0 _keys!1487 lt!424122 #b00000000000000000000000000000000)))

(declare-fun lt!424121 () Unit!31704)

(assert (=> b!938804 (= lt!424121 lt!424120)))

(declare-fun res!631642 () Bool)

(assert (=> b!938804 (= res!631642 (= (seekEntryOrOpen!0 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) _keys!1487 mask!1881) (Found!8969 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!938804 (=> (not res!631642) (not e!527304))))

(declare-fun b!938805 () Bool)

(assert (=> b!938805 (= e!527306 e!527305)))

(declare-fun c!97842 () Bool)

(assert (=> b!938805 (= c!97842 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!113779 (not res!631643)) b!938805))

(assert (= (and b!938805 c!97842) b!938804))

(assert (= (and b!938805 (not c!97842)) b!938803))

(assert (= (and b!938804 res!631642) b!938802))

(assert (= (or b!938802 b!938803) bm!40889))

(declare-fun m!874623 () Bool)

(assert (=> bm!40889 m!874623))

(declare-fun m!874625 () Bool)

(assert (=> b!938804 m!874625))

(declare-fun m!874627 () Bool)

(assert (=> b!938804 m!874627))

(declare-fun m!874629 () Bool)

(assert (=> b!938804 m!874629))

(assert (=> b!938804 m!874625))

(declare-fun m!874631 () Bool)

(assert (=> b!938804 m!874631))

(assert (=> b!938805 m!874625))

(assert (=> b!938805 m!874625))

(declare-fun m!874633 () Bool)

(assert (=> b!938805 m!874633))

(assert (=> bm!40855 d!113779))

(declare-fun d!113781 () Bool)

(assert (=> d!113781 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423731) k0!1099))))

(declare-fun lt!424123 () Unit!31704)

(assert (=> d!113781 (= lt!424123 (choose!1571 (toList!6114 lt!423731) k0!1099))))

(declare-fun e!527307 () Bool)

(assert (=> d!113781 e!527307))

(declare-fun res!631644 () Bool)

(assert (=> d!113781 (=> (not res!631644) (not e!527307))))

(assert (=> d!113781 (= res!631644 (isStrictlySorted!500 (toList!6114 lt!423731)))))

(assert (=> d!113781 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423731) k0!1099) lt!424123)))

(declare-fun b!938806 () Bool)

(assert (=> b!938806 (= e!527307 (containsKey!452 (toList!6114 lt!423731) k0!1099))))

(assert (= (and d!113781 res!631644) b!938806))

(assert (=> d!113781 m!873973))

(assert (=> d!113781 m!873973))

(assert (=> d!113781 m!874073))

(declare-fun m!874635 () Bool)

(assert (=> d!113781 m!874635))

(declare-fun m!874637 () Bool)

(assert (=> d!113781 m!874637))

(assert (=> b!938806 m!874069))

(assert (=> b!938537 d!113781))

(declare-fun d!113783 () Bool)

(assert (=> d!113783 (= (isDefined!357 (getValueByKey!487 (toList!6114 lt!423731) k0!1099)) (not (isEmpty!703 (getValueByKey!487 (toList!6114 lt!423731) k0!1099))))))

(declare-fun bs!26374 () Bool)

(assert (= bs!26374 d!113783))

(assert (=> bs!26374 m!873973))

(declare-fun m!874639 () Bool)

(assert (=> bs!26374 m!874639))

(assert (=> b!938537 d!113783))

(assert (=> b!938537 d!113697))

(declare-fun d!113785 () Bool)

(assert (=> d!113785 (arrayContainsKey!0 _keys!1487 lt!423889 #b00000000000000000000000000000000)))

(declare-fun lt!424126 () Unit!31704)

(declare-fun choose!13 (array!56494 (_ BitVec 64) (_ BitVec 32)) Unit!31704)

(assert (=> d!113785 (= lt!424126 (choose!13 _keys!1487 lt!423889 #b00000000000000000000000000000000))))

(assert (=> d!113785 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!113785 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1487 lt!423889 #b00000000000000000000000000000000) lt!424126)))

(declare-fun bs!26375 () Bool)

(assert (= bs!26375 d!113785))

(assert (=> bs!26375 m!873967))

(declare-fun m!874641 () Bool)

(assert (=> bs!26375 m!874641))

(assert (=> b!938479 d!113785))

(declare-fun d!113787 () Bool)

(declare-fun res!631645 () Bool)

(declare-fun e!527308 () Bool)

(assert (=> d!113787 (=> res!631645 e!527308)))

(assert (=> d!113787 (= res!631645 (= (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) lt!423889))))

(assert (=> d!113787 (= (arrayContainsKey!0 _keys!1487 lt!423889 #b00000000000000000000000000000000) e!527308)))

(declare-fun b!938807 () Bool)

(declare-fun e!527309 () Bool)

(assert (=> b!938807 (= e!527308 e!527309)))

(declare-fun res!631646 () Bool)

(assert (=> b!938807 (=> (not res!631646) (not e!527309))))

(assert (=> b!938807 (= res!631646 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(declare-fun b!938808 () Bool)

(assert (=> b!938808 (= e!527309 (arrayContainsKey!0 _keys!1487 lt!423889 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!113787 (not res!631645)) b!938807))

(assert (= (and b!938807 res!631646) b!938808))

(assert (=> d!113787 m!873963))

(declare-fun m!874643 () Bool)

(assert (=> b!938808 m!874643))

(assert (=> b!938479 d!113787))

(declare-fun b!938821 () Bool)

(declare-fun e!527318 () SeekEntryResult!8969)

(declare-fun lt!424134 () SeekEntryResult!8969)

(assert (=> b!938821 (= e!527318 (MissingZero!8969 (index!38248 lt!424134)))))

(declare-fun b!938822 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56494 (_ BitVec 32)) SeekEntryResult!8969)

(assert (=> b!938822 (= e!527318 (seekKeyOrZeroReturnVacant!0 (x!80442 lt!424134) (index!38248 lt!424134) (index!38248 lt!424134) (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881))))

(declare-fun b!938823 () Bool)

(declare-fun e!527316 () SeekEntryResult!8969)

(assert (=> b!938823 (= e!527316 (Found!8969 (index!38248 lt!424134)))))

(declare-fun b!938824 () Bool)

(declare-fun e!527317 () SeekEntryResult!8969)

(assert (=> b!938824 (= e!527317 e!527316)))

(declare-fun lt!424133 () (_ BitVec 64))

(assert (=> b!938824 (= lt!424133 (select (arr!27182 _keys!1487) (index!38248 lt!424134)))))

(declare-fun c!97851 () Bool)

(assert (=> b!938824 (= c!97851 (= lt!424133 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)))))

(declare-fun d!113789 () Bool)

(declare-fun lt!424135 () SeekEntryResult!8969)

(assert (=> d!113789 (and (or ((_ is Undefined!8969) lt!424135) (not ((_ is Found!8969) lt!424135)) (and (bvsge (index!38247 lt!424135) #b00000000000000000000000000000000) (bvslt (index!38247 lt!424135) (size!27642 _keys!1487)))) (or ((_ is Undefined!8969) lt!424135) ((_ is Found!8969) lt!424135) (not ((_ is MissingZero!8969) lt!424135)) (and (bvsge (index!38246 lt!424135) #b00000000000000000000000000000000) (bvslt (index!38246 lt!424135) (size!27642 _keys!1487)))) (or ((_ is Undefined!8969) lt!424135) ((_ is Found!8969) lt!424135) ((_ is MissingZero!8969) lt!424135) (not ((_ is MissingVacant!8969) lt!424135)) (and (bvsge (index!38249 lt!424135) #b00000000000000000000000000000000) (bvslt (index!38249 lt!424135) (size!27642 _keys!1487)))) (or ((_ is Undefined!8969) lt!424135) (ite ((_ is Found!8969) lt!424135) (= (select (arr!27182 _keys!1487) (index!38247 lt!424135)) (select (arr!27182 _keys!1487) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!8969) lt!424135) (= (select (arr!27182 _keys!1487) (index!38246 lt!424135)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!8969) lt!424135) (= (select (arr!27182 _keys!1487) (index!38249 lt!424135)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!113789 (= lt!424135 e!527317)))

(declare-fun c!97849 () Bool)

(assert (=> d!113789 (= c!97849 (and ((_ is Intermediate!8969) lt!424134) (undefined!9781 lt!424134)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!56494 (_ BitVec 32)) SeekEntryResult!8969)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!113789 (= lt!424134 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) mask!1881) (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881))))

(assert (=> d!113789 (validMask!0 mask!1881)))

(assert (=> d!113789 (= (seekEntryOrOpen!0 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) _keys!1487 mask!1881) lt!424135)))

(declare-fun b!938825 () Bool)

(assert (=> b!938825 (= e!527317 Undefined!8969)))

(declare-fun b!938826 () Bool)

(declare-fun c!97850 () Bool)

(assert (=> b!938826 (= c!97850 (= lt!424133 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938826 (= e!527316 e!527318)))

(assert (= (and d!113789 c!97849) b!938825))

(assert (= (and d!113789 (not c!97849)) b!938824))

(assert (= (and b!938824 c!97851) b!938823))

(assert (= (and b!938824 (not c!97851)) b!938826))

(assert (= (and b!938826 c!97850) b!938821))

(assert (= (and b!938826 (not c!97850)) b!938822))

(assert (=> b!938822 m!873963))

(declare-fun m!874645 () Bool)

(assert (=> b!938822 m!874645))

(declare-fun m!874647 () Bool)

(assert (=> b!938824 m!874647))

(declare-fun m!874649 () Bool)

(assert (=> d!113789 m!874649))

(declare-fun m!874651 () Bool)

(assert (=> d!113789 m!874651))

(declare-fun m!874653 () Bool)

(assert (=> d!113789 m!874653))

(assert (=> d!113789 m!873963))

(declare-fun m!874655 () Bool)

(assert (=> d!113789 m!874655))

(declare-fun m!874657 () Bool)

(assert (=> d!113789 m!874657))

(assert (=> d!113789 m!873963))

(assert (=> d!113789 m!874653))

(assert (=> d!113789 m!873765))

(assert (=> b!938479 d!113789))

(assert (=> b!938539 d!113783))

(assert (=> b!938539 d!113697))

(assert (=> b!938524 d!113649))

(declare-fun d!113791 () Bool)

(declare-fun lt!424138 () Bool)

(declare-fun content!413 (List!19293) (InoxSet tuple2!13486))

(assert (=> d!113791 (= lt!424138 (select (content!413 (toList!6114 lt!423937)) lt!423732))))

(declare-fun e!527323 () Bool)

(assert (=> d!113791 (= lt!424138 e!527323)))

(declare-fun res!631651 () Bool)

(assert (=> d!113791 (=> (not res!631651) (not e!527323))))

(assert (=> d!113791 (= res!631651 ((_ is Cons!19289) (toList!6114 lt!423937)))))

(assert (=> d!113791 (= (contains!5128 (toList!6114 lt!423937) lt!423732) lt!424138)))

(declare-fun b!938831 () Bool)

(declare-fun e!527324 () Bool)

(assert (=> b!938831 (= e!527323 e!527324)))

(declare-fun res!631652 () Bool)

(assert (=> b!938831 (=> res!631652 e!527324)))

(assert (=> b!938831 (= res!631652 (= (h!20435 (toList!6114 lt!423937)) lt!423732))))

(declare-fun b!938832 () Bool)

(assert (=> b!938832 (= e!527324 (contains!5128 (t!27602 (toList!6114 lt!423937)) lt!423732))))

(assert (= (and d!113791 res!631651) b!938831))

(assert (= (and b!938831 (not res!631652)) b!938832))

(declare-fun m!874659 () Bool)

(assert (=> d!113791 m!874659))

(declare-fun m!874661 () Bool)

(assert (=> d!113791 m!874661))

(declare-fun m!874663 () Bool)

(assert (=> b!938832 m!874663))

(assert (=> b!938536 d!113791))

(declare-fun d!113793 () Bool)

(declare-fun lt!424139 () Bool)

(assert (=> d!113793 (= lt!424139 (select (content!413 (toList!6114 lt!423945)) lt!423732))))

(declare-fun e!527325 () Bool)

(assert (=> d!113793 (= lt!424139 e!527325)))

(declare-fun res!631653 () Bool)

(assert (=> d!113793 (=> (not res!631653) (not e!527325))))

(assert (=> d!113793 (= res!631653 ((_ is Cons!19289) (toList!6114 lt!423945)))))

(assert (=> d!113793 (= (contains!5128 (toList!6114 lt!423945) lt!423732) lt!424139)))

(declare-fun b!938833 () Bool)

(declare-fun e!527326 () Bool)

(assert (=> b!938833 (= e!527325 e!527326)))

(declare-fun res!631654 () Bool)

(assert (=> b!938833 (=> res!631654 e!527326)))

(assert (=> b!938833 (= res!631654 (= (h!20435 (toList!6114 lt!423945)) lt!423732))))

(declare-fun b!938834 () Bool)

(assert (=> b!938834 (= e!527326 (contains!5128 (t!27602 (toList!6114 lt!423945)) lt!423732))))

(assert (= (and d!113793 res!631653) b!938833))

(assert (= (and b!938833 (not res!631654)) b!938834))

(declare-fun m!874665 () Bool)

(assert (=> d!113793 m!874665))

(declare-fun m!874667 () Bool)

(assert (=> d!113793 m!874667))

(declare-fun m!874669 () Bool)

(assert (=> b!938834 m!874669))

(assert (=> b!938541 d!113793))

(declare-fun d!113795 () Bool)

(declare-fun lt!424140 () Bool)

(assert (=> d!113795 (= lt!424140 (select (content!412 Nil!19291) (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun e!527327 () Bool)

(assert (=> d!113795 (= lt!424140 e!527327)))

(declare-fun res!631656 () Bool)

(assert (=> d!113795 (=> (not res!631656) (not e!527327))))

(assert (=> d!113795 (= res!631656 ((_ is Cons!19290) Nil!19291))))

(assert (=> d!113795 (= (contains!5127 Nil!19291 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))) lt!424140)))

(declare-fun b!938835 () Bool)

(declare-fun e!527328 () Bool)

(assert (=> b!938835 (= e!527327 e!527328)))

(declare-fun res!631655 () Bool)

(assert (=> b!938835 (=> res!631655 e!527328)))

(assert (=> b!938835 (= res!631655 (= (h!20436 Nil!19291) (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(declare-fun b!938836 () Bool)

(assert (=> b!938836 (= e!527328 (contains!5127 (t!27603 Nil!19291) (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001))))))

(assert (= (and d!113795 res!631656) b!938835))

(assert (= (and b!938835 (not res!631655)) b!938836))

(assert (=> d!113795 m!874123))

(assert (=> d!113795 m!873771))

(declare-fun m!874671 () Bool)

(assert (=> d!113795 m!874671))

(assert (=> b!938836 m!873771))

(declare-fun m!874673 () Bool)

(assert (=> b!938836 m!874673))

(assert (=> b!938520 d!113795))

(assert (=> b!938522 d!113649))

(declare-fun d!113797 () Bool)

(declare-fun e!527329 () Bool)

(assert (=> d!113797 e!527329))

(declare-fun res!631657 () Bool)

(assert (=> d!113797 (=> res!631657 e!527329)))

(declare-fun lt!424141 () Bool)

(assert (=> d!113797 (= res!631657 (not lt!424141))))

(declare-fun lt!424143 () Bool)

(assert (=> d!113797 (= lt!424141 lt!424143)))

(declare-fun lt!424144 () Unit!31704)

(declare-fun e!527330 () Unit!31704)

(assert (=> d!113797 (= lt!424144 e!527330)))

(declare-fun c!97852 () Bool)

(assert (=> d!113797 (= c!97852 lt!424143)))

(assert (=> d!113797 (= lt!424143 (containsKey!452 (toList!6114 lt!423910) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113797 (= (contains!5126 lt!423910 #b0000000000000000000000000000000000000000000000000000000000000000) lt!424141)))

(declare-fun b!938837 () Bool)

(declare-fun lt!424142 () Unit!31704)

(assert (=> b!938837 (= e!527330 lt!424142)))

(assert (=> b!938837 (= lt!424142 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423910) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938837 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423910) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938838 () Bool)

(declare-fun Unit!31728 () Unit!31704)

(assert (=> b!938838 (= e!527330 Unit!31728)))

(declare-fun b!938839 () Bool)

(assert (=> b!938839 (= e!527329 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423910) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113797 c!97852) b!938837))

(assert (= (and d!113797 (not c!97852)) b!938838))

(assert (= (and d!113797 (not res!631657)) b!938839))

(declare-fun m!874675 () Bool)

(assert (=> d!113797 m!874675))

(declare-fun m!874677 () Bool)

(assert (=> b!938837 m!874677))

(declare-fun m!874679 () Bool)

(assert (=> b!938837 m!874679))

(assert (=> b!938837 m!874679))

(declare-fun m!874681 () Bool)

(assert (=> b!938837 m!874681))

(assert (=> b!938839 m!874679))

(assert (=> b!938839 m!874679))

(assert (=> b!938839 m!874681))

(assert (=> bm!40861 d!113797))

(declare-fun d!113799 () Bool)

(declare-fun e!527331 () Bool)

(assert (=> d!113799 e!527331))

(declare-fun res!631658 () Bool)

(assert (=> d!113799 (=> (not res!631658) (not e!527331))))

(declare-fun lt!424147 () ListLongMap!12197)

(assert (=> d!113799 (= res!631658 (contains!5126 lt!424147 (_1!6753 (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun lt!424148 () List!19293)

(assert (=> d!113799 (= lt!424147 (ListLongMap!12198 lt!424148))))

(declare-fun lt!424146 () Unit!31704)

(declare-fun lt!424145 () Unit!31704)

(assert (=> d!113799 (= lt!424146 lt!424145)))

(assert (=> d!113799 (= (getValueByKey!487 lt!424148 (_1!6753 (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!492 (_2!6753 (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113799 (= lt!424145 (lemmaContainsTupThenGetReturnValue!261 lt!424148 (_1!6753 (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6753 (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113799 (= lt!424148 (insertStrictlySorted!317 (toList!6114 (ite c!97742 call!40842 (ite c!97744 call!40848 call!40847))) (_1!6753 (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (_2!6753 (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(assert (=> d!113799 (= (+!2809 (ite c!97742 call!40842 (ite c!97744 call!40848 call!40847)) (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) lt!424147)))

(declare-fun b!938840 () Bool)

(declare-fun res!631659 () Bool)

(assert (=> b!938840 (=> (not res!631659) (not e!527331))))

(assert (=> b!938840 (= res!631659 (= (getValueByKey!487 (toList!6114 lt!424147) (_1!6753 (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))) (Some!492 (_2!6753 (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))))

(declare-fun b!938841 () Bool)

(assert (=> b!938841 (= e!527331 (contains!5128 (toList!6114 lt!424147) (ite (or c!97742 c!97744) (tuple2!13487 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!1173) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (= (and d!113799 res!631658) b!938840))

(assert (= (and b!938840 res!631659) b!938841))

(declare-fun m!874683 () Bool)

(assert (=> d!113799 m!874683))

(declare-fun m!874685 () Bool)

(assert (=> d!113799 m!874685))

(declare-fun m!874687 () Bool)

(assert (=> d!113799 m!874687))

(declare-fun m!874689 () Bool)

(assert (=> d!113799 m!874689))

(declare-fun m!874691 () Bool)

(assert (=> b!938840 m!874691))

(declare-fun m!874693 () Bool)

(assert (=> b!938841 m!874693))

(assert (=> bm!40845 d!113799))

(declare-fun d!113801 () Bool)

(declare-fun e!527332 () Bool)

(assert (=> d!113801 e!527332))

(declare-fun res!631660 () Bool)

(assert (=> d!113801 (=> (not res!631660) (not e!527332))))

(declare-fun lt!424151 () ListLongMap!12197)

(assert (=> d!113801 (= res!631660 (contains!5126 lt!424151 (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(declare-fun lt!424152 () List!19293)

(assert (=> d!113801 (= lt!424151 (ListLongMap!12198 lt!424152))))

(declare-fun lt!424150 () Unit!31704)

(declare-fun lt!424149 () Unit!31704)

(assert (=> d!113801 (= lt!424150 lt!424149)))

(assert (=> d!113801 (= (getValueByKey!487 lt!424152 (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113801 (= lt!424149 (lemmaContainsTupThenGetReturnValue!261 lt!424152 (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113801 (= lt!424152 (insertStrictlySorted!317 (toList!6114 call!40861) (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))))))

(assert (=> d!113801 (= (+!2809 call!40861 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)) lt!424151)))

(declare-fun b!938842 () Bool)

(declare-fun res!631661 () Bool)

(assert (=> b!938842 (=> (not res!631661) (not e!527332))))

(assert (=> b!938842 (= res!631661 (= (getValueByKey!487 (toList!6114 lt!424151) (_1!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))))

(declare-fun b!938843 () Bool)

(assert (=> b!938843 (= e!527332 (contains!5128 (toList!6114 lt!424151) (tuple2!13487 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!1173)))))

(assert (= (and d!113801 res!631660) b!938842))

(assert (= (and b!938842 res!631661) b!938843))

(declare-fun m!874695 () Bool)

(assert (=> d!113801 m!874695))

(declare-fun m!874697 () Bool)

(assert (=> d!113801 m!874697))

(declare-fun m!874699 () Bool)

(assert (=> d!113801 m!874699))

(declare-fun m!874701 () Bool)

(assert (=> d!113801 m!874701))

(declare-fun m!874703 () Bool)

(assert (=> b!938842 m!874703))

(declare-fun m!874705 () Bool)

(assert (=> b!938843 m!874705))

(assert (=> b!938494 d!113801))

(declare-fun d!113803 () Bool)

(declare-fun e!527333 () Bool)

(assert (=> d!113803 e!527333))

(declare-fun res!631662 () Bool)

(assert (=> d!113803 (=> res!631662 e!527333)))

(declare-fun lt!424153 () Bool)

(assert (=> d!113803 (= res!631662 (not lt!424153))))

(declare-fun lt!424155 () Bool)

(assert (=> d!113803 (= lt!424153 lt!424155)))

(declare-fun lt!424156 () Unit!31704)

(declare-fun e!527334 () Unit!31704)

(assert (=> d!113803 (= lt!424156 e!527334)))

(declare-fun c!97853 () Bool)

(assert (=> d!113803 (= c!97853 lt!424155)))

(assert (=> d!113803 (= lt!424155 (containsKey!452 (toList!6114 lt!423853) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113803 (= (contains!5126 lt!423853 #b0000000000000000000000000000000000000000000000000000000000000000) lt!424153)))

(declare-fun b!938844 () Bool)

(declare-fun lt!424154 () Unit!31704)

(assert (=> b!938844 (= e!527334 lt!424154)))

(assert (=> b!938844 (= lt!424154 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423853) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938844 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423853) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938845 () Bool)

(declare-fun Unit!31729 () Unit!31704)

(assert (=> b!938845 (= e!527334 Unit!31729)))

(declare-fun b!938846 () Bool)

(assert (=> b!938846 (= e!527333 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423853) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113803 c!97853) b!938844))

(assert (= (and d!113803 (not c!97853)) b!938845))

(assert (= (and d!113803 (not res!631662)) b!938846))

(declare-fun m!874707 () Bool)

(assert (=> d!113803 m!874707))

(declare-fun m!874709 () Bool)

(assert (=> b!938844 m!874709))

(assert (=> b!938844 m!874477))

(assert (=> b!938844 m!874477))

(declare-fun m!874711 () Bool)

(assert (=> b!938844 m!874711))

(assert (=> b!938846 m!874477))

(assert (=> b!938846 m!874477))

(assert (=> b!938846 m!874711))

(assert (=> bm!40844 d!113803))

(declare-fun d!113805 () Bool)

(assert (=> d!113805 (= (apply!892 lt!423879 #b1000000000000000000000000000000000000000000000000000000000000000) (get!14359 (getValueByKey!487 (toList!6114 lt!423879) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26376 () Bool)

(assert (= bs!26376 d!113805))

(assert (=> bs!26376 m!874341))

(assert (=> bs!26376 m!874341))

(declare-fun m!874713 () Bool)

(assert (=> bs!26376 m!874713))

(assert (=> b!938453 d!113805))

(declare-fun b!938847 () Bool)

(declare-fun e!527335 () Option!493)

(assert (=> b!938847 (= e!527335 (Some!492 (_2!6753 (h!20435 (toList!6114 lt!423945)))))))

(declare-fun b!938849 () Bool)

(declare-fun e!527336 () Option!493)

(assert (=> b!938849 (= e!527336 (getValueByKey!487 (t!27602 (toList!6114 lt!423945)) (_1!6753 lt!423732)))))

(declare-fun b!938850 () Bool)

(assert (=> b!938850 (= e!527336 None!491)))

(declare-fun b!938848 () Bool)

(assert (=> b!938848 (= e!527335 e!527336)))

(declare-fun c!97855 () Bool)

(assert (=> b!938848 (= c!97855 (and ((_ is Cons!19289) (toList!6114 lt!423945)) (not (= (_1!6753 (h!20435 (toList!6114 lt!423945))) (_1!6753 lt!423732)))))))

(declare-fun d!113807 () Bool)

(declare-fun c!97854 () Bool)

(assert (=> d!113807 (= c!97854 (and ((_ is Cons!19289) (toList!6114 lt!423945)) (= (_1!6753 (h!20435 (toList!6114 lt!423945))) (_1!6753 lt!423732))))))

(assert (=> d!113807 (= (getValueByKey!487 (toList!6114 lt!423945) (_1!6753 lt!423732)) e!527335)))

(assert (= (and d!113807 c!97854) b!938847))

(assert (= (and d!113807 (not c!97854)) b!938848))

(assert (= (and b!938848 c!97855) b!938849))

(assert (= (and b!938848 (not c!97855)) b!938850))

(declare-fun m!874715 () Bool)

(assert (=> b!938849 m!874715))

(assert (=> b!938540 d!113807))

(declare-fun d!113809 () Bool)

(assert (=> d!113809 (not (= (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) k0!1099))))

(assert (=> d!113809 true))

(declare-fun _$67!52 () Unit!31704)

(assert (=> d!113809 (= (choose!21 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19291) _$67!52)))

(declare-fun bs!26377 () Bool)

(assert (= bs!26377 d!113809))

(assert (=> bs!26377 m!873771))

(assert (=> d!113583 d!113809))

(assert (=> bm!40846 d!113741))

(assert (=> b!938448 d!113727))

(declare-fun d!113811 () Bool)

(assert (=> d!113811 (= (apply!892 lt!423910 #b0000000000000000000000000000000000000000000000000000000000000000) (get!14359 (getValueByKey!487 (toList!6114 lt!423910) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!26378 () Bool)

(assert (= bs!26378 d!113811))

(assert (=> bs!26378 m!874679))

(assert (=> bs!26378 m!874679))

(declare-fun m!874717 () Bool)

(assert (=> bs!26378 m!874717))

(assert (=> b!938490 d!113811))

(assert (=> b!938436 d!113643))

(declare-fun d!113813 () Bool)

(declare-fun e!527337 () Bool)

(assert (=> d!113813 e!527337))

(declare-fun res!631663 () Bool)

(assert (=> d!113813 (=> (not res!631663) (not e!527337))))

(declare-fun lt!424159 () ListLongMap!12197)

(assert (=> d!113813 (= res!631663 (contains!5126 lt!424159 (_1!6753 (tuple2!13487 lt!423842 zeroValue!1173))))))

(declare-fun lt!424160 () List!19293)

(assert (=> d!113813 (= lt!424159 (ListLongMap!12198 lt!424160))))

(declare-fun lt!424158 () Unit!31704)

(declare-fun lt!424157 () Unit!31704)

(assert (=> d!113813 (= lt!424158 lt!424157)))

(assert (=> d!113813 (= (getValueByKey!487 lt!424160 (_1!6753 (tuple2!13487 lt!423842 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423842 zeroValue!1173))))))

(assert (=> d!113813 (= lt!424157 (lemmaContainsTupThenGetReturnValue!261 lt!424160 (_1!6753 (tuple2!13487 lt!423842 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423842 zeroValue!1173))))))

(assert (=> d!113813 (= lt!424160 (insertStrictlySorted!317 (toList!6114 lt!423849) (_1!6753 (tuple2!13487 lt!423842 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423842 zeroValue!1173))))))

(assert (=> d!113813 (= (+!2809 lt!423849 (tuple2!13487 lt!423842 zeroValue!1173)) lt!424159)))

(declare-fun b!938851 () Bool)

(declare-fun res!631664 () Bool)

(assert (=> b!938851 (=> (not res!631664) (not e!527337))))

(assert (=> b!938851 (= res!631664 (= (getValueByKey!487 (toList!6114 lt!424159) (_1!6753 (tuple2!13487 lt!423842 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423842 zeroValue!1173)))))))

(declare-fun b!938852 () Bool)

(assert (=> b!938852 (= e!527337 (contains!5128 (toList!6114 lt!424159) (tuple2!13487 lt!423842 zeroValue!1173)))))

(assert (= (and d!113813 res!631663) b!938851))

(assert (= (and b!938851 res!631664) b!938852))

(declare-fun m!874719 () Bool)

(assert (=> d!113813 m!874719))

(declare-fun m!874721 () Bool)

(assert (=> d!113813 m!874721))

(declare-fun m!874723 () Bool)

(assert (=> d!113813 m!874723))

(declare-fun m!874725 () Bool)

(assert (=> d!113813 m!874725))

(declare-fun m!874727 () Bool)

(assert (=> b!938851 m!874727))

(declare-fun m!874729 () Bool)

(assert (=> b!938852 m!874729))

(assert (=> b!938436 d!113813))

(declare-fun d!113815 () Bool)

(assert (=> d!113815 (= (apply!892 (+!2809 lt!423848 (tuple2!13487 lt!423846 minValue!1173)) lt!423854) (apply!892 lt!423848 lt!423854))))

(declare-fun lt!424161 () Unit!31704)

(assert (=> d!113815 (= lt!424161 (choose!1567 lt!423848 lt!423846 minValue!1173 lt!423854))))

(declare-fun e!527338 () Bool)

(assert (=> d!113815 e!527338))

(declare-fun res!631665 () Bool)

(assert (=> d!113815 (=> (not res!631665) (not e!527338))))

(assert (=> d!113815 (= res!631665 (contains!5126 lt!423848 lt!423854))))

(assert (=> d!113815 (= (addApplyDifferent!439 lt!423848 lt!423846 minValue!1173 lt!423854) lt!424161)))

(declare-fun b!938853 () Bool)

(assert (=> b!938853 (= e!527338 (not (= lt!423854 lt!423846)))))

(assert (= (and d!113815 res!631665) b!938853))

(assert (=> d!113815 m!873851))

(assert (=> d!113815 m!873881))

(assert (=> d!113815 m!873851))

(assert (=> d!113815 m!873853))

(declare-fun m!874731 () Bool)

(assert (=> d!113815 m!874731))

(declare-fun m!874733 () Bool)

(assert (=> d!113815 m!874733))

(assert (=> b!938436 d!113815))

(declare-fun d!113817 () Bool)

(assert (=> d!113817 (= (apply!892 (+!2809 lt!423844 (tuple2!13487 lt!423838 zeroValue!1173)) lt!423833) (get!14359 (getValueByKey!487 (toList!6114 (+!2809 lt!423844 (tuple2!13487 lt!423838 zeroValue!1173))) lt!423833)))))

(declare-fun bs!26379 () Bool)

(assert (= bs!26379 d!113817))

(declare-fun m!874735 () Bool)

(assert (=> bs!26379 m!874735))

(assert (=> bs!26379 m!874735))

(declare-fun m!874737 () Bool)

(assert (=> bs!26379 m!874737))

(assert (=> b!938436 d!113817))

(declare-fun d!113819 () Bool)

(assert (=> d!113819 (= (apply!892 (+!2809 lt!423848 (tuple2!13487 lt!423846 minValue!1173)) lt!423854) (get!14359 (getValueByKey!487 (toList!6114 (+!2809 lt!423848 (tuple2!13487 lt!423846 minValue!1173))) lt!423854)))))

(declare-fun bs!26380 () Bool)

(assert (= bs!26380 d!113819))

(declare-fun m!874739 () Bool)

(assert (=> bs!26380 m!874739))

(assert (=> bs!26380 m!874739))

(declare-fun m!874741 () Bool)

(assert (=> bs!26380 m!874741))

(assert (=> b!938436 d!113819))

(declare-fun d!113821 () Bool)

(assert (=> d!113821 (= (apply!892 (+!2809 lt!423844 (tuple2!13487 lt!423838 zeroValue!1173)) lt!423833) (apply!892 lt!423844 lt!423833))))

(declare-fun lt!424162 () Unit!31704)

(assert (=> d!113821 (= lt!424162 (choose!1567 lt!423844 lt!423838 zeroValue!1173 lt!423833))))

(declare-fun e!527339 () Bool)

(assert (=> d!113821 e!527339))

(declare-fun res!631666 () Bool)

(assert (=> d!113821 (=> (not res!631666) (not e!527339))))

(assert (=> d!113821 (= res!631666 (contains!5126 lt!423844 lt!423833))))

(assert (=> d!113821 (= (addApplyDifferent!439 lt!423844 lt!423838 zeroValue!1173 lt!423833) lt!424162)))

(declare-fun b!938854 () Bool)

(assert (=> b!938854 (= e!527339 (not (= lt!423833 lt!423838)))))

(assert (= (and d!113821 res!631666) b!938854))

(assert (=> d!113821 m!873863))

(assert (=> d!113821 m!873861))

(assert (=> d!113821 m!873863))

(assert (=> d!113821 m!873865))

(declare-fun m!874743 () Bool)

(assert (=> d!113821 m!874743))

(declare-fun m!874745 () Bool)

(assert (=> d!113821 m!874745))

(assert (=> b!938436 d!113821))

(declare-fun d!113823 () Bool)

(assert (=> d!113823 (= (apply!892 (+!2809 lt!423845 (tuple2!13487 lt!423836 minValue!1173)) lt!423841) (get!14359 (getValueByKey!487 (toList!6114 (+!2809 lt!423845 (tuple2!13487 lt!423836 minValue!1173))) lt!423841)))))

(declare-fun bs!26381 () Bool)

(assert (= bs!26381 d!113823))

(declare-fun m!874747 () Bool)

(assert (=> bs!26381 m!874747))

(assert (=> bs!26381 m!874747))

(declare-fun m!874749 () Bool)

(assert (=> bs!26381 m!874749))

(assert (=> b!938436 d!113823))

(declare-fun d!113825 () Bool)

(declare-fun e!527340 () Bool)

(assert (=> d!113825 e!527340))

(declare-fun res!631667 () Bool)

(assert (=> d!113825 (=> (not res!631667) (not e!527340))))

(declare-fun lt!424165 () ListLongMap!12197)

(assert (=> d!113825 (= res!631667 (contains!5126 lt!424165 (_1!6753 (tuple2!13487 lt!423836 minValue!1173))))))

(declare-fun lt!424166 () List!19293)

(assert (=> d!113825 (= lt!424165 (ListLongMap!12198 lt!424166))))

(declare-fun lt!424164 () Unit!31704)

(declare-fun lt!424163 () Unit!31704)

(assert (=> d!113825 (= lt!424164 lt!424163)))

(assert (=> d!113825 (= (getValueByKey!487 lt!424166 (_1!6753 (tuple2!13487 lt!423836 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423836 minValue!1173))))))

(assert (=> d!113825 (= lt!424163 (lemmaContainsTupThenGetReturnValue!261 lt!424166 (_1!6753 (tuple2!13487 lt!423836 minValue!1173)) (_2!6753 (tuple2!13487 lt!423836 minValue!1173))))))

(assert (=> d!113825 (= lt!424166 (insertStrictlySorted!317 (toList!6114 lt!423845) (_1!6753 (tuple2!13487 lt!423836 minValue!1173)) (_2!6753 (tuple2!13487 lt!423836 minValue!1173))))))

(assert (=> d!113825 (= (+!2809 lt!423845 (tuple2!13487 lt!423836 minValue!1173)) lt!424165)))

(declare-fun b!938855 () Bool)

(declare-fun res!631668 () Bool)

(assert (=> b!938855 (=> (not res!631668) (not e!527340))))

(assert (=> b!938855 (= res!631668 (= (getValueByKey!487 (toList!6114 lt!424165) (_1!6753 (tuple2!13487 lt!423836 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423836 minValue!1173)))))))

(declare-fun b!938856 () Bool)

(assert (=> b!938856 (= e!527340 (contains!5128 (toList!6114 lt!424165) (tuple2!13487 lt!423836 minValue!1173)))))

(assert (= (and d!113825 res!631667) b!938855))

(assert (= (and b!938855 res!631668) b!938856))

(declare-fun m!874751 () Bool)

(assert (=> d!113825 m!874751))

(declare-fun m!874753 () Bool)

(assert (=> d!113825 m!874753))

(declare-fun m!874755 () Bool)

(assert (=> d!113825 m!874755))

(declare-fun m!874757 () Bool)

(assert (=> d!113825 m!874757))

(declare-fun m!874759 () Bool)

(assert (=> b!938855 m!874759))

(declare-fun m!874761 () Bool)

(assert (=> b!938856 m!874761))

(assert (=> b!938436 d!113825))

(declare-fun d!113827 () Bool)

(assert (=> d!113827 (= (apply!892 lt!423848 lt!423854) (get!14359 (getValueByKey!487 (toList!6114 lt!423848) lt!423854)))))

(declare-fun bs!26382 () Bool)

(assert (= bs!26382 d!113827))

(declare-fun m!874763 () Bool)

(assert (=> bs!26382 m!874763))

(assert (=> bs!26382 m!874763))

(declare-fun m!874765 () Bool)

(assert (=> bs!26382 m!874765))

(assert (=> b!938436 d!113827))

(declare-fun d!113829 () Bool)

(assert (=> d!113829 (= (apply!892 lt!423845 lt!423841) (get!14359 (getValueByKey!487 (toList!6114 lt!423845) lt!423841)))))

(declare-fun bs!26383 () Bool)

(assert (= bs!26383 d!113829))

(declare-fun m!874767 () Bool)

(assert (=> bs!26383 m!874767))

(assert (=> bs!26383 m!874767))

(declare-fun m!874769 () Bool)

(assert (=> bs!26383 m!874769))

(assert (=> b!938436 d!113829))

(declare-fun d!113831 () Bool)

(declare-fun e!527341 () Bool)

(assert (=> d!113831 e!527341))

(declare-fun res!631669 () Bool)

(assert (=> d!113831 (=> (not res!631669) (not e!527341))))

(declare-fun lt!424169 () ListLongMap!12197)

(assert (=> d!113831 (= res!631669 (contains!5126 lt!424169 (_1!6753 (tuple2!13487 lt!423846 minValue!1173))))))

(declare-fun lt!424170 () List!19293)

(assert (=> d!113831 (= lt!424169 (ListLongMap!12198 lt!424170))))

(declare-fun lt!424168 () Unit!31704)

(declare-fun lt!424167 () Unit!31704)

(assert (=> d!113831 (= lt!424168 lt!424167)))

(assert (=> d!113831 (= (getValueByKey!487 lt!424170 (_1!6753 (tuple2!13487 lt!423846 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423846 minValue!1173))))))

(assert (=> d!113831 (= lt!424167 (lemmaContainsTupThenGetReturnValue!261 lt!424170 (_1!6753 (tuple2!13487 lt!423846 minValue!1173)) (_2!6753 (tuple2!13487 lt!423846 minValue!1173))))))

(assert (=> d!113831 (= lt!424170 (insertStrictlySorted!317 (toList!6114 lt!423848) (_1!6753 (tuple2!13487 lt!423846 minValue!1173)) (_2!6753 (tuple2!13487 lt!423846 minValue!1173))))))

(assert (=> d!113831 (= (+!2809 lt!423848 (tuple2!13487 lt!423846 minValue!1173)) lt!424169)))

(declare-fun b!938857 () Bool)

(declare-fun res!631670 () Bool)

(assert (=> b!938857 (=> (not res!631670) (not e!527341))))

(assert (=> b!938857 (= res!631670 (= (getValueByKey!487 (toList!6114 lt!424169) (_1!6753 (tuple2!13487 lt!423846 minValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423846 minValue!1173)))))))

(declare-fun b!938858 () Bool)

(assert (=> b!938858 (= e!527341 (contains!5128 (toList!6114 lt!424169) (tuple2!13487 lt!423846 minValue!1173)))))

(assert (= (and d!113831 res!631669) b!938857))

(assert (= (and b!938857 res!631670) b!938858))

(declare-fun m!874771 () Bool)

(assert (=> d!113831 m!874771))

(declare-fun m!874773 () Bool)

(assert (=> d!113831 m!874773))

(declare-fun m!874775 () Bool)

(assert (=> d!113831 m!874775))

(declare-fun m!874777 () Bool)

(assert (=> d!113831 m!874777))

(declare-fun m!874779 () Bool)

(assert (=> b!938857 m!874779))

(declare-fun m!874781 () Bool)

(assert (=> b!938858 m!874781))

(assert (=> b!938436 d!113831))

(declare-fun d!113833 () Bool)

(declare-fun e!527342 () Bool)

(assert (=> d!113833 e!527342))

(declare-fun res!631671 () Bool)

(assert (=> d!113833 (=> (not res!631671) (not e!527342))))

(declare-fun lt!424173 () ListLongMap!12197)

(assert (=> d!113833 (= res!631671 (contains!5126 lt!424173 (_1!6753 (tuple2!13487 lt!423838 zeroValue!1173))))))

(declare-fun lt!424174 () List!19293)

(assert (=> d!113833 (= lt!424173 (ListLongMap!12198 lt!424174))))

(declare-fun lt!424172 () Unit!31704)

(declare-fun lt!424171 () Unit!31704)

(assert (=> d!113833 (= lt!424172 lt!424171)))

(assert (=> d!113833 (= (getValueByKey!487 lt!424174 (_1!6753 (tuple2!13487 lt!423838 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423838 zeroValue!1173))))))

(assert (=> d!113833 (= lt!424171 (lemmaContainsTupThenGetReturnValue!261 lt!424174 (_1!6753 (tuple2!13487 lt!423838 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423838 zeroValue!1173))))))

(assert (=> d!113833 (= lt!424174 (insertStrictlySorted!317 (toList!6114 lt!423844) (_1!6753 (tuple2!13487 lt!423838 zeroValue!1173)) (_2!6753 (tuple2!13487 lt!423838 zeroValue!1173))))))

(assert (=> d!113833 (= (+!2809 lt!423844 (tuple2!13487 lt!423838 zeroValue!1173)) lt!424173)))

(declare-fun b!938859 () Bool)

(declare-fun res!631672 () Bool)

(assert (=> b!938859 (=> (not res!631672) (not e!527342))))

(assert (=> b!938859 (= res!631672 (= (getValueByKey!487 (toList!6114 lt!424173) (_1!6753 (tuple2!13487 lt!423838 zeroValue!1173))) (Some!492 (_2!6753 (tuple2!13487 lt!423838 zeroValue!1173)))))))

(declare-fun b!938860 () Bool)

(assert (=> b!938860 (= e!527342 (contains!5128 (toList!6114 lt!424173) (tuple2!13487 lt!423838 zeroValue!1173)))))

(assert (= (and d!113833 res!631671) b!938859))

(assert (= (and b!938859 res!631672) b!938860))

(declare-fun m!874783 () Bool)

(assert (=> d!113833 m!874783))

(declare-fun m!874785 () Bool)

(assert (=> d!113833 m!874785))

(declare-fun m!874787 () Bool)

(assert (=> d!113833 m!874787))

(declare-fun m!874789 () Bool)

(assert (=> d!113833 m!874789))

(declare-fun m!874791 () Bool)

(assert (=> b!938859 m!874791))

(declare-fun m!874793 () Bool)

(assert (=> b!938860 m!874793))

(assert (=> b!938436 d!113833))

(declare-fun d!113835 () Bool)

(assert (=> d!113835 (= (apply!892 lt!423844 lt!423833) (get!14359 (getValueByKey!487 (toList!6114 lt!423844) lt!423833)))))

(declare-fun bs!26384 () Bool)

(assert (= bs!26384 d!113835))

(declare-fun m!874795 () Bool)

(assert (=> bs!26384 m!874795))

(assert (=> bs!26384 m!874795))

(declare-fun m!874797 () Bool)

(assert (=> bs!26384 m!874797))

(assert (=> b!938436 d!113835))

(declare-fun d!113837 () Bool)

(assert (=> d!113837 (contains!5126 (+!2809 lt!423849 (tuple2!13487 lt!423842 zeroValue!1173)) lt!423840)))

(declare-fun lt!424175 () Unit!31704)

(assert (=> d!113837 (= lt!424175 (choose!1569 lt!423849 lt!423842 zeroValue!1173 lt!423840))))

(assert (=> d!113837 (contains!5126 lt!423849 lt!423840)))

(assert (=> d!113837 (= (addStillContains!565 lt!423849 lt!423842 zeroValue!1173 lt!423840) lt!424175)))

(declare-fun bs!26385 () Bool)

(assert (= bs!26385 d!113837))

(assert (=> bs!26385 m!873873))

(assert (=> bs!26385 m!873873))

(assert (=> bs!26385 m!873879))

(declare-fun m!874799 () Bool)

(assert (=> bs!26385 m!874799))

(declare-fun m!874801 () Bool)

(assert (=> bs!26385 m!874801))

(assert (=> b!938436 d!113837))

(declare-fun d!113839 () Bool)

(declare-fun e!527343 () Bool)

(assert (=> d!113839 e!527343))

(declare-fun res!631673 () Bool)

(assert (=> d!113839 (=> res!631673 e!527343)))

(declare-fun lt!424176 () Bool)

(assert (=> d!113839 (= res!631673 (not lt!424176))))

(declare-fun lt!424178 () Bool)

(assert (=> d!113839 (= lt!424176 lt!424178)))

(declare-fun lt!424179 () Unit!31704)

(declare-fun e!527344 () Unit!31704)

(assert (=> d!113839 (= lt!424179 e!527344)))

(declare-fun c!97856 () Bool)

(assert (=> d!113839 (= c!97856 lt!424178)))

(assert (=> d!113839 (= lt!424178 (containsKey!452 (toList!6114 (+!2809 lt!423849 (tuple2!13487 lt!423842 zeroValue!1173))) lt!423840))))

(assert (=> d!113839 (= (contains!5126 (+!2809 lt!423849 (tuple2!13487 lt!423842 zeroValue!1173)) lt!423840) lt!424176)))

(declare-fun b!938861 () Bool)

(declare-fun lt!424177 () Unit!31704)

(assert (=> b!938861 (= e!527344 lt!424177)))

(assert (=> b!938861 (= lt!424177 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 (+!2809 lt!423849 (tuple2!13487 lt!423842 zeroValue!1173))) lt!423840))))

(assert (=> b!938861 (isDefined!357 (getValueByKey!487 (toList!6114 (+!2809 lt!423849 (tuple2!13487 lt!423842 zeroValue!1173))) lt!423840))))

(declare-fun b!938862 () Bool)

(declare-fun Unit!31730 () Unit!31704)

(assert (=> b!938862 (= e!527344 Unit!31730)))

(declare-fun b!938863 () Bool)

(assert (=> b!938863 (= e!527343 (isDefined!357 (getValueByKey!487 (toList!6114 (+!2809 lt!423849 (tuple2!13487 lt!423842 zeroValue!1173))) lt!423840)))))

(assert (= (and d!113839 c!97856) b!938861))

(assert (= (and d!113839 (not c!97856)) b!938862))

(assert (= (and d!113839 (not res!631673)) b!938863))

(declare-fun m!874803 () Bool)

(assert (=> d!113839 m!874803))

(declare-fun m!874805 () Bool)

(assert (=> b!938861 m!874805))

(declare-fun m!874807 () Bool)

(assert (=> b!938861 m!874807))

(assert (=> b!938861 m!874807))

(declare-fun m!874809 () Bool)

(assert (=> b!938861 m!874809))

(assert (=> b!938863 m!874807))

(assert (=> b!938863 m!874807))

(assert (=> b!938863 m!874809))

(assert (=> b!938436 d!113839))

(declare-fun d!113841 () Bool)

(assert (=> d!113841 (= (apply!892 (+!2809 lt!423845 (tuple2!13487 lt!423836 minValue!1173)) lt!423841) (apply!892 lt!423845 lt!423841))))

(declare-fun lt!424180 () Unit!31704)

(assert (=> d!113841 (= lt!424180 (choose!1567 lt!423845 lt!423836 minValue!1173 lt!423841))))

(declare-fun e!527345 () Bool)

(assert (=> d!113841 e!527345))

(declare-fun res!631674 () Bool)

(assert (=> d!113841 (=> (not res!631674) (not e!527345))))

(assert (=> d!113841 (= res!631674 (contains!5126 lt!423845 lt!423841))))

(assert (=> d!113841 (= (addApplyDifferent!439 lt!423845 lt!423836 minValue!1173 lt!423841) lt!424180)))

(declare-fun b!938864 () Bool)

(assert (=> b!938864 (= e!527345 (not (= lt!423841 lt!423836)))))

(assert (= (and d!113841 res!631674) b!938864))

(assert (=> d!113841 m!873857))

(assert (=> d!113841 m!873869))

(assert (=> d!113841 m!873857))

(assert (=> d!113841 m!873859))

(declare-fun m!874811 () Bool)

(assert (=> d!113841 m!874811))

(declare-fun m!874813 () Bool)

(assert (=> d!113841 m!874813))

(assert (=> b!938436 d!113841))

(declare-fun d!113843 () Bool)

(declare-fun res!631677 () Bool)

(declare-fun e!527348 () Bool)

(assert (=> d!113843 (=> res!631677 e!527348)))

(assert (=> d!113843 (= res!631677 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!27642 _keys!1487)))))

(assert (=> d!113843 (= (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!97774 (Cons!19290 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) Nil!19291) Nil!19291)) e!527348)))

(declare-fun b!938865 () Bool)

(declare-fun e!527346 () Bool)

(assert (=> b!938865 (= e!527346 (contains!5127 (ite c!97774 (Cons!19290 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) Nil!19291) Nil!19291) (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!938866 () Bool)

(declare-fun e!527347 () Bool)

(declare-fun call!40893 () Bool)

(assert (=> b!938866 (= e!527347 call!40893)))

(declare-fun b!938867 () Bool)

(declare-fun e!527349 () Bool)

(assert (=> b!938867 (= e!527349 e!527347)))

(declare-fun c!97857 () Bool)

(assert (=> b!938867 (= c!97857 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!938868 () Bool)

(assert (=> b!938868 (= e!527347 call!40893)))

(declare-fun b!938869 () Bool)

(assert (=> b!938869 (= e!527348 e!527349)))

(declare-fun res!631676 () Bool)

(assert (=> b!938869 (=> (not res!631676) (not e!527349))))

(assert (=> b!938869 (= res!631676 (not e!527346))))

(declare-fun res!631675 () Bool)

(assert (=> b!938869 (=> (not res!631675) (not e!527346))))

(assert (=> b!938869 (= res!631675 (validKeyInArray!0 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!40890 () Bool)

(assert (=> bm!40890 (= call!40893 (arrayNoDuplicates!0 _keys!1487 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!97857 (Cons!19290 (select (arr!27182 _keys!1487) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!97774 (Cons!19290 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) Nil!19291) Nil!19291)) (ite c!97774 (Cons!19290 (select (arr!27182 _keys!1487) #b00000000000000000000000000000000) Nil!19291) Nil!19291))))))

(assert (= (and d!113843 (not res!631677)) b!938869))

(assert (= (and b!938869 res!631675) b!938865))

(assert (= (and b!938869 res!631676) b!938867))

(assert (= (and b!938867 c!97857) b!938868))

(assert (= (and b!938867 (not c!97857)) b!938866))

(assert (= (or b!938868 b!938866) bm!40890))

(assert (=> b!938865 m!874625))

(assert (=> b!938865 m!874625))

(declare-fun m!874815 () Bool)

(assert (=> b!938865 m!874815))

(assert (=> b!938867 m!874625))

(assert (=> b!938867 m!874625))

(assert (=> b!938867 m!874633))

(assert (=> b!938869 m!874625))

(assert (=> b!938869 m!874625))

(assert (=> b!938869 m!874633))

(assert (=> bm!40890 m!874625))

(declare-fun m!874817 () Bool)

(assert (=> bm!40890 m!874817))

(assert (=> bm!40866 d!113843))

(declare-fun d!113845 () Bool)

(declare-fun res!631678 () Bool)

(declare-fun e!527350 () Bool)

(assert (=> d!113845 (=> res!631678 e!527350)))

(assert (=> d!113845 (= res!631678 (and ((_ is Cons!19289) (toList!6114 lt!423731)) (= (_1!6753 (h!20435 (toList!6114 lt!423731))) k0!1099)))))

(assert (=> d!113845 (= (containsKey!452 (toList!6114 lt!423731) k0!1099) e!527350)))

(declare-fun b!938870 () Bool)

(declare-fun e!527351 () Bool)

(assert (=> b!938870 (= e!527350 e!527351)))

(declare-fun res!631679 () Bool)

(assert (=> b!938870 (=> (not res!631679) (not e!527351))))

(assert (=> b!938870 (= res!631679 (and (or (not ((_ is Cons!19289) (toList!6114 lt!423731))) (bvsle (_1!6753 (h!20435 (toList!6114 lt!423731))) k0!1099)) ((_ is Cons!19289) (toList!6114 lt!423731)) (bvslt (_1!6753 (h!20435 (toList!6114 lt!423731))) k0!1099)))))

(declare-fun b!938871 () Bool)

(assert (=> b!938871 (= e!527351 (containsKey!452 (t!27602 (toList!6114 lt!423731)) k0!1099))))

(assert (= (and d!113845 (not res!631678)) b!938870))

(assert (= (and b!938870 res!631679) b!938871))

(declare-fun m!874819 () Bool)

(assert (=> b!938871 m!874819))

(assert (=> d!113587 d!113845))

(declare-fun d!113847 () Bool)

(declare-fun res!631680 () Bool)

(declare-fun e!527352 () Bool)

(assert (=> d!113847 (=> res!631680 e!527352)))

(assert (=> d!113847 (= res!631680 (and ((_ is Cons!19289) (toList!6114 lt!423733)) (= (_1!6753 (h!20435 (toList!6114 lt!423733))) k0!1099)))))

(assert (=> d!113847 (= (containsKey!452 (toList!6114 lt!423733) k0!1099) e!527352)))

(declare-fun b!938872 () Bool)

(declare-fun e!527353 () Bool)

(assert (=> b!938872 (= e!527352 e!527353)))

(declare-fun res!631681 () Bool)

(assert (=> b!938872 (=> (not res!631681) (not e!527353))))

(assert (=> b!938872 (= res!631681 (and (or (not ((_ is Cons!19289) (toList!6114 lt!423733))) (bvsle (_1!6753 (h!20435 (toList!6114 lt!423733))) k0!1099)) ((_ is Cons!19289) (toList!6114 lt!423733)) (bvslt (_1!6753 (h!20435 (toList!6114 lt!423733))) k0!1099)))))

(declare-fun b!938873 () Bool)

(assert (=> b!938873 (= e!527353 (containsKey!452 (t!27602 (toList!6114 lt!423733)) k0!1099))))

(assert (= (and d!113847 (not res!631680)) b!938872))

(assert (= (and b!938872 res!631681) b!938873))

(declare-fun m!874821 () Bool)

(assert (=> b!938873 m!874821))

(assert (=> d!113557 d!113847))

(declare-fun d!113849 () Bool)

(declare-fun e!527354 () Bool)

(assert (=> d!113849 e!527354))

(declare-fun res!631682 () Bool)

(assert (=> d!113849 (=> res!631682 e!527354)))

(declare-fun lt!424181 () Bool)

(assert (=> d!113849 (= res!631682 (not lt!424181))))

(declare-fun lt!424183 () Bool)

(assert (=> d!113849 (= lt!424181 lt!424183)))

(declare-fun lt!424184 () Unit!31704)

(declare-fun e!527355 () Unit!31704)

(assert (=> d!113849 (= lt!424184 e!527355)))

(declare-fun c!97858 () Bool)

(assert (=> d!113849 (= c!97858 lt!424183)))

(assert (=> d!113849 (= lt!424183 (containsKey!452 (toList!6114 lt!423879) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!113849 (= (contains!5126 lt!423879 #b0000000000000000000000000000000000000000000000000000000000000000) lt!424181)))

(declare-fun b!938874 () Bool)

(declare-fun lt!424182 () Unit!31704)

(assert (=> b!938874 (= e!527355 lt!424182)))

(assert (=> b!938874 (= lt!424182 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423879) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!938874 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423879) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!938875 () Bool)

(declare-fun Unit!31731 () Unit!31704)

(assert (=> b!938875 (= e!527355 Unit!31731)))

(declare-fun b!938876 () Bool)

(assert (=> b!938876 (= e!527354 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423879) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!113849 c!97858) b!938874))

(assert (= (and d!113849 (not c!97858)) b!938875))

(assert (= (and d!113849 (not res!631682)) b!938876))

(declare-fun m!874823 () Bool)

(assert (=> d!113849 m!874823))

(declare-fun m!874825 () Bool)

(assert (=> b!938874 m!874825))

(assert (=> b!938874 m!874205))

(assert (=> b!938874 m!874205))

(declare-fun m!874827 () Bool)

(assert (=> b!938874 m!874827))

(assert (=> b!938876 m!874205))

(assert (=> b!938876 m!874205))

(assert (=> b!938876 m!874827))

(assert (=> bm!40851 d!113849))

(declare-fun d!113851 () Bool)

(declare-fun e!527356 () Bool)

(assert (=> d!113851 e!527356))

(declare-fun res!631683 () Bool)

(assert (=> d!113851 (=> res!631683 e!527356)))

(declare-fun lt!424185 () Bool)

(assert (=> d!113851 (= res!631683 (not lt!424185))))

(declare-fun lt!424187 () Bool)

(assert (=> d!113851 (= lt!424185 lt!424187)))

(declare-fun lt!424188 () Unit!31704)

(declare-fun e!527357 () Unit!31704)

(assert (=> d!113851 (= lt!424188 e!527357)))

(declare-fun c!97859 () Bool)

(assert (=> d!113851 (= c!97859 lt!424187)))

(assert (=> d!113851 (= lt!424187 (containsKey!452 (toList!6114 lt!423879) (select (arr!27182 _keys!1487) from!1844)))))

(assert (=> d!113851 (= (contains!5126 lt!423879 (select (arr!27182 _keys!1487) from!1844)) lt!424185)))

(declare-fun b!938877 () Bool)

(declare-fun lt!424186 () Unit!31704)

(assert (=> b!938877 (= e!527357 lt!424186)))

(assert (=> b!938877 (= lt!424186 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423879) (select (arr!27182 _keys!1487) from!1844)))))

(assert (=> b!938877 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423879) (select (arr!27182 _keys!1487) from!1844)))))

(declare-fun b!938878 () Bool)

(declare-fun Unit!31732 () Unit!31704)

(assert (=> b!938878 (= e!527357 Unit!31732)))

(declare-fun b!938879 () Bool)

(assert (=> b!938879 (= e!527356 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423879) (select (arr!27182 _keys!1487) from!1844))))))

(assert (= (and d!113851 c!97859) b!938877))

(assert (= (and d!113851 (not c!97859)) b!938878))

(assert (= (and d!113851 (not res!631683)) b!938879))

(assert (=> d!113851 m!873837))

(declare-fun m!874829 () Bool)

(assert (=> d!113851 m!874829))

(assert (=> b!938877 m!873837))

(declare-fun m!874831 () Bool)

(assert (=> b!938877 m!874831))

(assert (=> b!938877 m!873837))

(assert (=> b!938877 m!874359))

(assert (=> b!938877 m!874359))

(declare-fun m!874833 () Bool)

(assert (=> b!938877 m!874833))

(assert (=> b!938879 m!873837))

(assert (=> b!938879 m!874359))

(assert (=> b!938879 m!874359))

(assert (=> b!938879 m!874833))

(assert (=> b!938463 d!113851))

(declare-fun d!113853 () Bool)

(declare-fun e!527358 () Bool)

(assert (=> d!113853 e!527358))

(declare-fun res!631684 () Bool)

(assert (=> d!113853 (=> res!631684 e!527358)))

(declare-fun lt!424189 () Bool)

(assert (=> d!113853 (= res!631684 (not lt!424189))))

(declare-fun lt!424191 () Bool)

(assert (=> d!113853 (= lt!424189 lt!424191)))

(declare-fun lt!424192 () Unit!31704)

(declare-fun e!527359 () Unit!31704)

(assert (=> d!113853 (= lt!424192 e!527359)))

(declare-fun c!97860 () Bool)

(assert (=> d!113853 (= c!97860 lt!424191)))

(assert (=> d!113853 (= lt!424191 (containsKey!452 (toList!6114 lt!423945) (_1!6753 lt!423732)))))

(assert (=> d!113853 (= (contains!5126 lt!423945 (_1!6753 lt!423732)) lt!424189)))

(declare-fun b!938880 () Bool)

(declare-fun lt!424190 () Unit!31704)

(assert (=> b!938880 (= e!527359 lt!424190)))

(assert (=> b!938880 (= lt!424190 (lemmaContainsKeyImpliesGetValueByKeyDefined!347 (toList!6114 lt!423945) (_1!6753 lt!423732)))))

(assert (=> b!938880 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423945) (_1!6753 lt!423732)))))

(declare-fun b!938881 () Bool)

(declare-fun Unit!31733 () Unit!31704)

(assert (=> b!938881 (= e!527359 Unit!31733)))

(declare-fun b!938882 () Bool)

(assert (=> b!938882 (= e!527358 (isDefined!357 (getValueByKey!487 (toList!6114 lt!423945) (_1!6753 lt!423732))))))

(assert (= (and d!113853 c!97860) b!938880))

(assert (= (and d!113853 (not c!97860)) b!938881))

(assert (= (and d!113853 (not res!631684)) b!938882))

(declare-fun m!874835 () Bool)

(assert (=> d!113853 m!874835))

(declare-fun m!874837 () Bool)

(assert (=> b!938880 m!874837))

(assert (=> b!938880 m!874083))

(assert (=> b!938880 m!874083))

(declare-fun m!874839 () Bool)

(assert (=> b!938880 m!874839))

(assert (=> b!938882 m!874083))

(assert (=> b!938882 m!874083))

(assert (=> b!938882 m!874839))

(assert (=> d!113589 d!113853))

(declare-fun b!938883 () Bool)

(declare-fun e!527360 () Option!493)

(assert (=> b!938883 (= e!527360 (Some!492 (_2!6753 (h!20435 lt!423946))))))

(declare-fun b!938885 () Bool)

(declare-fun e!527361 () Option!493)

(assert (=> b!938885 (= e!527361 (getValueByKey!487 (t!27602 lt!423946) (_1!6753 lt!423732)))))

(declare-fun b!938886 () Bool)

(assert (=> b!938886 (= e!527361 None!491)))

(declare-fun b!938884 () Bool)

(assert (=> b!938884 (= e!527360 e!527361)))

(declare-fun c!97862 () Bool)

(assert (=> b!938884 (= c!97862 (and ((_ is Cons!19289) lt!423946) (not (= (_1!6753 (h!20435 lt!423946)) (_1!6753 lt!423732)))))))

(declare-fun d!113855 () Bool)

(declare-fun c!97861 () Bool)

(assert (=> d!113855 (= c!97861 (and ((_ is Cons!19289) lt!423946) (= (_1!6753 (h!20435 lt!423946)) (_1!6753 lt!423732))))))

(assert (=> d!113855 (= (getValueByKey!487 lt!423946 (_1!6753 lt!423732)) e!527360)))

(assert (= (and d!113855 c!97861) b!938883))

(assert (= (and d!113855 (not c!97861)) b!938884))

(assert (= (and b!938884 c!97862) b!938885))

(assert (= (and b!938884 (not c!97862)) b!938886))

(declare-fun m!874841 () Bool)

(assert (=> b!938885 m!874841))

(assert (=> d!113589 d!113855))

(declare-fun d!113857 () Bool)

(assert (=> d!113857 (= (getValueByKey!487 lt!423946 (_1!6753 lt!423732)) (Some!492 (_2!6753 lt!423732)))))

(declare-fun lt!424193 () Unit!31704)

(assert (=> d!113857 (= lt!424193 (choose!1572 lt!423946 (_1!6753 lt!423732) (_2!6753 lt!423732)))))

(declare-fun e!527362 () Bool)

(assert (=> d!113857 e!527362))

(declare-fun res!631685 () Bool)

(assert (=> d!113857 (=> (not res!631685) (not e!527362))))

(assert (=> d!113857 (= res!631685 (isStrictlySorted!500 lt!423946))))

(assert (=> d!113857 (= (lemmaContainsTupThenGetReturnValue!261 lt!423946 (_1!6753 lt!423732) (_2!6753 lt!423732)) lt!424193)))

(declare-fun b!938887 () Bool)

(declare-fun res!631686 () Bool)

(assert (=> b!938887 (=> (not res!631686) (not e!527362))))

(assert (=> b!938887 (= res!631686 (containsKey!452 lt!423946 (_1!6753 lt!423732)))))

(declare-fun b!938888 () Bool)

(assert (=> b!938888 (= e!527362 (contains!5128 lt!423946 (tuple2!13487 (_1!6753 lt!423732) (_2!6753 lt!423732))))))

(assert (= (and d!113857 res!631685) b!938887))

(assert (= (and b!938887 res!631686) b!938888))

(assert (=> d!113857 m!874077))

(declare-fun m!874843 () Bool)

(assert (=> d!113857 m!874843))

(declare-fun m!874845 () Bool)

(assert (=> d!113857 m!874845))

(declare-fun m!874847 () Bool)

(assert (=> b!938887 m!874847))

(declare-fun m!874849 () Bool)

(assert (=> b!938888 m!874849))

(assert (=> d!113589 d!113857))

(declare-fun bm!40891 () Bool)

(declare-fun call!40895 () List!19293)

(declare-fun call!40896 () List!19293)

(assert (=> bm!40891 (= call!40895 call!40896)))

(declare-fun b!938889 () Bool)

(declare-fun e!527365 () List!19293)

(assert (=> b!938889 (= e!527365 call!40895)))

(declare-fun b!938890 () Bool)

(declare-fun e!527367 () List!19293)

(declare-fun call!40894 () List!19293)

(assert (=> b!938890 (= e!527367 call!40894)))

(declare-fun b!938892 () Bool)

(declare-fun e!527363 () List!19293)

(assert (=> b!938892 (= e!527363 e!527365)))

(declare-fun c!97865 () Bool)

(assert (=> b!938892 (= c!97865 (and ((_ is Cons!19289) (toList!6114 lt!423722)) (= (_1!6753 (h!20435 (toList!6114 lt!423722))) (_1!6753 lt!423732))))))

(declare-fun b!938893 () Bool)

(declare-fun e!527364 () List!19293)

(assert (=> b!938893 (= e!527364 (insertStrictlySorted!317 (t!27602 (toList!6114 lt!423722)) (_1!6753 lt!423732) (_2!6753 lt!423732)))))

(declare-fun b!938894 () Bool)

(declare-fun e!527366 () Bool)

(declare-fun lt!424194 () List!19293)

(assert (=> b!938894 (= e!527366 (contains!5128 lt!424194 (tuple2!13487 (_1!6753 lt!423732) (_2!6753 lt!423732))))))

(declare-fun bm!40892 () Bool)

(assert (=> bm!40892 (= call!40894 call!40895)))

(declare-fun c!97866 () Bool)

(declare-fun bm!40893 () Bool)

(assert (=> bm!40893 (= call!40896 ($colon$colon!554 e!527364 (ite c!97866 (h!20435 (toList!6114 lt!423722)) (tuple2!13487 (_1!6753 lt!423732) (_2!6753 lt!423732)))))))

(declare-fun c!97864 () Bool)

(assert (=> bm!40893 (= c!97864 c!97866)))

(declare-fun b!938895 () Bool)

(declare-fun c!97863 () Bool)

(assert (=> b!938895 (= c!97863 (and ((_ is Cons!19289) (toList!6114 lt!423722)) (bvsgt (_1!6753 (h!20435 (toList!6114 lt!423722))) (_1!6753 lt!423732))))))

(assert (=> b!938895 (= e!527365 e!527367)))

(declare-fun b!938896 () Bool)

(declare-fun res!631687 () Bool)

(assert (=> b!938896 (=> (not res!631687) (not e!527366))))

(assert (=> b!938896 (= res!631687 (containsKey!452 lt!424194 (_1!6753 lt!423732)))))

(declare-fun d!113859 () Bool)

(assert (=> d!113859 e!527366))

(declare-fun res!631688 () Bool)

(assert (=> d!113859 (=> (not res!631688) (not e!527366))))

(assert (=> d!113859 (= res!631688 (isStrictlySorted!500 lt!424194))))

(assert (=> d!113859 (= lt!424194 e!527363)))

(assert (=> d!113859 (= c!97866 (and ((_ is Cons!19289) (toList!6114 lt!423722)) (bvslt (_1!6753 (h!20435 (toList!6114 lt!423722))) (_1!6753 lt!423732))))))

(assert (=> d!113859 (isStrictlySorted!500 (toList!6114 lt!423722))))

(assert (=> d!113859 (= (insertStrictlySorted!317 (toList!6114 lt!423722) (_1!6753 lt!423732) (_2!6753 lt!423732)) lt!424194)))

(declare-fun b!938891 () Bool)

(assert (=> b!938891 (= e!527367 call!40894)))

(declare-fun b!938897 () Bool)

(assert (=> b!938897 (= e!527363 call!40896)))

(declare-fun b!938898 () Bool)

(assert (=> b!938898 (= e!527364 (ite c!97865 (t!27602 (toList!6114 lt!423722)) (ite c!97863 (Cons!19289 (h!20435 (toList!6114 lt!423722)) (t!27602 (toList!6114 lt!423722))) Nil!19290)))))

(assert (= (and d!113859 c!97866) b!938897))

(assert (= (and d!113859 (not c!97866)) b!938892))

(assert (= (and b!938892 c!97865) b!938889))

(assert (= (and b!938892 (not c!97865)) b!938895))

(assert (= (and b!938895 c!97863) b!938890))

(assert (= (and b!938895 (not c!97863)) b!938891))

(assert (= (or b!938890 b!938891) bm!40892))

(assert (= (or b!938889 bm!40892) bm!40891))

(assert (= (or b!938897 bm!40891) bm!40893))

(assert (= (and bm!40893 c!97864) b!938893))

(assert (= (and bm!40893 (not c!97864)) b!938898))

(assert (= (and d!113859 res!631688) b!938896))

(assert (= (and b!938896 res!631687) b!938894))

(declare-fun m!874851 () Bool)

(assert (=> d!113859 m!874851))

(assert (=> d!113859 m!874167))

(declare-fun m!874853 () Bool)

(assert (=> b!938893 m!874853))

(declare-fun m!874855 () Bool)

(assert (=> b!938894 m!874855))

(declare-fun m!874857 () Bool)

(assert (=> bm!40893 m!874857))

(declare-fun m!874859 () Bool)

(assert (=> b!938896 m!874859))

(assert (=> d!113589 d!113859))

(declare-fun d!113861 () Bool)

(assert (=> d!113861 (= (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2809 (getCurrentListMap!3303 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd (bvsub from!1844 #b00000000000000000000000000000001) #b00000000000000000000000000000001) defaultEntry!1235) (tuple2!13487 (select (arr!27182 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)) (get!14358 (select (arr!27183 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1648 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!113861 true))

(declare-fun _$20!34 () Unit!31704)

(assert (=> d!113861 (= (choose!1568 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) _$20!34)))

(declare-fun b_lambda!14279 () Bool)

(assert (=> (not b_lambda!14279) (not d!113861)))

(assert (=> d!113861 t!27601))

(declare-fun b_and!29177 () Bool)

(assert (= b_and!29175 (and (=> t!27601 result!12145) b_and!29177)))

(assert (=> d!113861 m!873727))

(assert (=> d!113861 m!874041))

(assert (=> d!113861 m!874043))

(assert (=> d!113861 m!874041))

(assert (=> d!113861 m!873735))

(assert (=> d!113861 m!873771))

(assert (=> d!113861 m!873735))

(assert (=> d!113861 m!873737))

(assert (=> d!113861 m!873743))

(assert (=> d!113861 m!873737))

(assert (=> d!113575 d!113861))

(assert (=> d!113575 d!113595))

(declare-fun mapNonEmpty!32180 () Bool)

(declare-fun mapRes!32180 () Bool)

(declare-fun tp!61742 () Bool)

(declare-fun e!527368 () Bool)

(assert (=> mapNonEmpty!32180 (= mapRes!32180 (and tp!61742 e!527368))))

(declare-fun mapRest!32180 () (Array (_ BitVec 32) ValueCell!9651))

(declare-fun mapKey!32180 () (_ BitVec 32))

(declare-fun mapValue!32180 () ValueCell!9651)

(assert (=> mapNonEmpty!32180 (= mapRest!32179 (store mapRest!32180 mapKey!32180 mapValue!32180))))

(declare-fun mapIsEmpty!32180 () Bool)

(assert (=> mapIsEmpty!32180 mapRes!32180))

(declare-fun b!938899 () Bool)

(assert (=> b!938899 (= e!527368 tp_is_empty!20265)))

(declare-fun b!938900 () Bool)

(declare-fun e!527369 () Bool)

(assert (=> b!938900 (= e!527369 tp_is_empty!20265)))

(declare-fun condMapEmpty!32180 () Bool)

(declare-fun mapDefault!32180 () ValueCell!9651)

(assert (=> mapNonEmpty!32179 (= condMapEmpty!32180 (= mapRest!32179 ((as const (Array (_ BitVec 32) ValueCell!9651)) mapDefault!32180)))))

(assert (=> mapNonEmpty!32179 (= tp!61741 (and e!527369 mapRes!32180))))

(assert (= (and mapNonEmpty!32179 condMapEmpty!32180) mapIsEmpty!32180))

(assert (= (and mapNonEmpty!32179 (not condMapEmpty!32180)) mapNonEmpty!32180))

(assert (= (and mapNonEmpty!32180 ((_ is ValueCellFull!9651) mapValue!32180)) b!938899))

(assert (= (and mapNonEmpty!32179 ((_ is ValueCellFull!9651) mapDefault!32180)) b!938900))

(declare-fun m!874861 () Bool)

(assert (=> mapNonEmpty!32180 m!874861))

(declare-fun b_lambda!14281 () Bool)

(assert (= b_lambda!14273 (or (and start!79812 b_free!17757) b_lambda!14281)))

(declare-fun b_lambda!14283 () Bool)

(assert (= b_lambda!14277 (or (and start!79812 b_free!17757) b_lambda!14283)))

(declare-fun b_lambda!14285 () Bool)

(assert (= b_lambda!14267 (or (and start!79812 b_free!17757) b_lambda!14285)))

(declare-fun b_lambda!14287 () Bool)

(assert (= b_lambda!14279 (or (and start!79812 b_free!17757) b_lambda!14287)))

(declare-fun b_lambda!14289 () Bool)

(assert (= b_lambda!14275 (or (and start!79812 b_free!17757) b_lambda!14289)))

(declare-fun b_lambda!14291 () Bool)

(assert (= b_lambda!14265 (or (and start!79812 b_free!17757) b_lambda!14291)))

(declare-fun b_lambda!14293 () Bool)

(assert (= b_lambda!14269 (or (and start!79812 b_free!17757) b_lambda!14293)))

(declare-fun b_lambda!14295 () Bool)

(assert (= b_lambda!14271 (or (and start!79812 b_free!17757) b_lambda!14295)))

(check-sat (not b_lambda!14259) (not d!113753) (not b_lambda!14261) (not b!938564) (not b!938657) (not b!938781) (not b!938755) (not b!938743) (not d!113745) (not b_lambda!14291) (not b!938857) (not b!938882) (not b_lambda!14287) (not d!113835) (not b!938663) (not d!113841) (not b!938768) (not b!938794) (not d!113633) (not d!113685) (not b!938832) (not b!938562) (not b!938651) (not b!938709) (not b!938877) (not b_lambda!14289) (not b!938735) (not b!938851) (not bm!40889) (not b!938777) (not d!113803) (not b!938561) (not d!113781) (not d!113861) (not b!938597) (not b!938844) (not b_lambda!14295) (not d!113707) (not b!938771) (not d!113763) (not d!113743) (not b!938590) (not b!938563) (not b!938841) (not b!938790) (not b!938642) (not d!113747) (not b!938896) (not b!938887) (not bm!40867) (not b!938628) (not bm!40887) (not d!113635) (not b!938834) (not d!113833) (not d!113725) (not d!113719) (not b_lambda!14283) (not d!113689) (not d!113859) (not d!113661) (not b!938837) (not d!113851) (not b!938860) (not d!113733) (not bm!40893) (not d!113757) (not b!938756) (not b!938822) (not bm!40881) (not d!113829) (not b_lambda!14257) (not b!938585) (not d!113785) (not mapNonEmpty!32180) (not b!938676) (not d!113769) (not b!938806) (not b!938840) (not b!938748) (not b!938776) (not d!113683) (not b!938570) (not d!113823) (not b!938836) (not b!938656) (not b!938867) (not d!113687) (not d!113741) (not b!938788) (not b!938888) (not b!938805) (not d!113615) (not b!938688) (not d!113817) (not b!938879) (not b!938769) (not d!113637) (not b!938852) (not d!113771) (not b!938873) (not b!938808) (not d!113713) (not d!113773) (not b!938784) (not b!938685) (not b!938752) (not d!113723) (not b!938669) (not b!938686) (not b!938594) (not bm!40888) (not b!938649) (not d!113677) (not d!113789) (not b!938650) (not b!938782) (not d!113663) (not d!113617) (not d!113775) (not b!938736) (not b!938661) (not b_lambda!14285) (not b!938783) (not d!113705) (not b!938801) (not b!938797) (not b!938634) (not b!938684) (not d!113669) (not d!113701) (not b!938792) (not d!113827) (not d!113749) (not bm!40871) (not b!938632) (not b_lambda!14247) (not d!113761) (not b!938865) (not b!938742) (not d!113839) (not b!938778) (not d!113711) (not b!938635) (not b_lambda!14263) (not b!938631) (not b!938681) (not b!938858) (not b!938861) (not d!113793) (not d!113667) (not b!938687) (not d!113821) (not b!938855) (not b!938846) (not b!938698) (not b!938839) (not b!938659) (not d!113717) (not b!938863) (not d!113721) (not b!938885) (not b_next!17757) (not d!113795) tp_is_empty!20265 (not d!113755) (not d!113611) (not b!938775) (not b!938876) (not d!113737) (not bm!40882) (not d!113651) (not b!938670) (not b!938630) (not d!113671) (not b!938874) (not b!938629) (not b!938893) (not d!113619) (not d!113699) (not d!113849) (not d!113819) (not b!938766) (not b!938592) (not b!938589) (not b!938662) (not d!113853) (not b!938758) (not d!113641) (not d!113801) (not b!938774) (not b!938654) (not b_lambda!14293) (not d!113799) (not b!938795) (not d!113805) (not b!938869) (not b!938842) (not d!113645) (not b_lambda!14281) (not d!113673) (not b!938678) (not b!938637) (not d!113765) (not b!938741) (not b!938664) (not d!113759) (not b!938762) (not d!113623) (not b!938894) (not b!938671) (not b!938859) (not d!113777) (not d!113767) (not d!113665) (not bm!40890) (not d!113811) (not d!113735) (not bm!40870) (not b!938703) (not b!938655) (not d!113791) (not b!938700) (not d!113813) (not d!113679) (not b!938636) (not b!938675) (not d!113681) (not d!113675) (not d!113831) (not b!938683) (not b!938581) (not b!938789) (not b!938623) (not b!938693) (not d!113647) (not d!113751) (not b!938849) (not b!938598) (not b!938765) (not d!113825) (not bm!40880) (not bm!40886) (not b!938843) (not d!113627) (not d!113815) (not d!113691) (not b!938856) (not b!938672) (not b!938697) (not b!938780) (not b!938791) (not b!938738) (not b!938695) (not d!113693) (not d!113857) (not d!113837) (not d!113643) (not b!938596) (not d!113783) (not b!938673) (not b!938639) (not b!938666) (not b!938871) (not b!938757) (not b!938625) (not b!938880) b_and!29177 (not d!113639) (not b!938804) (not b!938799) (not b!938710) (not d!113797))
(check-sat b_and!29177 (not b_next!17757))

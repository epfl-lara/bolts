; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!79026 () Bool)

(assert start!79026)

(declare-fun b_free!17211 () Bool)

(declare-fun b_next!17211 () Bool)

(assert (=> start!79026 (= b_free!17211 (not b_next!17211))))

(declare-fun tp!60075 () Bool)

(declare-fun b_and!28177 () Bool)

(assert (=> start!79026 (= tp!60075 b_and!28177)))

(declare-fun b!924815 () Bool)

(declare-fun e!519054 () Bool)

(declare-fun e!519058 () Bool)

(assert (=> b!924815 (= e!519054 e!519058)))

(declare-fun res!623395 () Bool)

(assert (=> b!924815 (=> (not res!623395) (not e!519058))))

(declare-datatypes ((V!31257 0))(
  ( (V!31258 (val!9910 Int)) )
))
(declare-datatypes ((tuple2!13024 0))(
  ( (tuple2!13025 (_1!6522 (_ BitVec 64)) (_2!6522 V!31257)) )
))
(declare-datatypes ((List!18860 0))(
  ( (Nil!18857) (Cons!18856 (h!20002 tuple2!13024) (t!26809 List!18860)) )
))
(declare-datatypes ((ListLongMap!11735 0))(
  ( (ListLongMap!11736 (toList!5883 List!18860)) )
))
(declare-fun lt!416044 () ListLongMap!11735)

(declare-fun k0!1099 () (_ BitVec 64))

(declare-fun contains!4907 (ListLongMap!11735 (_ BitVec 64)) Bool)

(assert (=> b!924815 (= res!623395 (contains!4907 lt!416044 k0!1099))))

(declare-datatypes ((array!55422 0))(
  ( (array!55423 (arr!26652 (Array (_ BitVec 32) (_ BitVec 64))) (size!27112 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55422)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9378 0))(
  ( (ValueCellFull!9378 (v!12428 V!31257)) (EmptyCell!9378) )
))
(declare-datatypes ((array!55424 0))(
  ( (array!55425 (arr!26653 (Array (_ BitVec 32) ValueCell!9378)) (size!27113 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55424)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31257)

(declare-fun minValue!1173 () V!31257)

(declare-fun getCurrentListMap!3101 (array!55422 array!55424 (_ BitVec 32) (_ BitVec 32) V!31257 V!31257 (_ BitVec 32) Int) ListLongMap!11735)

(assert (=> b!924815 (= lt!416044 (getCurrentListMap!3101 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924816 () Bool)

(declare-fun res!623394 () Bool)

(declare-fun e!519049 () Bool)

(assert (=> b!924816 (=> (not res!623394) (not e!519049))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55422 (_ BitVec 32)) Bool)

(assert (=> b!924816 (= res!623394 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924817 () Bool)

(declare-fun res!623392 () Bool)

(assert (=> b!924817 (=> (not res!623392) (not e!519049))))

(declare-datatypes ((List!18861 0))(
  ( (Nil!18858) (Cons!18857 (h!20003 (_ BitVec 64)) (t!26810 List!18861)) )
))
(declare-fun arrayNoDuplicates!0 (array!55422 (_ BitVec 32) List!18861) Bool)

(assert (=> b!924817 (= res!623392 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18858))))

(declare-fun b!924818 () Bool)

(declare-fun e!519060 () Bool)

(assert (=> b!924818 (= e!519049 e!519060)))

(declare-fun res!623396 () Bool)

(assert (=> b!924818 (=> (not res!623396) (not e!519060))))

(declare-fun lt!416045 () ListLongMap!11735)

(assert (=> b!924818 (= res!623396 (contains!4907 lt!416045 k0!1099))))

(assert (=> b!924818 (= lt!416045 (getCurrentListMap!3101 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!924819 () Bool)

(assert (=> b!924819 (= e!519058 false)))

(declare-fun lt!416041 () V!31257)

(declare-fun apply!684 (ListLongMap!11735 (_ BitVec 64)) V!31257)

(assert (=> b!924819 (= lt!416041 (apply!684 lt!416044 k0!1099))))

(declare-fun b!924821 () Bool)

(declare-fun e!519059 () Bool)

(declare-fun arrayContainsKey!0 (array!55422 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924821 (= e!519059 (arrayContainsKey!0 _keys!1487 k0!1099 from!1844))))

(declare-fun b!924822 () Bool)

(declare-fun lt!416043 () ListLongMap!11735)

(declare-fun lt!416047 () V!31257)

(assert (=> b!924822 (= (apply!684 lt!416043 k0!1099) lt!416047)))

(declare-fun lt!416040 () V!31257)

(declare-datatypes ((Unit!31242 0))(
  ( (Unit!31243) )
))
(declare-fun lt!416052 () Unit!31242)

(declare-fun lt!416046 () (_ BitVec 64))

(declare-fun addApplyDifferent!373 (ListLongMap!11735 (_ BitVec 64) V!31257 (_ BitVec 64)) Unit!31242)

(assert (=> b!924822 (= lt!416052 (addApplyDifferent!373 lt!416045 lt!416046 lt!416040 k0!1099))))

(assert (=> b!924822 (not (= lt!416046 k0!1099))))

(declare-fun lt!416038 () Unit!31242)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55422 (_ BitVec 64) (_ BitVec 32) List!18861) Unit!31242)

(assert (=> b!924822 (= lt!416038 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k0!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18858))))

(assert (=> b!924822 e!519059))

(declare-fun c!96428 () Bool)

(assert (=> b!924822 (= c!96428 (and (not (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!416039 () Unit!31242)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!233 (array!55422 array!55424 (_ BitVec 32) (_ BitVec 32) V!31257 V!31257 (_ BitVec 64) (_ BitVec 32) Int) Unit!31242)

(assert (=> b!924822 (= lt!416039 (lemmaListMapContainsThenArrayContainsFrom!233 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k0!1099 from!1844 defaultEntry!1235))))

(assert (=> b!924822 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18858)))

(declare-fun lt!416048 () Unit!31242)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55422 (_ BitVec 32) (_ BitVec 32)) Unit!31242)

(assert (=> b!924822 (= lt!416048 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!924822 (contains!4907 lt!416043 k0!1099)))

(declare-fun lt!416050 () tuple2!13024)

(declare-fun +!2687 (ListLongMap!11735 tuple2!13024) ListLongMap!11735)

(assert (=> b!924822 (= lt!416043 (+!2687 lt!416045 lt!416050))))

(declare-fun lt!416042 () Unit!31242)

(declare-fun addStillContains!449 (ListLongMap!11735 (_ BitVec 64) V!31257 (_ BitVec 64)) Unit!31242)

(assert (=> b!924822 (= lt!416042 (addStillContains!449 lt!416045 lt!416046 lt!416040 k0!1099))))

(assert (=> b!924822 (= (getCurrentListMap!3101 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2687 (getCurrentListMap!3101 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416050))))

(assert (=> b!924822 (= lt!416050 (tuple2!13025 lt!416046 lt!416040))))

(declare-fun get!14036 (ValueCell!9378 V!31257) V!31257)

(declare-fun dynLambda!1526 (Int (_ BitVec 64)) V!31257)

(assert (=> b!924822 (= lt!416040 (get!14036 (select (arr!26653 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1526 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416051 () Unit!31242)

(declare-fun lemmaListMapRecursiveValidKeyArray!122 (array!55422 array!55424 (_ BitVec 32) (_ BitVec 32) V!31257 V!31257 (_ BitVec 32) Int) Unit!31242)

(assert (=> b!924822 (= lt!416051 (lemmaListMapRecursiveValidKeyArray!122 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!519055 () Unit!31242)

(assert (=> b!924822 (= e!519055 lt!416052)))

(declare-fun b!924823 () Bool)

(declare-fun e!519057 () Bool)

(assert (=> b!924823 (= e!519060 e!519057)))

(declare-fun res!623398 () Bool)

(assert (=> b!924823 (=> (not res!623398) (not e!519057))))

(declare-fun v!791 () V!31257)

(assert (=> b!924823 (= res!623398 (and (= lt!416047 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!924823 (= lt!416047 (apply!684 lt!416045 k0!1099))))

(declare-fun b!924824 () Bool)

(assert (=> b!924824 (= e!519059 (ite (= k0!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!924825 () Bool)

(declare-fun res!623391 () Bool)

(assert (=> b!924825 (=> (not res!623391) (not e!519049))))

(assert (=> b!924825 (= res!623391 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27112 _keys!1487))))))

(declare-fun mapIsEmpty!31335 () Bool)

(declare-fun mapRes!31335 () Bool)

(assert (=> mapIsEmpty!31335 mapRes!31335))

(declare-fun res!623393 () Bool)

(assert (=> start!79026 (=> (not res!623393) (not e!519049))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79026 (= res!623393 (validMask!0 mask!1881))))

(assert (=> start!79026 e!519049))

(assert (=> start!79026 true))

(declare-fun tp_is_empty!19719 () Bool)

(assert (=> start!79026 tp_is_empty!19719))

(declare-fun e!519050 () Bool)

(declare-fun array_inv!20754 (array!55424) Bool)

(assert (=> start!79026 (and (array_inv!20754 _values!1231) e!519050)))

(assert (=> start!79026 tp!60075))

(declare-fun array_inv!20755 (array!55422) Bool)

(assert (=> start!79026 (array_inv!20755 _keys!1487)))

(declare-fun b!924820 () Bool)

(declare-fun e!519053 () Bool)

(assert (=> b!924820 (= e!519053 tp_is_empty!19719)))

(declare-fun b!924826 () Bool)

(declare-fun Unit!31244 () Unit!31242)

(assert (=> b!924826 (= e!519055 Unit!31244)))

(declare-fun b!924827 () Bool)

(declare-fun e!519056 () Bool)

(assert (=> b!924827 (= e!519056 tp_is_empty!19719)))

(declare-fun b!924828 () Bool)

(assert (=> b!924828 (= e!519050 (and e!519056 mapRes!31335))))

(declare-fun condMapEmpty!31335 () Bool)

(declare-fun mapDefault!31335 () ValueCell!9378)

(assert (=> b!924828 (= condMapEmpty!31335 (= (arr!26653 _values!1231) ((as const (Array (_ BitVec 32) ValueCell!9378)) mapDefault!31335)))))

(declare-fun b!924829 () Bool)

(declare-fun e!519052 () Unit!31242)

(assert (=> b!924829 (= e!519052 e!519055)))

(assert (=> b!924829 (= lt!416046 (select (arr!26652 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96427 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924829 (= c!96427 (validKeyInArray!0 lt!416046))))

(declare-fun b!924830 () Bool)

(declare-fun res!623399 () Bool)

(assert (=> b!924830 (=> (not res!623399) (not e!519049))))

(assert (=> b!924830 (= res!623399 (and (= (size!27113 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27112 _keys!1487) (size!27113 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!31335 () Bool)

(declare-fun tp!60074 () Bool)

(assert (=> mapNonEmpty!31335 (= mapRes!31335 (and tp!60074 e!519053))))

(declare-fun mapKey!31335 () (_ BitVec 32))

(declare-fun mapRest!31335 () (Array (_ BitVec 32) ValueCell!9378))

(declare-fun mapValue!31335 () ValueCell!9378)

(assert (=> mapNonEmpty!31335 (= (arr!26653 _values!1231) (store mapRest!31335 mapKey!31335 mapValue!31335))))

(declare-fun b!924831 () Bool)

(declare-fun Unit!31245 () Unit!31242)

(assert (=> b!924831 (= e!519052 Unit!31245)))

(declare-fun b!924832 () Bool)

(assert (=> b!924832 (= e!519057 e!519054)))

(declare-fun res!623397 () Bool)

(assert (=> b!924832 (=> (not res!623397) (not e!519054))))

(assert (=> b!924832 (= res!623397 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27112 _keys!1487)))))

(declare-fun lt!416049 () Unit!31242)

(assert (=> b!924832 (= lt!416049 e!519052)))

(declare-fun c!96426 () Bool)

(assert (=> b!924832 (= c!96426 (validKeyInArray!0 k0!1099))))

(assert (= (and start!79026 res!623393) b!924830))

(assert (= (and b!924830 res!623399) b!924816))

(assert (= (and b!924816 res!623394) b!924817))

(assert (= (and b!924817 res!623392) b!924825))

(assert (= (and b!924825 res!623391) b!924818))

(assert (= (and b!924818 res!623396) b!924823))

(assert (= (and b!924823 res!623398) b!924832))

(assert (= (and b!924832 c!96426) b!924829))

(assert (= (and b!924832 (not c!96426)) b!924831))

(assert (= (and b!924829 c!96427) b!924822))

(assert (= (and b!924829 (not c!96427)) b!924826))

(assert (= (and b!924822 c!96428) b!924821))

(assert (= (and b!924822 (not c!96428)) b!924824))

(assert (= (and b!924832 res!623397) b!924815))

(assert (= (and b!924815 res!623395) b!924819))

(assert (= (and b!924828 condMapEmpty!31335) mapIsEmpty!31335))

(assert (= (and b!924828 (not condMapEmpty!31335)) mapNonEmpty!31335))

(get-info :version)

(assert (= (and mapNonEmpty!31335 ((_ is ValueCellFull!9378) mapValue!31335)) b!924820))

(assert (= (and b!924828 ((_ is ValueCellFull!9378) mapDefault!31335)) b!924827))

(assert (= start!79026 b!924828))

(declare-fun b_lambda!13743 () Bool)

(assert (=> (not b_lambda!13743) (not b!924822)))

(declare-fun t!26808 () Bool)

(declare-fun tb!5799 () Bool)

(assert (=> (and start!79026 (= defaultEntry!1235 defaultEntry!1235) t!26808) tb!5799))

(declare-fun result!11413 () Bool)

(assert (=> tb!5799 (= result!11413 tp_is_empty!19719)))

(assert (=> b!924822 t!26808))

(declare-fun b_and!28179 () Bool)

(assert (= b_and!28177 (and (=> t!26808 result!11413) b_and!28179)))

(declare-fun m!859287 () Bool)

(assert (=> b!924819 m!859287))

(declare-fun m!859289 () Bool)

(assert (=> mapNonEmpty!31335 m!859289))

(declare-fun m!859291 () Bool)

(assert (=> b!924818 m!859291))

(declare-fun m!859293 () Bool)

(assert (=> b!924818 m!859293))

(declare-fun m!859295 () Bool)

(assert (=> b!924815 m!859295))

(declare-fun m!859297 () Bool)

(assert (=> b!924815 m!859297))

(declare-fun m!859299 () Bool)

(assert (=> b!924817 m!859299))

(declare-fun m!859301 () Bool)

(assert (=> b!924821 m!859301))

(declare-fun m!859303 () Bool)

(assert (=> b!924816 m!859303))

(declare-fun m!859305 () Bool)

(assert (=> b!924823 m!859305))

(declare-fun m!859307 () Bool)

(assert (=> b!924822 m!859307))

(declare-fun m!859309 () Bool)

(assert (=> b!924822 m!859309))

(declare-fun m!859311 () Bool)

(assert (=> b!924822 m!859311))

(declare-fun m!859313 () Bool)

(assert (=> b!924822 m!859313))

(assert (=> b!924822 m!859297))

(declare-fun m!859315 () Bool)

(assert (=> b!924822 m!859315))

(declare-fun m!859317 () Bool)

(assert (=> b!924822 m!859317))

(declare-fun m!859319 () Bool)

(assert (=> b!924822 m!859319))

(declare-fun m!859321 () Bool)

(assert (=> b!924822 m!859321))

(declare-fun m!859323 () Bool)

(assert (=> b!924822 m!859323))

(declare-fun m!859325 () Bool)

(assert (=> b!924822 m!859325))

(assert (=> b!924822 m!859311))

(assert (=> b!924822 m!859313))

(declare-fun m!859327 () Bool)

(assert (=> b!924822 m!859327))

(declare-fun m!859329 () Bool)

(assert (=> b!924822 m!859329))

(declare-fun m!859331 () Bool)

(assert (=> b!924822 m!859331))

(declare-fun m!859333 () Bool)

(assert (=> b!924822 m!859333))

(assert (=> b!924822 m!859331))

(declare-fun m!859335 () Bool)

(assert (=> b!924822 m!859335))

(declare-fun m!859337 () Bool)

(assert (=> b!924829 m!859337))

(declare-fun m!859339 () Bool)

(assert (=> b!924829 m!859339))

(declare-fun m!859341 () Bool)

(assert (=> start!79026 m!859341))

(declare-fun m!859343 () Bool)

(assert (=> start!79026 m!859343))

(declare-fun m!859345 () Bool)

(assert (=> start!79026 m!859345))

(declare-fun m!859347 () Bool)

(assert (=> b!924832 m!859347))

(check-sat (not b_lambda!13743) (not b!924818) (not b!924829) (not b!924816) (not b!924822) (not b!924819) b_and!28179 (not b!924832) (not start!79026) (not b!924821) (not b_next!17211) (not b!924817) (not b!924823) (not mapNonEmpty!31335) tp_is_empty!19719 (not b!924815))
(check-sat b_and!28179 (not b_next!17211))

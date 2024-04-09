; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79142 () Bool)

(assert start!79142)

(declare-fun b_free!17327 () Bool)

(declare-fun b_next!17327 () Bool)

(assert (=> start!79142 (= b_free!17327 (not b_next!17327))))

(declare-fun tp!60423 () Bool)

(declare-fun b_and!28409 () Bool)

(assert (=> start!79142 (= tp!60423 b_and!28409)))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun e!521312 () Bool)

(declare-fun b!928403 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((array!55646 0))(
  ( (array!55647 (arr!26764 (Array (_ BitVec 32) (_ BitVec 64))) (size!27224 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55646)

(declare-fun arrayContainsKey!0 (array!55646 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!928403 (= e!521312 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!928404 () Bool)

(declare-fun res!625303 () Bool)

(declare-fun e!521318 () Bool)

(assert (=> b!928404 (=> (not res!625303) (not e!521318))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55646 (_ BitVec 32)) Bool)

(assert (=> b!928404 (= res!625303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!928405 () Bool)

(declare-fun e!521313 () Bool)

(assert (=> b!928405 (= e!521318 e!521313)))

(declare-fun res!625305 () Bool)

(assert (=> b!928405 (=> (not res!625305) (not e!521313))))

(declare-datatypes ((V!31411 0))(
  ( (V!31412 (val!9968 Int)) )
))
(declare-datatypes ((tuple2!13130 0))(
  ( (tuple2!13131 (_1!6575 (_ BitVec 64)) (_2!6575 V!31411)) )
))
(declare-datatypes ((List!18953 0))(
  ( (Nil!18950) (Cons!18949 (h!20095 tuple2!13130) (t!27018 List!18953)) )
))
(declare-datatypes ((ListLongMap!11841 0))(
  ( (ListLongMap!11842 (toList!5936 List!18953)) )
))
(declare-fun lt!418823 () ListLongMap!11841)

(declare-fun contains!4955 (ListLongMap!11841 (_ BitVec 64)) Bool)

(assert (=> b!928405 (= res!625305 (contains!4955 lt!418823 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9436 0))(
  ( (ValueCellFull!9436 (v!12486 V!31411)) (EmptyCell!9436) )
))
(declare-datatypes ((array!55648 0))(
  ( (array!55649 (arr!26765 (Array (_ BitVec 32) ValueCell!9436)) (size!27225 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55648)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31411)

(declare-fun minValue!1173 () V!31411)

(declare-fun getCurrentListMap!3149 (array!55646 array!55648 (_ BitVec 32) (_ BitVec 32) V!31411 V!31411 (_ BitVec 32) Int) ListLongMap!11841)

(assert (=> b!928405 (= lt!418823 (getCurrentListMap!3149 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun res!625298 () Bool)

(assert (=> start!79142 (=> (not res!625298) (not e!521318))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79142 (= res!625298 (validMask!0 mask!1881))))

(assert (=> start!79142 e!521318))

(assert (=> start!79142 true))

(declare-fun tp_is_empty!19835 () Bool)

(assert (=> start!79142 tp_is_empty!19835))

(declare-fun e!521311 () Bool)

(declare-fun array_inv!20832 (array!55648) Bool)

(assert (=> start!79142 (and (array_inv!20832 _values!1231) e!521311)))

(assert (=> start!79142 tp!60423))

(declare-fun array_inv!20833 (array!55646) Bool)

(assert (=> start!79142 (array_inv!20833 _keys!1487)))

(declare-fun b!928406 () Bool)

(declare-fun lt!418826 () ListLongMap!11841)

(declare-fun lt!418828 () V!31411)

(declare-fun apply!732 (ListLongMap!11841 (_ BitVec 64)) V!31411)

(assert (=> b!928406 (= (apply!732 lt!418826 k!1099) lt!418828)))

(declare-fun lt!418822 () V!31411)

(declare-datatypes ((Unit!31425 0))(
  ( (Unit!31426) )
))
(declare-fun lt!418833 () Unit!31425)

(declare-fun lt!418818 () (_ BitVec 64))

(declare-fun addApplyDifferent!408 (ListLongMap!11841 (_ BitVec 64) V!31411 (_ BitVec 64)) Unit!31425)

(assert (=> b!928406 (= lt!418833 (addApplyDifferent!408 lt!418823 lt!418818 lt!418822 k!1099))))

(assert (=> b!928406 (not (= lt!418818 k!1099))))

(declare-fun lt!418820 () Unit!31425)

(declare-datatypes ((List!18954 0))(
  ( (Nil!18951) (Cons!18950 (h!20096 (_ BitVec 64)) (t!27019 List!18954)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55646 (_ BitVec 64) (_ BitVec 32) List!18954) Unit!31425)

(assert (=> b!928406 (= lt!418820 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18951))))

(assert (=> b!928406 e!521312))

(declare-fun c!96948 () Bool)

(assert (=> b!928406 (= c!96948 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!418830 () Unit!31425)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!268 (array!55646 array!55648 (_ BitVec 32) (_ BitVec 32) V!31411 V!31411 (_ BitVec 64) (_ BitVec 32) Int) Unit!31425)

(assert (=> b!928406 (= lt!418830 (lemmaListMapContainsThenArrayContainsFrom!268 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55646 (_ BitVec 32) List!18954) Bool)

(assert (=> b!928406 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18951)))

(declare-fun lt!418825 () Unit!31425)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55646 (_ BitVec 32) (_ BitVec 32)) Unit!31425)

(assert (=> b!928406 (= lt!418825 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!928406 (contains!4955 lt!418826 k!1099)))

(declare-fun lt!418821 () tuple2!13130)

(declare-fun +!2722 (ListLongMap!11841 tuple2!13130) ListLongMap!11841)

(assert (=> b!928406 (= lt!418826 (+!2722 lt!418823 lt!418821))))

(declare-fun lt!418831 () Unit!31425)

(declare-fun addStillContains!484 (ListLongMap!11841 (_ BitVec 64) V!31411 (_ BitVec 64)) Unit!31425)

(assert (=> b!928406 (= lt!418831 (addStillContains!484 lt!418823 lt!418818 lt!418822 k!1099))))

(assert (=> b!928406 (= (getCurrentListMap!3149 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2722 (getCurrentListMap!3149 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418821))))

(assert (=> b!928406 (= lt!418821 (tuple2!13131 lt!418818 lt!418822))))

(declare-fun get!14109 (ValueCell!9436 V!31411) V!31411)

(declare-fun dynLambda!1561 (Int (_ BitVec 64)) V!31411)

(assert (=> b!928406 (= lt!418822 (get!14109 (select (arr!26765 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1561 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418819 () Unit!31425)

(declare-fun lemmaListMapRecursiveValidKeyArray!157 (array!55646 array!55648 (_ BitVec 32) (_ BitVec 32) V!31411 V!31411 (_ BitVec 32) Int) Unit!31425)

(assert (=> b!928406 (= lt!418819 (lemmaListMapRecursiveValidKeyArray!157 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!521316 () Unit!31425)

(assert (=> b!928406 (= e!521316 lt!418833)))

(declare-fun b!928407 () Bool)

(assert (=> b!928407 (= e!521312 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!928408 () Bool)

(declare-fun e!521319 () Bool)

(assert (=> b!928408 (= e!521313 e!521319)))

(declare-fun res!625307 () Bool)

(assert (=> b!928408 (=> (not res!625307) (not e!521319))))

(declare-fun v!791 () V!31411)

(assert (=> b!928408 (= res!625307 (and (= lt!418828 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!928408 (= lt!418828 (apply!732 lt!418823 k!1099))))

(declare-fun b!928409 () Bool)

(declare-fun e!521309 () Bool)

(declare-fun e!521314 () Bool)

(assert (=> b!928409 (= e!521309 e!521314)))

(declare-fun res!625299 () Bool)

(assert (=> b!928409 (=> (not res!625299) (not e!521314))))

(declare-fun lt!418827 () ListLongMap!11841)

(assert (=> b!928409 (= res!625299 (contains!4955 lt!418827 k!1099))))

(assert (=> b!928409 (= lt!418827 (getCurrentListMap!3149 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928410 () Bool)

(declare-fun Unit!31427 () Unit!31425)

(assert (=> b!928410 (= e!521316 Unit!31427)))

(declare-fun b!928411 () Bool)

(assert (=> b!928411 (= e!521314 (not true))))

(declare-fun e!521310 () Bool)

(assert (=> b!928411 e!521310))

(declare-fun res!625297 () Bool)

(assert (=> b!928411 (=> (not res!625297) (not e!521310))))

(declare-fun lt!418824 () ListLongMap!11841)

(assert (=> b!928411 (= res!625297 (contains!4955 lt!418824 k!1099))))

(assert (=> b!928411 (= lt!418824 (getCurrentListMap!3149 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!418832 () Unit!31425)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!110 (array!55646 array!55648 (_ BitVec 32) (_ BitVec 32) V!31411 V!31411 (_ BitVec 64) V!31411 (_ BitVec 32) Int) Unit!31425)

(assert (=> b!928411 (= lt!418832 (lemmaListMapApplyFromThenApplyFromZero!110 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!928412 () Bool)

(declare-fun e!521315 () Unit!31425)

(assert (=> b!928412 (= e!521315 e!521316)))

(assert (=> b!928412 (= lt!418818 (select (arr!26764 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96950 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!928412 (= c!96950 (validKeyInArray!0 lt!418818))))

(declare-fun b!928413 () Bool)

(declare-fun Unit!31428 () Unit!31425)

(assert (=> b!928413 (= e!521315 Unit!31428)))

(declare-fun b!928414 () Bool)

(assert (=> b!928414 (= e!521310 (= (apply!732 lt!418824 k!1099) v!791))))

(declare-fun b!928415 () Bool)

(declare-fun res!625302 () Bool)

(assert (=> b!928415 (=> (not res!625302) (not e!521318))))

(assert (=> b!928415 (= res!625302 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18951))))

(declare-fun b!928416 () Bool)

(declare-fun e!521307 () Bool)

(declare-fun mapRes!31509 () Bool)

(assert (=> b!928416 (= e!521311 (and e!521307 mapRes!31509))))

(declare-fun condMapEmpty!31509 () Bool)

(declare-fun mapDefault!31509 () ValueCell!9436)


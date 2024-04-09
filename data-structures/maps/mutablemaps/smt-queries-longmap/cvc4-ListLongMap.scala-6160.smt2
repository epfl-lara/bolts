; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79100 () Bool)

(assert start!79100)

(declare-fun b_free!17285 () Bool)

(declare-fun b_next!17285 () Bool)

(assert (=> start!79100 (= b_free!17285 (not b_next!17285))))

(declare-fun tp!60297 () Bool)

(declare-fun b_and!28325 () Bool)

(assert (=> start!79100 (= tp!60297 b_and!28325)))

(declare-fun b!927101 () Bool)

(declare-fun e!520492 () Bool)

(declare-fun tp_is_empty!19793 () Bool)

(assert (=> b!927101 (= e!520492 tp_is_empty!19793)))

(declare-fun b!927102 () Bool)

(declare-fun e!520490 () Bool)

(declare-fun e!520498 () Bool)

(assert (=> b!927102 (= e!520490 e!520498)))

(declare-fun res!624604 () Bool)

(assert (=> b!927102 (=> (not res!624604) (not e!520498))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55564 0))(
  ( (array!55565 (arr!26723 (Array (_ BitVec 32) (_ BitVec 64))) (size!27183 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55564)

(assert (=> b!927102 (= res!624604 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27183 _keys!1487)))))

(declare-datatypes ((Unit!31356 0))(
  ( (Unit!31357) )
))
(declare-fun lt!417810 () Unit!31356)

(declare-fun e!520496 () Unit!31356)

(assert (=> b!927102 (= lt!417810 e!520496)))

(declare-fun c!96760 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927102 (= c!96760 (validKeyInArray!0 k!1099))))

(declare-fun b!927103 () Bool)

(declare-fun res!624611 () Bool)

(declare-fun e!520488 () Bool)

(assert (=> b!927103 (=> (not res!624611) (not e!520488))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55564 (_ BitVec 32)) Bool)

(assert (=> b!927103 (= res!624611 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-datatypes ((V!31355 0))(
  ( (V!31356 (val!9947 Int)) )
))
(declare-fun v!791 () V!31355)

(declare-fun e!520489 () Bool)

(declare-fun b!927104 () Bool)

(declare-datatypes ((tuple2!13090 0))(
  ( (tuple2!13091 (_1!6555 (_ BitVec 64)) (_2!6555 V!31355)) )
))
(declare-datatypes ((List!18917 0))(
  ( (Nil!18914) (Cons!18913 (h!20059 tuple2!13090) (t!26940 List!18917)) )
))
(declare-datatypes ((ListLongMap!11801 0))(
  ( (ListLongMap!11802 (toList!5916 List!18917)) )
))
(declare-fun lt!417823 () ListLongMap!11801)

(declare-fun apply!713 (ListLongMap!11801 (_ BitVec 64)) V!31355)

(assert (=> b!927104 (= e!520489 (= (apply!713 lt!417823 k!1099) v!791))))

(declare-fun b!927105 () Bool)

(declare-fun e!520497 () Bool)

(assert (=> b!927105 (= e!520497 e!520490)))

(declare-fun res!624614 () Bool)

(assert (=> b!927105 (=> (not res!624614) (not e!520490))))

(declare-fun lt!417816 () V!31355)

(assert (=> b!927105 (= res!624614 (and (= lt!417816 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!417811 () ListLongMap!11801)

(assert (=> b!927105 (= lt!417816 (apply!713 lt!417811 k!1099))))

(declare-fun b!927106 () Bool)

(declare-fun e!520493 () Unit!31356)

(assert (=> b!927106 (= e!520496 e!520493)))

(declare-fun lt!417812 () (_ BitVec 64))

(assert (=> b!927106 (= lt!417812 (select (arr!26723 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96759 () Bool)

(assert (=> b!927106 (= c!96759 (validKeyInArray!0 lt!417812))))

(declare-fun b!927107 () Bool)

(declare-fun res!624610 () Bool)

(assert (=> b!927107 (=> (not res!624610) (not e!520488))))

(assert (=> b!927107 (= res!624610 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27183 _keys!1487))))))

(declare-fun b!927108 () Bool)

(declare-fun res!624606 () Bool)

(assert (=> b!927108 (=> (not res!624606) (not e!520488))))

(declare-datatypes ((List!18918 0))(
  ( (Nil!18915) (Cons!18914 (h!20060 (_ BitVec 64)) (t!26941 List!18918)) )
))
(declare-fun arrayNoDuplicates!0 (array!55564 (_ BitVec 32) List!18918) Bool)

(assert (=> b!927108 (= res!624606 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18915))))

(declare-fun res!624605 () Bool)

(assert (=> start!79100 (=> (not res!624605) (not e!520488))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79100 (= res!624605 (validMask!0 mask!1881))))

(assert (=> start!79100 e!520488))

(assert (=> start!79100 true))

(assert (=> start!79100 tp_is_empty!19793))

(declare-datatypes ((ValueCell!9415 0))(
  ( (ValueCellFull!9415 (v!12465 V!31355)) (EmptyCell!9415) )
))
(declare-datatypes ((array!55566 0))(
  ( (array!55567 (arr!26724 (Array (_ BitVec 32) ValueCell!9415)) (size!27184 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55566)

(declare-fun e!520494 () Bool)

(declare-fun array_inv!20800 (array!55566) Bool)

(assert (=> start!79100 (and (array_inv!20800 _values!1231) e!520494)))

(assert (=> start!79100 tp!60297))

(declare-fun array_inv!20801 (array!55564) Bool)

(assert (=> start!79100 (array_inv!20801 _keys!1487)))

(declare-fun mapNonEmpty!31446 () Bool)

(declare-fun mapRes!31446 () Bool)

(declare-fun tp!60296 () Bool)

(declare-fun e!520491 () Bool)

(assert (=> mapNonEmpty!31446 (= mapRes!31446 (and tp!60296 e!520491))))

(declare-fun mapValue!31446 () ValueCell!9415)

(declare-fun mapKey!31446 () (_ BitVec 32))

(declare-fun mapRest!31446 () (Array (_ BitVec 32) ValueCell!9415))

(assert (=> mapNonEmpty!31446 (= (arr!26724 _values!1231) (store mapRest!31446 mapKey!31446 mapValue!31446))))

(declare-fun b!927109 () Bool)

(declare-fun res!624613 () Bool)

(declare-fun e!520500 () Bool)

(assert (=> b!927109 (=> (not res!624613) (not e!520500))))

(declare-fun lt!417817 () ListLongMap!11801)

(assert (=> b!927109 (= res!624613 (= (apply!713 lt!417817 k!1099) v!791))))

(declare-fun b!927110 () Bool)

(declare-fun lt!417815 () ListLongMap!11801)

(assert (=> b!927110 (= (apply!713 lt!417815 k!1099) lt!417816)))

(declare-fun lt!417819 () V!31355)

(declare-fun lt!417822 () Unit!31356)

(declare-fun addApplyDifferent!394 (ListLongMap!11801 (_ BitVec 64) V!31355 (_ BitVec 64)) Unit!31356)

(assert (=> b!927110 (= lt!417822 (addApplyDifferent!394 lt!417811 lt!417812 lt!417819 k!1099))))

(assert (=> b!927110 (not (= lt!417812 k!1099))))

(declare-fun lt!417821 () Unit!31356)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55564 (_ BitVec 64) (_ BitVec 32) List!18918) Unit!31356)

(assert (=> b!927110 (= lt!417821 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18915))))

(declare-fun e!520499 () Bool)

(assert (=> b!927110 e!520499))

(declare-fun c!96761 () Bool)

(assert (=> b!927110 (= c!96761 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun lt!417824 () Unit!31356)

(declare-fun zeroValue!1173 () V!31355)

(declare-fun minValue!1173 () V!31355)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!254 (array!55564 array!55566 (_ BitVec 32) (_ BitVec 32) V!31355 V!31355 (_ BitVec 64) (_ BitVec 32) Int) Unit!31356)

(assert (=> b!927110 (= lt!417824 (lemmaListMapContainsThenArrayContainsFrom!254 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!927110 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18915)))

(declare-fun lt!417820 () Unit!31356)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55564 (_ BitVec 32) (_ BitVec 32)) Unit!31356)

(assert (=> b!927110 (= lt!417820 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4935 (ListLongMap!11801 (_ BitVec 64)) Bool)

(assert (=> b!927110 (contains!4935 lt!417815 k!1099)))

(declare-fun lt!417813 () tuple2!13090)

(declare-fun +!2708 (ListLongMap!11801 tuple2!13090) ListLongMap!11801)

(assert (=> b!927110 (= lt!417815 (+!2708 lt!417811 lt!417813))))

(declare-fun lt!417818 () Unit!31356)

(declare-fun addStillContains!470 (ListLongMap!11801 (_ BitVec 64) V!31355 (_ BitVec 64)) Unit!31356)

(assert (=> b!927110 (= lt!417818 (addStillContains!470 lt!417811 lt!417812 lt!417819 k!1099))))

(declare-fun getCurrentListMap!3129 (array!55564 array!55566 (_ BitVec 32) (_ BitVec 32) V!31355 V!31355 (_ BitVec 32) Int) ListLongMap!11801)

(assert (=> b!927110 (= (getCurrentListMap!3129 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2708 (getCurrentListMap!3129 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417813))))

(assert (=> b!927110 (= lt!417813 (tuple2!13091 lt!417812 lt!417819))))

(declare-fun get!14081 (ValueCell!9415 V!31355) V!31355)

(declare-fun dynLambda!1547 (Int (_ BitVec 64)) V!31355)

(assert (=> b!927110 (= lt!417819 (get!14081 (select (arr!26724 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1547 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417814 () Unit!31356)

(declare-fun lemmaListMapRecursiveValidKeyArray!143 (array!55564 array!55566 (_ BitVec 32) (_ BitVec 32) V!31355 V!31355 (_ BitVec 32) Int) Unit!31356)

(assert (=> b!927110 (= lt!417814 (lemmaListMapRecursiveValidKeyArray!143 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!927110 (= e!520493 lt!417822)))

(declare-fun b!927111 () Bool)

(assert (=> b!927111 (= e!520499 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!927112 () Bool)

(assert (=> b!927112 (= e!520498 e!520500)))

(declare-fun res!624608 () Bool)

(assert (=> b!927112 (=> (not res!624608) (not e!520500))))

(assert (=> b!927112 (= res!624608 (contains!4935 lt!417817 k!1099))))

(assert (=> b!927112 (= lt!417817 (getCurrentListMap!3129 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927113 () Bool)

(declare-fun Unit!31358 () Unit!31356)

(assert (=> b!927113 (= e!520496 Unit!31358)))

(declare-fun b!927114 () Bool)

(declare-fun Unit!31359 () Unit!31356)

(assert (=> b!927114 (= e!520493 Unit!31359)))

(declare-fun b!927115 () Bool)

(assert (=> b!927115 (= e!520500 (not true))))

(assert (=> b!927115 e!520489))

(declare-fun res!624607 () Bool)

(assert (=> b!927115 (=> (not res!624607) (not e!520489))))

(assert (=> b!927115 (= res!624607 (contains!4935 lt!417823 k!1099))))

(assert (=> b!927115 (= lt!417823 (getCurrentListMap!3129 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!417825 () Unit!31356)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!93 (array!55564 array!55566 (_ BitVec 32) (_ BitVec 32) V!31355 V!31355 (_ BitVec 64) V!31355 (_ BitVec 32) Int) Unit!31356)

(assert (=> b!927115 (= lt!417825 (lemmaListMapApplyFromThenApplyFromZero!93 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun mapIsEmpty!31446 () Bool)

(assert (=> mapIsEmpty!31446 mapRes!31446))

(declare-fun b!927116 () Bool)

(assert (=> b!927116 (= e!520488 e!520497)))

(declare-fun res!624612 () Bool)

(assert (=> b!927116 (=> (not res!624612) (not e!520497))))

(assert (=> b!927116 (= res!624612 (contains!4935 lt!417811 k!1099))))

(assert (=> b!927116 (= lt!417811 (getCurrentListMap!3129 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927117 () Bool)

(declare-fun arrayContainsKey!0 (array!55564 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927117 (= e!520499 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!927118 () Bool)

(assert (=> b!927118 (= e!520494 (and e!520492 mapRes!31446))))

(declare-fun condMapEmpty!31446 () Bool)

(declare-fun mapDefault!31446 () ValueCell!9415)


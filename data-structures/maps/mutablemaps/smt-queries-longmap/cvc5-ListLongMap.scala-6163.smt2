; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79114 () Bool)

(assert start!79114)

(declare-fun b_free!17299 () Bool)

(declare-fun b_next!17299 () Bool)

(assert (=> start!79114 (= b_free!17299 (not b_next!17299))))

(declare-fun tp!60339 () Bool)

(declare-fun b_and!28353 () Bool)

(assert (=> start!79114 (= tp!60339 b_and!28353)))

(declare-fun b!927535 () Bool)

(declare-fun e!520762 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!927535 (= e!520762 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!927536 () Bool)

(declare-fun res!624838 () Bool)

(declare-fun e!520773 () Bool)

(assert (=> b!927536 (=> (not res!624838) (not e!520773))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((array!55592 0))(
  ( (array!55593 (arr!26737 (Array (_ BitVec 32) (_ BitVec 64))) (size!27197 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55592)

(assert (=> b!927536 (= res!624838 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27197 _keys!1487))))))

(declare-fun b!927537 () Bool)

(declare-fun e!520766 () Bool)

(assert (=> b!927537 (= e!520766 (not true))))

(declare-fun e!520769 () Bool)

(assert (=> b!927537 e!520769))

(declare-fun res!624840 () Bool)

(assert (=> b!927537 (=> (not res!624840) (not e!520769))))

(declare-datatypes ((V!31375 0))(
  ( (V!31376 (val!9954 Int)) )
))
(declare-datatypes ((tuple2!13104 0))(
  ( (tuple2!13105 (_1!6562 (_ BitVec 64)) (_2!6562 V!31375)) )
))
(declare-datatypes ((List!18930 0))(
  ( (Nil!18927) (Cons!18926 (h!20072 tuple2!13104) (t!26967 List!18930)) )
))
(declare-datatypes ((ListLongMap!11815 0))(
  ( (ListLongMap!11816 (toList!5923 List!18930)) )
))
(declare-fun lt!418157 () ListLongMap!11815)

(declare-fun contains!4942 (ListLongMap!11815 (_ BitVec 64)) Bool)

(assert (=> b!927537 (= res!624840 (contains!4942 lt!418157 k!1099))))

(declare-datatypes ((ValueCell!9422 0))(
  ( (ValueCellFull!9422 (v!12472 V!31375)) (EmptyCell!9422) )
))
(declare-datatypes ((array!55594 0))(
  ( (array!55595 (arr!26738 (Array (_ BitVec 32) ValueCell!9422)) (size!27198 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55594)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31375)

(declare-fun minValue!1173 () V!31375)

(declare-fun getCurrentListMap!3136 (array!55592 array!55594 (_ BitVec 32) (_ BitVec 32) V!31375 V!31375 (_ BitVec 32) Int) ListLongMap!11815)

(assert (=> b!927537 (= lt!418157 (getCurrentListMap!3136 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31375)

(declare-datatypes ((Unit!31379 0))(
  ( (Unit!31380) )
))
(declare-fun lt!418153 () Unit!31379)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!100 (array!55592 array!55594 (_ BitVec 32) (_ BitVec 32) V!31375 V!31375 (_ BitVec 64) V!31375 (_ BitVec 32) Int) Unit!31379)

(assert (=> b!927537 (= lt!418153 (lemmaListMapApplyFromThenApplyFromZero!100 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927538 () Bool)

(declare-fun res!624844 () Bool)

(assert (=> b!927538 (=> (not res!624844) (not e!520773))))

(declare-datatypes ((List!18931 0))(
  ( (Nil!18928) (Cons!18927 (h!20073 (_ BitVec 64)) (t!26968 List!18931)) )
))
(declare-fun arrayNoDuplicates!0 (array!55592 (_ BitVec 32) List!18931) Bool)

(assert (=> b!927538 (= res!624844 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18928))))

(declare-fun b!927539 () Bool)

(declare-fun e!520770 () Bool)

(assert (=> b!927539 (= e!520773 e!520770)))

(declare-fun res!624835 () Bool)

(assert (=> b!927539 (=> (not res!624835) (not e!520770))))

(declare-fun lt!418159 () ListLongMap!11815)

(assert (=> b!927539 (= res!624835 (contains!4942 lt!418159 k!1099))))

(assert (=> b!927539 (= lt!418159 (getCurrentListMap!3136 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927540 () Bool)

(declare-fun e!520764 () Bool)

(declare-fun tp_is_empty!19807 () Bool)

(assert (=> b!927540 (= e!520764 tp_is_empty!19807)))

(declare-fun b!927541 () Bool)

(declare-fun apply!719 (ListLongMap!11815 (_ BitVec 64)) V!31375)

(assert (=> b!927541 (= e!520769 (= (apply!719 lt!418157 k!1099) v!791))))

(declare-fun b!927542 () Bool)

(declare-fun res!624837 () Bool)

(assert (=> b!927542 (=> (not res!624837) (not e!520773))))

(assert (=> b!927542 (= res!624837 (and (= (size!27198 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27197 _keys!1487) (size!27198 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!927543 () Bool)

(declare-fun e!520761 () Bool)

(assert (=> b!927543 (= e!520770 e!520761)))

(declare-fun res!624845 () Bool)

(assert (=> b!927543 (=> (not res!624845) (not e!520761))))

(declare-fun lt!418161 () V!31375)

(assert (=> b!927543 (= res!624845 (and (= lt!418161 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!927543 (= lt!418161 (apply!719 lt!418159 k!1099))))

(declare-fun b!927544 () Bool)

(declare-fun e!520771 () Unit!31379)

(declare-fun e!520763 () Unit!31379)

(assert (=> b!927544 (= e!520771 e!520763)))

(declare-fun lt!418150 () (_ BitVec 64))

(assert (=> b!927544 (= lt!418150 (select (arr!26737 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96823 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927544 (= c!96823 (validKeyInArray!0 lt!418150))))

(declare-fun res!624842 () Bool)

(assert (=> start!79114 (=> (not res!624842) (not e!520773))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79114 (= res!624842 (validMask!0 mask!1881))))

(assert (=> start!79114 e!520773))

(assert (=> start!79114 true))

(assert (=> start!79114 tp_is_empty!19807))

(declare-fun e!520767 () Bool)

(declare-fun array_inv!20808 (array!55594) Bool)

(assert (=> start!79114 (and (array_inv!20808 _values!1231) e!520767)))

(assert (=> start!79114 tp!60339))

(declare-fun array_inv!20809 (array!55592) Bool)

(assert (=> start!79114 (array_inv!20809 _keys!1487)))

(declare-fun b!927545 () Bool)

(declare-fun e!520772 () Bool)

(assert (=> b!927545 (= e!520772 tp_is_empty!19807)))

(declare-fun b!927546 () Bool)

(declare-fun arrayContainsKey!0 (array!55592 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!927546 (= e!520762 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!927547 () Bool)

(declare-fun res!624836 () Bool)

(assert (=> b!927547 (=> (not res!624836) (not e!520766))))

(declare-fun lt!418154 () ListLongMap!11815)

(assert (=> b!927547 (= res!624836 (= (apply!719 lt!418154 k!1099) v!791))))

(declare-fun b!927548 () Bool)

(declare-fun lt!418148 () ListLongMap!11815)

(assert (=> b!927548 (= (apply!719 lt!418148 k!1099) lt!418161)))

(declare-fun lt!418146 () V!31375)

(declare-fun lt!418160 () Unit!31379)

(declare-fun addApplyDifferent!399 (ListLongMap!11815 (_ BitVec 64) V!31375 (_ BitVec 64)) Unit!31379)

(assert (=> b!927548 (= lt!418160 (addApplyDifferent!399 lt!418159 lt!418150 lt!418146 k!1099))))

(assert (=> b!927548 (not (= lt!418150 k!1099))))

(declare-fun lt!418156 () Unit!31379)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55592 (_ BitVec 64) (_ BitVec 32) List!18931) Unit!31379)

(assert (=> b!927548 (= lt!418156 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18928))))

(assert (=> b!927548 e!520762))

(declare-fun c!96822 () Bool)

(assert (=> b!927548 (= c!96822 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!418149 () Unit!31379)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!259 (array!55592 array!55594 (_ BitVec 32) (_ BitVec 32) V!31375 V!31375 (_ BitVec 64) (_ BitVec 32) Int) Unit!31379)

(assert (=> b!927548 (= lt!418149 (lemmaListMapContainsThenArrayContainsFrom!259 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!927548 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18928)))

(declare-fun lt!418147 () Unit!31379)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55592 (_ BitVec 32) (_ BitVec 32)) Unit!31379)

(assert (=> b!927548 (= lt!418147 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!927548 (contains!4942 lt!418148 k!1099)))

(declare-fun lt!418155 () tuple2!13104)

(declare-fun +!2713 (ListLongMap!11815 tuple2!13104) ListLongMap!11815)

(assert (=> b!927548 (= lt!418148 (+!2713 lt!418159 lt!418155))))

(declare-fun lt!418151 () Unit!31379)

(declare-fun addStillContains!475 (ListLongMap!11815 (_ BitVec 64) V!31375 (_ BitVec 64)) Unit!31379)

(assert (=> b!927548 (= lt!418151 (addStillContains!475 lt!418159 lt!418150 lt!418146 k!1099))))

(assert (=> b!927548 (= (getCurrentListMap!3136 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2713 (getCurrentListMap!3136 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418155))))

(assert (=> b!927548 (= lt!418155 (tuple2!13105 lt!418150 lt!418146))))

(declare-fun get!14092 (ValueCell!9422 V!31375) V!31375)

(declare-fun dynLambda!1552 (Int (_ BitVec 64)) V!31375)

(assert (=> b!927548 (= lt!418146 (get!14092 (select (arr!26738 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1552 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418158 () Unit!31379)

(declare-fun lemmaListMapRecursiveValidKeyArray!148 (array!55592 array!55594 (_ BitVec 32) (_ BitVec 32) V!31375 V!31375 (_ BitVec 32) Int) Unit!31379)

(assert (=> b!927548 (= lt!418158 (lemmaListMapRecursiveValidKeyArray!148 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!927548 (= e!520763 lt!418160)))

(declare-fun b!927549 () Bool)

(declare-fun e!520768 () Bool)

(assert (=> b!927549 (= e!520768 e!520766)))

(declare-fun res!624841 () Bool)

(assert (=> b!927549 (=> (not res!624841) (not e!520766))))

(assert (=> b!927549 (= res!624841 (contains!4942 lt!418154 k!1099))))

(assert (=> b!927549 (= lt!418154 (getCurrentListMap!3136 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927550 () Bool)

(declare-fun mapRes!31467 () Bool)

(assert (=> b!927550 (= e!520767 (and e!520772 mapRes!31467))))

(declare-fun condMapEmpty!31467 () Bool)

(declare-fun mapDefault!31467 () ValueCell!9422)


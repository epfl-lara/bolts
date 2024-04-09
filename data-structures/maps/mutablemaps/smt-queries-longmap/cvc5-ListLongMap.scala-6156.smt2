; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79072 () Bool)

(assert start!79072)

(declare-fun b_free!17257 () Bool)

(declare-fun b_next!17257 () Bool)

(assert (=> start!79072 (= b_free!17257 (not b_next!17257))))

(declare-fun tp!60213 () Bool)

(declare-fun b_and!28269 () Bool)

(assert (=> start!79072 (= tp!60213 b_and!28269)))

(declare-fun b!926233 () Bool)

(declare-fun e!519954 () Bool)

(declare-fun tp_is_empty!19765 () Bool)

(assert (=> b!926233 (= e!519954 tp_is_empty!19765)))

(declare-fun res!624143 () Bool)

(declare-fun e!519953 () Bool)

(assert (=> start!79072 (=> (not res!624143) (not e!519953))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79072 (= res!624143 (validMask!0 mask!1881))))

(assert (=> start!79072 e!519953))

(assert (=> start!79072 true))

(assert (=> start!79072 tp_is_empty!19765))

(declare-datatypes ((V!31319 0))(
  ( (V!31320 (val!9933 Int)) )
))
(declare-datatypes ((ValueCell!9401 0))(
  ( (ValueCellFull!9401 (v!12451 V!31319)) (EmptyCell!9401) )
))
(declare-datatypes ((array!55510 0))(
  ( (array!55511 (arr!26696 (Array (_ BitVec 32) ValueCell!9401)) (size!27156 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55510)

(declare-fun e!519945 () Bool)

(declare-fun array_inv!20780 (array!55510) Bool)

(assert (=> start!79072 (and (array_inv!20780 _values!1231) e!519945)))

(assert (=> start!79072 tp!60213))

(declare-datatypes ((array!55512 0))(
  ( (array!55513 (arr!26697 (Array (_ BitVec 32) (_ BitVec 64))) (size!27157 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55512)

(declare-fun array_inv!20781 (array!55512) Bool)

(assert (=> start!79072 (array_inv!20781 _keys!1487)))

(declare-fun b!926234 () Bool)

(declare-fun e!519952 () Bool)

(declare-fun e!519944 () Bool)

(assert (=> b!926234 (= e!519952 e!519944)))

(declare-fun res!624148 () Bool)

(assert (=> b!926234 (=> (not res!624148) (not e!519944))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!926234 (= res!624148 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27157 _keys!1487)))))

(declare-datatypes ((Unit!31312 0))(
  ( (Unit!31313) )
))
(declare-fun lt!417138 () Unit!31312)

(declare-fun e!519942 () Unit!31312)

(assert (=> b!926234 (= lt!417138 e!519942)))

(declare-fun c!96634 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926234 (= c!96634 (validKeyInArray!0 k!1099))))

(declare-fun b!926235 () Bool)

(declare-fun e!519943 () Bool)

(assert (=> b!926235 (= e!519943 (not true))))

(declare-fun e!519951 () Bool)

(assert (=> b!926235 e!519951))

(declare-fun res!624144 () Bool)

(assert (=> b!926235 (=> (not res!624144) (not e!519951))))

(declare-datatypes ((tuple2!13062 0))(
  ( (tuple2!13063 (_1!6541 (_ BitVec 64)) (_2!6541 V!31319)) )
))
(declare-datatypes ((List!18894 0))(
  ( (Nil!18891) (Cons!18890 (h!20036 tuple2!13062) (t!26889 List!18894)) )
))
(declare-datatypes ((ListLongMap!11773 0))(
  ( (ListLongMap!11774 (toList!5902 List!18894)) )
))
(declare-fun lt!417140 () ListLongMap!11773)

(declare-fun contains!4923 (ListLongMap!11773 (_ BitVec 64)) Bool)

(assert (=> b!926235 (= res!624144 (contains!4923 lt!417140 k!1099))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31319)

(declare-fun minValue!1173 () V!31319)

(declare-fun defaultEntry!1235 () Int)

(declare-fun getCurrentListMap!3117 (array!55512 array!55510 (_ BitVec 32) (_ BitVec 32) V!31319 V!31319 (_ BitVec 32) Int) ListLongMap!11773)

(assert (=> b!926235 (= lt!417140 (getCurrentListMap!3117 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun v!791 () V!31319)

(declare-fun lt!417141 () Unit!31312)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!83 (array!55512 array!55510 (_ BitVec 32) (_ BitVec 32) V!31319 V!31319 (_ BitVec 64) V!31319 (_ BitVec 32) Int) Unit!31312)

(assert (=> b!926235 (= lt!417141 (lemmaListMapApplyFromThenApplyFromZero!83 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926236 () Bool)

(declare-fun e!519946 () Unit!31312)

(assert (=> b!926236 (= e!519942 e!519946)))

(declare-fun lt!417153 () (_ BitVec 64))

(assert (=> b!926236 (= lt!417153 (select (arr!26697 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96635 () Bool)

(assert (=> b!926236 (= c!96635 (validKeyInArray!0 lt!417153))))

(declare-fun b!926237 () Bool)

(declare-fun Unit!31314 () Unit!31312)

(assert (=> b!926237 (= e!519946 Unit!31314)))

(declare-fun b!926238 () Bool)

(declare-fun e!519947 () Bool)

(assert (=> b!926238 (= e!519947 e!519952)))

(declare-fun res!624146 () Bool)

(assert (=> b!926238 (=> (not res!624146) (not e!519952))))

(declare-fun lt!417146 () V!31319)

(assert (=> b!926238 (= res!624146 (and (= lt!417146 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!417149 () ListLongMap!11773)

(declare-fun apply!702 (ListLongMap!11773 (_ BitVec 64)) V!31319)

(assert (=> b!926238 (= lt!417146 (apply!702 lt!417149 k!1099))))

(declare-fun b!926239 () Bool)

(declare-fun Unit!31315 () Unit!31312)

(assert (=> b!926239 (= e!519942 Unit!31315)))

(declare-fun b!926240 () Bool)

(assert (=> b!926240 (= e!519953 e!519947)))

(declare-fun res!624147 () Bool)

(assert (=> b!926240 (=> (not res!624147) (not e!519947))))

(assert (=> b!926240 (= res!624147 (contains!4923 lt!417149 k!1099))))

(assert (=> b!926240 (= lt!417149 (getCurrentListMap!3117 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!926241 () Bool)

(declare-fun e!519950 () Bool)

(assert (=> b!926241 (= e!519950 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!31404 () Bool)

(declare-fun mapRes!31404 () Bool)

(assert (=> mapIsEmpty!31404 mapRes!31404))

(declare-fun b!926242 () Bool)

(declare-fun res!624151 () Bool)

(assert (=> b!926242 (=> (not res!624151) (not e!519943))))

(declare-fun lt!417152 () ListLongMap!11773)

(assert (=> b!926242 (= res!624151 (= (apply!702 lt!417152 k!1099) v!791))))

(declare-fun b!926243 () Bool)

(declare-fun res!624142 () Bool)

(assert (=> b!926243 (=> (not res!624142) (not e!519953))))

(assert (=> b!926243 (= res!624142 (and (= (size!27156 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27157 _keys!1487) (size!27156 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!926244 () Bool)

(declare-fun res!624145 () Bool)

(assert (=> b!926244 (=> (not res!624145) (not e!519953))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55512 (_ BitVec 32)) Bool)

(assert (=> b!926244 (= res!624145 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926245 () Bool)

(assert (=> b!926245 (= e!519951 (= (apply!702 lt!417140 k!1099) v!791))))

(declare-fun b!926246 () Bool)

(declare-fun arrayContainsKey!0 (array!55512 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!926246 (= e!519950 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!926247 () Bool)

(declare-fun e!519948 () Bool)

(assert (=> b!926247 (= e!519948 tp_is_empty!19765)))

(declare-fun b!926248 () Bool)

(declare-fun lt!417150 () ListLongMap!11773)

(assert (=> b!926248 (= (apply!702 lt!417150 k!1099) lt!417146)))

(declare-fun lt!417139 () V!31319)

(declare-fun lt!417151 () Unit!31312)

(declare-fun addApplyDifferent!386 (ListLongMap!11773 (_ BitVec 64) V!31319 (_ BitVec 64)) Unit!31312)

(assert (=> b!926248 (= lt!417151 (addApplyDifferent!386 lt!417149 lt!417153 lt!417139 k!1099))))

(assert (=> b!926248 (not (= lt!417153 k!1099))))

(declare-fun lt!417142 () Unit!31312)

(declare-datatypes ((List!18895 0))(
  ( (Nil!18892) (Cons!18891 (h!20037 (_ BitVec 64)) (t!26890 List!18895)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55512 (_ BitVec 64) (_ BitVec 32) List!18895) Unit!31312)

(assert (=> b!926248 (= lt!417142 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18892))))

(assert (=> b!926248 e!519950))

(declare-fun c!96633 () Bool)

(assert (=> b!926248 (= c!96633 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417148 () Unit!31312)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!246 (array!55512 array!55510 (_ BitVec 32) (_ BitVec 32) V!31319 V!31319 (_ BitVec 64) (_ BitVec 32) Int) Unit!31312)

(assert (=> b!926248 (= lt!417148 (lemmaListMapContainsThenArrayContainsFrom!246 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55512 (_ BitVec 32) List!18895) Bool)

(assert (=> b!926248 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18892)))

(declare-fun lt!417147 () Unit!31312)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55512 (_ BitVec 32) (_ BitVec 32)) Unit!31312)

(assert (=> b!926248 (= lt!417147 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!926248 (contains!4923 lt!417150 k!1099)))

(declare-fun lt!417145 () tuple2!13062)

(declare-fun +!2700 (ListLongMap!11773 tuple2!13062) ListLongMap!11773)

(assert (=> b!926248 (= lt!417150 (+!2700 lt!417149 lt!417145))))

(declare-fun lt!417144 () Unit!31312)

(declare-fun addStillContains!462 (ListLongMap!11773 (_ BitVec 64) V!31319 (_ BitVec 64)) Unit!31312)

(assert (=> b!926248 (= lt!417144 (addStillContains!462 lt!417149 lt!417153 lt!417139 k!1099))))

(assert (=> b!926248 (= (getCurrentListMap!3117 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2700 (getCurrentListMap!3117 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417145))))

(assert (=> b!926248 (= lt!417145 (tuple2!13063 lt!417153 lt!417139))))

(declare-fun get!14065 (ValueCell!9401 V!31319) V!31319)

(declare-fun dynLambda!1539 (Int (_ BitVec 64)) V!31319)

(assert (=> b!926248 (= lt!417139 (get!14065 (select (arr!26696 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1539 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417143 () Unit!31312)

(declare-fun lemmaListMapRecursiveValidKeyArray!135 (array!55512 array!55510 (_ BitVec 32) (_ BitVec 32) V!31319 V!31319 (_ BitVec 32) Int) Unit!31312)

(assert (=> b!926248 (= lt!417143 (lemmaListMapRecursiveValidKeyArray!135 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!926248 (= e!519946 lt!417151)))

(declare-fun mapNonEmpty!31404 () Bool)

(declare-fun tp!60212 () Bool)

(assert (=> mapNonEmpty!31404 (= mapRes!31404 (and tp!60212 e!519954))))

(declare-fun mapRest!31404 () (Array (_ BitVec 32) ValueCell!9401))

(declare-fun mapValue!31404 () ValueCell!9401)

(declare-fun mapKey!31404 () (_ BitVec 32))

(assert (=> mapNonEmpty!31404 (= (arr!26696 _values!1231) (store mapRest!31404 mapKey!31404 mapValue!31404))))

(declare-fun b!926249 () Bool)

(assert (=> b!926249 (= e!519944 e!519943)))

(declare-fun res!624150 () Bool)

(assert (=> b!926249 (=> (not res!624150) (not e!519943))))

(assert (=> b!926249 (= res!624150 (contains!4923 lt!417152 k!1099))))

(assert (=> b!926249 (= lt!417152 (getCurrentListMap!3117 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926250 () Bool)

(assert (=> b!926250 (= e!519945 (and e!519948 mapRes!31404))))

(declare-fun condMapEmpty!31404 () Bool)

(declare-fun mapDefault!31404 () ValueCell!9401)


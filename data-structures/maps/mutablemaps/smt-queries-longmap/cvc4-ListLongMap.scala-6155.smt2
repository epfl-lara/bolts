; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79070 () Bool)

(assert start!79070)

(declare-fun b_free!17255 () Bool)

(declare-fun b_next!17255 () Bool)

(assert (=> start!79070 (= b_free!17255 (not b_next!17255))))

(declare-fun tp!60207 () Bool)

(declare-fun b_and!28265 () Bool)

(assert (=> start!79070 (= tp!60207 b_and!28265)))

(declare-fun b!926171 () Bool)

(declare-fun res!624115 () Bool)

(declare-fun e!519909 () Bool)

(assert (=> b!926171 (=> (not res!624115) (not e!519909))))

(declare-datatypes ((array!55506 0))(
  ( (array!55507 (arr!26694 (Array (_ BitVec 32) (_ BitVec 64))) (size!27154 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55506)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((V!31315 0))(
  ( (V!31316 (val!9932 Int)) )
))
(declare-datatypes ((ValueCell!9400 0))(
  ( (ValueCellFull!9400 (v!12450 V!31315)) (EmptyCell!9400) )
))
(declare-datatypes ((array!55508 0))(
  ( (array!55509 (arr!26695 (Array (_ BitVec 32) ValueCell!9400)) (size!27155 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55508)

(assert (=> b!926171 (= res!624115 (and (= (size!27155 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27154 _keys!1487) (size!27155 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!926172 () Bool)

(declare-fun res!624110 () Bool)

(declare-fun e!519913 () Bool)

(assert (=> b!926172 (=> (not res!624110) (not e!519913))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun v!791 () V!31315)

(declare-datatypes ((tuple2!13060 0))(
  ( (tuple2!13061 (_1!6540 (_ BitVec 64)) (_2!6540 V!31315)) )
))
(declare-datatypes ((List!18892 0))(
  ( (Nil!18889) (Cons!18888 (h!20034 tuple2!13060) (t!26885 List!18892)) )
))
(declare-datatypes ((ListLongMap!11771 0))(
  ( (ListLongMap!11772 (toList!5901 List!18892)) )
))
(declare-fun lt!417103 () ListLongMap!11771)

(declare-fun apply!701 (ListLongMap!11771 (_ BitVec 64)) V!31315)

(assert (=> b!926172 (= res!624110 (= (apply!701 lt!417103 k!1099) v!791))))

(declare-fun b!926173 () Bool)

(declare-fun e!519903 () Bool)

(declare-fun e!519905 () Bool)

(assert (=> b!926173 (= e!519903 e!519905)))

(declare-fun res!624119 () Bool)

(assert (=> b!926173 (=> (not res!624119) (not e!519905))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!926173 (= res!624119 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27154 _keys!1487)))))

(declare-datatypes ((Unit!31309 0))(
  ( (Unit!31310) )
))
(declare-fun lt!417100 () Unit!31309)

(declare-fun e!519912 () Unit!31309)

(assert (=> b!926173 (= lt!417100 e!519912)))

(declare-fun c!96624 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!926173 (= c!96624 (validKeyInArray!0 k!1099))))

(declare-fun b!926175 () Bool)

(declare-fun e!519907 () Bool)

(declare-fun tp_is_empty!19763 () Bool)

(assert (=> b!926175 (= e!519907 tp_is_empty!19763)))

(declare-fun e!519906 () Bool)

(declare-fun b!926176 () Bool)

(declare-fun arrayContainsKey!0 (array!55506 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!926176 (= e!519906 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!926177 () Bool)

(declare-fun res!624114 () Bool)

(assert (=> b!926177 (=> (not res!624114) (not e!519909))))

(assert (=> b!926177 (= res!624114 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27154 _keys!1487))))))

(declare-fun b!926178 () Bool)

(declare-fun lt!417091 () ListLongMap!11771)

(declare-fun lt!417102 () V!31315)

(assert (=> b!926178 (= (apply!701 lt!417091 k!1099) lt!417102)))

(declare-fun lt!417101 () ListLongMap!11771)

(declare-fun lt!417094 () (_ BitVec 64))

(declare-fun lt!417093 () Unit!31309)

(declare-fun lt!417090 () V!31315)

(declare-fun addApplyDifferent!385 (ListLongMap!11771 (_ BitVec 64) V!31315 (_ BitVec 64)) Unit!31309)

(assert (=> b!926178 (= lt!417093 (addApplyDifferent!385 lt!417101 lt!417094 lt!417090 k!1099))))

(assert (=> b!926178 (not (= lt!417094 k!1099))))

(declare-fun lt!417097 () Unit!31309)

(declare-datatypes ((List!18893 0))(
  ( (Nil!18890) (Cons!18889 (h!20035 (_ BitVec 64)) (t!26886 List!18893)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55506 (_ BitVec 64) (_ BitVec 32) List!18893) Unit!31309)

(assert (=> b!926178 (= lt!417097 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18890))))

(assert (=> b!926178 e!519906))

(declare-fun c!96625 () Bool)

(assert (=> b!926178 (= c!96625 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!417104 () Unit!31309)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31315)

(declare-fun minValue!1173 () V!31315)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!245 (array!55506 array!55508 (_ BitVec 32) (_ BitVec 32) V!31315 V!31315 (_ BitVec 64) (_ BitVec 32) Int) Unit!31309)

(assert (=> b!926178 (= lt!417104 (lemmaListMapContainsThenArrayContainsFrom!245 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55506 (_ BitVec 32) List!18893) Bool)

(assert (=> b!926178 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18890)))

(declare-fun lt!417096 () Unit!31309)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55506 (_ BitVec 32) (_ BitVec 32)) Unit!31309)

(assert (=> b!926178 (= lt!417096 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!4922 (ListLongMap!11771 (_ BitVec 64)) Bool)

(assert (=> b!926178 (contains!4922 lt!417091 k!1099)))

(declare-fun lt!417092 () tuple2!13060)

(declare-fun +!2699 (ListLongMap!11771 tuple2!13060) ListLongMap!11771)

(assert (=> b!926178 (= lt!417091 (+!2699 lt!417101 lt!417092))))

(declare-fun lt!417099 () Unit!31309)

(declare-fun addStillContains!461 (ListLongMap!11771 (_ BitVec 64) V!31315 (_ BitVec 64)) Unit!31309)

(assert (=> b!926178 (= lt!417099 (addStillContains!461 lt!417101 lt!417094 lt!417090 k!1099))))

(declare-fun getCurrentListMap!3116 (array!55506 array!55508 (_ BitVec 32) (_ BitVec 32) V!31315 V!31315 (_ BitVec 32) Int) ListLongMap!11771)

(assert (=> b!926178 (= (getCurrentListMap!3116 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2699 (getCurrentListMap!3116 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!417092))))

(assert (=> b!926178 (= lt!417092 (tuple2!13061 lt!417094 lt!417090))))

(declare-fun get!14062 (ValueCell!9400 V!31315) V!31315)

(declare-fun dynLambda!1538 (Int (_ BitVec 64)) V!31315)

(assert (=> b!926178 (= lt!417090 (get!14062 (select (arr!26695 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1538 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!417098 () Unit!31309)

(declare-fun lemmaListMapRecursiveValidKeyArray!134 (array!55506 array!55508 (_ BitVec 32) (_ BitVec 32) V!31315 V!31315 (_ BitVec 32) Int) Unit!31309)

(assert (=> b!926178 (= lt!417098 (lemmaListMapRecursiveValidKeyArray!134 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!519908 () Unit!31309)

(assert (=> b!926178 (= e!519908 lt!417093)))

(declare-fun b!926179 () Bool)

(declare-fun e!519915 () Bool)

(assert (=> b!926179 (= e!519915 tp_is_empty!19763)))

(declare-fun b!926180 () Bool)

(declare-fun lt!417105 () ListLongMap!11771)

(declare-fun e!519914 () Bool)

(assert (=> b!926180 (= e!519914 (= (apply!701 lt!417105 k!1099) v!791))))

(declare-fun b!926181 () Bool)

(assert (=> b!926181 (= e!519906 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!926182 () Bool)

(assert (=> b!926182 (= e!519913 (not true))))

(assert (=> b!926182 e!519914))

(declare-fun res!624118 () Bool)

(assert (=> b!926182 (=> (not res!624118) (not e!519914))))

(assert (=> b!926182 (= res!624118 (contains!4922 lt!417105 k!1099))))

(assert (=> b!926182 (= lt!417105 (getCurrentListMap!3116 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun lt!417095 () Unit!31309)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!82 (array!55506 array!55508 (_ BitVec 32) (_ BitVec 32) V!31315 V!31315 (_ BitVec 64) V!31315 (_ BitVec 32) Int) Unit!31309)

(assert (=> b!926182 (= lt!417095 (lemmaListMapApplyFromThenApplyFromZero!82 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!926183 () Bool)

(declare-fun res!624117 () Bool)

(assert (=> b!926183 (=> (not res!624117) (not e!519909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55506 (_ BitVec 32)) Bool)

(assert (=> b!926183 (= res!624117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!926184 () Bool)

(declare-fun Unit!31311 () Unit!31309)

(assert (=> b!926184 (= e!519912 Unit!31311)))

(declare-fun b!926185 () Bool)

(declare-fun e!519910 () Bool)

(declare-fun mapRes!31401 () Bool)

(assert (=> b!926185 (= e!519910 (and e!519915 mapRes!31401))))

(declare-fun condMapEmpty!31401 () Bool)

(declare-fun mapDefault!31401 () ValueCell!9400)


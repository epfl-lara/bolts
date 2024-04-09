; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79118 () Bool)

(assert start!79118)

(declare-fun b_free!17303 () Bool)

(declare-fun b_next!17303 () Bool)

(assert (=> start!79118 (= b_free!17303 (not b_next!17303))))

(declare-fun tp!60350 () Bool)

(declare-fun b_and!28361 () Bool)

(assert (=> start!79118 (= tp!60350 b_and!28361)))

(declare-fun mapNonEmpty!31473 () Bool)

(declare-fun mapRes!31473 () Bool)

(declare-fun tp!60351 () Bool)

(declare-fun e!520845 () Bool)

(assert (=> mapNonEmpty!31473 (= mapRes!31473 (and tp!60351 e!520845))))

(declare-datatypes ((V!31379 0))(
  ( (V!31380 (val!9956 Int)) )
))
(declare-datatypes ((ValueCell!9424 0))(
  ( (ValueCellFull!9424 (v!12474 V!31379)) (EmptyCell!9424) )
))
(declare-fun mapValue!31473 () ValueCell!9424)

(declare-fun mapKey!31473 () (_ BitVec 32))

(declare-datatypes ((array!55600 0))(
  ( (array!55601 (arr!26741 (Array (_ BitVec 32) ValueCell!9424)) (size!27201 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55600)

(declare-fun mapRest!31473 () (Array (_ BitVec 32) ValueCell!9424))

(assert (=> mapNonEmpty!31473 (= (arr!26741 _values!1231) (store mapRest!31473 mapKey!31473 mapValue!31473))))

(declare-fun b!927659 () Bool)

(declare-fun e!520847 () Bool)

(declare-fun e!520839 () Bool)

(assert (=> b!927659 (= e!520847 e!520839)))

(declare-fun res!624906 () Bool)

(assert (=> b!927659 (=> (not res!624906) (not e!520839))))

(declare-datatypes ((tuple2!13108 0))(
  ( (tuple2!13109 (_1!6564 (_ BitVec 64)) (_2!6564 V!31379)) )
))
(declare-datatypes ((List!18934 0))(
  ( (Nil!18931) (Cons!18930 (h!20076 tuple2!13108) (t!26975 List!18934)) )
))
(declare-datatypes ((ListLongMap!11819 0))(
  ( (ListLongMap!11820 (toList!5925 List!18934)) )
))
(declare-fun lt!418243 () ListLongMap!11819)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4944 (ListLongMap!11819 (_ BitVec 64)) Bool)

(assert (=> b!927659 (= res!624906 (contains!4944 lt!418243 k!1099))))

(declare-datatypes ((array!55602 0))(
  ( (array!55603 (arr!26742 (Array (_ BitVec 32) (_ BitVec 64))) (size!27202 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55602)

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31379)

(declare-fun minValue!1173 () V!31379)

(declare-fun getCurrentListMap!3138 (array!55602 array!55600 (_ BitVec 32) (_ BitVec 32) V!31379 V!31379 (_ BitVec 32) Int) ListLongMap!11819)

(assert (=> b!927659 (= lt!418243 (getCurrentListMap!3138 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!927660 () Bool)

(declare-fun e!520850 () Bool)

(declare-fun e!520849 () Bool)

(assert (=> b!927660 (= e!520850 e!520849)))

(declare-fun res!624905 () Bool)

(assert (=> b!927660 (=> (not res!624905) (not e!520849))))

(declare-fun lt!418257 () ListLongMap!11819)

(assert (=> b!927660 (= res!624905 (contains!4944 lt!418257 k!1099))))

(assert (=> b!927660 (= lt!418257 (getCurrentListMap!3138 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!927661 () Bool)

(declare-fun res!624902 () Bool)

(assert (=> b!927661 (=> (not res!624902) (not e!520839))))

(declare-fun v!791 () V!31379)

(declare-fun apply!721 (ListLongMap!11819 (_ BitVec 64)) V!31379)

(assert (=> b!927661 (= res!624902 (= (apply!721 lt!418243 k!1099) v!791))))

(declare-fun res!624904 () Bool)

(assert (=> start!79118 (=> (not res!624904) (not e!520850))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79118 (= res!624904 (validMask!0 mask!1881))))

(assert (=> start!79118 e!520850))

(assert (=> start!79118 true))

(declare-fun tp_is_empty!19811 () Bool)

(assert (=> start!79118 tp_is_empty!19811))

(declare-fun e!520844 () Bool)

(declare-fun array_inv!20812 (array!55600) Bool)

(assert (=> start!79118 (and (array_inv!20812 _values!1231) e!520844)))

(assert (=> start!79118 tp!60350))

(declare-fun array_inv!20813 (array!55602) Bool)

(assert (=> start!79118 (array_inv!20813 _keys!1487)))

(declare-fun b!927662 () Bool)

(declare-datatypes ((Unit!31385 0))(
  ( (Unit!31386) )
))
(declare-fun e!520851 () Unit!31385)

(declare-fun e!520842 () Unit!31385)

(assert (=> b!927662 (= e!520851 e!520842)))

(declare-fun lt!418253 () (_ BitVec 64))

(assert (=> b!927662 (= lt!418253 (select (arr!26742 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96842 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!927662 (= c!96842 (validKeyInArray!0 lt!418253))))

(declare-fun b!927663 () Bool)

(declare-fun Unit!31387 () Unit!31385)

(assert (=> b!927663 (= e!520851 Unit!31387)))

(declare-fun b!927664 () Bool)

(declare-fun Unit!31388 () Unit!31385)

(assert (=> b!927664 (= e!520842 Unit!31388)))

(declare-fun b!927665 () Bool)

(declare-fun res!624908 () Bool)

(assert (=> b!927665 (=> (not res!624908) (not e!520850))))

(declare-datatypes ((List!18935 0))(
  ( (Nil!18932) (Cons!18931 (h!20077 (_ BitVec 64)) (t!26976 List!18935)) )
))
(declare-fun arrayNoDuplicates!0 (array!55602 (_ BitVec 32) List!18935) Bool)

(assert (=> b!927665 (= res!624908 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18932))))

(declare-fun e!520841 () Bool)

(declare-fun b!927666 () Bool)

(declare-fun lt!418252 () ListLongMap!11819)

(assert (=> b!927666 (= e!520841 (= (apply!721 lt!418252 k!1099) v!791))))

(declare-fun b!927667 () Bool)

(assert (=> b!927667 (= e!520845 tp_is_empty!19811)))

(declare-fun b!927668 () Bool)

(declare-fun res!624907 () Bool)

(assert (=> b!927668 (=> (not res!624907) (not e!520850))))

(assert (=> b!927668 (= res!624907 (and (= (size!27201 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27202 _keys!1487) (size!27201 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!927669 () Bool)

(declare-fun e!520843 () Bool)

(assert (=> b!927669 (= e!520843 e!520847)))

(declare-fun res!624910 () Bool)

(assert (=> b!927669 (=> (not res!624910) (not e!520847))))

(assert (=> b!927669 (= res!624910 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27202 _keys!1487)))))

(declare-fun lt!418255 () Unit!31385)

(assert (=> b!927669 (= lt!418255 e!520851)))

(declare-fun c!96840 () Bool)

(assert (=> b!927669 (= c!96840 (validKeyInArray!0 k!1099))))

(declare-fun b!927670 () Bool)

(declare-fun lt!418251 () ListLongMap!11819)

(declare-fun lt!418247 () V!31379)

(assert (=> b!927670 (= (apply!721 lt!418251 k!1099) lt!418247)))

(declare-fun lt!418244 () Unit!31385)

(declare-fun lt!418249 () V!31379)

(declare-fun addApplyDifferent!401 (ListLongMap!11819 (_ BitVec 64) V!31379 (_ BitVec 64)) Unit!31385)

(assert (=> b!927670 (= lt!418244 (addApplyDifferent!401 lt!418257 lt!418253 lt!418249 k!1099))))

(assert (=> b!927670 (not (= lt!418253 k!1099))))

(declare-fun lt!418254 () Unit!31385)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55602 (_ BitVec 64) (_ BitVec 32) List!18935) Unit!31385)

(assert (=> b!927670 (= lt!418254 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18932))))

(declare-fun e!520848 () Bool)

(assert (=> b!927670 e!520848))

(declare-fun c!96841 () Bool)

(assert (=> b!927670 (= c!96841 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!418256 () Unit!31385)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!261 (array!55602 array!55600 (_ BitVec 32) (_ BitVec 32) V!31379 V!31379 (_ BitVec 64) (_ BitVec 32) Int) Unit!31385)

(assert (=> b!927670 (= lt!418256 (lemmaListMapContainsThenArrayContainsFrom!261 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(assert (=> b!927670 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18932)))

(declare-fun lt!418246 () Unit!31385)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55602 (_ BitVec 32) (_ BitVec 32)) Unit!31385)

(assert (=> b!927670 (= lt!418246 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!927670 (contains!4944 lt!418251 k!1099)))

(declare-fun lt!418248 () tuple2!13108)

(declare-fun +!2715 (ListLongMap!11819 tuple2!13108) ListLongMap!11819)

(assert (=> b!927670 (= lt!418251 (+!2715 lt!418257 lt!418248))))

(declare-fun lt!418242 () Unit!31385)

(declare-fun addStillContains!477 (ListLongMap!11819 (_ BitVec 64) V!31379 (_ BitVec 64)) Unit!31385)

(assert (=> b!927670 (= lt!418242 (addStillContains!477 lt!418257 lt!418253 lt!418249 k!1099))))

(assert (=> b!927670 (= (getCurrentListMap!3138 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2715 (getCurrentListMap!3138 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!418248))))

(assert (=> b!927670 (= lt!418248 (tuple2!13109 lt!418253 lt!418249))))

(declare-fun get!14094 (ValueCell!9424 V!31379) V!31379)

(declare-fun dynLambda!1554 (Int (_ BitVec 64)) V!31379)

(assert (=> b!927670 (= lt!418249 (get!14094 (select (arr!26741 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1554 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!418245 () Unit!31385)

(declare-fun lemmaListMapRecursiveValidKeyArray!150 (array!55602 array!55600 (_ BitVec 32) (_ BitVec 32) V!31379 V!31379 (_ BitVec 32) Int) Unit!31385)

(assert (=> b!927670 (= lt!418245 (lemmaListMapRecursiveValidKeyArray!150 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!927670 (= e!520842 lt!418244)))

(declare-fun b!927671 () Bool)

(assert (=> b!927671 (= e!520849 e!520843)))

(declare-fun res!624911 () Bool)

(assert (=> b!927671 (=> (not res!624911) (not e!520843))))

(assert (=> b!927671 (= res!624911 (and (= lt!418247 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(assert (=> b!927671 (= lt!418247 (apply!721 lt!418257 k!1099))))

(declare-fun b!927672 () Bool)

(assert (=> b!927672 (= e!520848 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!927673 () Bool)

(declare-fun e!520846 () Bool)

(assert (=> b!927673 (= e!520844 (and e!520846 mapRes!31473))))

(declare-fun condMapEmpty!31473 () Bool)

(declare-fun mapDefault!31473 () ValueCell!9424)


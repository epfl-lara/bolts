; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79030 () Bool)

(assert start!79030)

(declare-fun b_free!17215 () Bool)

(declare-fun b_next!17215 () Bool)

(assert (=> start!79030 (= b_free!17215 (not b_next!17215))))

(declare-fun tp!60086 () Bool)

(declare-fun b_and!28185 () Bool)

(assert (=> start!79030 (= tp!60086 b_and!28185)))

(declare-fun b!924931 () Bool)

(declare-fun e!519135 () Bool)

(assert (=> b!924931 (= e!519135 (not true))))

(declare-fun e!519123 () Bool)

(assert (=> b!924931 e!519123))

(declare-fun res!623452 () Bool)

(assert (=> b!924931 (=> (not res!623452) (not e!519123))))

(declare-datatypes ((V!31263 0))(
  ( (V!31264 (val!9912 Int)) )
))
(declare-datatypes ((tuple2!13026 0))(
  ( (tuple2!13027 (_1!6523 (_ BitVec 64)) (_2!6523 V!31263)) )
))
(declare-datatypes ((List!18862 0))(
  ( (Nil!18859) (Cons!18858 (h!20004 tuple2!13026) (t!26815 List!18862)) )
))
(declare-datatypes ((ListLongMap!11737 0))(
  ( (ListLongMap!11738 (toList!5884 List!18862)) )
))
(declare-fun lt!416132 () ListLongMap!11737)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!4908 (ListLongMap!11737 (_ BitVec 64)) Bool)

(assert (=> b!924931 (= res!623452 (contains!4908 lt!416132 k!1099))))

(declare-datatypes ((array!55428 0))(
  ( (array!55429 (arr!26655 (Array (_ BitVec 32) (_ BitVec 64))) (size!27115 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!55428)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9380 0))(
  ( (ValueCellFull!9380 (v!12430 V!31263)) (EmptyCell!9380) )
))
(declare-datatypes ((array!55430 0))(
  ( (array!55431 (arr!26656 (Array (_ BitVec 32) ValueCell!9380)) (size!27116 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!55430)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31263)

(declare-fun minValue!1173 () V!31263)

(declare-fun getCurrentListMap!3102 (array!55428 array!55430 (_ BitVec 32) (_ BitVec 32) V!31263 V!31263 (_ BitVec 32) Int) ListLongMap!11737)

(assert (=> b!924931 (= lt!416132 (getCurrentListMap!3102 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 #b00000000000000000000000000000000 defaultEntry!1235))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-datatypes ((Unit!31249 0))(
  ( (Unit!31250) )
))
(declare-fun lt!416137 () Unit!31249)

(declare-fun v!791 () V!31263)

(declare-fun lemmaListMapApplyFromThenApplyFromZero!70 (array!55428 array!55430 (_ BitVec 32) (_ BitVec 32) V!31263 V!31263 (_ BitVec 64) V!31263 (_ BitVec 32) Int) Unit!31249)

(assert (=> b!924931 (= lt!416137 (lemmaListMapApplyFromThenApplyFromZero!70 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 v!791 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924932 () Bool)

(declare-fun e!519127 () Bool)

(declare-fun e!519128 () Bool)

(assert (=> b!924932 (= e!519127 e!519128)))

(declare-fun res!623449 () Bool)

(assert (=> b!924932 (=> (not res!623449) (not e!519128))))

(declare-fun lt!416143 () ListLongMap!11737)

(assert (=> b!924932 (= res!623449 (contains!4908 lt!416143 k!1099))))

(assert (=> b!924932 (= lt!416143 (getCurrentListMap!3102 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!924933 () Bool)

(declare-fun e!519125 () Bool)

(assert (=> b!924933 (= e!519128 e!519125)))

(declare-fun res!623456 () Bool)

(assert (=> b!924933 (=> (not res!623456) (not e!519125))))

(declare-fun lt!416139 () V!31263)

(assert (=> b!924933 (= res!623456 (and (= lt!416139 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun apply!685 (ListLongMap!11737 (_ BitVec 64)) V!31263)

(assert (=> b!924933 (= lt!416139 (apply!685 lt!416143 k!1099))))

(declare-fun b!924934 () Bool)

(declare-fun e!519131 () Bool)

(assert (=> b!924934 (= e!519125 e!519131)))

(declare-fun res!623454 () Bool)

(assert (=> b!924934 (=> (not res!623454) (not e!519131))))

(assert (=> b!924934 (= res!623454 (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27115 _keys!1487)))))

(declare-fun lt!416142 () Unit!31249)

(declare-fun e!519126 () Unit!31249)

(assert (=> b!924934 (= lt!416142 e!519126)))

(declare-fun c!96446 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!924934 (= c!96446 (validKeyInArray!0 k!1099))))

(declare-fun mapNonEmpty!31341 () Bool)

(declare-fun mapRes!31341 () Bool)

(declare-fun tp!60087 () Bool)

(declare-fun e!519129 () Bool)

(assert (=> mapNonEmpty!31341 (= mapRes!31341 (and tp!60087 e!519129))))

(declare-fun mapValue!31341 () ValueCell!9380)

(declare-fun mapKey!31341 () (_ BitVec 32))

(declare-fun mapRest!31341 () (Array (_ BitVec 32) ValueCell!9380))

(assert (=> mapNonEmpty!31341 (= (arr!26656 _values!1231) (store mapRest!31341 mapKey!31341 mapValue!31341))))

(declare-fun b!924935 () Bool)

(declare-fun e!519130 () Bool)

(declare-fun tp_is_empty!19723 () Bool)

(assert (=> b!924935 (= e!519130 tp_is_empty!19723)))

(declare-fun b!924936 () Bool)

(declare-fun e!519133 () Unit!31249)

(assert (=> b!924936 (= e!519126 e!519133)))

(declare-fun lt!416135 () (_ BitVec 64))

(assert (=> b!924936 (= lt!416135 (select (arr!26655 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!96445 () Bool)

(assert (=> b!924936 (= c!96445 (validKeyInArray!0 lt!416135))))

(declare-fun b!924937 () Bool)

(declare-fun e!519124 () Bool)

(declare-fun arrayContainsKey!0 (array!55428 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!924937 (= e!519124 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun res!623455 () Bool)

(assert (=> start!79030 (=> (not res!623455) (not e!519127))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79030 (= res!623455 (validMask!0 mask!1881))))

(assert (=> start!79030 e!519127))

(assert (=> start!79030 true))

(assert (=> start!79030 tp_is_empty!19723))

(declare-fun e!519134 () Bool)

(declare-fun array_inv!20756 (array!55430) Bool)

(assert (=> start!79030 (and (array_inv!20756 _values!1231) e!519134)))

(assert (=> start!79030 tp!60086))

(declare-fun array_inv!20757 (array!55428) Bool)

(assert (=> start!79030 (array_inv!20757 _keys!1487)))

(declare-fun b!924938 () Bool)

(declare-fun res!623458 () Bool)

(assert (=> b!924938 (=> (not res!623458) (not e!519127))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!55428 (_ BitVec 32)) Bool)

(assert (=> b!924938 (= res!623458 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!924939 () Bool)

(assert (=> b!924939 (= e!519131 e!519135)))

(declare-fun res!623451 () Bool)

(assert (=> b!924939 (=> (not res!623451) (not e!519135))))

(declare-fun lt!416138 () ListLongMap!11737)

(assert (=> b!924939 (= res!623451 (contains!4908 lt!416138 k!1099))))

(assert (=> b!924939 (= lt!416138 (getCurrentListMap!3102 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!924940 () Bool)

(declare-fun lt!416141 () ListLongMap!11737)

(assert (=> b!924940 (= (apply!685 lt!416141 k!1099) lt!416139)))

(declare-fun lt!416131 () Unit!31249)

(declare-fun lt!416136 () V!31263)

(declare-fun addApplyDifferent!374 (ListLongMap!11737 (_ BitVec 64) V!31263 (_ BitVec 64)) Unit!31249)

(assert (=> b!924940 (= lt!416131 (addApplyDifferent!374 lt!416143 lt!416135 lt!416136 k!1099))))

(assert (=> b!924940 (not (= lt!416135 k!1099))))

(declare-fun lt!416134 () Unit!31249)

(declare-datatypes ((List!18863 0))(
  ( (Nil!18860) (Cons!18859 (h!20005 (_ BitVec 64)) (t!26816 List!18863)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!55428 (_ BitVec 64) (_ BitVec 32) List!18863) Unit!31249)

(assert (=> b!924940 (= lt!416134 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18860))))

(assert (=> b!924940 e!519124))

(declare-fun c!96444 () Bool)

(assert (=> b!924940 (= c!96444 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!416133 () Unit!31249)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!234 (array!55428 array!55430 (_ BitVec 32) (_ BitVec 32) V!31263 V!31263 (_ BitVec 64) (_ BitVec 32) Int) Unit!31249)

(assert (=> b!924940 (= lt!416133 (lemmaListMapContainsThenArrayContainsFrom!234 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!55428 (_ BitVec 32) List!18863) Bool)

(assert (=> b!924940 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!18860)))

(declare-fun lt!416140 () Unit!31249)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!55428 (_ BitVec 32) (_ BitVec 32)) Unit!31249)

(assert (=> b!924940 (= lt!416140 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(assert (=> b!924940 (contains!4908 lt!416141 k!1099)))

(declare-fun lt!416130 () tuple2!13026)

(declare-fun +!2688 (ListLongMap!11737 tuple2!13026) ListLongMap!11737)

(assert (=> b!924940 (= lt!416141 (+!2688 lt!416143 lt!416130))))

(declare-fun lt!416144 () Unit!31249)

(declare-fun addStillContains!450 (ListLongMap!11737 (_ BitVec 64) V!31263 (_ BitVec 64)) Unit!31249)

(assert (=> b!924940 (= lt!416144 (addStillContains!450 lt!416143 lt!416135 lt!416136 k!1099))))

(assert (=> b!924940 (= (getCurrentListMap!3102 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2688 (getCurrentListMap!3102 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!416130))))

(assert (=> b!924940 (= lt!416130 (tuple2!13027 lt!416135 lt!416136))))

(declare-fun get!14039 (ValueCell!9380 V!31263) V!31263)

(declare-fun dynLambda!1527 (Int (_ BitVec 64)) V!31263)

(assert (=> b!924940 (= lt!416136 (get!14039 (select (arr!26656 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1527 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!416145 () Unit!31249)

(declare-fun lemmaListMapRecursiveValidKeyArray!123 (array!55428 array!55430 (_ BitVec 32) (_ BitVec 32) V!31263 V!31263 (_ BitVec 32) Int) Unit!31249)

(assert (=> b!924940 (= lt!416145 (lemmaListMapRecursiveValidKeyArray!123 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!924940 (= e!519133 lt!416131)))

(declare-fun b!924941 () Bool)

(declare-fun res!623459 () Bool)

(assert (=> b!924941 (=> (not res!623459) (not e!519127))))

(assert (=> b!924941 (= res!623459 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27115 _keys!1487))))))

(declare-fun b!924942 () Bool)

(declare-fun res!623457 () Bool)

(assert (=> b!924942 (=> (not res!623457) (not e!519127))))

(assert (=> b!924942 (= res!623457 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!18860))))

(declare-fun b!924943 () Bool)

(declare-fun res!623450 () Bool)

(assert (=> b!924943 (=> (not res!623450) (not e!519127))))

(assert (=> b!924943 (= res!623450 (and (= (size!27116 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27115 _keys!1487) (size!27116 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!924944 () Bool)

(declare-fun Unit!31251 () Unit!31249)

(assert (=> b!924944 (= e!519133 Unit!31251)))

(declare-fun b!924945 () Bool)

(assert (=> b!924945 (= e!519129 tp_is_empty!19723)))

(declare-fun mapIsEmpty!31341 () Bool)

(assert (=> mapIsEmpty!31341 mapRes!31341))

(declare-fun b!924946 () Bool)

(assert (=> b!924946 (= e!519134 (and e!519130 mapRes!31341))))

(declare-fun condMapEmpty!31341 () Bool)

(declare-fun mapDefault!31341 () ValueCell!9380)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79716 () Bool)

(assert start!79716)

(declare-fun b_free!17737 () Bool)

(declare-fun b_next!17737 () Bool)

(assert (=> start!79716 (= b_free!17737 (not b_next!17737))))

(declare-fun tp!61668 () Bool)

(declare-fun b_and!29083 () Bool)

(assert (=> start!79716 (= tp!61668 b_and!29083)))

(declare-fun b!937238 () Bool)

(declare-datatypes ((Unit!31653 0))(
  ( (Unit!31654) )
))
(declare-fun e!526332 () Unit!31653)

(declare-fun e!526331 () Unit!31653)

(assert (=> b!937238 (= e!526332 e!526331)))

(declare-fun lt!422910 () (_ BitVec 64))

(declare-datatypes ((array!56454 0))(
  ( (array!56455 (arr!27163 (Array (_ BitVec 32) (_ BitVec 64))) (size!27623 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56454)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!937238 (= lt!422910 (select (arr!27163 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun c!97486 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!937238 (= c!97486 (validKeyInArray!0 lt!422910))))

(declare-fun b!937239 () Bool)

(declare-fun e!526330 () Bool)

(declare-fun tp_is_empty!20245 () Bool)

(assert (=> b!937239 (= e!526330 tp_is_empty!20245)))

(declare-fun b!937240 () Bool)

(declare-fun e!526334 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(assert (=> b!937240 (= e!526334 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!937241 () Bool)

(declare-fun res!630945 () Bool)

(declare-fun e!526326 () Bool)

(assert (=> b!937241 (=> (not res!630945) (not e!526326))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56454 (_ BitVec 32)) Bool)

(assert (=> b!937241 (= res!630945 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!937242 () Bool)

(declare-datatypes ((V!31959 0))(
  ( (V!31960 (val!10173 Int)) )
))
(declare-datatypes ((tuple2!13470 0))(
  ( (tuple2!13471 (_1!6745 (_ BitVec 64)) (_2!6745 V!31959)) )
))
(declare-datatypes ((List!19278 0))(
  ( (Nil!19275) (Cons!19274 (h!20420 tuple2!13470) (t!27567 List!19278)) )
))
(declare-datatypes ((ListLongMap!12181 0))(
  ( (ListLongMap!12182 (toList!6106 List!19278)) )
))
(declare-fun lt!422914 () ListLongMap!12181)

(declare-fun lt!422913 () V!31959)

(declare-fun apply!884 (ListLongMap!12181 (_ BitVec 64)) V!31959)

(assert (=> b!937242 (= (apply!884 lt!422914 k!1099) lt!422913)))

(declare-fun lt!422917 () Unit!31653)

(declare-fun lt!422915 () ListLongMap!12181)

(declare-fun lt!422909 () V!31959)

(declare-fun addApplyDifferent!432 (ListLongMap!12181 (_ BitVec 64) V!31959 (_ BitVec 64)) Unit!31653)

(assert (=> b!937242 (= lt!422917 (addApplyDifferent!432 lt!422915 lt!422910 lt!422909 k!1099))))

(assert (=> b!937242 (not (= lt!422910 k!1099))))

(declare-fun lt!422911 () Unit!31653)

(declare-datatypes ((List!19279 0))(
  ( (Nil!19276) (Cons!19275 (h!20421 (_ BitVec 64)) (t!27568 List!19279)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56454 (_ BitVec 64) (_ BitVec 32) List!19279) Unit!31653)

(assert (=> b!937242 (= lt!422911 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19276))))

(assert (=> b!937242 e!526334))

(declare-fun c!97487 () Bool)

(assert (=> b!937242 (= c!97487 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!422919 () Unit!31653)

(declare-datatypes ((ValueCell!9641 0))(
  ( (ValueCellFull!9641 (v!12698 V!31959)) (EmptyCell!9641) )
))
(declare-datatypes ((array!56456 0))(
  ( (array!56457 (arr!27164 (Array (_ BitVec 32) ValueCell!9641)) (size!27624 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56456)

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31959)

(declare-fun minValue!1173 () V!31959)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!315 (array!56454 array!56456 (_ BitVec 32) (_ BitVec 32) V!31959 V!31959 (_ BitVec 64) (_ BitVec 32) Int) Unit!31653)

(assert (=> b!937242 (= lt!422919 (lemmaListMapContainsThenArrayContainsFrom!315 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56454 (_ BitVec 32) List!19279) Bool)

(assert (=> b!937242 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19276)))

(declare-fun lt!422908 () Unit!31653)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56454 (_ BitVec 32) (_ BitVec 32)) Unit!31653)

(assert (=> b!937242 (= lt!422908 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5116 (ListLongMap!12181 (_ BitVec 64)) Bool)

(assert (=> b!937242 (contains!5116 lt!422914 k!1099)))

(declare-fun lt!422920 () tuple2!13470)

(declare-fun +!2802 (ListLongMap!12181 tuple2!13470) ListLongMap!12181)

(assert (=> b!937242 (= lt!422914 (+!2802 lt!422915 lt!422920))))

(declare-fun lt!422918 () Unit!31653)

(declare-fun addStillContains!558 (ListLongMap!12181 (_ BitVec 64) V!31959 (_ BitVec 64)) Unit!31653)

(assert (=> b!937242 (= lt!422918 (addStillContains!558 lt!422915 lt!422910 lt!422909 k!1099))))

(declare-fun getCurrentListMap!3295 (array!56454 array!56456 (_ BitVec 32) (_ BitVec 32) V!31959 V!31959 (_ BitVec 32) Int) ListLongMap!12181)

(assert (=> b!937242 (= (getCurrentListMap!3295 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2802 (getCurrentListMap!3295 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!422920))))

(assert (=> b!937242 (= lt!422920 (tuple2!13471 lt!422910 lt!422909))))

(declare-fun get!14342 (ValueCell!9641 V!31959) V!31959)

(declare-fun dynLambda!1641 (Int (_ BitVec 64)) V!31959)

(assert (=> b!937242 (= lt!422909 (get!14342 (select (arr!27164 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1641 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!422912 () Unit!31653)

(declare-fun lemmaListMapRecursiveValidKeyArray!237 (array!56454 array!56456 (_ BitVec 32) (_ BitVec 32) V!31959 V!31959 (_ BitVec 32) Int) Unit!31653)

(assert (=> b!937242 (= lt!422912 (lemmaListMapRecursiveValidKeyArray!237 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(assert (=> b!937242 (= e!526331 lt!422917)))

(declare-fun b!937243 () Bool)

(declare-fun e!526325 () Bool)

(assert (=> b!937243 (= e!526325 tp_is_empty!20245)))

(declare-fun mapNonEmpty!32139 () Bool)

(declare-fun mapRes!32139 () Bool)

(declare-fun tp!61667 () Bool)

(assert (=> mapNonEmpty!32139 (= mapRes!32139 (and tp!61667 e!526325))))

(declare-fun mapKey!32139 () (_ BitVec 32))

(declare-fun mapValue!32139 () ValueCell!9641)

(declare-fun mapRest!32139 () (Array (_ BitVec 32) ValueCell!9641))

(assert (=> mapNonEmpty!32139 (= (arr!27164 _values!1231) (store mapRest!32139 mapKey!32139 mapValue!32139))))

(declare-fun b!937244 () Bool)

(declare-fun res!630948 () Bool)

(assert (=> b!937244 (=> (not res!630948) (not e!526326))))

(assert (=> b!937244 (= res!630948 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27623 _keys!1487))))))

(declare-fun mapIsEmpty!32139 () Bool)

(assert (=> mapIsEmpty!32139 mapRes!32139))

(declare-fun b!937246 () Bool)

(declare-fun e!526328 () Bool)

(assert (=> b!937246 (= e!526328 (and e!526330 mapRes!32139))))

(declare-fun condMapEmpty!32139 () Bool)

(declare-fun mapDefault!32139 () ValueCell!9641)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79464 () Bool)

(assert start!79464)

(declare-fun b_free!17623 () Bool)

(declare-fun b_next!17623 () Bool)

(assert (=> start!79464 (= b_free!17623 (not b_next!17623))))

(declare-fun tp!61314 () Bool)

(declare-fun b_and!28823 () Bool)

(assert (=> start!79464 (= tp!61314 b_and!28823)))

(declare-fun b!933611 () Bool)

(declare-fun e!524256 () Bool)

(declare-fun e!524258 () Bool)

(assert (=> b!933611 (= e!524256 e!524258)))

(declare-fun res!628965 () Bool)

(assert (=> b!933611 (=> (not res!628965) (not e!524258))))

(declare-fun lt!420511 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!933611 (= res!628965 (validKeyInArray!0 lt!420511))))

(declare-datatypes ((array!56220 0))(
  ( (array!56221 (arr!27050 (Array (_ BitVec 32) (_ BitVec 64))) (size!27510 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56220)

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!933611 (= lt!420511 (select (arr!27050 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun mapIsEmpty!31956 () Bool)

(declare-fun mapRes!31956 () Bool)

(assert (=> mapIsEmpty!31956 mapRes!31956))

(declare-fun b!933612 () Bool)

(declare-fun res!628959 () Bool)

(declare-fun e!524257 () Bool)

(assert (=> b!933612 (=> (not res!628959) (not e!524257))))

(assert (=> b!933612 (= res!628959 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27510 _keys!1487))))))

(declare-fun e!524259 () Bool)

(declare-fun b!933613 () Bool)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!56220 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!933613 (= e!524259 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!933614 () Bool)

(declare-fun res!628958 () Bool)

(assert (=> b!933614 (=> (not res!628958) (not e!524256))))

(declare-datatypes ((V!31807 0))(
  ( (V!31808 (val!10116 Int)) )
))
(declare-fun v!791 () V!31807)

(declare-datatypes ((tuple2!13370 0))(
  ( (tuple2!13371 (_1!6695 (_ BitVec 64)) (_2!6695 V!31807)) )
))
(declare-datatypes ((List!19177 0))(
  ( (Nil!19174) (Cons!19173 (h!20319 tuple2!13370) (t!27352 List!19177)) )
))
(declare-datatypes ((ListLongMap!12081 0))(
  ( (ListLongMap!12082 (toList!6056 List!19177)) )
))
(declare-fun lt!420512 () ListLongMap!12081)

(declare-fun apply!838 (ListLongMap!12081 (_ BitVec 64)) V!31807)

(assert (=> b!933614 (= res!628958 (= (apply!838 lt!420512 k!1099) v!791))))

(declare-fun b!933615 () Bool)

(declare-fun res!628966 () Bool)

(assert (=> b!933615 (=> (not res!628966) (not e!524257))))

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9584 0))(
  ( (ValueCellFull!9584 (v!12635 V!31807)) (EmptyCell!9584) )
))
(declare-datatypes ((array!56222 0))(
  ( (array!56223 (arr!27051 (Array (_ BitVec 32) ValueCell!9584)) (size!27511 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56222)

(assert (=> b!933615 (= res!628966 (and (= (size!27511 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27510 _keys!1487) (size!27511 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!933616 () Bool)

(declare-fun res!628961 () Bool)

(assert (=> b!933616 (=> (not res!628961) (not e!524257))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56220 (_ BitVec 32)) Bool)

(assert (=> b!933616 (= res!628961 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31956 () Bool)

(declare-fun tp!61313 () Bool)

(declare-fun e!524255 () Bool)

(assert (=> mapNonEmpty!31956 (= mapRes!31956 (and tp!61313 e!524255))))

(declare-fun mapValue!31956 () ValueCell!9584)

(declare-fun mapRest!31956 () (Array (_ BitVec 32) ValueCell!9584))

(declare-fun mapKey!31956 () (_ BitVec 32))

(assert (=> mapNonEmpty!31956 (= (arr!27051 _values!1231) (store mapRest!31956 mapKey!31956 mapValue!31956))))

(declare-fun b!933617 () Bool)

(assert (=> b!933617 (= e!524257 e!524256)))

(declare-fun res!628963 () Bool)

(assert (=> b!933617 (=> (not res!628963) (not e!524256))))

(declare-fun contains!5055 (ListLongMap!12081 (_ BitVec 64)) Bool)

(assert (=> b!933617 (= res!628963 (contains!5055 lt!420512 k!1099))))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31807)

(declare-fun minValue!1173 () V!31807)

(declare-fun getCurrentListMap!3248 (array!56220 array!56222 (_ BitVec 32) (_ BitVec 32) V!31807 V!31807 (_ BitVec 32) Int) ListLongMap!12081)

(assert (=> b!933617 (= lt!420512 (getCurrentListMap!3248 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!933618 () Bool)

(assert (=> b!933618 (= e!524258 (not (bvslt (size!27510 _keys!1487) #b01111111111111111111111111111111)))))

(assert (=> b!933618 e!524259))

(declare-fun c!96996 () Bool)

(assert (=> b!933618 (= c!96996 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31500 0))(
  ( (Unit!31501) )
))
(declare-fun lt!420517 () Unit!31500)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!269 (array!56220 array!56222 (_ BitVec 32) (_ BitVec 32) V!31807 V!31807 (_ BitVec 64) (_ BitVec 32) Int) Unit!31500)

(assert (=> b!933618 (= lt!420517 (lemmaListMapContainsThenArrayContainsFrom!269 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!19178 0))(
  ( (Nil!19175) (Cons!19174 (h!20320 (_ BitVec 64)) (t!27353 List!19178)) )
))
(declare-fun arrayNoDuplicates!0 (array!56220 (_ BitVec 32) List!19178) Bool)

(assert (=> b!933618 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19175)))

(declare-fun lt!420515 () Unit!31500)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56220 (_ BitVec 32) (_ BitVec 32)) Unit!31500)

(assert (=> b!933618 (= lt!420515 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420516 () tuple2!13370)

(declare-fun +!2756 (ListLongMap!12081 tuple2!13370) ListLongMap!12081)

(assert (=> b!933618 (contains!5055 (+!2756 lt!420512 lt!420516) k!1099)))

(declare-fun lt!420514 () Unit!31500)

(declare-fun lt!420513 () V!31807)

(declare-fun addStillContains!512 (ListLongMap!12081 (_ BitVec 64) V!31807 (_ BitVec 64)) Unit!31500)

(assert (=> b!933618 (= lt!420514 (addStillContains!512 lt!420512 lt!420511 lt!420513 k!1099))))

(assert (=> b!933618 (= (getCurrentListMap!3248 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2756 (getCurrentListMap!3248 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420516))))

(assert (=> b!933618 (= lt!420516 (tuple2!13371 lt!420511 lt!420513))))

(declare-fun get!14246 (ValueCell!9584 V!31807) V!31807)

(declare-fun dynLambda!1595 (Int (_ BitVec 64)) V!31807)

(assert (=> b!933618 (= lt!420513 (get!14246 (select (arr!27051 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1595 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420510 () Unit!31500)

(declare-fun lemmaListMapRecursiveValidKeyArray!191 (array!56220 array!56222 (_ BitVec 32) (_ BitVec 32) V!31807 V!31807 (_ BitVec 32) Int) Unit!31500)

(assert (=> b!933618 (= lt!420510 (lemmaListMapRecursiveValidKeyArray!191 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!933620 () Bool)

(declare-fun res!628960 () Bool)

(assert (=> b!933620 (=> (not res!628960) (not e!524256))))

(assert (=> b!933620 (= res!628960 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!933621 () Bool)

(declare-fun res!628962 () Bool)

(assert (=> b!933621 (=> (not res!628962) (not e!524256))))

(assert (=> b!933621 (= res!628962 (validKeyInArray!0 k!1099))))

(declare-fun b!933622 () Bool)

(declare-fun res!628964 () Bool)

(assert (=> b!933622 (=> (not res!628964) (not e!524257))))

(assert (=> b!933622 (= res!628964 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19175))))

(declare-fun b!933623 () Bool)

(declare-fun e!524260 () Bool)

(declare-fun e!524254 () Bool)

(assert (=> b!933623 (= e!524260 (and e!524254 mapRes!31956))))

(declare-fun condMapEmpty!31956 () Bool)

(declare-fun mapDefault!31956 () ValueCell!9584)


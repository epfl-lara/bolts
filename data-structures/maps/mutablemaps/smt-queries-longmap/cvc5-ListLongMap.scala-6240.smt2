; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79892 () Bool)

(assert start!79892)

(declare-fun b_free!17761 () Bool)

(declare-fun b_next!17761 () Bool)

(assert (=> start!79892 (= b_free!17761 (not b_next!17761))))

(declare-fun tp!61748 () Bool)

(declare-fun b_and!29179 () Bool)

(assert (=> start!79892 (= tp!61748 b_and!29179)))

(declare-fun b!938939 () Bool)

(declare-fun res!631717 () Bool)

(declare-fun e!527394 () Bool)

(assert (=> b!938939 (=> (not res!631717) (not e!527394))))

(declare-datatypes ((array!56504 0))(
  ( (array!56505 (arr!27186 (Array (_ BitVec 32) (_ BitVec 64))) (size!27646 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56504)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56504 (_ BitVec 32)) Bool)

(assert (=> b!938939 (= res!631717 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!938940 () Bool)

(declare-fun res!631712 () Bool)

(declare-fun e!527404 () Bool)

(assert (=> b!938940 (=> (not res!631712) (not e!527404))))

(declare-fun k!1099 () (_ BitVec 64))

(declare-datatypes ((V!31991 0))(
  ( (V!31992 (val!10185 Int)) )
))
(declare-fun v!791 () V!31991)

(declare-datatypes ((tuple2!13490 0))(
  ( (tuple2!13491 (_1!6755 (_ BitVec 64)) (_2!6755 V!31991)) )
))
(declare-datatypes ((List!19297 0))(
  ( (Nil!19294) (Cons!19293 (h!20439 tuple2!13490) (t!27610 List!19297)) )
))
(declare-datatypes ((ListLongMap!12201 0))(
  ( (ListLongMap!12202 (toList!6116 List!19297)) )
))
(declare-fun lt!424228 () ListLongMap!12201)

(declare-fun apply!894 (ListLongMap!12201 (_ BitVec 64)) V!31991)

(assert (=> b!938940 (= res!631712 (= (apply!894 lt!424228 k!1099) v!791))))

(declare-fun b!938941 () Bool)

(declare-fun res!631711 () Bool)

(assert (=> b!938941 (=> (not res!631711) (not e!527394))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!938941 (= res!631711 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27646 _keys!1487))))))

(declare-fun b!938942 () Bool)

(assert (=> b!938942 (= e!527404 (bvsge (bvsub from!1844 #b00000000000000000000000000000001) from!1844))))

(declare-fun b!938944 () Bool)

(declare-fun e!527399 () Bool)

(declare-fun e!527397 () Bool)

(assert (=> b!938944 (= e!527399 e!527397)))

(declare-fun res!631709 () Bool)

(assert (=> b!938944 (=> (not res!631709) (not e!527397))))

(declare-fun lt!424224 () V!31991)

(assert (=> b!938944 (= res!631709 (and (= lt!424224 v!791) (bvsgt from!1844 #b00000000000000000000000000000000)))))

(declare-fun lt!424232 () ListLongMap!12201)

(assert (=> b!938944 (= lt!424224 (apply!894 lt!424232 k!1099))))

(declare-fun b!938945 () Bool)

(declare-fun lt!424235 () ListLongMap!12201)

(assert (=> b!938945 (= (apply!894 lt!424235 k!1099) lt!424224)))

(declare-fun lt!424233 () V!31991)

(declare-fun lt!424236 () (_ BitVec 64))

(declare-datatypes ((Unit!31734 0))(
  ( (Unit!31735) )
))
(declare-fun lt!424230 () Unit!31734)

(declare-fun addApplyDifferent!440 (ListLongMap!12201 (_ BitVec 64) V!31991 (_ BitVec 64)) Unit!31734)

(assert (=> b!938945 (= lt!424230 (addApplyDifferent!440 lt!424232 lt!424236 lt!424233 k!1099))))

(assert (=> b!938945 (not (= lt!424236 k!1099))))

(declare-fun lt!424231 () Unit!31734)

(declare-datatypes ((List!19298 0))(
  ( (Nil!19295) (Cons!19294 (h!20440 (_ BitVec 64)) (t!27611 List!19298)) )
))
(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!56504 (_ BitVec 64) (_ BitVec 32) List!19298) Unit!31734)

(assert (=> b!938945 (= lt!424231 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1487 k!1099 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19295))))

(declare-fun e!527405 () Bool)

(assert (=> b!938945 e!527405))

(declare-fun c!97873 () Bool)

(assert (=> b!938945 (= c!97873 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9653 0))(
  ( (ValueCellFull!9653 (v!12716 V!31991)) (EmptyCell!9653) )
))
(declare-datatypes ((array!56506 0))(
  ( (array!56507 (arr!27187 (Array (_ BitVec 32) ValueCell!9653)) (size!27647 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56506)

(declare-fun lt!424223 () Unit!31734)

(declare-fun zeroValue!1173 () V!31991)

(declare-fun minValue!1173 () V!31991)

(declare-fun defaultEntry!1235 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!323 (array!56504 array!56506 (_ BitVec 32) (_ BitVec 32) V!31991 V!31991 (_ BitVec 64) (_ BitVec 32) Int) Unit!31734)

(assert (=> b!938945 (= lt!424223 (lemmaListMapContainsThenArrayContainsFrom!323 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-fun arrayNoDuplicates!0 (array!56504 (_ BitVec 32) List!19298) Bool)

(assert (=> b!938945 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19295)))

(declare-fun lt!424227 () Unit!31734)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56504 (_ BitVec 32) (_ BitVec 32)) Unit!31734)

(assert (=> b!938945 (= lt!424227 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun contains!5129 (ListLongMap!12201 (_ BitVec 64)) Bool)

(assert (=> b!938945 (contains!5129 lt!424235 k!1099)))

(declare-fun lt!424225 () tuple2!13490)

(declare-fun +!2810 (ListLongMap!12201 tuple2!13490) ListLongMap!12201)

(assert (=> b!938945 (= lt!424235 (+!2810 lt!424232 lt!424225))))

(declare-fun lt!424234 () Unit!31734)

(declare-fun addStillContains!566 (ListLongMap!12201 (_ BitVec 64) V!31991 (_ BitVec 64)) Unit!31734)

(assert (=> b!938945 (= lt!424234 (addStillContains!566 lt!424232 lt!424236 lt!424233 k!1099))))

(declare-fun getCurrentListMap!3304 (array!56504 array!56506 (_ BitVec 32) (_ BitVec 32) V!31991 V!31991 (_ BitVec 32) Int) ListLongMap!12201)

(assert (=> b!938945 (= (getCurrentListMap!3304 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2810 (getCurrentListMap!3304 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!424225))))

(assert (=> b!938945 (= lt!424225 (tuple2!13491 lt!424236 lt!424233))))

(declare-fun get!14364 (ValueCell!9653 V!31991) V!31991)

(declare-fun dynLambda!1649 (Int (_ BitVec 64)) V!31991)

(assert (=> b!938945 (= lt!424233 (get!14364 (select (arr!27187 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1649 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!424229 () Unit!31734)

(declare-fun lemmaListMapRecursiveValidKeyArray!245 (array!56504 array!56506 (_ BitVec 32) (_ BitVec 32) V!31991 V!31991 (_ BitVec 32) Int) Unit!31734)

(assert (=> b!938945 (= lt!424229 (lemmaListMapRecursiveValidKeyArray!245 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun e!527400 () Unit!31734)

(assert (=> b!938945 (= e!527400 lt!424230)))

(declare-fun b!938946 () Bool)

(declare-fun e!527398 () Unit!31734)

(declare-fun Unit!31736 () Unit!31734)

(assert (=> b!938946 (= e!527398 Unit!31736)))

(declare-fun b!938947 () Bool)

(declare-fun e!527403 () Bool)

(declare-fun e!527395 () Bool)

(declare-fun mapRes!32183 () Bool)

(assert (=> b!938947 (= e!527403 (and e!527395 mapRes!32183))))

(declare-fun condMapEmpty!32183 () Bool)

(declare-fun mapDefault!32183 () ValueCell!9653)


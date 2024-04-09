; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79518 () Bool)

(assert start!79518)

(declare-fun b_free!17645 () Bool)

(declare-fun b_next!17645 () Bool)

(assert (=> start!79518 (= b_free!17645 (not b_next!17645))))

(declare-fun tp!61382 () Bool)

(declare-fun b_and!28875 () Bool)

(assert (=> start!79518 (= tp!61382 b_and!28875)))

(declare-fun mapIsEmpty!31992 () Bool)

(declare-fun mapRes!31992 () Bool)

(assert (=> mapIsEmpty!31992 mapRes!31992))

(declare-fun b!934315 () Bool)

(declare-fun res!629374 () Bool)

(declare-fun e!524643 () Bool)

(assert (=> b!934315 (=> (not res!629374) (not e!524643))))

(declare-fun from!1844 () (_ BitVec 32))

(assert (=> b!934315 (= res!629374 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!934316 () Bool)

(declare-fun e!524648 () Bool)

(declare-fun tp_is_empty!20153 () Bool)

(assert (=> b!934316 (= e!524648 tp_is_empty!20153)))

(declare-fun b!934317 () Bool)

(declare-fun e!524645 () Bool)

(assert (=> b!934317 (= e!524645 e!524643)))

(declare-fun res!629380 () Bool)

(assert (=> b!934317 (=> (not res!629380) (not e!524643))))

(declare-datatypes ((V!31835 0))(
  ( (V!31836 (val!10127 Int)) )
))
(declare-datatypes ((tuple2!13390 0))(
  ( (tuple2!13391 (_1!6705 (_ BitVec 64)) (_2!6705 V!31835)) )
))
(declare-datatypes ((List!19197 0))(
  ( (Nil!19194) (Cons!19193 (h!20339 tuple2!13390) (t!27394 List!19197)) )
))
(declare-datatypes ((ListLongMap!12101 0))(
  ( (ListLongMap!12102 (toList!6066 List!19197)) )
))
(declare-fun lt!420937 () ListLongMap!12101)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5067 (ListLongMap!12101 (_ BitVec 64)) Bool)

(assert (=> b!934317 (= res!629380 (contains!5067 lt!420937 k!1099))))

(declare-datatypes ((array!56264 0))(
  ( (array!56265 (arr!27071 (Array (_ BitVec 32) (_ BitVec 64))) (size!27531 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56264)

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-datatypes ((ValueCell!9595 0))(
  ( (ValueCellFull!9595 (v!12647 V!31835)) (EmptyCell!9595) )
))
(declare-datatypes ((array!56266 0))(
  ( (array!56267 (arr!27072 (Array (_ BitVec 32) ValueCell!9595)) (size!27532 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56266)

(declare-fun defaultEntry!1235 () Int)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun zeroValue!1173 () V!31835)

(declare-fun minValue!1173 () V!31835)

(declare-fun getCurrentListMap!3258 (array!56264 array!56266 (_ BitVec 32) (_ BitVec 32) V!31835 V!31835 (_ BitVec 32) Int) ListLongMap!12101)

(assert (=> b!934317 (= lt!420937 (getCurrentListMap!3258 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!934318 () Bool)

(declare-fun e!524644 () Bool)

(assert (=> b!934318 (= e!524644 (not true))))

(declare-fun e!524642 () Bool)

(assert (=> b!934318 e!524642))

(declare-fun c!97076 () Bool)

(assert (=> b!934318 (= c!97076 (and (not (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!1099 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((Unit!31523 0))(
  ( (Unit!31524) )
))
(declare-fun lt!420943 () Unit!31523)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!278 (array!56264 array!56266 (_ BitVec 32) (_ BitVec 32) V!31835 V!31835 (_ BitVec 64) (_ BitVec 32) Int) Unit!31523)

(assert (=> b!934318 (= lt!420943 (lemmaListMapContainsThenArrayContainsFrom!278 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 k!1099 from!1844 defaultEntry!1235))))

(declare-datatypes ((List!19198 0))(
  ( (Nil!19195) (Cons!19194 (h!20340 (_ BitVec 64)) (t!27395 List!19198)) )
))
(declare-fun arrayNoDuplicates!0 (array!56264 (_ BitVec 32) List!19198) Bool)

(assert (=> b!934318 (arrayNoDuplicates!0 _keys!1487 (bvsub from!1844 #b00000000000000000000000000000001) Nil!19195)))

(declare-fun lt!420940 () Unit!31523)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!56264 (_ BitVec 32) (_ BitVec 32)) Unit!31523)

(assert (=> b!934318 (= lt!420940 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1487 #b00000000000000000000000000000000 (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun lt!420942 () tuple2!13390)

(declare-fun +!2765 (ListLongMap!12101 tuple2!13390) ListLongMap!12101)

(assert (=> b!934318 (contains!5067 (+!2765 lt!420937 lt!420942) k!1099)))

(declare-fun lt!420939 () V!31835)

(declare-fun lt!420944 () Unit!31523)

(declare-fun lt!420941 () (_ BitVec 64))

(declare-fun addStillContains!521 (ListLongMap!12101 (_ BitVec 64) V!31835 (_ BitVec 64)) Unit!31523)

(assert (=> b!934318 (= lt!420944 (addStillContains!521 lt!420937 lt!420941 lt!420939 k!1099))))

(assert (=> b!934318 (= (getCurrentListMap!3258 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2765 (getCurrentListMap!3258 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) lt!420942))))

(assert (=> b!934318 (= lt!420942 (tuple2!13391 lt!420941 lt!420939))))

(declare-fun get!14264 (ValueCell!9595 V!31835) V!31835)

(declare-fun dynLambda!1604 (Int (_ BitVec 64)) V!31835)

(assert (=> b!934318 (= lt!420939 (get!14264 (select (arr!27072 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1604 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun lt!420938 () Unit!31523)

(declare-fun lemmaListMapRecursiveValidKeyArray!200 (array!56264 array!56266 (_ BitVec 32) (_ BitVec 32) V!31835 V!31835 (_ BitVec 32) Int) Unit!31523)

(assert (=> b!934318 (= lt!420938 (lemmaListMapRecursiveValidKeyArray!200 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!934319 () Bool)

(declare-fun res!629375 () Bool)

(assert (=> b!934319 (=> (not res!629375) (not e!524645))))

(assert (=> b!934319 (= res!629375 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27531 _keys!1487))))))

(declare-fun b!934320 () Bool)

(declare-fun res!629373 () Bool)

(assert (=> b!934320 (=> (not res!629373) (not e!524645))))

(assert (=> b!934320 (= res!629373 (and (= (size!27532 _values!1231) (bvadd #b00000000000000000000000000000001 mask!1881)) (= (size!27531 _keys!1487) (size!27532 _values!1231)) (bvsge mask!1881 #b00000000000000000000000000000000) (bvsge extraKeys!1152 #b00000000000000000000000000000000) (bvsle extraKeys!1152 #b00000000000000000000000000000011)))))

(declare-fun b!934321 () Bool)

(assert (=> b!934321 (= e!524642 (ite (= k!1099 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand extraKeys!1152 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapNonEmpty!31992 () Bool)

(declare-fun tp!61383 () Bool)

(assert (=> mapNonEmpty!31992 (= mapRes!31992 (and tp!61383 e!524648))))

(declare-fun mapKey!31992 () (_ BitVec 32))

(declare-fun mapValue!31992 () ValueCell!9595)

(declare-fun mapRest!31992 () (Array (_ BitVec 32) ValueCell!9595))

(assert (=> mapNonEmpty!31992 (= (arr!27072 _values!1231) (store mapRest!31992 mapKey!31992 mapValue!31992))))

(declare-fun res!629379 () Bool)

(assert (=> start!79518 (=> (not res!629379) (not e!524645))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79518 (= res!629379 (validMask!0 mask!1881))))

(assert (=> start!79518 e!524645))

(assert (=> start!79518 true))

(assert (=> start!79518 tp_is_empty!20153))

(declare-fun e!524647 () Bool)

(declare-fun array_inv!21022 (array!56266) Bool)

(assert (=> start!79518 (and (array_inv!21022 _values!1231) e!524647)))

(assert (=> start!79518 tp!61382))

(declare-fun array_inv!21023 (array!56264) Bool)

(assert (=> start!79518 (array_inv!21023 _keys!1487)))

(declare-fun b!934322 () Bool)

(declare-fun res!629377 () Bool)

(assert (=> b!934322 (=> (not res!629377) (not e!524645))))

(assert (=> b!934322 (= res!629377 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19195))))

(declare-fun b!934323 () Bool)

(declare-fun e!524641 () Bool)

(assert (=> b!934323 (= e!524641 tp_is_empty!20153)))

(declare-fun b!934324 () Bool)

(declare-fun res!629381 () Bool)

(assert (=> b!934324 (=> (not res!629381) (not e!524643))))

(declare-fun v!791 () V!31835)

(declare-fun apply!846 (ListLongMap!12101 (_ BitVec 64)) V!31835)

(assert (=> b!934324 (= res!629381 (= (apply!846 lt!420937 k!1099) v!791))))

(declare-fun b!934325 () Bool)

(assert (=> b!934325 (= e!524643 e!524644)))

(declare-fun res!629372 () Bool)

(assert (=> b!934325 (=> (not res!629372) (not e!524644))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!934325 (= res!629372 (validKeyInArray!0 lt!420941))))

(assert (=> b!934325 (= lt!420941 (select (arr!27071 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!934326 () Bool)

(declare-fun arrayContainsKey!0 (array!56264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!934326 (= e!524642 (arrayContainsKey!0 _keys!1487 k!1099 from!1844))))

(declare-fun b!934327 () Bool)

(declare-fun res!629376 () Bool)

(assert (=> b!934327 (=> (not res!629376) (not e!524645))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56264 (_ BitVec 32)) Bool)

(assert (=> b!934327 (= res!629376 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun b!934328 () Bool)

(assert (=> b!934328 (= e!524647 (and e!524641 mapRes!31992))))

(declare-fun condMapEmpty!31992 () Bool)

(declare-fun mapDefault!31992 () ValueCell!9595)


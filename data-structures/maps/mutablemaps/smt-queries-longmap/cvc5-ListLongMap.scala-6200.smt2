; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!79336 () Bool)

(assert start!79336)

(declare-fun b_free!17521 () Bool)

(declare-fun b_next!17521 () Bool)

(assert (=> start!79336 (= b_free!17521 (not b_next!17521))))

(declare-fun tp!61004 () Bool)

(declare-fun b_and!28611 () Bool)

(assert (=> start!79336 (= tp!61004 b_and!28611)))

(declare-fun b!931346 () Bool)

(declare-fun res!627353 () Bool)

(declare-fun e!523073 () Bool)

(assert (=> b!931346 (=> (not res!627353) (not e!523073))))

(declare-datatypes ((array!56026 0))(
  ( (array!56027 (arr!26954 (Array (_ BitVec 32) (_ BitVec 64))) (size!27414 (_ BitVec 32))) )
))
(declare-fun _keys!1487 () array!56026)

(declare-fun mask!1881 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!56026 (_ BitVec 32)) Bool)

(assert (=> b!931346 (= res!627353 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1487 mask!1881))))

(declare-fun mapNonEmpty!31800 () Bool)

(declare-fun mapRes!31800 () Bool)

(declare-fun tp!61005 () Bool)

(declare-fun e!523071 () Bool)

(assert (=> mapNonEmpty!31800 (= mapRes!31800 (and tp!61005 e!523071))))

(declare-fun mapKey!31800 () (_ BitVec 32))

(declare-datatypes ((V!31671 0))(
  ( (V!31672 (val!10065 Int)) )
))
(declare-datatypes ((ValueCell!9533 0))(
  ( (ValueCellFull!9533 (v!12583 V!31671)) (EmptyCell!9533) )
))
(declare-fun mapValue!31800 () ValueCell!9533)

(declare-fun mapRest!31800 () (Array (_ BitVec 32) ValueCell!9533))

(declare-datatypes ((array!56028 0))(
  ( (array!56029 (arr!26955 (Array (_ BitVec 32) ValueCell!9533)) (size!27415 (_ BitVec 32))) )
))
(declare-fun _values!1231 () array!56028)

(assert (=> mapNonEmpty!31800 (= (arr!26955 _values!1231) (store mapRest!31800 mapKey!31800 mapValue!31800))))

(declare-fun b!931347 () Bool)

(declare-fun res!627361 () Bool)

(assert (=> b!931347 (=> (not res!627361) (not e!523073))))

(declare-datatypes ((List!19102 0))(
  ( (Nil!19099) (Cons!19098 (h!20244 (_ BitVec 64)) (t!27175 List!19102)) )
))
(declare-fun arrayNoDuplicates!0 (array!56026 (_ BitVec 32) List!19102) Bool)

(assert (=> b!931347 (= res!627361 (arrayNoDuplicates!0 _keys!1487 #b00000000000000000000000000000000 Nil!19099))))

(declare-fun b!931348 () Bool)

(declare-fun e!523077 () Bool)

(assert (=> b!931348 (= e!523073 e!523077)))

(declare-fun res!627354 () Bool)

(assert (=> b!931348 (=> (not res!627354) (not e!523077))))

(declare-datatypes ((tuple2!13286 0))(
  ( (tuple2!13287 (_1!6653 (_ BitVec 64)) (_2!6653 V!31671)) )
))
(declare-datatypes ((List!19103 0))(
  ( (Nil!19100) (Cons!19099 (h!20245 tuple2!13286) (t!27176 List!19103)) )
))
(declare-datatypes ((ListLongMap!11997 0))(
  ( (ListLongMap!11998 (toList!6014 List!19103)) )
))
(declare-fun lt!419391 () ListLongMap!11997)

(declare-fun k!1099 () (_ BitVec 64))

(declare-fun contains!5016 (ListLongMap!11997 (_ BitVec 64)) Bool)

(assert (=> b!931348 (= res!627354 (contains!5016 lt!419391 k!1099))))

(declare-fun from!1844 () (_ BitVec 32))

(declare-fun extraKeys!1152 () (_ BitVec 32))

(declare-fun defaultEntry!1235 () Int)

(declare-fun zeroValue!1173 () V!31671)

(declare-fun minValue!1173 () V!31671)

(declare-fun getCurrentListMap!3211 (array!56026 array!56028 (_ BitVec 32) (_ BitVec 32) V!31671 V!31671 (_ BitVec 32) Int) ListLongMap!11997)

(assert (=> b!931348 (= lt!419391 (getCurrentListMap!3211 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 from!1844 defaultEntry!1235))))

(declare-fun b!931349 () Bool)

(declare-fun e!523075 () Bool)

(declare-fun tp_is_empty!20029 () Bool)

(assert (=> b!931349 (= e!523075 tp_is_empty!20029)))

(declare-fun b!931350 () Bool)

(declare-fun res!627357 () Bool)

(assert (=> b!931350 (=> (not res!627357) (not e!523077))))

(assert (=> b!931350 (= res!627357 (bvsgt from!1844 #b00000000000000000000000000000000))))

(declare-fun b!931351 () Bool)

(declare-fun e!523072 () Bool)

(assert (=> b!931351 (= e!523072 (not (bvslt (bvsub from!1844 #b00000000000000000000000000000001) (size!27415 _values!1231))))))

(declare-fun lt!419389 () (_ BitVec 64))

(declare-fun +!2725 (ListLongMap!11997 tuple2!13286) ListLongMap!11997)

(declare-fun get!14178 (ValueCell!9533 V!31671) V!31671)

(declare-fun dynLambda!1564 (Int (_ BitVec 64)) V!31671)

(assert (=> b!931351 (= (getCurrentListMap!3211 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235) (+!2725 (getCurrentListMap!3211 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvadd #b00000000000000000000000000000001 (bvsub from!1844 #b00000000000000000000000000000001)) defaultEntry!1235) (tuple2!13287 lt!419389 (get!14178 (select (arr!26955 _values!1231) (bvsub from!1844 #b00000000000000000000000000000001)) (dynLambda!1564 defaultEntry!1235 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-datatypes ((Unit!31433 0))(
  ( (Unit!31434) )
))
(declare-fun lt!419390 () Unit!31433)

(declare-fun lemmaListMapRecursiveValidKeyArray!160 (array!56026 array!56028 (_ BitVec 32) (_ BitVec 32) V!31671 V!31671 (_ BitVec 32) Int) Unit!31433)

(assert (=> b!931351 (= lt!419390 (lemmaListMapRecursiveValidKeyArray!160 _keys!1487 _values!1231 mask!1881 extraKeys!1152 zeroValue!1173 minValue!1173 (bvsub from!1844 #b00000000000000000000000000000001) defaultEntry!1235))))

(declare-fun b!931352 () Bool)

(declare-fun res!627355 () Bool)

(assert (=> b!931352 (=> (not res!627355) (not e!523077))))

(declare-fun v!791 () V!31671)

(declare-fun apply!800 (ListLongMap!11997 (_ BitVec 64)) V!31671)

(assert (=> b!931352 (= res!627355 (= (apply!800 lt!419391 k!1099) v!791))))

(declare-fun res!627356 () Bool)

(assert (=> start!79336 (=> (not res!627356) (not e!523073))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!79336 (= res!627356 (validMask!0 mask!1881))))

(assert (=> start!79336 e!523073))

(assert (=> start!79336 true))

(assert (=> start!79336 tp_is_empty!20029))

(declare-fun e!523074 () Bool)

(declare-fun array_inv!20952 (array!56028) Bool)

(assert (=> start!79336 (and (array_inv!20952 _values!1231) e!523074)))

(assert (=> start!79336 tp!61004))

(declare-fun array_inv!20953 (array!56026) Bool)

(assert (=> start!79336 (array_inv!20953 _keys!1487)))

(declare-fun b!931353 () Bool)

(assert (=> b!931353 (= e!523077 e!523072)))

(declare-fun res!627359 () Bool)

(assert (=> b!931353 (=> (not res!627359) (not e!523072))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!931353 (= res!627359 (validKeyInArray!0 lt!419389))))

(assert (=> b!931353 (= lt!419389 (select (arr!26954 _keys!1487) (bvsub from!1844 #b00000000000000000000000000000001)))))

(declare-fun b!931354 () Bool)

(declare-fun res!627360 () Bool)

(assert (=> b!931354 (=> (not res!627360) (not e!523073))))

(assert (=> b!931354 (= res!627360 (and (bvsge from!1844 #b00000000000000000000000000000000) (bvslt from!1844 (size!27414 _keys!1487))))))

(declare-fun b!931355 () Bool)

(assert (=> b!931355 (= e!523074 (and e!523075 mapRes!31800))))

(declare-fun condMapEmpty!31800 () Bool)

(declare-fun mapDefault!31800 () ValueCell!9533)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99500 () Bool)

(assert start!99500)

(declare-fun b_free!25043 () Bool)

(declare-fun b_next!25043 () Bool)

(assert (=> start!99500 (= b_free!25043 (not b_next!25043))))

(declare-fun tp!87844 () Bool)

(declare-fun b_and!40967 () Bool)

(assert (=> start!99500 (= tp!87844 b_and!40967)))

(declare-fun b!1175214 () Bool)

(declare-fun res!780586 () Bool)

(declare-fun e!668063 () Bool)

(assert (=> b!1175214 (=> (not res!780586) (not e!668063))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75922 0))(
  ( (array!75923 (arr!36607 (Array (_ BitVec 32) (_ BitVec 64))) (size!37144 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75922)

(assert (=> b!1175214 (= res!780586 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37144 _keys!1208))))))

(declare-fun b!1175215 () Bool)

(declare-fun res!780575 () Bool)

(assert (=> b!1175215 (=> (not res!780575) (not e!668063))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1175215 (= res!780575 (validMask!0 mask!1564))))

(declare-fun b!1175216 () Bool)

(declare-fun e!668058 () Bool)

(declare-fun tp_is_empty!29573 () Bool)

(assert (=> b!1175216 (= e!668058 tp_is_empty!29573)))

(declare-fun b!1175217 () Bool)

(declare-fun res!780577 () Bool)

(assert (=> b!1175217 (=> (not res!780577) (not e!668063))))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1175217 (= res!780577 (= (select (arr!36607 _keys!1208) i!673) k!934))))

(declare-fun b!1175218 () Bool)

(declare-datatypes ((Unit!38701 0))(
  ( (Unit!38702) )
))
(declare-fun e!668060 () Unit!38701)

(declare-fun Unit!38703 () Unit!38701)

(assert (=> b!1175218 (= e!668060 Unit!38703)))

(declare-fun b!1175219 () Bool)

(declare-fun res!780572 () Bool)

(assert (=> b!1175219 (=> (not res!780572) (not e!668063))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44557 0))(
  ( (V!44558 (val!14843 Int)) )
))
(declare-datatypes ((ValueCell!14077 0))(
  ( (ValueCellFull!14077 (v!17482 V!44557)) (EmptyCell!14077) )
))
(declare-datatypes ((array!75924 0))(
  ( (array!75925 (arr!36608 (Array (_ BitVec 32) ValueCell!14077)) (size!37145 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75924)

(assert (=> b!1175219 (= res!780572 (and (= (size!37145 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37144 _keys!1208) (size!37145 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1175220 () Bool)

(declare-fun Unit!38704 () Unit!38701)

(assert (=> b!1175220 (= e!668060 Unit!38704)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!530122 () Unit!38701)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75922 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38701)

(assert (=> b!1175220 (= lt!530122 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun arrayContainsKey!0 (array!75922 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1175220 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!530120 () Unit!38701)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75922 (_ BitVec 32) (_ BitVec 32)) Unit!38701)

(assert (=> b!1175220 (= lt!530120 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25853 0))(
  ( (Nil!25850) (Cons!25849 (h!27058 (_ BitVec 64)) (t!37895 List!25853)) )
))
(declare-fun arrayNoDuplicates!0 (array!75922 (_ BitVec 32) List!25853) Bool)

(assert (=> b!1175220 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25850)))

(declare-fun lt!530124 () Unit!38701)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75922 (_ BitVec 64) (_ BitVec 32) List!25853) Unit!38701)

(assert (=> b!1175220 (= lt!530124 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25850))))

(assert (=> b!1175220 false))

(declare-fun b!1175221 () Bool)

(declare-fun e!668054 () Bool)

(declare-fun e!668057 () Bool)

(assert (=> b!1175221 (= e!668054 e!668057)))

(declare-fun res!780582 () Bool)

(assert (=> b!1175221 (=> res!780582 e!668057)))

(assert (=> b!1175221 (= res!780582 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44557)

(declare-fun lt!530128 () array!75922)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!530117 () array!75924)

(declare-fun minValue!944 () V!44557)

(declare-datatypes ((tuple2!19084 0))(
  ( (tuple2!19085 (_1!9552 (_ BitVec 64)) (_2!9552 V!44557)) )
))
(declare-datatypes ((List!25854 0))(
  ( (Nil!25851) (Cons!25850 (h!27059 tuple2!19084) (t!37896 List!25854)) )
))
(declare-datatypes ((ListLongMap!17065 0))(
  ( (ListLongMap!17066 (toList!8548 List!25854)) )
))
(declare-fun lt!530126 () ListLongMap!17065)

(declare-fun getCurrentListMapNoExtraKeys!4979 (array!75922 array!75924 (_ BitVec 32) (_ BitVec 32) V!44557 V!44557 (_ BitVec 32) Int) ListLongMap!17065)

(assert (=> b!1175221 (= lt!530126 (getCurrentListMapNoExtraKeys!4979 lt!530128 lt!530117 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!530127 () V!44557)

(assert (=> b!1175221 (= lt!530117 (array!75925 (store (arr!36608 _values!996) i!673 (ValueCellFull!14077 lt!530127)) (size!37145 _values!996)))))

(declare-fun dynLambda!2959 (Int (_ BitVec 64)) V!44557)

(assert (=> b!1175221 (= lt!530127 (dynLambda!2959 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!530121 () ListLongMap!17065)

(assert (=> b!1175221 (= lt!530121 (getCurrentListMapNoExtraKeys!4979 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1175222 () Bool)

(declare-fun e!668055 () Bool)

(assert (=> b!1175222 (= e!668055 tp_is_empty!29573)))

(declare-fun b!1175223 () Bool)

(declare-fun e!668056 () Bool)

(declare-fun e!668064 () Bool)

(assert (=> b!1175223 (= e!668056 e!668064)))

(declare-fun res!780581 () Bool)

(assert (=> b!1175223 (=> res!780581 e!668064)))

(assert (=> b!1175223 (= res!780581 (not (= (select (arr!36607 _keys!1208) from!1455) k!934)))))

(declare-fun b!1175224 () Bool)

(assert (=> b!1175224 (= e!668064 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1175225 () Bool)

(declare-fun e!668065 () Bool)

(declare-fun mapRes!46187 () Bool)

(assert (=> b!1175225 (= e!668065 (and e!668058 mapRes!46187))))

(declare-fun condMapEmpty!46187 () Bool)

(declare-fun mapDefault!46187 () ValueCell!14077)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99470 () Bool)

(assert start!99470)

(declare-fun b_free!25013 () Bool)

(declare-fun b_next!25013 () Bool)

(assert (=> start!99470 (= b_free!25013 (not b_next!25013))))

(declare-fun tp!87753 () Bool)

(declare-fun b_and!40907 () Bool)

(assert (=> start!99470 (= tp!87753 b_and!40907)))

(declare-fun b!1174283 () Bool)

(declare-fun e!667522 () Bool)

(declare-fun tp_is_empty!29543 () Bool)

(assert (=> b!1174283 (= e!667522 tp_is_empty!29543)))

(declare-fun b!1174284 () Bool)

(declare-fun e!667514 () Bool)

(declare-fun e!667525 () Bool)

(assert (=> b!1174284 (= e!667514 e!667525)))

(declare-fun res!779901 () Bool)

(assert (=> b!1174284 (=> res!779901 e!667525)))

(declare-datatypes ((array!75862 0))(
  ( (array!75863 (arr!36577 (Array (_ BitVec 32) (_ BitVec 64))) (size!37114 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75862)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1174284 (= res!779901 (not (validKeyInArray!0 (select (arr!36577 _keys!1208) from!1455))))))

(declare-datatypes ((V!44517 0))(
  ( (V!44518 (val!14828 Int)) )
))
(declare-datatypes ((tuple2!19056 0))(
  ( (tuple2!19057 (_1!9538 (_ BitVec 64)) (_2!9538 V!44517)) )
))
(declare-datatypes ((List!25827 0))(
  ( (Nil!25824) (Cons!25823 (h!27032 tuple2!19056) (t!37839 List!25827)) )
))
(declare-datatypes ((ListLongMap!17037 0))(
  ( (ListLongMap!17038 (toList!8534 List!25827)) )
))
(declare-fun lt!529495 () ListLongMap!17037)

(declare-fun lt!529490 () ListLongMap!17037)

(assert (=> b!1174284 (= lt!529495 lt!529490)))

(declare-fun lt!529492 () ListLongMap!17037)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1545 (ListLongMap!17037 (_ BitVec 64)) ListLongMap!17037)

(assert (=> b!1174284 (= lt!529490 (-!1545 lt!529492 k!934))))

(declare-fun zeroValue!944 () V!44517)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14062 0))(
  ( (ValueCellFull!14062 (v!17467 V!44517)) (EmptyCell!14062) )
))
(declare-datatypes ((array!75864 0))(
  ( (array!75865 (arr!36578 (Array (_ BitVec 32) ValueCell!14062)) (size!37115 (_ BitVec 32))) )
))
(declare-fun lt!529493 () array!75864)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44517)

(declare-fun lt!529497 () array!75862)

(declare-fun getCurrentListMapNoExtraKeys!4965 (array!75862 array!75864 (_ BitVec 32) (_ BitVec 32) V!44517 V!44517 (_ BitVec 32) Int) ListLongMap!17037)

(assert (=> b!1174284 (= lt!529495 (getCurrentListMapNoExtraKeys!4965 lt!529497 lt!529493 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75864)

(assert (=> b!1174284 (= lt!529492 (getCurrentListMapNoExtraKeys!4965 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38648 0))(
  ( (Unit!38649) )
))
(declare-fun lt!529487 () Unit!38648)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!769 (array!75862 array!75864 (_ BitVec 32) (_ BitVec 32) V!44517 V!44517 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38648)

(assert (=> b!1174284 (= lt!529487 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!769 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1174285 () Bool)

(declare-fun res!779910 () Bool)

(declare-fun e!667518 () Bool)

(assert (=> b!1174285 (=> (not res!779910) (not e!667518))))

(assert (=> b!1174285 (= res!779910 (validKeyInArray!0 k!934))))

(declare-fun b!1174286 () Bool)

(declare-fun e!667524 () Bool)

(assert (=> b!1174286 (= e!667518 e!667524)))

(declare-fun res!779911 () Bool)

(assert (=> b!1174286 (=> (not res!779911) (not e!667524))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75862 (_ BitVec 32)) Bool)

(assert (=> b!1174286 (= res!779911 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!529497 mask!1564))))

(assert (=> b!1174286 (= lt!529497 (array!75863 (store (arr!36577 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37114 _keys!1208)))))

(declare-fun b!1174287 () Bool)

(declare-fun e!667520 () Unit!38648)

(declare-fun Unit!38650 () Unit!38648)

(assert (=> b!1174287 (= e!667520 Unit!38650)))

(declare-fun b!1174288 () Bool)

(declare-fun res!779909 () Bool)

(assert (=> b!1174288 (=> (not res!779909) (not e!667518))))

(assert (=> b!1174288 (= res!779909 (and (= (size!37115 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37114 _keys!1208) (size!37115 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1174289 () Bool)

(declare-fun res!779897 () Bool)

(assert (=> b!1174289 (=> (not res!779897) (not e!667518))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1174289 (= res!779897 (validMask!0 mask!1564))))

(declare-fun b!1174290 () Bool)

(declare-fun e!667519 () Bool)

(declare-fun mapRes!46142 () Bool)

(assert (=> b!1174290 (= e!667519 (and e!667522 mapRes!46142))))

(declare-fun condMapEmpty!46142 () Bool)

(declare-fun mapDefault!46142 () ValueCell!14062)


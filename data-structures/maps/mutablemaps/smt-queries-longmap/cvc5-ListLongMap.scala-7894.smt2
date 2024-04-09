; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98144 () Bool)

(assert start!98144)

(declare-fun b_free!23809 () Bool)

(declare-fun b_next!23809 () Bool)

(assert (=> start!98144 (= b_free!23809 (not b_next!23809))))

(declare-fun tp!84132 () Bool)

(declare-fun b_and!38423 () Bool)

(assert (=> start!98144 (= tp!84132 b_and!38423)))

(declare-fun b!1127225 () Bool)

(declare-fun res!753355 () Bool)

(declare-fun e!641630 () Bool)

(assert (=> b!1127225 (=> (not res!753355) (not e!641630))))

(declare-datatypes ((array!73498 0))(
  ( (array!73499 (arr!35398 (Array (_ BitVec 32) (_ BitVec 64))) (size!35935 (_ BitVec 32))) )
))
(declare-fun lt!500497 () array!73498)

(declare-datatypes ((List!24805 0))(
  ( (Nil!24802) (Cons!24801 (h!26010 (_ BitVec 64)) (t!35613 List!24805)) )
))
(declare-fun arrayNoDuplicates!0 (array!73498 (_ BitVec 32) List!24805) Bool)

(assert (=> b!1127225 (= res!753355 (arrayNoDuplicates!0 lt!500497 #b00000000000000000000000000000000 Nil!24802))))

(declare-fun e!641629 () Bool)

(declare-datatypes ((V!42913 0))(
  ( (V!42914 (val!14226 Int)) )
))
(declare-datatypes ((tuple2!17980 0))(
  ( (tuple2!17981 (_1!9000 (_ BitVec 64)) (_2!9000 V!42913)) )
))
(declare-datatypes ((List!24806 0))(
  ( (Nil!24803) (Cons!24802 (h!26011 tuple2!17980) (t!35614 List!24806)) )
))
(declare-datatypes ((ListLongMap!15961 0))(
  ( (ListLongMap!15962 (toList!7996 List!24806)) )
))
(declare-fun call!47711 () ListLongMap!15961)

(declare-fun call!47710 () ListLongMap!15961)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun b!1127226 () Bool)

(declare-fun -!1134 (ListLongMap!15961 (_ BitVec 64)) ListLongMap!15961)

(assert (=> b!1127226 (= e!641629 (= call!47710 (-!1134 call!47711 k!934)))))

(declare-fun b!1127227 () Bool)

(declare-fun e!641627 () Bool)

(declare-fun e!641624 () Bool)

(assert (=> b!1127227 (= e!641627 e!641624)))

(declare-fun res!753357 () Bool)

(assert (=> b!1127227 (=> res!753357 e!641624)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127227 (= res!753357 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!42913)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13460 0))(
  ( (ValueCellFull!13460 (v!16860 V!42913)) (EmptyCell!13460) )
))
(declare-datatypes ((array!73500 0))(
  ( (array!73501 (arr!35399 (Array (_ BitVec 32) ValueCell!13460)) (size!35936 (_ BitVec 32))) )
))
(declare-fun lt!500499 () array!73500)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!500496 () ListLongMap!15961)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!42913)

(declare-fun getCurrentListMapNoExtraKeys!4455 (array!73498 array!73500 (_ BitVec 32) (_ BitVec 32) V!42913 V!42913 (_ BitVec 32) Int) ListLongMap!15961)

(assert (=> b!1127227 (= lt!500496 (getCurrentListMapNoExtraKeys!4455 lt!500497 lt!500499 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73500)

(declare-fun dynLambda!2534 (Int (_ BitVec 64)) V!42913)

(assert (=> b!1127227 (= lt!500499 (array!73501 (store (arr!35399 _values!996) i!673 (ValueCellFull!13460 (dynLambda!2534 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35936 _values!996)))))

(declare-fun _keys!1208 () array!73498)

(declare-fun lt!500495 () ListLongMap!15961)

(assert (=> b!1127227 (= lt!500495 (getCurrentListMapNoExtraKeys!4455 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1127228 () Bool)

(declare-fun e!641628 () Bool)

(assert (=> b!1127228 (= e!641628 e!641630)))

(declare-fun res!753345 () Bool)

(assert (=> b!1127228 (=> (not res!753345) (not e!641630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73498 (_ BitVec 32)) Bool)

(assert (=> b!1127228 (= res!753345 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500497 mask!1564))))

(assert (=> b!1127228 (= lt!500497 (array!73499 (store (arr!35398 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35935 _keys!1208)))))

(declare-fun b!1127229 () Bool)

(declare-fun e!641631 () Bool)

(assert (=> b!1127229 (= e!641624 e!641631)))

(declare-fun res!753347 () Bool)

(assert (=> b!1127229 (=> res!753347 e!641631)))

(assert (=> b!1127229 (= res!753347 (not (= (select (arr!35398 _keys!1208) from!1455) k!934)))))

(assert (=> b!1127229 e!641629))

(declare-fun c!109664 () Bool)

(assert (=> b!1127229 (= c!109664 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36885 0))(
  ( (Unit!36886) )
))
(declare-fun lt!500494 () Unit!36885)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!391 (array!73498 array!73500 (_ BitVec 32) (_ BitVec 32) V!42913 V!42913 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36885)

(assert (=> b!1127229 (= lt!500494 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!391 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44326 () Bool)

(declare-fun mapRes!44326 () Bool)

(declare-fun tp!84131 () Bool)

(declare-fun e!641625 () Bool)

(assert (=> mapNonEmpty!44326 (= mapRes!44326 (and tp!84131 e!641625))))

(declare-fun mapKey!44326 () (_ BitVec 32))

(declare-fun mapRest!44326 () (Array (_ BitVec 32) ValueCell!13460))

(declare-fun mapValue!44326 () ValueCell!13460)

(assert (=> mapNonEmpty!44326 (= (arr!35399 _values!996) (store mapRest!44326 mapKey!44326 mapValue!44326))))

(declare-fun b!1127230 () Bool)

(declare-fun res!753350 () Bool)

(assert (=> b!1127230 (=> (not res!753350) (not e!641628))))

(assert (=> b!1127230 (= res!753350 (and (= (size!35936 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35935 _keys!1208) (size!35936 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!47707 () Bool)

(assert (=> bm!47707 (= call!47710 (getCurrentListMapNoExtraKeys!4455 lt!500497 lt!500499 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127231 () Bool)

(assert (=> b!1127231 (= e!641630 (not e!641627))))

(declare-fun res!753353 () Bool)

(assert (=> b!1127231 (=> res!753353 e!641627)))

(assert (=> b!1127231 (= res!753353 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1127231 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!500493 () Unit!36885)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73498 (_ BitVec 64) (_ BitVec 32)) Unit!36885)

(assert (=> b!1127231 (= lt!500493 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1127232 () Bool)

(assert (=> b!1127232 (= e!641629 (= call!47710 call!47711))))

(declare-fun b!1127233 () Bool)

(declare-fun res!753348 () Bool)

(assert (=> b!1127233 (=> (not res!753348) (not e!641628))))

(assert (=> b!1127233 (= res!753348 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1127234 () Bool)

(declare-fun res!753346 () Bool)

(assert (=> b!1127234 (=> (not res!753346) (not e!641628))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127234 (= res!753346 (validMask!0 mask!1564))))

(declare-fun mapIsEmpty!44326 () Bool)

(assert (=> mapIsEmpty!44326 mapRes!44326))

(declare-fun b!1127235 () Bool)

(declare-fun tp_is_empty!28339 () Bool)

(assert (=> b!1127235 (= e!641625 tp_is_empty!28339)))

(declare-fun b!1127236 () Bool)

(declare-fun e!641633 () Bool)

(declare-fun e!641632 () Bool)

(assert (=> b!1127236 (= e!641633 (and e!641632 mapRes!44326))))

(declare-fun condMapEmpty!44326 () Bool)

(declare-fun mapDefault!44326 () ValueCell!13460)


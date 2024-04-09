; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99254 () Bool)

(assert start!99254)

(declare-fun b_free!24823 () Bool)

(declare-fun b_next!24823 () Bool)

(assert (=> start!99254 (= b_free!24823 (not b_next!24823))))

(declare-fun tp!87180 () Bool)

(declare-fun b_and!40509 () Bool)

(assert (=> start!99254 (= tp!87180 b_and!40509)))

(declare-fun b!1168341 () Bool)

(declare-fun res!775254 () Bool)

(declare-fun e!664049 () Bool)

(assert (=> b!1168341 (=> (not res!775254) (not e!664049))))

(declare-datatypes ((array!75480 0))(
  ( (array!75481 (arr!36387 (Array (_ BitVec 32) (_ BitVec 64))) (size!36924 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75480)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75480 (_ BitVec 32)) Bool)

(assert (=> b!1168341 (= res!775254 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1168342 () Bool)

(declare-fun res!775248 () Bool)

(assert (=> b!1168342 (=> (not res!775248) (not e!664049))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1168342 (= res!775248 (validKeyInArray!0 k!934))))

(declare-fun b!1168343 () Bool)

(declare-fun e!664056 () Bool)

(declare-fun e!664052 () Bool)

(assert (=> b!1168343 (= e!664056 e!664052)))

(declare-fun res!775244 () Bool)

(assert (=> b!1168343 (=> res!775244 e!664052)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1168343 (= res!775244 (not (validKeyInArray!0 (select (arr!36387 _keys!1208) from!1455))))))

(declare-datatypes ((V!44265 0))(
  ( (V!44266 (val!14733 Int)) )
))
(declare-datatypes ((tuple2!18884 0))(
  ( (tuple2!18885 (_1!9452 (_ BitVec 64)) (_2!9452 V!44265)) )
))
(declare-datatypes ((List!25659 0))(
  ( (Nil!25656) (Cons!25655 (h!26864 tuple2!18884) (t!37481 List!25659)) )
))
(declare-datatypes ((ListLongMap!16865 0))(
  ( (ListLongMap!16866 (toList!8448 List!25659)) )
))
(declare-fun lt!525962 () ListLongMap!16865)

(declare-fun lt!525963 () ListLongMap!16865)

(assert (=> b!1168343 (= lt!525962 lt!525963)))

(declare-fun lt!525960 () ListLongMap!16865)

(declare-fun -!1477 (ListLongMap!16865 (_ BitVec 64)) ListLongMap!16865)

(assert (=> b!1168343 (= lt!525963 (-!1477 lt!525960 k!934))))

(declare-fun lt!525955 () array!75480)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!44265)

(declare-fun zeroValue!944 () V!44265)

(declare-datatypes ((ValueCell!13967 0))(
  ( (ValueCellFull!13967 (v!17371 V!44265)) (EmptyCell!13967) )
))
(declare-datatypes ((array!75482 0))(
  ( (array!75483 (arr!36388 (Array (_ BitVec 32) ValueCell!13967)) (size!36925 (_ BitVec 32))) )
))
(declare-fun lt!525956 () array!75482)

(declare-fun getCurrentListMapNoExtraKeys!4881 (array!75480 array!75482 (_ BitVec 32) (_ BitVec 32) V!44265 V!44265 (_ BitVec 32) Int) ListLongMap!16865)

(assert (=> b!1168343 (= lt!525962 (getCurrentListMapNoExtraKeys!4881 lt!525955 lt!525956 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun _values!996 () array!75482)

(assert (=> b!1168343 (= lt!525960 (getCurrentListMapNoExtraKeys!4881 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((Unit!38444 0))(
  ( (Unit!38445) )
))
(declare-fun lt!525958 () Unit!38444)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!701 (array!75480 array!75482 (_ BitVec 32) (_ BitVec 32) V!44265 V!44265 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38444)

(assert (=> b!1168343 (= lt!525958 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!701 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!45854 () Bool)

(declare-fun mapRes!45854 () Bool)

(assert (=> mapIsEmpty!45854 mapRes!45854))

(declare-fun b!1168344 () Bool)

(declare-fun e!664054 () Bool)

(assert (=> b!1168344 (= e!664049 e!664054)))

(declare-fun res!775247 () Bool)

(assert (=> b!1168344 (=> (not res!775247) (not e!664054))))

(assert (=> b!1168344 (= res!775247 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!525955 mask!1564))))

(assert (=> b!1168344 (= lt!525955 (array!75481 (store (arr!36387 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36924 _keys!1208)))))

(declare-fun b!1168345 () Bool)

(declare-fun res!775245 () Bool)

(assert (=> b!1168345 (=> (not res!775245) (not e!664049))))

(assert (=> b!1168345 (= res!775245 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36924 _keys!1208))))))

(declare-fun b!1168346 () Bool)

(declare-fun e!664055 () Bool)

(assert (=> b!1168346 (= e!664055 e!664056)))

(declare-fun res!775253 () Bool)

(assert (=> b!1168346 (=> res!775253 e!664056)))

(assert (=> b!1168346 (= res!775253 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun lt!525954 () ListLongMap!16865)

(assert (=> b!1168346 (= lt!525954 (getCurrentListMapNoExtraKeys!4881 lt!525955 lt!525956 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!525957 () V!44265)

(assert (=> b!1168346 (= lt!525956 (array!75483 (store (arr!36388 _values!996) i!673 (ValueCellFull!13967 lt!525957)) (size!36925 _values!996)))))

(declare-fun dynLambda!2873 (Int (_ BitVec 64)) V!44265)

(assert (=> b!1168346 (= lt!525957 (dynLambda!2873 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!525959 () ListLongMap!16865)

(assert (=> b!1168346 (= lt!525959 (getCurrentListMapNoExtraKeys!4881 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1168347 () Bool)

(declare-fun e!664053 () Bool)

(declare-fun tp_is_empty!29353 () Bool)

(assert (=> b!1168347 (= e!664053 tp_is_empty!29353)))

(declare-fun b!1168348 () Bool)

(assert (=> b!1168348 (= e!664052 true)))

(declare-fun +!3698 (ListLongMap!16865 tuple2!18884) ListLongMap!16865)

(declare-fun get!18571 (ValueCell!13967 V!44265) V!44265)

(assert (=> b!1168348 (= lt!525954 (+!3698 lt!525963 (tuple2!18885 (select (arr!36387 _keys!1208) from!1455) (get!18571 (select (arr!36388 _values!996) from!1455) lt!525957))))))

(declare-fun b!1168350 () Bool)

(assert (=> b!1168350 (= e!664054 (not e!664055))))

(declare-fun res!775256 () Bool)

(assert (=> b!1168350 (=> res!775256 e!664055)))

(assert (=> b!1168350 (= res!775256 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1168350 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!525961 () Unit!38444)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75480 (_ BitVec 64) (_ BitVec 32)) Unit!38444)

(assert (=> b!1168350 (= lt!525961 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1168351 () Bool)

(declare-fun e!664051 () Bool)

(declare-fun e!664048 () Bool)

(assert (=> b!1168351 (= e!664051 (and e!664048 mapRes!45854))))

(declare-fun condMapEmpty!45854 () Bool)

(declare-fun mapDefault!45854 () ValueCell!13967)


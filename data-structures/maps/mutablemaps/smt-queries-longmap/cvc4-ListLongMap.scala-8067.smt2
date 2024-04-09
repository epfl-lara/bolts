; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99308 () Bool)

(assert start!99308)

(declare-fun b_free!24851 () Bool)

(declare-fun b_next!24851 () Bool)

(assert (=> start!99308 (= b_free!24851 (not b_next!24851))))

(declare-fun tp!87267 () Bool)

(declare-fun b_and!40583 () Bool)

(assert (=> start!99308 (= tp!87267 b_and!40583)))

(declare-fun b!1169218 () Bool)

(declare-fun res!775888 () Bool)

(declare-fun e!664564 () Bool)

(assert (=> b!1169218 (=> (not res!775888) (not e!664564))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1169218 (= res!775888 (validKeyInArray!0 k!934))))

(declare-fun b!1169219 () Bool)

(declare-fun e!664559 () Bool)

(declare-fun e!664563 () Bool)

(assert (=> b!1169219 (= e!664559 (not e!664563))))

(declare-fun res!775883 () Bool)

(assert (=> b!1169219 (=> res!775883 e!664563)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1169219 (= res!775883 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!75538 0))(
  ( (array!75539 (arr!36415 (Array (_ BitVec 32) (_ BitVec 64))) (size!36952 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75538)

(declare-fun arrayContainsKey!0 (array!75538 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1169219 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!38470 0))(
  ( (Unit!38471) )
))
(declare-fun lt!526456 () Unit!38470)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75538 (_ BitVec 64) (_ BitVec 32)) Unit!38470)

(assert (=> b!1169219 (= lt!526456 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun mapIsEmpty!45899 () Bool)

(declare-fun mapRes!45899 () Bool)

(assert (=> mapIsEmpty!45899 mapRes!45899))

(declare-fun b!1169220 () Bool)

(declare-fun res!775884 () Bool)

(assert (=> b!1169220 (=> (not res!775884) (not e!664564))))

(assert (=> b!1169220 (= res!775884 (= (select (arr!36415 _keys!1208) i!673) k!934))))

(declare-fun b!1169221 () Bool)

(declare-fun res!775890 () Bool)

(assert (=> b!1169221 (=> (not res!775890) (not e!664564))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!44301 0))(
  ( (V!44302 (val!14747 Int)) )
))
(declare-datatypes ((ValueCell!13981 0))(
  ( (ValueCellFull!13981 (v!17386 V!44301)) (EmptyCell!13981) )
))
(declare-datatypes ((array!75540 0))(
  ( (array!75541 (arr!36416 (Array (_ BitVec 32) ValueCell!13981)) (size!36953 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75540)

(assert (=> b!1169221 (= res!775890 (and (= (size!36953 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36952 _keys!1208) (size!36953 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1169222 () Bool)

(declare-fun e!664561 () Bool)

(declare-fun e!664555 () Bool)

(assert (=> b!1169222 (= e!664561 e!664555)))

(declare-fun res!775889 () Bool)

(assert (=> b!1169222 (=> res!775889 e!664555)))

(assert (=> b!1169222 (= res!775889 (not (validKeyInArray!0 (select (arr!36415 _keys!1208) from!1455))))))

(declare-datatypes ((tuple2!18912 0))(
  ( (tuple2!18913 (_1!9466 (_ BitVec 64)) (_2!9466 V!44301)) )
))
(declare-datatypes ((List!25684 0))(
  ( (Nil!25681) (Cons!25680 (h!26889 tuple2!18912) (t!37534 List!25684)) )
))
(declare-datatypes ((ListLongMap!16893 0))(
  ( (ListLongMap!16894 (toList!8462 List!25684)) )
))
(declare-fun lt!526453 () ListLongMap!16893)

(declare-fun lt!526451 () ListLongMap!16893)

(assert (=> b!1169222 (= lt!526453 lt!526451)))

(declare-fun lt!526458 () ListLongMap!16893)

(declare-fun -!1487 (ListLongMap!16893 (_ BitVec 64)) ListLongMap!16893)

(assert (=> b!1169222 (= lt!526451 (-!1487 lt!526458 k!934))))

(declare-fun zeroValue!944 () V!44301)

(declare-fun lt!526450 () array!75538)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!526454 () array!75540)

(declare-fun minValue!944 () V!44301)

(declare-fun getCurrentListMapNoExtraKeys!4895 (array!75538 array!75540 (_ BitVec 32) (_ BitVec 32) V!44301 V!44301 (_ BitVec 32) Int) ListLongMap!16893)

(assert (=> b!1169222 (= lt!526453 (getCurrentListMapNoExtraKeys!4895 lt!526450 lt!526454 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1169222 (= lt!526458 (getCurrentListMapNoExtraKeys!4895 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!526449 () Unit!38470)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!711 (array!75538 array!75540 (_ BitVec 32) (_ BitVec 32) V!44301 V!44301 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38470)

(assert (=> b!1169222 (= lt!526449 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!711 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1169223 () Bool)

(assert (=> b!1169223 (= e!664555 true)))

(declare-fun e!664557 () Bool)

(assert (=> b!1169223 e!664557))

(declare-fun res!775891 () Bool)

(assert (=> b!1169223 (=> (not res!775891) (not e!664557))))

(declare-fun lt!526452 () V!44301)

(declare-fun lt!526455 () ListLongMap!16893)

(declare-fun +!3711 (ListLongMap!16893 tuple2!18912) ListLongMap!16893)

(declare-fun get!18594 (ValueCell!13981 V!44301) V!44301)

(assert (=> b!1169223 (= res!775891 (= lt!526455 (+!3711 lt!526451 (tuple2!18913 (select (arr!36415 _keys!1208) from!1455) (get!18594 (select (arr!36416 _values!996) from!1455) lt!526452)))))))

(declare-fun b!1169224 () Bool)

(declare-fun res!775895 () Bool)

(assert (=> b!1169224 (=> (not res!775895) (not e!664559))))

(declare-datatypes ((List!25685 0))(
  ( (Nil!25682) (Cons!25681 (h!26890 (_ BitVec 64)) (t!37535 List!25685)) )
))
(declare-fun arrayNoDuplicates!0 (array!75538 (_ BitVec 32) List!25685) Bool)

(assert (=> b!1169224 (= res!775895 (arrayNoDuplicates!0 lt!526450 #b00000000000000000000000000000000 Nil!25682))))

(declare-fun b!1169225 () Bool)

(declare-fun res!775886 () Bool)

(assert (=> b!1169225 (=> (not res!775886) (not e!664564))))

(assert (=> b!1169225 (= res!775886 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36952 _keys!1208))))))

(declare-fun mapNonEmpty!45899 () Bool)

(declare-fun tp!87268 () Bool)

(declare-fun e!664558 () Bool)

(assert (=> mapNonEmpty!45899 (= mapRes!45899 (and tp!87268 e!664558))))

(declare-fun mapValue!45899 () ValueCell!13981)

(declare-fun mapRest!45899 () (Array (_ BitVec 32) ValueCell!13981))

(declare-fun mapKey!45899 () (_ BitVec 32))

(assert (=> mapNonEmpty!45899 (= (arr!36416 _values!996) (store mapRest!45899 mapKey!45899 mapValue!45899))))

(declare-fun b!1169226 () Bool)

(declare-fun res!775885 () Bool)

(assert (=> b!1169226 (=> (not res!775885) (not e!664564))))

(assert (=> b!1169226 (= res!775885 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25682))))

(declare-fun res!775893 () Bool)

(assert (=> start!99308 (=> (not res!775893) (not e!664564))))

(assert (=> start!99308 (= res!775893 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36952 _keys!1208))))))

(assert (=> start!99308 e!664564))

(declare-fun tp_is_empty!29381 () Bool)

(assert (=> start!99308 tp_is_empty!29381))

(declare-fun array_inv!27712 (array!75538) Bool)

(assert (=> start!99308 (array_inv!27712 _keys!1208)))

(assert (=> start!99308 true))

(assert (=> start!99308 tp!87267))

(declare-fun e!664560 () Bool)

(declare-fun array_inv!27713 (array!75540) Bool)

(assert (=> start!99308 (and (array_inv!27713 _values!996) e!664560)))

(declare-fun b!1169227 () Bool)

(assert (=> b!1169227 (= e!664564 e!664559)))

(declare-fun res!775887 () Bool)

(assert (=> b!1169227 (=> (not res!775887) (not e!664559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75538 (_ BitVec 32)) Bool)

(assert (=> b!1169227 (= res!775887 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!526450 mask!1564))))

(assert (=> b!1169227 (= lt!526450 (array!75539 (store (arr!36415 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36952 _keys!1208)))))

(declare-fun b!1169228 () Bool)

(declare-fun e!664554 () Bool)

(assert (=> b!1169228 (= e!664560 (and e!664554 mapRes!45899))))

(declare-fun condMapEmpty!45899 () Bool)

(declare-fun mapDefault!45899 () ValueCell!13981)


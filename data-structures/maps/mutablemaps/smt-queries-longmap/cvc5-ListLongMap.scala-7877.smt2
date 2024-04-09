; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98042 () Bool)

(assert start!98042)

(declare-fun b_free!23707 () Bool)

(declare-fun b_next!23707 () Bool)

(assert (=> start!98042 (= b_free!23707 (not b_next!23707))))

(declare-fun tp!83826 () Bool)

(declare-fun b_and!38219 () Bool)

(assert (=> start!98042 (= tp!83826 b_and!38219)))

(declare-fun mapIsEmpty!44173 () Bool)

(declare-fun mapRes!44173 () Bool)

(assert (=> mapIsEmpty!44173 mapRes!44173))

(declare-fun b!1124238 () Bool)

(declare-fun res!751230 () Bool)

(declare-fun e!640034 () Bool)

(assert (=> b!1124238 (=> (not res!751230) (not e!640034))))

(declare-datatypes ((array!73298 0))(
  ( (array!73299 (arr!35298 (Array (_ BitVec 32) (_ BitVec 64))) (size!35835 (_ BitVec 32))) )
))
(declare-fun lt!499371 () array!73298)

(declare-datatypes ((List!24716 0))(
  ( (Nil!24713) (Cons!24712 (h!25921 (_ BitVec 64)) (t!35422 List!24716)) )
))
(declare-fun arrayNoDuplicates!0 (array!73298 (_ BitVec 32) List!24716) Bool)

(assert (=> b!1124238 (= res!751230 (arrayNoDuplicates!0 lt!499371 #b00000000000000000000000000000000 Nil!24713))))

(declare-fun b!1124239 () Bool)

(declare-fun res!751237 () Bool)

(declare-fun e!640042 () Bool)

(assert (=> b!1124239 (=> res!751237 e!640042)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1124239 (= res!751237 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1124240 () Bool)

(declare-fun res!751239 () Bool)

(declare-fun e!640041 () Bool)

(assert (=> b!1124240 (=> (not res!751239) (not e!640041))))

(declare-fun _keys!1208 () array!73298)

(assert (=> b!1124240 (= res!751239 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24713))))

(declare-fun b!1124241 () Bool)

(declare-fun res!751232 () Bool)

(assert (=> b!1124241 (=> (not res!751232) (not e!640041))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1124241 (= res!751232 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35835 _keys!1208))))))

(declare-datatypes ((V!42777 0))(
  ( (V!42778 (val!14175 Int)) )
))
(declare-fun zeroValue!944 () V!42777)

(declare-fun bm!47401 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13409 0))(
  ( (ValueCellFull!13409 (v!16809 V!42777)) (EmptyCell!13409) )
))
(declare-datatypes ((array!73300 0))(
  ( (array!73301 (arr!35299 (Array (_ BitVec 32) ValueCell!13409)) (size!35836 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73300)

(declare-fun minValue!944 () V!42777)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((tuple2!17884 0))(
  ( (tuple2!17885 (_1!8952 (_ BitVec 64)) (_2!8952 V!42777)) )
))
(declare-datatypes ((List!24717 0))(
  ( (Nil!24714) (Cons!24713 (h!25922 tuple2!17884) (t!35423 List!24717)) )
))
(declare-datatypes ((ListLongMap!15865 0))(
  ( (ListLongMap!15866 (toList!7948 List!24717)) )
))
(declare-fun call!47405 () ListLongMap!15865)

(declare-fun getCurrentListMapNoExtraKeys!4407 (array!73298 array!73300 (_ BitVec 32) (_ BitVec 32) V!42777 V!42777 (_ BitVec 32) Int) ListLongMap!15865)

(assert (=> bm!47401 (= call!47405 (getCurrentListMapNoExtraKeys!4407 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1124242 () Bool)

(declare-fun e!640038 () Bool)

(declare-fun tp_is_empty!28237 () Bool)

(assert (=> b!1124242 (= e!640038 tp_is_empty!28237)))

(declare-fun b!1124243 () Bool)

(declare-fun e!640039 () Bool)

(declare-fun call!47404 () ListLongMap!15865)

(assert (=> b!1124243 (= e!640039 (= call!47404 call!47405))))

(declare-fun b!1124244 () Bool)

(declare-fun e!640033 () Bool)

(declare-fun e!640037 () Bool)

(assert (=> b!1124244 (= e!640033 e!640037)))

(declare-fun res!751229 () Bool)

(assert (=> b!1124244 (=> res!751229 e!640037)))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1124244 (= res!751229 (not (= (select (arr!35298 _keys!1208) from!1455) k!934)))))

(assert (=> b!1124244 e!640039))

(declare-fun c!109511 () Bool)

(assert (=> b!1124244 (= c!109511 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36795 0))(
  ( (Unit!36796) )
))
(declare-fun lt!499374 () Unit!36795)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!354 (array!73298 array!73300 (_ BitVec 32) (_ BitVec 32) V!42777 V!42777 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36795)

(assert (=> b!1124244 (= lt!499374 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!354 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!47402 () Bool)

(declare-fun lt!499370 () array!73300)

(assert (=> bm!47402 (= call!47404 (getCurrentListMapNoExtraKeys!4407 lt!499371 lt!499370 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!751228 () Bool)

(assert (=> start!98042 (=> (not res!751228) (not e!640041))))

(assert (=> start!98042 (= res!751228 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35835 _keys!1208))))))

(assert (=> start!98042 e!640041))

(assert (=> start!98042 tp_is_empty!28237))

(declare-fun array_inv!26968 (array!73298) Bool)

(assert (=> start!98042 (array_inv!26968 _keys!1208)))

(assert (=> start!98042 true))

(assert (=> start!98042 tp!83826))

(declare-fun e!640043 () Bool)

(declare-fun array_inv!26969 (array!73300) Bool)

(assert (=> start!98042 (and (array_inv!26969 _values!996) e!640043)))

(declare-fun b!1124245 () Bool)

(declare-fun e!640035 () Bool)

(assert (=> b!1124245 (= e!640043 (and e!640035 mapRes!44173))))

(declare-fun condMapEmpty!44173 () Bool)

(declare-fun mapDefault!44173 () ValueCell!13409)


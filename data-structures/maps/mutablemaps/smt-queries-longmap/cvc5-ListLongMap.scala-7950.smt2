; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98576 () Bool)

(assert start!98576)

(declare-fun b_free!24145 () Bool)

(declare-fun b_next!24145 () Bool)

(assert (=> start!98576 (= b_free!24145 (not b_next!24145))))

(declare-fun tp!85147 () Bool)

(declare-fun b_and!39153 () Bool)

(assert (=> start!98576 (= tp!85147 b_and!39153)))

(declare-fun b!1141697 () Bool)

(declare-fun res!761058 () Bool)

(declare-fun e!649564 () Bool)

(assert (=> b!1141697 (=> (not res!761058) (not e!649564))))

(declare-datatypes ((array!74160 0))(
  ( (array!74161 (arr!35727 (Array (_ BitVec 32) (_ BitVec 64))) (size!36264 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74160)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43361 0))(
  ( (V!43362 (val!14394 Int)) )
))
(declare-datatypes ((ValueCell!13628 0))(
  ( (ValueCellFull!13628 (v!17032 V!43361)) (EmptyCell!13628) )
))
(declare-datatypes ((array!74162 0))(
  ( (array!74163 (arr!35728 (Array (_ BitVec 32) ValueCell!13628)) (size!36265 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74162)

(assert (=> b!1141697 (= res!761058 (and (= (size!36265 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36264 _keys!1208) (size!36265 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1141698 () Bool)

(declare-fun res!761054 () Bool)

(assert (=> b!1141698 (=> (not res!761054) (not e!649564))))

(declare-datatypes ((List!25094 0))(
  ( (Nil!25091) (Cons!25090 (h!26299 (_ BitVec 64)) (t!36238 List!25094)) )
))
(declare-fun arrayNoDuplicates!0 (array!74160 (_ BitVec 32) List!25094) Bool)

(assert (=> b!1141698 (= res!761054 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25091))))

(declare-fun b!1141699 () Bool)

(declare-fun e!649573 () Bool)

(declare-fun e!649565 () Bool)

(assert (=> b!1141699 (= e!649573 e!649565)))

(declare-fun res!761056 () Bool)

(assert (=> b!1141699 (=> res!761056 e!649565)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1141699 (= res!761056 (not (= (select (arr!35727 _keys!1208) from!1455) k!934)))))

(declare-fun e!649569 () Bool)

(assert (=> b!1141699 e!649569))

(declare-fun c!112113 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1141699 (= c!112113 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!43361)

(declare-fun defaultEntry!1004 () Int)

(declare-fun minValue!944 () V!43361)

(declare-datatypes ((Unit!37375 0))(
  ( (Unit!37376) )
))
(declare-fun lt!508714 () Unit!37375)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!506 (array!74160 array!74162 (_ BitVec 32) (_ BitVec 32) V!43361 V!43361 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37375)

(assert (=> b!1141699 (= lt!508714 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!506 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!508723 () Bool)

(declare-fun b!1141700 () Bool)

(declare-fun e!649571 () Bool)

(assert (=> b!1141700 (= e!649571 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!508723) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1141701 () Bool)

(declare-fun e!649568 () Bool)

(declare-fun e!649567 () Bool)

(assert (=> b!1141701 (= e!649568 (not e!649567))))

(declare-fun res!761059 () Bool)

(assert (=> b!1141701 (=> res!761059 e!649567)))

(assert (=> b!1141701 (= res!761059 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74160 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1141701 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!508713 () Unit!37375)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74160 (_ BitVec 64) (_ BitVec 32)) Unit!37375)

(assert (=> b!1141701 (= lt!508713 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!51278 () Bool)

(declare-datatypes ((tuple2!18294 0))(
  ( (tuple2!18295 (_1!9157 (_ BitVec 64)) (_2!9157 V!43361)) )
))
(declare-datatypes ((List!25095 0))(
  ( (Nil!25092) (Cons!25091 (h!26300 tuple2!18294) (t!36239 List!25095)) )
))
(declare-datatypes ((ListLongMap!16275 0))(
  ( (ListLongMap!16276 (toList!8153 List!25095)) )
))
(declare-fun call!51284 () ListLongMap!16275)

(declare-fun call!51288 () ListLongMap!16275)

(assert (=> bm!51278 (= call!51284 call!51288)))

(declare-fun call!51287 () Unit!37375)

(declare-fun c!112112 () Bool)

(declare-fun bm!51279 () Bool)

(declare-fun lt!508720 () ListLongMap!16275)

(declare-fun c!112111 () Bool)

(declare-fun addStillContains!799 (ListLongMap!16275 (_ BitVec 64) V!43361 (_ BitVec 64)) Unit!37375)

(assert (=> bm!51279 (= call!51287 (addStillContains!799 lt!508720 (ite (or c!112111 c!112112) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112111 c!112112) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1141702 () Bool)

(assert (=> b!1141702 (= c!112112 (and (not lt!508723) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!649577 () Unit!37375)

(declare-fun e!649572 () Unit!37375)

(assert (=> b!1141702 (= e!649577 e!649572)))

(declare-fun b!1141703 () Bool)

(declare-fun contains!6658 (ListLongMap!16275 (_ BitVec 64)) Bool)

(assert (=> b!1141703 (contains!6658 call!51288 k!934)))

(declare-fun lt!508706 () ListLongMap!16275)

(declare-fun lt!508707 () Unit!37375)

(assert (=> b!1141703 (= lt!508707 (addStillContains!799 lt!508706 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!51282 () Bool)

(assert (=> b!1141703 call!51282))

(declare-fun +!3498 (ListLongMap!16275 tuple2!18294) ListLongMap!16275)

(assert (=> b!1141703 (= lt!508706 (+!3498 lt!508720 (tuple2!18295 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!508705 () Unit!37375)

(assert (=> b!1141703 (= lt!508705 call!51287)))

(assert (=> b!1141703 (= e!649577 lt!508707)))

(declare-fun b!1141704 () Bool)

(declare-fun res!761066 () Bool)

(assert (=> b!1141704 (=> (not res!761066) (not e!649568))))

(declare-fun lt!508710 () array!74160)

(assert (=> b!1141704 (= res!761066 (arrayNoDuplicates!0 lt!508710 #b00000000000000000000000000000000 Nil!25091))))

(declare-fun res!761055 () Bool)

(assert (=> start!98576 (=> (not res!761055) (not e!649564))))

(assert (=> start!98576 (= res!761055 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36264 _keys!1208))))))

(assert (=> start!98576 e!649564))

(declare-fun tp_is_empty!28675 () Bool)

(assert (=> start!98576 tp_is_empty!28675))

(declare-fun array_inv!27254 (array!74160) Bool)

(assert (=> start!98576 (array_inv!27254 _keys!1208)))

(assert (=> start!98576 true))

(assert (=> start!98576 tp!85147))

(declare-fun e!649574 () Bool)

(declare-fun array_inv!27255 (array!74162) Bool)

(assert (=> start!98576 (and (array_inv!27255 _values!996) e!649574)))

(declare-fun b!1141705 () Bool)

(declare-fun res!761062 () Bool)

(assert (=> b!1141705 (=> (not res!761062) (not e!649564))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1141705 (= res!761062 (validKeyInArray!0 k!934))))

(declare-fun b!1141706 () Bool)

(assert (=> b!1141706 (= e!649567 e!649573)))

(declare-fun res!761053 () Bool)

(assert (=> b!1141706 (=> res!761053 e!649573)))

(assert (=> b!1141706 (= res!761053 (not (= from!1455 i!673)))))

(declare-fun lt!508718 () ListLongMap!16275)

(declare-fun lt!508717 () array!74162)

(declare-fun getCurrentListMapNoExtraKeys!4596 (array!74160 array!74162 (_ BitVec 32) (_ BitVec 32) V!43361 V!43361 (_ BitVec 32) Int) ListLongMap!16275)

(assert (=> b!1141706 (= lt!508718 (getCurrentListMapNoExtraKeys!4596 lt!508710 lt!508717 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!508708 () V!43361)

(assert (=> b!1141706 (= lt!508717 (array!74163 (store (arr!35728 _values!996) i!673 (ValueCellFull!13628 lt!508708)) (size!36265 _values!996)))))

(declare-fun dynLambda!2648 (Int (_ BitVec 64)) V!43361)

(assert (=> b!1141706 (= lt!508708 (dynLambda!2648 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!508711 () ListLongMap!16275)

(assert (=> b!1141706 (= lt!508711 (getCurrentListMapNoExtraKeys!4596 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1141707 () Bool)

(assert (=> b!1141707 (= e!649564 e!649568)))

(declare-fun res!761064 () Bool)

(assert (=> b!1141707 (=> (not res!761064) (not e!649568))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74160 (_ BitVec 32)) Bool)

(assert (=> b!1141707 (= res!761064 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508710 mask!1564))))

(assert (=> b!1141707 (= lt!508710 (array!74161 (store (arr!35727 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36264 _keys!1208)))))

(declare-fun mapNonEmpty!44837 () Bool)

(declare-fun mapRes!44837 () Bool)

(declare-fun tp!85146 () Bool)

(declare-fun e!649570 () Bool)

(assert (=> mapNonEmpty!44837 (= mapRes!44837 (and tp!85146 e!649570))))

(declare-fun mapValue!44837 () ValueCell!13628)

(declare-fun mapRest!44837 () (Array (_ BitVec 32) ValueCell!13628))

(declare-fun mapKey!44837 () (_ BitVec 32))

(assert (=> mapNonEmpty!44837 (= (arr!35728 _values!996) (store mapRest!44837 mapKey!44837 mapValue!44837))))

(declare-fun b!1141708 () Bool)

(declare-fun e!649575 () Bool)

(assert (=> b!1141708 (= e!649575 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1141709 () Bool)

(declare-fun res!761065 () Bool)

(assert (=> b!1141709 (=> (not res!761065) (not e!649564))))

(assert (=> b!1141709 (= res!761065 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!51280 () Bool)

(assert (=> bm!51280 (= call!51288 (+!3498 (ite c!112111 lt!508706 lt!508720) (ite c!112111 (tuple2!18295 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!112112 (tuple2!18295 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18295 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1141710 () Bool)

(declare-fun lt!508719 () Unit!37375)

(assert (=> b!1141710 (= e!649572 lt!508719)))

(declare-fun call!51285 () Unit!37375)

(assert (=> b!1141710 (= lt!508719 call!51285)))

(declare-fun call!51283 () Bool)

(assert (=> b!1141710 call!51283))

(declare-fun b!1141711 () Bool)

(declare-fun res!761063 () Bool)

(assert (=> b!1141711 (=> (not res!761063) (not e!649564))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1141711 (= res!761063 (validMask!0 mask!1564))))

(declare-fun call!51286 () ListLongMap!16275)

(declare-fun bm!51281 () Bool)

(assert (=> bm!51281 (= call!51286 (getCurrentListMapNoExtraKeys!4596 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141712 () Bool)

(declare-fun e!649578 () Bool)

(assert (=> b!1141712 (= e!649578 tp_is_empty!28675)))

(declare-fun b!1141713 () Bool)

(assert (=> b!1141713 (= e!649574 (and e!649578 mapRes!44837))))

(declare-fun condMapEmpty!44837 () Bool)

(declare-fun mapDefault!44837 () ValueCell!13628)


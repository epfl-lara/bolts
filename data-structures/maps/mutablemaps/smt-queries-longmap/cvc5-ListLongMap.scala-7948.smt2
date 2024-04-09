; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98564 () Bool)

(assert start!98564)

(declare-fun b_free!24133 () Bool)

(declare-fun b_next!24133 () Bool)

(assert (=> start!98564 (= b_free!24133 (not b_next!24133))))

(declare-fun tp!85110 () Bool)

(declare-fun b_and!39129 () Bool)

(assert (=> start!98564 (= tp!85110 b_and!39129)))

(declare-fun b!1141163 () Bool)

(declare-fun res!760805 () Bool)

(declare-fun e!649287 () Bool)

(assert (=> b!1141163 (=> (not res!760805) (not e!649287))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43345 0))(
  ( (V!43346 (val!14388 Int)) )
))
(declare-datatypes ((ValueCell!13622 0))(
  ( (ValueCellFull!13622 (v!17026 V!43345)) (EmptyCell!13622) )
))
(declare-datatypes ((array!74136 0))(
  ( (array!74137 (arr!35715 (Array (_ BitVec 32) ValueCell!13622)) (size!36252 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74136)

(declare-datatypes ((array!74138 0))(
  ( (array!74139 (arr!35716 (Array (_ BitVec 32) (_ BitVec 64))) (size!36253 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74138)

(assert (=> b!1141163 (= res!760805 (and (= (size!36252 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36253 _keys!1208) (size!36252 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!44819 () Bool)

(declare-fun mapRes!44819 () Bool)

(declare-fun tp!85111 () Bool)

(declare-fun e!649277 () Bool)

(assert (=> mapNonEmpty!44819 (= mapRes!44819 (and tp!85111 e!649277))))

(declare-fun mapValue!44819 () ValueCell!13622)

(declare-fun mapRest!44819 () (Array (_ BitVec 32) ValueCell!13622))

(declare-fun mapKey!44819 () (_ BitVec 32))

(assert (=> mapNonEmpty!44819 (= (arr!35715 _values!996) (store mapRest!44819 mapKey!44819 mapValue!44819))))

(declare-fun bm!51134 () Bool)

(declare-datatypes ((tuple2!18282 0))(
  ( (tuple2!18283 (_1!9151 (_ BitVec 64)) (_2!9151 V!43345)) )
))
(declare-datatypes ((List!25083 0))(
  ( (Nil!25080) (Cons!25079 (h!26288 tuple2!18282) (t!36215 List!25083)) )
))
(declare-datatypes ((ListLongMap!16263 0))(
  ( (ListLongMap!16264 (toList!8147 List!25083)) )
))
(declare-fun call!51138 () ListLongMap!16263)

(declare-fun call!51137 () ListLongMap!16263)

(assert (=> bm!51134 (= call!51138 call!51137)))

(declare-fun bm!51135 () Bool)

(declare-fun call!51141 () Bool)

(declare-fun call!51144 () Bool)

(assert (=> bm!51135 (= call!51141 call!51144)))

(declare-fun b!1141164 () Bool)

(declare-fun res!760809 () Bool)

(assert (=> b!1141164 (=> (not res!760809) (not e!649287))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1141164 (= res!760809 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36253 _keys!1208))))))

(declare-fun b!1141165 () Bool)

(declare-fun tp_is_empty!28663 () Bool)

(assert (=> b!1141165 (= e!649277 tp_is_empty!28663)))

(declare-fun b!1141166 () Bool)

(declare-fun lt!508332 () ListLongMap!16263)

(declare-fun minValue!944 () V!43345)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6652 (ListLongMap!16263 (_ BitVec 64)) Bool)

(declare-fun +!3492 (ListLongMap!16263 tuple2!18282) ListLongMap!16263)

(assert (=> b!1141166 (contains!6652 (+!3492 lt!508332 (tuple2!18283 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!37350 0))(
  ( (Unit!37351) )
))
(declare-fun lt!508331 () Unit!37350)

(declare-fun call!51143 () Unit!37350)

(assert (=> b!1141166 (= lt!508331 call!51143)))

(assert (=> b!1141166 call!51144))

(assert (=> b!1141166 (= lt!508332 call!51137)))

(declare-fun zeroValue!944 () V!43345)

(declare-fun lt!508343 () Unit!37350)

(declare-fun lt!508340 () ListLongMap!16263)

(declare-fun addStillContains!793 (ListLongMap!16263 (_ BitVec 64) V!43345 (_ BitVec 64)) Unit!37350)

(assert (=> b!1141166 (= lt!508343 (addStillContains!793 lt!508340 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!649282 () Unit!37350)

(assert (=> b!1141166 (= e!649282 lt!508331)))

(declare-fun e!649286 () Bool)

(declare-fun b!1141167 () Bool)

(declare-fun lt!508342 () Bool)

(assert (=> b!1141167 (= e!649286 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!508342) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun mapIsEmpty!44819 () Bool)

(assert (=> mapIsEmpty!44819 mapRes!44819))

(declare-fun b!1141168 () Bool)

(declare-fun c!112007 () Bool)

(assert (=> b!1141168 (= c!112007 (and (not lt!508342) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!649280 () Unit!37350)

(assert (=> b!1141168 (= e!649282 e!649280)))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!508337 () array!74136)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!508344 () array!74138)

(declare-fun call!51139 () ListLongMap!16263)

(declare-fun bm!51136 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4591 (array!74138 array!74136 (_ BitVec 32) (_ BitVec 32) V!43345 V!43345 (_ BitVec 32) Int) ListLongMap!16263)

(assert (=> bm!51136 (= call!51139 (getCurrentListMapNoExtraKeys!4591 lt!508344 lt!508337 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112006 () Bool)

(declare-fun bm!51137 () Bool)

(assert (=> bm!51137 (= call!51143 (addStillContains!793 (ite c!112006 lt!508332 lt!508340) (ite c!112006 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112007 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112006 minValue!944 (ite c!112007 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1141169 () Bool)

(declare-fun arrayContainsKey!0 (array!74138 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1141169 (= e!649286 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1141170 () Bool)

(declare-fun e!649290 () Bool)

(assert (=> b!1141170 (= e!649290 true)))

(declare-fun lt!508345 () V!43345)

(declare-fun -!1245 (ListLongMap!16263 (_ BitVec 64)) ListLongMap!16263)

(assert (=> b!1141170 (= (-!1245 (+!3492 lt!508340 (tuple2!18283 (select (arr!35716 _keys!1208) from!1455) lt!508345)) (select (arr!35716 _keys!1208) from!1455)) lt!508340)))

(declare-fun lt!508335 () Unit!37350)

(declare-fun addThenRemoveForNewKeyIsSame!100 (ListLongMap!16263 (_ BitVec 64) V!43345) Unit!37350)

(assert (=> b!1141170 (= lt!508335 (addThenRemoveForNewKeyIsSame!100 lt!508340 (select (arr!35716 _keys!1208) from!1455) lt!508345))))

(declare-fun lt!508341 () V!43345)

(declare-fun get!18166 (ValueCell!13622 V!43345) V!43345)

(assert (=> b!1141170 (= lt!508345 (get!18166 (select (arr!35715 _values!996) from!1455) lt!508341))))

(declare-fun lt!508330 () Unit!37350)

(declare-fun e!649278 () Unit!37350)

(assert (=> b!1141170 (= lt!508330 e!649278)))

(declare-fun c!112005 () Bool)

(assert (=> b!1141170 (= c!112005 (contains!6652 lt!508340 k!934))))

(assert (=> b!1141170 (= lt!508340 (getCurrentListMapNoExtraKeys!4591 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1141171 () Bool)

(declare-fun res!760813 () Bool)

(assert (=> b!1141171 (=> (not res!760813) (not e!649287))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1141171 (= res!760813 (validMask!0 mask!1564))))

(declare-fun b!1141172 () Bool)

(declare-fun e!649279 () Bool)

(assert (=> b!1141172 (= e!649287 e!649279)))

(declare-fun res!760811 () Bool)

(assert (=> b!1141172 (=> (not res!760811) (not e!649279))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74138 (_ BitVec 32)) Bool)

(assert (=> b!1141172 (= res!760811 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!508344 mask!1564))))

(assert (=> b!1141172 (= lt!508344 (array!74139 (store (arr!35716 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36253 _keys!1208)))))

(declare-fun e!649285 () Bool)

(declare-fun b!1141173 () Bool)

(assert (=> b!1141173 (= e!649285 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!51138 () Bool)

(declare-fun call!51142 () Unit!37350)

(assert (=> bm!51138 (= call!51142 call!51143)))

(declare-fun b!1141174 () Bool)

(declare-fun e!649283 () Bool)

(declare-fun call!51140 () ListLongMap!16263)

(assert (=> b!1141174 (= e!649283 (= call!51139 call!51140))))

(declare-fun bm!51139 () Bool)

(assert (=> bm!51139 (= call!51144 (contains!6652 (ite c!112006 lt!508332 call!51138) k!934))))

(declare-fun b!1141175 () Bool)

(declare-fun e!649289 () Unit!37350)

(declare-fun Unit!37352 () Unit!37350)

(assert (=> b!1141175 (= e!649289 Unit!37352)))

(declare-fun b!1141176 () Bool)

(declare-fun res!760807 () Bool)

(assert (=> b!1141176 (=> (not res!760807) (not e!649287))))

(declare-datatypes ((List!25084 0))(
  ( (Nil!25081) (Cons!25080 (h!26289 (_ BitVec 64)) (t!36216 List!25084)) )
))
(declare-fun arrayNoDuplicates!0 (array!74138 (_ BitVec 32) List!25084) Bool)

(assert (=> b!1141176 (= res!760807 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25081))))

(declare-fun b!1141177 () Bool)

(declare-fun e!649284 () Bool)

(assert (=> b!1141177 (= e!649284 tp_is_empty!28663)))

(declare-fun b!1141178 () Bool)

(assert (=> b!1141178 call!51141))

(declare-fun lt!508334 () Unit!37350)

(assert (=> b!1141178 (= lt!508334 call!51142)))

(assert (=> b!1141178 (= e!649289 lt!508334)))

(declare-fun b!1141179 () Bool)

(declare-fun e!649281 () Bool)

(assert (=> b!1141179 (= e!649281 (and e!649284 mapRes!44819))))

(declare-fun condMapEmpty!44819 () Bool)

(declare-fun mapDefault!44819 () ValueCell!13622)


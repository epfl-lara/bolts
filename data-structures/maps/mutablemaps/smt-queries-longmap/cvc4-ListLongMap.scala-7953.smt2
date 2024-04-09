; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98598 () Bool)

(assert start!98598)

(declare-fun b_free!24167 () Bool)

(declare-fun b_next!24167 () Bool)

(assert (=> start!98598 (= b_free!24167 (not b_next!24167))))

(declare-fun tp!85213 () Bool)

(declare-fun b_and!39197 () Bool)

(assert (=> start!98598 (= tp!85213 b_and!39197)))

(declare-datatypes ((V!43389 0))(
  ( (V!43390 (val!14405 Int)) )
))
(declare-fun zeroValue!944 () V!43389)

(declare-datatypes ((array!74204 0))(
  ( (array!74205 (arr!35749 (Array (_ BitVec 32) (_ BitVec 64))) (size!36286 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74204)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18316 0))(
  ( (tuple2!18317 (_1!9168 (_ BitVec 64)) (_2!9168 V!43389)) )
))
(declare-datatypes ((List!25115 0))(
  ( (Nil!25112) (Cons!25111 (h!26320 tuple2!18316) (t!36281 List!25115)) )
))
(declare-datatypes ((ListLongMap!16297 0))(
  ( (ListLongMap!16298 (toList!8164 List!25115)) )
))
(declare-fun call!51549 () ListLongMap!16297)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43389)

(declare-datatypes ((ValueCell!13639 0))(
  ( (ValueCellFull!13639 (v!17043 V!43389)) (EmptyCell!13639) )
))
(declare-datatypes ((array!74206 0))(
  ( (array!74207 (arr!35750 (Array (_ BitVec 32) ValueCell!13639)) (size!36287 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74206)

(declare-fun bm!51542 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4607 (array!74204 array!74206 (_ BitVec 32) (_ BitVec 32) V!43389 V!43389 (_ BitVec 32) Int) ListLongMap!16297)

(assert (=> bm!51542 (= call!51549 (getCurrentListMapNoExtraKeys!4607 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!650104 () Bool)

(declare-fun b!1142676 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74204 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1142676 (= e!650104 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1142677 () Bool)

(declare-datatypes ((Unit!37414 0))(
  ( (Unit!37415) )
))
(declare-fun e!650095 () Unit!37414)

(declare-fun Unit!37416 () Unit!37414)

(assert (=> b!1142677 (= e!650095 Unit!37416)))

(declare-fun b!1142678 () Bool)

(declare-fun e!650098 () Unit!37414)

(declare-fun Unit!37417 () Unit!37414)

(assert (=> b!1142678 (= e!650098 Unit!37417)))

(declare-fun b!1142679 () Bool)

(declare-fun e!650094 () Bool)

(declare-fun e!650091 () Bool)

(assert (=> b!1142679 (= e!650094 e!650091)))

(declare-fun res!761516 () Bool)

(assert (=> b!1142679 (=> res!761516 e!650091)))

(assert (=> b!1142679 (= res!761516 (not (= (select (arr!35749 _keys!1208) from!1455) k!934)))))

(declare-fun e!650100 () Bool)

(assert (=> b!1142679 e!650100))

(declare-fun c!112309 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1142679 (= c!112309 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!509404 () Unit!37414)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!513 (array!74204 array!74206 (_ BitVec 32) (_ BitVec 32) V!43389 V!43389 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37414)

(assert (=> b!1142679 (= lt!509404 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!513 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142680 () Bool)

(declare-fun call!51547 () Bool)

(assert (=> b!1142680 call!51547))

(declare-fun lt!509403 () Unit!37414)

(declare-fun call!51546 () Unit!37414)

(assert (=> b!1142680 (= lt!509403 call!51546)))

(assert (=> b!1142680 (= e!650095 lt!509403)))

(declare-fun res!761520 () Bool)

(declare-fun e!650097 () Bool)

(assert (=> start!98598 (=> (not res!761520) (not e!650097))))

(assert (=> start!98598 (= res!761520 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36286 _keys!1208))))))

(assert (=> start!98598 e!650097))

(declare-fun tp_is_empty!28697 () Bool)

(assert (=> start!98598 tp_is_empty!28697))

(declare-fun array_inv!27270 (array!74204) Bool)

(assert (=> start!98598 (array_inv!27270 _keys!1208)))

(assert (=> start!98598 true))

(assert (=> start!98598 tp!85213))

(declare-fun e!650092 () Bool)

(declare-fun array_inv!27271 (array!74206) Bool)

(assert (=> start!98598 (and (array_inv!27271 _values!996) e!650092)))

(declare-fun mapNonEmpty!44870 () Bool)

(declare-fun mapRes!44870 () Bool)

(declare-fun tp!85212 () Bool)

(declare-fun e!650093 () Bool)

(assert (=> mapNonEmpty!44870 (= mapRes!44870 (and tp!85212 e!650093))))

(declare-fun mapValue!44870 () ValueCell!13639)

(declare-fun mapKey!44870 () (_ BitVec 32))

(declare-fun mapRest!44870 () (Array (_ BitVec 32) ValueCell!13639))

(assert (=> mapNonEmpty!44870 (= (arr!35750 _values!996) (store mapRest!44870 mapKey!44870 mapValue!44870))))

(declare-fun call!51545 () ListLongMap!16297)

(declare-fun b!1142681 () Bool)

(declare-fun -!1258 (ListLongMap!16297 (_ BitVec 64)) ListLongMap!16297)

(assert (=> b!1142681 (= e!650100 (= call!51545 (-!1258 call!51549 k!934)))))

(declare-fun b!1142682 () Bool)

(declare-fun e!650103 () Unit!37414)

(assert (=> b!1142682 (= e!650103 e!650095)))

(declare-fun c!112312 () Bool)

(declare-fun lt!509405 () Bool)

(assert (=> b!1142682 (= c!112312 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!509405))))

(declare-fun c!112310 () Bool)

(declare-fun call!51548 () Unit!37414)

(declare-fun bm!51543 () Bool)

(declare-fun lt!509414 () ListLongMap!16297)

(declare-fun c!112314 () Bool)

(declare-fun lt!509417 () ListLongMap!16297)

(declare-fun addStillContains!806 (ListLongMap!16297 (_ BitVec 64) V!43389 (_ BitVec 64)) Unit!37414)

(assert (=> bm!51543 (= call!51548 (addStillContains!806 (ite c!112310 lt!509414 lt!509417) (ite c!112310 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112314 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112310 minValue!944 (ite c!112314 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1142683 () Bool)

(assert (=> b!1142683 (= e!650093 tp_is_empty!28697)))

(declare-fun bm!51544 () Bool)

(declare-fun call!51552 () ListLongMap!16297)

(declare-fun call!51550 () Bool)

(declare-fun contains!6667 (ListLongMap!16297 (_ BitVec 64)) Bool)

(assert (=> bm!51544 (= call!51550 (contains!6667 (ite c!112310 lt!509414 call!51552) k!934))))

(declare-fun b!1142684 () Bool)

(declare-fun +!3508 (ListLongMap!16297 tuple2!18316) ListLongMap!16297)

(assert (=> b!1142684 (contains!6667 (+!3508 lt!509414 (tuple2!18317 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun lt!509408 () Unit!37414)

(assert (=> b!1142684 (= lt!509408 call!51548)))

(assert (=> b!1142684 call!51550))

(declare-fun call!51551 () ListLongMap!16297)

(assert (=> b!1142684 (= lt!509414 call!51551)))

(declare-fun lt!509409 () Unit!37414)

(assert (=> b!1142684 (= lt!509409 (addStillContains!806 lt!509417 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!650101 () Unit!37414)

(assert (=> b!1142684 (= e!650101 lt!509408)))

(declare-fun b!1142685 () Bool)

(declare-fun e!650102 () Bool)

(assert (=> b!1142685 (= e!650097 e!650102)))

(declare-fun res!761519 () Bool)

(assert (=> b!1142685 (=> (not res!761519) (not e!650102))))

(declare-fun lt!509400 () array!74204)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74204 (_ BitVec 32)) Bool)

(assert (=> b!1142685 (= res!761519 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!509400 mask!1564))))

(assert (=> b!1142685 (= lt!509400 (array!74205 (store (arr!35749 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36286 _keys!1208)))))

(declare-fun b!1142686 () Bool)

(assert (=> b!1142686 (= e!650091 true)))

(declare-fun lt!509415 () V!43389)

(assert (=> b!1142686 (= (-!1258 (+!3508 lt!509417 (tuple2!18317 (select (arr!35749 _keys!1208) from!1455) lt!509415)) (select (arr!35749 _keys!1208) from!1455)) lt!509417)))

(declare-fun lt!509410 () Unit!37414)

(declare-fun addThenRemoveForNewKeyIsSame!113 (ListLongMap!16297 (_ BitVec 64) V!43389) Unit!37414)

(assert (=> b!1142686 (= lt!509410 (addThenRemoveForNewKeyIsSame!113 lt!509417 (select (arr!35749 _keys!1208) from!1455) lt!509415))))

(declare-fun lt!509418 () V!43389)

(declare-fun get!18189 (ValueCell!13639 V!43389) V!43389)

(assert (=> b!1142686 (= lt!509415 (get!18189 (select (arr!35750 _values!996) from!1455) lt!509418))))

(declare-fun lt!509407 () Unit!37414)

(assert (=> b!1142686 (= lt!509407 e!650098)))

(declare-fun c!112313 () Bool)

(assert (=> b!1142686 (= c!112313 (contains!6667 lt!509417 k!934))))

(assert (=> b!1142686 (= lt!509417 (getCurrentListMapNoExtraKeys!4607 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142687 () Bool)

(declare-fun res!761522 () Bool)

(assert (=> b!1142687 (=> (not res!761522) (not e!650097))))

(assert (=> b!1142687 (= res!761522 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36286 _keys!1208))))))

(declare-fun b!1142688 () Bool)

(declare-fun res!761517 () Bool)

(assert (=> b!1142688 (=> (not res!761517) (not e!650097))))

(assert (=> b!1142688 (= res!761517 (and (= (size!36287 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36286 _keys!1208) (size!36287 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun lt!509406 () array!74206)

(declare-fun bm!51545 () Bool)

(assert (=> bm!51545 (= call!51545 (getCurrentListMapNoExtraKeys!4607 lt!509400 lt!509406 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1142689 () Bool)

(declare-fun res!761524 () Bool)

(assert (=> b!1142689 (=> (not res!761524) (not e!650102))))

(declare-datatypes ((List!25116 0))(
  ( (Nil!25113) (Cons!25112 (h!26321 (_ BitVec 64)) (t!36282 List!25116)) )
))
(declare-fun arrayNoDuplicates!0 (array!74204 (_ BitVec 32) List!25116) Bool)

(assert (=> b!1142689 (= res!761524 (arrayNoDuplicates!0 lt!509400 #b00000000000000000000000000000000 Nil!25113))))

(declare-fun b!1142690 () Bool)

(declare-fun e!650105 () Bool)

(assert (=> b!1142690 (= e!650105 tp_is_empty!28697)))

(declare-fun b!1142691 () Bool)

(assert (=> b!1142691 (= e!650092 (and e!650105 mapRes!44870))))

(declare-fun condMapEmpty!44870 () Bool)

(declare-fun mapDefault!44870 () ValueCell!13639)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98736 () Bool)

(assert start!98736)

(declare-fun b_free!24305 () Bool)

(declare-fun b_next!24305 () Bool)

(assert (=> start!98736 (= b_free!24305 (not b_next!24305))))

(declare-fun tp!85626 () Bool)

(declare-fun b_and!39473 () Bool)

(assert (=> start!98736 (= tp!85626 b_and!39473)))

(declare-fun b!1148978 () Bool)

(declare-fun res!764578 () Bool)

(declare-fun e!653579 () Bool)

(assert (=> b!1148978 (=> (not res!764578) (not e!653579))))

(declare-datatypes ((array!74474 0))(
  ( (array!74475 (arr!35884 (Array (_ BitVec 32) (_ BitVec 64))) (size!36421 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74474)

(declare-fun i!673 () (_ BitVec 32))

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1148978 (= res!764578 (= (select (arr!35884 _keys!1208) i!673) k!934))))

(declare-fun b!1148979 () Bool)

(declare-datatypes ((V!43573 0))(
  ( (V!43574 (val!14474 Int)) )
))
(declare-datatypes ((tuple2!18440 0))(
  ( (tuple2!18441 (_1!9230 (_ BitVec 64)) (_2!9230 V!43573)) )
))
(declare-datatypes ((List!25233 0))(
  ( (Nil!25230) (Cons!25229 (h!26438 tuple2!18440) (t!36537 List!25233)) )
))
(declare-datatypes ((ListLongMap!16421 0))(
  ( (ListLongMap!16422 (toList!8226 List!25233)) )
))
(declare-fun lt!513763 () ListLongMap!16421)

(declare-fun minValue!944 () V!43573)

(declare-fun contains!6721 (ListLongMap!16421 (_ BitVec 64)) Bool)

(declare-fun +!3564 (ListLongMap!16421 tuple2!18440) ListLongMap!16421)

(assert (=> b!1148979 (contains!6721 (+!3564 lt!513763 (tuple2!18441 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!37685 0))(
  ( (Unit!37686) )
))
(declare-fun lt!513753 () Unit!37685)

(declare-fun addStillContains!864 (ListLongMap!16421 (_ BitVec 64) V!43573 (_ BitVec 64)) Unit!37685)

(assert (=> b!1148979 (= lt!513753 (addStillContains!864 lt!513763 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun call!53203 () Bool)

(assert (=> b!1148979 call!53203))

(declare-fun call!53201 () ListLongMap!16421)

(assert (=> b!1148979 (= lt!513763 call!53201)))

(declare-fun lt!513749 () Unit!37685)

(declare-fun call!53202 () Unit!37685)

(assert (=> b!1148979 (= lt!513749 call!53202)))

(declare-fun e!653573 () Unit!37685)

(assert (=> b!1148979 (= e!653573 lt!513753)))

(declare-fun bm!53198 () Bool)

(declare-fun call!53208 () Bool)

(assert (=> bm!53198 (= call!53208 call!53203)))

(declare-fun bm!53199 () Bool)

(declare-fun call!53206 () ListLongMap!16421)

(assert (=> bm!53199 (= call!53206 call!53201)))

(declare-fun b!1148980 () Bool)

(declare-fun e!653574 () Bool)

(declare-fun tp_is_empty!28835 () Bool)

(assert (=> b!1148980 (= e!653574 tp_is_empty!28835)))

(declare-fun b!1148981 () Bool)

(assert (=> b!1148981 call!53208))

(declare-fun lt!513765 () Unit!37685)

(declare-fun call!53205 () Unit!37685)

(assert (=> b!1148981 (= lt!513765 call!53205)))

(declare-fun e!653576 () Unit!37685)

(assert (=> b!1148981 (= e!653576 lt!513765)))

(declare-fun b!1148982 () Bool)

(declare-fun e!653565 () Bool)

(declare-fun call!53207 () ListLongMap!16421)

(declare-fun call!53204 () ListLongMap!16421)

(assert (=> b!1148982 (= e!653565 (= call!53207 call!53204))))

(declare-fun zeroValue!944 () V!43573)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!53200 () Bool)

(declare-fun lt!513750 () array!74474)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13708 0))(
  ( (ValueCellFull!13708 (v!17112 V!43573)) (EmptyCell!13708) )
))
(declare-datatypes ((array!74476 0))(
  ( (array!74477 (arr!35885 (Array (_ BitVec 32) ValueCell!13708)) (size!36422 (_ BitVec 32))) )
))
(declare-fun lt!513747 () array!74476)

(declare-fun getCurrentListMapNoExtraKeys!4667 (array!74474 array!74476 (_ BitVec 32) (_ BitVec 32) V!43573 V!43573 (_ BitVec 32) Int) ListLongMap!16421)

(assert (=> bm!53200 (= call!53207 (getCurrentListMapNoExtraKeys!4667 lt!513750 lt!513747 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148983 () Bool)

(declare-fun e!653578 () Unit!37685)

(assert (=> b!1148983 (= e!653578 e!653576)))

(declare-fun c!113551 () Bool)

(declare-fun lt!513751 () Bool)

(assert (=> b!1148983 (= c!113551 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!513751))))

(declare-fun mapIsEmpty!45077 () Bool)

(declare-fun mapRes!45077 () Bool)

(assert (=> mapIsEmpty!45077 mapRes!45077))

(declare-fun c!113554 () Bool)

(declare-fun bm!53201 () Bool)

(assert (=> bm!53201 (= call!53203 (contains!6721 (ite c!113554 lt!513763 call!53206) k!934))))

(declare-fun b!1148985 () Bool)

(declare-fun e!653577 () Bool)

(assert (=> b!1148985 (= e!653577 tp_is_empty!28835)))

(declare-fun b!1148986 () Bool)

(declare-fun e!653570 () Bool)

(declare-fun e!653567 () Bool)

(assert (=> b!1148986 (= e!653570 e!653567)))

(declare-fun res!764586 () Bool)

(assert (=> b!1148986 (=> res!764586 e!653567)))

(assert (=> b!1148986 (= res!764586 (not (= from!1455 i!673)))))

(declare-fun lt!513746 () ListLongMap!16421)

(assert (=> b!1148986 (= lt!513746 (getCurrentListMapNoExtraKeys!4667 lt!513750 lt!513747 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!513759 () V!43573)

(declare-fun _values!996 () array!74476)

(assert (=> b!1148986 (= lt!513747 (array!74477 (store (arr!35885 _values!996) i!673 (ValueCellFull!13708 lt!513759)) (size!36422 _values!996)))))

(declare-fun dynLambda!2698 (Int (_ BitVec 64)) V!43573)

(assert (=> b!1148986 (= lt!513759 (dynLambda!2698 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!513757 () ListLongMap!16421)

(assert (=> b!1148986 (= lt!513757 (getCurrentListMapNoExtraKeys!4667 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!53202 () Bool)

(assert (=> bm!53202 (= call!53204 (getCurrentListMapNoExtraKeys!4667 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148987 () Bool)

(declare-fun res!764576 () Bool)

(assert (=> b!1148987 (=> (not res!764576) (not e!653579))))

(assert (=> b!1148987 (= res!764576 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36421 _keys!1208))))))

(declare-fun b!1148988 () Bool)

(declare-fun e!653580 () Bool)

(assert (=> b!1148988 (= e!653580 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1455) (size!36421 _keys!1208))))))

(declare-fun e!653566 () Bool)

(assert (=> b!1148988 e!653566))

(declare-fun res!764588 () Bool)

(assert (=> b!1148988 (=> (not res!764588) (not e!653566))))

(declare-fun lt!513748 () ListLongMap!16421)

(declare-fun lt!513755 () V!43573)

(declare-fun -!1314 (ListLongMap!16421 (_ BitVec 64)) ListLongMap!16421)

(assert (=> b!1148988 (= res!764588 (= (-!1314 (+!3564 lt!513748 (tuple2!18441 (select (arr!35884 _keys!1208) from!1455) lt!513755)) (select (arr!35884 _keys!1208) from!1455)) lt!513748))))

(declare-fun lt!513754 () Unit!37685)

(declare-fun addThenRemoveForNewKeyIsSame!163 (ListLongMap!16421 (_ BitVec 64) V!43573) Unit!37685)

(assert (=> b!1148988 (= lt!513754 (addThenRemoveForNewKeyIsSame!163 lt!513748 (select (arr!35884 _keys!1208) from!1455) lt!513755))))

(declare-fun get!18285 (ValueCell!13708 V!43573) V!43573)

(assert (=> b!1148988 (= lt!513755 (get!18285 (select (arr!35885 _values!996) from!1455) lt!513759))))

(declare-fun lt!513756 () Unit!37685)

(declare-fun e!653575 () Unit!37685)

(assert (=> b!1148988 (= lt!513756 e!653575)))

(declare-fun c!113553 () Bool)

(assert (=> b!1148988 (= c!113553 (contains!6721 lt!513748 k!934))))

(assert (=> b!1148988 (= lt!513748 (getCurrentListMapNoExtraKeys!4667 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148989 () Bool)

(assert (=> b!1148989 (= e!653567 e!653580)))

(declare-fun res!764574 () Bool)

(assert (=> b!1148989 (=> res!764574 e!653580)))

(assert (=> b!1148989 (= res!764574 (not (= (select (arr!35884 _keys!1208) from!1455) k!934)))))

(assert (=> b!1148989 e!653565))

(declare-fun c!113555 () Bool)

(assert (=> b!1148989 (= c!113555 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!513758 () Unit!37685)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!557 (array!74474 array!74476 (_ BitVec 32) (_ BitVec 32) V!43573 V!43573 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37685)

(assert (=> b!1148989 (= lt!513758 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!557 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1148990 () Bool)

(declare-fun Unit!37687 () Unit!37685)

(assert (=> b!1148990 (= e!653575 Unit!37687)))

(assert (=> b!1148990 (= lt!513751 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1148990 (= c!113554 (and (not lt!513751) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!513760 () Unit!37685)

(assert (=> b!1148990 (= lt!513760 e!653573)))

(declare-fun lt!513761 () Unit!37685)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!450 (array!74474 array!74476 (_ BitVec 32) (_ BitVec 32) V!43573 V!43573 (_ BitVec 64) (_ BitVec 32) Int) Unit!37685)

(assert (=> b!1148990 (= lt!513761 (lemmaListMapContainsThenArrayContainsFrom!450 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113552 () Bool)

(assert (=> b!1148990 (= c!113552 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!764575 () Bool)

(declare-fun e!653571 () Bool)

(assert (=> b!1148990 (= res!764575 e!653571)))

(declare-fun e!653568 () Bool)

(assert (=> b!1148990 (=> (not res!764575) (not e!653568))))

(assert (=> b!1148990 e!653568))

(declare-fun lt!513764 () Unit!37685)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74474 (_ BitVec 32) (_ BitVec 32)) Unit!37685)

(assert (=> b!1148990 (= lt!513764 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25234 0))(
  ( (Nil!25231) (Cons!25230 (h!26439 (_ BitVec 64)) (t!36538 List!25234)) )
))
(declare-fun arrayNoDuplicates!0 (array!74474 (_ BitVec 32) List!25234) Bool)

(assert (=> b!1148990 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25231)))

(declare-fun lt!513752 () Unit!37685)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74474 (_ BitVec 64) (_ BitVec 32) List!25234) Unit!37685)

(assert (=> b!1148990 (= lt!513752 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25231))))

(assert (=> b!1148990 false))

(declare-fun b!1148991 () Bool)

(assert (=> b!1148991 (= e!653566 (= (-!1314 lt!513757 k!934) lt!513748))))

(declare-fun b!1148992 () Bool)

(declare-fun e!653572 () Bool)

(assert (=> b!1148992 (= e!653572 (not e!653570))))

(declare-fun res!764579 () Bool)

(assert (=> b!1148992 (=> res!764579 e!653570)))

(assert (=> b!1148992 (= res!764579 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74474 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1148992 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!513762 () Unit!37685)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74474 (_ BitVec 64) (_ BitVec 32)) Unit!37685)

(assert (=> b!1148992 (= lt!513762 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1148993 () Bool)

(assert (=> b!1148993 (= e!653571 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!513751) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1148994 () Bool)

(declare-fun res!764581 () Bool)

(assert (=> b!1148994 (=> (not res!764581) (not e!653579))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1148994 (= res!764581 (validMask!0 mask!1564))))

(declare-fun b!1148995 () Bool)

(declare-fun Unit!37688 () Unit!37685)

(assert (=> b!1148995 (= e!653575 Unit!37688)))

(declare-fun b!1148996 () Bool)

(declare-fun Unit!37689 () Unit!37685)

(assert (=> b!1148996 (= e!653576 Unit!37689)))

(declare-fun b!1148997 () Bool)

(declare-fun res!764577 () Bool)

(assert (=> b!1148997 (=> (not res!764577) (not e!653579))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74474 (_ BitVec 32)) Bool)

(assert (=> b!1148997 (= res!764577 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1148998 () Bool)

(assert (=> b!1148998 (= e!653571 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1148999 () Bool)

(assert (=> b!1148999 (= e!653568 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1149000 () Bool)

(declare-fun e!653569 () Bool)

(assert (=> b!1149000 (= e!653569 (and e!653577 mapRes!45077))))

(declare-fun condMapEmpty!45077 () Bool)

(declare-fun mapDefault!45077 () ValueCell!13708)


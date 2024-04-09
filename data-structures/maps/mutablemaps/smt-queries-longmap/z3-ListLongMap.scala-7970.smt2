; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98698 () Bool)

(assert start!98698)

(declare-fun b_free!24267 () Bool)

(declare-fun b_next!24267 () Bool)

(assert (=> start!98698 (= b_free!24267 (not b_next!24267))))

(declare-fun tp!85512 () Bool)

(declare-fun b_and!39397 () Bool)

(assert (=> start!98698 (= tp!85512 b_and!39397)))

(declare-fun b!1147230 () Bool)

(declare-datatypes ((Unit!37603 0))(
  ( (Unit!37604) )
))
(declare-fun e!652600 () Unit!37603)

(declare-fun Unit!37605 () Unit!37603)

(assert (=> b!1147230 (= e!652600 Unit!37605)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun b!1147231 () Bool)

(declare-fun lt!512553 () Bool)

(declare-fun e!652610 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1147231 (= e!652610 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!512553) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-datatypes ((array!74398 0))(
  ( (array!74399 (arr!35846 (Array (_ BitVec 32) (_ BitVec 64))) (size!36383 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74398)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun b!1147232 () Bool)

(declare-fun arrayContainsKey!0 (array!74398 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1147232 (= e!652610 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-datatypes ((V!43523 0))(
  ( (V!43524 (val!14455 Int)) )
))
(declare-fun zeroValue!944 () V!43523)

(declare-datatypes ((tuple2!18402 0))(
  ( (tuple2!18403 (_1!9211 (_ BitVec 64)) (_2!9211 V!43523)) )
))
(declare-datatypes ((List!25196 0))(
  ( (Nil!25193) (Cons!25192 (h!26401 tuple2!18402) (t!36462 List!25196)) )
))
(declare-datatypes ((ListLongMap!16383 0))(
  ( (ListLongMap!16384 (toList!8207 List!25196)) )
))
(declare-fun call!52745 () ListLongMap!16383)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!512562 () array!74398)

(declare-datatypes ((ValueCell!13689 0))(
  ( (ValueCellFull!13689 (v!17093 V!43523)) (EmptyCell!13689) )
))
(declare-datatypes ((array!74400 0))(
  ( (array!74401 (arr!35847 (Array (_ BitVec 32) ValueCell!13689)) (size!36384 (_ BitVec 32))) )
))
(declare-fun lt!512561 () array!74400)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!52742 () Bool)

(declare-fun minValue!944 () V!43523)

(declare-fun getCurrentListMapNoExtraKeys!4648 (array!74398 array!74400 (_ BitVec 32) (_ BitVec 32) V!43523 V!43523 (_ BitVec 32) Int) ListLongMap!16383)

(assert (=> bm!52742 (= call!52745 (getCurrentListMapNoExtraKeys!4648 lt!512562 lt!512561 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!512552 () ListLongMap!16383)

(declare-fun lt!512550 () ListLongMap!16383)

(declare-fun b!1147233 () Bool)

(declare-fun e!652601 () Bool)

(declare-fun -!1297 (ListLongMap!16383 (_ BitVec 64)) ListLongMap!16383)

(assert (=> b!1147233 (= e!652601 (= (-!1297 lt!512552 k0!934) lt!512550))))

(declare-fun b!1147234 () Bool)

(declare-fun e!652607 () Bool)

(declare-fun e!652604 () Bool)

(assert (=> b!1147234 (= e!652607 (not e!652604))))

(declare-fun res!763720 () Bool)

(assert (=> b!1147234 (=> res!763720 e!652604)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1147234 (= res!763720 (bvsgt from!1455 i!673))))

(assert (=> b!1147234 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!512568 () Unit!37603)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74398 (_ BitVec 64) (_ BitVec 32)) Unit!37603)

(assert (=> b!1147234 (= lt!512568 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun mapNonEmpty!45020 () Bool)

(declare-fun mapRes!45020 () Bool)

(declare-fun tp!85513 () Bool)

(declare-fun e!652603 () Bool)

(assert (=> mapNonEmpty!45020 (= mapRes!45020 (and tp!85513 e!652603))))

(declare-fun mapKey!45020 () (_ BitVec 32))

(declare-fun mapValue!45020 () ValueCell!13689)

(declare-fun _values!996 () array!74400)

(declare-fun mapRest!45020 () (Array (_ BitVec 32) ValueCell!13689))

(assert (=> mapNonEmpty!45020 (= (arr!35847 _values!996) (store mapRest!45020 mapKey!45020 mapValue!45020))))

(declare-fun b!1147235 () Bool)

(declare-fun e!652597 () Bool)

(declare-fun e!652598 () Bool)

(assert (=> b!1147235 (= e!652597 (and e!652598 mapRes!45020))))

(declare-fun condMapEmpty!45020 () Bool)

(declare-fun mapDefault!45020 () ValueCell!13689)

(assert (=> b!1147235 (= condMapEmpty!45020 (= (arr!35847 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13689)) mapDefault!45020)))))

(declare-fun b!1147236 () Bool)

(declare-fun tp_is_empty!28797 () Bool)

(assert (=> b!1147236 (= e!652598 tp_is_empty!28797)))

(declare-fun bm!52743 () Bool)

(declare-fun call!52749 () Unit!37603)

(declare-fun call!52750 () Unit!37603)

(assert (=> bm!52743 (= call!52749 call!52750)))

(declare-fun bm!52744 () Bool)

(declare-fun c!113214 () Bool)

(declare-fun c!113210 () Bool)

(declare-fun addStillContains!846 (ListLongMap!16383 (_ BitVec 64) V!43523 (_ BitVec 64)) Unit!37603)

(assert (=> bm!52744 (= call!52750 (addStillContains!846 lt!512550 (ite (or c!113214 c!113210) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!113214 c!113210) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1147238 () Bool)

(declare-fun res!763724 () Bool)

(declare-fun e!652609 () Bool)

(assert (=> b!1147238 (=> (not res!763724) (not e!652609))))

(assert (=> b!1147238 (= res!763724 (and (= (size!36384 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36383 _keys!1208) (size!36384 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1147239 () Bool)

(declare-fun e!652608 () Unit!37603)

(assert (=> b!1147239 (= e!652608 e!652600)))

(declare-fun c!113213 () Bool)

(assert (=> b!1147239 (= c!113213 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!512553))))

(declare-fun b!1147240 () Bool)

(assert (=> b!1147240 (= e!652609 e!652607)))

(declare-fun res!763722 () Bool)

(assert (=> b!1147240 (=> (not res!763722) (not e!652607))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74398 (_ BitVec 32)) Bool)

(assert (=> b!1147240 (= res!763722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!512562 mask!1564))))

(assert (=> b!1147240 (= lt!512562 (array!74399 (store (arr!35846 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36383 _keys!1208)))))

(declare-fun b!1147241 () Bool)

(declare-fun e!652606 () Unit!37603)

(declare-fun Unit!37606 () Unit!37603)

(assert (=> b!1147241 (= e!652606 Unit!37606)))

(declare-fun b!1147242 () Bool)

(assert (=> b!1147242 (= e!652603 tp_is_empty!28797)))

(declare-fun call!52747 () ListLongMap!16383)

(declare-fun e!652611 () Bool)

(declare-fun b!1147243 () Bool)

(assert (=> b!1147243 (= e!652611 (= call!52745 (-!1297 call!52747 k0!934)))))

(declare-fun b!1147244 () Bool)

(assert (=> b!1147244 (= e!652611 (= call!52745 call!52747))))

(declare-fun bm!52745 () Bool)

(declare-fun call!52752 () Bool)

(declare-fun call!52748 () Bool)

(assert (=> bm!52745 (= call!52752 call!52748)))

(declare-fun b!1147245 () Bool)

(declare-fun res!763727 () Bool)

(assert (=> b!1147245 (=> (not res!763727) (not e!652609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1147245 (= res!763727 (validKeyInArray!0 k0!934))))

(declare-fun bm!52746 () Bool)

(declare-fun lt!512554 () ListLongMap!16383)

(declare-fun call!52746 () ListLongMap!16383)

(declare-fun contains!6704 (ListLongMap!16383 (_ BitVec 64)) Bool)

(assert (=> bm!52746 (= call!52748 (contains!6704 (ite c!113214 lt!512554 call!52746) k0!934))))

(declare-fun b!1147246 () Bool)

(declare-fun e!652599 () Bool)

(assert (=> b!1147246 (= e!652604 e!652599)))

(declare-fun res!763725 () Bool)

(assert (=> b!1147246 (=> res!763725 e!652599)))

(assert (=> b!1147246 (= res!763725 (not (= from!1455 i!673)))))

(declare-fun lt!512563 () ListLongMap!16383)

(assert (=> b!1147246 (= lt!512563 (getCurrentListMapNoExtraKeys!4648 lt!512562 lt!512561 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!512551 () V!43523)

(assert (=> b!1147246 (= lt!512561 (array!74401 (store (arr!35847 _values!996) i!673 (ValueCellFull!13689 lt!512551)) (size!36384 _values!996)))))

(declare-fun dynLambda!2684 (Int (_ BitVec 64)) V!43523)

(assert (=> b!1147246 (= lt!512551 (dynLambda!2684 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1147246 (= lt!512552 (getCurrentListMapNoExtraKeys!4648 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1147247 () Bool)

(declare-fun res!763723 () Bool)

(assert (=> b!1147247 (=> (not res!763723) (not e!652609))))

(assert (=> b!1147247 (= res!763723 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36383 _keys!1208))))))

(declare-fun bm!52747 () Bool)

(declare-fun call!52751 () ListLongMap!16383)

(assert (=> bm!52747 (= call!52746 call!52751)))

(declare-fun b!1147248 () Bool)

(declare-fun Unit!37607 () Unit!37603)

(assert (=> b!1147248 (= e!652606 Unit!37607)))

(assert (=> b!1147248 (= lt!512553 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1147248 (= c!113214 (and (not lt!512553) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!512556 () Unit!37603)

(declare-fun e!652602 () Unit!37603)

(assert (=> b!1147248 (= lt!512556 e!652602)))

(declare-fun lt!512565 () Unit!37603)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!434 (array!74398 array!74400 (_ BitVec 32) (_ BitVec 32) V!43523 V!43523 (_ BitVec 64) (_ BitVec 32) Int) Unit!37603)

(assert (=> b!1147248 (= lt!512565 (lemmaListMapContainsThenArrayContainsFrom!434 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!113209 () Bool)

(assert (=> b!1147248 (= c!113209 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763729 () Bool)

(assert (=> b!1147248 (= res!763729 e!652610)))

(declare-fun e!652596 () Bool)

(assert (=> b!1147248 (=> (not res!763729) (not e!652596))))

(assert (=> b!1147248 e!652596))

(declare-fun lt!512548 () Unit!37603)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74398 (_ BitVec 32) (_ BitVec 32)) Unit!37603)

(assert (=> b!1147248 (= lt!512548 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25197 0))(
  ( (Nil!25194) (Cons!25193 (h!26402 (_ BitVec 64)) (t!36463 List!25197)) )
))
(declare-fun arrayNoDuplicates!0 (array!74398 (_ BitVec 32) List!25197) Bool)

(assert (=> b!1147248 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25194)))

(declare-fun lt!512566 () Unit!37603)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74398 (_ BitVec 64) (_ BitVec 32) List!25197) Unit!37603)

(assert (=> b!1147248 (= lt!512566 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25194))))

(assert (=> b!1147248 false))

(declare-fun b!1147249 () Bool)

(declare-fun e!652595 () Bool)

(assert (=> b!1147249 (= e!652599 e!652595)))

(declare-fun res!763730 () Bool)

(assert (=> b!1147249 (=> res!763730 e!652595)))

(assert (=> b!1147249 (= res!763730 (not (= (select (arr!35846 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1147249 e!652611))

(declare-fun c!113212 () Bool)

(assert (=> b!1147249 (= c!113212 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!512567 () Unit!37603)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!544 (array!74398 array!74400 (_ BitVec 32) (_ BitVec 32) V!43523 V!43523 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37603)

(assert (=> b!1147249 (= lt!512567 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!544 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!52748 () Bool)

(assert (=> bm!52748 (= call!52747 (getCurrentListMapNoExtraKeys!4648 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147250 () Bool)

(declare-fun res!763732 () Bool)

(assert (=> b!1147250 (=> (not res!763732) (not e!652609))))

(assert (=> b!1147250 (= res!763732 (= (select (arr!35846 _keys!1208) i!673) k0!934))))

(declare-fun b!1147251 () Bool)

(declare-fun res!763719 () Bool)

(assert (=> b!1147251 (=> (not res!763719) (not e!652609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1147251 (= res!763719 (validMask!0 mask!1564))))

(declare-fun b!1147252 () Bool)

(assert (=> b!1147252 (= e!652595 true)))

(assert (=> b!1147252 e!652601))

(declare-fun res!763726 () Bool)

(assert (=> b!1147252 (=> (not res!763726) (not e!652601))))

(declare-fun lt!512549 () V!43523)

(declare-fun +!3547 (ListLongMap!16383 tuple2!18402) ListLongMap!16383)

(assert (=> b!1147252 (= res!763726 (= (-!1297 (+!3547 lt!512550 (tuple2!18403 (select (arr!35846 _keys!1208) from!1455) lt!512549)) (select (arr!35846 _keys!1208) from!1455)) lt!512550))))

(declare-fun lt!512559 () Unit!37603)

(declare-fun addThenRemoveForNewKeyIsSame!147 (ListLongMap!16383 (_ BitVec 64) V!43523) Unit!37603)

(assert (=> b!1147252 (= lt!512559 (addThenRemoveForNewKeyIsSame!147 lt!512550 (select (arr!35846 _keys!1208) from!1455) lt!512549))))

(declare-fun get!18257 (ValueCell!13689 V!43523) V!43523)

(assert (=> b!1147252 (= lt!512549 (get!18257 (select (arr!35847 _values!996) from!1455) lt!512551))))

(declare-fun lt!512564 () Unit!37603)

(assert (=> b!1147252 (= lt!512564 e!652606)))

(declare-fun c!113211 () Bool)

(assert (=> b!1147252 (= c!113211 (contains!6704 lt!512550 k0!934))))

(assert (=> b!1147252 (= lt!512550 (getCurrentListMapNoExtraKeys!4648 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1147237 () Bool)

(assert (=> b!1147237 (contains!6704 call!52751 k0!934)))

(declare-fun lt!512558 () Unit!37603)

(assert (=> b!1147237 (= lt!512558 (addStillContains!846 lt!512554 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1147237 call!52748))

(assert (=> b!1147237 (= lt!512554 (+!3547 lt!512550 (tuple2!18403 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!512560 () Unit!37603)

(assert (=> b!1147237 (= lt!512560 call!52750)))

(assert (=> b!1147237 (= e!652602 lt!512558)))

(declare-fun res!763721 () Bool)

(assert (=> start!98698 (=> (not res!763721) (not e!652609))))

(assert (=> start!98698 (= res!763721 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36383 _keys!1208))))))

(assert (=> start!98698 e!652609))

(assert (=> start!98698 tp_is_empty!28797))

(declare-fun array_inv!27338 (array!74398) Bool)

(assert (=> start!98698 (array_inv!27338 _keys!1208)))

(assert (=> start!98698 true))

(assert (=> start!98698 tp!85512))

(declare-fun array_inv!27339 (array!74400) Bool)

(assert (=> start!98698 (and (array_inv!27339 _values!996) e!652597)))

(declare-fun b!1147253 () Bool)

(assert (=> b!1147253 call!52752))

(declare-fun lt!512557 () Unit!37603)

(assert (=> b!1147253 (= lt!512557 call!52749)))

(assert (=> b!1147253 (= e!652600 lt!512557)))

(declare-fun b!1147254 () Bool)

(declare-fun lt!512555 () Unit!37603)

(assert (=> b!1147254 (= e!652608 lt!512555)))

(assert (=> b!1147254 (= lt!512555 call!52749)))

(assert (=> b!1147254 call!52752))

(declare-fun b!1147255 () Bool)

(declare-fun res!763728 () Bool)

(assert (=> b!1147255 (=> (not res!763728) (not e!652607))))

(assert (=> b!1147255 (= res!763728 (arrayNoDuplicates!0 lt!512562 #b00000000000000000000000000000000 Nil!25194))))

(declare-fun b!1147256 () Bool)

(assert (=> b!1147256 (= e!652596 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!45020 () Bool)

(assert (=> mapIsEmpty!45020 mapRes!45020))

(declare-fun b!1147257 () Bool)

(assert (=> b!1147257 (= c!113210 (and (not lt!512553) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1147257 (= e!652602 e!652608)))

(declare-fun bm!52749 () Bool)

(assert (=> bm!52749 (= call!52751 (+!3547 (ite c!113214 lt!512554 lt!512550) (ite c!113214 (tuple2!18403 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!113210 (tuple2!18403 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18403 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1147258 () Bool)

(declare-fun res!763731 () Bool)

(assert (=> b!1147258 (=> (not res!763731) (not e!652609))))

(assert (=> b!1147258 (= res!763731 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1147259 () Bool)

(declare-fun res!763733 () Bool)

(assert (=> b!1147259 (=> (not res!763733) (not e!652609))))

(assert (=> b!1147259 (= res!763733 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25194))))

(assert (= (and start!98698 res!763721) b!1147251))

(assert (= (and b!1147251 res!763719) b!1147238))

(assert (= (and b!1147238 res!763724) b!1147258))

(assert (= (and b!1147258 res!763731) b!1147259))

(assert (= (and b!1147259 res!763733) b!1147247))

(assert (= (and b!1147247 res!763723) b!1147245))

(assert (= (and b!1147245 res!763727) b!1147250))

(assert (= (and b!1147250 res!763732) b!1147240))

(assert (= (and b!1147240 res!763722) b!1147255))

(assert (= (and b!1147255 res!763728) b!1147234))

(assert (= (and b!1147234 (not res!763720)) b!1147246))

(assert (= (and b!1147246 (not res!763725)) b!1147249))

(assert (= (and b!1147249 c!113212) b!1147243))

(assert (= (and b!1147249 (not c!113212)) b!1147244))

(assert (= (or b!1147243 b!1147244) bm!52742))

(assert (= (or b!1147243 b!1147244) bm!52748))

(assert (= (and b!1147249 (not res!763730)) b!1147252))

(assert (= (and b!1147252 c!113211) b!1147248))

(assert (= (and b!1147252 (not c!113211)) b!1147241))

(assert (= (and b!1147248 c!113214) b!1147237))

(assert (= (and b!1147248 (not c!113214)) b!1147257))

(assert (= (and b!1147257 c!113210) b!1147254))

(assert (= (and b!1147257 (not c!113210)) b!1147239))

(assert (= (and b!1147239 c!113213) b!1147253))

(assert (= (and b!1147239 (not c!113213)) b!1147230))

(assert (= (or b!1147254 b!1147253) bm!52743))

(assert (= (or b!1147254 b!1147253) bm!52747))

(assert (= (or b!1147254 b!1147253) bm!52745))

(assert (= (or b!1147237 bm!52745) bm!52746))

(assert (= (or b!1147237 bm!52743) bm!52744))

(assert (= (or b!1147237 bm!52747) bm!52749))

(assert (= (and b!1147248 c!113209) b!1147232))

(assert (= (and b!1147248 (not c!113209)) b!1147231))

(assert (= (and b!1147248 res!763729) b!1147256))

(assert (= (and b!1147252 res!763726) b!1147233))

(assert (= (and b!1147235 condMapEmpty!45020) mapIsEmpty!45020))

(assert (= (and b!1147235 (not condMapEmpty!45020)) mapNonEmpty!45020))

(get-info :version)

(assert (= (and mapNonEmpty!45020 ((_ is ValueCellFull!13689) mapValue!45020)) b!1147242))

(assert (= (and b!1147235 ((_ is ValueCellFull!13689) mapDefault!45020)) b!1147236))

(assert (= start!98698 b!1147235))

(declare-fun b_lambda!19391 () Bool)

(assert (=> (not b_lambda!19391) (not b!1147246)))

(declare-fun t!36461 () Bool)

(declare-fun tb!9087 () Bool)

(assert (=> (and start!98698 (= defaultEntry!1004 defaultEntry!1004) t!36461) tb!9087))

(declare-fun result!18731 () Bool)

(assert (=> tb!9087 (= result!18731 tp_is_empty!28797)))

(assert (=> b!1147246 t!36461))

(declare-fun b_and!39399 () Bool)

(assert (= b_and!39397 (and (=> t!36461 result!18731) b_and!39399)))

(declare-fun m!1057933 () Bool)

(assert (=> bm!52749 m!1057933))

(declare-fun m!1057935 () Bool)

(assert (=> b!1147245 m!1057935))

(declare-fun m!1057937 () Bool)

(assert (=> bm!52744 m!1057937))

(declare-fun m!1057939 () Bool)

(assert (=> b!1147237 m!1057939))

(declare-fun m!1057941 () Bool)

(assert (=> b!1147237 m!1057941))

(declare-fun m!1057943 () Bool)

(assert (=> b!1147237 m!1057943))

(declare-fun m!1057945 () Bool)

(assert (=> bm!52748 m!1057945))

(declare-fun m!1057947 () Bool)

(assert (=> b!1147250 m!1057947))

(declare-fun m!1057949 () Bool)

(assert (=> bm!52746 m!1057949))

(declare-fun m!1057951 () Bool)

(assert (=> b!1147233 m!1057951))

(declare-fun m!1057953 () Bool)

(assert (=> b!1147234 m!1057953))

(declare-fun m!1057955 () Bool)

(assert (=> b!1147234 m!1057955))

(declare-fun m!1057957 () Bool)

(assert (=> b!1147259 m!1057957))

(declare-fun m!1057959 () Bool)

(assert (=> b!1147249 m!1057959))

(declare-fun m!1057961 () Bool)

(assert (=> b!1147249 m!1057961))

(declare-fun m!1057963 () Bool)

(assert (=> b!1147232 m!1057963))

(assert (=> b!1147252 m!1057945))

(declare-fun m!1057965 () Bool)

(assert (=> b!1147252 m!1057965))

(declare-fun m!1057967 () Bool)

(assert (=> b!1147252 m!1057967))

(assert (=> b!1147252 m!1057959))

(declare-fun m!1057969 () Bool)

(assert (=> b!1147252 m!1057969))

(assert (=> b!1147252 m!1057967))

(assert (=> b!1147252 m!1057959))

(declare-fun m!1057971 () Bool)

(assert (=> b!1147252 m!1057971))

(assert (=> b!1147252 m!1057965))

(declare-fun m!1057973 () Bool)

(assert (=> b!1147252 m!1057973))

(assert (=> b!1147252 m!1057959))

(declare-fun m!1057975 () Bool)

(assert (=> b!1147252 m!1057975))

(declare-fun m!1057977 () Bool)

(assert (=> b!1147243 m!1057977))

(declare-fun m!1057979 () Bool)

(assert (=> start!98698 m!1057979))

(declare-fun m!1057981 () Bool)

(assert (=> start!98698 m!1057981))

(declare-fun m!1057983 () Bool)

(assert (=> b!1147255 m!1057983))

(declare-fun m!1057985 () Bool)

(assert (=> b!1147246 m!1057985))

(declare-fun m!1057987 () Bool)

(assert (=> b!1147246 m!1057987))

(declare-fun m!1057989 () Bool)

(assert (=> b!1147246 m!1057989))

(declare-fun m!1057991 () Bool)

(assert (=> b!1147246 m!1057991))

(declare-fun m!1057993 () Bool)

(assert (=> b!1147258 m!1057993))

(declare-fun m!1057995 () Bool)

(assert (=> bm!52742 m!1057995))

(declare-fun m!1057997 () Bool)

(assert (=> mapNonEmpty!45020 m!1057997))

(assert (=> b!1147256 m!1057963))

(declare-fun m!1057999 () Bool)

(assert (=> b!1147248 m!1057999))

(declare-fun m!1058001 () Bool)

(assert (=> b!1147248 m!1058001))

(declare-fun m!1058003 () Bool)

(assert (=> b!1147248 m!1058003))

(declare-fun m!1058005 () Bool)

(assert (=> b!1147248 m!1058005))

(declare-fun m!1058007 () Bool)

(assert (=> b!1147240 m!1058007))

(declare-fun m!1058009 () Bool)

(assert (=> b!1147240 m!1058009))

(declare-fun m!1058011 () Bool)

(assert (=> b!1147251 m!1058011))

(check-sat b_and!39399 (not b!1147245) (not b!1147240) (not b!1147258) (not b!1147243) (not b!1147252) (not bm!52748) (not b!1147232) (not bm!52749) (not bm!52742) (not b!1147248) (not b!1147237) tp_is_empty!28797 (not b!1147233) (not b!1147255) (not bm!52744) (not b!1147259) (not b_lambda!19391) (not b!1147251) (not start!98698) (not b_next!24267) (not mapNonEmpty!45020) (not b!1147249) (not bm!52746) (not b!1147246) (not b!1147234) (not b!1147256))
(check-sat b_and!39399 (not b_next!24267))

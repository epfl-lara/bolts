; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98618 () Bool)

(assert start!98618)

(declare-fun b_free!24187 () Bool)

(declare-fun b_next!24187 () Bool)

(assert (=> start!98618 (= b_free!24187 (not b_next!24187))))

(declare-fun tp!85273 () Bool)

(declare-fun b_and!39237 () Bool)

(assert (=> start!98618 (= tp!85273 b_and!39237)))

(declare-datatypes ((V!43417 0))(
  ( (V!43418 (val!14415 Int)) )
))
(declare-fun zeroValue!944 () V!43417)

(declare-datatypes ((Unit!37455 0))(
  ( (Unit!37456) )
))
(declare-fun call!51790 () Unit!37455)

(declare-fun c!112489 () Bool)

(declare-fun c!112491 () Bool)

(declare-fun bm!51782 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-datatypes ((tuple2!18334 0))(
  ( (tuple2!18335 (_1!9177 (_ BitVec 64)) (_2!9177 V!43417)) )
))
(declare-datatypes ((List!25132 0))(
  ( (Nil!25129) (Cons!25128 (h!26337 tuple2!18334) (t!36318 List!25132)) )
))
(declare-datatypes ((ListLongMap!16315 0))(
  ( (ListLongMap!16316 (toList!8173 List!25132)) )
))
(declare-fun lt!510030 () ListLongMap!16315)

(declare-fun minValue!944 () V!43417)

(declare-fun addStillContains!814 (ListLongMap!16315 (_ BitVec 64) V!43417 (_ BitVec 64)) Unit!37455)

(assert (=> bm!51782 (= call!51790 (addStillContains!814 lt!510030 (ite (or c!112491 c!112489) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!112491 c!112489) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1143566 () Bool)

(declare-fun res!761940 () Bool)

(declare-fun e!650576 () Bool)

(assert (=> b!1143566 (=> (not res!761940) (not e!650576))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!74242 0))(
  ( (array!74243 (arr!35768 (Array (_ BitVec 32) (_ BitVec 64))) (size!36305 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74242)

(assert (=> b!1143566 (= res!761940 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36305 _keys!1208))))))

(declare-fun bm!51783 () Bool)

(declare-fun call!51786 () ListLongMap!16315)

(declare-fun call!51787 () ListLongMap!16315)

(assert (=> bm!51783 (= call!51786 call!51787)))

(declare-fun b!1143567 () Bool)

(declare-fun res!761948 () Bool)

(assert (=> b!1143567 (=> (not res!761948) (not e!650576))))

(assert (=> b!1143567 (= res!761948 (= (select (arr!35768 _keys!1208) i!673) k!934))))

(declare-fun b!1143568 () Bool)

(declare-fun e!650584 () Unit!37455)

(declare-fun e!650578 () Unit!37455)

(assert (=> b!1143568 (= e!650584 e!650578)))

(declare-fun c!112490 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!510043 () Bool)

(assert (=> b!1143568 (= c!112490 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!510043))))

(declare-fun b!1143569 () Bool)

(declare-fun e!650573 () Bool)

(assert (=> b!1143569 (= e!650576 e!650573)))

(declare-fun res!761944 () Bool)

(assert (=> b!1143569 (=> (not res!761944) (not e!650573))))

(declare-fun lt!510040 () array!74242)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74242 (_ BitVec 32)) Bool)

(assert (=> b!1143569 (= res!761944 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!510040 mask!1564))))

(assert (=> b!1143569 (= lt!510040 (array!74243 (store (arr!35768 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36305 _keys!1208)))))

(declare-fun b!1143570 () Bool)

(declare-fun res!761942 () Bool)

(assert (=> b!1143570 (=> (not res!761942) (not e!650576))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1143570 (= res!761942 (validKeyInArray!0 k!934))))

(declare-fun b!1143571 () Bool)

(declare-fun res!761941 () Bool)

(assert (=> b!1143571 (=> (not res!761941) (not e!650576))))

(declare-datatypes ((ValueCell!13649 0))(
  ( (ValueCellFull!13649 (v!17053 V!43417)) (EmptyCell!13649) )
))
(declare-datatypes ((array!74244 0))(
  ( (array!74245 (arr!35769 (Array (_ BitVec 32) ValueCell!13649)) (size!36306 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74244)

(assert (=> b!1143571 (= res!761941 (and (= (size!36306 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36305 _keys!1208) (size!36306 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!44900 () Bool)

(declare-fun mapRes!44900 () Bool)

(declare-fun tp!85272 () Bool)

(declare-fun e!650571 () Bool)

(assert (=> mapNonEmpty!44900 (= mapRes!44900 (and tp!85272 e!650571))))

(declare-fun mapKey!44900 () (_ BitVec 32))

(declare-fun mapValue!44900 () ValueCell!13649)

(declare-fun mapRest!44900 () (Array (_ BitVec 32) ValueCell!13649))

(assert (=> mapNonEmpty!44900 (= (arr!35769 _values!996) (store mapRest!44900 mapKey!44900 mapValue!44900))))

(declare-fun b!1143572 () Bool)

(declare-fun res!761943 () Bool)

(assert (=> b!1143572 (=> (not res!761943) (not e!650576))))

(declare-datatypes ((List!25133 0))(
  ( (Nil!25130) (Cons!25129 (h!26338 (_ BitVec 64)) (t!36319 List!25133)) )
))
(declare-fun arrayNoDuplicates!0 (array!74242 (_ BitVec 32) List!25133) Bool)

(assert (=> b!1143572 (= res!761943 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25130))))

(declare-fun b!1143573 () Bool)

(declare-fun tp_is_empty!28717 () Bool)

(assert (=> b!1143573 (= e!650571 tp_is_empty!28717)))

(declare-fun b!1143574 () Bool)

(declare-fun e!650582 () Bool)

(declare-fun e!650583 () Bool)

(assert (=> b!1143574 (= e!650582 e!650583)))

(declare-fun res!761936 () Bool)

(assert (=> b!1143574 (=> res!761936 e!650583)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1143574 (= res!761936 (not (= (select (arr!35768 _keys!1208) from!1455) k!934)))))

(declare-fun e!650574 () Bool)

(assert (=> b!1143574 e!650574))

(declare-fun c!112493 () Bool)

(assert (=> b!1143574 (= c!112493 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!510032 () Unit!37455)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!521 (array!74242 array!74244 (_ BitVec 32) (_ BitVec 32) V!43417 V!43417 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37455)

(assert (=> b!1143574 (= lt!510032 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!521 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143575 () Bool)

(declare-fun e!650580 () Bool)

(assert (=> b!1143575 (= e!650580 tp_is_empty!28717)))

(declare-fun b!1143576 () Bool)

(declare-fun res!761935 () Bool)

(assert (=> b!1143576 (=> (not res!761935) (not e!650576))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1143576 (= res!761935 (validMask!0 mask!1564))))

(declare-fun b!1143577 () Bool)

(declare-fun e!650575 () Unit!37455)

(declare-fun Unit!37457 () Unit!37455)

(assert (=> b!1143577 (= e!650575 Unit!37457)))

(declare-fun bm!51784 () Bool)

(declare-fun call!51789 () ListLongMap!16315)

(declare-fun getCurrentListMapNoExtraKeys!4615 (array!74242 array!74244 (_ BitVec 32) (_ BitVec 32) V!43417 V!43417 (_ BitVec 32) Int) ListLongMap!16315)

(assert (=> bm!51784 (= call!51789 (getCurrentListMapNoExtraKeys!4615 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143579 () Bool)

(declare-fun res!761947 () Bool)

(assert (=> b!1143579 (=> (not res!761947) (not e!650573))))

(assert (=> b!1143579 (= res!761947 (arrayNoDuplicates!0 lt!510040 #b00000000000000000000000000000000 Nil!25130))))

(declare-fun b!1143580 () Bool)

(declare-fun call!51788 () ListLongMap!16315)

(assert (=> b!1143580 (= e!650574 (= call!51788 call!51789))))

(declare-fun res!761937 () Bool)

(assert (=> start!98618 (=> (not res!761937) (not e!650576))))

(assert (=> start!98618 (= res!761937 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36305 _keys!1208))))))

(assert (=> start!98618 e!650576))

(assert (=> start!98618 tp_is_empty!28717))

(declare-fun array_inv!27284 (array!74242) Bool)

(assert (=> start!98618 (array_inv!27284 _keys!1208)))

(assert (=> start!98618 true))

(assert (=> start!98618 tp!85273))

(declare-fun e!650572 () Bool)

(declare-fun array_inv!27285 (array!74244) Bool)

(assert (=> start!98618 (and (array_inv!27285 _values!996) e!650572)))

(declare-fun b!1143578 () Bool)

(declare-fun res!761938 () Bool)

(assert (=> b!1143578 (=> (not res!761938) (not e!650576))))

(assert (=> b!1143578 (= res!761938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1143581 () Bool)

(declare-fun lt!510034 () Unit!37455)

(assert (=> b!1143581 (= e!650584 lt!510034)))

(declare-fun call!51792 () Unit!37455)

(assert (=> b!1143581 (= lt!510034 call!51792)))

(declare-fun call!51791 () Bool)

(assert (=> b!1143581 call!51791))

(declare-fun e!650577 () Bool)

(declare-fun b!1143582 () Bool)

(declare-fun arrayContainsKey!0 (array!74242 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1143582 (= e!650577 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1143583 () Bool)

(declare-fun e!650579 () Bool)

(assert (=> b!1143583 (= e!650573 (not e!650579))))

(declare-fun res!761946 () Bool)

(assert (=> b!1143583 (=> res!761946 e!650579)))

(assert (=> b!1143583 (= res!761946 (bvsgt from!1455 i!673))))

(assert (=> b!1143583 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!510036 () Unit!37455)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74242 (_ BitVec 64) (_ BitVec 32)) Unit!37455)

(assert (=> b!1143583 (= lt!510036 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1143584 () Bool)

(assert (=> b!1143584 (= c!112489 (and (not lt!510043) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!650586 () Unit!37455)

(assert (=> b!1143584 (= e!650586 e!650584)))

(declare-fun b!1143585 () Bool)

(assert (=> b!1143585 (= e!650583 true)))

(declare-fun lt!510047 () V!43417)

(declare-fun -!1266 (ListLongMap!16315 (_ BitVec 64)) ListLongMap!16315)

(declare-fun +!3517 (ListLongMap!16315 tuple2!18334) ListLongMap!16315)

(assert (=> b!1143585 (= (-!1266 (+!3517 lt!510030 (tuple2!18335 (select (arr!35768 _keys!1208) from!1455) lt!510047)) (select (arr!35768 _keys!1208) from!1455)) lt!510030)))

(declare-fun lt!510028 () Unit!37455)

(declare-fun addThenRemoveForNewKeyIsSame!121 (ListLongMap!16315 (_ BitVec 64) V!43417) Unit!37455)

(assert (=> b!1143585 (= lt!510028 (addThenRemoveForNewKeyIsSame!121 lt!510030 (select (arr!35768 _keys!1208) from!1455) lt!510047))))

(declare-fun lt!510039 () V!43417)

(declare-fun get!18205 (ValueCell!13649 V!43417) V!43417)

(assert (=> b!1143585 (= lt!510047 (get!18205 (select (arr!35769 _values!996) from!1455) lt!510039))))

(declare-fun lt!510041 () Unit!37455)

(assert (=> b!1143585 (= lt!510041 e!650575)))

(declare-fun c!112494 () Bool)

(declare-fun contains!6675 (ListLongMap!16315 (_ BitVec 64)) Bool)

(assert (=> b!1143585 (= c!112494 (contains!6675 lt!510030 k!934))))

(assert (=> b!1143585 (= lt!510030 (getCurrentListMapNoExtraKeys!4615 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1143586 () Bool)

(assert (=> b!1143586 (= e!650574 (= call!51788 (-!1266 call!51789 k!934)))))

(declare-fun b!1143587 () Bool)

(declare-fun Unit!37458 () Unit!37455)

(assert (=> b!1143587 (= e!650578 Unit!37458)))

(declare-fun lt!510046 () array!74244)

(declare-fun bm!51785 () Bool)

(assert (=> bm!51785 (= call!51788 (getCurrentListMapNoExtraKeys!4615 lt!510040 lt!510046 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!51786 () Bool)

(declare-fun call!51785 () Bool)

(assert (=> bm!51786 (= call!51791 call!51785)))

(declare-fun bm!51787 () Bool)

(assert (=> bm!51787 (= call!51792 call!51790)))

(declare-fun lt!510037 () ListLongMap!16315)

(declare-fun bm!51788 () Bool)

(assert (=> bm!51788 (= call!51785 (contains!6675 (ite c!112491 lt!510037 call!51786) k!934))))

(declare-fun b!1143588 () Bool)

(assert (=> b!1143588 (= e!650572 (and e!650580 mapRes!44900))))

(declare-fun condMapEmpty!44900 () Bool)

(declare-fun mapDefault!44900 () ValueCell!13649)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!99034 () Bool)

(assert start!99034)

(declare-fun b_free!24603 () Bool)

(declare-fun b_next!24603 () Bool)

(assert (=> start!99034 (= b_free!24603 (not b_next!24603))))

(declare-fun tp!86520 () Bool)

(declare-fun b_and!40069 () Bool)

(assert (=> start!99034 (= tp!86520 b_and!40069)))

(declare-fun b!1162686 () Bool)

(declare-fun e!661179 () Bool)

(declare-fun tp_is_empty!29133 () Bool)

(assert (=> b!1162686 (= e!661179 tp_is_empty!29133)))

(declare-datatypes ((V!43971 0))(
  ( (V!43972 (val!14623 Int)) )
))
(declare-fun zeroValue!944 () V!43971)

(declare-datatypes ((array!75056 0))(
  ( (array!75057 (arr!36175 (Array (_ BitVec 32) (_ BitVec 64))) (size!36712 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75056)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13857 0))(
  ( (ValueCellFull!13857 (v!17261 V!43971)) (EmptyCell!13857) )
))
(declare-datatypes ((array!75058 0))(
  ( (array!75059 (arr!36176 (Array (_ BitVec 32) ValueCell!13857)) (size!36713 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75058)

(declare-fun minValue!944 () V!43971)

(declare-datatypes ((tuple2!18716 0))(
  ( (tuple2!18717 (_1!9368 (_ BitVec 64)) (_2!9368 V!43971)) )
))
(declare-datatypes ((List!25492 0))(
  ( (Nil!25489) (Cons!25488 (h!26697 tuple2!18716) (t!37094 List!25492)) )
))
(declare-datatypes ((ListLongMap!16697 0))(
  ( (ListLongMap!16698 (toList!8364 List!25492)) )
))
(declare-fun call!56777 () ListLongMap!16697)

(declare-fun bm!56774 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4798 (array!75056 array!75058 (_ BitVec 32) (_ BitVec 32) V!43971 V!43971 (_ BitVec 32) Int) ListLongMap!16697)

(assert (=> bm!56774 (= call!56777 (getCurrentListMapNoExtraKeys!4798 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56775 () Bool)

(declare-datatypes ((Unit!38260 0))(
  ( (Unit!38261) )
))
(declare-fun call!56778 () Unit!38260)

(declare-fun call!56782 () Unit!38260)

(assert (=> bm!56775 (= call!56778 call!56782)))

(declare-fun res!771290 () Bool)

(declare-fun e!661175 () Bool)

(assert (=> start!99034 (=> (not res!771290) (not e!661175))))

(assert (=> start!99034 (= res!771290 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36712 _keys!1208))))))

(assert (=> start!99034 e!661175))

(assert (=> start!99034 tp_is_empty!29133))

(declare-fun array_inv!27552 (array!75056) Bool)

(assert (=> start!99034 (array_inv!27552 _keys!1208)))

(assert (=> start!99034 true))

(assert (=> start!99034 tp!86520))

(declare-fun e!661176 () Bool)

(declare-fun array_inv!27553 (array!75058) Bool)

(assert (=> start!99034 (and (array_inv!27553 _values!996) e!661176)))

(declare-fun b!1162687 () Bool)

(declare-fun e!661167 () Unit!38260)

(declare-fun Unit!38262 () Unit!38260)

(assert (=> b!1162687 (= e!661167 Unit!38262)))

(declare-fun lt!523590 () Bool)

(assert (=> b!1162687 (= lt!523590 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116233 () Bool)

(assert (=> b!1162687 (= c!116233 (and (not lt!523590) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!523579 () Unit!38260)

(declare-fun e!661170 () Unit!38260)

(assert (=> b!1162687 (= lt!523579 e!661170)))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun lt!523597 () Unit!38260)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!553 (array!75056 array!75058 (_ BitVec 32) (_ BitVec 32) V!43971 V!43971 (_ BitVec 64) (_ BitVec 32) Int) Unit!38260)

(assert (=> b!1162687 (= lt!523597 (lemmaListMapContainsThenArrayContainsFrom!553 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116235 () Bool)

(assert (=> b!1162687 (= c!116235 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771288 () Bool)

(declare-fun e!661178 () Bool)

(assert (=> b!1162687 (= res!771288 e!661178)))

(declare-fun e!661169 () Bool)

(assert (=> b!1162687 (=> (not res!771288) (not e!661169))))

(assert (=> b!1162687 e!661169))

(declare-fun lt!523581 () Unit!38260)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75056 (_ BitVec 32) (_ BitVec 32)) Unit!38260)

(assert (=> b!1162687 (= lt!523581 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25493 0))(
  ( (Nil!25490) (Cons!25489 (h!26698 (_ BitVec 64)) (t!37095 List!25493)) )
))
(declare-fun arrayNoDuplicates!0 (array!75056 (_ BitVec 32) List!25493) Bool)

(assert (=> b!1162687 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25490)))

(declare-fun lt!523583 () Unit!38260)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75056 (_ BitVec 64) (_ BitVec 32) List!25493) Unit!38260)

(assert (=> b!1162687 (= lt!523583 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25490))))

(assert (=> b!1162687 false))

(declare-fun b!1162688 () Bool)

(declare-fun c!116236 () Bool)

(assert (=> b!1162688 (= c!116236 (and (not lt!523590) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!661166 () Unit!38260)

(assert (=> b!1162688 (= e!661170 e!661166)))

(declare-fun mapIsEmpty!45524 () Bool)

(declare-fun mapRes!45524 () Bool)

(assert (=> mapIsEmpty!45524 mapRes!45524))

(declare-fun call!56779 () ListLongMap!16697)

(declare-fun bm!56776 () Bool)

(declare-fun call!56781 () Bool)

(declare-fun lt!523578 () ListLongMap!16697)

(declare-fun contains!6842 (ListLongMap!16697 (_ BitVec 64)) Bool)

(assert (=> bm!56776 (= call!56781 (contains!6842 (ite c!116233 lt!523578 call!56779) k0!934))))

(declare-fun b!1162689 () Bool)

(declare-fun e!661171 () Unit!38260)

(declare-fun Unit!38263 () Unit!38260)

(assert (=> b!1162689 (= e!661171 Unit!38263)))

(declare-fun b!1162690 () Bool)

(declare-fun arrayContainsKey!0 (array!75056 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1162690 (= e!661169 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162691 () Bool)

(declare-fun e!661173 () Bool)

(assert (=> b!1162691 (= e!661173 true)))

(declare-fun e!661172 () Bool)

(assert (=> b!1162691 e!661172))

(declare-fun res!771293 () Bool)

(assert (=> b!1162691 (=> (not res!771293) (not e!661172))))

(declare-fun lt!523585 () ListLongMap!16697)

(declare-fun lt!523589 () ListLongMap!16697)

(assert (=> b!1162691 (= res!771293 (= lt!523585 lt!523589))))

(declare-fun lt!523584 () ListLongMap!16697)

(declare-fun -!1432 (ListLongMap!16697 (_ BitVec 64)) ListLongMap!16697)

(assert (=> b!1162691 (= lt!523585 (-!1432 lt!523584 k0!934))))

(declare-fun lt!523595 () V!43971)

(declare-fun +!3685 (ListLongMap!16697 tuple2!18716) ListLongMap!16697)

(assert (=> b!1162691 (= (-!1432 (+!3685 lt!523589 (tuple2!18717 (select (arr!36175 _keys!1208) from!1455) lt!523595)) (select (arr!36175 _keys!1208) from!1455)) lt!523589)))

(declare-fun lt!523586 () Unit!38260)

(declare-fun addThenRemoveForNewKeyIsSame!266 (ListLongMap!16697 (_ BitVec 64) V!43971) Unit!38260)

(assert (=> b!1162691 (= lt!523586 (addThenRemoveForNewKeyIsSame!266 lt!523589 (select (arr!36175 _keys!1208) from!1455) lt!523595))))

(declare-fun lt!523588 () V!43971)

(declare-fun get!18488 (ValueCell!13857 V!43971) V!43971)

(assert (=> b!1162691 (= lt!523595 (get!18488 (select (arr!36176 _values!996) from!1455) lt!523588))))

(declare-fun lt!523599 () Unit!38260)

(assert (=> b!1162691 (= lt!523599 e!661167)))

(declare-fun c!116238 () Bool)

(assert (=> b!1162691 (= c!116238 (contains!6842 lt!523589 k0!934))))

(assert (=> b!1162691 (= lt!523589 (getCurrentListMapNoExtraKeys!4798 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162692 () Bool)

(declare-fun res!771280 () Bool)

(assert (=> b!1162692 (=> (not res!771280) (not e!661175))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75056 (_ BitVec 32)) Bool)

(assert (=> b!1162692 (= res!771280 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1162693 () Bool)

(declare-fun lt!523580 () array!75058)

(declare-fun lt!523592 () array!75056)

(assert (=> b!1162693 (= e!661172 (= lt!523585 (getCurrentListMapNoExtraKeys!4798 lt!523592 lt!523580 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1162694 () Bool)

(declare-fun res!771284 () Bool)

(declare-fun e!661164 () Bool)

(assert (=> b!1162694 (=> (not res!771284) (not e!661164))))

(assert (=> b!1162694 (= res!771284 (arrayNoDuplicates!0 lt!523592 #b00000000000000000000000000000000 Nil!25490))))

(declare-fun b!1162695 () Bool)

(declare-fun call!56783 () ListLongMap!16697)

(assert (=> b!1162695 (contains!6842 call!56783 k0!934)))

(declare-fun lt!523598 () Unit!38260)

(declare-fun addStillContains!983 (ListLongMap!16697 (_ BitVec 64) V!43971 (_ BitVec 64)) Unit!38260)

(assert (=> b!1162695 (= lt!523598 (addStillContains!983 lt!523578 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1162695 call!56781))

(assert (=> b!1162695 (= lt!523578 (+!3685 lt!523589 (tuple2!18717 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!523593 () Unit!38260)

(assert (=> b!1162695 (= lt!523593 call!56782)))

(assert (=> b!1162695 (= e!661170 lt!523598)))

(declare-fun b!1162696 () Bool)

(assert (=> b!1162696 (= e!661178 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1162697 () Bool)

(declare-fun res!771287 () Bool)

(assert (=> b!1162697 (=> (not res!771287) (not e!661175))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1162697 (= res!771287 (= (select (arr!36175 _keys!1208) i!673) k0!934))))

(declare-fun bm!56777 () Bool)

(assert (=> bm!56777 (= call!56783 (+!3685 (ite c!116233 lt!523578 lt!523589) (ite c!116233 (tuple2!18717 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!116236 (tuple2!18717 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18717 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun mapNonEmpty!45524 () Bool)

(declare-fun tp!86521 () Bool)

(declare-fun e!661163 () Bool)

(assert (=> mapNonEmpty!45524 (= mapRes!45524 (and tp!86521 e!661163))))

(declare-fun mapRest!45524 () (Array (_ BitVec 32) ValueCell!13857))

(declare-fun mapKey!45524 () (_ BitVec 32))

(declare-fun mapValue!45524 () ValueCell!13857)

(assert (=> mapNonEmpty!45524 (= (arr!36176 _values!996) (store mapRest!45524 mapKey!45524 mapValue!45524))))

(declare-fun b!1162698 () Bool)

(declare-fun res!771292 () Bool)

(assert (=> b!1162698 (=> (not res!771292) (not e!661175))))

(assert (=> b!1162698 (= res!771292 (and (= (size!36713 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36712 _keys!1208) (size!36713 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1162699 () Bool)

(declare-fun res!771283 () Bool)

(assert (=> b!1162699 (=> (not res!771283) (not e!661175))))

(assert (=> b!1162699 (= res!771283 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36712 _keys!1208))))))

(declare-fun b!1162700 () Bool)

(declare-fun e!661165 () Bool)

(declare-fun e!661174 () Bool)

(assert (=> b!1162700 (= e!661165 e!661174)))

(declare-fun res!771281 () Bool)

(assert (=> b!1162700 (=> res!771281 e!661174)))

(assert (=> b!1162700 (= res!771281 (not (= from!1455 i!673)))))

(declare-fun lt!523587 () ListLongMap!16697)

(assert (=> b!1162700 (= lt!523587 (getCurrentListMapNoExtraKeys!4798 lt!523592 lt!523580 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1162700 (= lt!523580 (array!75059 (store (arr!36176 _values!996) i!673 (ValueCellFull!13857 lt!523588)) (size!36713 _values!996)))))

(declare-fun dynLambda!2796 (Int (_ BitVec 64)) V!43971)

(assert (=> b!1162700 (= lt!523588 (dynLambda!2796 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1162700 (= lt!523584 (getCurrentListMapNoExtraKeys!4798 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!56778 () Bool)

(declare-fun call!56780 () Bool)

(assert (=> bm!56778 (= call!56780 call!56781)))

(declare-fun b!1162701 () Bool)

(assert (=> b!1162701 (= e!661163 tp_is_empty!29133)))

(declare-fun bm!56779 () Bool)

(declare-fun call!56784 () ListLongMap!16697)

(assert (=> bm!56779 (= call!56784 (getCurrentListMapNoExtraKeys!4798 lt!523592 lt!523580 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56780 () Bool)

(assert (=> bm!56780 (= call!56779 call!56783)))

(declare-fun b!1162702 () Bool)

(assert (=> b!1162702 (= e!661176 (and e!661179 mapRes!45524))))

(declare-fun condMapEmpty!45524 () Bool)

(declare-fun mapDefault!45524 () ValueCell!13857)

(assert (=> b!1162702 (= condMapEmpty!45524 (= (arr!36176 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13857)) mapDefault!45524)))))

(declare-fun bm!56781 () Bool)

(assert (=> bm!56781 (= call!56782 (addStillContains!983 lt!523589 (ite (or c!116233 c!116236) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!116233 c!116236) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1162703 () Bool)

(declare-fun lt!523591 () Unit!38260)

(assert (=> b!1162703 (= e!661166 lt!523591)))

(assert (=> b!1162703 (= lt!523591 call!56778)))

(assert (=> b!1162703 call!56780))

(declare-fun b!1162704 () Bool)

(declare-fun res!771291 () Bool)

(assert (=> b!1162704 (=> (not res!771291) (not e!661175))))

(assert (=> b!1162704 (= res!771291 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25490))))

(declare-fun b!1162705 () Bool)

(assert (=> b!1162705 (= e!661175 e!661164)))

(declare-fun res!771279 () Bool)

(assert (=> b!1162705 (=> (not res!771279) (not e!661164))))

(assert (=> b!1162705 (= res!771279 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!523592 mask!1564))))

(assert (=> b!1162705 (= lt!523592 (array!75057 (store (arr!36175 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36712 _keys!1208)))))

(declare-fun e!661177 () Bool)

(declare-fun b!1162706 () Bool)

(assert (=> b!1162706 (= e!661177 (= call!56784 (-!1432 call!56777 k0!934)))))

(declare-fun b!1162707 () Bool)

(assert (=> b!1162707 (= e!661166 e!661171)))

(declare-fun c!116234 () Bool)

(assert (=> b!1162707 (= c!116234 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!523590))))

(declare-fun b!1162708 () Bool)

(assert (=> b!1162708 (= e!661164 (not e!661165))))

(declare-fun res!771285 () Bool)

(assert (=> b!1162708 (=> res!771285 e!661165)))

(assert (=> b!1162708 (= res!771285 (bvsgt from!1455 i!673))))

(assert (=> b!1162708 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!523582 () Unit!38260)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75056 (_ BitVec 64) (_ BitVec 32)) Unit!38260)

(assert (=> b!1162708 (= lt!523582 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1162709 () Bool)

(assert (=> b!1162709 (= e!661174 e!661173)))

(declare-fun res!771289 () Bool)

(assert (=> b!1162709 (=> res!771289 e!661173)))

(assert (=> b!1162709 (= res!771289 (not (= (select (arr!36175 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1162709 e!661177))

(declare-fun c!116237 () Bool)

(assert (=> b!1162709 (= c!116237 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!523596 () Unit!38260)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!654 (array!75056 array!75058 (_ BitVec 32) (_ BitVec 32) V!43971 V!43971 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38260)

(assert (=> b!1162709 (= lt!523596 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!654 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1162710 () Bool)

(assert (=> b!1162710 (= e!661177 (= call!56784 call!56777))))

(declare-fun b!1162711 () Bool)

(declare-fun res!771282 () Bool)

(assert (=> b!1162711 (=> (not res!771282) (not e!661175))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1162711 (= res!771282 (validMask!0 mask!1564))))

(declare-fun b!1162712 () Bool)

(declare-fun res!771286 () Bool)

(assert (=> b!1162712 (=> (not res!771286) (not e!661175))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1162712 (= res!771286 (validKeyInArray!0 k0!934))))

(declare-fun b!1162713 () Bool)

(assert (=> b!1162713 call!56780))

(declare-fun lt!523594 () Unit!38260)

(assert (=> b!1162713 (= lt!523594 call!56778)))

(assert (=> b!1162713 (= e!661171 lt!523594)))

(declare-fun b!1162714 () Bool)

(declare-fun Unit!38264 () Unit!38260)

(assert (=> b!1162714 (= e!661167 Unit!38264)))

(declare-fun b!1162715 () Bool)

(assert (=> b!1162715 (= e!661178 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!523590) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!99034 res!771290) b!1162711))

(assert (= (and b!1162711 res!771282) b!1162698))

(assert (= (and b!1162698 res!771292) b!1162692))

(assert (= (and b!1162692 res!771280) b!1162704))

(assert (= (and b!1162704 res!771291) b!1162699))

(assert (= (and b!1162699 res!771283) b!1162712))

(assert (= (and b!1162712 res!771286) b!1162697))

(assert (= (and b!1162697 res!771287) b!1162705))

(assert (= (and b!1162705 res!771279) b!1162694))

(assert (= (and b!1162694 res!771284) b!1162708))

(assert (= (and b!1162708 (not res!771285)) b!1162700))

(assert (= (and b!1162700 (not res!771281)) b!1162709))

(assert (= (and b!1162709 c!116237) b!1162706))

(assert (= (and b!1162709 (not c!116237)) b!1162710))

(assert (= (or b!1162706 b!1162710) bm!56779))

(assert (= (or b!1162706 b!1162710) bm!56774))

(assert (= (and b!1162709 (not res!771289)) b!1162691))

(assert (= (and b!1162691 c!116238) b!1162687))

(assert (= (and b!1162691 (not c!116238)) b!1162714))

(assert (= (and b!1162687 c!116233) b!1162695))

(assert (= (and b!1162687 (not c!116233)) b!1162688))

(assert (= (and b!1162688 c!116236) b!1162703))

(assert (= (and b!1162688 (not c!116236)) b!1162707))

(assert (= (and b!1162707 c!116234) b!1162713))

(assert (= (and b!1162707 (not c!116234)) b!1162689))

(assert (= (or b!1162703 b!1162713) bm!56775))

(assert (= (or b!1162703 b!1162713) bm!56780))

(assert (= (or b!1162703 b!1162713) bm!56778))

(assert (= (or b!1162695 bm!56778) bm!56776))

(assert (= (or b!1162695 bm!56775) bm!56781))

(assert (= (or b!1162695 bm!56780) bm!56777))

(assert (= (and b!1162687 c!116235) b!1162696))

(assert (= (and b!1162687 (not c!116235)) b!1162715))

(assert (= (and b!1162687 res!771288) b!1162690))

(assert (= (and b!1162691 res!771293) b!1162693))

(assert (= (and b!1162702 condMapEmpty!45524) mapIsEmpty!45524))

(assert (= (and b!1162702 (not condMapEmpty!45524)) mapNonEmpty!45524))

(get-info :version)

(assert (= (and mapNonEmpty!45524 ((_ is ValueCellFull!13857) mapValue!45524)) b!1162701))

(assert (= (and b!1162702 ((_ is ValueCellFull!13857) mapDefault!45524)) b!1162686))

(assert (= start!99034 b!1162702))

(declare-fun b_lambda!19727 () Bool)

(assert (=> (not b_lambda!19727) (not b!1162700)))

(declare-fun t!37093 () Bool)

(declare-fun tb!9423 () Bool)

(assert (=> (and start!99034 (= defaultEntry!1004 defaultEntry!1004) t!37093) tb!9423))

(declare-fun result!19403 () Bool)

(assert (=> tb!9423 (= result!19403 tp_is_empty!29133)))

(assert (=> b!1162700 t!37093))

(declare-fun b_and!40071 () Bool)

(assert (= b_and!40069 (and (=> t!37093 result!19403) b_and!40071)))

(declare-fun m!1071387 () Bool)

(assert (=> bm!56777 m!1071387))

(declare-fun m!1071389 () Bool)

(assert (=> bm!56779 m!1071389))

(declare-fun m!1071391 () Bool)

(assert (=> b!1162691 m!1071391))

(declare-fun m!1071393 () Bool)

(assert (=> b!1162691 m!1071393))

(declare-fun m!1071395 () Bool)

(assert (=> b!1162691 m!1071395))

(declare-fun m!1071397 () Bool)

(assert (=> b!1162691 m!1071397))

(assert (=> b!1162691 m!1071395))

(declare-fun m!1071399 () Bool)

(assert (=> b!1162691 m!1071399))

(assert (=> b!1162691 m!1071393))

(declare-fun m!1071401 () Bool)

(assert (=> b!1162691 m!1071401))

(declare-fun m!1071403 () Bool)

(assert (=> b!1162691 m!1071403))

(assert (=> b!1162691 m!1071395))

(declare-fun m!1071405 () Bool)

(assert (=> b!1162691 m!1071405))

(assert (=> b!1162691 m!1071405))

(declare-fun m!1071407 () Bool)

(assert (=> b!1162691 m!1071407))

(assert (=> bm!56774 m!1071391))

(declare-fun m!1071409 () Bool)

(assert (=> b!1162705 m!1071409))

(declare-fun m!1071411 () Bool)

(assert (=> b!1162705 m!1071411))

(declare-fun m!1071413 () Bool)

(assert (=> b!1162700 m!1071413))

(declare-fun m!1071415 () Bool)

(assert (=> b!1162700 m!1071415))

(declare-fun m!1071417 () Bool)

(assert (=> b!1162700 m!1071417))

(declare-fun m!1071419 () Bool)

(assert (=> b!1162700 m!1071419))

(declare-fun m!1071421 () Bool)

(assert (=> b!1162696 m!1071421))

(declare-fun m!1071423 () Bool)

(assert (=> b!1162697 m!1071423))

(declare-fun m!1071425 () Bool)

(assert (=> b!1162711 m!1071425))

(assert (=> b!1162709 m!1071395))

(declare-fun m!1071427 () Bool)

(assert (=> b!1162709 m!1071427))

(declare-fun m!1071429 () Bool)

(assert (=> b!1162695 m!1071429))

(declare-fun m!1071431 () Bool)

(assert (=> b!1162695 m!1071431))

(declare-fun m!1071433 () Bool)

(assert (=> b!1162695 m!1071433))

(declare-fun m!1071435 () Bool)

(assert (=> b!1162704 m!1071435))

(assert (=> b!1162690 m!1071421))

(assert (=> b!1162693 m!1071389))

(declare-fun m!1071437 () Bool)

(assert (=> bm!56781 m!1071437))

(declare-fun m!1071439 () Bool)

(assert (=> b!1162708 m!1071439))

(declare-fun m!1071441 () Bool)

(assert (=> b!1162708 m!1071441))

(declare-fun m!1071443 () Bool)

(assert (=> b!1162706 m!1071443))

(declare-fun m!1071445 () Bool)

(assert (=> b!1162687 m!1071445))

(declare-fun m!1071447 () Bool)

(assert (=> b!1162687 m!1071447))

(declare-fun m!1071449 () Bool)

(assert (=> b!1162687 m!1071449))

(declare-fun m!1071451 () Bool)

(assert (=> b!1162687 m!1071451))

(declare-fun m!1071453 () Bool)

(assert (=> b!1162694 m!1071453))

(declare-fun m!1071455 () Bool)

(assert (=> mapNonEmpty!45524 m!1071455))

(declare-fun m!1071457 () Bool)

(assert (=> b!1162692 m!1071457))

(declare-fun m!1071459 () Bool)

(assert (=> bm!56776 m!1071459))

(declare-fun m!1071461 () Bool)

(assert (=> b!1162712 m!1071461))

(declare-fun m!1071463 () Bool)

(assert (=> start!99034 m!1071463))

(declare-fun m!1071465 () Bool)

(assert (=> start!99034 m!1071465))

(check-sat b_and!40071 (not b!1162690) (not b!1162708) (not b_lambda!19727) (not b!1162687) (not b!1162705) (not b!1162700) (not b!1162694) (not b!1162704) (not start!99034) (not b!1162712) (not b!1162696) (not b!1162691) (not b_next!24603) (not bm!56777) (not b!1162695) (not b!1162692) (not bm!56779) tp_is_empty!29133 (not bm!56781) (not b!1162711) (not b!1162706) (not bm!56774) (not b!1162709) (not bm!56776) (not b!1162693) (not mapNonEmpty!45524))
(check-sat b_and!40071 (not b_next!24603))

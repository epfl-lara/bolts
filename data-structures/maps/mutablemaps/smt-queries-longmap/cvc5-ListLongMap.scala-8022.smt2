; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99008 () Bool)

(assert start!99008)

(declare-fun b_free!24577 () Bool)

(declare-fun b_next!24577 () Bool)

(assert (=> start!99008 (= b_free!24577 (not b_next!24577))))

(declare-fun tp!86442 () Bool)

(declare-fun b_and!40017 () Bool)

(assert (=> start!99008 (= tp!86442 b_and!40017)))

(declare-fun b!1161490 () Bool)

(declare-datatypes ((V!43937 0))(
  ( (V!43938 (val!14610 Int)) )
))
(declare-datatypes ((tuple2!18690 0))(
  ( (tuple2!18691 (_1!9355 (_ BitVec 64)) (_2!9355 V!43937)) )
))
(declare-datatypes ((List!25468 0))(
  ( (Nil!25465) (Cons!25464 (h!26673 tuple2!18690) (t!37044 List!25468)) )
))
(declare-datatypes ((ListLongMap!16671 0))(
  ( (ListLongMap!16672 (toList!8351 List!25468)) )
))
(declare-fun lt!522740 () ListLongMap!16671)

(declare-fun minValue!944 () V!43937)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6831 (ListLongMap!16671 (_ BitVec 64)) Bool)

(declare-fun +!3675 (ListLongMap!16671 tuple2!18690) ListLongMap!16671)

(assert (=> b!1161490 (contains!6831 (+!3675 lt!522740 (tuple2!18691 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-datatypes ((Unit!38207 0))(
  ( (Unit!38208) )
))
(declare-fun lt!522725 () Unit!38207)

(declare-fun call!56468 () Unit!38207)

(assert (=> b!1161490 (= lt!522725 call!56468)))

(declare-fun call!56471 () Bool)

(assert (=> b!1161490 call!56471))

(declare-fun call!56466 () ListLongMap!16671)

(assert (=> b!1161490 (= lt!522740 call!56466)))

(declare-fun zeroValue!944 () V!43937)

(declare-fun lt!522720 () Unit!38207)

(declare-fun lt!522741 () ListLongMap!16671)

(declare-fun addStillContains!973 (ListLongMap!16671 (_ BitVec 64) V!43937 (_ BitVec 64)) Unit!38207)

(assert (=> b!1161490 (= lt!522720 (addStillContains!973 lt!522741 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(declare-fun e!660512 () Unit!38207)

(assert (=> b!1161490 (= e!660512 lt!522725)))

(declare-fun b!1161491 () Bool)

(declare-fun call!56467 () Bool)

(assert (=> b!1161491 call!56467))

(declare-fun lt!522738 () Unit!38207)

(declare-fun call!56465 () Unit!38207)

(assert (=> b!1161491 (= lt!522738 call!56465)))

(declare-fun e!660500 () Unit!38207)

(assert (=> b!1161491 (= e!660500 lt!522738)))

(declare-fun b!1161492 () Bool)

(declare-fun res!770695 () Bool)

(declare-fun e!660508 () Bool)

(assert (=> b!1161492 (=> (not res!770695) (not e!660508))))

(declare-datatypes ((array!75004 0))(
  ( (array!75005 (arr!36149 (Array (_ BitVec 32) (_ BitVec 64))) (size!36686 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75004)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1161492 (= res!770695 (= (select (arr!36149 _keys!1208) i!673) k!934))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun lt!522728 () array!75004)

(declare-datatypes ((ValueCell!13844 0))(
  ( (ValueCellFull!13844 (v!17248 V!43937)) (EmptyCell!13844) )
))
(declare-datatypes ((array!75006 0))(
  ( (array!75007 (arr!36150 (Array (_ BitVec 32) ValueCell!13844)) (size!36687 (_ BitVec 32))) )
))
(declare-fun lt!522723 () array!75006)

(declare-fun call!56472 () ListLongMap!16671)

(declare-fun bm!56463 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4786 (array!75004 array!75006 (_ BitVec 32) (_ BitVec 32) V!43937 V!43937 (_ BitVec 32) Int) ListLongMap!16671)

(assert (=> bm!56463 (= call!56472 (getCurrentListMapNoExtraKeys!4786 lt!522728 lt!522723 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161493 () Bool)

(declare-fun res!770708 () Bool)

(assert (=> b!1161493 (=> (not res!770708) (not e!660508))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1161493 (= res!770708 (validKeyInArray!0 k!934))))

(declare-fun b!1161494 () Bool)

(declare-fun e!660515 () Bool)

(declare-fun e!660501 () Bool)

(assert (=> b!1161494 (= e!660515 (not e!660501))))

(declare-fun res!770699 () Bool)

(assert (=> b!1161494 (=> res!770699 e!660501)))

(assert (=> b!1161494 (= res!770699 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!75004 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1161494 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!522729 () Unit!38207)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75004 (_ BitVec 64) (_ BitVec 32)) Unit!38207)

(assert (=> b!1161494 (= lt!522729 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1161495 () Bool)

(declare-fun e!660505 () Bool)

(assert (=> b!1161495 (= e!660501 e!660505)))

(declare-fun res!770703 () Bool)

(assert (=> b!1161495 (=> res!770703 e!660505)))

(assert (=> b!1161495 (= res!770703 (not (= from!1455 i!673)))))

(declare-fun lt!522724 () ListLongMap!16671)

(assert (=> b!1161495 (= lt!522724 (getCurrentListMapNoExtraKeys!4786 lt!522728 lt!522723 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!522739 () V!43937)

(declare-fun _values!996 () array!75006)

(assert (=> b!1161495 (= lt!522723 (array!75007 (store (arr!36150 _values!996) i!673 (ValueCellFull!13844 lt!522739)) (size!36687 _values!996)))))

(declare-fun dynLambda!2787 (Int (_ BitVec 64)) V!43937)

(assert (=> b!1161495 (= lt!522739 (dynLambda!2787 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!522721 () ListLongMap!16671)

(assert (=> b!1161495 (= lt!522721 (getCurrentListMapNoExtraKeys!4786 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun call!56470 () ListLongMap!16671)

(declare-fun bm!56464 () Bool)

(assert (=> bm!56464 (= call!56470 (getCurrentListMapNoExtraKeys!4786 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45485 () Bool)

(declare-fun mapRes!45485 () Bool)

(declare-fun tp!86443 () Bool)

(declare-fun e!660516 () Bool)

(assert (=> mapNonEmpty!45485 (= mapRes!45485 (and tp!86443 e!660516))))

(declare-fun mapRest!45485 () (Array (_ BitVec 32) ValueCell!13844))

(declare-fun mapValue!45485 () ValueCell!13844)

(declare-fun mapKey!45485 () (_ BitVec 32))

(assert (=> mapNonEmpty!45485 (= (arr!36150 _values!996) (store mapRest!45485 mapKey!45485 mapValue!45485))))

(declare-fun b!1161496 () Bool)

(declare-fun res!770694 () Bool)

(assert (=> b!1161496 (=> (not res!770694) (not e!660508))))

(assert (=> b!1161496 (= res!770694 (and (= (size!36687 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36686 _keys!1208) (size!36687 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1161497 () Bool)

(declare-fun e!660513 () Bool)

(assert (=> b!1161497 (= e!660513 (= call!56472 call!56470))))

(declare-fun mapIsEmpty!45485 () Bool)

(assert (=> mapIsEmpty!45485 mapRes!45485))

(declare-fun bm!56465 () Bool)

(declare-fun c!116004 () Bool)

(declare-fun c!115999 () Bool)

(assert (=> bm!56465 (= call!56468 (addStillContains!973 (ite c!116004 lt!522740 lt!522741) (ite c!116004 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115999 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!116004 minValue!944 (ite c!115999 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1161498 () Bool)

(declare-fun -!1421 (ListLongMap!16671 (_ BitVec 64)) ListLongMap!16671)

(assert (=> b!1161498 (= e!660513 (= call!56472 (-!1421 call!56470 k!934)))))

(declare-fun bm!56466 () Bool)

(assert (=> bm!56466 (= call!56466 (+!3675 lt!522741 (ite (or c!116004 c!115999) (tuple2!18691 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18691 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1161499 () Bool)

(declare-fun res!770707 () Bool)

(assert (=> b!1161499 (=> (not res!770707) (not e!660508))))

(declare-datatypes ((List!25469 0))(
  ( (Nil!25466) (Cons!25465 (h!26674 (_ BitVec 64)) (t!37045 List!25469)) )
))
(declare-fun arrayNoDuplicates!0 (array!75004 (_ BitVec 32) List!25469) Bool)

(assert (=> b!1161499 (= res!770707 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25466))))

(declare-fun b!1161500 () Bool)

(declare-fun e!660502 () Bool)

(assert (=> b!1161500 (= e!660502 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!56469 () ListLongMap!16671)

(declare-fun bm!56462 () Bool)

(assert (=> bm!56462 (= call!56471 (contains!6831 (ite c!116004 lt!522740 call!56469) k!934))))

(declare-fun res!770706 () Bool)

(assert (=> start!99008 (=> (not res!770706) (not e!660508))))

(assert (=> start!99008 (= res!770706 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36686 _keys!1208))))))

(assert (=> start!99008 e!660508))

(declare-fun tp_is_empty!29107 () Bool)

(assert (=> start!99008 tp_is_empty!29107))

(declare-fun array_inv!27532 (array!75004) Bool)

(assert (=> start!99008 (array_inv!27532 _keys!1208)))

(assert (=> start!99008 true))

(assert (=> start!99008 tp!86442))

(declare-fun e!660503 () Bool)

(declare-fun array_inv!27533 (array!75006) Bool)

(assert (=> start!99008 (and (array_inv!27533 _values!996) e!660503)))

(declare-fun b!1161501 () Bool)

(declare-fun res!770696 () Bool)

(assert (=> b!1161501 (=> (not res!770696) (not e!660515))))

(assert (=> b!1161501 (= res!770696 (arrayNoDuplicates!0 lt!522728 #b00000000000000000000000000000000 Nil!25466))))

(declare-fun bm!56467 () Bool)

(assert (=> bm!56467 (= call!56465 call!56468)))

(declare-fun bm!56468 () Bool)

(assert (=> bm!56468 (= call!56469 call!56466)))

(declare-fun lt!522733 () ListLongMap!16671)

(declare-fun b!1161502 () Bool)

(declare-fun e!660504 () Bool)

(assert (=> b!1161502 (= e!660504 (= lt!522733 (getCurrentListMapNoExtraKeys!4786 lt!522728 lt!522723 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1161503 () Bool)

(declare-fun e!660514 () Bool)

(assert (=> b!1161503 (= e!660514 tp_is_empty!29107)))

(declare-fun b!1161504 () Bool)

(declare-fun res!770702 () Bool)

(assert (=> b!1161504 (=> (not res!770702) (not e!660508))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75004 (_ BitVec 32)) Bool)

(assert (=> b!1161504 (= res!770702 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!56469 () Bool)

(assert (=> bm!56469 (= call!56467 call!56471)))

(declare-fun b!1161505 () Bool)

(assert (=> b!1161505 (= e!660508 e!660515)))

(declare-fun res!770704 () Bool)

(assert (=> b!1161505 (=> (not res!770704) (not e!660515))))

(assert (=> b!1161505 (= res!770704 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522728 mask!1564))))

(assert (=> b!1161505 (= lt!522728 (array!75005 (store (arr!36149 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36686 _keys!1208)))))

(declare-fun b!1161506 () Bool)

(declare-fun lt!522734 () Bool)

(assert (=> b!1161506 (= c!115999 (and (not lt!522734) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!660506 () Unit!38207)

(assert (=> b!1161506 (= e!660512 e!660506)))

(declare-fun b!1161507 () Bool)

(declare-fun e!660509 () Bool)

(assert (=> b!1161507 (= e!660509 true)))

(assert (=> b!1161507 e!660504))

(declare-fun res!770705 () Bool)

(assert (=> b!1161507 (=> (not res!770705) (not e!660504))))

(assert (=> b!1161507 (= res!770705 (= lt!522733 lt!522741))))

(assert (=> b!1161507 (= lt!522733 (-!1421 lt!522721 k!934))))

(declare-fun lt!522736 () V!43937)

(assert (=> b!1161507 (= (-!1421 (+!3675 lt!522741 (tuple2!18691 (select (arr!36149 _keys!1208) from!1455) lt!522736)) (select (arr!36149 _keys!1208) from!1455)) lt!522741)))

(declare-fun lt!522727 () Unit!38207)

(declare-fun addThenRemoveForNewKeyIsSame!258 (ListLongMap!16671 (_ BitVec 64) V!43937) Unit!38207)

(assert (=> b!1161507 (= lt!522727 (addThenRemoveForNewKeyIsSame!258 lt!522741 (select (arr!36149 _keys!1208) from!1455) lt!522736))))

(declare-fun get!18472 (ValueCell!13844 V!43937) V!43937)

(assert (=> b!1161507 (= lt!522736 (get!18472 (select (arr!36150 _values!996) from!1455) lt!522739))))

(declare-fun lt!522722 () Unit!38207)

(declare-fun e!660507 () Unit!38207)

(assert (=> b!1161507 (= lt!522722 e!660507)))

(declare-fun c!116000 () Bool)

(assert (=> b!1161507 (= c!116000 (contains!6831 lt!522741 k!934))))

(assert (=> b!1161507 (= lt!522741 (getCurrentListMapNoExtraKeys!4786 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1161508 () Bool)

(declare-fun e!660511 () Bool)

(assert (=> b!1161508 (= e!660511 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1161509 () Bool)

(declare-fun lt!522732 () Unit!38207)

(assert (=> b!1161509 (= e!660506 lt!522732)))

(assert (=> b!1161509 (= lt!522732 call!56465)))

(assert (=> b!1161509 call!56467))

(declare-fun b!1161510 () Bool)

(declare-fun Unit!38209 () Unit!38207)

(assert (=> b!1161510 (= e!660507 Unit!38209)))

(assert (=> b!1161510 (= lt!522734 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1161510 (= c!116004 (and (not lt!522734) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!522730 () Unit!38207)

(assert (=> b!1161510 (= lt!522730 e!660512)))

(declare-fun lt!522731 () Unit!38207)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!543 (array!75004 array!75006 (_ BitVec 32) (_ BitVec 32) V!43937 V!43937 (_ BitVec 64) (_ BitVec 32) Int) Unit!38207)

(assert (=> b!1161510 (= lt!522731 (lemmaListMapContainsThenArrayContainsFrom!543 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116003 () Bool)

(assert (=> b!1161510 (= c!116003 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770697 () Bool)

(assert (=> b!1161510 (= res!770697 e!660502)))

(assert (=> b!1161510 (=> (not res!770697) (not e!660511))))

(assert (=> b!1161510 e!660511))

(declare-fun lt!522737 () Unit!38207)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75004 (_ BitVec 32) (_ BitVec 32)) Unit!38207)

(assert (=> b!1161510 (= lt!522737 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1161510 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25466)))

(declare-fun lt!522735 () Unit!38207)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75004 (_ BitVec 64) (_ BitVec 32) List!25469) Unit!38207)

(assert (=> b!1161510 (= lt!522735 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25466))))

(assert (=> b!1161510 false))

(declare-fun b!1161511 () Bool)

(assert (=> b!1161511 (= e!660503 (and e!660514 mapRes!45485))))

(declare-fun condMapEmpty!45485 () Bool)

(declare-fun mapDefault!45485 () ValueCell!13844)


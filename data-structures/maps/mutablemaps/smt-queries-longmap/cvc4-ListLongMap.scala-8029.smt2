; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99054 () Bool)

(assert start!99054)

(declare-fun b_free!24623 () Bool)

(declare-fun b_next!24623 () Bool)

(assert (=> start!99054 (= b_free!24623 (not b_next!24623))))

(declare-fun tp!86581 () Bool)

(declare-fun b_and!40109 () Bool)

(assert (=> start!99054 (= tp!86581 b_and!40109)))

(declare-datatypes ((V!43997 0))(
  ( (V!43998 (val!14633 Int)) )
))
(declare-datatypes ((tuple2!18736 0))(
  ( (tuple2!18737 (_1!9378 (_ BitVec 64)) (_2!9378 V!43997)) )
))
(declare-datatypes ((List!25510 0))(
  ( (Nil!25507) (Cons!25506 (h!26715 tuple2!18736) (t!37132 List!25510)) )
))
(declare-datatypes ((ListLongMap!16717 0))(
  ( (ListLongMap!16718 (toList!8374 List!25510)) )
))
(declare-fun call!57023 () ListLongMap!16717)

(declare-fun e!661689 () Bool)

(declare-fun call!57019 () ListLongMap!16717)

(declare-fun b!1163606 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun -!1439 (ListLongMap!16717 (_ BitVec 64)) ListLongMap!16717)

(assert (=> b!1163606 (= e!661689 (= call!57023 (-!1439 call!57019 k!934)))))

(declare-fun b!1163607 () Bool)

(declare-fun res!771740 () Bool)

(declare-fun e!661677 () Bool)

(assert (=> b!1163607 (=> (not res!771740) (not e!661677))))

(declare-datatypes ((array!75096 0))(
  ( (array!75097 (arr!36195 (Array (_ BitVec 32) (_ BitVec 64))) (size!36732 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75096)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75096 (_ BitVec 32)) Bool)

(assert (=> b!1163607 (= res!771740 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1163608 () Bool)

(declare-fun call!57024 () Bool)

(assert (=> b!1163608 call!57024))

(declare-datatypes ((Unit!38297 0))(
  ( (Unit!38298) )
))
(declare-fun lt!524252 () Unit!38297)

(declare-fun call!57017 () Unit!38297)

(assert (=> b!1163608 (= lt!524252 call!57017)))

(declare-fun e!661684 () Unit!38297)

(assert (=> b!1163608 (= e!661684 lt!524252)))

(declare-fun b!1163609 () Bool)

(declare-fun e!661685 () Bool)

(declare-fun e!661682 () Bool)

(assert (=> b!1163609 (= e!661685 e!661682)))

(declare-fun res!771741 () Bool)

(assert (=> b!1163609 (=> res!771741 e!661682)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1163609 (= res!771741 (not (= from!1455 i!673)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!524253 () ListLongMap!16717)

(declare-fun lt!524255 () array!75096)

(declare-fun minValue!944 () V!43997)

(declare-fun zeroValue!944 () V!43997)

(declare-datatypes ((ValueCell!13867 0))(
  ( (ValueCellFull!13867 (v!17271 V!43997)) (EmptyCell!13867) )
))
(declare-datatypes ((array!75098 0))(
  ( (array!75099 (arr!36196 (Array (_ BitVec 32) ValueCell!13867)) (size!36733 (_ BitVec 32))) )
))
(declare-fun lt!524249 () array!75098)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!4808 (array!75096 array!75098 (_ BitVec 32) (_ BitVec 32) V!43997 V!43997 (_ BitVec 32) Int) ListLongMap!16717)

(assert (=> b!1163609 (= lt!524253 (getCurrentListMapNoExtraKeys!4808 lt!524255 lt!524249 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!524247 () V!43997)

(declare-fun _values!996 () array!75098)

(assert (=> b!1163609 (= lt!524249 (array!75099 (store (arr!36196 _values!996) i!673 (ValueCellFull!13867 lt!524247)) (size!36733 _values!996)))))

(declare-fun dynLambda!2805 (Int (_ BitVec 64)) V!43997)

(assert (=> b!1163609 (= lt!524247 (dynLambda!2805 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!524250 () ListLongMap!16717)

(assert (=> b!1163609 (= lt!524250 (getCurrentListMapNoExtraKeys!4808 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1163610 () Bool)

(declare-fun e!661683 () Unit!38297)

(declare-fun Unit!38299 () Unit!38297)

(assert (=> b!1163610 (= e!661683 Unit!38299)))

(declare-fun b!1163611 () Bool)

(declare-fun res!771739 () Bool)

(declare-fun e!661679 () Bool)

(assert (=> b!1163611 (=> (not res!771739) (not e!661679))))

(declare-datatypes ((List!25511 0))(
  ( (Nil!25508) (Cons!25507 (h!26716 (_ BitVec 64)) (t!37133 List!25511)) )
))
(declare-fun arrayNoDuplicates!0 (array!75096 (_ BitVec 32) List!25511) Bool)

(assert (=> b!1163611 (= res!771739 (arrayNoDuplicates!0 lt!524255 #b00000000000000000000000000000000 Nil!25508))))

(declare-fun res!771731 () Bool)

(assert (=> start!99054 (=> (not res!771731) (not e!661677))))

(assert (=> start!99054 (= res!771731 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36732 _keys!1208))))))

(assert (=> start!99054 e!661677))

(declare-fun tp_is_empty!29153 () Bool)

(assert (=> start!99054 tp_is_empty!29153))

(declare-fun array_inv!27564 (array!75096) Bool)

(assert (=> start!99054 (array_inv!27564 _keys!1208)))

(assert (=> start!99054 true))

(assert (=> start!99054 tp!86581))

(declare-fun e!661681 () Bool)

(declare-fun array_inv!27565 (array!75098) Bool)

(assert (=> start!99054 (and (array_inv!27565 _values!996) e!661681)))

(declare-fun b!1163612 () Bool)

(assert (=> b!1163612 (= e!661677 e!661679)))

(declare-fun res!771742 () Bool)

(assert (=> b!1163612 (=> (not res!771742) (not e!661679))))

(assert (=> b!1163612 (= res!771742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!524255 mask!1564))))

(assert (=> b!1163612 (= lt!524255 (array!75097 (store (arr!36195 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36732 _keys!1208)))))

(declare-fun b!1163613 () Bool)

(declare-fun Unit!38300 () Unit!38297)

(assert (=> b!1163613 (= e!661683 Unit!38300)))

(declare-fun lt!524258 () Bool)

(assert (=> b!1163613 (= lt!524258 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!116414 () Bool)

(assert (=> b!1163613 (= c!116414 (and (not lt!524258) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!524244 () Unit!38297)

(declare-fun e!661680 () Unit!38297)

(assert (=> b!1163613 (= lt!524244 e!661680)))

(declare-fun lt!524245 () Unit!38297)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!559 (array!75096 array!75098 (_ BitVec 32) (_ BitVec 32) V!43997 V!43997 (_ BitVec 64) (_ BitVec 32) Int) Unit!38297)

(assert (=> b!1163613 (= lt!524245 (lemmaListMapContainsThenArrayContainsFrom!559 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!116415 () Bool)

(assert (=> b!1163613 (= c!116415 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!771738 () Bool)

(declare-fun e!661673 () Bool)

(assert (=> b!1163613 (= res!771738 e!661673)))

(declare-fun e!661686 () Bool)

(assert (=> b!1163613 (=> (not res!771738) (not e!661686))))

(assert (=> b!1163613 e!661686))

(declare-fun lt!524248 () Unit!38297)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75096 (_ BitVec 32) (_ BitVec 32)) Unit!38297)

(assert (=> b!1163613 (= lt!524248 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1163613 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25508)))

(declare-fun lt!524241 () Unit!38297)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!75096 (_ BitVec 64) (_ BitVec 32) List!25511) Unit!38297)

(assert (=> b!1163613 (= lt!524241 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25508))))

(assert (=> b!1163613 false))

(declare-fun b!1163614 () Bool)

(declare-fun e!661675 () Bool)

(assert (=> b!1163614 (= e!661675 true)))

(declare-fun e!661676 () Bool)

(assert (=> b!1163614 e!661676))

(declare-fun res!771736 () Bool)

(assert (=> b!1163614 (=> (not res!771736) (not e!661676))))

(declare-fun lt!524257 () ListLongMap!16717)

(declare-fun lt!524251 () ListLongMap!16717)

(assert (=> b!1163614 (= res!771736 (= lt!524257 lt!524251))))

(assert (=> b!1163614 (= lt!524257 (-!1439 lt!524250 k!934))))

(declare-fun lt!524254 () V!43997)

(declare-fun +!3695 (ListLongMap!16717 tuple2!18736) ListLongMap!16717)

(assert (=> b!1163614 (= (-!1439 (+!3695 lt!524251 (tuple2!18737 (select (arr!36195 _keys!1208) from!1455) lt!524254)) (select (arr!36195 _keys!1208) from!1455)) lt!524251)))

(declare-fun lt!524256 () Unit!38297)

(declare-fun addThenRemoveForNewKeyIsSame!272 (ListLongMap!16717 (_ BitVec 64) V!43997) Unit!38297)

(assert (=> b!1163614 (= lt!524256 (addThenRemoveForNewKeyIsSame!272 lt!524251 (select (arr!36195 _keys!1208) from!1455) lt!524254))))

(declare-fun get!18500 (ValueCell!13867 V!43997) V!43997)

(assert (=> b!1163614 (= lt!524254 (get!18500 (select (arr!36196 _values!996) from!1455) lt!524247))))

(declare-fun lt!524243 () Unit!38297)

(assert (=> b!1163614 (= lt!524243 e!661683)))

(declare-fun c!116418 () Bool)

(declare-fun contains!6852 (ListLongMap!16717 (_ BitVec 64)) Bool)

(assert (=> b!1163614 (= c!116418 (contains!6852 lt!524251 k!934))))

(assert (=> b!1163614 (= lt!524251 (getCurrentListMapNoExtraKeys!4808 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163615 () Bool)

(assert (=> b!1163615 (= e!661682 e!661675)))

(declare-fun res!771733 () Bool)

(assert (=> b!1163615 (=> res!771733 e!661675)))

(assert (=> b!1163615 (= res!771733 (not (= (select (arr!36195 _keys!1208) from!1455) k!934)))))

(assert (=> b!1163615 e!661689))

(declare-fun c!116417 () Bool)

(assert (=> b!1163615 (= c!116417 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!524259 () Unit!38297)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!663 (array!75096 array!75098 (_ BitVec 32) (_ BitVec 32) V!43997 V!43997 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38297)

(assert (=> b!1163615 (= lt!524259 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!663 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163616 () Bool)

(assert (=> b!1163616 (= e!661689 (= call!57023 call!57019))))

(declare-fun b!1163617 () Bool)

(declare-fun res!771735 () Bool)

(assert (=> b!1163617 (=> (not res!771735) (not e!661677))))

(assert (=> b!1163617 (= res!771735 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36732 _keys!1208))))))

(declare-fun b!1163618 () Bool)

(assert (=> b!1163618 (= e!661676 (= lt!524257 (getCurrentListMapNoExtraKeys!4808 lt!524255 lt!524249 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun mapIsEmpty!45554 () Bool)

(declare-fun mapRes!45554 () Bool)

(assert (=> mapIsEmpty!45554 mapRes!45554))

(declare-fun b!1163619 () Bool)

(declare-fun e!661678 () Bool)

(assert (=> b!1163619 (= e!661678 tp_is_empty!29153)))

(declare-fun b!1163620 () Bool)

(assert (=> b!1163620 (= e!661673 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!524258) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1163621 () Bool)

(declare-fun res!771729 () Bool)

(assert (=> b!1163621 (=> (not res!771729) (not e!661677))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1163621 (= res!771729 (validMask!0 mask!1564))))

(declare-fun b!1163622 () Bool)

(declare-fun res!771743 () Bool)

(assert (=> b!1163622 (=> (not res!771743) (not e!661677))))

(assert (=> b!1163622 (= res!771743 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25508))))

(declare-fun b!1163623 () Bool)

(declare-fun res!771734 () Bool)

(assert (=> b!1163623 (=> (not res!771734) (not e!661677))))

(assert (=> b!1163623 (= res!771734 (= (select (arr!36195 _keys!1208) i!673) k!934))))

(declare-fun b!1163624 () Bool)

(declare-fun arrayContainsKey!0 (array!75096 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1163624 (= e!661673 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1163625 () Bool)

(declare-fun e!661688 () Unit!38297)

(declare-fun lt!524242 () Unit!38297)

(assert (=> b!1163625 (= e!661688 lt!524242)))

(assert (=> b!1163625 (= lt!524242 call!57017)))

(assert (=> b!1163625 call!57024))

(declare-fun bm!57014 () Bool)

(declare-fun call!57020 () Bool)

(assert (=> bm!57014 (= call!57024 call!57020)))

(declare-fun b!1163626 () Bool)

(declare-fun res!771737 () Bool)

(assert (=> b!1163626 (=> (not res!771737) (not e!661677))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1163626 (= res!771737 (validKeyInArray!0 k!934))))

(declare-fun bm!57015 () Bool)

(declare-fun call!57021 () ListLongMap!16717)

(declare-fun call!57022 () ListLongMap!16717)

(assert (=> bm!57015 (= call!57021 call!57022)))

(declare-fun b!1163627 () Bool)

(declare-fun res!771730 () Bool)

(assert (=> b!1163627 (=> (not res!771730) (not e!661677))))

(assert (=> b!1163627 (= res!771730 (and (= (size!36733 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36732 _keys!1208) (size!36733 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1163628 () Bool)

(assert (=> b!1163628 (= e!661686 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!57016 () Bool)

(declare-fun call!57018 () Unit!38297)

(assert (=> bm!57016 (= call!57017 call!57018)))

(declare-fun mapNonEmpty!45554 () Bool)

(declare-fun tp!86580 () Bool)

(assert (=> mapNonEmpty!45554 (= mapRes!45554 (and tp!86580 e!661678))))

(declare-fun mapValue!45554 () ValueCell!13867)

(declare-fun mapKey!45554 () (_ BitVec 32))

(declare-fun mapRest!45554 () (Array (_ BitVec 32) ValueCell!13867))

(assert (=> mapNonEmpty!45554 (= (arr!36196 _values!996) (store mapRest!45554 mapKey!45554 mapValue!45554))))

(declare-fun bm!57017 () Bool)

(declare-fun lt!524240 () ListLongMap!16717)

(declare-fun c!116413 () Bool)

(assert (=> bm!57017 (= call!57022 (+!3695 (ite c!116414 lt!524240 lt!524251) (ite c!116414 (tuple2!18737 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!116413 (tuple2!18737 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18737 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!57018 () Bool)

(assert (=> bm!57018 (= call!57020 (contains!6852 (ite c!116414 lt!524240 call!57021) k!934))))

(declare-fun b!1163629 () Bool)

(assert (=> b!1163629 (contains!6852 call!57022 k!934)))

(declare-fun lt!524238 () Unit!38297)

(assert (=> b!1163629 (= lt!524238 call!57018)))

(assert (=> b!1163629 call!57020))

(assert (=> b!1163629 (= lt!524240 (+!3695 lt!524251 (tuple2!18737 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!524239 () Unit!38297)

(declare-fun addStillContains!992 (ListLongMap!16717 (_ BitVec 64) V!43997 (_ BitVec 64)) Unit!38297)

(assert (=> b!1163629 (= lt!524239 (addStillContains!992 lt!524251 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1163629 (= e!661680 lt!524238)))

(declare-fun bm!57019 () Bool)

(assert (=> bm!57019 (= call!57019 (getCurrentListMapNoExtraKeys!4808 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!57020 () Bool)

(assert (=> bm!57020 (= call!57023 (getCurrentListMapNoExtraKeys!4808 lt!524255 lt!524249 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1163630 () Bool)

(declare-fun Unit!38301 () Unit!38297)

(assert (=> b!1163630 (= e!661684 Unit!38301)))

(declare-fun b!1163631 () Bool)

(declare-fun e!661674 () Bool)

(assert (=> b!1163631 (= e!661681 (and e!661674 mapRes!45554))))

(declare-fun condMapEmpty!45554 () Bool)

(declare-fun mapDefault!45554 () ValueCell!13867)


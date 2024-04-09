; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101190 () Bool)

(assert start!101190)

(declare-fun b_free!26077 () Bool)

(declare-fun b_next!26077 () Bool)

(assert (=> start!101190 (= b_free!26077 (not b_next!26077))))

(declare-fun tp!91254 () Bool)

(declare-fun b_and!43281 () Bool)

(assert (=> start!101190 (= tp!91254 b_and!43281)))

(declare-fun b!1213492 () Bool)

(declare-fun call!60405 () Bool)

(assert (=> b!1213492 call!60405))

(declare-datatypes ((Unit!40167 0))(
  ( (Unit!40168) )
))
(declare-fun lt!551709 () Unit!40167)

(declare-fun call!60412 () Unit!40167)

(assert (=> b!1213492 (= lt!551709 call!60412)))

(declare-fun e!689201 () Unit!40167)

(assert (=> b!1213492 (= e!689201 lt!551709)))

(declare-fun b!1213493 () Bool)

(declare-fun res!805853 () Bool)

(declare-fun e!689199 () Bool)

(assert (=> b!1213493 (=> (not res!805853) (not e!689199))))

(declare-datatypes ((array!78322 0))(
  ( (array!78323 (arr!37792 (Array (_ BitVec 32) (_ BitVec 64))) (size!38329 (_ BitVec 32))) )
))
(declare-fun lt!551713 () array!78322)

(declare-datatypes ((List!26807 0))(
  ( (Nil!26804) (Cons!26803 (h!28012 (_ BitVec 64)) (t!39871 List!26807)) )
))
(declare-fun arrayNoDuplicates!0 (array!78322 (_ BitVec 32) List!26807) Bool)

(assert (=> b!1213493 (= res!805853 (arrayNoDuplicates!0 lt!551713 #b00000000000000000000000000000000 Nil!26804))))

(declare-datatypes ((V!46169 0))(
  ( (V!46170 (val!15447 Int)) )
))
(declare-fun zeroValue!944 () V!46169)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun b!1213494 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14681 0))(
  ( (ValueCellFull!14681 (v!18101 V!46169)) (EmptyCell!14681) )
))
(declare-datatypes ((array!78324 0))(
  ( (array!78325 (arr!37793 (Array (_ BitVec 32) ValueCell!14681)) (size!38330 (_ BitVec 32))) )
))
(declare-fun lt!551714 () array!78324)

(declare-fun e!689188 () Bool)

(declare-datatypes ((tuple2!19988 0))(
  ( (tuple2!19989 (_1!10004 (_ BitVec 64)) (_2!10004 V!46169)) )
))
(declare-datatypes ((List!26808 0))(
  ( (Nil!26805) (Cons!26804 (h!28013 tuple2!19988) (t!39872 List!26808)) )
))
(declare-datatypes ((ListLongMap!17969 0))(
  ( (ListLongMap!17970 (toList!9000 List!26808)) )
))
(declare-fun lt!551716 () ListLongMap!17969)

(declare-fun minValue!944 () V!46169)

(declare-fun getCurrentListMapNoExtraKeys!5405 (array!78322 array!78324 (_ BitVec 32) (_ BitVec 32) V!46169 V!46169 (_ BitVec 32) Int) ListLongMap!17969)

(assert (=> b!1213494 (= e!689188 (= lt!551716 (getCurrentListMapNoExtraKeys!5405 lt!551713 lt!551714 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1213495 () Bool)

(declare-fun e!689189 () Unit!40167)

(assert (=> b!1213495 (= e!689189 e!689201)))

(declare-fun c!119845 () Bool)

(declare-fun lt!551710 () Bool)

(assert (=> b!1213495 (= c!119845 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!551710))))

(declare-fun b!1213496 () Bool)

(declare-fun e!689191 () Bool)

(declare-fun tp_is_empty!30781 () Bool)

(assert (=> b!1213496 (= e!689191 tp_is_empty!30781)))

(declare-fun lt!551711 () ListLongMap!17969)

(declare-fun call!60410 () Unit!40167)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun c!119843 () Bool)

(declare-fun bm!60402 () Bool)

(declare-fun c!119848 () Bool)

(declare-fun addStillContains!1083 (ListLongMap!17969 (_ BitVec 64) V!46169 (_ BitVec 64)) Unit!40167)

(assert (=> bm!60402 (= call!60410 (addStillContains!1083 lt!551711 (ite (or c!119848 c!119843) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119848 c!119843) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1213497 () Bool)

(declare-fun e!689202 () Bool)

(assert (=> b!1213497 (= e!689202 true)))

(assert (=> b!1213497 e!689188))

(declare-fun res!805843 () Bool)

(assert (=> b!1213497 (=> (not res!805843) (not e!689188))))

(assert (=> b!1213497 (= res!805843 (= lt!551716 lt!551711))))

(declare-fun lt!551720 () ListLongMap!17969)

(declare-fun -!1894 (ListLongMap!17969 (_ BitVec 64)) ListLongMap!17969)

(assert (=> b!1213497 (= lt!551716 (-!1894 lt!551720 k!934))))

(declare-fun _keys!1208 () array!78322)

(declare-fun lt!551718 () V!46169)

(declare-fun +!4025 (ListLongMap!17969 tuple2!19988) ListLongMap!17969)

(assert (=> b!1213497 (= (-!1894 (+!4025 lt!551711 (tuple2!19989 (select (arr!37792 _keys!1208) from!1455) lt!551718)) (select (arr!37792 _keys!1208) from!1455)) lt!551711)))

(declare-fun lt!551708 () Unit!40167)

(declare-fun addThenRemoveForNewKeyIsSame!293 (ListLongMap!17969 (_ BitVec 64) V!46169) Unit!40167)

(assert (=> b!1213497 (= lt!551708 (addThenRemoveForNewKeyIsSame!293 lt!551711 (select (arr!37792 _keys!1208) from!1455) lt!551718))))

(declare-fun lt!551712 () V!46169)

(declare-fun _values!996 () array!78324)

(declare-fun get!19311 (ValueCell!14681 V!46169) V!46169)

(assert (=> b!1213497 (= lt!551718 (get!19311 (select (arr!37793 _values!996) from!1455) lt!551712))))

(declare-fun lt!551706 () Unit!40167)

(declare-fun e!689194 () Unit!40167)

(assert (=> b!1213497 (= lt!551706 e!689194)))

(declare-fun c!119844 () Bool)

(declare-fun contains!7014 (ListLongMap!17969 (_ BitVec 64)) Bool)

(assert (=> b!1213497 (= c!119844 (contains!7014 lt!551711 k!934))))

(assert (=> b!1213497 (= lt!551711 (getCurrentListMapNoExtraKeys!5405 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60403 () Bool)

(declare-fun call!60411 () ListLongMap!17969)

(declare-fun call!60407 () ListLongMap!17969)

(assert (=> bm!60403 (= call!60411 call!60407)))

(declare-fun lt!551721 () ListLongMap!17969)

(declare-fun bm!60404 () Bool)

(declare-fun call!60406 () Bool)

(assert (=> bm!60404 (= call!60406 (contains!7014 (ite c!119848 lt!551721 call!60411) k!934))))

(declare-fun b!1213498 () Bool)

(declare-fun e!689195 () Bool)

(assert (=> b!1213498 (= e!689195 tp_is_empty!30781)))

(declare-fun b!1213499 () Bool)

(declare-fun e!689197 () Bool)

(declare-fun arrayContainsKey!0 (array!78322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1213499 (= e!689197 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!48046 () Bool)

(declare-fun mapRes!48046 () Bool)

(assert (=> mapIsEmpty!48046 mapRes!48046))

(declare-fun b!1213501 () Bool)

(declare-fun Unit!40169 () Unit!40167)

(assert (=> b!1213501 (= e!689194 Unit!40169)))

(declare-fun mapNonEmpty!48046 () Bool)

(declare-fun tp!91253 () Bool)

(assert (=> mapNonEmpty!48046 (= mapRes!48046 (and tp!91253 e!689191))))

(declare-fun mapValue!48046 () ValueCell!14681)

(declare-fun mapRest!48046 () (Array (_ BitVec 32) ValueCell!14681))

(declare-fun mapKey!48046 () (_ BitVec 32))

(assert (=> mapNonEmpty!48046 (= (arr!37793 _values!996) (store mapRest!48046 mapKey!48046 mapValue!48046))))

(declare-fun b!1213502 () Bool)

(declare-fun Unit!40170 () Unit!40167)

(assert (=> b!1213502 (= e!689201 Unit!40170)))

(declare-fun b!1213503 () Bool)

(declare-fun e!689190 () Bool)

(assert (=> b!1213503 (= e!689199 (not e!689190))))

(declare-fun res!805851 () Bool)

(assert (=> b!1213503 (=> res!805851 e!689190)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1213503 (= res!805851 (bvsgt from!1455 i!673))))

(assert (=> b!1213503 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!551704 () Unit!40167)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78322 (_ BitVec 64) (_ BitVec 32)) Unit!40167)

(assert (=> b!1213503 (= lt!551704 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1213504 () Bool)

(declare-fun res!805841 () Bool)

(declare-fun e!689187 () Bool)

(assert (=> b!1213504 (=> (not res!805841) (not e!689187))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1213504 (= res!805841 (validKeyInArray!0 k!934))))

(declare-fun bm!60405 () Bool)

(declare-fun call!60409 () ListLongMap!17969)

(assert (=> bm!60405 (= call!60409 (getCurrentListMapNoExtraKeys!5405 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60406 () Bool)

(assert (=> bm!60406 (= call!60405 call!60406)))

(declare-fun b!1213505 () Bool)

(declare-fun lt!551717 () Unit!40167)

(assert (=> b!1213505 (= e!689189 lt!551717)))

(assert (=> b!1213505 (= lt!551717 call!60412)))

(assert (=> b!1213505 call!60405))

(declare-fun bm!60407 () Bool)

(assert (=> bm!60407 (= call!60407 (+!4025 (ite c!119848 lt!551721 lt!551711) (ite c!119848 (tuple2!19989 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119843 (tuple2!19989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19989 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1213506 () Bool)

(assert (=> b!1213506 (= e!689187 e!689199)))

(declare-fun res!805847 () Bool)

(assert (=> b!1213506 (=> (not res!805847) (not e!689199))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78322 (_ BitVec 32)) Bool)

(assert (=> b!1213506 (= res!805847 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!551713 mask!1564))))

(assert (=> b!1213506 (= lt!551713 (array!78323 (store (arr!37792 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38329 _keys!1208)))))

(declare-fun b!1213507 () Bool)

(declare-fun res!805855 () Bool)

(assert (=> b!1213507 (=> (not res!805855) (not e!689187))))

(assert (=> b!1213507 (= res!805855 (and (= (size!38330 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38329 _keys!1208) (size!38330 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1213508 () Bool)

(declare-fun e!689186 () Bool)

(assert (=> b!1213508 (= e!689190 e!689186)))

(declare-fun res!805852 () Bool)

(assert (=> b!1213508 (=> res!805852 e!689186)))

(assert (=> b!1213508 (= res!805852 (not (= from!1455 i!673)))))

(declare-fun lt!551702 () ListLongMap!17969)

(assert (=> b!1213508 (= lt!551702 (getCurrentListMapNoExtraKeys!5405 lt!551713 lt!551714 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1213508 (= lt!551714 (array!78325 (store (arr!37793 _values!996) i!673 (ValueCellFull!14681 lt!551712)) (size!38330 _values!996)))))

(declare-fun dynLambda!3315 (Int (_ BitVec 64)) V!46169)

(assert (=> b!1213508 (= lt!551712 (dynLambda!3315 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1213508 (= lt!551720 (getCurrentListMapNoExtraKeys!5405 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1213509 () Bool)

(declare-fun res!805842 () Bool)

(assert (=> b!1213509 (=> (not res!805842) (not e!689187))))

(assert (=> b!1213509 (= res!805842 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!60408 () Bool)

(declare-fun call!60408 () ListLongMap!17969)

(assert (=> bm!60408 (= call!60408 (getCurrentListMapNoExtraKeys!5405 lt!551713 lt!551714 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213510 () Bool)

(assert (=> b!1213510 (= c!119843 (and (not lt!551710) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!689198 () Unit!40167)

(assert (=> b!1213510 (= e!689198 e!689189)))

(declare-fun b!1213511 () Bool)

(assert (=> b!1213511 (contains!7014 call!60407 k!934)))

(declare-fun lt!551723 () Unit!40167)

(assert (=> b!1213511 (= lt!551723 (addStillContains!1083 lt!551721 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1213511 call!60406))

(assert (=> b!1213511 (= lt!551721 (+!4025 lt!551711 (tuple2!19989 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!551707 () Unit!40167)

(assert (=> b!1213511 (= lt!551707 call!60410)))

(assert (=> b!1213511 (= e!689198 lt!551723)))

(declare-fun res!805848 () Bool)

(assert (=> start!101190 (=> (not res!805848) (not e!689187))))

(assert (=> start!101190 (= res!805848 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38329 _keys!1208))))))

(assert (=> start!101190 e!689187))

(assert (=> start!101190 tp_is_empty!30781))

(declare-fun array_inv!28684 (array!78322) Bool)

(assert (=> start!101190 (array_inv!28684 _keys!1208)))

(assert (=> start!101190 true))

(assert (=> start!101190 tp!91254))

(declare-fun e!689196 () Bool)

(declare-fun array_inv!28685 (array!78324) Bool)

(assert (=> start!101190 (and (array_inv!28685 _values!996) e!689196)))

(declare-fun b!1213500 () Bool)

(declare-fun res!805846 () Bool)

(assert (=> b!1213500 (=> (not res!805846) (not e!689187))))

(assert (=> b!1213500 (= res!805846 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38329 _keys!1208))))))

(declare-fun e!689200 () Bool)

(declare-fun b!1213512 () Bool)

(assert (=> b!1213512 (= e!689200 (= call!60408 (-!1894 call!60409 k!934)))))

(declare-fun b!1213513 () Bool)

(declare-fun res!805854 () Bool)

(assert (=> b!1213513 (=> (not res!805854) (not e!689187))))

(assert (=> b!1213513 (= res!805854 (= (select (arr!37792 _keys!1208) i!673) k!934))))

(declare-fun b!1213514 () Bool)

(declare-fun Unit!40171 () Unit!40167)

(assert (=> b!1213514 (= e!689194 Unit!40171)))

(assert (=> b!1213514 (= lt!551710 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1213514 (= c!119848 (and (not lt!551710) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!551703 () Unit!40167)

(assert (=> b!1213514 (= lt!551703 e!689198)))

(declare-fun lt!551722 () Unit!40167)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!618 (array!78322 array!78324 (_ BitVec 32) (_ BitVec 32) V!46169 V!46169 (_ BitVec 64) (_ BitVec 32) Int) Unit!40167)

(assert (=> b!1213514 (= lt!551722 (lemmaListMapContainsThenArrayContainsFrom!618 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119846 () Bool)

(assert (=> b!1213514 (= c!119846 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805844 () Bool)

(assert (=> b!1213514 (= res!805844 e!689197)))

(declare-fun e!689193 () Bool)

(assert (=> b!1213514 (=> (not res!805844) (not e!689193))))

(assert (=> b!1213514 e!689193))

(declare-fun lt!551705 () Unit!40167)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78322 (_ BitVec 32) (_ BitVec 32)) Unit!40167)

(assert (=> b!1213514 (= lt!551705 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1213514 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26804)))

(declare-fun lt!551719 () Unit!40167)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78322 (_ BitVec 64) (_ BitVec 32) List!26807) Unit!40167)

(assert (=> b!1213514 (= lt!551719 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26804))))

(assert (=> b!1213514 false))

(declare-fun bm!60409 () Bool)

(assert (=> bm!60409 (= call!60412 call!60410)))

(declare-fun b!1213515 () Bool)

(assert (=> b!1213515 (= e!689186 e!689202)))

(declare-fun res!805845 () Bool)

(assert (=> b!1213515 (=> res!805845 e!689202)))

(assert (=> b!1213515 (= res!805845 (not (= (select (arr!37792 _keys!1208) from!1455) k!934)))))

(assert (=> b!1213515 e!689200))

(declare-fun c!119847 () Bool)

(assert (=> b!1213515 (= c!119847 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!551715 () Unit!40167)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1099 (array!78322 array!78324 (_ BitVec 32) (_ BitVec 32) V!46169 V!46169 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40167)

(assert (=> b!1213515 (= lt!551715 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1099 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1213516 () Bool)

(assert (=> b!1213516 (= e!689200 (= call!60408 call!60409))))

(declare-fun b!1213517 () Bool)

(declare-fun res!805850 () Bool)

(assert (=> b!1213517 (=> (not res!805850) (not e!689187))))

(assert (=> b!1213517 (= res!805850 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26804))))

(declare-fun b!1213518 () Bool)

(assert (=> b!1213518 (= e!689196 (and e!689195 mapRes!48046))))

(declare-fun condMapEmpty!48046 () Bool)

(declare-fun mapDefault!48046 () ValueCell!14681)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!101124 () Bool)

(assert start!101124)

(declare-fun b_free!26049 () Bool)

(declare-fun b_next!26049 () Bool)

(assert (=> start!101124 (= b_free!26049 (not b_next!26049))))

(declare-fun tp!91166 () Bool)

(declare-fun b_and!43207 () Bool)

(assert (=> start!101124 (= tp!91166 b_and!43207)))

(declare-fun res!805145 () Bool)

(declare-fun e!688363 () Bool)

(assert (=> start!101124 (=> (not res!805145) (not e!688363))))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((array!78264 0))(
  ( (array!78265 (arr!37764 (Array (_ BitVec 32) (_ BitVec 64))) (size!38301 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78264)

(assert (=> start!101124 (= res!805145 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38301 _keys!1208))))))

(assert (=> start!101124 e!688363))

(declare-fun tp_is_empty!30753 () Bool)

(assert (=> start!101124 tp_is_empty!30753))

(declare-fun array_inv!28662 (array!78264) Bool)

(assert (=> start!101124 (array_inv!28662 _keys!1208)))

(assert (=> start!101124 true))

(assert (=> start!101124 tp!91166))

(declare-datatypes ((V!46131 0))(
  ( (V!46132 (val!15433 Int)) )
))
(declare-datatypes ((ValueCell!14667 0))(
  ( (ValueCellFull!14667 (v!18086 V!46131)) (EmptyCell!14667) )
))
(declare-datatypes ((array!78266 0))(
  ( (array!78267 (arr!37765 (Array (_ BitVec 32) ValueCell!14667)) (size!38302 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78266)

(declare-fun e!688370 () Bool)

(declare-fun array_inv!28663 (array!78266) Bool)

(assert (=> start!101124 (and (array_inv!28663 _values!996) e!688370)))

(declare-fun b!1212028 () Bool)

(declare-fun res!805139 () Bool)

(assert (=> b!1212028 (=> (not res!805139) (not e!688363))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1212028 (= res!805139 (validMask!0 mask!1564))))

(declare-fun b!1212029 () Bool)

(declare-datatypes ((tuple2!19962 0))(
  ( (tuple2!19963 (_1!9991 (_ BitVec 64)) (_2!9991 V!46131)) )
))
(declare-datatypes ((List!26782 0))(
  ( (Nil!26779) (Cons!26778 (h!27987 tuple2!19962) (t!39818 List!26782)) )
))
(declare-datatypes ((ListLongMap!17943 0))(
  ( (ListLongMap!17944 (toList!8987 List!26782)) )
))
(declare-fun lt!550660 () ListLongMap!17943)

(declare-fun minValue!944 () V!46131)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!7002 (ListLongMap!17943 (_ BitVec 64)) Bool)

(declare-fun +!4014 (ListLongMap!17943 tuple2!19962) ListLongMap!17943)

(assert (=> b!1212029 (contains!7002 (+!4014 lt!550660 (tuple2!19963 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-datatypes ((Unit!40109 0))(
  ( (Unit!40110) )
))
(declare-fun lt!550670 () Unit!40109)

(declare-fun addStillContains!1074 (ListLongMap!17943 (_ BitVec 64) V!46131 (_ BitVec 64)) Unit!40109)

(assert (=> b!1212029 (= lt!550670 (addStillContains!1074 lt!550660 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun call!60050 () Bool)

(assert (=> b!1212029 call!60050))

(declare-fun call!60048 () ListLongMap!17943)

(assert (=> b!1212029 (= lt!550660 call!60048)))

(declare-fun lt!550659 () Unit!40109)

(declare-fun call!60054 () Unit!40109)

(assert (=> b!1212029 (= lt!550659 call!60054)))

(declare-fun e!688364 () Unit!40109)

(assert (=> b!1212029 (= e!688364 lt!550670)))

(declare-fun b!1212030 () Bool)

(declare-fun e!688361 () Bool)

(declare-fun e!688371 () Bool)

(assert (=> b!1212030 (= e!688361 e!688371)))

(declare-fun res!805143 () Bool)

(assert (=> b!1212030 (=> res!805143 e!688371)))

(assert (=> b!1212030 (= res!805143 (not (= (select (arr!37764 _keys!1208) from!1455) k0!934)))))

(declare-fun e!688357 () Bool)

(assert (=> b!1212030 e!688357))

(declare-fun c!119544 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1212030 (= c!119544 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!46131)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!550657 () Unit!40109)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1091 (array!78264 array!78266 (_ BitVec 32) (_ BitVec 32) V!46131 V!46131 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40109)

(assert (=> b!1212030 (= lt!550657 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1091 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212031 () Bool)

(declare-fun res!805150 () Bool)

(assert (=> b!1212031 (=> (not res!805150) (not e!688363))))

(assert (=> b!1212031 (= res!805150 (= (select (arr!37764 _keys!1208) i!673) k0!934))))

(declare-fun b!1212032 () Bool)

(declare-fun res!805144 () Bool)

(assert (=> b!1212032 (=> (not res!805144) (not e!688363))))

(assert (=> b!1212032 (= res!805144 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38301 _keys!1208))))))

(declare-fun b!1212033 () Bool)

(declare-fun e!688369 () Unit!40109)

(declare-fun Unit!40111 () Unit!40109)

(assert (=> b!1212033 (= e!688369 Unit!40111)))

(declare-fun lt!550667 () Bool)

(assert (=> b!1212033 (= lt!550667 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!119547 () Bool)

(assert (=> b!1212033 (= c!119547 (and (not lt!550667) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!550672 () Unit!40109)

(assert (=> b!1212033 (= lt!550672 e!688364)))

(declare-fun lt!550669 () Unit!40109)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!611 (array!78264 array!78266 (_ BitVec 32) (_ BitVec 32) V!46131 V!46131 (_ BitVec 64) (_ BitVec 32) Int) Unit!40109)

(assert (=> b!1212033 (= lt!550669 (lemmaListMapContainsThenArrayContainsFrom!611 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119549 () Bool)

(assert (=> b!1212033 (= c!119549 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!805141 () Bool)

(declare-fun e!688359 () Bool)

(assert (=> b!1212033 (= res!805141 e!688359)))

(declare-fun e!688373 () Bool)

(assert (=> b!1212033 (=> (not res!805141) (not e!688373))))

(assert (=> b!1212033 e!688373))

(declare-fun lt!550662 () Unit!40109)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78264 (_ BitVec 32) (_ BitVec 32)) Unit!40109)

(assert (=> b!1212033 (= lt!550662 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!26783 0))(
  ( (Nil!26780) (Cons!26779 (h!27988 (_ BitVec 64)) (t!39819 List!26783)) )
))
(declare-fun arrayNoDuplicates!0 (array!78264 (_ BitVec 32) List!26783) Bool)

(assert (=> b!1212033 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26780)))

(declare-fun lt!550666 () Unit!40109)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78264 (_ BitVec 64) (_ BitVec 32) List!26783) Unit!40109)

(assert (=> b!1212033 (= lt!550666 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!26780))))

(assert (=> b!1212033 false))

(declare-fun bm!60045 () Bool)

(declare-fun call!60052 () ListLongMap!17943)

(assert (=> bm!60045 (= call!60050 (contains!7002 (ite c!119547 lt!550660 call!60052) k0!934))))

(declare-fun mapNonEmpty!48001 () Bool)

(declare-fun mapRes!48001 () Bool)

(declare-fun tp!91167 () Bool)

(declare-fun e!688368 () Bool)

(assert (=> mapNonEmpty!48001 (= mapRes!48001 (and tp!91167 e!688368))))

(declare-fun mapKey!48001 () (_ BitVec 32))

(declare-fun mapRest!48001 () (Array (_ BitVec 32) ValueCell!14667))

(declare-fun mapValue!48001 () ValueCell!14667)

(assert (=> mapNonEmpty!48001 (= (arr!37765 _values!996) (store mapRest!48001 mapKey!48001 mapValue!48001))))

(declare-fun b!1212034 () Bool)

(declare-fun arrayContainsKey!0 (array!78264 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1212034 (= e!688359 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapIsEmpty!48001 () Bool)

(assert (=> mapIsEmpty!48001 mapRes!48001))

(declare-fun b!1212035 () Bool)

(declare-fun e!688360 () Unit!40109)

(declare-fun lt!550675 () Unit!40109)

(assert (=> b!1212035 (= e!688360 lt!550675)))

(declare-fun call!60055 () Unit!40109)

(assert (=> b!1212035 (= lt!550675 call!60055)))

(declare-fun call!60053 () Bool)

(assert (=> b!1212035 call!60053))

(declare-fun b!1212036 () Bool)

(declare-fun e!688372 () Unit!40109)

(assert (=> b!1212036 (= e!688360 e!688372)))

(declare-fun c!119546 () Bool)

(assert (=> b!1212036 (= c!119546 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!550667))))

(declare-fun b!1212037 () Bool)

(declare-fun Unit!40112 () Unit!40109)

(assert (=> b!1212037 (= e!688372 Unit!40112)))

(declare-fun bm!60046 () Bool)

(declare-fun call!60051 () ListLongMap!17943)

(declare-fun getCurrentListMapNoExtraKeys!5392 (array!78264 array!78266 (_ BitVec 32) (_ BitVec 32) V!46131 V!46131 (_ BitVec 32) Int) ListLongMap!17943)

(assert (=> bm!60046 (= call!60051 (getCurrentListMapNoExtraKeys!5392 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212038 () Bool)

(declare-fun c!119545 () Bool)

(assert (=> b!1212038 (= c!119545 (and (not lt!550667) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1212038 (= e!688364 e!688360)))

(declare-fun b!1212039 () Bool)

(declare-fun e!688365 () Bool)

(assert (=> b!1212039 (= e!688363 e!688365)))

(declare-fun res!805146 () Bool)

(assert (=> b!1212039 (=> (not res!805146) (not e!688365))))

(declare-fun lt!550676 () array!78264)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78264 (_ BitVec 32)) Bool)

(assert (=> b!1212039 (= res!805146 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!550676 mask!1564))))

(assert (=> b!1212039 (= lt!550676 (array!78265 (store (arr!37764 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38301 _keys!1208)))))

(declare-fun b!1212040 () Bool)

(assert (=> b!1212040 (= e!688359 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!550667) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1212041 () Bool)

(declare-fun Unit!40113 () Unit!40109)

(assert (=> b!1212041 (= e!688369 Unit!40113)))

(declare-fun bm!60047 () Bool)

(assert (=> bm!60047 (= call!60053 call!60050)))

(declare-fun b!1212042 () Bool)

(assert (=> b!1212042 (= e!688373 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1212043 () Bool)

(assert (=> b!1212043 (= e!688368 tp_is_empty!30753)))

(declare-fun b!1212044 () Bool)

(assert (=> b!1212044 call!60053))

(declare-fun lt!550677 () Unit!40109)

(assert (=> b!1212044 (= lt!550677 call!60055)))

(assert (=> b!1212044 (= e!688372 lt!550677)))

(declare-fun lt!550674 () ListLongMap!17943)

(declare-fun bm!60048 () Bool)

(assert (=> bm!60048 (= call!60048 (+!4014 lt!550674 (ite (or c!119547 c!119545) (tuple2!19963 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19963 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun call!60049 () ListLongMap!17943)

(declare-fun b!1212045 () Bool)

(declare-fun -!1883 (ListLongMap!17943 (_ BitVec 64)) ListLongMap!17943)

(assert (=> b!1212045 (= e!688357 (= call!60049 (-!1883 call!60051 k0!934)))))

(declare-fun b!1212046 () Bool)

(assert (=> b!1212046 (= e!688371 true)))

(declare-fun e!688366 () Bool)

(assert (=> b!1212046 e!688366))

(declare-fun res!805142 () Bool)

(assert (=> b!1212046 (=> (not res!805142) (not e!688366))))

(declare-fun lt!550663 () ListLongMap!17943)

(assert (=> b!1212046 (= res!805142 (= lt!550663 lt!550674))))

(declare-fun lt!550658 () ListLongMap!17943)

(assert (=> b!1212046 (= lt!550663 (-!1883 lt!550658 k0!934))))

(declare-fun lt!550671 () V!46131)

(assert (=> b!1212046 (= (-!1883 (+!4014 lt!550674 (tuple2!19963 (select (arr!37764 _keys!1208) from!1455) lt!550671)) (select (arr!37764 _keys!1208) from!1455)) lt!550674)))

(declare-fun lt!550668 () Unit!40109)

(declare-fun addThenRemoveForNewKeyIsSame!284 (ListLongMap!17943 (_ BitVec 64) V!46131) Unit!40109)

(assert (=> b!1212046 (= lt!550668 (addThenRemoveForNewKeyIsSame!284 lt!550674 (select (arr!37764 _keys!1208) from!1455) lt!550671))))

(declare-fun lt!550661 () V!46131)

(declare-fun get!19290 (ValueCell!14667 V!46131) V!46131)

(assert (=> b!1212046 (= lt!550671 (get!19290 (select (arr!37765 _values!996) from!1455) lt!550661))))

(declare-fun lt!550673 () Unit!40109)

(assert (=> b!1212046 (= lt!550673 e!688369)))

(declare-fun c!119548 () Bool)

(assert (=> b!1212046 (= c!119548 (contains!7002 lt!550674 k0!934))))

(assert (=> b!1212046 (= lt!550674 (getCurrentListMapNoExtraKeys!5392 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!60049 () Bool)

(assert (=> bm!60049 (= call!60052 call!60048)))

(declare-fun b!1212047 () Bool)

(declare-fun res!805140 () Bool)

(assert (=> b!1212047 (=> (not res!805140) (not e!688363))))

(assert (=> b!1212047 (= res!805140 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1212048 () Bool)

(declare-fun res!805152 () Bool)

(assert (=> b!1212048 (=> (not res!805152) (not e!688363))))

(assert (=> b!1212048 (= res!805152 (and (= (size!38302 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38301 _keys!1208) (size!38302 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun lt!550678 () array!78266)

(declare-fun b!1212049 () Bool)

(assert (=> b!1212049 (= e!688366 (= lt!550663 (getCurrentListMapNoExtraKeys!5392 lt!550676 lt!550678 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1212050 () Bool)

(declare-fun res!805151 () Bool)

(assert (=> b!1212050 (=> (not res!805151) (not e!688363))))

(assert (=> b!1212050 (= res!805151 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26780))))

(declare-fun b!1212051 () Bool)

(assert (=> b!1212051 (= e!688357 (= call!60049 call!60051))))

(declare-fun b!1212052 () Bool)

(declare-fun res!805147 () Bool)

(assert (=> b!1212052 (=> (not res!805147) (not e!688363))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1212052 (= res!805147 (validKeyInArray!0 k0!934))))

(declare-fun b!1212053 () Bool)

(declare-fun e!688362 () Bool)

(assert (=> b!1212053 (= e!688365 (not e!688362))))

(declare-fun res!805138 () Bool)

(assert (=> b!1212053 (=> res!805138 e!688362)))

(assert (=> b!1212053 (= res!805138 (bvsgt from!1455 i!673))))

(assert (=> b!1212053 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!550665 () Unit!40109)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!78264 (_ BitVec 64) (_ BitVec 32)) Unit!40109)

(assert (=> b!1212053 (= lt!550665 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!60050 () Bool)

(assert (=> bm!60050 (= call!60049 (getCurrentListMapNoExtraKeys!5392 lt!550676 lt!550678 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1212054 () Bool)

(declare-fun e!688367 () Bool)

(assert (=> b!1212054 (= e!688367 tp_is_empty!30753)))

(declare-fun b!1212055 () Bool)

(assert (=> b!1212055 (= e!688362 e!688361)))

(declare-fun res!805148 () Bool)

(assert (=> b!1212055 (=> res!805148 e!688361)))

(assert (=> b!1212055 (= res!805148 (not (= from!1455 i!673)))))

(declare-fun lt!550664 () ListLongMap!17943)

(assert (=> b!1212055 (= lt!550664 (getCurrentListMapNoExtraKeys!5392 lt!550676 lt!550678 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1212055 (= lt!550678 (array!78267 (store (arr!37765 _values!996) i!673 (ValueCellFull!14667 lt!550661)) (size!38302 _values!996)))))

(declare-fun dynLambda!3305 (Int (_ BitVec 64)) V!46131)

(assert (=> b!1212055 (= lt!550661 (dynLambda!3305 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1212055 (= lt!550658 (getCurrentListMapNoExtraKeys!5392 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1212056 () Bool)

(assert (=> b!1212056 (= e!688370 (and e!688367 mapRes!48001))))

(declare-fun condMapEmpty!48001 () Bool)

(declare-fun mapDefault!48001 () ValueCell!14667)

(assert (=> b!1212056 (= condMapEmpty!48001 (= (arr!37765 _values!996) ((as const (Array (_ BitVec 32) ValueCell!14667)) mapDefault!48001)))))

(declare-fun bm!60051 () Bool)

(assert (=> bm!60051 (= call!60054 (addStillContains!1074 lt!550674 (ite (or c!119547 c!119545) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!119547 c!119545) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!60052 () Bool)

(assert (=> bm!60052 (= call!60055 call!60054)))

(declare-fun b!1212057 () Bool)

(declare-fun res!805149 () Bool)

(assert (=> b!1212057 (=> (not res!805149) (not e!688365))))

(assert (=> b!1212057 (= res!805149 (arrayNoDuplicates!0 lt!550676 #b00000000000000000000000000000000 Nil!26780))))

(assert (= (and start!101124 res!805145) b!1212028))

(assert (= (and b!1212028 res!805139) b!1212048))

(assert (= (and b!1212048 res!805152) b!1212047))

(assert (= (and b!1212047 res!805140) b!1212050))

(assert (= (and b!1212050 res!805151) b!1212032))

(assert (= (and b!1212032 res!805144) b!1212052))

(assert (= (and b!1212052 res!805147) b!1212031))

(assert (= (and b!1212031 res!805150) b!1212039))

(assert (= (and b!1212039 res!805146) b!1212057))

(assert (= (and b!1212057 res!805149) b!1212053))

(assert (= (and b!1212053 (not res!805138)) b!1212055))

(assert (= (and b!1212055 (not res!805148)) b!1212030))

(assert (= (and b!1212030 c!119544) b!1212045))

(assert (= (and b!1212030 (not c!119544)) b!1212051))

(assert (= (or b!1212045 b!1212051) bm!60050))

(assert (= (or b!1212045 b!1212051) bm!60046))

(assert (= (and b!1212030 (not res!805143)) b!1212046))

(assert (= (and b!1212046 c!119548) b!1212033))

(assert (= (and b!1212046 (not c!119548)) b!1212041))

(assert (= (and b!1212033 c!119547) b!1212029))

(assert (= (and b!1212033 (not c!119547)) b!1212038))

(assert (= (and b!1212038 c!119545) b!1212035))

(assert (= (and b!1212038 (not c!119545)) b!1212036))

(assert (= (and b!1212036 c!119546) b!1212044))

(assert (= (and b!1212036 (not c!119546)) b!1212037))

(assert (= (or b!1212035 b!1212044) bm!60052))

(assert (= (or b!1212035 b!1212044) bm!60049))

(assert (= (or b!1212035 b!1212044) bm!60047))

(assert (= (or b!1212029 bm!60047) bm!60045))

(assert (= (or b!1212029 bm!60052) bm!60051))

(assert (= (or b!1212029 bm!60049) bm!60048))

(assert (= (and b!1212033 c!119549) b!1212034))

(assert (= (and b!1212033 (not c!119549)) b!1212040))

(assert (= (and b!1212033 res!805141) b!1212042))

(assert (= (and b!1212046 res!805142) b!1212049))

(assert (= (and b!1212056 condMapEmpty!48001) mapIsEmpty!48001))

(assert (= (and b!1212056 (not condMapEmpty!48001)) mapNonEmpty!48001))

(get-info :version)

(assert (= (and mapNonEmpty!48001 ((_ is ValueCellFull!14667) mapValue!48001)) b!1212043))

(assert (= (and b!1212056 ((_ is ValueCellFull!14667) mapDefault!48001)) b!1212054))

(assert (= start!101124 b!1212056))

(declare-fun b_lambda!21697 () Bool)

(assert (=> (not b_lambda!21697) (not b!1212055)))

(declare-fun t!39817 () Bool)

(declare-fun tb!10857 () Bool)

(assert (=> (and start!101124 (= defaultEntry!1004 defaultEntry!1004) t!39817) tb!10857))

(declare-fun result!22301 () Bool)

(assert (=> tb!10857 (= result!22301 tp_is_empty!30753)))

(assert (=> b!1212055 t!39817))

(declare-fun b_and!43209 () Bool)

(assert (= b_and!43207 (and (=> t!39817 result!22301) b_and!43209)))

(declare-fun m!1117445 () Bool)

(assert (=> b!1212049 m!1117445))

(declare-fun m!1117447 () Bool)

(assert (=> b!1212052 m!1117447))

(declare-fun m!1117449 () Bool)

(assert (=> bm!60051 m!1117449))

(declare-fun m!1117451 () Bool)

(assert (=> b!1212057 m!1117451))

(declare-fun m!1117453 () Bool)

(assert (=> b!1212046 m!1117453))

(declare-fun m!1117455 () Bool)

(assert (=> b!1212046 m!1117455))

(declare-fun m!1117457 () Bool)

(assert (=> b!1212046 m!1117457))

(assert (=> b!1212046 m!1117455))

(declare-fun m!1117459 () Bool)

(assert (=> b!1212046 m!1117459))

(declare-fun m!1117461 () Bool)

(assert (=> b!1212046 m!1117461))

(declare-fun m!1117463 () Bool)

(assert (=> b!1212046 m!1117463))

(assert (=> b!1212046 m!1117453))

(assert (=> b!1212046 m!1117455))

(declare-fun m!1117465 () Bool)

(assert (=> b!1212046 m!1117465))

(assert (=> b!1212046 m!1117463))

(declare-fun m!1117467 () Bool)

(assert (=> b!1212046 m!1117467))

(declare-fun m!1117469 () Bool)

(assert (=> b!1212046 m!1117469))

(declare-fun m!1117471 () Bool)

(assert (=> b!1212055 m!1117471))

(declare-fun m!1117473 () Bool)

(assert (=> b!1212055 m!1117473))

(declare-fun m!1117475 () Bool)

(assert (=> b!1212055 m!1117475))

(declare-fun m!1117477 () Bool)

(assert (=> b!1212055 m!1117477))

(declare-fun m!1117479 () Bool)

(assert (=> b!1212033 m!1117479))

(declare-fun m!1117481 () Bool)

(assert (=> b!1212033 m!1117481))

(declare-fun m!1117483 () Bool)

(assert (=> b!1212033 m!1117483))

(declare-fun m!1117485 () Bool)

(assert (=> b!1212033 m!1117485))

(declare-fun m!1117487 () Bool)

(assert (=> start!101124 m!1117487))

(declare-fun m!1117489 () Bool)

(assert (=> start!101124 m!1117489))

(declare-fun m!1117491 () Bool)

(assert (=> bm!60045 m!1117491))

(declare-fun m!1117493 () Bool)

(assert (=> b!1212053 m!1117493))

(declare-fun m!1117495 () Bool)

(assert (=> b!1212053 m!1117495))

(declare-fun m!1117497 () Bool)

(assert (=> b!1212045 m!1117497))

(declare-fun m!1117499 () Bool)

(assert (=> b!1212047 m!1117499))

(assert (=> bm!60046 m!1117459))

(assert (=> b!1212030 m!1117455))

(declare-fun m!1117501 () Bool)

(assert (=> b!1212030 m!1117501))

(declare-fun m!1117503 () Bool)

(assert (=> b!1212028 m!1117503))

(declare-fun m!1117505 () Bool)

(assert (=> b!1212031 m!1117505))

(declare-fun m!1117507 () Bool)

(assert (=> b!1212039 m!1117507))

(declare-fun m!1117509 () Bool)

(assert (=> b!1212039 m!1117509))

(declare-fun m!1117511 () Bool)

(assert (=> b!1212042 m!1117511))

(declare-fun m!1117513 () Bool)

(assert (=> b!1212029 m!1117513))

(assert (=> b!1212029 m!1117513))

(declare-fun m!1117515 () Bool)

(assert (=> b!1212029 m!1117515))

(declare-fun m!1117517 () Bool)

(assert (=> b!1212029 m!1117517))

(assert (=> bm!60050 m!1117445))

(declare-fun m!1117519 () Bool)

(assert (=> bm!60048 m!1117519))

(declare-fun m!1117521 () Bool)

(assert (=> mapNonEmpty!48001 m!1117521))

(assert (=> b!1212034 m!1117511))

(declare-fun m!1117523 () Bool)

(assert (=> b!1212050 m!1117523))

(check-sat (not bm!60046) (not start!101124) (not b!1212046) (not bm!60050) (not b!1212053) (not b!1212028) (not b!1212057) (not b!1212045) (not b!1212033) (not b!1212047) (not mapNonEmpty!48001) b_and!43209 (not b!1212029) (not b!1212042) (not bm!60048) (not bm!60051) tp_is_empty!30753 (not b!1212055) (not b!1212052) (not b!1212049) (not b_lambda!21697) (not b!1212050) (not bm!60045) (not b!1212030) (not b!1212039) (not b_next!26049) (not b!1212034))
(check-sat b_and!43209 (not b_next!26049))

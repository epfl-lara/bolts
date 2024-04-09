; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!100946 () Bool)

(assert start!100946)

(declare-fun b_free!25979 () Bool)

(declare-fun b_next!25979 () Bool)

(assert (=> start!100946 (= b_free!25979 (not b_next!25979))))

(declare-fun tp!90947 () Bool)

(declare-fun b_and!43013 () Bool)

(assert (=> start!100946 (= tp!90947 b_and!43013)))

(declare-fun b!1208313 () Bool)

(declare-fun call!59152 () Bool)

(assert (=> b!1208313 call!59152))

(declare-datatypes ((Unit!39983 0))(
  ( (Unit!39984) )
))
(declare-fun lt!548348 () Unit!39983)

(declare-fun call!59146 () Unit!39983)

(assert (=> b!1208313 (= lt!548348 call!59146)))

(declare-fun e!686263 () Unit!39983)

(assert (=> b!1208313 (= e!686263 lt!548348)))

(declare-fun b!1208314 () Bool)

(declare-fun res!803302 () Bool)

(declare-fun e!686273 () Bool)

(assert (=> b!1208314 (=> (not res!803302) (not e!686273))))

(declare-datatypes ((array!78124 0))(
  ( (array!78125 (arr!37697 (Array (_ BitVec 32) (_ BitVec 64))) (size!38234 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78124)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78124 (_ BitVec 32)) Bool)

(assert (=> b!1208314 (= res!803302 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-datatypes ((V!46037 0))(
  ( (V!46038 (val!15398 Int)) )
))
(declare-fun zeroValue!944 () V!46037)

(declare-fun bm!59142 () Bool)

(declare-datatypes ((tuple2!19900 0))(
  ( (tuple2!19901 (_1!9960 (_ BitVec 64)) (_2!9960 V!46037)) )
))
(declare-datatypes ((List!26722 0))(
  ( (Nil!26719) (Cons!26718 (h!27927 tuple2!19900) (t!39688 List!26722)) )
))
(declare-datatypes ((ListLongMap!17881 0))(
  ( (ListLongMap!17882 (toList!8956 List!26722)) )
))
(declare-fun lt!548336 () ListLongMap!17881)

(declare-fun c!118816 () Bool)

(declare-fun minValue!944 () V!46037)

(declare-fun c!118820 () Bool)

(declare-fun call!59148 () ListLongMap!17881)

(declare-fun +!3984 (ListLongMap!17881 tuple2!19900) ListLongMap!17881)

(assert (=> bm!59142 (= call!59148 (+!3984 lt!548336 (ite (or c!118816 c!118820) (tuple2!19901 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19901 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1208315 () Bool)

(declare-fun c!118817 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun lt!548344 () Bool)

(assert (=> b!1208315 (= c!118817 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!548344))))

(declare-fun e!686270 () Unit!39983)

(assert (=> b!1208315 (= e!686263 e!686270)))

(declare-fun b!1208316 () Bool)

(declare-fun e!686266 () Bool)

(declare-fun tp_is_empty!30683 () Bool)

(assert (=> b!1208316 (= e!686266 tp_is_empty!30683)))

(declare-fun b!1208317 () Bool)

(declare-fun e!686272 () Bool)

(declare-fun e!686264 () Bool)

(assert (=> b!1208317 (= e!686272 e!686264)))

(declare-fun res!803296 () Bool)

(assert (=> b!1208317 (=> res!803296 e!686264)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6961 (ListLongMap!17881 (_ BitVec 64)) Bool)

(assert (=> b!1208317 (= res!803296 (not (contains!6961 lt!548336 k!934)))))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!14632 0))(
  ( (ValueCellFull!14632 (v!18047 V!46037)) (EmptyCell!14632) )
))
(declare-datatypes ((array!78126 0))(
  ( (array!78127 (arr!37698 (Array (_ BitVec 32) ValueCell!14632)) (size!38235 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78126)

(declare-fun getCurrentListMapNoExtraKeys!5363 (array!78124 array!78126 (_ BitVec 32) (_ BitVec 32) V!46037 V!46037 (_ BitVec 32) Int) ListLongMap!17881)

(assert (=> b!1208317 (= lt!548336 (getCurrentListMapNoExtraKeys!5363 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208318 () Bool)

(declare-fun e!686271 () Unit!39983)

(assert (=> b!1208318 (= e!686271 e!686263)))

(assert (=> b!1208318 (= c!118820 (and (not lt!548344) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1208319 () Bool)

(declare-fun e!686267 () Bool)

(declare-datatypes ((List!26723 0))(
  ( (Nil!26720) (Cons!26719 (h!27928 (_ BitVec 64)) (t!39689 List!26723)) )
))
(declare-fun noDuplicate!1646 (List!26723) Bool)

(assert (=> b!1208319 (= e!686267 (noDuplicate!1646 Nil!26720))))

(declare-fun b!1208320 () Bool)

(declare-fun res!803304 () Bool)

(assert (=> b!1208320 (=> (not res!803304) (not e!686273))))

(assert (=> b!1208320 (= res!803304 (and (= (size!38235 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!38234 _keys!1208) (size!38235 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1208321 () Bool)

(declare-fun e!686275 () Bool)

(assert (=> b!1208321 (= e!686273 e!686275)))

(declare-fun res!803291 () Bool)

(assert (=> b!1208321 (=> (not res!803291) (not e!686275))))

(declare-fun lt!548340 () array!78124)

(assert (=> b!1208321 (= res!803291 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!548340 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1208321 (= lt!548340 (array!78125 (store (arr!37697 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!38234 _keys!1208)))))

(declare-fun b!1208322 () Bool)

(declare-fun lt!548338 () Unit!39983)

(assert (=> b!1208322 (= e!686270 lt!548338)))

(assert (=> b!1208322 (= lt!548338 call!59146)))

(assert (=> b!1208322 call!59152))

(declare-fun b!1208323 () Bool)

(declare-fun res!803299 () Bool)

(assert (=> b!1208323 (=> (not res!803299) (not e!686273))))

(assert (=> b!1208323 (= res!803299 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38234 _keys!1208))))))

(declare-fun b!1208324 () Bool)

(declare-fun res!803300 () Bool)

(assert (=> b!1208324 (=> (not res!803300) (not e!686273))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1208324 (= res!803300 (validKeyInArray!0 k!934))))

(declare-fun bm!59143 () Bool)

(declare-fun call!59147 () Bool)

(assert (=> bm!59143 (= call!59152 call!59147)))

(declare-fun b!1208325 () Bool)

(declare-fun res!803293 () Bool)

(assert (=> b!1208325 (=> (not res!803293) (not e!686273))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1208325 (= res!803293 (validMask!0 mask!1564))))

(declare-fun call!59149 () Unit!39983)

(declare-fun bm!59144 () Bool)

(declare-fun addStillContains!1049 (ListLongMap!17881 (_ BitVec 64) V!46037 (_ BitVec 64)) Unit!39983)

(assert (=> bm!59144 (= call!59149 (addStillContains!1049 lt!548336 (ite (or c!118816 c!118820) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!118816 c!118820) zeroValue!944 minValue!944) k!934))))

(declare-fun e!686265 () Bool)

(declare-fun b!1208326 () Bool)

(declare-fun arrayContainsKey!0 (array!78124 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1208326 (= e!686265 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!59145 () Bool)

(assert (=> bm!59145 (= call!59146 call!59149)))

(declare-fun call!59145 () ListLongMap!17881)

(declare-fun bm!59146 () Bool)

(assert (=> bm!59146 (= call!59145 (getCurrentListMapNoExtraKeys!5363 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!47887 () Bool)

(declare-fun mapRes!47887 () Bool)

(assert (=> mapIsEmpty!47887 mapRes!47887))

(declare-fun b!1208327 () Bool)

(declare-fun e!686262 () Bool)

(declare-fun call!59150 () ListLongMap!17881)

(assert (=> b!1208327 (= e!686262 (= call!59150 call!59145))))

(declare-fun b!1208328 () Bool)

(declare-fun e!686276 () Bool)

(declare-fun e!686274 () Bool)

(assert (=> b!1208328 (= e!686276 e!686274)))

(declare-fun res!803298 () Bool)

(assert (=> b!1208328 (=> res!803298 e!686274)))

(assert (=> b!1208328 (= res!803298 (not (= from!1455 i!673)))))

(declare-fun lt!548334 () ListLongMap!17881)

(declare-fun lt!548346 () array!78126)

(assert (=> b!1208328 (= lt!548334 (getCurrentListMapNoExtraKeys!5363 lt!548340 lt!548346 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!3281 (Int (_ BitVec 64)) V!46037)

(assert (=> b!1208328 (= lt!548346 (array!78127 (store (arr!37698 _values!996) i!673 (ValueCellFull!14632 (dynLambda!3281 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!38235 _values!996)))))

(declare-fun lt!548345 () ListLongMap!17881)

(assert (=> b!1208328 (= lt!548345 (getCurrentListMapNoExtraKeys!5363 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1208329 () Bool)

(declare-fun Unit!39985 () Unit!39983)

(assert (=> b!1208329 (= e!686270 Unit!39985)))

(declare-fun b!1208330 () Bool)

(declare-fun e!686269 () Bool)

(assert (=> b!1208330 (= e!686269 tp_is_empty!30683)))

(declare-fun b!1208331 () Bool)

(declare-fun e!686268 () Bool)

(assert (=> b!1208331 (= e!686268 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!548344) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1208332 () Bool)

(declare-fun res!803295 () Bool)

(assert (=> b!1208332 (=> (not res!803295) (not e!686273))))

(declare-fun arrayNoDuplicates!0 (array!78124 (_ BitVec 32) List!26723) Bool)

(assert (=> b!1208332 (= res!803295 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26720))))

(declare-fun bm!59147 () Bool)

(assert (=> bm!59147 (= call!59150 (getCurrentListMapNoExtraKeys!5363 lt!548340 lt!548346 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1208333 () Bool)

(assert (=> b!1208333 (= e!686264 e!686267)))

(declare-fun res!803305 () Bool)

(assert (=> b!1208333 (=> res!803305 e!686267)))

(assert (=> b!1208333 (= res!803305 (or (bvsge (size!38234 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!38234 _keys!1208)) (bvsge from!1455 (size!38234 _keys!1208))))))

(assert (=> b!1208333 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26720)))

(declare-fun lt!548339 () Unit!39983)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78124 (_ BitVec 32) (_ BitVec 32)) Unit!39983)

(assert (=> b!1208333 (= lt!548339 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1208333 e!686265))

(declare-fun res!803301 () Bool)

(assert (=> b!1208333 (=> (not res!803301) (not e!686265))))

(assert (=> b!1208333 (= res!803301 e!686268)))

(declare-fun c!118818 () Bool)

(assert (=> b!1208333 (= c!118818 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!548342 () Unit!39983)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!586 (array!78124 array!78126 (_ BitVec 32) (_ BitVec 32) V!46037 V!46037 (_ BitVec 64) (_ BitVec 32) Int) Unit!39983)

(assert (=> b!1208333 (= lt!548342 (lemmaListMapContainsThenArrayContainsFrom!586 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!548337 () Unit!39983)

(assert (=> b!1208333 (= lt!548337 e!686271)))

(assert (=> b!1208333 (= c!118816 (and (not lt!548344) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1208333 (= lt!548344 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!59148 () Bool)

(declare-fun call!59151 () ListLongMap!17881)

(assert (=> bm!59148 (= call!59151 call!59148)))

(declare-fun b!1208334 () Bool)

(assert (=> b!1208334 (= e!686274 e!686272)))

(declare-fun res!803303 () Bool)

(assert (=> b!1208334 (=> res!803303 e!686272)))

(assert (=> b!1208334 (= res!803303 (not (= (select (arr!37697 _keys!1208) from!1455) k!934)))))

(assert (=> b!1208334 e!686262))

(declare-fun c!118819 () Bool)

(assert (=> b!1208334 (= c!118819 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!548347 () Unit!39983)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1066 (array!78124 array!78126 (_ BitVec 32) (_ BitVec 32) V!46037 V!46037 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!39983)

(assert (=> b!1208334 (= lt!548347 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1066 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!803292 () Bool)

(assert (=> start!100946 (=> (not res!803292) (not e!686273))))

(assert (=> start!100946 (= res!803292 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!38234 _keys!1208))))))

(assert (=> start!100946 e!686273))

(assert (=> start!100946 tp_is_empty!30683))

(declare-fun array_inv!28622 (array!78124) Bool)

(assert (=> start!100946 (array_inv!28622 _keys!1208)))

(assert (=> start!100946 true))

(assert (=> start!100946 tp!90947))

(declare-fun e!686261 () Bool)

(declare-fun array_inv!28623 (array!78126) Bool)

(assert (=> start!100946 (and (array_inv!28623 _values!996) e!686261)))

(declare-fun b!1208335 () Bool)

(declare-fun res!803306 () Bool)

(assert (=> b!1208335 (=> (not res!803306) (not e!686275))))

(assert (=> b!1208335 (= res!803306 (arrayNoDuplicates!0 lt!548340 #b00000000000000000000000000000000 Nil!26720))))

(declare-fun b!1208336 () Bool)

(assert (=> b!1208336 (= e!686261 (and e!686269 mapRes!47887))))

(declare-fun condMapEmpty!47887 () Bool)

(declare-fun mapDefault!47887 () ValueCell!14632)


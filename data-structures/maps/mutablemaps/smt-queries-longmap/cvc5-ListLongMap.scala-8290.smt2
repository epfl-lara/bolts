; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!101048 () Bool)

(assert start!101048)

(declare-fun b_free!26011 () Bool)

(declare-fun b_next!26011 () Bool)

(assert (=> start!101048 (= b_free!26011 (not b_next!26011))))

(declare-fun tp!91050 () Bool)

(declare-fun b_and!43113 () Bool)

(assert (=> start!101048 (= tp!91050 b_and!43113)))

(declare-fun b!1210138 () Bool)

(declare-fun res!804244 () Bool)

(declare-fun e!687307 () Bool)

(assert (=> b!1210138 (=> (not res!804244) (not e!687307))))

(declare-datatypes ((array!78190 0))(
  ( (array!78191 (arr!37728 (Array (_ BitVec 32) (_ BitVec 64))) (size!38265 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!78190)

(declare-datatypes ((List!26748 0))(
  ( (Nil!26745) (Cons!26744 (h!27953 (_ BitVec 64)) (t!39746 List!26748)) )
))
(declare-fun arrayNoDuplicates!0 (array!78190 (_ BitVec 32) List!26748) Bool)

(assert (=> b!1210138 (= res!804244 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!26745))))

(declare-fun b!1210139 () Bool)

(declare-fun res!804256 () Bool)

(assert (=> b!1210139 (=> (not res!804256) (not e!687307))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!78190 (_ BitVec 32)) Bool)

(assert (=> b!1210139 (= res!804256 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1210140 () Bool)

(declare-datatypes ((Unit!40031 0))(
  ( (Unit!40032) )
))
(declare-fun e!687317 () Unit!40031)

(declare-fun Unit!40033 () Unit!40031)

(assert (=> b!1210140 (= e!687317 Unit!40033)))

(declare-datatypes ((V!46081 0))(
  ( (V!46082 (val!15414 Int)) )
))
(declare-fun zeroValue!944 () V!46081)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun bm!59568 () Bool)

(declare-fun minValue!944 () V!46081)

(declare-datatypes ((ValueCell!14648 0))(
  ( (ValueCellFull!14648 (v!18066 V!46081)) (EmptyCell!14648) )
))
(declare-datatypes ((array!78192 0))(
  ( (array!78193 (arr!37729 (Array (_ BitVec 32) ValueCell!14648)) (size!38266 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!78192)

(declare-datatypes ((tuple2!19928 0))(
  ( (tuple2!19929 (_1!9974 (_ BitVec 64)) (_2!9974 V!46081)) )
))
(declare-datatypes ((List!26749 0))(
  ( (Nil!26746) (Cons!26745 (h!27954 tuple2!19928) (t!39747 List!26749)) )
))
(declare-datatypes ((ListLongMap!17909 0))(
  ( (ListLongMap!17910 (toList!8970 List!26749)) )
))
(declare-fun call!59577 () ListLongMap!17909)

(declare-fun getCurrentListMapNoExtraKeys!5376 (array!78190 array!78192 (_ BitVec 32) (_ BitVec 32) V!46081 V!46081 (_ BitVec 32) Int) ListLongMap!17909)

(assert (=> bm!59568 (= call!59577 (getCurrentListMapNoExtraKeys!5376 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!59573 () ListLongMap!17909)

(declare-fun lt!549389 () ListLongMap!17909)

(declare-fun c!119156 () Bool)

(declare-fun bm!59569 () Bool)

(declare-fun lt!549381 () ListLongMap!17909)

(declare-fun c!119159 () Bool)

(declare-fun +!3997 (ListLongMap!17909 tuple2!19928) ListLongMap!17909)

(assert (=> bm!59569 (= call!59573 (+!3997 (ite c!119156 lt!549389 lt!549381) (ite c!119156 (tuple2!19929 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!119159 (tuple2!19929 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!19929 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1210141 () Bool)

(declare-fun e!687314 () Unit!40031)

(declare-fun Unit!40034 () Unit!40031)

(assert (=> b!1210141 (= e!687314 Unit!40034)))

(declare-fun b!1210142 () Bool)

(declare-fun Unit!40035 () Unit!40031)

(assert (=> b!1210142 (= e!687317 Unit!40035)))

(declare-fun lt!549388 () Bool)

(assert (=> b!1210142 (= lt!549388 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1210142 (= c!119156 (and (not lt!549388) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!549379 () Unit!40031)

(declare-fun e!687318 () Unit!40031)

(assert (=> b!1210142 (= lt!549379 e!687318)))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!549376 () Unit!40031)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!597 (array!78190 array!78192 (_ BitVec 32) (_ BitVec 32) V!46081 V!46081 (_ BitVec 64) (_ BitVec 32) Int) Unit!40031)

(assert (=> b!1210142 (= lt!549376 (lemmaListMapContainsThenArrayContainsFrom!597 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!119157 () Bool)

(assert (=> b!1210142 (= c!119157 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!804246 () Bool)

(declare-fun e!687311 () Bool)

(assert (=> b!1210142 (= res!804246 e!687311)))

(declare-fun e!687315 () Bool)

(assert (=> b!1210142 (=> (not res!804246) (not e!687315))))

(assert (=> b!1210142 e!687315))

(declare-fun lt!549386 () Unit!40031)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!78190 (_ BitVec 32) (_ BitVec 32)) Unit!40031)

(assert (=> b!1210142 (= lt!549386 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1210142 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!26745)))

(declare-fun lt!549375 () Unit!40031)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!78190 (_ BitVec 64) (_ BitVec 32) List!26748) Unit!40031)

(assert (=> b!1210142 (= lt!549375 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!26745))))

(assert (=> b!1210142 false))

(declare-fun b!1210143 () Bool)

(declare-fun res!804257 () Bool)

(declare-fun e!687320 () Bool)

(assert (=> b!1210143 (=> (not res!804257) (not e!687320))))

(declare-fun lt!549387 () array!78190)

(assert (=> b!1210143 (= res!804257 (arrayNoDuplicates!0 lt!549387 #b00000000000000000000000000000000 Nil!26745))))

(declare-fun b!1210144 () Bool)

(declare-fun res!804248 () Bool)

(assert (=> b!1210144 (=> (not res!804248) (not e!687307))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1210144 (= res!804248 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!38265 _keys!1208))))))

(declare-fun bm!59570 () Bool)

(declare-fun call!59574 () ListLongMap!17909)

(assert (=> bm!59570 (= call!59574 call!59573)))

(declare-fun b!1210145 () Bool)

(declare-fun e!687312 () Bool)

(declare-fun tp_is_empty!30715 () Bool)

(assert (=> b!1210145 (= e!687312 tp_is_empty!30715)))

(declare-fun bm!59571 () Bool)

(declare-fun call!59576 () Bool)

(declare-fun call!59578 () Bool)

(assert (=> bm!59571 (= call!59576 call!59578)))

(declare-fun bm!59572 () Bool)

(declare-fun call!59571 () Unit!40031)

(declare-fun call!59572 () Unit!40031)

(assert (=> bm!59572 (= call!59571 call!59572)))

(declare-fun b!1210146 () Bool)

(declare-fun e!687313 () Unit!40031)

(declare-fun lt!549374 () Unit!40031)

(assert (=> b!1210146 (= e!687313 lt!549374)))

(assert (=> b!1210146 (= lt!549374 call!59571)))

(assert (=> b!1210146 call!59576))

(declare-fun b!1210147 () Bool)

(declare-fun res!804253 () Bool)

(assert (=> b!1210147 (=> (not res!804253) (not e!687307))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1210147 (= res!804253 (validMask!0 mask!1564))))

(declare-fun b!1210148 () Bool)

(declare-fun e!687308 () Bool)

(declare-fun e!687316 () Bool)

(assert (=> b!1210148 (= e!687308 e!687316)))

(declare-fun res!804255 () Bool)

(assert (=> b!1210148 (=> res!804255 e!687316)))

(assert (=> b!1210148 (= res!804255 (not (= (select (arr!37728 _keys!1208) from!1455) k!934)))))

(declare-fun e!687321 () Bool)

(assert (=> b!1210148 e!687321))

(declare-fun c!119158 () Bool)

(assert (=> b!1210148 (= c!119158 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!549385 () Unit!40031)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1077 (array!78190 array!78192 (_ BitVec 32) (_ BitVec 32) V!46081 V!46081 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!40031)

(assert (=> b!1210148 (= lt!549385 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!1077 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!47941 () Bool)

(declare-fun mapRes!47941 () Bool)

(declare-fun tp!91049 () Bool)

(declare-fun e!687310 () Bool)

(assert (=> mapNonEmpty!47941 (= mapRes!47941 (and tp!91049 e!687310))))

(declare-fun mapValue!47941 () ValueCell!14648)

(declare-fun mapRest!47941 () (Array (_ BitVec 32) ValueCell!14648))

(declare-fun mapKey!47941 () (_ BitVec 32))

(assert (=> mapNonEmpty!47941 (= (arr!37729 _values!996) (store mapRest!47941 mapKey!47941 mapValue!47941))))

(declare-fun b!1210149 () Bool)

(declare-fun e!687309 () Bool)

(assert (=> b!1210149 (= e!687309 (and e!687312 mapRes!47941))))

(declare-fun condMapEmpty!47941 () Bool)

(declare-fun mapDefault!47941 () ValueCell!14648)


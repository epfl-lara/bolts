; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98496 () Bool)

(assert start!98496)

(declare-fun b_free!24065 () Bool)

(declare-fun b_next!24065 () Bool)

(assert (=> start!98496 (= b_free!24065 (not b_next!24065))))

(declare-fun tp!84907 () Bool)

(declare-fun b_and!38993 () Bool)

(assert (=> start!98496 (= tp!84907 b_and!38993)))

(declare-fun b!1138137 () Bool)

(declare-fun res!759384 () Bool)

(declare-fun e!647646 () Bool)

(assert (=> b!1138137 (=> (not res!759384) (not e!647646))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1138137 (= res!759384 (validMask!0 mask!1564))))

(declare-fun b!1138138 () Bool)

(declare-fun e!647647 () Bool)

(declare-fun e!647643 () Bool)

(assert (=> b!1138138 (= e!647647 e!647643)))

(declare-fun res!759383 () Bool)

(assert (=> b!1138138 (=> res!759383 e!647643)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1138138 (= res!759383 (not (= from!1455 i!673)))))

(declare-datatypes ((V!43253 0))(
  ( (V!43254 (val!14354 Int)) )
))
(declare-fun zeroValue!944 () V!43253)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18224 0))(
  ( (tuple2!18225 (_1!9122 (_ BitVec 64)) (_2!9122 V!43253)) )
))
(declare-datatypes ((List!25030 0))(
  ( (Nil!25027) (Cons!25026 (h!26235 tuple2!18224) (t!36094 List!25030)) )
))
(declare-datatypes ((ListLongMap!16205 0))(
  ( (ListLongMap!16206 (toList!8118 List!25030)) )
))
(declare-fun lt!506291 () ListLongMap!16205)

(declare-datatypes ((array!74008 0))(
  ( (array!74009 (arr!35651 (Array (_ BitVec 32) (_ BitVec 64))) (size!36188 (_ BitVec 32))) )
))
(declare-fun lt!506294 () array!74008)

(declare-datatypes ((ValueCell!13588 0))(
  ( (ValueCellFull!13588 (v!16992 V!43253)) (EmptyCell!13588) )
))
(declare-datatypes ((array!74010 0))(
  ( (array!74011 (arr!35652 (Array (_ BitVec 32) ValueCell!13588)) (size!36189 (_ BitVec 32))) )
))
(declare-fun lt!506300 () array!74010)

(declare-fun minValue!944 () V!43253)

(declare-fun getCurrentListMapNoExtraKeys!4565 (array!74008 array!74010 (_ BitVec 32) (_ BitVec 32) V!43253 V!43253 (_ BitVec 32) Int) ListLongMap!16205)

(assert (=> b!1138138 (= lt!506291 (getCurrentListMapNoExtraKeys!4565 lt!506294 lt!506300 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!74010)

(declare-fun dynLambda!2625 (Int (_ BitVec 64)) V!43253)

(assert (=> b!1138138 (= lt!506300 (array!74011 (store (arr!35652 _values!996) i!673 (ValueCellFull!13588 (dynLambda!2625 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36189 _values!996)))))

(declare-fun _keys!1208 () array!74008)

(declare-fun lt!506292 () ListLongMap!16205)

(assert (=> b!1138138 (= lt!506292 (getCurrentListMapNoExtraKeys!4565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1138139 () Bool)

(declare-fun e!647653 () Bool)

(assert (=> b!1138139 (= e!647653 true)))

(declare-datatypes ((Unit!37238 0))(
  ( (Unit!37239) )
))
(declare-fun lt!506302 () Unit!37238)

(declare-fun e!647648 () Unit!37238)

(assert (=> b!1138139 (= lt!506302 e!647648)))

(declare-fun c!111393 () Bool)

(declare-fun lt!506287 () ListLongMap!16205)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun contains!6628 (ListLongMap!16205 (_ BitVec 64)) Bool)

(assert (=> b!1138139 (= c!111393 (contains!6628 lt!506287 k!934))))

(assert (=> b!1138139 (= lt!506287 (getCurrentListMapNoExtraKeys!4565 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138140 () Bool)

(declare-fun e!647658 () Bool)

(assert (=> b!1138140 (= e!647646 e!647658)))

(declare-fun res!759375 () Bool)

(assert (=> b!1138140 (=> (not res!759375) (not e!647658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74008 (_ BitVec 32)) Bool)

(assert (=> b!1138140 (= res!759375 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!506294 mask!1564))))

(assert (=> b!1138140 (= lt!506294 (array!74009 (store (arr!35651 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36188 _keys!1208)))))

(declare-fun bm!50318 () Bool)

(declare-fun call!50328 () Unit!37238)

(declare-fun call!50322 () Unit!37238)

(assert (=> bm!50318 (= call!50328 call!50322)))

(declare-fun e!647644 () Bool)

(declare-fun lt!506296 () Bool)

(declare-fun b!1138141 () Bool)

(assert (=> b!1138141 (= e!647644 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!506296) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506295 () ListLongMap!16205)

(declare-fun c!111392 () Bool)

(declare-fun call!50325 () ListLongMap!16205)

(declare-fun bm!50319 () Bool)

(declare-fun call!50324 () Bool)

(assert (=> bm!50319 (= call!50324 (contains!6628 (ite c!111392 lt!506295 call!50325) k!934))))

(declare-fun b!1138142 () Bool)

(declare-fun e!647651 () Unit!37238)

(declare-fun e!647655 () Unit!37238)

(assert (=> b!1138142 (= e!647651 e!647655)))

(declare-fun c!111394 () Bool)

(assert (=> b!1138142 (= c!111394 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!506296))))

(declare-fun b!1138143 () Bool)

(declare-fun call!50326 () ListLongMap!16205)

(assert (=> b!1138143 (contains!6628 call!50326 k!934)))

(declare-fun lt!506304 () Unit!37238)

(declare-fun addStillContains!769 (ListLongMap!16205 (_ BitVec 64) V!43253 (_ BitVec 64)) Unit!37238)

(assert (=> b!1138143 (= lt!506304 (addStillContains!769 lt!506295 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(assert (=> b!1138143 call!50324))

(declare-fun +!3469 (ListLongMap!16205 tuple2!18224) ListLongMap!16205)

(assert (=> b!1138143 (= lt!506295 (+!3469 lt!506287 (tuple2!18225 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!506297 () Unit!37238)

(assert (=> b!1138143 (= lt!506297 call!50322)))

(declare-fun e!647657 () Unit!37238)

(assert (=> b!1138143 (= e!647657 lt!506304)))

(declare-fun b!1138144 () Bool)

(declare-fun Unit!37240 () Unit!37238)

(assert (=> b!1138144 (= e!647655 Unit!37240)))

(declare-fun res!759376 () Bool)

(assert (=> start!98496 (=> (not res!759376) (not e!647646))))

(assert (=> start!98496 (= res!759376 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36188 _keys!1208))))))

(assert (=> start!98496 e!647646))

(declare-fun tp_is_empty!28595 () Bool)

(assert (=> start!98496 tp_is_empty!28595))

(declare-fun array_inv!27208 (array!74008) Bool)

(assert (=> start!98496 (array_inv!27208 _keys!1208)))

(assert (=> start!98496 true))

(assert (=> start!98496 tp!84907))

(declare-fun e!647650 () Bool)

(declare-fun array_inv!27209 (array!74010) Bool)

(assert (=> start!98496 (and (array_inv!27209 _values!996) e!647650)))

(declare-fun b!1138145 () Bool)

(declare-fun c!111391 () Bool)

(assert (=> b!1138145 (= c!111391 (and (not lt!506296) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1138145 (= e!647657 e!647651)))

(declare-fun b!1138146 () Bool)

(assert (=> b!1138146 (= e!647658 (not e!647647))))

(declare-fun res!759378 () Bool)

(assert (=> b!1138146 (=> res!759378 e!647647)))

(assert (=> b!1138146 (= res!759378 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74008 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1138146 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!506289 () Unit!37238)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74008 (_ BitVec 64) (_ BitVec 32)) Unit!37238)

(assert (=> b!1138146 (= lt!506289 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1138147 () Bool)

(declare-fun res!759379 () Bool)

(assert (=> b!1138147 (=> (not res!759379) (not e!647646))))

(assert (=> b!1138147 (= res!759379 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!50320 () Bool)

(declare-fun call!50323 () ListLongMap!16205)

(assert (=> bm!50320 (= call!50323 (getCurrentListMapNoExtraKeys!4565 lt!506294 lt!506300 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138148 () Bool)

(declare-fun e!647645 () Bool)

(assert (=> b!1138148 (= e!647645 tp_is_empty!28595)))

(declare-fun mapIsEmpty!44717 () Bool)

(declare-fun mapRes!44717 () Bool)

(assert (=> mapIsEmpty!44717 mapRes!44717))

(declare-fun bm!50321 () Bool)

(assert (=> bm!50321 (= call!50322 (addStillContains!769 lt!506287 (ite (or c!111392 c!111391) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111392 c!111391) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1138149 () Bool)

(declare-fun call!50321 () Bool)

(assert (=> b!1138149 call!50321))

(declare-fun lt!506298 () Unit!37238)

(assert (=> b!1138149 (= lt!506298 call!50328)))

(assert (=> b!1138149 (= e!647655 lt!506298)))

(declare-fun b!1138150 () Bool)

(declare-fun res!759382 () Bool)

(assert (=> b!1138150 (=> (not res!759382) (not e!647646))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1138150 (= res!759382 (validKeyInArray!0 k!934))))

(declare-fun b!1138151 () Bool)

(declare-fun res!759374 () Bool)

(assert (=> b!1138151 (=> (not res!759374) (not e!647646))))

(assert (=> b!1138151 (= res!759374 (= (select (arr!35651 _keys!1208) i!673) k!934))))

(declare-fun b!1138152 () Bool)

(declare-fun Unit!37241 () Unit!37238)

(assert (=> b!1138152 (= e!647648 Unit!37241)))

(assert (=> b!1138152 (= lt!506296 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1138152 (= c!111392 (and (not lt!506296) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!506303 () Unit!37238)

(assert (=> b!1138152 (= lt!506303 e!647657)))

(declare-fun lt!506288 () Unit!37238)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!374 (array!74008 array!74010 (_ BitVec 32) (_ BitVec 32) V!43253 V!43253 (_ BitVec 64) (_ BitVec 32) Int) Unit!37238)

(assert (=> b!1138152 (= lt!506288 (lemmaListMapContainsThenArrayContainsFrom!374 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111395 () Bool)

(assert (=> b!1138152 (= c!111395 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!759381 () Bool)

(assert (=> b!1138152 (= res!759381 e!647644)))

(declare-fun e!647654 () Bool)

(assert (=> b!1138152 (=> (not res!759381) (not e!647654))))

(assert (=> b!1138152 e!647654))

(declare-fun lt!506301 () Unit!37238)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74008 (_ BitVec 32) (_ BitVec 32)) Unit!37238)

(assert (=> b!1138152 (= lt!506301 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25031 0))(
  ( (Nil!25028) (Cons!25027 (h!26236 (_ BitVec 64)) (t!36095 List!25031)) )
))
(declare-fun arrayNoDuplicates!0 (array!74008 (_ BitVec 32) List!25031) Bool)

(assert (=> b!1138152 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25028)))

(declare-fun lt!506299 () Unit!37238)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74008 (_ BitVec 64) (_ BitVec 32) List!25031) Unit!37238)

(assert (=> b!1138152 (= lt!506299 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25028))))

(assert (=> b!1138152 false))

(declare-fun bm!50322 () Bool)

(assert (=> bm!50322 (= call!50321 call!50324)))

(declare-fun bm!50323 () Bool)

(assert (=> bm!50323 (= call!50325 call!50326)))

(declare-fun b!1138153 () Bool)

(assert (=> b!1138153 (= e!647654 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1138154 () Bool)

(declare-fun lt!506290 () Unit!37238)

(assert (=> b!1138154 (= e!647651 lt!506290)))

(assert (=> b!1138154 (= lt!506290 call!50328)))

(assert (=> b!1138154 call!50321))

(declare-fun b!1138155 () Bool)

(declare-fun e!647649 () Bool)

(declare-fun call!50327 () ListLongMap!16205)

(assert (=> b!1138155 (= e!647649 (= call!50323 call!50327))))

(declare-fun b!1138156 () Bool)

(declare-fun e!647656 () Bool)

(assert (=> b!1138156 (= e!647656 tp_is_empty!28595)))

(declare-fun b!1138157 () Bool)

(declare-fun res!759373 () Bool)

(assert (=> b!1138157 (=> (not res!759373) (not e!647646))))

(assert (=> b!1138157 (= res!759373 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25028))))

(declare-fun b!1138158 () Bool)

(declare-fun res!759380 () Bool)

(assert (=> b!1138158 (=> (not res!759380) (not e!647658))))

(assert (=> b!1138158 (= res!759380 (arrayNoDuplicates!0 lt!506294 #b00000000000000000000000000000000 Nil!25028))))

(declare-fun b!1138159 () Bool)

(assert (=> b!1138159 (= e!647643 e!647653)))

(declare-fun res!759385 () Bool)

(assert (=> b!1138159 (=> res!759385 e!647653)))

(assert (=> b!1138159 (= res!759385 (not (= (select (arr!35651 _keys!1208) from!1455) k!934)))))

(assert (=> b!1138159 e!647649))

(declare-fun c!111396 () Bool)

(assert (=> b!1138159 (= c!111396 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!506293 () Unit!37238)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!481 (array!74008 array!74010 (_ BitVec 32) (_ BitVec 32) V!43253 V!43253 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37238)

(assert (=> b!1138159 (= lt!506293 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!481 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1138160 () Bool)

(assert (=> b!1138160 (= e!647650 (and e!647656 mapRes!44717))))

(declare-fun condMapEmpty!44717 () Bool)

(declare-fun mapDefault!44717 () ValueCell!13588)


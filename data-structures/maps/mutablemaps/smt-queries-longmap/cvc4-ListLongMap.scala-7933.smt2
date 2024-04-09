; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98478 () Bool)

(assert start!98478)

(declare-fun b_free!24047 () Bool)

(declare-fun b_next!24047 () Bool)

(assert (=> start!98478 (= b_free!24047 (not b_next!24047))))

(declare-fun tp!84852 () Bool)

(declare-fun b_and!38957 () Bool)

(assert (=> start!98478 (= tp!84852 b_and!38957)))

(declare-fun b!1137336 () Bool)

(declare-fun e!647211 () Bool)

(declare-fun tp_is_empty!28577 () Bool)

(assert (=> b!1137336 (= e!647211 tp_is_empty!28577)))

(declare-fun b!1137337 () Bool)

(declare-datatypes ((Unit!37202 0))(
  ( (Unit!37203) )
))
(declare-fun e!647222 () Unit!37202)

(declare-fun Unit!37204 () Unit!37202)

(assert (=> b!1137337 (= e!647222 Unit!37204)))

(declare-fun lt!505803 () Bool)

(declare-fun extraKeys!923 () (_ BitVec 32))

(assert (=> b!1137337 (= lt!505803 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!111229 () Bool)

(assert (=> b!1137337 (= c!111229 (and (not lt!505803) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!505814 () Unit!37202)

(declare-fun e!647226 () Unit!37202)

(assert (=> b!1137337 (= lt!505814 e!647226)))

(declare-datatypes ((V!43229 0))(
  ( (V!43230 (val!14345 Int)) )
))
(declare-fun zeroValue!944 () V!43229)

(declare-datatypes ((array!73972 0))(
  ( (array!73973 (arr!35633 (Array (_ BitVec 32) (_ BitVec 64))) (size!36170 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73972)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13579 0))(
  ( (ValueCellFull!13579 (v!16983 V!43229)) (EmptyCell!13579) )
))
(declare-datatypes ((array!73974 0))(
  ( (array!73975 (arr!35634 (Array (_ BitVec 32) ValueCell!13579)) (size!36171 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73974)

(declare-fun minValue!944 () V!43229)

(declare-fun lt!505806 () Unit!37202)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!368 (array!73972 array!73974 (_ BitVec 32) (_ BitVec 32) V!43229 V!43229 (_ BitVec 64) (_ BitVec 32) Int) Unit!37202)

(assert (=> b!1137337 (= lt!505806 (lemmaListMapContainsThenArrayContainsFrom!368 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111232 () Bool)

(assert (=> b!1137337 (= c!111232 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!758997 () Bool)

(declare-fun e!647217 () Bool)

(assert (=> b!1137337 (= res!758997 e!647217)))

(declare-fun e!647214 () Bool)

(assert (=> b!1137337 (=> (not res!758997) (not e!647214))))

(assert (=> b!1137337 e!647214))

(declare-fun lt!505802 () Unit!37202)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73972 (_ BitVec 32) (_ BitVec 32)) Unit!37202)

(assert (=> b!1137337 (= lt!505802 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25015 0))(
  ( (Nil!25012) (Cons!25011 (h!26220 (_ BitVec 64)) (t!36061 List!25015)) )
))
(declare-fun arrayNoDuplicates!0 (array!73972 (_ BitVec 32) List!25015) Bool)

(assert (=> b!1137337 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25012)))

(declare-fun lt!505812 () Unit!37202)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!73972 (_ BitVec 64) (_ BitVec 32) List!25015) Unit!37202)

(assert (=> b!1137337 (= lt!505812 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25012))))

(assert (=> b!1137337 false))

(declare-fun b!1137338 () Bool)

(declare-fun res!758999 () Bool)

(declare-fun e!647221 () Bool)

(assert (=> b!1137338 (=> (not res!758999) (not e!647221))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1137338 (= res!758999 (= (select (arr!35633 _keys!1208) i!673) k!934))))

(declare-fun b!1137339 () Bool)

(declare-fun e!647218 () Bool)

(declare-datatypes ((tuple2!18206 0))(
  ( (tuple2!18207 (_1!9113 (_ BitVec 64)) (_2!9113 V!43229)) )
))
(declare-datatypes ((List!25016 0))(
  ( (Nil!25013) (Cons!25012 (h!26221 tuple2!18206) (t!36062 List!25016)) )
))
(declare-datatypes ((ListLongMap!16187 0))(
  ( (ListLongMap!16188 (toList!8109 List!25016)) )
))
(declare-fun call!50107 () ListLongMap!16187)

(declare-fun call!50112 () ListLongMap!16187)

(assert (=> b!1137339 (= e!647218 (= call!50107 call!50112))))

(declare-fun b!1137340 () Bool)

(declare-fun c!111231 () Bool)

(assert (=> b!1137340 (= c!111231 (and (not lt!505803) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!647216 () Unit!37202)

(assert (=> b!1137340 (= e!647226 e!647216)))

(declare-fun b!1137341 () Bool)

(declare-fun res!759008 () Bool)

(assert (=> b!1137341 (=> (not res!759008) (not e!647221))))

(assert (=> b!1137341 (= res!759008 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25012))))

(declare-fun b!1137342 () Bool)

(declare-fun res!759005 () Bool)

(assert (=> b!1137342 (=> (not res!759005) (not e!647221))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73972 (_ BitVec 32)) Bool)

(assert (=> b!1137342 (= res!759005 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1137343 () Bool)

(declare-fun Unit!37205 () Unit!37202)

(assert (=> b!1137343 (= e!647222 Unit!37205)))

(declare-fun b!1137344 () Bool)

(assert (=> b!1137344 (= e!647217 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!505803) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1137345 () Bool)

(declare-fun e!647223 () Unit!37202)

(declare-fun Unit!37206 () Unit!37202)

(assert (=> b!1137345 (= e!647223 Unit!37206)))

(declare-fun res!759001 () Bool)

(assert (=> start!98478 (=> (not res!759001) (not e!647221))))

(assert (=> start!98478 (= res!759001 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36170 _keys!1208))))))

(assert (=> start!98478 e!647221))

(assert (=> start!98478 tp_is_empty!28577))

(declare-fun array_inv!27194 (array!73972) Bool)

(assert (=> start!98478 (array_inv!27194 _keys!1208)))

(assert (=> start!98478 true))

(assert (=> start!98478 tp!84852))

(declare-fun e!647212 () Bool)

(declare-fun array_inv!27195 (array!73974) Bool)

(assert (=> start!98478 (and (array_inv!27195 _values!996) e!647212)))

(declare-fun b!1137346 () Bool)

(declare-fun e!647224 () Bool)

(declare-fun e!647215 () Bool)

(assert (=> b!1137346 (= e!647224 (not e!647215))))

(declare-fun res!759000 () Bool)

(assert (=> b!1137346 (=> res!759000 e!647215)))

(assert (=> b!1137346 (= res!759000 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73972 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1137346 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!505817 () Unit!37202)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73972 (_ BitVec 64) (_ BitVec 32)) Unit!37202)

(assert (=> b!1137346 (= lt!505817 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun bm!50102 () Bool)

(declare-fun call!50106 () ListLongMap!16187)

(declare-fun lt!505808 () ListLongMap!16187)

(declare-fun +!3462 (ListLongMap!16187 tuple2!18206) ListLongMap!16187)

(assert (=> bm!50102 (= call!50106 (+!3462 lt!505808 (ite (or c!111229 c!111231) (tuple2!18207 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18207 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1137347 () Bool)

(assert (=> b!1137347 (= e!647217 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun lt!505815 () array!73974)

(declare-fun bm!50103 () Bool)

(declare-fun lt!505804 () array!73972)

(declare-fun getCurrentListMapNoExtraKeys!4557 (array!73972 array!73974 (_ BitVec 32) (_ BitVec 32) V!43229 V!43229 (_ BitVec 32) Int) ListLongMap!16187)

(assert (=> bm!50103 (= call!50107 (getCurrentListMapNoExtraKeys!4557 lt!505804 lt!505815 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50104 () Bool)

(declare-fun call!50109 () ListLongMap!16187)

(assert (=> bm!50104 (= call!50109 call!50106)))

(declare-fun b!1137348 () Bool)

(assert (=> b!1137348 (= e!647214 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun call!50108 () Unit!37202)

(declare-fun bm!50105 () Bool)

(declare-fun addStillContains!763 (ListLongMap!16187 (_ BitVec 64) V!43229 (_ BitVec 64)) Unit!37202)

(assert (=> bm!50105 (= call!50108 (addStillContains!763 lt!505808 (ite (or c!111229 c!111231) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!111229 c!111231) zeroValue!944 minValue!944) k!934))))

(declare-fun b!1137349 () Bool)

(declare-fun e!647220 () Bool)

(assert (=> b!1137349 (= e!647215 e!647220)))

(declare-fun res!758995 () Bool)

(assert (=> b!1137349 (=> res!758995 e!647220)))

(assert (=> b!1137349 (= res!758995 (not (= from!1455 i!673)))))

(declare-fun lt!505818 () ListLongMap!16187)

(assert (=> b!1137349 (= lt!505818 (getCurrentListMapNoExtraKeys!4557 lt!505804 lt!505815 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2619 (Int (_ BitVec 64)) V!43229)

(assert (=> b!1137349 (= lt!505815 (array!73975 (store (arr!35634 _values!996) i!673 (ValueCellFull!13579 (dynLambda!2619 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36171 _values!996)))))

(declare-fun lt!505810 () ListLongMap!16187)

(assert (=> b!1137349 (= lt!505810 (getCurrentListMapNoExtraKeys!4557 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1137350 () Bool)

(declare-fun -!1218 (ListLongMap!16187 (_ BitVec 64)) ListLongMap!16187)

(assert (=> b!1137350 (= e!647218 (= call!50107 (-!1218 call!50112 k!934)))))

(declare-fun mapNonEmpty!44690 () Bool)

(declare-fun mapRes!44690 () Bool)

(declare-fun tp!84853 () Bool)

(assert (=> mapNonEmpty!44690 (= mapRes!44690 (and tp!84853 e!647211))))

(declare-fun mapValue!44690 () ValueCell!13579)

(declare-fun mapKey!44690 () (_ BitVec 32))

(declare-fun mapRest!44690 () (Array (_ BitVec 32) ValueCell!13579))

(assert (=> mapNonEmpty!44690 (= (arr!35634 _values!996) (store mapRest!44690 mapKey!44690 mapValue!44690))))

(declare-fun b!1137351 () Bool)

(declare-fun res!759003 () Bool)

(assert (=> b!1137351 (=> (not res!759003) (not e!647221))))

(assert (=> b!1137351 (= res!759003 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36170 _keys!1208))))))

(declare-fun b!1137352 () Bool)

(assert (=> b!1137352 (= e!647221 e!647224)))

(declare-fun res!758996 () Bool)

(assert (=> b!1137352 (=> (not res!758996) (not e!647224))))

(assert (=> b!1137352 (= res!758996 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!505804 mask!1564))))

(assert (=> b!1137352 (= lt!505804 (array!73973 (store (arr!35633 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36170 _keys!1208)))))

(declare-fun bm!50106 () Bool)

(assert (=> bm!50106 (= call!50112 (getCurrentListMapNoExtraKeys!4557 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1137353 () Bool)

(declare-fun e!647219 () Bool)

(assert (=> b!1137353 (= e!647219 true)))

(declare-fun lt!505816 () Unit!37202)

(assert (=> b!1137353 (= lt!505816 e!647222)))

(declare-fun c!111234 () Bool)

(declare-fun contains!6620 (ListLongMap!16187 (_ BitVec 64)) Bool)

(assert (=> b!1137353 (= c!111234 (contains!6620 lt!505808 k!934))))

(assert (=> b!1137353 (= lt!505808 (getCurrentListMapNoExtraKeys!4557 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50107 () Bool)

(declare-fun call!50105 () Bool)

(declare-fun call!50110 () Bool)

(assert (=> bm!50107 (= call!50105 call!50110)))

(declare-fun b!1137354 () Bool)

(declare-fun res!759006 () Bool)

(assert (=> b!1137354 (=> (not res!759006) (not e!647221))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1137354 (= res!759006 (validKeyInArray!0 k!934))))

(declare-fun bm!50108 () Bool)

(declare-fun lt!505809 () ListLongMap!16187)

(assert (=> bm!50108 (= call!50110 (contains!6620 (ite c!111229 lt!505809 call!50109) k!934))))

(declare-fun mapIsEmpty!44690 () Bool)

(assert (=> mapIsEmpty!44690 mapRes!44690))

(declare-fun b!1137355 () Bool)

(declare-fun res!758998 () Bool)

(assert (=> b!1137355 (=> (not res!758998) (not e!647224))))

(assert (=> b!1137355 (= res!758998 (arrayNoDuplicates!0 lt!505804 #b00000000000000000000000000000000 Nil!25012))))

(declare-fun b!1137356 () Bool)

(declare-fun res!759002 () Bool)

(assert (=> b!1137356 (=> (not res!759002) (not e!647221))))

(assert (=> b!1137356 (= res!759002 (and (= (size!36171 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36170 _keys!1208) (size!36171 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1137357 () Bool)

(declare-fun e!647225 () Bool)

(assert (=> b!1137357 (= e!647225 tp_is_empty!28577)))

(declare-fun b!1137358 () Bool)

(assert (=> b!1137358 (= e!647212 (and e!647225 mapRes!44690))))

(declare-fun condMapEmpty!44690 () Bool)

(declare-fun mapDefault!44690 () ValueCell!13579)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98536 () Bool)

(assert start!98536)

(declare-fun b_free!24105 () Bool)

(declare-fun b_next!24105 () Bool)

(assert (=> start!98536 (= b_free!24105 (not b_next!24105))))

(declare-fun tp!85027 () Bool)

(declare-fun b_and!39073 () Bool)

(assert (=> start!98536 (= tp!85027 b_and!39073)))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun e!648616 () Bool)

(declare-fun lt!507460 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1139917 () Bool)

(assert (=> b!1139917 (= e!648616 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!507460) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1139918 () Bool)

(declare-fun res!760219 () Bool)

(declare-fun e!648609 () Bool)

(assert (=> b!1139918 (=> (not res!760219) (not e!648609))))

(declare-datatypes ((array!74088 0))(
  ( (array!74089 (arr!35691 (Array (_ BitVec 32) (_ BitVec 64))) (size!36228 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74088)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74088 (_ BitVec 32)) Bool)

(assert (=> b!1139918 (= res!760219 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1139919 () Bool)

(declare-fun call!50801 () Bool)

(assert (=> b!1139919 call!50801))

(declare-datatypes ((Unit!37312 0))(
  ( (Unit!37313) )
))
(declare-fun lt!507447 () Unit!37312)

(declare-fun call!50802 () Unit!37312)

(assert (=> b!1139919 (= lt!507447 call!50802)))

(declare-fun e!648606 () Unit!37312)

(assert (=> b!1139919 (= e!648606 lt!507447)))

(declare-fun b!1139920 () Bool)

(declare-fun res!760220 () Bool)

(assert (=> b!1139920 (=> (not res!760220) (not e!648609))))

(declare-datatypes ((List!25065 0))(
  ( (Nil!25062) (Cons!25061 (h!26270 (_ BitVec 64)) (t!36169 List!25065)) )
))
(declare-fun arrayNoDuplicates!0 (array!74088 (_ BitVec 32) List!25065) Bool)

(assert (=> b!1139920 (= res!760220 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25062))))

(declare-fun b!1139921 () Bool)

(declare-fun e!648611 () Bool)

(declare-fun e!648612 () Bool)

(declare-fun mapRes!44777 () Bool)

(assert (=> b!1139921 (= e!648611 (and e!648612 mapRes!44777))))

(declare-fun condMapEmpty!44777 () Bool)

(declare-datatypes ((V!43307 0))(
  ( (V!43308 (val!14374 Int)) )
))
(declare-datatypes ((ValueCell!13608 0))(
  ( (ValueCellFull!13608 (v!17012 V!43307)) (EmptyCell!13608) )
))
(declare-datatypes ((array!74090 0))(
  ( (array!74091 (arr!35692 (Array (_ BitVec 32) ValueCell!13608)) (size!36229 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74090)

(declare-fun mapDefault!44777 () ValueCell!13608)

(assert (=> b!1139921 (= condMapEmpty!44777 (= (arr!35692 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13608)) mapDefault!44777)))))

(declare-fun b!1139922 () Bool)

(declare-fun res!760225 () Bool)

(declare-fun e!648614 () Bool)

(assert (=> b!1139922 (=> (not res!760225) (not e!648614))))

(declare-fun lt!507465 () array!74088)

(assert (=> b!1139922 (= res!760225 (arrayNoDuplicates!0 lt!507465 #b00000000000000000000000000000000 Nil!25062))))

(declare-fun bm!50798 () Bool)

(declare-fun call!50806 () Bool)

(assert (=> bm!50798 (= call!50801 call!50806)))

(declare-fun bm!50799 () Bool)

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43307)

(declare-fun lt!507452 () array!74090)

(declare-fun zeroValue!944 () V!43307)

(declare-datatypes ((tuple2!18262 0))(
  ( (tuple2!18263 (_1!9141 (_ BitVec 64)) (_2!9141 V!43307)) )
))
(declare-datatypes ((List!25066 0))(
  ( (Nil!25063) (Cons!25062 (h!26271 tuple2!18262) (t!36170 List!25066)) )
))
(declare-datatypes ((ListLongMap!16243 0))(
  ( (ListLongMap!16244 (toList!8137 List!25066)) )
))
(declare-fun call!50804 () ListLongMap!16243)

(declare-fun getCurrentListMapNoExtraKeys!4583 (array!74088 array!74090 (_ BitVec 32) (_ BitVec 32) V!43307 V!43307 (_ BitVec 32) Int) ListLongMap!16243)

(assert (=> bm!50799 (= call!50804 (getCurrentListMapNoExtraKeys!4583 lt!507465 lt!507452 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!507450 () ListLongMap!16243)

(declare-fun c!111755 () Bool)

(declare-fun bm!50800 () Bool)

(declare-fun call!50807 () ListLongMap!16243)

(declare-fun contains!6645 (ListLongMap!16243 (_ BitVec 64)) Bool)

(assert (=> bm!50800 (= call!50806 (contains!6645 (ite c!111755 lt!507450 call!50807) k0!934))))

(declare-fun b!1139923 () Bool)

(declare-fun +!3485 (ListLongMap!16243 tuple2!18262) ListLongMap!16243)

(assert (=> b!1139923 (contains!6645 (+!3485 lt!507450 (tuple2!18263 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!507456 () Unit!37312)

(declare-fun call!50803 () Unit!37312)

(assert (=> b!1139923 (= lt!507456 call!50803)))

(assert (=> b!1139923 call!50806))

(declare-fun call!50808 () ListLongMap!16243)

(assert (=> b!1139923 (= lt!507450 call!50808)))

(declare-fun lt!507451 () ListLongMap!16243)

(declare-fun lt!507446 () Unit!37312)

(declare-fun addStillContains!786 (ListLongMap!16243 (_ BitVec 64) V!43307 (_ BitVec 64)) Unit!37312)

(assert (=> b!1139923 (= lt!507446 (addStillContains!786 lt!507451 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!648613 () Unit!37312)

(assert (=> b!1139923 (= e!648613 lt!507456)))

(declare-fun b!1139924 () Bool)

(declare-fun arrayContainsKey!0 (array!74088 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1139924 (= e!648616 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1139925 () Bool)

(declare-fun Unit!37314 () Unit!37312)

(assert (=> b!1139925 (= e!648606 Unit!37314)))

(declare-fun res!760217 () Bool)

(assert (=> start!98536 (=> (not res!760217) (not e!648609))))

(assert (=> start!98536 (= res!760217 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36228 _keys!1208))))))

(assert (=> start!98536 e!648609))

(declare-fun tp_is_empty!28635 () Bool)

(assert (=> start!98536 tp_is_empty!28635))

(declare-fun array_inv!27234 (array!74088) Bool)

(assert (=> start!98536 (array_inv!27234 _keys!1208)))

(assert (=> start!98536 true))

(assert (=> start!98536 tp!85027))

(declare-fun array_inv!27235 (array!74090) Bool)

(assert (=> start!98536 (and (array_inv!27235 _values!996) e!648611)))

(declare-fun b!1139926 () Bool)

(declare-fun e!648610 () Bool)

(assert (=> b!1139926 (= e!648610 tp_is_empty!28635)))

(declare-fun e!648615 () Bool)

(declare-fun b!1139927 () Bool)

(declare-fun call!50805 () ListLongMap!16243)

(declare-fun -!1237 (ListLongMap!16243 (_ BitVec 64)) ListLongMap!16243)

(assert (=> b!1139927 (= e!648615 (= call!50804 (-!1237 call!50805 k0!934)))))

(declare-fun b!1139928 () Bool)

(declare-fun res!760216 () Bool)

(assert (=> b!1139928 (=> (not res!760216) (not e!648609))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1139928 (= res!760216 (validMask!0 mask!1564))))

(declare-fun bm!50801 () Bool)

(assert (=> bm!50801 (= call!50807 call!50808)))

(declare-fun bm!50802 () Bool)

(declare-fun c!111756 () Bool)

(assert (=> bm!50802 (= call!50803 (addStillContains!786 (ite c!111755 lt!507450 lt!507451) (ite c!111755 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!111756 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!111755 minValue!944 (ite c!111756 zeroValue!944 minValue!944)) k0!934))))

(declare-fun mapNonEmpty!44777 () Bool)

(declare-fun tp!85026 () Bool)

(assert (=> mapNonEmpty!44777 (= mapRes!44777 (and tp!85026 e!648610))))

(declare-fun mapRest!44777 () (Array (_ BitVec 32) ValueCell!13608))

(declare-fun mapValue!44777 () ValueCell!13608)

(declare-fun mapKey!44777 () (_ BitVec 32))

(assert (=> mapNonEmpty!44777 (= (arr!35692 _values!996) (store mapRest!44777 mapKey!44777 mapValue!44777))))

(declare-fun bm!50803 () Bool)

(assert (=> bm!50803 (= call!50802 call!50803)))

(declare-fun b!1139929 () Bool)

(declare-fun e!648618 () Unit!37312)

(declare-fun lt!507453 () Unit!37312)

(assert (=> b!1139929 (= e!648618 lt!507453)))

(assert (=> b!1139929 (= lt!507453 call!50802)))

(assert (=> b!1139929 call!50801))

(declare-fun b!1139930 () Bool)

(declare-fun res!760224 () Bool)

(assert (=> b!1139930 (=> (not res!760224) (not e!648609))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1139930 (= res!760224 (= (select (arr!35691 _keys!1208) i!673) k0!934))))

(declare-fun b!1139931 () Bool)

(declare-fun res!760221 () Bool)

(assert (=> b!1139931 (=> (not res!760221) (not e!648609))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1139931 (= res!760221 (validKeyInArray!0 k0!934))))

(declare-fun e!648608 () Bool)

(declare-fun b!1139932 () Bool)

(assert (=> b!1139932 (= e!648608 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1139933 () Bool)

(declare-fun e!648607 () Bool)

(declare-fun e!648604 () Bool)

(assert (=> b!1139933 (= e!648607 e!648604)))

(declare-fun res!760222 () Bool)

(assert (=> b!1139933 (=> res!760222 e!648604)))

(assert (=> b!1139933 (= res!760222 (not (= (select (arr!35691 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1139933 e!648615))

(declare-fun c!111752 () Bool)

(assert (=> b!1139933 (= c!111752 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!507457 () Unit!37312)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!495 (array!74088 array!74090 (_ BitVec 32) (_ BitVec 32) V!43307 V!43307 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37312)

(assert (=> b!1139933 (= lt!507457 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!495 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139934 () Bool)

(declare-fun e!648603 () Unit!37312)

(declare-fun Unit!37315 () Unit!37312)

(assert (=> b!1139934 (= e!648603 Unit!37315)))

(declare-fun b!1139935 () Bool)

(declare-fun res!760226 () Bool)

(assert (=> b!1139935 (=> (not res!760226) (not e!648609))))

(assert (=> b!1139935 (= res!760226 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36228 _keys!1208))))))

(declare-fun b!1139936 () Bool)

(assert (=> b!1139936 (= e!648612 tp_is_empty!28635)))

(declare-fun b!1139937 () Bool)

(declare-fun res!760214 () Bool)

(assert (=> b!1139937 (=> (not res!760214) (not e!648609))))

(assert (=> b!1139937 (= res!760214 (and (= (size!36229 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36228 _keys!1208) (size!36229 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1139938 () Bool)

(declare-fun e!648617 () Bool)

(assert (=> b!1139938 (= e!648617 e!648607)))

(declare-fun res!760223 () Bool)

(assert (=> b!1139938 (=> res!760223 e!648607)))

(assert (=> b!1139938 (= res!760223 (not (= from!1455 i!673)))))

(declare-fun lt!507445 () ListLongMap!16243)

(assert (=> b!1139938 (= lt!507445 (getCurrentListMapNoExtraKeys!4583 lt!507465 lt!507452 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!507458 () V!43307)

(assert (=> b!1139938 (= lt!507452 (array!74091 (store (arr!35692 _values!996) i!673 (ValueCellFull!13608 lt!507458)) (size!36229 _values!996)))))

(declare-fun dynLambda!2638 (Int (_ BitVec 64)) V!43307)

(assert (=> b!1139938 (= lt!507458 (dynLambda!2638 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!507462 () ListLongMap!16243)

(assert (=> b!1139938 (= lt!507462 (getCurrentListMapNoExtraKeys!4583 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1139939 () Bool)

(declare-fun Unit!37316 () Unit!37312)

(assert (=> b!1139939 (= e!648603 Unit!37316)))

(assert (=> b!1139939 (= lt!507460 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1139939 (= c!111755 (and (not lt!507460) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!507455 () Unit!37312)

(assert (=> b!1139939 (= lt!507455 e!648613)))

(declare-fun lt!507464 () Unit!37312)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!387 (array!74088 array!74090 (_ BitVec 32) (_ BitVec 32) V!43307 V!43307 (_ BitVec 64) (_ BitVec 32) Int) Unit!37312)

(assert (=> b!1139939 (= lt!507464 (lemmaListMapContainsThenArrayContainsFrom!387 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!111754 () Bool)

(assert (=> b!1139939 (= c!111754 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!760218 () Bool)

(assert (=> b!1139939 (= res!760218 e!648616)))

(assert (=> b!1139939 (=> (not res!760218) (not e!648608))))

(assert (=> b!1139939 e!648608))

(declare-fun lt!507461 () Unit!37312)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74088 (_ BitVec 32) (_ BitVec 32)) Unit!37312)

(assert (=> b!1139939 (= lt!507461 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1139939 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25062)))

(declare-fun lt!507459 () Unit!37312)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74088 (_ BitVec 64) (_ BitVec 32) List!25065) Unit!37312)

(assert (=> b!1139939 (= lt!507459 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25062))))

(assert (=> b!1139939 false))

(declare-fun b!1139940 () Bool)

(assert (=> b!1139940 (= e!648604 true)))

(declare-fun lt!507448 () V!43307)

(assert (=> b!1139940 (= (-!1237 (+!3485 lt!507451 (tuple2!18263 (select (arr!35691 _keys!1208) from!1455) lt!507448)) (select (arr!35691 _keys!1208) from!1455)) lt!507451)))

(declare-fun lt!507449 () Unit!37312)

(declare-fun addThenRemoveForNewKeyIsSame!93 (ListLongMap!16243 (_ BitVec 64) V!43307) Unit!37312)

(assert (=> b!1139940 (= lt!507449 (addThenRemoveForNewKeyIsSame!93 lt!507451 (select (arr!35691 _keys!1208) from!1455) lt!507448))))

(declare-fun get!18149 (ValueCell!13608 V!43307) V!43307)

(assert (=> b!1139940 (= lt!507448 (get!18149 (select (arr!35692 _values!996) from!1455) lt!507458))))

(declare-fun lt!507463 () Unit!37312)

(assert (=> b!1139940 (= lt!507463 e!648603)))

(declare-fun c!111751 () Bool)

(assert (=> b!1139940 (= c!111751 (contains!6645 lt!507451 k0!934))))

(assert (=> b!1139940 (= lt!507451 (getCurrentListMapNoExtraKeys!4583 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!50804 () Bool)

(assert (=> bm!50804 (= call!50808 (+!3485 lt!507451 (ite (or c!111755 c!111756) (tuple2!18263 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18263 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1139941 () Bool)

(assert (=> b!1139941 (= e!648615 (= call!50804 call!50805))))

(declare-fun mapIsEmpty!44777 () Bool)

(assert (=> mapIsEmpty!44777 mapRes!44777))

(declare-fun b!1139942 () Bool)

(assert (=> b!1139942 (= c!111756 (and (not lt!507460) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1139942 (= e!648613 e!648618)))

(declare-fun b!1139943 () Bool)

(assert (=> b!1139943 (= e!648618 e!648606)))

(declare-fun c!111753 () Bool)

(assert (=> b!1139943 (= c!111753 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!507460))))

(declare-fun bm!50805 () Bool)

(assert (=> bm!50805 (= call!50805 (getCurrentListMapNoExtraKeys!4583 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1139944 () Bool)

(assert (=> b!1139944 (= e!648614 (not e!648617))))

(declare-fun res!760213 () Bool)

(assert (=> b!1139944 (=> res!760213 e!648617)))

(assert (=> b!1139944 (= res!760213 (bvsgt from!1455 i!673))))

(assert (=> b!1139944 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!507454 () Unit!37312)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74088 (_ BitVec 64) (_ BitVec 32)) Unit!37312)

(assert (=> b!1139944 (= lt!507454 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1139945 () Bool)

(assert (=> b!1139945 (= e!648609 e!648614)))

(declare-fun res!760215 () Bool)

(assert (=> b!1139945 (=> (not res!760215) (not e!648614))))

(assert (=> b!1139945 (= res!760215 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!507465 mask!1564))))

(assert (=> b!1139945 (= lt!507465 (array!74089 (store (arr!35691 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36228 _keys!1208)))))

(assert (= (and start!98536 res!760217) b!1139928))

(assert (= (and b!1139928 res!760216) b!1139937))

(assert (= (and b!1139937 res!760214) b!1139918))

(assert (= (and b!1139918 res!760219) b!1139920))

(assert (= (and b!1139920 res!760220) b!1139935))

(assert (= (and b!1139935 res!760226) b!1139931))

(assert (= (and b!1139931 res!760221) b!1139930))

(assert (= (and b!1139930 res!760224) b!1139945))

(assert (= (and b!1139945 res!760215) b!1139922))

(assert (= (and b!1139922 res!760225) b!1139944))

(assert (= (and b!1139944 (not res!760213)) b!1139938))

(assert (= (and b!1139938 (not res!760223)) b!1139933))

(assert (= (and b!1139933 c!111752) b!1139927))

(assert (= (and b!1139933 (not c!111752)) b!1139941))

(assert (= (or b!1139927 b!1139941) bm!50799))

(assert (= (or b!1139927 b!1139941) bm!50805))

(assert (= (and b!1139933 (not res!760222)) b!1139940))

(assert (= (and b!1139940 c!111751) b!1139939))

(assert (= (and b!1139940 (not c!111751)) b!1139934))

(assert (= (and b!1139939 c!111755) b!1139923))

(assert (= (and b!1139939 (not c!111755)) b!1139942))

(assert (= (and b!1139942 c!111756) b!1139929))

(assert (= (and b!1139942 (not c!111756)) b!1139943))

(assert (= (and b!1139943 c!111753) b!1139919))

(assert (= (and b!1139943 (not c!111753)) b!1139925))

(assert (= (or b!1139929 b!1139919) bm!50803))

(assert (= (or b!1139929 b!1139919) bm!50801))

(assert (= (or b!1139929 b!1139919) bm!50798))

(assert (= (or b!1139923 bm!50798) bm!50800))

(assert (= (or b!1139923 bm!50803) bm!50802))

(assert (= (or b!1139923 bm!50801) bm!50804))

(assert (= (and b!1139939 c!111754) b!1139924))

(assert (= (and b!1139939 (not c!111754)) b!1139917))

(assert (= (and b!1139939 res!760218) b!1139932))

(assert (= (and b!1139921 condMapEmpty!44777) mapIsEmpty!44777))

(assert (= (and b!1139921 (not condMapEmpty!44777)) mapNonEmpty!44777))

(get-info :version)

(assert (= (and mapNonEmpty!44777 ((_ is ValueCellFull!13608) mapValue!44777)) b!1139926))

(assert (= (and b!1139921 ((_ is ValueCellFull!13608) mapDefault!44777)) b!1139936))

(assert (= start!98536 b!1139921))

(declare-fun b_lambda!19229 () Bool)

(assert (=> (not b_lambda!19229) (not b!1139938)))

(declare-fun t!36168 () Bool)

(declare-fun tb!8925 () Bool)

(assert (=> (and start!98536 (= defaultEntry!1004 defaultEntry!1004) t!36168) tb!8925))

(declare-fun result!18407 () Bool)

(assert (=> tb!8925 (= result!18407 tp_is_empty!28635)))

(assert (=> b!1139938 t!36168))

(declare-fun b_and!39075 () Bool)

(assert (= b_and!39073 (and (=> t!36168 result!18407) b_and!39075)))

(declare-fun m!1051539 () Bool)

(assert (=> start!98536 m!1051539))

(declare-fun m!1051541 () Bool)

(assert (=> start!98536 m!1051541))

(declare-fun m!1051543 () Bool)

(assert (=> b!1139924 m!1051543))

(declare-fun m!1051545 () Bool)

(assert (=> b!1139938 m!1051545))

(declare-fun m!1051547 () Bool)

(assert (=> b!1139938 m!1051547))

(declare-fun m!1051549 () Bool)

(assert (=> b!1139938 m!1051549))

(declare-fun m!1051551 () Bool)

(assert (=> b!1139938 m!1051551))

(declare-fun m!1051553 () Bool)

(assert (=> b!1139928 m!1051553))

(declare-fun m!1051555 () Bool)

(assert (=> b!1139933 m!1051555))

(declare-fun m!1051557 () Bool)

(assert (=> b!1139933 m!1051557))

(assert (=> b!1139932 m!1051543))

(declare-fun m!1051559 () Bool)

(assert (=> bm!50799 m!1051559))

(declare-fun m!1051561 () Bool)

(assert (=> bm!50805 m!1051561))

(declare-fun m!1051563 () Bool)

(assert (=> b!1139939 m!1051563))

(declare-fun m!1051565 () Bool)

(assert (=> b!1139939 m!1051565))

(declare-fun m!1051567 () Bool)

(assert (=> b!1139939 m!1051567))

(declare-fun m!1051569 () Bool)

(assert (=> b!1139939 m!1051569))

(declare-fun m!1051571 () Bool)

(assert (=> bm!50804 m!1051571))

(declare-fun m!1051573 () Bool)

(assert (=> b!1139944 m!1051573))

(declare-fun m!1051575 () Bool)

(assert (=> b!1139944 m!1051575))

(declare-fun m!1051577 () Bool)

(assert (=> b!1139930 m!1051577))

(declare-fun m!1051579 () Bool)

(assert (=> mapNonEmpty!44777 m!1051579))

(declare-fun m!1051581 () Bool)

(assert (=> b!1139927 m!1051581))

(declare-fun m!1051583 () Bool)

(assert (=> b!1139920 m!1051583))

(declare-fun m!1051585 () Bool)

(assert (=> bm!50802 m!1051585))

(declare-fun m!1051587 () Bool)

(assert (=> b!1139922 m!1051587))

(declare-fun m!1051589 () Bool)

(assert (=> b!1139918 m!1051589))

(declare-fun m!1051591 () Bool)

(assert (=> b!1139931 m!1051591))

(declare-fun m!1051593 () Bool)

(assert (=> b!1139940 m!1051593))

(assert (=> b!1139940 m!1051555))

(declare-fun m!1051595 () Bool)

(assert (=> b!1139940 m!1051595))

(assert (=> b!1139940 m!1051561))

(declare-fun m!1051597 () Bool)

(assert (=> b!1139940 m!1051597))

(assert (=> b!1139940 m!1051555))

(declare-fun m!1051599 () Bool)

(assert (=> b!1139940 m!1051599))

(assert (=> b!1139940 m!1051597))

(declare-fun m!1051601 () Bool)

(assert (=> b!1139940 m!1051601))

(assert (=> b!1139940 m!1051555))

(assert (=> b!1139940 m!1051593))

(declare-fun m!1051603 () Bool)

(assert (=> b!1139940 m!1051603))

(declare-fun m!1051605 () Bool)

(assert (=> b!1139945 m!1051605))

(declare-fun m!1051607 () Bool)

(assert (=> b!1139945 m!1051607))

(declare-fun m!1051609 () Bool)

(assert (=> bm!50800 m!1051609))

(declare-fun m!1051611 () Bool)

(assert (=> b!1139923 m!1051611))

(assert (=> b!1139923 m!1051611))

(declare-fun m!1051613 () Bool)

(assert (=> b!1139923 m!1051613))

(declare-fun m!1051615 () Bool)

(assert (=> b!1139923 m!1051615))

(check-sat (not bm!50800) b_and!39075 (not b!1139931) (not b!1139924) (not b!1139927) (not b!1139945) (not b!1139922) (not start!98536) (not b!1139933) (not b_lambda!19229) tp_is_empty!28635 (not b!1139928) (not b!1139918) (not bm!50802) (not b!1139939) (not bm!50804) (not b!1139944) (not b!1139938) (not b_next!24105) (not mapNonEmpty!44777) (not bm!50805) (not b!1139920) (not b!1139932) (not bm!50799) (not b!1139923) (not b!1139940))
(check-sat b_and!39075 (not b_next!24105))

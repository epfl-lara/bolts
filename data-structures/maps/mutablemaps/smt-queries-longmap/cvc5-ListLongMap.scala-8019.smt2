; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98990 () Bool)

(assert start!98990)

(declare-fun b_free!24559 () Bool)

(declare-fun b_next!24559 () Bool)

(assert (=> start!98990 (= b_free!24559 (not b_next!24559))))

(declare-fun tp!86388 () Bool)

(declare-fun b_and!39981 () Bool)

(assert (=> start!98990 (= tp!86388 b_and!39981)))

(declare-fun b!1160662 () Bool)

(declare-fun res!770295 () Bool)

(declare-fun e!660057 () Bool)

(assert (=> b!1160662 (=> (not res!770295) (not e!660057))))

(declare-datatypes ((array!74968 0))(
  ( (array!74969 (arr!36131 (Array (_ BitVec 32) (_ BitVec 64))) (size!36668 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74968)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!43913 0))(
  ( (V!43914 (val!14601 Int)) )
))
(declare-datatypes ((ValueCell!13835 0))(
  ( (ValueCellFull!13835 (v!17239 V!43913)) (EmptyCell!13835) )
))
(declare-datatypes ((array!74970 0))(
  ( (array!74971 (arr!36132 (Array (_ BitVec 32) ValueCell!13835)) (size!36669 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74970)

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1160662 (= res!770295 (and (= (size!36669 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36668 _keys!1208) (size!36669 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1160663 () Bool)

(declare-datatypes ((Unit!38169 0))(
  ( (Unit!38170) )
))
(declare-fun e!660045 () Unit!38169)

(declare-fun Unit!38171 () Unit!38169)

(assert (=> b!1160663 (= e!660045 Unit!38171)))

(declare-fun lt!522128 () Bool)

(assert (=> b!1160663 (= lt!522128 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun c!115842 () Bool)

(assert (=> b!1160663 (= c!115842 (and (not lt!522128) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!522135 () Unit!38169)

(declare-fun e!660056 () Unit!38169)

(assert (=> b!1160663 (= lt!522135 e!660056)))

(declare-fun zeroValue!944 () V!43913)

(declare-fun defaultEntry!1004 () Int)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43913)

(declare-fun lt!522141 () Unit!38169)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!538 (array!74968 array!74970 (_ BitVec 32) (_ BitVec 32) V!43913 V!43913 (_ BitVec 64) (_ BitVec 32) Int) Unit!38169)

(assert (=> b!1160663 (= lt!522141 (lemmaListMapContainsThenArrayContainsFrom!538 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!115839 () Bool)

(assert (=> b!1160663 (= c!115839 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!770298 () Bool)

(declare-fun e!660048 () Bool)

(assert (=> b!1160663 (= res!770298 e!660048)))

(declare-fun e!660046 () Bool)

(assert (=> b!1160663 (=> (not res!770298) (not e!660046))))

(assert (=> b!1160663 e!660046))

(declare-fun lt!522142 () Unit!38169)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74968 (_ BitVec 32) (_ BitVec 32)) Unit!38169)

(assert (=> b!1160663 (= lt!522142 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-datatypes ((List!25450 0))(
  ( (Nil!25447) (Cons!25446 (h!26655 (_ BitVec 64)) (t!37008 List!25450)) )
))
(declare-fun arrayNoDuplicates!0 (array!74968 (_ BitVec 32) List!25450) Bool)

(assert (=> b!1160663 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25447)))

(declare-fun lt!522143 () Unit!38169)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74968 (_ BitVec 64) (_ BitVec 32) List!25450) Unit!38169)

(assert (=> b!1160663 (= lt!522143 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25447))))

(assert (=> b!1160663 false))

(declare-fun b!1160664 () Bool)

(declare-fun e!660050 () Bool)

(declare-fun e!660043 () Bool)

(assert (=> b!1160664 (= e!660050 e!660043)))

(declare-fun res!770301 () Bool)

(assert (=> b!1160664 (=> res!770301 e!660043)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1160664 (= res!770301 (not (= from!1455 i!673)))))

(declare-fun lt!522147 () array!74968)

(declare-datatypes ((tuple2!18672 0))(
  ( (tuple2!18673 (_1!9346 (_ BitVec 64)) (_2!9346 V!43913)) )
))
(declare-datatypes ((List!25451 0))(
  ( (Nil!25448) (Cons!25447 (h!26656 tuple2!18672) (t!37009 List!25451)) )
))
(declare-datatypes ((ListLongMap!16653 0))(
  ( (ListLongMap!16654 (toList!8342 List!25451)) )
))
(declare-fun lt!522133 () ListLongMap!16653)

(declare-fun lt!522137 () array!74970)

(declare-fun getCurrentListMapNoExtraKeys!4778 (array!74968 array!74970 (_ BitVec 32) (_ BitVec 32) V!43913 V!43913 (_ BitVec 32) Int) ListLongMap!16653)

(assert (=> b!1160664 (= lt!522133 (getCurrentListMapNoExtraKeys!4778 lt!522147 lt!522137 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!522144 () V!43913)

(assert (=> b!1160664 (= lt!522137 (array!74971 (store (arr!36132 _values!996) i!673 (ValueCellFull!13835 lt!522144)) (size!36669 _values!996)))))

(declare-fun dynLambda!2780 (Int (_ BitVec 64)) V!43913)

(assert (=> b!1160664 (= lt!522144 (dynLambda!2780 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!522138 () ListLongMap!16653)

(assert (=> b!1160664 (= lt!522138 (getCurrentListMapNoExtraKeys!4778 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1160665 () Bool)

(declare-fun e!660042 () Bool)

(declare-fun tp_is_empty!29089 () Bool)

(assert (=> b!1160665 (= e!660042 tp_is_empty!29089)))

(declare-fun bm!56246 () Bool)

(declare-fun call!56249 () Unit!38169)

(declare-fun call!56250 () Unit!38169)

(assert (=> bm!56246 (= call!56249 call!56250)))

(declare-fun call!56252 () Bool)

(declare-fun lt!522136 () ListLongMap!16653)

(declare-fun call!56255 () ListLongMap!16653)

(declare-fun bm!56247 () Bool)

(declare-fun contains!6823 (ListLongMap!16653 (_ BitVec 64)) Bool)

(assert (=> bm!56247 (= call!56252 (contains!6823 (ite c!115842 lt!522136 call!56255) k!934))))

(declare-fun b!1160666 () Bool)

(declare-fun e!660053 () Unit!38169)

(declare-fun lt!522130 () Unit!38169)

(assert (=> b!1160666 (= e!660053 lt!522130)))

(assert (=> b!1160666 (= lt!522130 call!56249)))

(declare-fun call!56251 () Bool)

(assert (=> b!1160666 call!56251))

(declare-fun b!1160667 () Bool)

(declare-fun res!770289 () Bool)

(assert (=> b!1160667 (=> (not res!770289) (not e!660057))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74968 (_ BitVec 32)) Bool)

(assert (=> b!1160667 (= res!770289 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1160668 () Bool)

(declare-fun e!660054 () Bool)

(assert (=> b!1160668 (= e!660054 true)))

(declare-fun e!660055 () Bool)

(assert (=> b!1160668 e!660055))

(declare-fun res!770300 () Bool)

(assert (=> b!1160668 (=> (not res!770300) (not e!660055))))

(declare-fun lt!522126 () ListLongMap!16653)

(declare-fun lt!522146 () ListLongMap!16653)

(assert (=> b!1160668 (= res!770300 (= lt!522126 lt!522146))))

(declare-fun -!1414 (ListLongMap!16653 (_ BitVec 64)) ListLongMap!16653)

(assert (=> b!1160668 (= lt!522126 (-!1414 lt!522138 k!934))))

(declare-fun lt!522131 () V!43913)

(declare-fun +!3667 (ListLongMap!16653 tuple2!18672) ListLongMap!16653)

(assert (=> b!1160668 (= (-!1414 (+!3667 lt!522146 (tuple2!18673 (select (arr!36131 _keys!1208) from!1455) lt!522131)) (select (arr!36131 _keys!1208) from!1455)) lt!522146)))

(declare-fun lt!522127 () Unit!38169)

(declare-fun addThenRemoveForNewKeyIsSame!251 (ListLongMap!16653 (_ BitVec 64) V!43913) Unit!38169)

(assert (=> b!1160668 (= lt!522127 (addThenRemoveForNewKeyIsSame!251 lt!522146 (select (arr!36131 _keys!1208) from!1455) lt!522131))))

(declare-fun get!18459 (ValueCell!13835 V!43913) V!43913)

(assert (=> b!1160668 (= lt!522131 (get!18459 (select (arr!36132 _values!996) from!1455) lt!522144))))

(declare-fun lt!522140 () Unit!38169)

(assert (=> b!1160668 (= lt!522140 e!660045)))

(declare-fun c!115837 () Bool)

(assert (=> b!1160668 (= c!115837 (contains!6823 lt!522146 k!934))))

(assert (=> b!1160668 (= lt!522146 (getCurrentListMapNoExtraKeys!4778 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!56248 () Bool)

(declare-fun c!115838 () Bool)

(declare-fun addStillContains!964 (ListLongMap!16653 (_ BitVec 64) V!43913 (_ BitVec 64)) Unit!38169)

(assert (=> bm!56248 (= call!56250 (addStillContains!964 (ite c!115842 lt!522136 lt!522146) (ite c!115842 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!115838 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!115842 minValue!944 (ite c!115838 zeroValue!944 minValue!944)) k!934))))

(declare-fun call!56256 () ListLongMap!16653)

(declare-fun bm!56249 () Bool)

(assert (=> bm!56249 (= call!56256 (+!3667 (ite c!115842 lt!522136 lt!522146) (ite c!115842 (tuple2!18673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!115838 (tuple2!18673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18673 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun call!56253 () ListLongMap!16653)

(declare-fun call!56254 () ListLongMap!16653)

(declare-fun b!1160669 () Bool)

(declare-fun e!660052 () Bool)

(assert (=> b!1160669 (= e!660052 (= call!56253 (-!1414 call!56254 k!934)))))

(declare-fun b!1160670 () Bool)

(declare-fun arrayContainsKey!0 (array!74968 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1160670 (= e!660048 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1160671 () Bool)

(assert (=> b!1160671 call!56251))

(declare-fun lt!522145 () Unit!38169)

(assert (=> b!1160671 (= lt!522145 call!56249)))

(declare-fun e!660051 () Unit!38169)

(assert (=> b!1160671 (= e!660051 lt!522145)))

(declare-fun b!1160672 () Bool)

(assert (=> b!1160672 (= e!660053 e!660051)))

(declare-fun c!115840 () Bool)

(assert (=> b!1160672 (= c!115840 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!522128))))

(declare-fun res!770302 () Bool)

(assert (=> start!98990 (=> (not res!770302) (not e!660057))))

(assert (=> start!98990 (= res!770302 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36668 _keys!1208))))))

(assert (=> start!98990 e!660057))

(assert (=> start!98990 tp_is_empty!29089))

(declare-fun array_inv!27518 (array!74968) Bool)

(assert (=> start!98990 (array_inv!27518 _keys!1208)))

(assert (=> start!98990 true))

(assert (=> start!98990 tp!86388))

(declare-fun e!660044 () Bool)

(declare-fun array_inv!27519 (array!74970) Bool)

(assert (=> start!98990 (and (array_inv!27519 _values!996) e!660044)))

(declare-fun b!1160673 () Bool)

(declare-fun e!660049 () Bool)

(assert (=> b!1160673 (= e!660057 e!660049)))

(declare-fun res!770303 () Bool)

(assert (=> b!1160673 (=> (not res!770303) (not e!660049))))

(assert (=> b!1160673 (= res!770303 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!522147 mask!1564))))

(assert (=> b!1160673 (= lt!522147 (array!74969 (store (arr!36131 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36668 _keys!1208)))))

(declare-fun b!1160674 () Bool)

(assert (=> b!1160674 (= e!660052 (= call!56253 call!56254))))

(declare-fun b!1160675 () Bool)

(declare-fun res!770292 () Bool)

(assert (=> b!1160675 (=> (not res!770292) (not e!660057))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1160675 (= res!770292 (validKeyInArray!0 k!934))))

(declare-fun mapIsEmpty!45458 () Bool)

(declare-fun mapRes!45458 () Bool)

(assert (=> mapIsEmpty!45458 mapRes!45458))

(declare-fun b!1160676 () Bool)

(assert (=> b!1160676 (= c!115838 (and (not lt!522128) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (=> b!1160676 (= e!660056 e!660053)))

(declare-fun bm!56250 () Bool)

(assert (=> bm!56250 (= call!56255 call!56256)))

(declare-fun b!1160677 () Bool)

(declare-fun Unit!38172 () Unit!38169)

(assert (=> b!1160677 (= e!660045 Unit!38172)))

(declare-fun b!1160678 () Bool)

(declare-fun res!770299 () Bool)

(assert (=> b!1160678 (=> (not res!770299) (not e!660049))))

(assert (=> b!1160678 (= res!770299 (arrayNoDuplicates!0 lt!522147 #b00000000000000000000000000000000 Nil!25447))))

(declare-fun b!1160679 () Bool)

(assert (=> b!1160679 (= e!660049 (not e!660050))))

(declare-fun res!770297 () Bool)

(assert (=> b!1160679 (=> res!770297 e!660050)))

(assert (=> b!1160679 (= res!770297 (bvsgt from!1455 i!673))))

(assert (=> b!1160679 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!522134 () Unit!38169)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74968 (_ BitVec 64) (_ BitVec 32)) Unit!38169)

(assert (=> b!1160679 (= lt!522134 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1160680 () Bool)

(assert (=> b!1160680 (= e!660048 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!522128) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!56251 () Bool)

(assert (=> bm!56251 (= call!56251 call!56252)))

(declare-fun b!1160681 () Bool)

(declare-fun res!770296 () Bool)

(assert (=> b!1160681 (=> (not res!770296) (not e!660057))))

(assert (=> b!1160681 (= res!770296 (= (select (arr!36131 _keys!1208) i!673) k!934))))

(declare-fun b!1160682 () Bool)

(assert (=> b!1160682 (= e!660055 (= lt!522126 (getCurrentListMapNoExtraKeys!4778 lt!522147 lt!522137 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004)))))

(declare-fun b!1160683 () Bool)

(assert (=> b!1160683 (= e!660046 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!56252 () Bool)

(assert (=> bm!56252 (= call!56253 (getCurrentListMapNoExtraKeys!4778 lt!522147 lt!522137 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160684 () Bool)

(declare-fun e!660041 () Bool)

(assert (=> b!1160684 (= e!660041 tp_is_empty!29089)))

(declare-fun b!1160685 () Bool)

(declare-fun res!770291 () Bool)

(assert (=> b!1160685 (=> (not res!770291) (not e!660057))))

(assert (=> b!1160685 (= res!770291 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36668 _keys!1208))))))

(declare-fun b!1160686 () Bool)

(declare-fun res!770290 () Bool)

(assert (=> b!1160686 (=> (not res!770290) (not e!660057))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1160686 (= res!770290 (validMask!0 mask!1564))))

(declare-fun b!1160687 () Bool)

(declare-fun Unit!38173 () Unit!38169)

(assert (=> b!1160687 (= e!660051 Unit!38173)))

(declare-fun b!1160688 () Bool)

(declare-fun res!770294 () Bool)

(assert (=> b!1160688 (=> (not res!770294) (not e!660057))))

(assert (=> b!1160688 (= res!770294 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25447))))

(declare-fun b!1160689 () Bool)

(assert (=> b!1160689 (contains!6823 call!56256 k!934)))

(declare-fun lt!522139 () Unit!38169)

(assert (=> b!1160689 (= lt!522139 call!56250)))

(assert (=> b!1160689 call!56252))

(assert (=> b!1160689 (= lt!522136 (+!3667 lt!522146 (tuple2!18673 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(declare-fun lt!522129 () Unit!38169)

(assert (=> b!1160689 (= lt!522129 (addStillContains!964 lt!522146 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1160689 (= e!660056 lt!522139)))

(declare-fun b!1160690 () Bool)

(assert (=> b!1160690 (= e!660043 e!660054)))

(declare-fun res!770293 () Bool)

(assert (=> b!1160690 (=> res!770293 e!660054)))

(assert (=> b!1160690 (= res!770293 (not (= (select (arr!36131 _keys!1208) from!1455) k!934)))))

(assert (=> b!1160690 e!660052))

(declare-fun c!115841 () Bool)

(assert (=> b!1160690 (= c!115841 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!522132 () Unit!38169)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!637 (array!74968 array!74970 (_ BitVec 32) (_ BitVec 32) V!43913 V!43913 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38169)

(assert (=> b!1160690 (= lt!522132 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!637 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!45458 () Bool)

(declare-fun tp!86389 () Bool)

(assert (=> mapNonEmpty!45458 (= mapRes!45458 (and tp!86389 e!660041))))

(declare-fun mapKey!45458 () (_ BitVec 32))

(declare-fun mapRest!45458 () (Array (_ BitVec 32) ValueCell!13835))

(declare-fun mapValue!45458 () ValueCell!13835)

(assert (=> mapNonEmpty!45458 (= (arr!36132 _values!996) (store mapRest!45458 mapKey!45458 mapValue!45458))))

(declare-fun bm!56253 () Bool)

(assert (=> bm!56253 (= call!56254 (getCurrentListMapNoExtraKeys!4778 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1160691 () Bool)

(assert (=> b!1160691 (= e!660044 (and e!660042 mapRes!45458))))

(declare-fun condMapEmpty!45458 () Bool)

(declare-fun mapDefault!45458 () ValueCell!13835)


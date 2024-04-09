; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98838 () Bool)

(assert start!98838)

(declare-fun b_free!24407 () Bool)

(declare-fun b_next!24407 () Bool)

(assert (=> start!98838 (= b_free!24407 (not b_next!24407))))

(declare-fun tp!85932 () Bool)

(declare-fun b_and!39677 () Bool)

(assert (=> start!98838 (= tp!85932 b_and!39677)))

(declare-fun b!1153670 () Bool)

(declare-fun e!656176 () Bool)

(declare-fun e!656165 () Bool)

(assert (=> b!1153670 (= e!656176 (not e!656165))))

(declare-fun res!766879 () Bool)

(assert (=> b!1153670 (=> res!766879 e!656165)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1153670 (= res!766879 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!74670 0))(
  ( (array!74671 (arr!35982 (Array (_ BitVec 32) (_ BitVec 64))) (size!36519 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74670)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!74670 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1153670 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37879 0))(
  ( (Unit!37880) )
))
(declare-fun lt!517129 () Unit!37879)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74670 (_ BitVec 64) (_ BitVec 32)) Unit!37879)

(assert (=> b!1153670 (= lt!517129 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-datatypes ((V!43709 0))(
  ( (V!43710 (val!14525 Int)) )
))
(declare-fun zeroValue!944 () V!43709)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18530 0))(
  ( (tuple2!18531 (_1!9275 (_ BitVec 64)) (_2!9275 V!43709)) )
))
(declare-datatypes ((List!25317 0))(
  ( (Nil!25314) (Cons!25313 (h!26522 tuple2!18530) (t!36723 List!25317)) )
))
(declare-datatypes ((ListLongMap!16511 0))(
  ( (ListLongMap!16512 (toList!8271 List!25317)) )
))
(declare-fun call!54426 () ListLongMap!16511)

(declare-datatypes ((ValueCell!13759 0))(
  ( (ValueCellFull!13759 (v!17163 V!43709)) (EmptyCell!13759) )
))
(declare-datatypes ((array!74672 0))(
  ( (array!74673 (arr!35983 (Array (_ BitVec 32) ValueCell!13759)) (size!36520 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74672)

(declare-fun bm!54422 () Bool)

(declare-fun minValue!944 () V!43709)

(declare-fun getCurrentListMapNoExtraKeys!4711 (array!74670 array!74672 (_ BitVec 32) (_ BitVec 32) V!43709 V!43709 (_ BitVec 32) Int) ListLongMap!16511)

(assert (=> bm!54422 (= call!54426 (getCurrentListMapNoExtraKeys!4711 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153671 () Bool)

(declare-fun e!656173 () Bool)

(declare-fun call!54428 () ListLongMap!16511)

(assert (=> b!1153671 (= e!656173 (= call!54428 call!54426))))

(declare-fun lt!517128 () array!74670)

(declare-fun bm!54423 () Bool)

(declare-fun lt!517113 () array!74672)

(assert (=> bm!54423 (= call!54428 (getCurrentListMapNoExtraKeys!4711 lt!517128 lt!517113 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153672 () Bool)

(declare-fun res!766875 () Bool)

(declare-fun e!656174 () Bool)

(assert (=> b!1153672 (=> (not res!766875) (not e!656174))))

(declare-datatypes ((List!25318 0))(
  ( (Nil!25315) (Cons!25314 (h!26523 (_ BitVec 64)) (t!36724 List!25318)) )
))
(declare-fun arrayNoDuplicates!0 (array!74670 (_ BitVec 32) List!25318) Bool)

(assert (=> b!1153672 (= res!766875 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25315))))

(declare-fun b!1153674 () Bool)

(declare-fun e!656171 () Bool)

(declare-fun tp_is_empty!28937 () Bool)

(assert (=> b!1153674 (= e!656171 tp_is_empty!28937)))

(declare-fun bm!54424 () Bool)

(declare-fun call!54430 () Unit!37879)

(declare-fun call!54427 () Unit!37879)

(assert (=> bm!54424 (= call!54430 call!54427)))

(declare-fun b!1153675 () Bool)

(declare-fun res!766883 () Bool)

(assert (=> b!1153675 (=> (not res!766883) (not e!656174))))

(assert (=> b!1153675 (= res!766883 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36519 _keys!1208))))))

(declare-fun mapNonEmpty!45230 () Bool)

(declare-fun mapRes!45230 () Bool)

(declare-fun tp!85933 () Bool)

(declare-fun e!656170 () Bool)

(assert (=> mapNonEmpty!45230 (= mapRes!45230 (and tp!85933 e!656170))))

(declare-fun mapRest!45230 () (Array (_ BitVec 32) ValueCell!13759))

(declare-fun mapValue!45230 () ValueCell!13759)

(declare-fun mapKey!45230 () (_ BitVec 32))

(assert (=> mapNonEmpty!45230 (= (arr!35983 _values!996) (store mapRest!45230 mapKey!45230 mapValue!45230))))

(declare-fun b!1153676 () Bool)

(declare-fun call!54431 () Bool)

(assert (=> b!1153676 call!54431))

(declare-fun lt!517131 () Unit!37879)

(assert (=> b!1153676 (= lt!517131 call!54430)))

(declare-fun e!656179 () Unit!37879)

(assert (=> b!1153676 (= e!656179 lt!517131)))

(declare-fun b!1153677 () Bool)

(declare-fun -!1353 (ListLongMap!16511 (_ BitVec 64)) ListLongMap!16511)

(assert (=> b!1153677 (= e!656173 (= call!54428 (-!1353 call!54426 k!934)))))

(declare-fun b!1153678 () Bool)

(declare-fun e!656172 () Unit!37879)

(declare-fun Unit!37881 () Unit!37879)

(assert (=> b!1153678 (= e!656172 Unit!37881)))

(declare-fun c!114469 () Bool)

(declare-fun bm!54425 () Bool)

(declare-fun c!114472 () Bool)

(declare-fun lt!517117 () ListLongMap!16511)

(declare-fun lt!517123 () ListLongMap!16511)

(declare-fun addStillContains!903 (ListLongMap!16511 (_ BitVec 64) V!43709 (_ BitVec 64)) Unit!37879)

(assert (=> bm!54425 (= call!54427 (addStillContains!903 (ite c!114469 lt!517117 lt!517123) (ite c!114469 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!114472 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!114469 minValue!944 (ite c!114472 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1153679 () Bool)

(declare-fun res!766873 () Bool)

(assert (=> b!1153679 (=> (not res!766873) (not e!656174))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1153679 (= res!766873 (validKeyInArray!0 k!934))))

(declare-fun b!1153680 () Bool)

(declare-fun res!766878 () Bool)

(assert (=> b!1153680 (=> (not res!766878) (not e!656174))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1153680 (= res!766878 (validMask!0 mask!1564))))

(declare-fun res!766870 () Bool)

(assert (=> start!98838 (=> (not res!766870) (not e!656174))))

(assert (=> start!98838 (= res!766870 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36519 _keys!1208))))))

(assert (=> start!98838 e!656174))

(assert (=> start!98838 tp_is_empty!28937))

(declare-fun array_inv!27422 (array!74670) Bool)

(assert (=> start!98838 (array_inv!27422 _keys!1208)))

(assert (=> start!98838 true))

(assert (=> start!98838 tp!85932))

(declare-fun e!656180 () Bool)

(declare-fun array_inv!27423 (array!74672) Bool)

(assert (=> start!98838 (and (array_inv!27423 _values!996) e!656180)))

(declare-fun b!1153673 () Bool)

(declare-fun e!656175 () Bool)

(declare-fun e!656177 () Bool)

(assert (=> b!1153673 (= e!656175 e!656177)))

(declare-fun res!766871 () Bool)

(assert (=> b!1153673 (=> res!766871 e!656177)))

(assert (=> b!1153673 (= res!766871 (not (= (select (arr!35982 _keys!1208) from!1455) k!934)))))

(assert (=> b!1153673 e!656173))

(declare-fun c!114471 () Bool)

(assert (=> b!1153673 (= c!114471 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!517125 () Unit!37879)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!585 (array!74670 array!74672 (_ BitVec 32) (_ BitVec 32) V!43709 V!43709 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37879)

(assert (=> b!1153673 (= lt!517125 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!585 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1153681 () Bool)

(declare-fun res!766872 () Bool)

(assert (=> b!1153681 (=> (not res!766872) (not e!656174))))

(assert (=> b!1153681 (= res!766872 (and (= (size!36520 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36519 _keys!1208) (size!36520 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1153682 () Bool)

(declare-fun Unit!37882 () Unit!37879)

(assert (=> b!1153682 (= e!656172 Unit!37882)))

(declare-fun lt!517112 () Bool)

(assert (=> b!1153682 (= lt!517112 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1153682 (= c!114469 (and (not lt!517112) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!517122 () Unit!37879)

(declare-fun e!656178 () Unit!37879)

(assert (=> b!1153682 (= lt!517122 e!656178)))

(declare-fun lt!517115 () Unit!37879)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!485 (array!74670 array!74672 (_ BitVec 32) (_ BitVec 32) V!43709 V!43709 (_ BitVec 64) (_ BitVec 32) Int) Unit!37879)

(assert (=> b!1153682 (= lt!517115 (lemmaListMapContainsThenArrayContainsFrom!485 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!114474 () Bool)

(assert (=> b!1153682 (= c!114474 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!766877 () Bool)

(declare-fun e!656169 () Bool)

(assert (=> b!1153682 (= res!766877 e!656169)))

(declare-fun e!656181 () Bool)

(assert (=> b!1153682 (=> (not res!766877) (not e!656181))))

(assert (=> b!1153682 e!656181))

(declare-fun lt!517118 () Unit!37879)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74670 (_ BitVec 32) (_ BitVec 32)) Unit!37879)

(assert (=> b!1153682 (= lt!517118 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1153682 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25315)))

(declare-fun lt!517119 () Unit!37879)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74670 (_ BitVec 64) (_ BitVec 32) List!25318) Unit!37879)

(assert (=> b!1153682 (= lt!517119 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k!934 from!1455 Nil!25315))))

(assert (=> b!1153682 false))

(declare-fun b!1153683 () Bool)

(declare-fun res!766880 () Bool)

(assert (=> b!1153683 (=> (not res!766880) (not e!656174))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74670 (_ BitVec 32)) Bool)

(assert (=> b!1153683 (= res!766880 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1153684 () Bool)

(declare-fun res!766869 () Bool)

(assert (=> b!1153684 (=> (not res!766869) (not e!656176))))

(assert (=> b!1153684 (= res!766869 (arrayNoDuplicates!0 lt!517128 #b00000000000000000000000000000000 Nil!25315))))

(declare-fun b!1153685 () Bool)

(assert (=> b!1153685 (= e!656180 (and e!656171 mapRes!45230))))

(declare-fun condMapEmpty!45230 () Bool)

(declare-fun mapDefault!45230 () ValueCell!13759)


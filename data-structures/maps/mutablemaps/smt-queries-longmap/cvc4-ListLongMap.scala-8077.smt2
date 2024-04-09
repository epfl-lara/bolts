; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99368 () Bool)

(assert start!99368)

(declare-fun b_free!24911 () Bool)

(declare-fun b_next!24911 () Bool)

(assert (=> start!99368 (= b_free!24911 (not b_next!24911))))

(declare-fun tp!87447 () Bool)

(declare-fun b_and!40703 () Bool)

(assert (=> start!99368 (= tp!87447 b_and!40703)))

(declare-fun b!1170975 () Bool)

(declare-fun e!665615 () Bool)

(declare-fun tp_is_empty!29441 () Bool)

(assert (=> b!1170975 (= e!665615 tp_is_empty!29441)))

(declare-fun mapNonEmpty!45989 () Bool)

(declare-fun mapRes!45989 () Bool)

(declare-fun tp!87448 () Bool)

(declare-fun e!665609 () Bool)

(assert (=> mapNonEmpty!45989 (= mapRes!45989 (and tp!87448 e!665609))))

(declare-datatypes ((V!44381 0))(
  ( (V!44382 (val!14777 Int)) )
))
(declare-datatypes ((ValueCell!14011 0))(
  ( (ValueCellFull!14011 (v!17416 V!44381)) (EmptyCell!14011) )
))
(declare-fun mapValue!45989 () ValueCell!14011)

(declare-fun mapRest!45989 () (Array (_ BitVec 32) ValueCell!14011))

(declare-datatypes ((array!75658 0))(
  ( (array!75659 (arr!36475 (Array (_ BitVec 32) ValueCell!14011)) (size!37012 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75658)

(declare-fun mapKey!45989 () (_ BitVec 32))

(assert (=> mapNonEmpty!45989 (= (arr!36475 _values!996) (store mapRest!45989 mapKey!45989 mapValue!45989))))

(declare-fun b!1170976 () Bool)

(declare-fun res!777317 () Bool)

(declare-fun e!665616 () Bool)

(assert (=> b!1170976 (=> (not res!777317) (not e!665616))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!75660 0))(
  ( (array!75661 (arr!36476 (Array (_ BitVec 32) (_ BitVec 64))) (size!37013 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75660)

(assert (=> b!1170976 (= res!777317 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37013 _keys!1208))))))

(declare-fun res!777322 () Bool)

(assert (=> start!99368 (=> (not res!777322) (not e!665616))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!99368 (= res!777322 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!37013 _keys!1208))))))

(assert (=> start!99368 e!665616))

(assert (=> start!99368 tp_is_empty!29441))

(declare-fun array_inv!27756 (array!75660) Bool)

(assert (=> start!99368 (array_inv!27756 _keys!1208)))

(assert (=> start!99368 true))

(assert (=> start!99368 tp!87447))

(declare-fun e!665610 () Bool)

(declare-fun array_inv!27757 (array!75658) Bool)

(assert (=> start!99368 (and (array_inv!27757 _values!996) e!665610)))

(declare-fun b!1170977 () Bool)

(declare-fun res!777326 () Bool)

(declare-fun e!665606 () Bool)

(assert (=> b!1170977 (=> res!777326 e!665606)))

(declare-datatypes ((List!25738 0))(
  ( (Nil!25735) (Cons!25734 (h!26943 (_ BitVec 64)) (t!37648 List!25738)) )
))
(declare-fun contains!6860 (List!25738 (_ BitVec 64)) Bool)

(assert (=> b!1170977 (= res!777326 (contains!6860 Nil!25735 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1170978 () Bool)

(declare-fun e!665617 () Bool)

(assert (=> b!1170978 (= e!665617 e!665606)))

(declare-fun res!777323 () Bool)

(assert (=> b!1170978 (=> res!777323 e!665606)))

(assert (=> b!1170978 (= res!777323 (or (bvsge (size!37013 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37013 _keys!1208)) (bvsge from!1455 (size!37013 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!75660 (_ BitVec 32) List!25738) Bool)

(assert (=> b!1170978 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25735)))

(declare-datatypes ((Unit!38522 0))(
  ( (Unit!38523) )
))
(declare-fun lt!527429 () Unit!38522)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75660 (_ BitVec 32) (_ BitVec 32)) Unit!38522)

(assert (=> b!1170978 (= lt!527429 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!75660 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1170978 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun lt!527426 () Unit!38522)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75660 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38522)

(assert (=> b!1170978 (= lt!527426 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1170979 () Bool)

(declare-fun res!777324 () Bool)

(assert (=> b!1170979 (=> (not res!777324) (not e!665616))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(assert (=> b!1170979 (= res!777324 (and (= (size!37012 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37013 _keys!1208) (size!37012 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1170980 () Bool)

(declare-fun res!777312 () Bool)

(assert (=> b!1170980 (=> (not res!777312) (not e!665616))))

(assert (=> b!1170980 (= res!777312 (= (select (arr!36476 _keys!1208) i!673) k!934))))

(declare-fun b!1170981 () Bool)

(assert (=> b!1170981 (= e!665609 tp_is_empty!29441)))

(declare-fun b!1170982 () Bool)

(assert (=> b!1170982 (= e!665606 true)))

(declare-fun lt!527421 () Bool)

(assert (=> b!1170982 (= lt!527421 (contains!6860 Nil!25735 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1170983 () Bool)

(declare-fun res!777315 () Bool)

(assert (=> b!1170983 (=> (not res!777315) (not e!665616))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75660 (_ BitVec 32)) Bool)

(assert (=> b!1170983 (= res!777315 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1170984 () Bool)

(declare-fun e!665614 () Bool)

(assert (=> b!1170984 (= e!665614 (arrayContainsKey!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170985 () Bool)

(declare-fun res!777321 () Bool)

(assert (=> b!1170985 (=> res!777321 e!665606)))

(declare-fun noDuplicate!1625 (List!25738) Bool)

(assert (=> b!1170985 (= res!777321 (not (noDuplicate!1625 Nil!25735)))))

(declare-fun b!1170986 () Bool)

(declare-fun e!665613 () Bool)

(declare-fun e!665608 () Bool)

(assert (=> b!1170986 (= e!665613 e!665608)))

(declare-fun res!777314 () Bool)

(assert (=> b!1170986 (=> res!777314 e!665608)))

(assert (=> b!1170986 (= res!777314 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44381)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!18968 0))(
  ( (tuple2!18969 (_1!9494 (_ BitVec 64)) (_2!9494 V!44381)) )
))
(declare-datatypes ((List!25739 0))(
  ( (Nil!25736) (Cons!25735 (h!26944 tuple2!18968) (t!37649 List!25739)) )
))
(declare-datatypes ((ListLongMap!16949 0))(
  ( (ListLongMap!16950 (toList!8490 List!25739)) )
))
(declare-fun lt!527423 () ListLongMap!16949)

(declare-fun minValue!944 () V!44381)

(declare-fun lt!527424 () array!75658)

(declare-fun lt!527418 () array!75660)

(declare-fun getCurrentListMapNoExtraKeys!4922 (array!75660 array!75658 (_ BitVec 32) (_ BitVec 32) V!44381 V!44381 (_ BitVec 32) Int) ListLongMap!16949)

(assert (=> b!1170986 (= lt!527423 (getCurrentListMapNoExtraKeys!4922 lt!527418 lt!527424 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!527420 () V!44381)

(assert (=> b!1170986 (= lt!527424 (array!75659 (store (arr!36475 _values!996) i!673 (ValueCellFull!14011 lt!527420)) (size!37012 _values!996)))))

(declare-fun dynLambda!2911 (Int (_ BitVec 64)) V!44381)

(assert (=> b!1170986 (= lt!527420 (dynLambda!2911 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527419 () ListLongMap!16949)

(assert (=> b!1170986 (= lt!527419 (getCurrentListMapNoExtraKeys!4922 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1170987 () Bool)

(declare-fun e!665607 () Bool)

(assert (=> b!1170987 (= e!665607 (not e!665613))))

(declare-fun res!777316 () Bool)

(assert (=> b!1170987 (=> res!777316 e!665613)))

(assert (=> b!1170987 (= res!777316 (bvsgt from!1455 i!673))))

(assert (=> b!1170987 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!527422 () Unit!38522)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75660 (_ BitVec 64) (_ BitVec 32)) Unit!38522)

(assert (=> b!1170987 (= lt!527422 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1170988 () Bool)

(declare-fun res!777310 () Bool)

(assert (=> b!1170988 (=> (not res!777310) (not e!665616))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1170988 (= res!777310 (validMask!0 mask!1564))))

(declare-fun b!1170989 () Bool)

(declare-fun res!777319 () Bool)

(assert (=> b!1170989 (=> (not res!777319) (not e!665616))))

(assert (=> b!1170989 (= res!777319 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25735))))

(declare-fun b!1170990 () Bool)

(declare-fun e!665612 () Bool)

(assert (=> b!1170990 (= e!665612 e!665617)))

(declare-fun res!777311 () Bool)

(assert (=> b!1170990 (=> res!777311 e!665617)))

(assert (=> b!1170990 (= res!777311 (not (= (select (arr!36476 _keys!1208) from!1455) k!934)))))

(declare-fun e!665605 () Bool)

(assert (=> b!1170990 e!665605))

(declare-fun res!777320 () Bool)

(assert (=> b!1170990 (=> (not res!777320) (not e!665605))))

(declare-fun lt!527428 () ListLongMap!16949)

(declare-fun +!3730 (ListLongMap!16949 tuple2!18968) ListLongMap!16949)

(declare-fun get!18633 (ValueCell!14011 V!44381) V!44381)

(assert (=> b!1170990 (= res!777320 (= lt!527423 (+!3730 lt!527428 (tuple2!18969 (select (arr!36476 _keys!1208) from!1455) (get!18633 (select (arr!36475 _values!996) from!1455) lt!527420)))))))

(declare-fun b!1170991 () Bool)

(assert (=> b!1170991 (= e!665605 e!665614)))

(declare-fun res!777328 () Bool)

(assert (=> b!1170991 (=> res!777328 e!665614)))

(assert (=> b!1170991 (= res!777328 (not (= (select (arr!36476 _keys!1208) from!1455) k!934)))))

(declare-fun b!1170992 () Bool)

(assert (=> b!1170992 (= e!665608 e!665612)))

(declare-fun res!777313 () Bool)

(assert (=> b!1170992 (=> res!777313 e!665612)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1170992 (= res!777313 (not (validKeyInArray!0 (select (arr!36476 _keys!1208) from!1455))))))

(declare-fun lt!527425 () ListLongMap!16949)

(assert (=> b!1170992 (= lt!527425 lt!527428)))

(declare-fun lt!527430 () ListLongMap!16949)

(declare-fun -!1507 (ListLongMap!16949 (_ BitVec 64)) ListLongMap!16949)

(assert (=> b!1170992 (= lt!527428 (-!1507 lt!527430 k!934))))

(assert (=> b!1170992 (= lt!527425 (getCurrentListMapNoExtraKeys!4922 lt!527418 lt!527424 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1170992 (= lt!527430 (getCurrentListMapNoExtraKeys!4922 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527427 () Unit!38522)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!731 (array!75660 array!75658 (_ BitVec 32) (_ BitVec 32) V!44381 V!44381 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38522)

(assert (=> b!1170992 (= lt!527427 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!731 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1170993 () Bool)

(assert (=> b!1170993 (= e!665616 e!665607)))

(declare-fun res!777327 () Bool)

(assert (=> b!1170993 (=> (not res!777327) (not e!665607))))

(assert (=> b!1170993 (= res!777327 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!527418 mask!1564))))

(assert (=> b!1170993 (= lt!527418 (array!75661 (store (arr!36476 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!37013 _keys!1208)))))

(declare-fun mapIsEmpty!45989 () Bool)

(assert (=> mapIsEmpty!45989 mapRes!45989))

(declare-fun b!1170994 () Bool)

(declare-fun res!777325 () Bool)

(assert (=> b!1170994 (=> (not res!777325) (not e!665616))))

(assert (=> b!1170994 (= res!777325 (validKeyInArray!0 k!934))))

(declare-fun b!1170995 () Bool)

(declare-fun res!777318 () Bool)

(assert (=> b!1170995 (=> (not res!777318) (not e!665607))))

(assert (=> b!1170995 (= res!777318 (arrayNoDuplicates!0 lt!527418 #b00000000000000000000000000000000 Nil!25735))))

(declare-fun b!1170996 () Bool)

(assert (=> b!1170996 (= e!665610 (and e!665615 mapRes!45989))))

(declare-fun condMapEmpty!45989 () Bool)

(declare-fun mapDefault!45989 () ValueCell!14011)


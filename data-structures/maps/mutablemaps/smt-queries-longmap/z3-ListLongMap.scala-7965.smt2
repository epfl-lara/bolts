; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98668 () Bool)

(assert start!98668)

(declare-fun b_free!24237 () Bool)

(declare-fun b_next!24237 () Bool)

(assert (=> start!98668 (= b_free!24237 (not b_next!24237))))

(declare-fun tp!85422 () Bool)

(declare-fun b_and!39337 () Bool)

(assert (=> start!98668 (= tp!85422 b_and!39337)))

(declare-fun b!1145850 () Bool)

(declare-fun res!763050 () Bool)

(declare-fun e!651842 () Bool)

(assert (=> b!1145850 (=> (not res!763050) (not e!651842))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1145850 (= res!763050 (validKeyInArray!0 k0!934))))

(declare-fun b!1145851 () Bool)

(declare-fun e!651833 () Bool)

(declare-fun e!651839 () Bool)

(assert (=> b!1145851 (= e!651833 e!651839)))

(declare-fun res!763049 () Bool)

(assert (=> b!1145851 (=> res!763049 e!651839)))

(declare-datatypes ((array!74340 0))(
  ( (array!74341 (arr!35817 (Array (_ BitVec 32) (_ BitVec 64))) (size!36354 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!74340)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1145851 (= res!763049 (not (= (select (arr!35817 _keys!1208) from!1455) k0!934)))))

(declare-fun e!651844 () Bool)

(assert (=> b!1145851 e!651844))

(declare-fun c!112942 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1145851 (= c!112942 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!43483 0))(
  ( (V!43484 (val!14440 Int)) )
))
(declare-fun zeroValue!944 () V!43483)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13674 0))(
  ( (ValueCellFull!13674 (v!17078 V!43483)) (EmptyCell!13674) )
))
(declare-datatypes ((array!74342 0))(
  ( (array!74343 (arr!35818 (Array (_ BitVec 32) ValueCell!13674)) (size!36355 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!74342)

(declare-fun minValue!944 () V!43483)

(declare-datatypes ((Unit!37549 0))(
  ( (Unit!37550) )
))
(declare-fun lt!511609 () Unit!37549)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!537 (array!74340 array!74342 (_ BitVec 32) (_ BitVec 32) V!43483 V!43483 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37549)

(assert (=> b!1145851 (= lt!511609 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!537 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145852 () Bool)

(declare-fun res!763055 () Bool)

(declare-fun e!651843 () Bool)

(assert (=> b!1145852 (=> (not res!763055) (not e!651843))))

(declare-fun lt!511613 () array!74340)

(declare-datatypes ((List!25172 0))(
  ( (Nil!25169) (Cons!25168 (h!26377 (_ BitVec 64)) (t!36408 List!25172)) )
))
(declare-fun arrayNoDuplicates!0 (array!74340 (_ BitVec 32) List!25172) Bool)

(assert (=> b!1145852 (= res!763055 (arrayNoDuplicates!0 lt!511613 #b00000000000000000000000000000000 Nil!25169))))

(declare-fun b!1145853 () Bool)

(declare-fun e!651840 () Bool)

(assert (=> b!1145853 (= e!651840 e!651833)))

(declare-fun res!763046 () Bool)

(assert (=> b!1145853 (=> res!763046 e!651833)))

(assert (=> b!1145853 (= res!763046 (not (= from!1455 i!673)))))

(declare-datatypes ((tuple2!18374 0))(
  ( (tuple2!18375 (_1!9197 (_ BitVec 64)) (_2!9197 V!43483)) )
))
(declare-datatypes ((List!25173 0))(
  ( (Nil!25170) (Cons!25169 (h!26378 tuple2!18374) (t!36409 List!25173)) )
))
(declare-datatypes ((ListLongMap!16355 0))(
  ( (ListLongMap!16356 (toList!8193 List!25173)) )
))
(declare-fun lt!511614 () ListLongMap!16355)

(declare-fun lt!511621 () array!74342)

(declare-fun getCurrentListMapNoExtraKeys!4635 (array!74340 array!74342 (_ BitVec 32) (_ BitVec 32) V!43483 V!43483 (_ BitVec 32) Int) ListLongMap!16355)

(assert (=> b!1145853 (= lt!511614 (getCurrentListMapNoExtraKeys!4635 lt!511613 lt!511621 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun lt!511604 () V!43483)

(assert (=> b!1145853 (= lt!511621 (array!74343 (store (arr!35818 _values!996) i!673 (ValueCellFull!13674 lt!511604)) (size!36355 _values!996)))))

(declare-fun dynLambda!2677 (Int (_ BitVec 64)) V!43483)

(assert (=> b!1145853 (= lt!511604 (dynLambda!2677 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!511618 () ListLongMap!16355)

(assert (=> b!1145853 (= lt!511618 (getCurrentListMapNoExtraKeys!4635 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1145854 () Bool)

(declare-fun res!763045 () Bool)

(assert (=> b!1145854 (=> (not res!763045) (not e!651842))))

(assert (=> b!1145854 (= res!763045 (and (= (size!36355 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36354 _keys!1208) (size!36355 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1145855 () Bool)

(declare-fun res!763044 () Bool)

(assert (=> b!1145855 (=> (not res!763044) (not e!651842))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!74340 (_ BitVec 32)) Bool)

(assert (=> b!1145855 (= res!763044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1145856 () Bool)

(declare-fun res!763056 () Bool)

(assert (=> b!1145856 (=> (not res!763056) (not e!651842))))

(assert (=> b!1145856 (= res!763056 (= (select (arr!35817 _keys!1208) i!673) k0!934))))

(declare-fun b!1145857 () Bool)

(declare-fun res!763052 () Bool)

(assert (=> b!1145857 (=> (not res!763052) (not e!651842))))

(assert (=> b!1145857 (= res!763052 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25169))))

(declare-fun b!1145858 () Bool)

(declare-fun res!763048 () Bool)

(assert (=> b!1145858 (=> (not res!763048) (not e!651842))))

(assert (=> b!1145858 (= res!763048 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36354 _keys!1208))))))

(declare-fun b!1145859 () Bool)

(assert (=> b!1145859 (= e!651843 (not e!651840))))

(declare-fun res!763058 () Bool)

(assert (=> b!1145859 (=> res!763058 e!651840)))

(assert (=> b!1145859 (= res!763058 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!74340 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1145859 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!511620 () Unit!37549)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!74340 (_ BitVec 64) (_ BitVec 32)) Unit!37549)

(assert (=> b!1145859 (= lt!511620 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun res!763057 () Bool)

(assert (=> start!98668 (=> (not res!763057) (not e!651842))))

(assert (=> start!98668 (= res!763057 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36354 _keys!1208))))))

(assert (=> start!98668 e!651842))

(declare-fun tp_is_empty!28767 () Bool)

(assert (=> start!98668 tp_is_empty!28767))

(declare-fun array_inv!27320 (array!74340) Bool)

(assert (=> start!98668 (array_inv!27320 _keys!1208)))

(assert (=> start!98668 true))

(assert (=> start!98668 tp!85422))

(declare-fun e!651838 () Bool)

(declare-fun array_inv!27321 (array!74342) Bool)

(assert (=> start!98668 (and (array_inv!27321 _values!996) e!651838)))

(declare-fun mapNonEmpty!44975 () Bool)

(declare-fun mapRes!44975 () Bool)

(declare-fun tp!85423 () Bool)

(declare-fun e!651836 () Bool)

(assert (=> mapNonEmpty!44975 (= mapRes!44975 (and tp!85423 e!651836))))

(declare-fun mapRest!44975 () (Array (_ BitVec 32) ValueCell!13674))

(declare-fun mapValue!44975 () ValueCell!13674)

(declare-fun mapKey!44975 () (_ BitVec 32))

(assert (=> mapNonEmpty!44975 (= (arr!35818 _values!996) (store mapRest!44975 mapKey!44975 mapValue!44975))))

(declare-fun b!1145860 () Bool)

(declare-fun res!763047 () Bool)

(assert (=> b!1145860 (=> (not res!763047) (not e!651842))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1145860 (= res!763047 (validMask!0 mask!1564))))

(declare-fun call!52385 () ListLongMap!16355)

(declare-fun bm!52382 () Bool)

(assert (=> bm!52382 (= call!52385 (getCurrentListMapNoExtraKeys!4635 lt!511613 lt!511621 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145861 () Bool)

(declare-fun e!651846 () Unit!37549)

(declare-fun Unit!37551 () Unit!37549)

(assert (=> b!1145861 (= e!651846 Unit!37551)))

(declare-fun b!1145862 () Bool)

(assert (=> b!1145862 (= e!651836 tp_is_empty!28767)))

(declare-fun b!1145863 () Bool)

(declare-fun call!52392 () ListLongMap!16355)

(assert (=> b!1145863 (= e!651844 (= call!52385 call!52392))))

(declare-fun bm!52383 () Bool)

(declare-fun call!52391 () ListLongMap!16355)

(declare-fun call!52388 () ListLongMap!16355)

(assert (=> bm!52383 (= call!52391 call!52388)))

(declare-fun mapIsEmpty!44975 () Bool)

(assert (=> mapIsEmpty!44975 mapRes!44975))

(declare-fun b!1145864 () Bool)

(declare-fun e!651831 () Bool)

(declare-fun lt!511617 () Bool)

(assert (=> b!1145864 (= e!651831 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!511617) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun bm!52384 () Bool)

(assert (=> bm!52384 (= call!52392 (getCurrentListMapNoExtraKeys!4635 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun e!651841 () Bool)

(declare-fun lt!511615 () ListLongMap!16355)

(declare-fun b!1145865 () Bool)

(declare-fun -!1284 (ListLongMap!16355 (_ BitVec 64)) ListLongMap!16355)

(assert (=> b!1145865 (= e!651841 (= (-!1284 lt!511618 k0!934) lt!511615))))

(declare-fun b!1145866 () Bool)

(declare-fun e!651835 () Unit!37549)

(declare-fun Unit!37552 () Unit!37549)

(assert (=> b!1145866 (= e!651835 Unit!37552)))

(declare-fun b!1145867 () Bool)

(declare-fun lt!511605 () ListLongMap!16355)

(declare-fun contains!6693 (ListLongMap!16355 (_ BitVec 64)) Bool)

(declare-fun +!3535 (ListLongMap!16355 tuple2!18374) ListLongMap!16355)

(assert (=> b!1145867 (contains!6693 (+!3535 lt!511605 (tuple2!18375 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!511623 () Unit!37549)

(declare-fun call!52390 () Unit!37549)

(assert (=> b!1145867 (= lt!511623 call!52390)))

(declare-fun call!52386 () Bool)

(assert (=> b!1145867 call!52386))

(assert (=> b!1145867 (= lt!511605 call!52388)))

(declare-fun lt!511616 () Unit!37549)

(declare-fun addStillContains!833 (ListLongMap!16355 (_ BitVec 64) V!43483 (_ BitVec 64)) Unit!37549)

(assert (=> b!1145867 (= lt!511616 (addStillContains!833 lt!511615 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun e!651837 () Unit!37549)

(assert (=> b!1145867 (= e!651837 lt!511623)))

(declare-fun b!1145868 () Bool)

(declare-fun e!651830 () Bool)

(assert (=> b!1145868 (= e!651838 (and e!651830 mapRes!44975))))

(declare-fun condMapEmpty!44975 () Bool)

(declare-fun mapDefault!44975 () ValueCell!13674)

(assert (=> b!1145868 (= condMapEmpty!44975 (= (arr!35818 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13674)) mapDefault!44975)))))

(declare-fun b!1145869 () Bool)

(assert (=> b!1145869 (= e!651842 e!651843)))

(declare-fun res!763051 () Bool)

(assert (=> b!1145869 (=> (not res!763051) (not e!651843))))

(assert (=> b!1145869 (= res!763051 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!511613 mask!1564))))

(assert (=> b!1145869 (= lt!511613 (array!74341 (store (arr!35817 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36354 _keys!1208)))))

(declare-fun b!1145870 () Bool)

(declare-fun c!112939 () Bool)

(assert (=> b!1145870 (= c!112939 (and (not lt!511617) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun e!651834 () Unit!37549)

(assert (=> b!1145870 (= e!651837 e!651834)))

(declare-fun c!112943 () Bool)

(declare-fun bm!52385 () Bool)

(assert (=> bm!52385 (= call!52388 (+!3535 lt!511615 (ite (or c!112943 c!112939) (tuple2!18375 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18375 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun bm!52386 () Bool)

(assert (=> bm!52386 (= call!52390 (addStillContains!833 (ite c!112943 lt!511605 lt!511615) (ite c!112943 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!112939 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!112943 minValue!944 (ite c!112939 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1145871 () Bool)

(assert (=> b!1145871 (= e!651834 e!651846)))

(declare-fun c!112941 () Bool)

(assert (=> b!1145871 (= c!112941 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!511617))))

(declare-fun b!1145872 () Bool)

(assert (=> b!1145872 (= e!651839 true)))

(assert (=> b!1145872 e!651841))

(declare-fun res!763054 () Bool)

(assert (=> b!1145872 (=> (not res!763054) (not e!651841))))

(declare-fun lt!511603 () V!43483)

(assert (=> b!1145872 (= res!763054 (= (-!1284 (+!3535 lt!511615 (tuple2!18375 (select (arr!35817 _keys!1208) from!1455) lt!511603)) (select (arr!35817 _keys!1208) from!1455)) lt!511615))))

(declare-fun lt!511608 () Unit!37549)

(declare-fun addThenRemoveForNewKeyIsSame!137 (ListLongMap!16355 (_ BitVec 64) V!43483) Unit!37549)

(assert (=> b!1145872 (= lt!511608 (addThenRemoveForNewKeyIsSame!137 lt!511615 (select (arr!35817 _keys!1208) from!1455) lt!511603))))

(declare-fun get!18237 (ValueCell!13674 V!43483) V!43483)

(assert (=> b!1145872 (= lt!511603 (get!18237 (select (arr!35818 _values!996) from!1455) lt!511604))))

(declare-fun lt!511611 () Unit!37549)

(assert (=> b!1145872 (= lt!511611 e!651835)))

(declare-fun c!112940 () Bool)

(assert (=> b!1145872 (= c!112940 (contains!6693 lt!511615 k0!934))))

(assert (=> b!1145872 (= lt!511615 (getCurrentListMapNoExtraKeys!4635 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1145873 () Bool)

(declare-fun call!52389 () Bool)

(assert (=> b!1145873 call!52389))

(declare-fun lt!511607 () Unit!37549)

(declare-fun call!52387 () Unit!37549)

(assert (=> b!1145873 (= lt!511607 call!52387)))

(assert (=> b!1145873 (= e!651846 lt!511607)))

(declare-fun b!1145874 () Bool)

(assert (=> b!1145874 (= e!651830 tp_is_empty!28767)))

(declare-fun bm!52387 () Bool)

(assert (=> bm!52387 (= call!52386 (contains!6693 (ite c!112943 lt!511605 call!52391) k0!934))))

(declare-fun b!1145875 () Bool)

(declare-fun Unit!37553 () Unit!37549)

(assert (=> b!1145875 (= e!651835 Unit!37553)))

(assert (=> b!1145875 (= lt!511617 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(assert (=> b!1145875 (= c!112943 (and (not lt!511617) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!511612 () Unit!37549)

(assert (=> b!1145875 (= lt!511612 e!651837)))

(declare-fun lt!511622 () Unit!37549)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!426 (array!74340 array!74342 (_ BitVec 32) (_ BitVec 32) V!43483 V!43483 (_ BitVec 64) (_ BitVec 32) Int) Unit!37549)

(assert (=> b!1145875 (= lt!511622 (lemmaListMapContainsThenArrayContainsFrom!426 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun c!112944 () Bool)

(assert (=> b!1145875 (= c!112944 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!763053 () Bool)

(assert (=> b!1145875 (= res!763053 e!651831)))

(declare-fun e!651832 () Bool)

(assert (=> b!1145875 (=> (not res!763053) (not e!651832))))

(assert (=> b!1145875 e!651832))

(declare-fun lt!511610 () Unit!37549)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!74340 (_ BitVec 32) (_ BitVec 32)) Unit!37549)

(assert (=> b!1145875 (= lt!511610 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1145875 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25169)))

(declare-fun lt!511619 () Unit!37549)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!74340 (_ BitVec 64) (_ BitVec 32) List!25172) Unit!37549)

(assert (=> b!1145875 (= lt!511619 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!1208 k0!934 from!1455 Nil!25169))))

(assert (=> b!1145875 false))

(declare-fun bm!52388 () Bool)

(assert (=> bm!52388 (= call!52389 call!52386)))

(declare-fun b!1145876 () Bool)

(declare-fun lt!511606 () Unit!37549)

(assert (=> b!1145876 (= e!651834 lt!511606)))

(assert (=> b!1145876 (= lt!511606 call!52387)))

(assert (=> b!1145876 call!52389))

(declare-fun b!1145877 () Bool)

(assert (=> b!1145877 (= e!651832 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!52389 () Bool)

(assert (=> bm!52389 (= call!52387 call!52390)))

(declare-fun b!1145878 () Bool)

(assert (=> b!1145878 (= e!651844 (= call!52385 (-!1284 call!52392 k0!934)))))

(declare-fun b!1145879 () Bool)

(assert (=> b!1145879 (= e!651831 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(assert (= (and start!98668 res!763057) b!1145860))

(assert (= (and b!1145860 res!763047) b!1145854))

(assert (= (and b!1145854 res!763045) b!1145855))

(assert (= (and b!1145855 res!763044) b!1145857))

(assert (= (and b!1145857 res!763052) b!1145858))

(assert (= (and b!1145858 res!763048) b!1145850))

(assert (= (and b!1145850 res!763050) b!1145856))

(assert (= (and b!1145856 res!763056) b!1145869))

(assert (= (and b!1145869 res!763051) b!1145852))

(assert (= (and b!1145852 res!763055) b!1145859))

(assert (= (and b!1145859 (not res!763058)) b!1145853))

(assert (= (and b!1145853 (not res!763046)) b!1145851))

(assert (= (and b!1145851 c!112942) b!1145878))

(assert (= (and b!1145851 (not c!112942)) b!1145863))

(assert (= (or b!1145878 b!1145863) bm!52382))

(assert (= (or b!1145878 b!1145863) bm!52384))

(assert (= (and b!1145851 (not res!763049)) b!1145872))

(assert (= (and b!1145872 c!112940) b!1145875))

(assert (= (and b!1145872 (not c!112940)) b!1145866))

(assert (= (and b!1145875 c!112943) b!1145867))

(assert (= (and b!1145875 (not c!112943)) b!1145870))

(assert (= (and b!1145870 c!112939) b!1145876))

(assert (= (and b!1145870 (not c!112939)) b!1145871))

(assert (= (and b!1145871 c!112941) b!1145873))

(assert (= (and b!1145871 (not c!112941)) b!1145861))

(assert (= (or b!1145876 b!1145873) bm!52389))

(assert (= (or b!1145876 b!1145873) bm!52383))

(assert (= (or b!1145876 b!1145873) bm!52388))

(assert (= (or b!1145867 bm!52388) bm!52387))

(assert (= (or b!1145867 bm!52389) bm!52386))

(assert (= (or b!1145867 bm!52383) bm!52385))

(assert (= (and b!1145875 c!112944) b!1145879))

(assert (= (and b!1145875 (not c!112944)) b!1145864))

(assert (= (and b!1145875 res!763053) b!1145877))

(assert (= (and b!1145872 res!763054) b!1145865))

(assert (= (and b!1145868 condMapEmpty!44975) mapIsEmpty!44975))

(assert (= (and b!1145868 (not condMapEmpty!44975)) mapNonEmpty!44975))

(get-info :version)

(assert (= (and mapNonEmpty!44975 ((_ is ValueCellFull!13674) mapValue!44975)) b!1145862))

(assert (= (and b!1145868 ((_ is ValueCellFull!13674) mapDefault!44975)) b!1145874))

(assert (= start!98668 b!1145868))

(declare-fun b_lambda!19361 () Bool)

(assert (=> (not b_lambda!19361) (not b!1145853)))

(declare-fun t!36407 () Bool)

(declare-fun tb!9057 () Bool)

(assert (=> (and start!98668 (= defaultEntry!1004 defaultEntry!1004) t!36407) tb!9057))

(declare-fun result!18671 () Bool)

(assert (=> tb!9057 (= result!18671 tp_is_empty!28767)))

(assert (=> b!1145853 t!36407))

(declare-fun b_and!39339 () Bool)

(assert (= b_and!39337 (and (=> t!36407 result!18671) b_and!39339)))

(declare-fun m!1056731 () Bool)

(assert (=> bm!52385 m!1056731))

(declare-fun m!1056733 () Bool)

(assert (=> b!1145853 m!1056733))

(declare-fun m!1056735 () Bool)

(assert (=> b!1145853 m!1056735))

(declare-fun m!1056737 () Bool)

(assert (=> b!1145853 m!1056737))

(declare-fun m!1056739 () Bool)

(assert (=> b!1145853 m!1056739))

(declare-fun m!1056741 () Bool)

(assert (=> mapNonEmpty!44975 m!1056741))

(declare-fun m!1056743 () Bool)

(assert (=> b!1145877 m!1056743))

(declare-fun m!1056745 () Bool)

(assert (=> b!1145856 m!1056745))

(declare-fun m!1056747 () Bool)

(assert (=> b!1145875 m!1056747))

(declare-fun m!1056749 () Bool)

(assert (=> b!1145875 m!1056749))

(declare-fun m!1056751 () Bool)

(assert (=> b!1145875 m!1056751))

(declare-fun m!1056753 () Bool)

(assert (=> b!1145875 m!1056753))

(declare-fun m!1056755 () Bool)

(assert (=> b!1145869 m!1056755))

(declare-fun m!1056757 () Bool)

(assert (=> b!1145869 m!1056757))

(declare-fun m!1056759 () Bool)

(assert (=> b!1145851 m!1056759))

(declare-fun m!1056761 () Bool)

(assert (=> b!1145851 m!1056761))

(declare-fun m!1056763 () Bool)

(assert (=> b!1145865 m!1056763))

(declare-fun m!1056765 () Bool)

(assert (=> bm!52382 m!1056765))

(declare-fun m!1056767 () Bool)

(assert (=> b!1145878 m!1056767))

(declare-fun m!1056769 () Bool)

(assert (=> b!1145852 m!1056769))

(declare-fun m!1056771 () Bool)

(assert (=> b!1145850 m!1056771))

(declare-fun m!1056773 () Bool)

(assert (=> b!1145872 m!1056773))

(declare-fun m!1056775 () Bool)

(assert (=> b!1145872 m!1056775))

(assert (=> b!1145872 m!1056759))

(declare-fun m!1056777 () Bool)

(assert (=> b!1145872 m!1056777))

(declare-fun m!1056779 () Bool)

(assert (=> b!1145872 m!1056779))

(assert (=> b!1145872 m!1056759))

(declare-fun m!1056781 () Bool)

(assert (=> b!1145872 m!1056781))

(assert (=> b!1145872 m!1056779))

(assert (=> b!1145872 m!1056759))

(declare-fun m!1056783 () Bool)

(assert (=> b!1145872 m!1056783))

(declare-fun m!1056785 () Bool)

(assert (=> b!1145872 m!1056785))

(assert (=> b!1145872 m!1056783))

(assert (=> bm!52384 m!1056773))

(declare-fun m!1056787 () Bool)

(assert (=> b!1145855 m!1056787))

(declare-fun m!1056789 () Bool)

(assert (=> bm!52386 m!1056789))

(assert (=> b!1145879 m!1056743))

(declare-fun m!1056791 () Bool)

(assert (=> bm!52387 m!1056791))

(declare-fun m!1056793 () Bool)

(assert (=> b!1145860 m!1056793))

(declare-fun m!1056795 () Bool)

(assert (=> b!1145859 m!1056795))

(declare-fun m!1056797 () Bool)

(assert (=> b!1145859 m!1056797))

(declare-fun m!1056799 () Bool)

(assert (=> start!98668 m!1056799))

(declare-fun m!1056801 () Bool)

(assert (=> start!98668 m!1056801))

(declare-fun m!1056803 () Bool)

(assert (=> b!1145867 m!1056803))

(assert (=> b!1145867 m!1056803))

(declare-fun m!1056805 () Bool)

(assert (=> b!1145867 m!1056805))

(declare-fun m!1056807 () Bool)

(assert (=> b!1145867 m!1056807))

(declare-fun m!1056809 () Bool)

(assert (=> b!1145857 m!1056809))

(check-sat (not bm!52386) (not b_lambda!19361) (not b!1145853) (not b!1145855) (not b_next!24237) (not b!1145857) (not bm!52384) (not b!1145875) (not bm!52382) b_and!39339 (not b!1145865) (not b!1145851) (not mapNonEmpty!44975) (not start!98668) (not bm!52385) (not b!1145877) (not b!1145859) (not b!1145869) (not b!1145850) tp_is_empty!28767 (not b!1145872) (not b!1145852) (not b!1145860) (not b!1145879) (not b!1145867) (not bm!52387) (not b!1145878))
(check-sat b_and!39339 (not b_next!24237))

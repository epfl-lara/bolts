; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!99388 () Bool)

(assert start!99388)

(declare-fun b_free!24931 () Bool)

(declare-fun b_next!24931 () Bool)

(assert (=> start!99388 (= b_free!24931 (not b_next!24931))))

(declare-fun tp!87507 () Bool)

(declare-fun b_and!40743 () Bool)

(assert (=> start!99388 (= tp!87507 b_and!40743)))

(declare-fun b!1171655 () Bool)

(declare-fun res!777892 () Bool)

(declare-fun e!666001 () Bool)

(assert (=> b!1171655 (=> (not res!777892) (not e!666001))))

(declare-fun k!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1171655 (= res!777892 (validKeyInArray!0 k!934))))

(declare-fun b!1171656 () Bool)

(declare-fun res!777882 () Bool)

(assert (=> b!1171656 (=> (not res!777882) (not e!666001))))

(declare-datatypes ((array!75698 0))(
  ( (array!75699 (arr!36495 (Array (_ BitVec 32) (_ BitVec 64))) (size!37032 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!75698)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!75698 (_ BitVec 32)) Bool)

(assert (=> b!1171656 (= res!777882 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1171657 () Bool)

(declare-fun res!777881 () Bool)

(assert (=> b!1171657 (=> (not res!777881) (not e!666001))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((V!44409 0))(
  ( (V!44410 (val!14787 Int)) )
))
(declare-datatypes ((ValueCell!14021 0))(
  ( (ValueCellFull!14021 (v!17426 V!44409)) (EmptyCell!14021) )
))
(declare-datatypes ((array!75700 0))(
  ( (array!75701 (arr!36496 (Array (_ BitVec 32) ValueCell!14021)) (size!37033 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!75700)

(assert (=> b!1171657 (= res!777881 (and (= (size!37033 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!37032 _keys!1208) (size!37033 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1171658 () Bool)

(declare-fun e!665997 () Bool)

(declare-fun e!666000 () Bool)

(assert (=> b!1171658 (= e!665997 e!666000)))

(declare-fun res!777880 () Bool)

(assert (=> b!1171658 (=> res!777880 e!666000)))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1171658 (= res!777880 (or (bvsge (size!37032 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!37032 _keys!1208)) (bvsge from!1455 (size!37032 _keys!1208))))))

(declare-datatypes ((List!25756 0))(
  ( (Nil!25753) (Cons!25752 (h!26961 (_ BitVec 64)) (t!37686 List!25756)) )
))
(declare-fun arrayNoDuplicates!0 (array!75698 (_ BitVec 32) List!25756) Bool)

(assert (=> b!1171658 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!25753)))

(declare-datatypes ((Unit!38542 0))(
  ( (Unit!38543) )
))
(declare-fun lt!527812 () Unit!38542)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!75698 (_ BitVec 32) (_ BitVec 32)) Unit!38542)

(assert (=> b!1171658 (= lt!527812 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun arrayContainsKey!0 (array!75698 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1171658 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455))))

(declare-fun i!673 () (_ BitVec 32))

(declare-fun lt!527816 () Unit!38542)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!75698 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!38542)

(assert (=> b!1171658 (= lt!527816 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!1208 k!934 i!673 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1171659 () Bool)

(declare-fun e!666007 () Bool)

(declare-fun tp_is_empty!29461 () Bool)

(assert (=> b!1171659 (= e!666007 tp_is_empty!29461)))

(declare-fun b!1171660 () Bool)

(declare-fun res!777886 () Bool)

(assert (=> b!1171660 (=> (not res!777886) (not e!666001))))

(assert (=> b!1171660 (= res!777886 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!25753))))

(declare-fun b!1171662 () Bool)

(assert (=> b!1171662 (= e!666000 true)))

(declare-fun lt!527815 () Bool)

(declare-fun contains!6867 (List!25756 (_ BitVec 64)) Bool)

(assert (=> b!1171662 (= lt!527815 (contains!6867 Nil!25753 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171663 () Bool)

(declare-fun e!666006 () Bool)

(assert (=> b!1171663 (= e!666006 e!665997)))

(declare-fun res!777894 () Bool)

(assert (=> b!1171663 (=> res!777894 e!665997)))

(assert (=> b!1171663 (= res!777894 (not (= (select (arr!36495 _keys!1208) from!1455) k!934)))))

(declare-fun e!665999 () Bool)

(assert (=> b!1171663 e!665999))

(declare-fun res!777893 () Bool)

(assert (=> b!1171663 (=> (not res!777893) (not e!665999))))

(declare-datatypes ((tuple2!18984 0))(
  ( (tuple2!18985 (_1!9502 (_ BitVec 64)) (_2!9502 V!44409)) )
))
(declare-datatypes ((List!25757 0))(
  ( (Nil!25754) (Cons!25753 (h!26962 tuple2!18984) (t!37687 List!25757)) )
))
(declare-datatypes ((ListLongMap!16965 0))(
  ( (ListLongMap!16966 (toList!8498 List!25757)) )
))
(declare-fun lt!527818 () ListLongMap!16965)

(declare-fun lt!527813 () ListLongMap!16965)

(declare-fun lt!527810 () V!44409)

(declare-fun +!3736 (ListLongMap!16965 tuple2!18984) ListLongMap!16965)

(declare-fun get!18647 (ValueCell!14021 V!44409) V!44409)

(assert (=> b!1171663 (= res!777893 (= lt!527813 (+!3736 lt!527818 (tuple2!18985 (select (arr!36495 _keys!1208) from!1455) (get!18647 (select (arr!36496 _values!996) from!1455) lt!527810)))))))

(declare-fun b!1171664 () Bool)

(declare-fun res!777888 () Bool)

(assert (=> b!1171664 (=> res!777888 e!666000)))

(assert (=> b!1171664 (= res!777888 (contains!6867 Nil!25753 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1171665 () Bool)

(declare-fun e!666002 () Bool)

(declare-fun e!666005 () Bool)

(assert (=> b!1171665 (= e!666002 e!666005)))

(declare-fun res!777890 () Bool)

(assert (=> b!1171665 (=> res!777890 e!666005)))

(assert (=> b!1171665 (= res!777890 (or (= from!1455 i!673) (bvsge from!1455 i!673)))))

(declare-fun zeroValue!944 () V!44409)

(declare-fun lt!527820 () array!75698)

(declare-fun minValue!944 () V!44409)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!527814 () array!75700)

(declare-fun getCurrentListMapNoExtraKeys!4930 (array!75698 array!75700 (_ BitVec 32) (_ BitVec 32) V!44409 V!44409 (_ BitVec 32) Int) ListLongMap!16965)

(assert (=> b!1171665 (= lt!527813 (getCurrentListMapNoExtraKeys!4930 lt!527820 lt!527814 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (=> b!1171665 (= lt!527814 (array!75701 (store (arr!36496 _values!996) i!673 (ValueCellFull!14021 lt!527810)) (size!37033 _values!996)))))

(declare-fun dynLambda!2918 (Int (_ BitVec 64)) V!44409)

(assert (=> b!1171665 (= lt!527810 (dynLambda!2918 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!527817 () ListLongMap!16965)

(assert (=> b!1171665 (= lt!527817 (getCurrentListMapNoExtraKeys!4930 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapNonEmpty!46019 () Bool)

(declare-fun mapRes!46019 () Bool)

(declare-fun tp!87508 () Bool)

(assert (=> mapNonEmpty!46019 (= mapRes!46019 (and tp!87508 e!666007))))

(declare-fun mapRest!46019 () (Array (_ BitVec 32) ValueCell!14021))

(declare-fun mapKey!46019 () (_ BitVec 32))

(declare-fun mapValue!46019 () ValueCell!14021)

(assert (=> mapNonEmpty!46019 (= (arr!36496 _values!996) (store mapRest!46019 mapKey!46019 mapValue!46019))))

(declare-fun b!1171666 () Bool)

(declare-fun e!665996 () Bool)

(assert (=> b!1171666 (= e!665999 e!665996)))

(declare-fun res!777887 () Bool)

(assert (=> b!1171666 (=> res!777887 e!665996)))

(assert (=> b!1171666 (= res!777887 (not (= (select (arr!36495 _keys!1208) from!1455) k!934)))))

(declare-fun mapIsEmpty!46019 () Bool)

(assert (=> mapIsEmpty!46019 mapRes!46019))

(declare-fun b!1171667 () Bool)

(assert (=> b!1171667 (= e!666005 e!666006)))

(declare-fun res!777898 () Bool)

(assert (=> b!1171667 (=> res!777898 e!666006)))

(assert (=> b!1171667 (= res!777898 (not (validKeyInArray!0 (select (arr!36495 _keys!1208) from!1455))))))

(declare-fun lt!527819 () ListLongMap!16965)

(assert (=> b!1171667 (= lt!527819 lt!527818)))

(declare-fun lt!527808 () ListLongMap!16965)

(declare-fun -!1514 (ListLongMap!16965 (_ BitVec 64)) ListLongMap!16965)

(assert (=> b!1171667 (= lt!527818 (-!1514 lt!527808 k!934))))

(assert (=> b!1171667 (= lt!527819 (getCurrentListMapNoExtraKeys!4930 lt!527820 lt!527814 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (=> b!1171667 (= lt!527808 (getCurrentListMapNoExtraKeys!4930 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!527811 () Unit!38542)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!738 (array!75698 array!75700 (_ BitVec 32) (_ BitVec 32) V!44409 V!44409 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!38542)

(assert (=> b!1171667 (= lt!527811 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!738 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1171668 () Bool)

(declare-fun res!777896 () Bool)

(assert (=> b!1171668 (=> (not res!777896) (not e!666001))))

(assert (=> b!1171668 (= res!777896 (= (select (arr!36495 _keys!1208) i!673) k!934))))

(declare-fun b!1171669 () Bool)

(declare-fun e!665998 () Bool)

(assert (=> b!1171669 (= e!665998 (not e!666002))))

(declare-fun res!777884 () Bool)

(assert (=> b!1171669 (=> res!777884 e!666002)))

(assert (=> b!1171669 (= res!777884 (bvsgt from!1455 i!673))))

(assert (=> b!1171669 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!527809 () Unit!38542)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!75698 (_ BitVec 64) (_ BitVec 32)) Unit!38542)

(assert (=> b!1171669 (= lt!527809 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1171670 () Bool)

(declare-fun res!777895 () Bool)

(assert (=> b!1171670 (=> (not res!777895) (not e!666001))))

(assert (=> b!1171670 (= res!777895 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!37032 _keys!1208))))))

(declare-fun b!1171671 () Bool)

(declare-fun res!777891 () Bool)

(assert (=> b!1171671 (=> (not res!777891) (not e!666001))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1171671 (= res!777891 (validMask!0 mask!1564))))

(declare-fun b!1171672 () Bool)

(declare-fun e!666004 () Bool)

(declare-fun e!665995 () Bool)

(assert (=> b!1171672 (= e!666004 (and e!665995 mapRes!46019))))

(declare-fun condMapEmpty!46019 () Bool)

(declare-fun mapDefault!46019 () ValueCell!14021)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98424 () Bool)

(assert start!98424)

(declare-fun b_free!23993 () Bool)

(declare-fun b_next!23993 () Bool)

(assert (=> start!98424 (= b_free!23993 (not b_next!23993))))

(declare-fun tp!84691 () Bool)

(declare-fun b_and!38849 () Bool)

(assert (=> start!98424 (= tp!84691 b_and!38849)))

(declare-fun b!1134823 () Bool)

(declare-fun e!645864 () Bool)

(assert (=> b!1134823 (= e!645864 true)))

(declare-fun lt!504410 () Bool)

(declare-datatypes ((List!24970 0))(
  ( (Nil!24967) (Cons!24966 (h!26175 (_ BitVec 64)) (t!35962 List!24970)) )
))
(declare-fun contains!6583 (List!24970 (_ BitVec 64)) Bool)

(assert (=> b!1134823 (= lt!504410 (contains!6583 Nil!24967 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapNonEmpty!44609 () Bool)

(declare-fun mapRes!44609 () Bool)

(declare-fun tp!84690 () Bool)

(declare-fun e!645876 () Bool)

(assert (=> mapNonEmpty!44609 (= mapRes!44609 (and tp!84690 e!645876))))

(declare-datatypes ((V!43157 0))(
  ( (V!43158 (val!14318 Int)) )
))
(declare-datatypes ((ValueCell!13552 0))(
  ( (ValueCellFull!13552 (v!16956 V!43157)) (EmptyCell!13552) )
))
(declare-fun mapValue!44609 () ValueCell!13552)

(declare-fun mapRest!44609 () (Array (_ BitVec 32) ValueCell!13552))

(declare-fun mapKey!44609 () (_ BitVec 32))

(declare-datatypes ((array!73868 0))(
  ( (array!73869 (arr!35581 (Array (_ BitVec 32) ValueCell!13552)) (size!36118 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73868)

(assert (=> mapNonEmpty!44609 (= (arr!35581 _values!996) (store mapRest!44609 mapKey!44609 mapValue!44609))))

(declare-fun zeroValue!944 () V!43157)

(declare-datatypes ((tuple2!18158 0))(
  ( (tuple2!18159 (_1!9089 (_ BitVec 64)) (_2!9089 V!43157)) )
))
(declare-datatypes ((List!24971 0))(
  ( (Nil!24968) (Cons!24967 (h!26176 tuple2!18158) (t!35963 List!24971)) )
))
(declare-datatypes ((ListLongMap!16139 0))(
  ( (ListLongMap!16140 (toList!8085 List!24971)) )
))
(declare-fun lt!504409 () ListLongMap!16139)

(declare-fun k!934 () (_ BitVec 64))

(declare-fun lt!504412 () ListLongMap!16139)

(declare-datatypes ((Unit!37122 0))(
  ( (Unit!37123) )
))
(declare-fun call!49464 () Unit!37122)

(declare-fun minValue!944 () V!43157)

(declare-fun c!110798 () Bool)

(declare-fun bm!49454 () Bool)

(declare-fun c!110800 () Bool)

(declare-fun addStillContains!742 (ListLongMap!16139 (_ BitVec 64) V!43157 (_ BitVec 64)) Unit!37122)

(assert (=> bm!49454 (= call!49464 (addStillContains!742 (ite c!110800 lt!504409 lt!504412) (ite c!110800 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110798 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110800 minValue!944 (ite c!110798 zeroValue!944 minValue!944)) k!934))))

(declare-fun b!1134824 () Bool)

(declare-fun e!645870 () Bool)

(assert (=> b!1134824 (= e!645870 e!645864)))

(declare-fun res!757653 () Bool)

(assert (=> b!1134824 (=> res!757653 e!645864)))

(declare-datatypes ((array!73870 0))(
  ( (array!73871 (arr!35582 (Array (_ BitVec 32) (_ BitVec 64))) (size!36119 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73870)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1134824 (= res!757653 (or (bvsge (size!36119 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36119 _keys!1208)) (bvsge from!1455 (size!36119 _keys!1208))))))

(declare-fun arrayNoDuplicates!0 (array!73870 (_ BitVec 32) List!24970) Bool)

(assert (=> b!1134824 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24967)))

(declare-fun lt!504401 () Unit!37122)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73870 (_ BitVec 32) (_ BitVec 32)) Unit!37122)

(assert (=> b!1134824 (= lt!504401 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(declare-fun e!645869 () Bool)

(assert (=> b!1134824 e!645869))

(declare-fun res!757648 () Bool)

(assert (=> b!1134824 (=> (not res!757648) (not e!645869))))

(declare-fun e!645873 () Bool)

(assert (=> b!1134824 (= res!757648 e!645873)))

(declare-fun c!110799 () Bool)

(assert (=> b!1134824 (= c!110799 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun lt!504411 () Unit!37122)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!351 (array!73870 array!73868 (_ BitVec 32) (_ BitVec 32) V!43157 V!43157 (_ BitVec 64) (_ BitVec 32) Int) Unit!37122)

(assert (=> b!1134824 (= lt!504411 (lemmaListMapContainsThenArrayContainsFrom!351 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504413 () Unit!37122)

(declare-fun e!645874 () Unit!37122)

(assert (=> b!1134824 (= lt!504413 e!645874)))

(declare-fun lt!504405 () Bool)

(assert (=> b!1134824 (= c!110800 (and (not lt!504405) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1134824 (= lt!504405 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1134825 () Bool)

(declare-fun e!645872 () Unit!37122)

(declare-fun Unit!37124 () Unit!37122)

(assert (=> b!1134825 (= e!645872 Unit!37124)))

(declare-fun b!1134826 () Bool)

(declare-fun arrayContainsKey!0 (array!73870 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1134826 (= e!645873 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1134827 () Bool)

(assert (=> b!1134827 (= e!645869 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!49456 () Bool)

(declare-fun call!49460 () ListLongMap!16139)

(declare-fun call!49458 () ListLongMap!16139)

(assert (=> bm!49456 (= call!49460 call!49458)))

(declare-fun b!1134828 () Bool)

(declare-fun res!757646 () Bool)

(declare-fun e!645862 () Bool)

(assert (=> b!1134828 (=> (not res!757646) (not e!645862))))

(assert (=> b!1134828 (= res!757646 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24967))))

(declare-fun bm!49457 () Bool)

(declare-fun +!3443 (ListLongMap!16139 tuple2!18158) ListLongMap!16139)

(assert (=> bm!49457 (= call!49458 (+!3443 lt!504412 (ite (or c!110800 c!110798) (tuple2!18159 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18159 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1134829 () Bool)

(declare-fun call!49462 () Bool)

(assert (=> b!1134829 call!49462))

(declare-fun lt!504406 () Unit!37122)

(declare-fun call!49457 () Unit!37122)

(assert (=> b!1134829 (= lt!504406 call!49457)))

(declare-fun e!645875 () Unit!37122)

(assert (=> b!1134829 (= e!645875 lt!504406)))

(declare-fun b!1134830 () Bool)

(declare-fun e!645868 () Bool)

(assert (=> b!1134830 (= e!645868 e!645870)))

(declare-fun res!757641 () Bool)

(assert (=> b!1134830 (=> res!757641 e!645870)))

(declare-fun contains!6584 (ListLongMap!16139 (_ BitVec 64)) Bool)

(assert (=> b!1134830 (= res!757641 (not (contains!6584 lt!504412 k!934)))))

(declare-fun getCurrentListMapNoExtraKeys!4534 (array!73870 array!73868 (_ BitVec 32) (_ BitVec 32) V!43157 V!43157 (_ BitVec 32) Int) ListLongMap!16139)

(assert (=> b!1134830 (= lt!504412 (getCurrentListMapNoExtraKeys!4534 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134831 () Bool)

(declare-fun res!757644 () Bool)

(assert (=> b!1134831 (=> res!757644 e!645864)))

(declare-fun noDuplicate!1611 (List!24970) Bool)

(assert (=> b!1134831 (= res!757644 (not (noDuplicate!1611 Nil!24967)))))

(declare-fun b!1134832 () Bool)

(assert (=> b!1134832 (= e!645873 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504405) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1134833 () Bool)

(assert (=> b!1134833 (= e!645874 e!645875)))

(assert (=> b!1134833 (= c!110798 (and (not lt!504405) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1134834 () Bool)

(declare-fun res!757656 () Bool)

(assert (=> b!1134834 (=> (not res!757656) (not e!645862))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1134834 (= res!757656 (validMask!0 mask!1564))))

(declare-fun bm!49458 () Bool)

(assert (=> bm!49458 (= call!49457 call!49464)))

(declare-fun b!1134835 () Bool)

(declare-fun e!645860 () Bool)

(assert (=> b!1134835 (= e!645860 e!645868)))

(declare-fun res!757651 () Bool)

(assert (=> b!1134835 (=> res!757651 e!645868)))

(assert (=> b!1134835 (= res!757651 (not (= (select (arr!35582 _keys!1208) from!1455) k!934)))))

(declare-fun e!645863 () Bool)

(assert (=> b!1134835 e!645863))

(declare-fun c!110802 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1134835 (= c!110802 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504414 () Unit!37122)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!456 (array!73870 array!73868 (_ BitVec 32) (_ BitVec 32) V!43157 V!43157 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37122)

(assert (=> b!1134835 (= lt!504414 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!456 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134836 () Bool)

(declare-fun res!757649 () Bool)

(assert (=> b!1134836 (=> res!757649 e!645864)))

(assert (=> b!1134836 (= res!757649 (contains!6583 Nil!24967 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1134837 () Bool)

(declare-fun e!645861 () Bool)

(assert (=> b!1134837 (= e!645861 e!645860)))

(declare-fun res!757654 () Bool)

(assert (=> b!1134837 (=> res!757654 e!645860)))

(assert (=> b!1134837 (= res!757654 (not (= from!1455 i!673)))))

(declare-fun lt!504407 () array!73870)

(declare-fun lt!504400 () ListLongMap!16139)

(declare-fun lt!504402 () array!73868)

(assert (=> b!1134837 (= lt!504400 (getCurrentListMapNoExtraKeys!4534 lt!504407 lt!504402 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2602 (Int (_ BitVec 64)) V!43157)

(assert (=> b!1134837 (= lt!504402 (array!73869 (store (arr!35581 _values!996) i!673 (ValueCellFull!13552 (dynLambda!2602 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36118 _values!996)))))

(declare-fun lt!504399 () ListLongMap!16139)

(assert (=> b!1134837 (= lt!504399 (getCurrentListMapNoExtraKeys!4534 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun res!757658 () Bool)

(assert (=> start!98424 (=> (not res!757658) (not e!645862))))

(assert (=> start!98424 (= res!757658 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36119 _keys!1208))))))

(assert (=> start!98424 e!645862))

(declare-fun tp_is_empty!28523 () Bool)

(assert (=> start!98424 tp_is_empty!28523))

(declare-fun array_inv!27156 (array!73870) Bool)

(assert (=> start!98424 (array_inv!27156 _keys!1208)))

(assert (=> start!98424 true))

(assert (=> start!98424 tp!84691))

(declare-fun e!645871 () Bool)

(declare-fun array_inv!27157 (array!73868) Bool)

(assert (=> start!98424 (and (array_inv!27157 _values!996) e!645871)))

(declare-fun call!49463 () ListLongMap!16139)

(declare-fun bm!49455 () Bool)

(assert (=> bm!49455 (= call!49463 (getCurrentListMapNoExtraKeys!4534 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134838 () Bool)

(declare-fun call!49459 () ListLongMap!16139)

(assert (=> b!1134838 (= e!645863 (= call!49459 call!49463))))

(declare-fun mapIsEmpty!44609 () Bool)

(assert (=> mapIsEmpty!44609 mapRes!44609))

(declare-fun b!1134839 () Bool)

(declare-fun res!757650 () Bool)

(assert (=> b!1134839 (=> (not res!757650) (not e!645862))))

(assert (=> b!1134839 (= res!757650 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36119 _keys!1208))))))

(declare-fun b!1134840 () Bool)

(assert (=> b!1134840 (= e!645876 tp_is_empty!28523)))

(declare-fun b!1134841 () Bool)

(declare-fun e!645865 () Bool)

(assert (=> b!1134841 (= e!645862 e!645865)))

(declare-fun res!757645 () Bool)

(assert (=> b!1134841 (=> (not res!757645) (not e!645865))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73870 (_ BitVec 32)) Bool)

(assert (=> b!1134841 (= res!757645 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504407 mask!1564))))

(assert (=> b!1134841 (= lt!504407 (array!73871 (store (arr!35582 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36119 _keys!1208)))))

(declare-fun b!1134842 () Bool)

(declare-fun res!757647 () Bool)

(assert (=> b!1134842 (=> (not res!757647) (not e!645865))))

(assert (=> b!1134842 (= res!757647 (arrayNoDuplicates!0 lt!504407 #b00000000000000000000000000000000 Nil!24967))))

(declare-fun b!1134843 () Bool)

(declare-fun res!757652 () Bool)

(assert (=> b!1134843 (=> (not res!757652) (not e!645862))))

(assert (=> b!1134843 (= res!757652 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1134844 () Bool)

(declare-fun res!757643 () Bool)

(assert (=> b!1134844 (=> (not res!757643) (not e!645862))))

(assert (=> b!1134844 (= res!757643 (and (= (size!36118 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36119 _keys!1208) (size!36118 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1134845 () Bool)

(assert (=> b!1134845 (= e!645865 (not e!645861))))

(declare-fun res!757655 () Bool)

(assert (=> b!1134845 (=> res!757655 e!645861)))

(assert (=> b!1134845 (= res!757655 (bvsgt from!1455 i!673))))

(assert (=> b!1134845 (arrayContainsKey!0 _keys!1208 k!934 #b00000000000000000000000000000000)))

(declare-fun lt!504408 () Unit!37122)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73870 (_ BitVec 64) (_ BitVec 32)) Unit!37122)

(assert (=> b!1134845 (= lt!504408 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k!934 i!673))))

(declare-fun b!1134846 () Bool)

(declare-fun -!1200 (ListLongMap!16139 (_ BitVec 64)) ListLongMap!16139)

(assert (=> b!1134846 (= e!645863 (= call!49459 (-!1200 call!49463 k!934)))))

(declare-fun b!1134847 () Bool)

(declare-fun res!757642 () Bool)

(assert (=> b!1134847 (=> (not res!757642) (not e!645862))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1134847 (= res!757642 (validKeyInArray!0 k!934))))

(declare-fun b!1134848 () Bool)

(declare-fun res!757657 () Bool)

(assert (=> b!1134848 (=> (not res!757657) (not e!645862))))

(assert (=> b!1134848 (= res!757657 (= (select (arr!35582 _keys!1208) i!673) k!934))))

(declare-fun bm!49459 () Bool)

(assert (=> bm!49459 (= call!49459 (getCurrentListMapNoExtraKeys!4534 lt!504407 lt!504402 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134849 () Bool)

(declare-fun lt!504398 () Unit!37122)

(assert (=> b!1134849 (= e!645874 lt!504398)))

(declare-fun lt!504403 () Unit!37122)

(assert (=> b!1134849 (= lt!504403 (addStillContains!742 lt!504412 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k!934))))

(assert (=> b!1134849 (= lt!504409 call!49458)))

(declare-fun call!49461 () Bool)

(assert (=> b!1134849 call!49461))

(assert (=> b!1134849 (= lt!504398 call!49464)))

(assert (=> b!1134849 (contains!6584 (+!3443 lt!504409 (tuple2!18159 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun bm!49460 () Bool)

(assert (=> bm!49460 (= call!49462 call!49461)))

(declare-fun b!1134850 () Bool)

(declare-fun c!110801 () Bool)

(assert (=> b!1134850 (= c!110801 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504405))))

(assert (=> b!1134850 (= e!645875 e!645872)))

(declare-fun bm!49461 () Bool)

(assert (=> bm!49461 (= call!49461 (contains!6584 (ite c!110800 lt!504409 call!49460) k!934))))

(declare-fun b!1134851 () Bool)

(declare-fun lt!504404 () Unit!37122)

(assert (=> b!1134851 (= e!645872 lt!504404)))

(assert (=> b!1134851 (= lt!504404 call!49457)))

(assert (=> b!1134851 call!49462))

(declare-fun b!1134852 () Bool)

(declare-fun e!645867 () Bool)

(assert (=> b!1134852 (= e!645867 tp_is_empty!28523)))

(declare-fun b!1134853 () Bool)

(assert (=> b!1134853 (= e!645871 (and e!645867 mapRes!44609))))

(declare-fun condMapEmpty!44609 () Bool)

(declare-fun mapDefault!44609 () ValueCell!13552)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98422 () Bool)

(assert start!98422)

(declare-fun b_free!23991 () Bool)

(declare-fun b_next!23991 () Bool)

(assert (=> start!98422 (= b_free!23991 (not b_next!23991))))

(declare-fun tp!84684 () Bool)

(declare-fun b_and!38845 () Bool)

(assert (=> start!98422 (= tp!84684 b_and!38845)))

(declare-datatypes ((V!43155 0))(
  ( (V!43156 (val!14317 Int)) )
))
(declare-datatypes ((tuple2!18156 0))(
  ( (tuple2!18157 (_1!9088 (_ BitVec 64)) (_2!9088 V!43155)) )
))
(declare-datatypes ((List!24968 0))(
  ( (Nil!24965) (Cons!24964 (h!26173 tuple2!18156) (t!35958 List!24968)) )
))
(declare-datatypes ((ListLongMap!16137 0))(
  ( (ListLongMap!16138 (toList!8084 List!24968)) )
))
(declare-fun call!49439 () ListLongMap!16137)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun b!1134728 () Bool)

(declare-fun e!645809 () Bool)

(declare-fun call!49434 () ListLongMap!16137)

(declare-fun -!1199 (ListLongMap!16137 (_ BitVec 64)) ListLongMap!16137)

(assert (=> b!1134728 (= e!645809 (= call!49434 (-!1199 call!49439 k0!934)))))

(declare-fun b!1134729 () Bool)

(declare-fun e!645817 () Bool)

(declare-fun e!645813 () Bool)

(assert (=> b!1134729 (= e!645817 e!645813)))

(declare-fun res!757595 () Bool)

(assert (=> b!1134729 (=> res!757595 e!645813)))

(declare-fun lt!504348 () ListLongMap!16137)

(declare-fun contains!6581 (ListLongMap!16137 (_ BitVec 64)) Bool)

(assert (=> b!1134729 (= res!757595 (not (contains!6581 lt!504348 k0!934)))))

(declare-fun zeroValue!944 () V!43155)

(declare-datatypes ((array!73864 0))(
  ( (array!73865 (arr!35579 (Array (_ BitVec 32) (_ BitVec 64))) (size!36116 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73864)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13551 0))(
  ( (ValueCellFull!13551 (v!16955 V!43155)) (EmptyCell!13551) )
))
(declare-datatypes ((array!73866 0))(
  ( (array!73867 (arr!35580 (Array (_ BitVec 32) ValueCell!13551)) (size!36117 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73866)

(declare-fun minValue!944 () V!43155)

(declare-fun getCurrentListMapNoExtraKeys!4533 (array!73864 array!73866 (_ BitVec 32) (_ BitVec 32) V!43155 V!43155 (_ BitVec 32) Int) ListLongMap!16137)

(assert (=> b!1134729 (= lt!504348 (getCurrentListMapNoExtraKeys!4533 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49430 () Bool)

(declare-datatypes ((Unit!37119 0))(
  ( (Unit!37120) )
))
(declare-fun call!49433 () Unit!37119)

(declare-fun call!49438 () Unit!37119)

(assert (=> bm!49430 (= call!49433 call!49438)))

(declare-fun b!1134731 () Bool)

(declare-fun e!645823 () Bool)

(declare-fun e!645814 () Bool)

(assert (=> b!1134731 (= e!645823 e!645814)))

(declare-fun res!757588 () Bool)

(assert (=> b!1134731 (=> res!757588 e!645814)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1134731 (= res!757588 (not (= from!1455 i!673)))))

(declare-fun lt!504350 () array!73864)

(declare-fun lt!504361 () ListLongMap!16137)

(declare-fun lt!504359 () array!73866)

(assert (=> b!1134731 (= lt!504361 (getCurrentListMapNoExtraKeys!4533 lt!504350 lt!504359 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2601 (Int (_ BitVec 64)) V!43155)

(assert (=> b!1134731 (= lt!504359 (array!73867 (store (arr!35580 _values!996) i!673 (ValueCellFull!13551 (dynLambda!2601 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36117 _values!996)))))

(declare-fun lt!504360 () ListLongMap!16137)

(assert (=> b!1134731 (= lt!504360 (getCurrentListMapNoExtraKeys!4533 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1134732 () Bool)

(declare-fun e!645819 () Bool)

(declare-fun tp_is_empty!28521 () Bool)

(assert (=> b!1134732 (= e!645819 tp_is_empty!28521)))

(declare-fun b!1134733 () Bool)

(declare-fun e!645815 () Bool)

(assert (=> b!1134733 (= e!645815 tp_is_empty!28521)))

(declare-fun b!1134734 () Bool)

(declare-fun call!49437 () Bool)

(assert (=> b!1134734 call!49437))

(declare-fun lt!504356 () Unit!37119)

(assert (=> b!1134734 (= lt!504356 call!49433)))

(declare-fun e!645811 () Unit!37119)

(assert (=> b!1134734 (= e!645811 lt!504356)))

(declare-fun b!1134735 () Bool)

(declare-fun e!645812 () Bool)

(declare-fun lt!504357 () Bool)

(assert (=> b!1134735 (= e!645812 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!504357) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1134736 () Bool)

(declare-fun e!645820 () Unit!37119)

(declare-fun lt!504354 () Unit!37119)

(assert (=> b!1134736 (= e!645820 lt!504354)))

(assert (=> b!1134736 (= lt!504354 call!49433)))

(assert (=> b!1134736 call!49437))

(declare-fun bm!49431 () Bool)

(declare-fun call!49435 () Bool)

(assert (=> bm!49431 (= call!49437 call!49435)))

(declare-fun b!1134737 () Bool)

(assert (=> b!1134737 (= e!645809 (= call!49434 call!49439))))

(declare-fun mapIsEmpty!44606 () Bool)

(declare-fun mapRes!44606 () Bool)

(assert (=> mapIsEmpty!44606 mapRes!44606))

(declare-fun res!757592 () Bool)

(declare-fun e!645822 () Bool)

(assert (=> start!98422 (=> (not res!757592) (not e!645822))))

(assert (=> start!98422 (= res!757592 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36116 _keys!1208))))))

(assert (=> start!98422 e!645822))

(assert (=> start!98422 tp_is_empty!28521))

(declare-fun array_inv!27154 (array!73864) Bool)

(assert (=> start!98422 (array_inv!27154 _keys!1208)))

(assert (=> start!98422 true))

(assert (=> start!98422 tp!84684))

(declare-fun e!645825 () Bool)

(declare-fun array_inv!27155 (array!73866) Bool)

(assert (=> start!98422 (and (array_inv!27155 _values!996) e!645825)))

(declare-fun b!1134730 () Bool)

(declare-fun e!645816 () Unit!37119)

(declare-fun lt!504349 () Unit!37119)

(assert (=> b!1134730 (= e!645816 lt!504349)))

(declare-fun lt!504362 () Unit!37119)

(declare-fun addStillContains!741 (ListLongMap!16137 (_ BitVec 64) V!43155 (_ BitVec 64)) Unit!37119)

(assert (=> b!1134730 (= lt!504362 (addStillContains!741 lt!504348 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun lt!504363 () ListLongMap!16137)

(declare-fun +!3442 (ListLongMap!16137 tuple2!18156) ListLongMap!16137)

(assert (=> b!1134730 (= lt!504363 (+!3442 lt!504348 (tuple2!18157 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1134730 call!49435))

(assert (=> b!1134730 (= lt!504349 call!49438)))

(declare-fun call!49440 () ListLongMap!16137)

(assert (=> b!1134730 (contains!6581 call!49440 k0!934)))

(declare-fun b!1134738 () Bool)

(declare-fun arrayContainsKey!0 (array!73864 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1134738 (= e!645812 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1134739 () Bool)

(declare-fun res!757597 () Bool)

(declare-fun e!645821 () Bool)

(assert (=> b!1134739 (=> (not res!757597) (not e!645821))))

(declare-datatypes ((List!24969 0))(
  ( (Nil!24966) (Cons!24965 (h!26174 (_ BitVec 64)) (t!35959 List!24969)) )
))
(declare-fun arrayNoDuplicates!0 (array!73864 (_ BitVec 32) List!24969) Bool)

(assert (=> b!1134739 (= res!757597 (arrayNoDuplicates!0 lt!504350 #b00000000000000000000000000000000 Nil!24966))))

(declare-fun bm!49432 () Bool)

(assert (=> bm!49432 (= call!49434 (getCurrentListMapNoExtraKeys!4533 lt!504350 lt!504359 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134740 () Bool)

(declare-fun Unit!37121 () Unit!37119)

(assert (=> b!1134740 (= e!645820 Unit!37121)))

(declare-fun b!1134741 () Bool)

(declare-fun res!757591 () Bool)

(assert (=> b!1134741 (=> (not res!757591) (not e!645822))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1134741 (= res!757591 (validMask!0 mask!1564))))

(declare-fun b!1134742 () Bool)

(assert (=> b!1134742 (= e!645821 (not e!645823))))

(declare-fun res!757603 () Bool)

(assert (=> b!1134742 (=> res!757603 e!645823)))

(assert (=> b!1134742 (= res!757603 (bvsgt from!1455 i!673))))

(assert (=> b!1134742 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!504351 () Unit!37119)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73864 (_ BitVec 64) (_ BitVec 32)) Unit!37119)

(assert (=> b!1134742 (= lt!504351 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1134743 () Bool)

(declare-fun res!757598 () Bool)

(assert (=> b!1134743 (=> (not res!757598) (not e!645822))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73864 (_ BitVec 32)) Bool)

(assert (=> b!1134743 (= res!757598 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1134744 () Bool)

(assert (=> b!1134744 (= e!645814 e!645817)))

(declare-fun res!757589 () Bool)

(assert (=> b!1134744 (=> res!757589 e!645817)))

(assert (=> b!1134744 (= res!757589 (not (= (select (arr!35579 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1134744 e!645809))

(declare-fun c!110783 () Bool)

(assert (=> b!1134744 (= c!110783 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!504347 () Unit!37119)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!455 (array!73864 array!73866 (_ BitVec 32) (_ BitVec 32) V!43155 V!43155 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37119)

(assert (=> b!1134744 (= lt!504347 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!455 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1134745 () Bool)

(assert (=> b!1134745 (= e!645816 e!645811)))

(declare-fun c!110784 () Bool)

(assert (=> b!1134745 (= c!110784 (and (not lt!504357) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1134746 () Bool)

(assert (=> b!1134746 (= e!645825 (and e!645815 mapRes!44606))))

(declare-fun condMapEmpty!44606 () Bool)

(declare-fun mapDefault!44606 () ValueCell!13551)

(assert (=> b!1134746 (= condMapEmpty!44606 (= (arr!35580 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13551)) mapDefault!44606)))))

(declare-fun b!1134747 () Bool)

(declare-fun res!757590 () Bool)

(assert (=> b!1134747 (=> (not res!757590) (not e!645822))))

(assert (=> b!1134747 (= res!757590 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36116 _keys!1208))))))

(declare-fun bm!49433 () Bool)

(declare-fun call!49436 () ListLongMap!16137)

(assert (=> bm!49433 (= call!49436 call!49440)))

(declare-fun bm!49434 () Bool)

(declare-fun c!110786 () Bool)

(assert (=> bm!49434 (= call!49435 (contains!6581 (ite c!110786 lt!504363 call!49436) k0!934))))

(declare-fun b!1134748 () Bool)

(assert (=> b!1134748 (= e!645822 e!645821)))

(declare-fun res!757593 () Bool)

(assert (=> b!1134748 (=> (not res!757593) (not e!645821))))

(assert (=> b!1134748 (= res!757593 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!504350 mask!1564))))

(assert (=> b!1134748 (= lt!504350 (array!73865 (store (arr!35579 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36116 _keys!1208)))))

(declare-fun b!1134749 () Bool)

(declare-fun c!110785 () Bool)

(assert (=> b!1134749 (= c!110785 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!504357))))

(assert (=> b!1134749 (= e!645811 e!645820)))

(declare-fun b!1134750 () Bool)

(declare-fun res!757601 () Bool)

(assert (=> b!1134750 (=> (not res!757601) (not e!645822))))

(assert (=> b!1134750 (= res!757601 (and (= (size!36117 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36116 _keys!1208) (size!36117 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1134751 () Bool)

(declare-fun res!757604 () Bool)

(declare-fun e!645810 () Bool)

(assert (=> b!1134751 (=> res!757604 e!645810)))

(declare-fun noDuplicate!1610 (List!24969) Bool)

(assert (=> b!1134751 (= res!757604 (not (noDuplicate!1610 Nil!24966)))))

(declare-fun b!1134752 () Bool)

(declare-fun e!645824 () Bool)

(assert (=> b!1134752 (= e!645824 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun mapNonEmpty!44606 () Bool)

(declare-fun tp!84685 () Bool)

(assert (=> mapNonEmpty!44606 (= mapRes!44606 (and tp!84685 e!645819))))

(declare-fun mapValue!44606 () ValueCell!13551)

(declare-fun mapRest!44606 () (Array (_ BitVec 32) ValueCell!13551))

(declare-fun mapKey!44606 () (_ BitVec 32))

(assert (=> mapNonEmpty!44606 (= (arr!35580 _values!996) (store mapRest!44606 mapKey!44606 mapValue!44606))))

(declare-fun bm!49435 () Bool)

(assert (=> bm!49435 (= call!49440 (+!3442 (ite c!110786 lt!504363 lt!504348) (ite c!110786 (tuple2!18157 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110784 (tuple2!18157 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18157 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun bm!49436 () Bool)

(assert (=> bm!49436 (= call!49439 (getCurrentListMapNoExtraKeys!4533 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!49437 () Bool)

(assert (=> bm!49437 (= call!49438 (addStillContains!741 (ite c!110786 lt!504363 lt!504348) (ite c!110786 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110784 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110786 minValue!944 (ite c!110784 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1134753 () Bool)

(declare-fun res!757594 () Bool)

(assert (=> b!1134753 (=> (not res!757594) (not e!645822))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1134753 (= res!757594 (validKeyInArray!0 k0!934))))

(declare-fun b!1134754 () Bool)

(assert (=> b!1134754 (= e!645813 e!645810)))

(declare-fun res!757602 () Bool)

(assert (=> b!1134754 (=> res!757602 e!645810)))

(assert (=> b!1134754 (= res!757602 (or (bvsge (size!36116 _keys!1208) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36116 _keys!1208)) (bvsge from!1455 (size!36116 _keys!1208))))))

(assert (=> b!1134754 (arrayNoDuplicates!0 _keys!1208 from!1455 Nil!24966)))

(declare-fun lt!504355 () Unit!37119)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!73864 (_ BitVec 32) (_ BitVec 32)) Unit!37119)

(assert (=> b!1134754 (= lt!504355 (lemmaNoDuplicateFromThenFromBigger!0 _keys!1208 #b00000000000000000000000000000000 from!1455))))

(assert (=> b!1134754 e!645824))

(declare-fun res!757600 () Bool)

(assert (=> b!1134754 (=> (not res!757600) (not e!645824))))

(assert (=> b!1134754 (= res!757600 e!645812)))

(declare-fun c!110787 () Bool)

(assert (=> b!1134754 (= c!110787 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!504352 () Unit!37119)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!350 (array!73864 array!73866 (_ BitVec 32) (_ BitVec 32) V!43155 V!43155 (_ BitVec 64) (_ BitVec 32) Int) Unit!37119)

(assert (=> b!1134754 (= lt!504352 (lemmaListMapContainsThenArrayContainsFrom!350 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!504353 () Unit!37119)

(assert (=> b!1134754 (= lt!504353 e!645816)))

(assert (=> b!1134754 (= c!110786 (and (not lt!504357) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1134754 (= lt!504357 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1134755 () Bool)

(assert (=> b!1134755 (= e!645810 true)))

(declare-fun lt!504358 () Bool)

(declare-fun contains!6582 (List!24969 (_ BitVec 64)) Bool)

(assert (=> b!1134755 (= lt!504358 (contains!6582 Nil!24966 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1134756 () Bool)

(declare-fun res!757596 () Bool)

(assert (=> b!1134756 (=> res!757596 e!645810)))

(assert (=> b!1134756 (= res!757596 (contains!6582 Nil!24966 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1134757 () Bool)

(declare-fun res!757587 () Bool)

(assert (=> b!1134757 (=> (not res!757587) (not e!645822))))

(assert (=> b!1134757 (= res!757587 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24966))))

(declare-fun b!1134758 () Bool)

(declare-fun res!757599 () Bool)

(assert (=> b!1134758 (=> (not res!757599) (not e!645822))))

(assert (=> b!1134758 (= res!757599 (= (select (arr!35579 _keys!1208) i!673) k0!934))))

(assert (= (and start!98422 res!757592) b!1134741))

(assert (= (and b!1134741 res!757591) b!1134750))

(assert (= (and b!1134750 res!757601) b!1134743))

(assert (= (and b!1134743 res!757598) b!1134757))

(assert (= (and b!1134757 res!757587) b!1134747))

(assert (= (and b!1134747 res!757590) b!1134753))

(assert (= (and b!1134753 res!757594) b!1134758))

(assert (= (and b!1134758 res!757599) b!1134748))

(assert (= (and b!1134748 res!757593) b!1134739))

(assert (= (and b!1134739 res!757597) b!1134742))

(assert (= (and b!1134742 (not res!757603)) b!1134731))

(assert (= (and b!1134731 (not res!757588)) b!1134744))

(assert (= (and b!1134744 c!110783) b!1134728))

(assert (= (and b!1134744 (not c!110783)) b!1134737))

(assert (= (or b!1134728 b!1134737) bm!49432))

(assert (= (or b!1134728 b!1134737) bm!49436))

(assert (= (and b!1134744 (not res!757589)) b!1134729))

(assert (= (and b!1134729 (not res!757595)) b!1134754))

(assert (= (and b!1134754 c!110786) b!1134730))

(assert (= (and b!1134754 (not c!110786)) b!1134745))

(assert (= (and b!1134745 c!110784) b!1134734))

(assert (= (and b!1134745 (not c!110784)) b!1134749))

(assert (= (and b!1134749 c!110785) b!1134736))

(assert (= (and b!1134749 (not c!110785)) b!1134740))

(assert (= (or b!1134734 b!1134736) bm!49430))

(assert (= (or b!1134734 b!1134736) bm!49433))

(assert (= (or b!1134734 b!1134736) bm!49431))

(assert (= (or b!1134730 bm!49431) bm!49434))

(assert (= (or b!1134730 bm!49430) bm!49437))

(assert (= (or b!1134730 bm!49433) bm!49435))

(assert (= (and b!1134754 c!110787) b!1134738))

(assert (= (and b!1134754 (not c!110787)) b!1134735))

(assert (= (and b!1134754 res!757600) b!1134752))

(assert (= (and b!1134754 (not res!757602)) b!1134751))

(assert (= (and b!1134751 (not res!757604)) b!1134756))

(assert (= (and b!1134756 (not res!757596)) b!1134755))

(assert (= (and b!1134746 condMapEmpty!44606) mapIsEmpty!44606))

(assert (= (and b!1134746 (not condMapEmpty!44606)) mapNonEmpty!44606))

(get-info :version)

(assert (= (and mapNonEmpty!44606 ((_ is ValueCellFull!13551) mapValue!44606)) b!1134732))

(assert (= (and b!1134746 ((_ is ValueCellFull!13551) mapDefault!44606)) b!1134733))

(assert (= start!98422 b!1134746))

(declare-fun b_lambda!19115 () Bool)

(assert (=> (not b_lambda!19115) (not b!1134731)))

(declare-fun t!35957 () Bool)

(declare-fun tb!8811 () Bool)

(assert (=> (and start!98422 (= defaultEntry!1004 defaultEntry!1004) t!35957) tb!8811))

(declare-fun result!18179 () Bool)

(assert (=> tb!8811 (= result!18179 tp_is_empty!28521)))

(assert (=> b!1134731 t!35957))

(declare-fun b_and!38847 () Bool)

(assert (= b_and!38845 (and (=> t!35957 result!18179) b_and!38847)))

(declare-fun m!1047507 () Bool)

(assert (=> bm!49437 m!1047507))

(declare-fun m!1047509 () Bool)

(assert (=> b!1134730 m!1047509))

(declare-fun m!1047511 () Bool)

(assert (=> b!1134730 m!1047511))

(declare-fun m!1047513 () Bool)

(assert (=> b!1134730 m!1047513))

(declare-fun m!1047515 () Bool)

(assert (=> b!1134738 m!1047515))

(declare-fun m!1047517 () Bool)

(assert (=> bm!49435 m!1047517))

(declare-fun m!1047519 () Bool)

(assert (=> b!1134729 m!1047519))

(declare-fun m!1047521 () Bool)

(assert (=> b!1134729 m!1047521))

(declare-fun m!1047523 () Bool)

(assert (=> b!1134754 m!1047523))

(declare-fun m!1047525 () Bool)

(assert (=> b!1134754 m!1047525))

(declare-fun m!1047527 () Bool)

(assert (=> b!1134754 m!1047527))

(declare-fun m!1047529 () Bool)

(assert (=> bm!49434 m!1047529))

(declare-fun m!1047531 () Bool)

(assert (=> b!1134731 m!1047531))

(declare-fun m!1047533 () Bool)

(assert (=> b!1134731 m!1047533))

(declare-fun m!1047535 () Bool)

(assert (=> b!1134731 m!1047535))

(declare-fun m!1047537 () Bool)

(assert (=> b!1134731 m!1047537))

(declare-fun m!1047539 () Bool)

(assert (=> b!1134755 m!1047539))

(declare-fun m!1047541 () Bool)

(assert (=> b!1134728 m!1047541))

(declare-fun m!1047543 () Bool)

(assert (=> mapNonEmpty!44606 m!1047543))

(declare-fun m!1047545 () Bool)

(assert (=> b!1134751 m!1047545))

(assert (=> bm!49436 m!1047521))

(assert (=> b!1134752 m!1047515))

(declare-fun m!1047547 () Bool)

(assert (=> b!1134756 m!1047547))

(declare-fun m!1047549 () Bool)

(assert (=> b!1134741 m!1047549))

(declare-fun m!1047551 () Bool)

(assert (=> start!98422 m!1047551))

(declare-fun m!1047553 () Bool)

(assert (=> start!98422 m!1047553))

(declare-fun m!1047555 () Bool)

(assert (=> b!1134748 m!1047555))

(declare-fun m!1047557 () Bool)

(assert (=> b!1134748 m!1047557))

(declare-fun m!1047559 () Bool)

(assert (=> b!1134753 m!1047559))

(declare-fun m!1047561 () Bool)

(assert (=> bm!49432 m!1047561))

(declare-fun m!1047563 () Bool)

(assert (=> b!1134743 m!1047563))

(declare-fun m!1047565 () Bool)

(assert (=> b!1134757 m!1047565))

(declare-fun m!1047567 () Bool)

(assert (=> b!1134758 m!1047567))

(declare-fun m!1047569 () Bool)

(assert (=> b!1134744 m!1047569))

(declare-fun m!1047571 () Bool)

(assert (=> b!1134744 m!1047571))

(declare-fun m!1047573 () Bool)

(assert (=> b!1134739 m!1047573))

(declare-fun m!1047575 () Bool)

(assert (=> b!1134742 m!1047575))

(declare-fun m!1047577 () Bool)

(assert (=> b!1134742 m!1047577))

(check-sat (not b!1134757) (not b!1134754) (not b!1134728) (not b!1134756) (not bm!49435) (not b!1134731) (not b!1134751) (not b!1134748) (not bm!49436) (not start!98422) (not b!1134755) (not b!1134741) (not bm!49434) (not bm!49432) (not b!1134730) (not mapNonEmpty!44606) (not b!1134729) b_and!38847 (not b!1134752) (not b_next!23991) (not b_lambda!19115) (not b!1134744) tp_is_empty!28521 (not bm!49437) (not b!1134738) (not b!1134739) (not b!1134743) (not b!1134753) (not b!1134742))
(check-sat b_and!38847 (not b_next!23991))

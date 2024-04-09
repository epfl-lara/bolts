; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!98378 () Bool)

(assert start!98378)

(declare-fun b_free!23947 () Bool)

(declare-fun b_next!23947 () Bool)

(assert (=> start!98378 (= b_free!23947 (not b_next!23947))))

(declare-fun tp!84553 () Bool)

(declare-fun b_and!38757 () Bool)

(assert (=> start!98378 (= tp!84553 b_and!38757)))

(declare-fun b!1132767 () Bool)

(declare-fun e!644732 () Bool)

(assert (=> b!1132767 (= e!644732 true)))

(declare-fun e!644733 () Bool)

(assert (=> b!1132767 e!644733))

(declare-fun res!756529 () Bool)

(assert (=> b!1132767 (=> (not res!756529) (not e!644733))))

(declare-fun e!644743 () Bool)

(assert (=> b!1132767 (= res!756529 e!644743)))

(declare-fun c!110455 () Bool)

(declare-fun k!934 () (_ BitVec 64))

(assert (=> b!1132767 (= c!110455 (and (not (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-datatypes ((V!43097 0))(
  ( (V!43098 (val!14295 Int)) )
))
(declare-fun zeroValue!944 () V!43097)

(declare-datatypes ((array!73776 0))(
  ( (array!73777 (arr!35535 (Array (_ BitVec 32) (_ BitVec 64))) (size!36072 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73776)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun minValue!944 () V!43097)

(declare-datatypes ((ValueCell!13529 0))(
  ( (ValueCellFull!13529 (v!16933 V!43097)) (EmptyCell!13529) )
))
(declare-datatypes ((array!73778 0))(
  ( (array!73779 (arr!35536 (Array (_ BitVec 32) ValueCell!13529)) (size!36073 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73778)

(declare-datatypes ((Unit!37061 0))(
  ( (Unit!37062) )
))
(declare-fun lt!503313 () Unit!37061)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!333 (array!73776 array!73778 (_ BitVec 32) (_ BitVec 32) V!43097 V!43097 (_ BitVec 64) (_ BitVec 32) Int) Unit!37061)

(assert (=> b!1132767 (= lt!503313 (lemmaListMapContainsThenArrayContainsFrom!333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503320 () Unit!37061)

(declare-fun e!644742 () Unit!37061)

(assert (=> b!1132767 (= lt!503320 e!644742)))

(declare-fun c!110453 () Bool)

(declare-fun lt!503323 () Bool)

(assert (=> b!1132767 (= c!110453 (and (not lt!503323) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1132767 (= lt!503323 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1132768 () Bool)

(declare-fun res!756530 () Bool)

(declare-fun e!644731 () Bool)

(assert (=> b!1132768 (=> (not res!756530) (not e!644731))))

(declare-datatypes ((List!24925 0))(
  ( (Nil!24922) (Cons!24921 (h!26130 (_ BitVec 64)) (t!35871 List!24925)) )
))
(declare-fun arrayNoDuplicates!0 (array!73776 (_ BitVec 32) List!24925) Bool)

(assert (=> b!1132768 (= res!756530 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24922))))

(declare-fun b!1132769 () Bool)

(declare-fun e!644735 () Bool)

(assert (=> b!1132769 (= e!644731 e!644735)))

(declare-fun res!756542 () Bool)

(assert (=> b!1132769 (=> (not res!756542) (not e!644735))))

(declare-fun lt!503312 () array!73776)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73776 (_ BitVec 32)) Bool)

(assert (=> b!1132769 (= res!756542 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503312 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1132769 (= lt!503312 (array!73777 (store (arr!35535 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36072 _keys!1208)))))

(declare-fun res!756540 () Bool)

(assert (=> start!98378 (=> (not res!756540) (not e!644731))))

(assert (=> start!98378 (= res!756540 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36072 _keys!1208))))))

(assert (=> start!98378 e!644731))

(declare-fun tp_is_empty!28477 () Bool)

(assert (=> start!98378 tp_is_empty!28477))

(declare-fun array_inv!27122 (array!73776) Bool)

(assert (=> start!98378 (array_inv!27122 _keys!1208)))

(assert (=> start!98378 true))

(assert (=> start!98378 tp!84553))

(declare-fun e!644740 () Bool)

(declare-fun array_inv!27123 (array!73778) Bool)

(assert (=> start!98378 (and (array_inv!27123 _values!996) e!644740)))

(declare-fun b!1132770 () Bool)

(declare-fun res!756533 () Bool)

(assert (=> b!1132770 (=> (not res!756533) (not e!644731))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1132770 (= res!756533 (validKeyInArray!0 k!934))))

(declare-fun b!1132771 () Bool)

(declare-fun res!756538 () Bool)

(assert (=> b!1132771 (=> (not res!756538) (not e!644731))))

(assert (=> b!1132771 (= res!756538 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapIsEmpty!44540 () Bool)

(declare-fun mapRes!44540 () Bool)

(assert (=> mapIsEmpty!44540 mapRes!44540))

(declare-fun b!1132772 () Bool)

(declare-fun call!48906 () Bool)

(assert (=> b!1132772 call!48906))

(declare-fun lt!503311 () Unit!37061)

(declare-fun call!48912 () Unit!37061)

(assert (=> b!1132772 (= lt!503311 call!48912)))

(declare-fun e!644737 () Unit!37061)

(assert (=> b!1132772 (= e!644737 lt!503311)))

(declare-fun bm!48902 () Bool)

(declare-fun call!48909 () Bool)

(assert (=> bm!48902 (= call!48906 call!48909)))

(declare-fun mapNonEmpty!44540 () Bool)

(declare-fun tp!84552 () Bool)

(declare-fun e!644739 () Bool)

(assert (=> mapNonEmpty!44540 (= mapRes!44540 (and tp!84552 e!644739))))

(declare-fun mapRest!44540 () (Array (_ BitVec 32) ValueCell!13529))

(declare-fun mapValue!44540 () ValueCell!13529)

(declare-fun mapKey!44540 () (_ BitVec 32))

(assert (=> mapNonEmpty!44540 (= (arr!35536 _values!996) (store mapRest!44540 mapKey!44540 mapValue!44540))))

(declare-fun b!1132773 () Bool)

(declare-fun lt!503315 () Unit!37061)

(assert (=> b!1132773 (= e!644742 lt!503315)))

(declare-fun lt!503325 () Unit!37061)

(declare-fun call!48910 () Unit!37061)

(assert (=> b!1132773 (= lt!503325 call!48910)))

(declare-datatypes ((tuple2!18112 0))(
  ( (tuple2!18113 (_1!9066 (_ BitVec 64)) (_2!9066 V!43097)) )
))
(declare-datatypes ((List!24926 0))(
  ( (Nil!24923) (Cons!24922 (h!26131 tuple2!18112) (t!35872 List!24926)) )
))
(declare-datatypes ((ListLongMap!16093 0))(
  ( (ListLongMap!16094 (toList!8062 List!24926)) )
))
(declare-fun lt!503321 () ListLongMap!16093)

(declare-fun call!48907 () ListLongMap!16093)

(assert (=> b!1132773 (= lt!503321 call!48907)))

(assert (=> b!1132773 call!48909))

(declare-fun addStillContains!722 (ListLongMap!16093 (_ BitVec 64) V!43097 (_ BitVec 64)) Unit!37061)

(assert (=> b!1132773 (= lt!503315 (addStillContains!722 lt!503321 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k!934))))

(declare-fun contains!6555 (ListLongMap!16093 (_ BitVec 64)) Bool)

(declare-fun +!3424 (ListLongMap!16093 tuple2!18112) ListLongMap!16093)

(assert (=> b!1132773 (contains!6555 (+!3424 lt!503321 (tuple2!18113 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k!934)))

(declare-fun call!48911 () ListLongMap!16093)

(declare-fun e!644741 () Bool)

(declare-fun b!1132774 () Bool)

(declare-fun call!48908 () ListLongMap!16093)

(declare-fun -!1183 (ListLongMap!16093 (_ BitVec 64)) ListLongMap!16093)

(assert (=> b!1132774 (= e!644741 (= call!48911 (-!1183 call!48908 k!934)))))

(declare-fun b!1132775 () Bool)

(declare-fun res!756532 () Bool)

(assert (=> b!1132775 (=> (not res!756532) (not e!644731))))

(assert (=> b!1132775 (= res!756532 (= (select (arr!35535 _keys!1208) i!673) k!934))))

(declare-fun b!1132776 () Bool)

(declare-fun arrayContainsKey!0 (array!73776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1132776 (= e!644743 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1132777 () Bool)

(declare-fun res!756536 () Bool)

(assert (=> b!1132777 (=> (not res!756536) (not e!644735))))

(assert (=> b!1132777 (= res!756536 (arrayNoDuplicates!0 lt!503312 #b00000000000000000000000000000000 Nil!24922))))

(declare-fun b!1132778 () Bool)

(assert (=> b!1132778 (= e!644743 (ite (= k!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503323) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1132779 () Bool)

(declare-fun e!644734 () Bool)

(declare-fun e!644730 () Bool)

(assert (=> b!1132779 (= e!644734 e!644730)))

(declare-fun res!756531 () Bool)

(assert (=> b!1132779 (=> res!756531 e!644730)))

(assert (=> b!1132779 (= res!756531 (not (= from!1455 i!673)))))

(declare-fun lt!503318 () array!73778)

(declare-fun lt!503317 () ListLongMap!16093)

(declare-fun getCurrentListMapNoExtraKeys!4513 (array!73776 array!73778 (_ BitVec 32) (_ BitVec 32) V!43097 V!43097 (_ BitVec 32) Int) ListLongMap!16093)

(assert (=> b!1132779 (= lt!503317 (getCurrentListMapNoExtraKeys!4513 lt!503312 lt!503318 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2584 (Int (_ BitVec 64)) V!43097)

(assert (=> b!1132779 (= lt!503318 (array!73779 (store (arr!35536 _values!996) i!673 (ValueCellFull!13529 (dynLambda!2584 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36073 _values!996)))))

(declare-fun lt!503314 () ListLongMap!16093)

(assert (=> b!1132779 (= lt!503314 (getCurrentListMapNoExtraKeys!4513 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1132780 () Bool)

(declare-fun e!644745 () Bool)

(assert (=> b!1132780 (= e!644730 e!644745)))

(declare-fun res!756534 () Bool)

(assert (=> b!1132780 (=> res!756534 e!644745)))

(assert (=> b!1132780 (= res!756534 (not (= (select (arr!35535 _keys!1208) from!1455) k!934)))))

(assert (=> b!1132780 e!644741))

(declare-fun c!110454 () Bool)

(assert (=> b!1132780 (= c!110454 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503319 () Unit!37061)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!439 (array!73776 array!73778 (_ BitVec 32) (_ BitVec 32) V!43097 V!43097 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37061)

(assert (=> b!1132780 (= lt!503319 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!439 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132781 () Bool)

(assert (=> b!1132781 (= e!644739 tp_is_empty!28477)))

(declare-fun lt!503324 () ListLongMap!16093)

(declare-fun c!110457 () Bool)

(declare-fun bm!48903 () Bool)

(assert (=> bm!48903 (= call!48907 (+!3424 lt!503324 (ite (or c!110453 c!110457) (tuple2!18113 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18113 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1132782 () Bool)

(declare-fun res!756541 () Bool)

(assert (=> b!1132782 (=> (not res!756541) (not e!644731))))

(assert (=> b!1132782 (= res!756541 (and (= (size!36073 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36072 _keys!1208) (size!36073 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1132783 () Bool)

(declare-fun c!110456 () Bool)

(assert (=> b!1132783 (= c!110456 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503323))))

(declare-fun e!644744 () Unit!37061)

(assert (=> b!1132783 (= e!644737 e!644744)))

(declare-fun b!1132784 () Bool)

(assert (=> b!1132784 (= e!644733 (arrayContainsKey!0 _keys!1208 k!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun bm!48904 () Bool)

(declare-fun call!48905 () ListLongMap!16093)

(assert (=> bm!48904 (= call!48909 (contains!6555 (ite c!110453 lt!503321 call!48905) k!934))))

(declare-fun bm!48905 () Bool)

(assert (=> bm!48905 (= call!48905 call!48907)))

(declare-fun b!1132785 () Bool)

(declare-fun res!756537 () Bool)

(assert (=> b!1132785 (=> (not res!756537) (not e!644731))))

(assert (=> b!1132785 (= res!756537 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36072 _keys!1208))))))

(declare-fun b!1132786 () Bool)

(declare-fun lt!503322 () Unit!37061)

(assert (=> b!1132786 (= e!644744 lt!503322)))

(assert (=> b!1132786 (= lt!503322 call!48912)))

(assert (=> b!1132786 call!48906))

(declare-fun b!1132787 () Bool)

(declare-fun e!644738 () Bool)

(assert (=> b!1132787 (= e!644738 tp_is_empty!28477)))

(declare-fun bm!48906 () Bool)

(assert (=> bm!48906 (= call!48908 (getCurrentListMapNoExtraKeys!4513 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132788 () Bool)

(declare-fun Unit!37063 () Unit!37061)

(assert (=> b!1132788 (= e!644744 Unit!37063)))

(declare-fun b!1132789 () Bool)

(declare-fun res!756528 () Bool)

(assert (=> b!1132789 (=> (not res!756528) (not e!644731))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1132789 (= res!756528 (validMask!0 mask!1564))))

(declare-fun bm!48907 () Bool)

(assert (=> bm!48907 (= call!48911 (getCurrentListMapNoExtraKeys!4513 lt!503312 lt!503318 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1132790 () Bool)

(assert (=> b!1132790 (= e!644740 (and e!644738 mapRes!44540))))

(declare-fun condMapEmpty!44540 () Bool)

(declare-fun mapDefault!44540 () ValueCell!13529)


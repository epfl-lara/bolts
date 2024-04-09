; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98266 () Bool)

(assert start!98266)

(declare-fun b_free!23931 () Bool)

(declare-fun b_next!23931 () Bool)

(assert (=> start!98266 (= b_free!23931 (not b_next!23931))))

(declare-fun tp!84498 () Bool)

(declare-fun b_and!38667 () Bool)

(assert (=> start!98266 (= tp!84498 b_and!38667)))

(declare-fun b!1131415 () Bool)

(declare-fun res!755922 () Bool)

(declare-fun e!643940 () Bool)

(assert (=> b!1131415 (=> (not res!755922) (not e!643940))))

(declare-datatypes ((array!73740 0))(
  ( (array!73741 (arr!35519 (Array (_ BitVec 32) (_ BitVec 64))) (size!36056 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73740)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((V!43075 0))(
  ( (V!43076 (val!14287 Int)) )
))
(declare-datatypes ((ValueCell!13521 0))(
  ( (ValueCellFull!13521 (v!16921 V!43075)) (EmptyCell!13521) )
))
(declare-datatypes ((array!73742 0))(
  ( (array!73743 (arr!35520 (Array (_ BitVec 32) ValueCell!13521)) (size!36057 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73742)

(assert (=> b!1131415 (= res!755922 (and (= (size!36057 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36056 _keys!1208) (size!36057 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun bm!48643 () Bool)

(declare-fun call!48652 () Bool)

(declare-fun call!48653 () Bool)

(assert (=> bm!48643 (= call!48652 call!48653)))

(declare-fun bm!48644 () Bool)

(declare-datatypes ((tuple2!18096 0))(
  ( (tuple2!18097 (_1!9058 (_ BitVec 64)) (_2!9058 V!43075)) )
))
(declare-datatypes ((List!24911 0))(
  ( (Nil!24908) (Cons!24907 (h!26116 tuple2!18096) (t!35841 List!24911)) )
))
(declare-datatypes ((ListLongMap!16077 0))(
  ( (ListLongMap!16078 (toList!8054 List!24911)) )
))
(declare-fun call!48651 () ListLongMap!16077)

(declare-fun call!48647 () ListLongMap!16077)

(assert (=> bm!48644 (= call!48651 call!48647)))

(declare-fun b!1131416 () Bool)

(declare-fun res!755931 () Bool)

(assert (=> b!1131416 (=> (not res!755931) (not e!643940))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1131416 (= res!755931 (validMask!0 mask!1564))))

(declare-fun b!1131417 () Bool)

(declare-fun e!643942 () Bool)

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1131417 (= e!643942 (bvsge (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000))))

(declare-fun e!643932 () Bool)

(assert (=> b!1131417 e!643932))

(declare-fun c!110141 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1131417 (= c!110141 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun zeroValue!944 () V!43075)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((Unit!37014 0))(
  ( (Unit!37015) )
))
(declare-fun lt!502525 () Unit!37014)

(declare-fun minValue!944 () V!43075)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!329 (array!73740 array!73742 (_ BitVec 32) (_ BitVec 32) V!43075 V!43075 (_ BitVec 64) (_ BitVec 32) Int) Unit!37014)

(assert (=> b!1131417 (= lt!502525 (lemmaListMapContainsThenArrayContainsFrom!329 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!502528 () Unit!37014)

(declare-fun e!643937 () Unit!37014)

(assert (=> b!1131417 (= lt!502528 e!643937)))

(declare-fun c!110138 () Bool)

(declare-fun lt!502529 () Bool)

(assert (=> b!1131417 (= c!110138 (and (not lt!502529) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1131417 (= lt!502529 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!44509 () Bool)

(declare-fun mapRes!44509 () Bool)

(assert (=> mapIsEmpty!44509 mapRes!44509))

(declare-fun c!110137 () Bool)

(declare-fun bm!48645 () Bool)

(declare-fun call!48646 () Unit!37014)

(declare-fun lt!502535 () ListLongMap!16077)

(declare-fun addStillContains!718 (ListLongMap!16077 (_ BitVec 64) V!43075 (_ BitVec 64)) Unit!37014)

(assert (=> bm!48645 (= call!48646 (addStillContains!718 lt!502535 (ite (or c!110138 c!110137) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110138 c!110137) zeroValue!944 minValue!944) k0!934))))

(declare-fun bm!48646 () Bool)

(declare-fun call!48648 () ListLongMap!16077)

(declare-fun lt!502537 () array!73740)

(declare-fun lt!502530 () array!73742)

(declare-fun getCurrentListMapNoExtraKeys!4506 (array!73740 array!73742 (_ BitVec 32) (_ BitVec 32) V!43075 V!43075 (_ BitVec 32) Int) ListLongMap!16077)

(assert (=> bm!48646 (= call!48648 (getCurrentListMapNoExtraKeys!4506 lt!502537 lt!502530 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!48649 () ListLongMap!16077)

(declare-fun bm!48647 () Bool)

(assert (=> bm!48647 (= call!48649 (getCurrentListMapNoExtraKeys!4506 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131418 () Bool)

(declare-fun e!643941 () Bool)

(declare-fun tp_is_empty!28461 () Bool)

(assert (=> b!1131418 (= e!643941 tp_is_empty!28461)))

(declare-fun b!1131419 () Bool)

(declare-fun e!643936 () Bool)

(declare-fun e!643933 () Bool)

(assert (=> b!1131419 (= e!643936 e!643933)))

(declare-fun res!755918 () Bool)

(assert (=> b!1131419 (=> res!755918 e!643933)))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1131419 (= res!755918 (not (= from!1455 i!673)))))

(declare-fun lt!502531 () ListLongMap!16077)

(assert (=> b!1131419 (= lt!502531 (getCurrentListMapNoExtraKeys!4506 lt!502537 lt!502530 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2578 (Int (_ BitVec 64)) V!43075)

(assert (=> b!1131419 (= lt!502530 (array!73743 (store (arr!35520 _values!996) i!673 (ValueCellFull!13521 (dynLambda!2578 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36057 _values!996)))))

(declare-fun lt!502536 () ListLongMap!16077)

(assert (=> b!1131419 (= lt!502536 (getCurrentListMapNoExtraKeys!4506 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun e!643935 () Bool)

(declare-fun b!1131420 () Bool)

(declare-fun -!1178 (ListLongMap!16077 (_ BitVec 64)) ListLongMap!16077)

(assert (=> b!1131420 (= e!643935 (= call!48648 (-!1178 call!48649 k0!934)))))

(declare-fun b!1131421 () Bool)

(declare-fun res!755927 () Bool)

(assert (=> b!1131421 (=> (not res!755927) (not e!643940))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1131421 (= res!755927 (validKeyInArray!0 k0!934))))

(declare-fun b!1131422 () Bool)

(assert (=> b!1131422 call!48652))

(declare-fun lt!502539 () Unit!37014)

(declare-fun call!48650 () Unit!37014)

(assert (=> b!1131422 (= lt!502539 call!48650)))

(declare-fun e!643929 () Unit!37014)

(assert (=> b!1131422 (= e!643929 lt!502539)))

(declare-fun b!1131423 () Bool)

(declare-fun e!643934 () Unit!37014)

(declare-fun lt!502534 () Unit!37014)

(assert (=> b!1131423 (= e!643934 lt!502534)))

(assert (=> b!1131423 (= lt!502534 call!48650)))

(assert (=> b!1131423 call!48652))

(declare-fun b!1131424 () Bool)

(declare-fun e!643943 () Bool)

(assert (=> b!1131424 (= e!643943 e!643942)))

(declare-fun res!755928 () Bool)

(assert (=> b!1131424 (=> res!755928 e!643942)))

(declare-fun contains!6546 (ListLongMap!16077 (_ BitVec 64)) Bool)

(assert (=> b!1131424 (= res!755928 (not (contains!6546 lt!502535 k0!934)))))

(assert (=> b!1131424 (= lt!502535 (getCurrentListMapNoExtraKeys!4506 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131425 () Bool)

(declare-fun e!643939 () Bool)

(assert (=> b!1131425 (= e!643939 tp_is_empty!28461)))

(declare-fun b!1131426 () Bool)

(declare-fun res!755929 () Bool)

(declare-fun e!643931 () Bool)

(assert (=> b!1131426 (=> (not res!755929) (not e!643931))))

(declare-datatypes ((List!24912 0))(
  ( (Nil!24909) (Cons!24908 (h!26117 (_ BitVec 64)) (t!35842 List!24912)) )
))
(declare-fun arrayNoDuplicates!0 (array!73740 (_ BitVec 32) List!24912) Bool)

(assert (=> b!1131426 (= res!755929 (arrayNoDuplicates!0 lt!502537 #b00000000000000000000000000000000 Nil!24909))))

(declare-fun bm!48648 () Bool)

(assert (=> bm!48648 (= call!48650 call!48646)))

(declare-fun lt!502538 () ListLongMap!16077)

(declare-fun bm!48649 () Bool)

(declare-fun +!3418 (ListLongMap!16077 tuple2!18096) ListLongMap!16077)

(assert (=> bm!48649 (= call!48647 (+!3418 (ite c!110138 lt!502538 lt!502535) (ite c!110138 (tuple2!18097 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944) (ite c!110137 (tuple2!18097 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18097 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)))))))

(declare-fun b!1131427 () Bool)

(assert (=> b!1131427 (= e!643931 (not e!643936))))

(declare-fun res!755925 () Bool)

(assert (=> b!1131427 (=> res!755925 e!643936)))

(assert (=> b!1131427 (= res!755925 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73740 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1131427 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!502527 () Unit!37014)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73740 (_ BitVec 64) (_ BitVec 32)) Unit!37014)

(assert (=> b!1131427 (= lt!502527 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1131428 () Bool)

(declare-fun res!755930 () Bool)

(assert (=> b!1131428 (=> (not res!755930) (not e!643940))))

(assert (=> b!1131428 (= res!755930 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24909))))

(declare-fun b!1131429 () Bool)

(declare-fun res!755923 () Bool)

(assert (=> b!1131429 (=> (not res!755923) (not e!643940))))

(assert (=> b!1131429 (= res!755923 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36056 _keys!1208))))))

(declare-fun b!1131430 () Bool)

(declare-fun res!755921 () Bool)

(assert (=> b!1131430 (=> (not res!755921) (not e!643940))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73740 (_ BitVec 32)) Bool)

(assert (=> b!1131430 (= res!755921 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1131431 () Bool)

(declare-fun c!110140 () Bool)

(assert (=> b!1131431 (= c!110140 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!502529))))

(assert (=> b!1131431 (= e!643929 e!643934)))

(declare-fun b!1131432 () Bool)

(declare-fun e!643930 () Bool)

(assert (=> b!1131432 (= e!643930 (and e!643939 mapRes!44509))))

(declare-fun condMapEmpty!44509 () Bool)

(declare-fun mapDefault!44509 () ValueCell!13521)

(assert (=> b!1131432 (= condMapEmpty!44509 (= (arr!35520 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13521)) mapDefault!44509)))))

(declare-fun b!1131433 () Bool)

(declare-fun res!755924 () Bool)

(assert (=> b!1131433 (=> (not res!755924) (not e!643940))))

(assert (=> b!1131433 (= res!755924 (= (select (arr!35519 _keys!1208) i!673) k0!934))))

(declare-fun b!1131434 () Bool)

(assert (=> b!1131434 (= e!643935 (= call!48648 call!48649))))

(declare-fun b!1131435 () Bool)

(declare-fun lt!502526 () Unit!37014)

(assert (=> b!1131435 (= e!643937 lt!502526)))

(declare-fun lt!502533 () Unit!37014)

(assert (=> b!1131435 (= lt!502533 call!48646)))

(assert (=> b!1131435 (= lt!502538 (+!3418 lt!502535 (tuple2!18097 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)))))

(assert (=> b!1131435 call!48653))

(assert (=> b!1131435 (= lt!502526 (addStillContains!718 lt!502538 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1131435 (contains!6546 call!48647 k0!934)))

(declare-fun bm!48650 () Bool)

(assert (=> bm!48650 (= call!48653 (contains!6546 (ite c!110138 lt!502538 call!48651) k0!934))))

(declare-fun b!1131436 () Bool)

(declare-fun Unit!37016 () Unit!37014)

(assert (=> b!1131436 (= e!643934 Unit!37016)))

(declare-fun b!1131437 () Bool)

(assert (=> b!1131437 (= e!643932 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun res!755926 () Bool)

(assert (=> start!98266 (=> (not res!755926) (not e!643940))))

(assert (=> start!98266 (= res!755926 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36056 _keys!1208))))))

(assert (=> start!98266 e!643940))

(assert (=> start!98266 tp_is_empty!28461))

(declare-fun array_inv!27112 (array!73740) Bool)

(assert (=> start!98266 (array_inv!27112 _keys!1208)))

(assert (=> start!98266 true))

(assert (=> start!98266 tp!84498))

(declare-fun array_inv!27113 (array!73742) Bool)

(assert (=> start!98266 (and (array_inv!27113 _values!996) e!643930)))

(declare-fun b!1131438 () Bool)

(assert (=> b!1131438 (= e!643933 e!643943)))

(declare-fun res!755920 () Bool)

(assert (=> b!1131438 (=> res!755920 e!643943)))

(assert (=> b!1131438 (= res!755920 (not (= (select (arr!35519 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1131438 e!643935))

(declare-fun c!110139 () Bool)

(assert (=> b!1131438 (= c!110139 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!502532 () Unit!37014)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!434 (array!73740 array!73742 (_ BitVec 32) (_ BitVec 32) V!43075 V!43075 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37014)

(assert (=> b!1131438 (= lt!502532 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!434 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44509 () Bool)

(declare-fun tp!84497 () Bool)

(assert (=> mapNonEmpty!44509 (= mapRes!44509 (and tp!84497 e!643941))))

(declare-fun mapRest!44509 () (Array (_ BitVec 32) ValueCell!13521))

(declare-fun mapValue!44509 () ValueCell!13521)

(declare-fun mapKey!44509 () (_ BitVec 32))

(assert (=> mapNonEmpty!44509 (= (arr!35520 _values!996) (store mapRest!44509 mapKey!44509 mapValue!44509))))

(declare-fun b!1131439 () Bool)

(assert (=> b!1131439 (= e!643940 e!643931)))

(declare-fun res!755919 () Bool)

(assert (=> b!1131439 (=> (not res!755919) (not e!643931))))

(assert (=> b!1131439 (= res!755919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!502537 mask!1564))))

(assert (=> b!1131439 (= lt!502537 (array!73741 (store (arr!35519 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36056 _keys!1208)))))

(declare-fun b!1131440 () Bool)

(assert (=> b!1131440 (= e!643937 e!643929)))

(assert (=> b!1131440 (= c!110137 (and (not lt!502529) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1131441 () Bool)

(assert (=> b!1131441 (= e!643932 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!502529) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and start!98266 res!755926) b!1131416))

(assert (= (and b!1131416 res!755931) b!1131415))

(assert (= (and b!1131415 res!755922) b!1131430))

(assert (= (and b!1131430 res!755921) b!1131428))

(assert (= (and b!1131428 res!755930) b!1131429))

(assert (= (and b!1131429 res!755923) b!1131421))

(assert (= (and b!1131421 res!755927) b!1131433))

(assert (= (and b!1131433 res!755924) b!1131439))

(assert (= (and b!1131439 res!755919) b!1131426))

(assert (= (and b!1131426 res!755929) b!1131427))

(assert (= (and b!1131427 (not res!755925)) b!1131419))

(assert (= (and b!1131419 (not res!755918)) b!1131438))

(assert (= (and b!1131438 c!110139) b!1131420))

(assert (= (and b!1131438 (not c!110139)) b!1131434))

(assert (= (or b!1131420 b!1131434) bm!48646))

(assert (= (or b!1131420 b!1131434) bm!48647))

(assert (= (and b!1131438 (not res!755920)) b!1131424))

(assert (= (and b!1131424 (not res!755928)) b!1131417))

(assert (= (and b!1131417 c!110138) b!1131435))

(assert (= (and b!1131417 (not c!110138)) b!1131440))

(assert (= (and b!1131440 c!110137) b!1131422))

(assert (= (and b!1131440 (not c!110137)) b!1131431))

(assert (= (and b!1131431 c!110140) b!1131423))

(assert (= (and b!1131431 (not c!110140)) b!1131436))

(assert (= (or b!1131422 b!1131423) bm!48648))

(assert (= (or b!1131422 b!1131423) bm!48644))

(assert (= (or b!1131422 b!1131423) bm!48643))

(assert (= (or b!1131435 bm!48643) bm!48650))

(assert (= (or b!1131435 bm!48648) bm!48645))

(assert (= (or b!1131435 bm!48644) bm!48649))

(assert (= (and b!1131417 c!110141) b!1131437))

(assert (= (and b!1131417 (not c!110141)) b!1131441))

(assert (= (and b!1131432 condMapEmpty!44509) mapIsEmpty!44509))

(assert (= (and b!1131432 (not condMapEmpty!44509)) mapNonEmpty!44509))

(get-info :version)

(assert (= (and mapNonEmpty!44509 ((_ is ValueCellFull!13521) mapValue!44509)) b!1131418))

(assert (= (and b!1131432 ((_ is ValueCellFull!13521) mapDefault!44509)) b!1131425))

(assert (= start!98266 b!1131432))

(declare-fun b_lambda!18935 () Bool)

(assert (=> (not b_lambda!18935) (not b!1131419)))

(declare-fun t!35840 () Bool)

(declare-fun tb!8751 () Bool)

(assert (=> (and start!98266 (= defaultEntry!1004 defaultEntry!1004) t!35840) tb!8751))

(declare-fun result!18055 () Bool)

(assert (=> tb!8751 (= result!18055 tp_is_empty!28461)))

(assert (=> b!1131419 t!35840))

(declare-fun b_and!38669 () Bool)

(assert (= b_and!38667 (and (=> t!35840 result!18055) b_and!38669)))

(declare-fun m!1044459 () Bool)

(assert (=> b!1131435 m!1044459))

(declare-fun m!1044461 () Bool)

(assert (=> b!1131435 m!1044461))

(declare-fun m!1044463 () Bool)

(assert (=> b!1131435 m!1044463))

(declare-fun m!1044465 () Bool)

(assert (=> b!1131426 m!1044465))

(declare-fun m!1044467 () Bool)

(assert (=> bm!48647 m!1044467))

(declare-fun m!1044469 () Bool)

(assert (=> b!1131416 m!1044469))

(declare-fun m!1044471 () Bool)

(assert (=> b!1131420 m!1044471))

(declare-fun m!1044473 () Bool)

(assert (=> start!98266 m!1044473))

(declare-fun m!1044475 () Bool)

(assert (=> start!98266 m!1044475))

(declare-fun m!1044477 () Bool)

(assert (=> bm!48650 m!1044477))

(declare-fun m!1044479 () Bool)

(assert (=> b!1131437 m!1044479))

(declare-fun m!1044481 () Bool)

(assert (=> b!1131428 m!1044481))

(declare-fun m!1044483 () Bool)

(assert (=> bm!48645 m!1044483))

(declare-fun m!1044485 () Bool)

(assert (=> b!1131417 m!1044485))

(declare-fun m!1044487 () Bool)

(assert (=> b!1131438 m!1044487))

(declare-fun m!1044489 () Bool)

(assert (=> b!1131438 m!1044489))

(declare-fun m!1044491 () Bool)

(assert (=> b!1131421 m!1044491))

(declare-fun m!1044493 () Bool)

(assert (=> bm!48646 m!1044493))

(declare-fun m!1044495 () Bool)

(assert (=> b!1131424 m!1044495))

(assert (=> b!1131424 m!1044467))

(declare-fun m!1044497 () Bool)

(assert (=> b!1131439 m!1044497))

(declare-fun m!1044499 () Bool)

(assert (=> b!1131439 m!1044499))

(declare-fun m!1044501 () Bool)

(assert (=> b!1131433 m!1044501))

(declare-fun m!1044503 () Bool)

(assert (=> bm!48649 m!1044503))

(declare-fun m!1044505 () Bool)

(assert (=> mapNonEmpty!44509 m!1044505))

(declare-fun m!1044507 () Bool)

(assert (=> b!1131430 m!1044507))

(declare-fun m!1044509 () Bool)

(assert (=> b!1131419 m!1044509))

(declare-fun m!1044511 () Bool)

(assert (=> b!1131419 m!1044511))

(declare-fun m!1044513 () Bool)

(assert (=> b!1131419 m!1044513))

(declare-fun m!1044515 () Bool)

(assert (=> b!1131419 m!1044515))

(declare-fun m!1044517 () Bool)

(assert (=> b!1131427 m!1044517))

(declare-fun m!1044519 () Bool)

(assert (=> b!1131427 m!1044519))

(check-sat (not b!1131426) (not b!1131437) (not bm!48649) (not bm!48650) b_and!38669 (not b!1131424) (not bm!48646) (not b!1131428) (not b!1131430) (not start!98266) (not b!1131416) (not b!1131427) (not b!1131417) (not b!1131420) (not b!1131435) (not b!1131438) (not b_lambda!18935) (not b!1131419) (not bm!48645) (not bm!48647) tp_is_empty!28461 (not b_next!23931) (not b!1131421) (not mapNonEmpty!44509) (not b!1131439))
(check-sat b_and!38669 (not b_next!23931))

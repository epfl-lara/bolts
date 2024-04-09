; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98392 () Bool)

(assert start!98392)

(declare-fun b_free!23961 () Bool)

(declare-fun b_next!23961 () Bool)

(assert (=> start!98392 (= b_free!23961 (not b_next!23961))))

(declare-fun tp!84595 () Bool)

(declare-fun b_and!38785 () Bool)

(assert (=> start!98392 (= tp!84595 b_and!38785)))

(declare-fun b!1133369 () Bool)

(declare-fun e!645074 () Bool)

(declare-fun tp_is_empty!28491 () Bool)

(assert (=> b!1133369 (= e!645074 tp_is_empty!28491)))

(declare-fun b!1133370 () Bool)

(declare-fun e!645070 () Bool)

(declare-fun e!645069 () Bool)

(assert (=> b!1133370 (= e!645070 e!645069)))

(declare-fun res!756851 () Bool)

(assert (=> b!1133370 (=> res!756851 e!645069)))

(declare-datatypes ((V!43115 0))(
  ( (V!43116 (val!14302 Int)) )
))
(declare-datatypes ((tuple2!18126 0))(
  ( (tuple2!18127 (_1!9073 (_ BitVec 64)) (_2!9073 V!43115)) )
))
(declare-datatypes ((List!24938 0))(
  ( (Nil!24935) (Cons!24934 (h!26143 tuple2!18126) (t!35898 List!24938)) )
))
(declare-datatypes ((ListLongMap!16107 0))(
  ( (ListLongMap!16108 (toList!8069 List!24938)) )
))
(declare-fun lt!503632 () ListLongMap!16107)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun contains!6560 (ListLongMap!16107 (_ BitVec 64)) Bool)

(assert (=> b!1133370 (= res!756851 (not (contains!6560 lt!503632 k0!934)))))

(declare-fun zeroValue!944 () V!43115)

(declare-datatypes ((array!73804 0))(
  ( (array!73805 (arr!35549 (Array (_ BitVec 32) (_ BitVec 64))) (size!36086 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73804)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13536 0))(
  ( (ValueCellFull!13536 (v!16940 V!43115)) (EmptyCell!13536) )
))
(declare-datatypes ((array!73806 0))(
  ( (array!73807 (arr!35550 (Array (_ BitVec 32) ValueCell!13536)) (size!36087 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73806)

(declare-fun minValue!944 () V!43115)

(declare-fun getCurrentListMapNoExtraKeys!4519 (array!73804 array!73806 (_ BitVec 32) (_ BitVec 32) V!43115 V!43115 (_ BitVec 32) Int) ListLongMap!16107)

(assert (=> b!1133370 (= lt!503632 (getCurrentListMapNoExtraKeys!4519 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133371 () Bool)

(declare-fun call!49073 () ListLongMap!16107)

(declare-fun e!645067 () Bool)

(declare-fun call!49078 () ListLongMap!16107)

(declare-fun -!1187 (ListLongMap!16107 (_ BitVec 64)) ListLongMap!16107)

(assert (=> b!1133371 (= e!645067 (= call!49073 (-!1187 call!49078 k0!934)))))

(declare-fun call!49077 () ListLongMap!16107)

(declare-fun lt!503626 () ListLongMap!16107)

(declare-fun bm!49070 () Bool)

(declare-fun c!110562 () Bool)

(declare-fun call!49074 () Bool)

(assert (=> bm!49070 (= call!49074 (contains!6560 (ite c!110562 lt!503626 call!49077) k0!934))))

(declare-fun b!1133372 () Bool)

(declare-fun e!645075 () Bool)

(declare-fun e!645066 () Bool)

(assert (=> b!1133372 (= e!645075 e!645066)))

(declare-fun res!756854 () Bool)

(assert (=> b!1133372 (=> (not res!756854) (not e!645066))))

(declare-fun lt!503629 () array!73804)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73804 (_ BitVec 32)) Bool)

(assert (=> b!1133372 (= res!756854 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!503629 mask!1564))))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1133372 (= lt!503629 (array!73805 (store (arr!35549 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36086 _keys!1208)))))

(declare-fun bm!49071 () Bool)

(declare-fun call!49076 () ListLongMap!16107)

(assert (=> bm!49071 (= call!49077 call!49076)))

(declare-fun b!1133373 () Bool)

(assert (=> b!1133373 (= e!645067 (= call!49078 call!49073))))

(declare-fun b!1133374 () Bool)

(declare-datatypes ((Unit!37079 0))(
  ( (Unit!37080) )
))
(declare-fun e!645072 () Unit!37079)

(declare-fun Unit!37081 () Unit!37079)

(assert (=> b!1133374 (= e!645072 Unit!37081)))

(declare-fun c!110560 () Bool)

(declare-fun bm!49072 () Bool)

(declare-fun +!3429 (ListLongMap!16107 tuple2!18126) ListLongMap!16107)

(assert (=> bm!49072 (= call!49076 (+!3429 lt!503632 (ite (or c!110562 c!110560) (tuple2!18127 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18127 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1133375 () Bool)

(declare-fun e!645079 () Unit!37079)

(declare-fun lt!503639 () Unit!37079)

(assert (=> b!1133375 (= e!645079 lt!503639)))

(declare-fun lt!503634 () Unit!37079)

(declare-fun call!49075 () Unit!37079)

(assert (=> b!1133375 (= lt!503634 call!49075)))

(assert (=> b!1133375 (= lt!503626 call!49076)))

(assert (=> b!1133375 call!49074))

(declare-fun addStillContains!728 (ListLongMap!16107 (_ BitVec 64) V!43115 (_ BitVec 64)) Unit!37079)

(assert (=> b!1133375 (= lt!503639 (addStillContains!728 lt!503626 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(assert (=> b!1133375 (contains!6560 (+!3429 lt!503626 (tuple2!18127 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun lt!503638 () Bool)

(declare-fun e!645073 () Bool)

(declare-fun b!1133376 () Bool)

(assert (=> b!1133376 (= e!645073 (ite (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000) (not lt!503638) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1133377 () Bool)

(declare-fun res!756857 () Bool)

(assert (=> b!1133377 (=> (not res!756857) (not e!645075))))

(assert (=> b!1133377 (= res!756857 (= (select (arr!35549 _keys!1208) i!673) k0!934))))

(declare-fun b!1133378 () Bool)

(declare-fun res!756856 () Bool)

(assert (=> b!1133378 (=> (not res!756856) (not e!645075))))

(assert (=> b!1133378 (= res!756856 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36086 _keys!1208))))))

(declare-fun b!1133379 () Bool)

(declare-fun call!49080 () Bool)

(assert (=> b!1133379 call!49080))

(declare-fun lt!503628 () Unit!37079)

(declare-fun call!49079 () Unit!37079)

(assert (=> b!1133379 (= lt!503628 call!49079)))

(declare-fun e!645068 () Unit!37079)

(assert (=> b!1133379 (= e!645068 lt!503628)))

(declare-fun b!1133380 () Bool)

(declare-fun res!756855 () Bool)

(assert (=> b!1133380 (=> (not res!756855) (not e!645075))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1133380 (= res!756855 (validMask!0 mask!1564))))

(declare-fun b!1133381 () Bool)

(declare-fun e!645071 () Bool)

(assert (=> b!1133381 (= e!645066 (not e!645071))))

(declare-fun res!756846 () Bool)

(assert (=> b!1133381 (=> res!756846 e!645071)))

(assert (=> b!1133381 (= res!756846 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73804 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1133381 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!503635 () Unit!37079)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73804 (_ BitVec 64) (_ BitVec 32)) Unit!37079)

(assert (=> b!1133381 (= lt!503635 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun bm!49073 () Bool)

(assert (=> bm!49073 (= call!49079 call!49075)))

(declare-fun b!1133382 () Bool)

(declare-fun e!645080 () Bool)

(declare-fun mapRes!44561 () Bool)

(assert (=> b!1133382 (= e!645080 (and e!645074 mapRes!44561))))

(declare-fun condMapEmpty!44561 () Bool)

(declare-fun mapDefault!44561 () ValueCell!13536)

(assert (=> b!1133382 (= condMapEmpty!44561 (= (arr!35550 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13536)) mapDefault!44561)))))

(declare-fun e!645076 () Bool)

(declare-fun b!1133383 () Bool)

(assert (=> b!1133383 (= e!645076 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133384 () Bool)

(assert (=> b!1133384 (= e!645073 (arrayContainsKey!0 _keys!1208 k0!934 (bvadd #b00000000000000000000000000000001 from!1455)))))

(declare-fun b!1133385 () Bool)

(declare-fun lt!503630 () Unit!37079)

(assert (=> b!1133385 (= e!645072 lt!503630)))

(assert (=> b!1133385 (= lt!503630 call!49079)))

(assert (=> b!1133385 call!49080))

(declare-fun b!1133386 () Bool)

(declare-fun e!645077 () Bool)

(assert (=> b!1133386 (= e!645077 tp_is_empty!28491)))

(declare-fun bm!49074 () Bool)

(assert (=> bm!49074 (= call!49075 (addStillContains!728 lt!503632 (ite (or c!110562 c!110560) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110562 c!110560) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1133387 () Bool)

(declare-fun c!110558 () Bool)

(assert (=> b!1133387 (= c!110558 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!503638))))

(assert (=> b!1133387 (= e!645068 e!645072)))

(declare-fun b!1133388 () Bool)

(declare-fun e!645081 () Bool)

(assert (=> b!1133388 (= e!645071 e!645081)))

(declare-fun res!756853 () Bool)

(assert (=> b!1133388 (=> res!756853 e!645081)))

(assert (=> b!1133388 (= res!756853 (not (= from!1455 i!673)))))

(declare-fun lt!503631 () ListLongMap!16107)

(declare-fun lt!503637 () array!73806)

(assert (=> b!1133388 (= lt!503631 (getCurrentListMapNoExtraKeys!4519 lt!503629 lt!503637 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2588 (Int (_ BitVec 64)) V!43115)

(assert (=> b!1133388 (= lt!503637 (array!73807 (store (arr!35550 _values!996) i!673 (ValueCellFull!13536 (dynLambda!2588 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36087 _values!996)))))

(declare-fun lt!503633 () ListLongMap!16107)

(assert (=> b!1133388 (= lt!503633 (getCurrentListMapNoExtraKeys!4519 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!49075 () Bool)

(assert (=> bm!49075 (= call!49080 call!49074)))

(declare-fun b!1133389 () Bool)

(assert (=> b!1133389 (= e!645069 true)))

(assert (=> b!1133389 e!645076))

(declare-fun res!756850 () Bool)

(assert (=> b!1133389 (=> (not res!756850) (not e!645076))))

(assert (=> b!1133389 (= res!756850 e!645073)))

(declare-fun c!110561 () Bool)

(assert (=> b!1133389 (= c!110561 (and (not (= k0!934 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!934 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!503636 () Unit!37079)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!337 (array!73804 array!73806 (_ BitVec 32) (_ BitVec 32) V!43115 V!43115 (_ BitVec 64) (_ BitVec 32) Int) Unit!37079)

(assert (=> b!1133389 (= lt!503636 (lemmaListMapContainsThenArrayContainsFrom!337 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun lt!503640 () Unit!37079)

(assert (=> b!1133389 (= lt!503640 e!645079)))

(assert (=> b!1133389 (= c!110562 (and (not lt!503638) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1133389 (= lt!503638 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1133390 () Bool)

(declare-fun res!756844 () Bool)

(assert (=> b!1133390 (=> (not res!756844) (not e!645066))))

(declare-datatypes ((List!24939 0))(
  ( (Nil!24936) (Cons!24935 (h!26144 (_ BitVec 64)) (t!35899 List!24939)) )
))
(declare-fun arrayNoDuplicates!0 (array!73804 (_ BitVec 32) List!24939) Bool)

(assert (=> b!1133390 (= res!756844 (arrayNoDuplicates!0 lt!503629 #b00000000000000000000000000000000 Nil!24936))))

(declare-fun b!1133391 () Bool)

(declare-fun res!756847 () Bool)

(assert (=> b!1133391 (=> (not res!756847) (not e!645075))))

(assert (=> b!1133391 (= res!756847 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24936))))

(declare-fun b!1133392 () Bool)

(assert (=> b!1133392 (= e!645079 e!645068)))

(assert (=> b!1133392 (= c!110560 (and (not lt!503638) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1133393 () Bool)

(declare-fun res!756845 () Bool)

(assert (=> b!1133393 (=> (not res!756845) (not e!645075))))

(assert (=> b!1133393 (= res!756845 (and (= (size!36087 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36086 _keys!1208) (size!36087 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1133394 () Bool)

(assert (=> b!1133394 (= e!645081 e!645070)))

(declare-fun res!756852 () Bool)

(assert (=> b!1133394 (=> res!756852 e!645070)))

(assert (=> b!1133394 (= res!756852 (not (= (select (arr!35549 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1133394 e!645067))

(declare-fun c!110559 () Bool)

(assert (=> b!1133394 (= c!110559 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!503627 () Unit!37079)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!444 (array!73804 array!73806 (_ BitVec 32) (_ BitVec 32) V!43115 V!43115 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37079)

(assert (=> b!1133394 (= lt!503627 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!444 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1133395 () Bool)

(declare-fun res!756849 () Bool)

(assert (=> b!1133395 (=> (not res!756849) (not e!645075))))

(assert (=> b!1133395 (= res!756849 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1133396 () Bool)

(declare-fun res!756848 () Bool)

(assert (=> b!1133396 (=> (not res!756848) (not e!645075))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1133396 (= res!756848 (validKeyInArray!0 k0!934))))

(declare-fun bm!49076 () Bool)

(assert (=> bm!49076 (= call!49073 (getCurrentListMapNoExtraKeys!4519 (ite c!110559 lt!503629 _keys!1208) (ite c!110559 lt!503637 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44561 () Bool)

(declare-fun tp!84594 () Bool)

(assert (=> mapNonEmpty!44561 (= mapRes!44561 (and tp!84594 e!645077))))

(declare-fun mapRest!44561 () (Array (_ BitVec 32) ValueCell!13536))

(declare-fun mapValue!44561 () ValueCell!13536)

(declare-fun mapKey!44561 () (_ BitVec 32))

(assert (=> mapNonEmpty!44561 (= (arr!35550 _values!996) (store mapRest!44561 mapKey!44561 mapValue!44561))))

(declare-fun bm!49077 () Bool)

(assert (=> bm!49077 (= call!49078 (getCurrentListMapNoExtraKeys!4519 (ite c!110559 _keys!1208 lt!503629) (ite c!110559 _values!996 lt!503637) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapIsEmpty!44561 () Bool)

(assert (=> mapIsEmpty!44561 mapRes!44561))

(declare-fun res!756843 () Bool)

(assert (=> start!98392 (=> (not res!756843) (not e!645075))))

(assert (=> start!98392 (= res!756843 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36086 _keys!1208))))))

(assert (=> start!98392 e!645075))

(assert (=> start!98392 tp_is_empty!28491))

(declare-fun array_inv!27132 (array!73804) Bool)

(assert (=> start!98392 (array_inv!27132 _keys!1208)))

(assert (=> start!98392 true))

(assert (=> start!98392 tp!84595))

(declare-fun array_inv!27133 (array!73806) Bool)

(assert (=> start!98392 (and (array_inv!27133 _values!996) e!645080)))

(assert (= (and start!98392 res!756843) b!1133380))

(assert (= (and b!1133380 res!756855) b!1133393))

(assert (= (and b!1133393 res!756845) b!1133395))

(assert (= (and b!1133395 res!756849) b!1133391))

(assert (= (and b!1133391 res!756847) b!1133378))

(assert (= (and b!1133378 res!756856) b!1133396))

(assert (= (and b!1133396 res!756848) b!1133377))

(assert (= (and b!1133377 res!756857) b!1133372))

(assert (= (and b!1133372 res!756854) b!1133390))

(assert (= (and b!1133390 res!756844) b!1133381))

(assert (= (and b!1133381 (not res!756846)) b!1133388))

(assert (= (and b!1133388 (not res!756853)) b!1133394))

(assert (= (and b!1133394 c!110559) b!1133371))

(assert (= (and b!1133394 (not c!110559)) b!1133373))

(assert (= (or b!1133371 b!1133373) bm!49077))

(assert (= (or b!1133371 b!1133373) bm!49076))

(assert (= (and b!1133394 (not res!756852)) b!1133370))

(assert (= (and b!1133370 (not res!756851)) b!1133389))

(assert (= (and b!1133389 c!110562) b!1133375))

(assert (= (and b!1133389 (not c!110562)) b!1133392))

(assert (= (and b!1133392 c!110560) b!1133379))

(assert (= (and b!1133392 (not c!110560)) b!1133387))

(assert (= (and b!1133387 c!110558) b!1133385))

(assert (= (and b!1133387 (not c!110558)) b!1133374))

(assert (= (or b!1133379 b!1133385) bm!49073))

(assert (= (or b!1133379 b!1133385) bm!49071))

(assert (= (or b!1133379 b!1133385) bm!49075))

(assert (= (or b!1133375 bm!49075) bm!49070))

(assert (= (or b!1133375 bm!49073) bm!49074))

(assert (= (or b!1133375 bm!49071) bm!49072))

(assert (= (and b!1133389 c!110561) b!1133384))

(assert (= (and b!1133389 (not c!110561)) b!1133376))

(assert (= (and b!1133389 res!756850) b!1133383))

(assert (= (and b!1133382 condMapEmpty!44561) mapIsEmpty!44561))

(assert (= (and b!1133382 (not condMapEmpty!44561)) mapNonEmpty!44561))

(get-info :version)

(assert (= (and mapNonEmpty!44561 ((_ is ValueCellFull!13536) mapValue!44561)) b!1133386))

(assert (= (and b!1133382 ((_ is ValueCellFull!13536) mapDefault!44561)) b!1133369))

(assert (= start!98392 b!1133382))

(declare-fun b_lambda!19085 () Bool)

(assert (=> (not b_lambda!19085) (not b!1133388)))

(declare-fun t!35897 () Bool)

(declare-fun tb!8781 () Bool)

(assert (=> (and start!98392 (= defaultEntry!1004 defaultEntry!1004) t!35897) tb!8781))

(declare-fun result!18119 () Bool)

(assert (=> tb!8781 (= result!18119 tp_is_empty!28491)))

(assert (=> b!1133388 t!35897))

(declare-fun b_and!38787 () Bool)

(assert (= b_and!38785 (and (=> t!35897 result!18119) b_and!38787)))

(declare-fun m!1046503 () Bool)

(assert (=> b!1133394 m!1046503))

(declare-fun m!1046505 () Bool)

(assert (=> b!1133394 m!1046505))

(declare-fun m!1046507 () Bool)

(assert (=> b!1133389 m!1046507))

(declare-fun m!1046509 () Bool)

(assert (=> bm!49076 m!1046509))

(declare-fun m!1046511 () Bool)

(assert (=> b!1133391 m!1046511))

(declare-fun m!1046513 () Bool)

(assert (=> b!1133377 m!1046513))

(declare-fun m!1046515 () Bool)

(assert (=> b!1133375 m!1046515))

(declare-fun m!1046517 () Bool)

(assert (=> b!1133375 m!1046517))

(assert (=> b!1133375 m!1046517))

(declare-fun m!1046519 () Bool)

(assert (=> b!1133375 m!1046519))

(declare-fun m!1046521 () Bool)

(assert (=> bm!49074 m!1046521))

(declare-fun m!1046523 () Bool)

(assert (=> b!1133371 m!1046523))

(declare-fun m!1046525 () Bool)

(assert (=> b!1133390 m!1046525))

(declare-fun m!1046527 () Bool)

(assert (=> b!1133381 m!1046527))

(declare-fun m!1046529 () Bool)

(assert (=> b!1133381 m!1046529))

(declare-fun m!1046531 () Bool)

(assert (=> bm!49077 m!1046531))

(declare-fun m!1046533 () Bool)

(assert (=> bm!49072 m!1046533))

(declare-fun m!1046535 () Bool)

(assert (=> b!1133380 m!1046535))

(declare-fun m!1046537 () Bool)

(assert (=> b!1133370 m!1046537))

(declare-fun m!1046539 () Bool)

(assert (=> b!1133370 m!1046539))

(declare-fun m!1046541 () Bool)

(assert (=> b!1133396 m!1046541))

(declare-fun m!1046543 () Bool)

(assert (=> b!1133383 m!1046543))

(declare-fun m!1046545 () Bool)

(assert (=> start!98392 m!1046545))

(declare-fun m!1046547 () Bool)

(assert (=> start!98392 m!1046547))

(declare-fun m!1046549 () Bool)

(assert (=> mapNonEmpty!44561 m!1046549))

(declare-fun m!1046551 () Bool)

(assert (=> b!1133372 m!1046551))

(declare-fun m!1046553 () Bool)

(assert (=> b!1133372 m!1046553))

(declare-fun m!1046555 () Bool)

(assert (=> bm!49070 m!1046555))

(declare-fun m!1046557 () Bool)

(assert (=> b!1133395 m!1046557))

(declare-fun m!1046559 () Bool)

(assert (=> b!1133388 m!1046559))

(declare-fun m!1046561 () Bool)

(assert (=> b!1133388 m!1046561))

(declare-fun m!1046563 () Bool)

(assert (=> b!1133388 m!1046563))

(declare-fun m!1046565 () Bool)

(assert (=> b!1133388 m!1046565))

(assert (=> b!1133384 m!1046543))

(check-sat (not bm!49077) (not b!1133375) (not b!1133389) (not b!1133395) tp_is_empty!28491 (not b!1133381) (not bm!49072) (not bm!49076) (not b!1133396) (not b!1133383) (not b!1133372) (not b!1133384) (not b_next!23961) b_and!38787 (not b!1133380) (not b!1133370) (not b!1133371) (not bm!49074) (not b!1133388) (not b!1133394) (not bm!49070) (not start!98392) (not mapNonEmpty!44561) (not b_lambda!19085) (not b!1133390) (not b!1133391))
(check-sat b_and!38787 (not b_next!23961))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98248 () Bool)

(assert start!98248)

(declare-fun b_free!23913 () Bool)

(declare-fun b_next!23913 () Bool)

(assert (=> start!98248 (= b_free!23913 (not b_next!23913))))

(declare-fun tp!84443 () Bool)

(declare-fun b_and!38631 () Bool)

(assert (=> start!98248 (= tp!84443 b_and!38631)))

(declare-fun b!1130690 () Bool)

(declare-fun e!643531 () Bool)

(declare-fun e!643534 () Bool)

(assert (=> b!1130690 (= e!643531 (not e!643534))))

(declare-fun res!755531 () Bool)

(assert (=> b!1130690 (=> res!755531 e!643534)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1130690 (= res!755531 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73704 0))(
  ( (array!73705 (arr!35501 (Array (_ BitVec 32) (_ BitVec 64))) (size!36038 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73704)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73704 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1130690 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36993 0))(
  ( (Unit!36994) )
))
(declare-fun lt!502133 () Unit!36993)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73704 (_ BitVec 64) (_ BitVec 32)) Unit!36993)

(assert (=> b!1130690 (= lt!502133 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-datatypes ((V!43051 0))(
  ( (V!43052 (val!14278 Int)) )
))
(declare-fun zeroValue!944 () V!43051)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!18078 0))(
  ( (tuple2!18079 (_1!9049 (_ BitVec 64)) (_2!9049 V!43051)) )
))
(declare-datatypes ((List!24897 0))(
  ( (Nil!24894) (Cons!24893 (h!26102 tuple2!18078) (t!35809 List!24897)) )
))
(declare-datatypes ((ListLongMap!16059 0))(
  ( (ListLongMap!16060 (toList!8045 List!24897)) )
))
(declare-fun call!48431 () ListLongMap!16059)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13512 0))(
  ( (ValueCellFull!13512 (v!16912 V!43051)) (EmptyCell!13512) )
))
(declare-datatypes ((array!73706 0))(
  ( (array!73707 (arr!35502 (Array (_ BitVec 32) ValueCell!13512)) (size!36039 (_ BitVec 32))) )
))
(declare-fun lt!502124 () array!73706)

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!502126 () array!73704)

(declare-fun bm!48427 () Bool)

(declare-fun minValue!944 () V!43051)

(declare-fun getCurrentListMapNoExtraKeys!4498 (array!73704 array!73706 (_ BitVec 32) (_ BitVec 32) V!43051 V!43051 (_ BitVec 32) Int) ListLongMap!16059)

(assert (=> bm!48427 (= call!48431 (getCurrentListMapNoExtraKeys!4498 lt!502126 lt!502124 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48428 () Bool)

(declare-fun lt!502121 () ListLongMap!16059)

(declare-fun call!48433 () ListLongMap!16059)

(declare-fun c!110024 () Bool)

(declare-fun c!110026 () Bool)

(declare-fun +!3412 (ListLongMap!16059 tuple2!18078) ListLongMap!16059)

(assert (=> bm!48428 (= call!48433 (+!3412 lt!502121 (ite (or c!110026 c!110024) (tuple2!18079 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1130691 () Bool)

(declare-fun e!643533 () Bool)

(assert (=> b!1130691 (= e!643533 true)))

(declare-fun lt!502134 () Bool)

(declare-fun _values!996 () array!73706)

(declare-fun contains!6539 (ListLongMap!16059 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!4449 (array!73704 array!73706 (_ BitVec 32) (_ BitVec 32) V!43051 V!43051 (_ BitVec 32) Int) ListLongMap!16059)

(assert (=> b!1130691 (= lt!502134 (contains!6539 (getCurrentListMap!4449 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun bm!48429 () Bool)

(declare-fun call!48435 () Unit!36993)

(declare-fun lt!502127 () ListLongMap!16059)

(declare-fun addStillContains!712 (ListLongMap!16059 (_ BitVec 64) V!43051 (_ BitVec 64)) Unit!36993)

(assert (=> bm!48429 (= call!48435 (addStillContains!712 (ite c!110026 lt!502127 lt!502121) (ite c!110026 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!110024 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!110026 minValue!944 (ite c!110024 zeroValue!944 minValue!944)) k0!934))))

(declare-fun b!1130693 () Bool)

(declare-fun res!755532 () Bool)

(declare-fun e!643536 () Bool)

(assert (=> b!1130693 (=> (not res!755532) (not e!643536))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1130693 (= res!755532 (validKeyInArray!0 k0!934))))

(declare-fun b!1130694 () Bool)

(declare-fun e!643538 () Unit!36993)

(declare-fun lt!502130 () Unit!36993)

(assert (=> b!1130694 (= e!643538 lt!502130)))

(declare-fun lt!502131 () Unit!36993)

(assert (=> b!1130694 (= lt!502131 (addStillContains!712 lt!502121 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (=> b!1130694 (= lt!502127 call!48433)))

(declare-fun call!48437 () Bool)

(assert (=> b!1130694 call!48437))

(assert (=> b!1130694 (= lt!502130 call!48435)))

(assert (=> b!1130694 (contains!6539 (+!3412 lt!502127 (tuple2!18079 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun b!1130695 () Bool)

(declare-fun e!643525 () Bool)

(declare-fun tp_is_empty!28443 () Bool)

(assert (=> b!1130695 (= e!643525 tp_is_empty!28443)))

(declare-fun bm!48430 () Bool)

(declare-fun call!48436 () Bool)

(assert (=> bm!48430 (= call!48436 call!48437)))

(declare-fun mapNonEmpty!44482 () Bool)

(declare-fun mapRes!44482 () Bool)

(declare-fun tp!84444 () Bool)

(assert (=> mapNonEmpty!44482 (= mapRes!44482 (and tp!84444 e!643525))))

(declare-fun mapValue!44482 () ValueCell!13512)

(declare-fun mapKey!44482 () (_ BitVec 32))

(declare-fun mapRest!44482 () (Array (_ BitVec 32) ValueCell!13512))

(assert (=> mapNonEmpty!44482 (= (arr!35502 _values!996) (store mapRest!44482 mapKey!44482 mapValue!44482))))

(declare-fun mapIsEmpty!44482 () Bool)

(assert (=> mapIsEmpty!44482 mapRes!44482))

(declare-fun b!1130696 () Bool)

(assert (=> b!1130696 (= e!643536 e!643531)))

(declare-fun res!755526 () Bool)

(assert (=> b!1130696 (=> (not res!755526) (not e!643531))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73704 (_ BitVec 32)) Bool)

(assert (=> b!1130696 (= res!755526 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!502126 mask!1564))))

(assert (=> b!1130696 (= lt!502126 (array!73705 (store (arr!35501 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36038 _keys!1208)))))

(declare-fun b!1130697 () Bool)

(declare-fun e!643532 () Unit!36993)

(declare-fun lt!502123 () Unit!36993)

(assert (=> b!1130697 (= e!643532 lt!502123)))

(declare-fun call!48432 () Unit!36993)

(assert (=> b!1130697 (= lt!502123 call!48432)))

(assert (=> b!1130697 call!48436))

(declare-fun e!643530 () Bool)

(declare-fun call!48430 () ListLongMap!16059)

(declare-fun b!1130698 () Bool)

(declare-fun -!1173 (ListLongMap!16059 (_ BitVec 64)) ListLongMap!16059)

(assert (=> b!1130698 (= e!643530 (= call!48431 (-!1173 call!48430 k0!934)))))

(declare-fun b!1130699 () Bool)

(declare-fun e!643528 () Bool)

(assert (=> b!1130699 (= e!643528 tp_is_empty!28443)))

(declare-fun b!1130692 () Bool)

(declare-fun e!643537 () Unit!36993)

(assert (=> b!1130692 (= e!643538 e!643537)))

(declare-fun lt!502120 () Bool)

(assert (=> b!1130692 (= c!110024 (and (not lt!502120) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun res!755523 () Bool)

(assert (=> start!98248 (=> (not res!755523) (not e!643536))))

(assert (=> start!98248 (= res!755523 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36038 _keys!1208))))))

(assert (=> start!98248 e!643536))

(assert (=> start!98248 tp_is_empty!28443))

(declare-fun array_inv!27104 (array!73704) Bool)

(assert (=> start!98248 (array_inv!27104 _keys!1208)))

(assert (=> start!98248 true))

(assert (=> start!98248 tp!84443))

(declare-fun e!643527 () Bool)

(declare-fun array_inv!27105 (array!73706) Bool)

(assert (=> start!98248 (and (array_inv!27105 _values!996) e!643527)))

(declare-fun b!1130700 () Bool)

(declare-fun c!110027 () Bool)

(assert (=> b!1130700 (= c!110027 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!502120))))

(assert (=> b!1130700 (= e!643537 e!643532)))

(declare-fun bm!48431 () Bool)

(declare-fun call!48434 () ListLongMap!16059)

(assert (=> bm!48431 (= call!48434 call!48433)))

(declare-fun b!1130701 () Bool)

(assert (=> b!1130701 (= e!643530 (= call!48431 call!48430))))

(declare-fun b!1130702 () Bool)

(declare-fun e!643535 () Bool)

(declare-fun e!643529 () Bool)

(assert (=> b!1130702 (= e!643535 e!643529)))

(declare-fun res!755518 () Bool)

(assert (=> b!1130702 (=> res!755518 e!643529)))

(assert (=> b!1130702 (= res!755518 (not (= (select (arr!35501 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1130702 e!643530))

(declare-fun c!110025 () Bool)

(assert (=> b!1130702 (= c!110025 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!502132 () Unit!36993)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!427 (array!73704 array!73706 (_ BitVec 32) (_ BitVec 32) V!43051 V!43051 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36993)

(assert (=> b!1130702 (= lt!502132 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!427 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun bm!48432 () Bool)

(assert (=> bm!48432 (= call!48437 (contains!6539 (ite c!110026 lt!502127 call!48434) k0!934))))

(declare-fun bm!48433 () Bool)

(assert (=> bm!48433 (= call!48430 (getCurrentListMapNoExtraKeys!4498 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130703 () Bool)

(declare-fun res!755530 () Bool)

(assert (=> b!1130703 (=> (not res!755530) (not e!643531))))

(declare-datatypes ((List!24898 0))(
  ( (Nil!24895) (Cons!24894 (h!26103 (_ BitVec 64)) (t!35810 List!24898)) )
))
(declare-fun arrayNoDuplicates!0 (array!73704 (_ BitVec 32) List!24898) Bool)

(assert (=> b!1130703 (= res!755530 (arrayNoDuplicates!0 lt!502126 #b00000000000000000000000000000000 Nil!24895))))

(declare-fun b!1130704 () Bool)

(declare-fun Unit!36995 () Unit!36993)

(assert (=> b!1130704 (= e!643532 Unit!36995)))

(declare-fun b!1130705 () Bool)

(declare-fun res!755519 () Bool)

(assert (=> b!1130705 (=> (not res!755519) (not e!643536))))

(assert (=> b!1130705 (= res!755519 (and (= (size!36039 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36038 _keys!1208) (size!36039 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1130706 () Bool)

(assert (=> b!1130706 call!48436))

(declare-fun lt!502129 () Unit!36993)

(assert (=> b!1130706 (= lt!502129 call!48432)))

(assert (=> b!1130706 (= e!643537 lt!502129)))

(declare-fun b!1130707 () Bool)

(declare-fun res!755524 () Bool)

(assert (=> b!1130707 (=> (not res!755524) (not e!643536))))

(assert (=> b!1130707 (= res!755524 (= (select (arr!35501 _keys!1208) i!673) k0!934))))

(declare-fun b!1130708 () Bool)

(declare-fun res!755520 () Bool)

(assert (=> b!1130708 (=> (not res!755520) (not e!643536))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1130708 (= res!755520 (validMask!0 mask!1564))))

(declare-fun b!1130709 () Bool)

(declare-fun e!643524 () Bool)

(assert (=> b!1130709 (= e!643524 e!643533)))

(declare-fun res!755529 () Bool)

(assert (=> b!1130709 (=> res!755529 e!643533)))

(assert (=> b!1130709 (= res!755529 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36038 _keys!1208))))))

(declare-fun lt!502125 () Unit!36993)

(assert (=> b!1130709 (= lt!502125 e!643538)))

(assert (=> b!1130709 (= c!110026 (and (not lt!502120) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1130709 (= lt!502120 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun bm!48434 () Bool)

(assert (=> bm!48434 (= call!48432 call!48435)))

(declare-fun b!1130710 () Bool)

(declare-fun res!755521 () Bool)

(assert (=> b!1130710 (=> (not res!755521) (not e!643536))))

(assert (=> b!1130710 (= res!755521 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1130711 () Bool)

(assert (=> b!1130711 (= e!643527 (and e!643528 mapRes!44482))))

(declare-fun condMapEmpty!44482 () Bool)

(declare-fun mapDefault!44482 () ValueCell!13512)

(assert (=> b!1130711 (= condMapEmpty!44482 (= (arr!35502 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13512)) mapDefault!44482)))))

(declare-fun b!1130712 () Bool)

(assert (=> b!1130712 (= e!643529 e!643524)))

(declare-fun res!755527 () Bool)

(assert (=> b!1130712 (=> res!755527 e!643524)))

(assert (=> b!1130712 (= res!755527 (not (contains!6539 lt!502121 k0!934)))))

(assert (=> b!1130712 (= lt!502121 (getCurrentListMapNoExtraKeys!4498 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1130713 () Bool)

(declare-fun res!755525 () Bool)

(assert (=> b!1130713 (=> (not res!755525) (not e!643536))))

(assert (=> b!1130713 (= res!755525 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36038 _keys!1208))))))

(declare-fun b!1130714 () Bool)

(declare-fun res!755522 () Bool)

(assert (=> b!1130714 (=> (not res!755522) (not e!643536))))

(assert (=> b!1130714 (= res!755522 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24895))))

(declare-fun b!1130715 () Bool)

(assert (=> b!1130715 (= e!643534 e!643535)))

(declare-fun res!755528 () Bool)

(assert (=> b!1130715 (=> res!755528 e!643535)))

(assert (=> b!1130715 (= res!755528 (not (= from!1455 i!673)))))

(declare-fun lt!502122 () ListLongMap!16059)

(assert (=> b!1130715 (= lt!502122 (getCurrentListMapNoExtraKeys!4498 lt!502126 lt!502124 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2573 (Int (_ BitVec 64)) V!43051)

(assert (=> b!1130715 (= lt!502124 (array!73707 (store (arr!35502 _values!996) i!673 (ValueCellFull!13512 (dynLambda!2573 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36039 _values!996)))))

(declare-fun lt!502128 () ListLongMap!16059)

(assert (=> b!1130715 (= lt!502128 (getCurrentListMapNoExtraKeys!4498 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(assert (= (and start!98248 res!755523) b!1130708))

(assert (= (and b!1130708 res!755520) b!1130705))

(assert (= (and b!1130705 res!755519) b!1130710))

(assert (= (and b!1130710 res!755521) b!1130714))

(assert (= (and b!1130714 res!755522) b!1130713))

(assert (= (and b!1130713 res!755525) b!1130693))

(assert (= (and b!1130693 res!755532) b!1130707))

(assert (= (and b!1130707 res!755524) b!1130696))

(assert (= (and b!1130696 res!755526) b!1130703))

(assert (= (and b!1130703 res!755530) b!1130690))

(assert (= (and b!1130690 (not res!755531)) b!1130715))

(assert (= (and b!1130715 (not res!755528)) b!1130702))

(assert (= (and b!1130702 c!110025) b!1130698))

(assert (= (and b!1130702 (not c!110025)) b!1130701))

(assert (= (or b!1130698 b!1130701) bm!48427))

(assert (= (or b!1130698 b!1130701) bm!48433))

(assert (= (and b!1130702 (not res!755518)) b!1130712))

(assert (= (and b!1130712 (not res!755527)) b!1130709))

(assert (= (and b!1130709 c!110026) b!1130694))

(assert (= (and b!1130709 (not c!110026)) b!1130692))

(assert (= (and b!1130692 c!110024) b!1130706))

(assert (= (and b!1130692 (not c!110024)) b!1130700))

(assert (= (and b!1130700 c!110027) b!1130697))

(assert (= (and b!1130700 (not c!110027)) b!1130704))

(assert (= (or b!1130706 b!1130697) bm!48434))

(assert (= (or b!1130706 b!1130697) bm!48431))

(assert (= (or b!1130706 b!1130697) bm!48430))

(assert (= (or b!1130694 bm!48430) bm!48432))

(assert (= (or b!1130694 bm!48434) bm!48429))

(assert (= (or b!1130694 bm!48431) bm!48428))

(assert (= (and b!1130709 (not res!755529)) b!1130691))

(assert (= (and b!1130711 condMapEmpty!44482) mapIsEmpty!44482))

(assert (= (and b!1130711 (not condMapEmpty!44482)) mapNonEmpty!44482))

(get-info :version)

(assert (= (and mapNonEmpty!44482 ((_ is ValueCellFull!13512) mapValue!44482)) b!1130695))

(assert (= (and b!1130711 ((_ is ValueCellFull!13512) mapDefault!44482)) b!1130699))

(assert (= start!98248 b!1130711))

(declare-fun b_lambda!18917 () Bool)

(assert (=> (not b_lambda!18917) (not b!1130715)))

(declare-fun t!35808 () Bool)

(declare-fun tb!8733 () Bool)

(assert (=> (and start!98248 (= defaultEntry!1004 defaultEntry!1004) t!35808) tb!8733))

(declare-fun result!18019 () Bool)

(assert (=> tb!8733 (= result!18019 tp_is_empty!28443)))

(assert (=> b!1130715 t!35808))

(declare-fun b_and!38633 () Bool)

(assert (= b_and!38631 (and (=> t!35808 result!18019) b_and!38633)))

(declare-fun m!1043901 () Bool)

(assert (=> b!1130714 m!1043901))

(declare-fun m!1043903 () Bool)

(assert (=> mapNonEmpty!44482 m!1043903))

(declare-fun m!1043905 () Bool)

(assert (=> bm!48432 m!1043905))

(declare-fun m!1043907 () Bool)

(assert (=> b!1130712 m!1043907))

(declare-fun m!1043909 () Bool)

(assert (=> b!1130712 m!1043909))

(declare-fun m!1043911 () Bool)

(assert (=> b!1130691 m!1043911))

(assert (=> b!1130691 m!1043911))

(declare-fun m!1043913 () Bool)

(assert (=> b!1130691 m!1043913))

(declare-fun m!1043915 () Bool)

(assert (=> bm!48427 m!1043915))

(declare-fun m!1043917 () Bool)

(assert (=> bm!48429 m!1043917))

(declare-fun m!1043919 () Bool)

(assert (=> b!1130690 m!1043919))

(declare-fun m!1043921 () Bool)

(assert (=> b!1130690 m!1043921))

(declare-fun m!1043923 () Bool)

(assert (=> bm!48428 m!1043923))

(assert (=> bm!48433 m!1043909))

(declare-fun m!1043925 () Bool)

(assert (=> b!1130693 m!1043925))

(declare-fun m!1043927 () Bool)

(assert (=> b!1130694 m!1043927))

(declare-fun m!1043929 () Bool)

(assert (=> b!1130694 m!1043929))

(assert (=> b!1130694 m!1043929))

(declare-fun m!1043931 () Bool)

(assert (=> b!1130694 m!1043931))

(declare-fun m!1043933 () Bool)

(assert (=> b!1130710 m!1043933))

(declare-fun m!1043935 () Bool)

(assert (=> b!1130707 m!1043935))

(declare-fun m!1043937 () Bool)

(assert (=> b!1130715 m!1043937))

(declare-fun m!1043939 () Bool)

(assert (=> b!1130715 m!1043939))

(declare-fun m!1043941 () Bool)

(assert (=> b!1130715 m!1043941))

(declare-fun m!1043943 () Bool)

(assert (=> b!1130715 m!1043943))

(declare-fun m!1043945 () Bool)

(assert (=> b!1130696 m!1043945))

(declare-fun m!1043947 () Bool)

(assert (=> b!1130696 m!1043947))

(declare-fun m!1043949 () Bool)

(assert (=> b!1130703 m!1043949))

(declare-fun m!1043951 () Bool)

(assert (=> start!98248 m!1043951))

(declare-fun m!1043953 () Bool)

(assert (=> start!98248 m!1043953))

(declare-fun m!1043955 () Bool)

(assert (=> b!1130702 m!1043955))

(declare-fun m!1043957 () Bool)

(assert (=> b!1130702 m!1043957))

(declare-fun m!1043959 () Bool)

(assert (=> b!1130698 m!1043959))

(declare-fun m!1043961 () Bool)

(assert (=> b!1130708 m!1043961))

(check-sat (not b!1130698) (not bm!48432) (not bm!48428) b_and!38633 (not b!1130690) (not b_next!23913) (not bm!48429) (not mapNonEmpty!44482) (not b!1130702) (not start!98248) tp_is_empty!28443 (not b_lambda!18917) (not b!1130694) (not b!1130696) (not b!1130693) (not b!1130691) (not b!1130703) (not b!1130715) (not b!1130710) (not b!1130708) (not b!1130714) (not b!1130712) (not bm!48433) (not bm!48427))
(check-sat b_and!38633 (not b_next!23913))

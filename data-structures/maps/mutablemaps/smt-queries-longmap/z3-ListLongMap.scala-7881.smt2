; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98068 () Bool)

(assert start!98068)

(declare-fun b_free!23733 () Bool)

(declare-fun b_next!23733 () Bool)

(assert (=> start!98068 (= b_free!23733 (not b_next!23733))))

(declare-fun tp!83904 () Bool)

(declare-fun b_and!38271 () Bool)

(assert (=> start!98068 (= tp!83904 b_and!38271)))

(declare-fun b!1125044 () Bool)

(declare-fun e!640471 () Bool)

(declare-fun tp_is_empty!28263 () Bool)

(assert (=> b!1125044 (= e!640471 tp_is_empty!28263)))

(declare-fun b!1125045 () Bool)

(declare-fun e!640472 () Bool)

(declare-fun e!640468 () Bool)

(assert (=> b!1125045 (= e!640472 (not e!640468))))

(declare-fun res!751816 () Bool)

(assert (=> b!1125045 (=> res!751816 e!640468)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125045 (= res!751816 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73350 0))(
  ( (array!73351 (arr!35324 (Array (_ BitVec 32) (_ BitVec 64))) (size!35861 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73350)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73350 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125045 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36819 0))(
  ( (Unit!36820) )
))
(declare-fun lt!499685 () Unit!36819)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73350 (_ BitVec 64) (_ BitVec 32)) Unit!36819)

(assert (=> b!1125045 (= lt!499685 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-datatypes ((V!42811 0))(
  ( (V!42812 (val!14188 Int)) )
))
(declare-fun zeroValue!944 () V!42811)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun bm!47479 () Bool)

(declare-datatypes ((ValueCell!13422 0))(
  ( (ValueCellFull!13422 (v!16822 V!42811)) (EmptyCell!13422) )
))
(declare-datatypes ((array!73352 0))(
  ( (array!73353 (arr!35325 (Array (_ BitVec 32) ValueCell!13422)) (size!35862 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73352)

(declare-fun minValue!944 () V!42811)

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17910 0))(
  ( (tuple2!17911 (_1!8965 (_ BitVec 64)) (_2!8965 V!42811)) )
))
(declare-datatypes ((List!24740 0))(
  ( (Nil!24737) (Cons!24736 (h!25945 tuple2!17910) (t!35472 List!24740)) )
))
(declare-datatypes ((ListLongMap!15891 0))(
  ( (ListLongMap!15892 (toList!7961 List!24740)) )
))
(declare-fun call!47483 () ListLongMap!15891)

(declare-fun getCurrentListMapNoExtraKeys!4420 (array!73350 array!73352 (_ BitVec 32) (_ BitVec 32) V!42811 V!42811 (_ BitVec 32) Int) ListLongMap!15891)

(assert (=> bm!47479 (= call!47483 (getCurrentListMapNoExtraKeys!4420 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125046 () Bool)

(declare-fun res!751819 () Bool)

(declare-fun e!640463 () Bool)

(assert (=> b!1125046 (=> res!751819 e!640463)))

(assert (=> b!1125046 (= res!751819 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1125047 () Bool)

(declare-fun res!751812 () Bool)

(declare-fun e!640466 () Bool)

(assert (=> b!1125047 (=> (not res!751812) (not e!640466))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73350 (_ BitVec 32)) Bool)

(assert (=> b!1125047 (= res!751812 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125048 () Bool)

(declare-fun res!751824 () Bool)

(assert (=> b!1125048 (=> (not res!751824) (not e!640466))))

(assert (=> b!1125048 (= res!751824 (and (= (size!35862 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35861 _keys!1208) (size!35862 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun call!47482 () ListLongMap!15891)

(declare-fun bm!47480 () Bool)

(declare-fun lt!499684 () array!73352)

(declare-fun lt!499686 () array!73350)

(assert (=> bm!47480 (= call!47482 (getCurrentListMapNoExtraKeys!4420 lt!499686 lt!499684 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125050 () Bool)

(declare-fun res!751822 () Bool)

(assert (=> b!1125050 (=> (not res!751822) (not e!640466))))

(assert (=> b!1125050 (= res!751822 (= (select (arr!35324 _keys!1208) i!673) k0!934))))

(declare-fun b!1125051 () Bool)

(declare-fun res!751815 () Bool)

(assert (=> b!1125051 (=> (not res!751815) (not e!640466))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125051 (= res!751815 (validKeyInArray!0 k0!934))))

(declare-fun b!1125052 () Bool)

(declare-fun res!751810 () Bool)

(assert (=> b!1125052 (=> (not res!751810) (not e!640466))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125052 (= res!751810 (validMask!0 mask!1564))))

(declare-fun b!1125053 () Bool)

(assert (=> b!1125053 (= e!640463 true)))

(declare-fun lt!499688 () ListLongMap!15891)

(declare-fun contains!6472 (ListLongMap!15891 (_ BitVec 64)) Bool)

(declare-fun +!3385 (ListLongMap!15891 tuple2!17910) ListLongMap!15891)

(assert (=> b!1125053 (contains!6472 (+!3385 lt!499688 (tuple2!17911 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!499689 () Unit!36819)

(declare-fun addStillContains!684 (ListLongMap!15891 (_ BitVec 64) V!42811 (_ BitVec 64)) Unit!36819)

(assert (=> b!1125053 (= lt!499689 (addStillContains!684 lt!499688 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun b!1125054 () Bool)

(declare-fun res!751817 () Bool)

(assert (=> b!1125054 (=> (not res!751817) (not e!640466))))

(declare-datatypes ((List!24741 0))(
  ( (Nil!24738) (Cons!24737 (h!25946 (_ BitVec 64)) (t!35473 List!24741)) )
))
(declare-fun arrayNoDuplicates!0 (array!73350 (_ BitVec 32) List!24741) Bool)

(assert (=> b!1125054 (= res!751817 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24738))))

(declare-fun e!640469 () Bool)

(declare-fun b!1125055 () Bool)

(declare-fun -!1109 (ListLongMap!15891 (_ BitVec 64)) ListLongMap!15891)

(assert (=> b!1125055 (= e!640469 (= call!47482 (-!1109 call!47483 k0!934)))))

(declare-fun b!1125056 () Bool)

(declare-fun e!640465 () Bool)

(declare-fun e!640464 () Bool)

(declare-fun mapRes!44212 () Bool)

(assert (=> b!1125056 (= e!640465 (and e!640464 mapRes!44212))))

(declare-fun condMapEmpty!44212 () Bool)

(declare-fun mapDefault!44212 () ValueCell!13422)

(assert (=> b!1125056 (= condMapEmpty!44212 (= (arr!35325 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13422)) mapDefault!44212)))))

(declare-fun mapIsEmpty!44212 () Bool)

(assert (=> mapIsEmpty!44212 mapRes!44212))

(declare-fun b!1125057 () Bool)

(assert (=> b!1125057 (= e!640466 e!640472)))

(declare-fun res!751814 () Bool)

(assert (=> b!1125057 (=> (not res!751814) (not e!640472))))

(assert (=> b!1125057 (= res!751814 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499686 mask!1564))))

(assert (=> b!1125057 (= lt!499686 (array!73351 (store (arr!35324 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35861 _keys!1208)))))

(declare-fun b!1125058 () Bool)

(assert (=> b!1125058 (= e!640464 tp_is_empty!28263)))

(declare-fun b!1125059 () Bool)

(declare-fun e!640467 () Bool)

(declare-fun e!640462 () Bool)

(assert (=> b!1125059 (= e!640467 e!640462)))

(declare-fun res!751811 () Bool)

(assert (=> b!1125059 (=> res!751811 e!640462)))

(assert (=> b!1125059 (= res!751811 (not (= (select (arr!35324 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1125059 e!640469))

(declare-fun c!109550 () Bool)

(assert (=> b!1125059 (= c!109550 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499687 () Unit!36819)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!362 (array!73350 array!73352 (_ BitVec 32) (_ BitVec 32) V!42811 V!42811 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36819)

(assert (=> b!1125059 (= lt!499687 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!362 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44212 () Bool)

(declare-fun tp!83903 () Bool)

(assert (=> mapNonEmpty!44212 (= mapRes!44212 (and tp!83903 e!640471))))

(declare-fun mapKey!44212 () (_ BitVec 32))

(declare-fun mapValue!44212 () ValueCell!13422)

(declare-fun mapRest!44212 () (Array (_ BitVec 32) ValueCell!13422))

(assert (=> mapNonEmpty!44212 (= (arr!35325 _values!996) (store mapRest!44212 mapKey!44212 mapValue!44212))))

(declare-fun b!1125060 () Bool)

(declare-fun res!751818 () Bool)

(assert (=> b!1125060 (=> (not res!751818) (not e!640472))))

(assert (=> b!1125060 (= res!751818 (arrayNoDuplicates!0 lt!499686 #b00000000000000000000000000000000 Nil!24738))))

(declare-fun b!1125061 () Bool)

(assert (=> b!1125061 (= e!640469 (= call!47482 call!47483))))

(declare-fun res!751813 () Bool)

(assert (=> start!98068 (=> (not res!751813) (not e!640466))))

(assert (=> start!98068 (= res!751813 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35861 _keys!1208))))))

(assert (=> start!98068 e!640466))

(assert (=> start!98068 tp_is_empty!28263))

(declare-fun array_inv!26988 (array!73350) Bool)

(assert (=> start!98068 (array_inv!26988 _keys!1208)))

(assert (=> start!98068 true))

(assert (=> start!98068 tp!83904))

(declare-fun array_inv!26989 (array!73352) Bool)

(assert (=> start!98068 (and (array_inv!26989 _values!996) e!640465)))

(declare-fun b!1125049 () Bool)

(declare-fun res!751821 () Bool)

(assert (=> b!1125049 (=> (not res!751821) (not e!640466))))

(assert (=> b!1125049 (= res!751821 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35861 _keys!1208))))))

(declare-fun b!1125062 () Bool)

(assert (=> b!1125062 (= e!640468 e!640467)))

(declare-fun res!751823 () Bool)

(assert (=> b!1125062 (=> res!751823 e!640467)))

(assert (=> b!1125062 (= res!751823 (not (= from!1455 i!673)))))

(declare-fun lt!499682 () ListLongMap!15891)

(assert (=> b!1125062 (= lt!499682 (getCurrentListMapNoExtraKeys!4420 lt!499686 lt!499684 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2505 (Int (_ BitVec 64)) V!42811)

(assert (=> b!1125062 (= lt!499684 (array!73353 (store (arr!35325 _values!996) i!673 (ValueCellFull!13422 (dynLambda!2505 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35862 _values!996)))))

(declare-fun lt!499683 () ListLongMap!15891)

(assert (=> b!1125062 (= lt!499683 (getCurrentListMapNoExtraKeys!4420 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1125063 () Bool)

(assert (=> b!1125063 (= e!640462 e!640463)))

(declare-fun res!751820 () Bool)

(assert (=> b!1125063 (=> res!751820 e!640463)))

(assert (=> b!1125063 (= res!751820 (not (contains!6472 lt!499688 k0!934)))))

(assert (=> b!1125063 (= lt!499688 (getCurrentListMapNoExtraKeys!4420 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98068 res!751813) b!1125052))

(assert (= (and b!1125052 res!751810) b!1125048))

(assert (= (and b!1125048 res!751824) b!1125047))

(assert (= (and b!1125047 res!751812) b!1125054))

(assert (= (and b!1125054 res!751817) b!1125049))

(assert (= (and b!1125049 res!751821) b!1125051))

(assert (= (and b!1125051 res!751815) b!1125050))

(assert (= (and b!1125050 res!751822) b!1125057))

(assert (= (and b!1125057 res!751814) b!1125060))

(assert (= (and b!1125060 res!751818) b!1125045))

(assert (= (and b!1125045 (not res!751816)) b!1125062))

(assert (= (and b!1125062 (not res!751823)) b!1125059))

(assert (= (and b!1125059 c!109550) b!1125055))

(assert (= (and b!1125059 (not c!109550)) b!1125061))

(assert (= (or b!1125055 b!1125061) bm!47480))

(assert (= (or b!1125055 b!1125061) bm!47479))

(assert (= (and b!1125059 (not res!751811)) b!1125063))

(assert (= (and b!1125063 (not res!751820)) b!1125046))

(assert (= (and b!1125046 (not res!751819)) b!1125053))

(assert (= (and b!1125056 condMapEmpty!44212) mapIsEmpty!44212))

(assert (= (and b!1125056 (not condMapEmpty!44212)) mapNonEmpty!44212))

(get-info :version)

(assert (= (and mapNonEmpty!44212 ((_ is ValueCellFull!13422) mapValue!44212)) b!1125044))

(assert (= (and b!1125056 ((_ is ValueCellFull!13422) mapDefault!44212)) b!1125058))

(assert (= start!98068 b!1125056))

(declare-fun b_lambda!18737 () Bool)

(assert (=> (not b_lambda!18737) (not b!1125062)))

(declare-fun t!35471 () Bool)

(declare-fun tb!8553 () Bool)

(assert (=> (and start!98068 (= defaultEntry!1004 defaultEntry!1004) t!35471) tb!8553))

(declare-fun result!17659 () Bool)

(assert (=> tb!8553 (= result!17659 tp_is_empty!28263)))

(assert (=> b!1125062 t!35471))

(declare-fun b_and!38273 () Bool)

(assert (= b_and!38271 (and (=> t!35471 result!17659) b_and!38273)))

(declare-fun m!1039351 () Bool)

(assert (=> b!1125050 m!1039351))

(declare-fun m!1039353 () Bool)

(assert (=> b!1125059 m!1039353))

(declare-fun m!1039355 () Bool)

(assert (=> b!1125059 m!1039355))

(declare-fun m!1039357 () Bool)

(assert (=> b!1125051 m!1039357))

(declare-fun m!1039359 () Bool)

(assert (=> start!98068 m!1039359))

(declare-fun m!1039361 () Bool)

(assert (=> start!98068 m!1039361))

(declare-fun m!1039363 () Bool)

(assert (=> b!1125057 m!1039363))

(declare-fun m!1039365 () Bool)

(assert (=> b!1125057 m!1039365))

(declare-fun m!1039367 () Bool)

(assert (=> b!1125055 m!1039367))

(declare-fun m!1039369 () Bool)

(assert (=> b!1125052 m!1039369))

(declare-fun m!1039371 () Bool)

(assert (=> bm!47479 m!1039371))

(declare-fun m!1039373 () Bool)

(assert (=> b!1125063 m!1039373))

(assert (=> b!1125063 m!1039371))

(declare-fun m!1039375 () Bool)

(assert (=> bm!47480 m!1039375))

(declare-fun m!1039377 () Bool)

(assert (=> b!1125062 m!1039377))

(declare-fun m!1039379 () Bool)

(assert (=> b!1125062 m!1039379))

(declare-fun m!1039381 () Bool)

(assert (=> b!1125062 m!1039381))

(declare-fun m!1039383 () Bool)

(assert (=> b!1125062 m!1039383))

(declare-fun m!1039385 () Bool)

(assert (=> mapNonEmpty!44212 m!1039385))

(declare-fun m!1039387 () Bool)

(assert (=> b!1125054 m!1039387))

(declare-fun m!1039389 () Bool)

(assert (=> b!1125060 m!1039389))

(declare-fun m!1039391 () Bool)

(assert (=> b!1125045 m!1039391))

(declare-fun m!1039393 () Bool)

(assert (=> b!1125045 m!1039393))

(declare-fun m!1039395 () Bool)

(assert (=> b!1125053 m!1039395))

(assert (=> b!1125053 m!1039395))

(declare-fun m!1039397 () Bool)

(assert (=> b!1125053 m!1039397))

(declare-fun m!1039399 () Bool)

(assert (=> b!1125053 m!1039399))

(declare-fun m!1039401 () Bool)

(assert (=> b!1125047 m!1039401))

(check-sat tp_is_empty!28263 (not b!1125060) (not b!1125055) (not bm!47479) (not b_next!23733) (not b!1125047) (not b!1125045) (not b!1125059) (not mapNonEmpty!44212) (not b!1125051) (not b!1125057) (not start!98068) (not b!1125062) (not b!1125063) (not b_lambda!18737) (not b!1125054) (not b!1125052) (not b!1125053) b_and!38273 (not bm!47480))
(check-sat b_and!38273 (not b_next!23733))

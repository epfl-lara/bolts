; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98080 () Bool)

(assert start!98080)

(declare-fun b_free!23745 () Bool)

(declare-fun b_next!23745 () Bool)

(assert (=> start!98080 (= b_free!23745 (not b_next!23745))))

(declare-fun tp!83939 () Bool)

(declare-fun b_and!38295 () Bool)

(assert (=> start!98080 (= tp!83939 b_and!38295)))

(declare-datatypes ((V!42827 0))(
  ( (V!42828 (val!14194 Int)) )
))
(declare-fun zeroValue!944 () V!42827)

(declare-fun c!109568 () Bool)

(declare-datatypes ((array!73372 0))(
  ( (array!73373 (arr!35335 (Array (_ BitVec 32) (_ BitVec 64))) (size!35872 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73372)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun bm!47515 () Bool)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun from!1455 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13428 0))(
  ( (ValueCellFull!13428 (v!16828 V!42827)) (EmptyCell!13428) )
))
(declare-datatypes ((array!73374 0))(
  ( (array!73375 (arr!35336 (Array (_ BitVec 32) ValueCell!13428)) (size!35873 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73374)

(declare-fun lt!499832 () array!73374)

(declare-fun minValue!944 () V!42827)

(declare-datatypes ((tuple2!17920 0))(
  ( (tuple2!17921 (_1!8970 (_ BitVec 64)) (_2!8970 V!42827)) )
))
(declare-datatypes ((List!24750 0))(
  ( (Nil!24747) (Cons!24746 (h!25955 tuple2!17920) (t!35494 List!24750)) )
))
(declare-datatypes ((ListLongMap!15901 0))(
  ( (ListLongMap!15902 (toList!7966 List!24750)) )
))
(declare-fun call!47518 () ListLongMap!15901)

(declare-fun lt!499827 () array!73372)

(declare-fun getCurrentListMapNoExtraKeys!4425 (array!73372 array!73374 (_ BitVec 32) (_ BitVec 32) V!42827 V!42827 (_ BitVec 32) Int) ListLongMap!15901)

(assert (=> bm!47515 (= call!47518 (getCurrentListMapNoExtraKeys!4425 (ite c!109568 _keys!1208 lt!499827) (ite c!109568 _values!996 lt!499832) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125416 () Bool)

(declare-fun e!640665 () Bool)

(declare-fun tp_is_empty!28275 () Bool)

(assert (=> b!1125416 (= e!640665 tp_is_empty!28275)))

(declare-fun call!47519 () ListLongMap!15901)

(declare-fun bm!47516 () Bool)

(assert (=> bm!47516 (= call!47519 (getCurrentListMapNoExtraKeys!4425 (ite c!109568 lt!499827 _keys!1208) (ite c!109568 lt!499832 _values!996) mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125417 () Bool)

(declare-fun e!640667 () Bool)

(assert (=> b!1125417 (= e!640667 (= call!47518 call!47519))))

(declare-fun b!1125418 () Bool)

(declare-fun e!640666 () Bool)

(declare-fun mapRes!44230 () Bool)

(assert (=> b!1125418 (= e!640666 (and e!640665 mapRes!44230))))

(declare-fun condMapEmpty!44230 () Bool)

(declare-fun mapDefault!44230 () ValueCell!13428)

(assert (=> b!1125418 (= condMapEmpty!44230 (= (arr!35336 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13428)) mapDefault!44230)))))

(declare-fun b!1125419 () Bool)

(declare-fun e!640668 () Bool)

(declare-fun e!640662 () Bool)

(assert (=> b!1125419 (= e!640668 e!640662)))

(declare-fun res!752083 () Bool)

(assert (=> b!1125419 (=> res!752083 e!640662)))

(declare-fun k0!934 () (_ BitVec 64))

(assert (=> b!1125419 (= res!752083 (not (= (select (arr!35335 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1125419 e!640667))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125419 (= c!109568 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36829 0))(
  ( (Unit!36830) )
))
(declare-fun lt!499831 () Unit!36829)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!367 (array!73372 array!73374 (_ BitVec 32) (_ BitVec 32) V!42827 V!42827 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36829)

(assert (=> b!1125419 (= lt!499831 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!367 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun mapNonEmpty!44230 () Bool)

(declare-fun tp!83940 () Bool)

(declare-fun e!640664 () Bool)

(assert (=> mapNonEmpty!44230 (= mapRes!44230 (and tp!83940 e!640664))))

(declare-fun mapRest!44230 () (Array (_ BitVec 32) ValueCell!13428))

(declare-fun mapKey!44230 () (_ BitVec 32))

(declare-fun mapValue!44230 () ValueCell!13428)

(assert (=> mapNonEmpty!44230 (= (arr!35336 _values!996) (store mapRest!44230 mapKey!44230 mapValue!44230))))

(declare-fun b!1125420 () Bool)

(declare-fun res!752086 () Bool)

(declare-fun e!640670 () Bool)

(assert (=> b!1125420 (=> (not res!752086) (not e!640670))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125420 (= res!752086 (validKeyInArray!0 k0!934))))

(declare-fun mapIsEmpty!44230 () Bool)

(assert (=> mapIsEmpty!44230 mapRes!44230))

(declare-fun b!1125421 () Bool)

(declare-fun e!640669 () Bool)

(assert (=> b!1125421 (= e!640670 e!640669)))

(declare-fun res!752094 () Bool)

(assert (=> b!1125421 (=> (not res!752094) (not e!640669))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73372 (_ BitVec 32)) Bool)

(assert (=> b!1125421 (= res!752094 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499827 mask!1564))))

(assert (=> b!1125421 (= lt!499827 (array!73373 (store (arr!35335 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35872 _keys!1208)))))

(declare-fun b!1125422 () Bool)

(declare-fun e!640660 () Bool)

(assert (=> b!1125422 (= e!640669 (not e!640660))))

(declare-fun res!752091 () Bool)

(assert (=> b!1125422 (=> res!752091 e!640660)))

(assert (=> b!1125422 (= res!752091 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73372 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125422 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!499833 () Unit!36829)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73372 (_ BitVec 64) (_ BitVec 32)) Unit!36829)

(assert (=> b!1125422 (= lt!499833 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1125423 () Bool)

(declare-fun res!752082 () Bool)

(assert (=> b!1125423 (=> (not res!752082) (not e!640670))))

(assert (=> b!1125423 (= res!752082 (= (select (arr!35335 _keys!1208) i!673) k0!934))))

(declare-fun b!1125424 () Bool)

(declare-fun res!752087 () Bool)

(assert (=> b!1125424 (=> (not res!752087) (not e!640670))))

(declare-datatypes ((List!24751 0))(
  ( (Nil!24748) (Cons!24747 (h!25956 (_ BitVec 64)) (t!35495 List!24751)) )
))
(declare-fun arrayNoDuplicates!0 (array!73372 (_ BitVec 32) List!24751) Bool)

(assert (=> b!1125424 (= res!752087 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24748))))

(declare-fun res!752093 () Bool)

(assert (=> start!98080 (=> (not res!752093) (not e!640670))))

(assert (=> start!98080 (= res!752093 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35872 _keys!1208))))))

(assert (=> start!98080 e!640670))

(assert (=> start!98080 tp_is_empty!28275))

(declare-fun array_inv!26996 (array!73372) Bool)

(assert (=> start!98080 (array_inv!26996 _keys!1208)))

(assert (=> start!98080 true))

(assert (=> start!98080 tp!83939))

(declare-fun array_inv!26997 (array!73374) Bool)

(assert (=> start!98080 (and (array_inv!26997 _values!996) e!640666)))

(declare-fun b!1125425 () Bool)

(declare-fun res!752088 () Bool)

(assert (=> b!1125425 (=> (not res!752088) (not e!640670))))

(assert (=> b!1125425 (= res!752088 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125426 () Bool)

(assert (=> b!1125426 (= e!640660 e!640668)))

(declare-fun res!752080 () Bool)

(assert (=> b!1125426 (=> res!752080 e!640668)))

(assert (=> b!1125426 (= res!752080 (not (= from!1455 i!673)))))

(declare-fun lt!499828 () ListLongMap!15901)

(assert (=> b!1125426 (= lt!499828 (getCurrentListMapNoExtraKeys!4425 lt!499827 lt!499832 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2510 (Int (_ BitVec 64)) V!42827)

(assert (=> b!1125426 (= lt!499832 (array!73375 (store (arr!35336 _values!996) i!673 (ValueCellFull!13428 (dynLambda!2510 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35873 _values!996)))))

(declare-fun lt!499829 () ListLongMap!15901)

(assert (=> b!1125426 (= lt!499829 (getCurrentListMapNoExtraKeys!4425 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1125427 () Bool)

(declare-fun res!752089 () Bool)

(assert (=> b!1125427 (=> (not res!752089) (not e!640670))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125427 (= res!752089 (validMask!0 mask!1564))))

(declare-fun b!1125428 () Bool)

(declare-fun res!752084 () Bool)

(assert (=> b!1125428 (=> (not res!752084) (not e!640669))))

(assert (=> b!1125428 (= res!752084 (arrayNoDuplicates!0 lt!499827 #b00000000000000000000000000000000 Nil!24748))))

(declare-fun b!1125429 () Bool)

(declare-fun e!640661 () Bool)

(assert (=> b!1125429 (= e!640662 e!640661)))

(declare-fun res!752090 () Bool)

(assert (=> b!1125429 (=> res!752090 e!640661)))

(declare-fun lt!499826 () ListLongMap!15901)

(declare-fun contains!6477 (ListLongMap!15901 (_ BitVec 64)) Bool)

(assert (=> b!1125429 (= res!752090 (not (contains!6477 lt!499826 k0!934)))))

(assert (=> b!1125429 (= lt!499826 (getCurrentListMapNoExtraKeys!4425 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125430 () Bool)

(declare-fun res!752081 () Bool)

(assert (=> b!1125430 (=> (not res!752081) (not e!640670))))

(assert (=> b!1125430 (= res!752081 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35872 _keys!1208))))))

(declare-fun b!1125431 () Bool)

(declare-fun -!1114 (ListLongMap!15901 (_ BitVec 64)) ListLongMap!15901)

(assert (=> b!1125431 (= e!640667 (= call!47519 (-!1114 call!47518 k0!934)))))

(declare-fun b!1125432 () Bool)

(declare-fun res!752085 () Bool)

(assert (=> b!1125432 (=> (not res!752085) (not e!640670))))

(assert (=> b!1125432 (= res!752085 (and (= (size!35873 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35872 _keys!1208) (size!35873 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1125433 () Bool)

(declare-fun res!752092 () Bool)

(assert (=> b!1125433 (=> res!752092 e!640661)))

(assert (=> b!1125433 (= res!752092 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1125434 () Bool)

(assert (=> b!1125434 (= e!640664 tp_is_empty!28275)))

(declare-fun b!1125435 () Bool)

(assert (=> b!1125435 (= e!640661 true)))

(declare-fun +!3390 (ListLongMap!15901 tuple2!17920) ListLongMap!15901)

(assert (=> b!1125435 (contains!6477 (+!3390 lt!499826 (tuple2!17921 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-fun lt!499830 () Unit!36829)

(declare-fun addStillContains!689 (ListLongMap!15901 (_ BitVec 64) V!42827 (_ BitVec 64)) Unit!36829)

(assert (=> b!1125435 (= lt!499830 (addStillContains!689 lt!499826 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(assert (= (and start!98080 res!752093) b!1125427))

(assert (= (and b!1125427 res!752089) b!1125432))

(assert (= (and b!1125432 res!752085) b!1125425))

(assert (= (and b!1125425 res!752088) b!1125424))

(assert (= (and b!1125424 res!752087) b!1125430))

(assert (= (and b!1125430 res!752081) b!1125420))

(assert (= (and b!1125420 res!752086) b!1125423))

(assert (= (and b!1125423 res!752082) b!1125421))

(assert (= (and b!1125421 res!752094) b!1125428))

(assert (= (and b!1125428 res!752084) b!1125422))

(assert (= (and b!1125422 (not res!752091)) b!1125426))

(assert (= (and b!1125426 (not res!752080)) b!1125419))

(assert (= (and b!1125419 c!109568) b!1125431))

(assert (= (and b!1125419 (not c!109568)) b!1125417))

(assert (= (or b!1125431 b!1125417) bm!47515))

(assert (= (or b!1125431 b!1125417) bm!47516))

(assert (= (and b!1125419 (not res!752083)) b!1125429))

(assert (= (and b!1125429 (not res!752090)) b!1125433))

(assert (= (and b!1125433 (not res!752092)) b!1125435))

(assert (= (and b!1125418 condMapEmpty!44230) mapIsEmpty!44230))

(assert (= (and b!1125418 (not condMapEmpty!44230)) mapNonEmpty!44230))

(get-info :version)

(assert (= (and mapNonEmpty!44230 ((_ is ValueCellFull!13428) mapValue!44230)) b!1125434))

(assert (= (and b!1125418 ((_ is ValueCellFull!13428) mapDefault!44230)) b!1125416))

(assert (= start!98080 b!1125418))

(declare-fun b_lambda!18749 () Bool)

(assert (=> (not b_lambda!18749) (not b!1125426)))

(declare-fun t!35493 () Bool)

(declare-fun tb!8565 () Bool)

(assert (=> (and start!98080 (= defaultEntry!1004 defaultEntry!1004) t!35493) tb!8565))

(declare-fun result!17683 () Bool)

(assert (=> tb!8565 (= result!17683 tp_is_empty!28275)))

(assert (=> b!1125426 t!35493))

(declare-fun b_and!38297 () Bool)

(assert (= b_and!38295 (and (=> t!35493 result!17683) b_and!38297)))

(declare-fun m!1039667 () Bool)

(assert (=> b!1125428 m!1039667))

(declare-fun m!1039669 () Bool)

(assert (=> b!1125427 m!1039669))

(declare-fun m!1039671 () Bool)

(assert (=> b!1125423 m!1039671))

(declare-fun m!1039673 () Bool)

(assert (=> b!1125420 m!1039673))

(declare-fun m!1039675 () Bool)

(assert (=> b!1125431 m!1039675))

(declare-fun m!1039677 () Bool)

(assert (=> b!1125422 m!1039677))

(declare-fun m!1039679 () Bool)

(assert (=> b!1125422 m!1039679))

(declare-fun m!1039681 () Bool)

(assert (=> b!1125424 m!1039681))

(declare-fun m!1039683 () Bool)

(assert (=> b!1125425 m!1039683))

(declare-fun m!1039685 () Bool)

(assert (=> b!1125435 m!1039685))

(assert (=> b!1125435 m!1039685))

(declare-fun m!1039687 () Bool)

(assert (=> b!1125435 m!1039687))

(declare-fun m!1039689 () Bool)

(assert (=> b!1125435 m!1039689))

(declare-fun m!1039691 () Bool)

(assert (=> bm!47515 m!1039691))

(declare-fun m!1039693 () Bool)

(assert (=> bm!47516 m!1039693))

(declare-fun m!1039695 () Bool)

(assert (=> b!1125421 m!1039695))

(declare-fun m!1039697 () Bool)

(assert (=> b!1125421 m!1039697))

(declare-fun m!1039699 () Bool)

(assert (=> mapNonEmpty!44230 m!1039699))

(declare-fun m!1039701 () Bool)

(assert (=> b!1125426 m!1039701))

(declare-fun m!1039703 () Bool)

(assert (=> b!1125426 m!1039703))

(declare-fun m!1039705 () Bool)

(assert (=> b!1125426 m!1039705))

(declare-fun m!1039707 () Bool)

(assert (=> b!1125426 m!1039707))

(declare-fun m!1039709 () Bool)

(assert (=> b!1125429 m!1039709))

(declare-fun m!1039711 () Bool)

(assert (=> b!1125429 m!1039711))

(declare-fun m!1039713 () Bool)

(assert (=> start!98080 m!1039713))

(declare-fun m!1039715 () Bool)

(assert (=> start!98080 m!1039715))

(declare-fun m!1039717 () Bool)

(assert (=> b!1125419 m!1039717))

(declare-fun m!1039719 () Bool)

(assert (=> b!1125419 m!1039719))

(check-sat (not b!1125427) (not b!1125429) (not b!1125425) (not b!1125422) b_and!38297 (not b!1125428) (not bm!47516) (not b!1125435) (not b!1125426) (not b!1125419) tp_is_empty!28275 (not b!1125421) (not b!1125424) (not start!98080) (not mapNonEmpty!44230) (not b!1125431) (not b_next!23745) (not b_lambda!18749) (not bm!47515) (not b!1125420))
(check-sat b_and!38297 (not b_next!23745))

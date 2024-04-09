; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98086 () Bool)

(assert start!98086)

(declare-fun b_free!23751 () Bool)

(declare-fun b_next!23751 () Bool)

(assert (=> start!98086 (= b_free!23751 (not b_next!23751))))

(declare-fun tp!83958 () Bool)

(declare-fun b_and!38307 () Bool)

(assert (=> start!98086 (= tp!83958 b_and!38307)))

(declare-fun b!1125592 () Bool)

(declare-fun res!752207 () Bool)

(declare-fun e!640761 () Bool)

(assert (=> b!1125592 (=> (not res!752207) (not e!640761))))

(declare-datatypes ((array!73384 0))(
  ( (array!73385 (arr!35341 (Array (_ BitVec 32) (_ BitVec 64))) (size!35878 (_ BitVec 32))) )
))
(declare-fun lt!499897 () array!73384)

(declare-datatypes ((List!24755 0))(
  ( (Nil!24752) (Cons!24751 (h!25960 (_ BitVec 64)) (t!35505 List!24755)) )
))
(declare-fun arrayNoDuplicates!0 (array!73384 (_ BitVec 32) List!24755) Bool)

(assert (=> b!1125592 (= res!752207 (arrayNoDuplicates!0 lt!499897 #b00000000000000000000000000000000 Nil!24752))))

(declare-fun b!1125593 () Bool)

(declare-fun e!640758 () Bool)

(declare-fun tp_is_empty!28281 () Bool)

(assert (=> b!1125593 (= e!640758 tp_is_empty!28281)))

(declare-fun b!1125594 () Bool)

(declare-fun e!640757 () Bool)

(declare-fun e!640756 () Bool)

(assert (=> b!1125594 (= e!640757 e!640756)))

(declare-fun res!752215 () Bool)

(assert (=> b!1125594 (=> res!752215 e!640756)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1125594 (= res!752215 (not (= from!1455 i!673)))))

(declare-datatypes ((V!42835 0))(
  ( (V!42836 (val!14197 Int)) )
))
(declare-fun zeroValue!944 () V!42835)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((ValueCell!13431 0))(
  ( (ValueCellFull!13431 (v!16831 V!42835)) (EmptyCell!13431) )
))
(declare-datatypes ((array!73386 0))(
  ( (array!73387 (arr!35342 (Array (_ BitVec 32) ValueCell!13431)) (size!35879 (_ BitVec 32))) )
))
(declare-fun lt!499894 () array!73386)

(declare-fun minValue!944 () V!42835)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17926 0))(
  ( (tuple2!17927 (_1!8973 (_ BitVec 64)) (_2!8973 V!42835)) )
))
(declare-datatypes ((List!24756 0))(
  ( (Nil!24753) (Cons!24752 (h!25961 tuple2!17926) (t!35506 List!24756)) )
))
(declare-datatypes ((ListLongMap!15907 0))(
  ( (ListLongMap!15908 (toList!7969 List!24756)) )
))
(declare-fun lt!499898 () ListLongMap!15907)

(declare-fun getCurrentListMapNoExtraKeys!4428 (array!73384 array!73386 (_ BitVec 32) (_ BitVec 32) V!42835 V!42835 (_ BitVec 32) Int) ListLongMap!15907)

(assert (=> b!1125594 (= lt!499898 (getCurrentListMapNoExtraKeys!4428 lt!499897 lt!499894 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun _values!996 () array!73386)

(declare-fun dynLambda!2512 (Int (_ BitVec 64)) V!42835)

(assert (=> b!1125594 (= lt!499894 (array!73387 (store (arr!35342 _values!996) i!673 (ValueCellFull!13431 (dynLambda!2512 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35879 _values!996)))))

(declare-fun _keys!1208 () array!73384)

(declare-fun lt!499893 () ListLongMap!15907)

(assert (=> b!1125594 (= lt!499893 (getCurrentListMapNoExtraKeys!4428 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1125596 () Bool)

(declare-fun e!640763 () Bool)

(declare-fun call!47537 () ListLongMap!15907)

(declare-fun call!47536 () ListLongMap!15907)

(assert (=> b!1125596 (= e!640763 (= call!47537 call!47536))))

(declare-fun b!1125597 () Bool)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun -!1116 (ListLongMap!15907 (_ BitVec 64)) ListLongMap!15907)

(assert (=> b!1125597 (= e!640763 (= call!47537 (-!1116 call!47536 k0!934)))))

(declare-fun mapNonEmpty!44239 () Bool)

(declare-fun mapRes!44239 () Bool)

(declare-fun tp!83957 () Bool)

(declare-fun e!640759 () Bool)

(assert (=> mapNonEmpty!44239 (= mapRes!44239 (and tp!83957 e!640759))))

(declare-fun mapKey!44239 () (_ BitVec 32))

(declare-fun mapValue!44239 () ValueCell!13431)

(declare-fun mapRest!44239 () (Array (_ BitVec 32) ValueCell!13431))

(assert (=> mapNonEmpty!44239 (= (arr!35342 _values!996) (store mapRest!44239 mapKey!44239 mapValue!44239))))

(declare-fun mapIsEmpty!44239 () Bool)

(assert (=> mapIsEmpty!44239 mapRes!44239))

(declare-fun b!1125598 () Bool)

(declare-fun e!640762 () Bool)

(assert (=> b!1125598 (= e!640762 true)))

(declare-fun lt!499895 () Bool)

(declare-fun contains!6480 (ListLongMap!15907 (_ BitVec 64)) Bool)

(assert (=> b!1125598 (= lt!499895 (contains!6480 (getCurrentListMapNoExtraKeys!4428 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun bm!47533 () Bool)

(assert (=> bm!47533 (= call!47536 (getCurrentListMapNoExtraKeys!4428 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125599 () Bool)

(declare-fun res!752209 () Bool)

(declare-fun e!640754 () Bool)

(assert (=> b!1125599 (=> (not res!752209) (not e!640754))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73384 (_ BitVec 32)) Bool)

(assert (=> b!1125599 (= res!752209 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1125600 () Bool)

(declare-fun res!752217 () Bool)

(assert (=> b!1125600 (=> (not res!752217) (not e!640754))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1125600 (= res!752217 (validKeyInArray!0 k0!934))))

(declare-fun b!1125601 () Bool)

(assert (=> b!1125601 (= e!640759 tp_is_empty!28281)))

(declare-fun b!1125602 () Bool)

(declare-fun res!752210 () Bool)

(assert (=> b!1125602 (=> (not res!752210) (not e!640754))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1125602 (= res!752210 (validMask!0 mask!1564))))

(declare-fun b!1125603 () Bool)

(declare-fun res!752216 () Bool)

(assert (=> b!1125603 (=> (not res!752216) (not e!640754))))

(assert (=> b!1125603 (= res!752216 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24752))))

(declare-fun b!1125604 () Bool)

(assert (=> b!1125604 (= e!640756 e!640762)))

(declare-fun res!752214 () Bool)

(assert (=> b!1125604 (=> res!752214 e!640762)))

(assert (=> b!1125604 (= res!752214 (not (= (select (arr!35341 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1125604 e!640763))

(declare-fun c!109577 () Bool)

(assert (=> b!1125604 (= c!109577 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((Unit!36835 0))(
  ( (Unit!36836) )
))
(declare-fun lt!499896 () Unit!36835)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!370 (array!73384 array!73386 (_ BitVec 32) (_ BitVec 32) V!42835 V!42835 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36835)

(assert (=> b!1125604 (= lt!499896 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!370 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125605 () Bool)

(declare-fun e!640755 () Bool)

(assert (=> b!1125605 (= e!640755 (and e!640758 mapRes!44239))))

(declare-fun condMapEmpty!44239 () Bool)

(declare-fun mapDefault!44239 () ValueCell!13431)

(assert (=> b!1125605 (= condMapEmpty!44239 (= (arr!35342 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13431)) mapDefault!44239)))))

(declare-fun res!752206 () Bool)

(assert (=> start!98086 (=> (not res!752206) (not e!640754))))

(assert (=> start!98086 (= res!752206 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35878 _keys!1208))))))

(assert (=> start!98086 e!640754))

(assert (=> start!98086 tp_is_empty!28281))

(declare-fun array_inv!27000 (array!73384) Bool)

(assert (=> start!98086 (array_inv!27000 _keys!1208)))

(assert (=> start!98086 true))

(assert (=> start!98086 tp!83958))

(declare-fun array_inv!27001 (array!73386) Bool)

(assert (=> start!98086 (and (array_inv!27001 _values!996) e!640755)))

(declare-fun b!1125595 () Bool)

(assert (=> b!1125595 (= e!640754 e!640761)))

(declare-fun res!752212 () Bool)

(assert (=> b!1125595 (=> (not res!752212) (not e!640761))))

(assert (=> b!1125595 (= res!752212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499897 mask!1564))))

(assert (=> b!1125595 (= lt!499897 (array!73385 (store (arr!35341 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35878 _keys!1208)))))

(declare-fun b!1125606 () Bool)

(declare-fun res!752211 () Bool)

(assert (=> b!1125606 (=> (not res!752211) (not e!640754))))

(assert (=> b!1125606 (= res!752211 (and (= (size!35879 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35878 _keys!1208) (size!35879 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1125607 () Bool)

(assert (=> b!1125607 (= e!640761 (not e!640757))))

(declare-fun res!752205 () Bool)

(assert (=> b!1125607 (=> res!752205 e!640757)))

(assert (=> b!1125607 (= res!752205 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1125607 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!499899 () Unit!36835)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73384 (_ BitVec 64) (_ BitVec 32)) Unit!36835)

(assert (=> b!1125607 (= lt!499899 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1125608 () Bool)

(declare-fun res!752213 () Bool)

(assert (=> b!1125608 (=> (not res!752213) (not e!640754))))

(assert (=> b!1125608 (= res!752213 (= (select (arr!35341 _keys!1208) i!673) k0!934))))

(declare-fun bm!47534 () Bool)

(assert (=> bm!47534 (= call!47537 (getCurrentListMapNoExtraKeys!4428 lt!499897 lt!499894 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1125609 () Bool)

(declare-fun res!752208 () Bool)

(assert (=> b!1125609 (=> (not res!752208) (not e!640754))))

(assert (=> b!1125609 (= res!752208 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35878 _keys!1208))))))

(assert (= (and start!98086 res!752206) b!1125602))

(assert (= (and b!1125602 res!752210) b!1125606))

(assert (= (and b!1125606 res!752211) b!1125599))

(assert (= (and b!1125599 res!752209) b!1125603))

(assert (= (and b!1125603 res!752216) b!1125609))

(assert (= (and b!1125609 res!752208) b!1125600))

(assert (= (and b!1125600 res!752217) b!1125608))

(assert (= (and b!1125608 res!752213) b!1125595))

(assert (= (and b!1125595 res!752212) b!1125592))

(assert (= (and b!1125592 res!752207) b!1125607))

(assert (= (and b!1125607 (not res!752205)) b!1125594))

(assert (= (and b!1125594 (not res!752215)) b!1125604))

(assert (= (and b!1125604 c!109577) b!1125597))

(assert (= (and b!1125604 (not c!109577)) b!1125596))

(assert (= (or b!1125597 b!1125596) bm!47534))

(assert (= (or b!1125597 b!1125596) bm!47533))

(assert (= (and b!1125604 (not res!752214)) b!1125598))

(assert (= (and b!1125605 condMapEmpty!44239) mapIsEmpty!44239))

(assert (= (and b!1125605 (not condMapEmpty!44239)) mapNonEmpty!44239))

(get-info :version)

(assert (= (and mapNonEmpty!44239 ((_ is ValueCellFull!13431) mapValue!44239)) b!1125601))

(assert (= (and b!1125605 ((_ is ValueCellFull!13431) mapDefault!44239)) b!1125593))

(assert (= start!98086 b!1125605))

(declare-fun b_lambda!18755 () Bool)

(assert (=> (not b_lambda!18755) (not b!1125594)))

(declare-fun t!35504 () Bool)

(declare-fun tb!8571 () Bool)

(assert (=> (and start!98086 (= defaultEntry!1004 defaultEntry!1004) t!35504) tb!8571))

(declare-fun result!17695 () Bool)

(assert (=> tb!8571 (= result!17695 tp_is_empty!28281)))

(assert (=> b!1125594 t!35504))

(declare-fun b_and!38309 () Bool)

(assert (= b_and!38307 (and (=> t!35504 result!17695) b_and!38309)))

(declare-fun m!1039819 () Bool)

(assert (=> b!1125608 m!1039819))

(declare-fun m!1039821 () Bool)

(assert (=> b!1125602 m!1039821))

(declare-fun m!1039823 () Bool)

(assert (=> b!1125595 m!1039823))

(declare-fun m!1039825 () Bool)

(assert (=> b!1125595 m!1039825))

(declare-fun m!1039827 () Bool)

(assert (=> bm!47533 m!1039827))

(declare-fun m!1039829 () Bool)

(assert (=> b!1125600 m!1039829))

(declare-fun m!1039831 () Bool)

(assert (=> b!1125599 m!1039831))

(declare-fun m!1039833 () Bool)

(assert (=> b!1125592 m!1039833))

(assert (=> b!1125598 m!1039827))

(assert (=> b!1125598 m!1039827))

(declare-fun m!1039835 () Bool)

(assert (=> b!1125598 m!1039835))

(declare-fun m!1039837 () Bool)

(assert (=> b!1125594 m!1039837))

(declare-fun m!1039839 () Bool)

(assert (=> b!1125594 m!1039839))

(declare-fun m!1039841 () Bool)

(assert (=> b!1125594 m!1039841))

(declare-fun m!1039843 () Bool)

(assert (=> b!1125594 m!1039843))

(declare-fun m!1039845 () Bool)

(assert (=> b!1125597 m!1039845))

(declare-fun m!1039847 () Bool)

(assert (=> mapNonEmpty!44239 m!1039847))

(declare-fun m!1039849 () Bool)

(assert (=> b!1125603 m!1039849))

(declare-fun m!1039851 () Bool)

(assert (=> start!98086 m!1039851))

(declare-fun m!1039853 () Bool)

(assert (=> start!98086 m!1039853))

(declare-fun m!1039855 () Bool)

(assert (=> b!1125604 m!1039855))

(declare-fun m!1039857 () Bool)

(assert (=> b!1125604 m!1039857))

(declare-fun m!1039859 () Bool)

(assert (=> b!1125607 m!1039859))

(declare-fun m!1039861 () Bool)

(assert (=> b!1125607 m!1039861))

(declare-fun m!1039863 () Bool)

(assert (=> bm!47534 m!1039863))

(check-sat (not b!1125592) (not b!1125602) (not b!1125595) (not b_next!23751) tp_is_empty!28281 (not bm!47534) (not start!98086) (not b!1125599) (not b!1125598) (not b!1125594) b_and!38309 (not b!1125603) (not b_lambda!18755) (not mapNonEmpty!44239) (not b!1125607) (not b!1125604) (not bm!47533) (not b!1125600) (not b!1125597))
(check-sat b_and!38309 (not b_next!23751))

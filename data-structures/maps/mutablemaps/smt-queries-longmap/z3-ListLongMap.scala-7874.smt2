; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98026 () Bool)

(assert start!98026)

(declare-fun b_free!23691 () Bool)

(declare-fun b_next!23691 () Bool)

(assert (=> start!98026 (= b_free!23691 (not b_next!23691))))

(declare-fun tp!83777 () Bool)

(declare-fun b_and!38187 () Bool)

(assert (=> start!98026 (= tp!83777 b_and!38187)))

(declare-fun b!1123742 () Bool)

(declare-fun res!750876 () Bool)

(declare-fun e!639777 () Bool)

(assert (=> b!1123742 (=> (not res!750876) (not e!639777))))

(declare-fun i!673 () (_ BitVec 32))

(declare-datatypes ((array!73268 0))(
  ( (array!73269 (arr!35283 (Array (_ BitVec 32) (_ BitVec 64))) (size!35820 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73268)

(assert (=> b!1123742 (= res!750876 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35820 _keys!1208))))))

(declare-fun b!1123743 () Bool)

(declare-fun res!750871 () Bool)

(assert (=> b!1123743 (=> (not res!750871) (not e!639777))))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1123743 (= res!750871 (validMask!0 mask!1564))))

(declare-fun res!750865 () Bool)

(assert (=> start!98026 (=> (not res!750865) (not e!639777))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98026 (= res!750865 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35820 _keys!1208))))))

(assert (=> start!98026 e!639777))

(declare-fun tp_is_empty!28221 () Bool)

(assert (=> start!98026 tp_is_empty!28221))

(declare-fun array_inv!26960 (array!73268) Bool)

(assert (=> start!98026 (array_inv!26960 _keys!1208)))

(assert (=> start!98026 true))

(assert (=> start!98026 tp!83777))

(declare-datatypes ((V!42755 0))(
  ( (V!42756 (val!14167 Int)) )
))
(declare-datatypes ((ValueCell!13401 0))(
  ( (ValueCellFull!13401 (v!16801 V!42755)) (EmptyCell!13401) )
))
(declare-datatypes ((array!73270 0))(
  ( (array!73271 (arr!35284 (Array (_ BitVec 32) ValueCell!13401)) (size!35821 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73270)

(declare-fun e!639779 () Bool)

(declare-fun array_inv!26961 (array!73270) Bool)

(assert (=> start!98026 (and (array_inv!26961 _values!996) e!639779)))

(declare-fun b!1123744 () Bool)

(declare-fun e!639775 () Bool)

(declare-fun mapRes!44149 () Bool)

(assert (=> b!1123744 (= e!639779 (and e!639775 mapRes!44149))))

(declare-fun condMapEmpty!44149 () Bool)

(declare-fun mapDefault!44149 () ValueCell!13401)

(assert (=> b!1123744 (= condMapEmpty!44149 (= (arr!35284 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13401)) mapDefault!44149)))))

(declare-fun b!1123745 () Bool)

(assert (=> b!1123745 (= e!639775 tp_is_empty!28221)))

(declare-fun mapIsEmpty!44149 () Bool)

(assert (=> mapIsEmpty!44149 mapRes!44149))

(declare-fun b!1123746 () Bool)

(declare-fun e!639776 () Bool)

(declare-fun e!639771 () Bool)

(assert (=> b!1123746 (= e!639776 e!639771)))

(declare-fun res!750867 () Bool)

(assert (=> b!1123746 (=> res!750867 e!639771)))

(assert (=> b!1123746 (= res!750867 (not (= from!1455 i!673)))))

(declare-fun zeroValue!944 () V!42755)

(declare-fun lt!499185 () array!73268)

(declare-fun lt!499180 () array!73270)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((tuple2!17870 0))(
  ( (tuple2!17871 (_1!8945 (_ BitVec 64)) (_2!8945 V!42755)) )
))
(declare-datatypes ((List!24704 0))(
  ( (Nil!24701) (Cons!24700 (h!25909 tuple2!17870) (t!35394 List!24704)) )
))
(declare-datatypes ((ListLongMap!15851 0))(
  ( (ListLongMap!15852 (toList!7941 List!24704)) )
))
(declare-fun lt!499181 () ListLongMap!15851)

(declare-fun minValue!944 () V!42755)

(declare-fun getCurrentListMapNoExtraKeys!4401 (array!73268 array!73270 (_ BitVec 32) (_ BitVec 32) V!42755 V!42755 (_ BitVec 32) Int) ListLongMap!15851)

(assert (=> b!1123746 (= lt!499181 (getCurrentListMapNoExtraKeys!4401 lt!499185 lt!499180 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2493 (Int (_ BitVec 64)) V!42755)

(assert (=> b!1123746 (= lt!499180 (array!73271 (store (arr!35284 _values!996) i!673 (ValueCellFull!13401 (dynLambda!2493 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35821 _values!996)))))

(declare-fun lt!499184 () ListLongMap!15851)

(assert (=> b!1123746 (= lt!499184 (getCurrentListMapNoExtraKeys!4401 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1123747 () Bool)

(declare-fun res!750877 () Bool)

(assert (=> b!1123747 (=> (not res!750877) (not e!639777))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1123747 (= res!750877 (validKeyInArray!0 k0!934))))

(declare-fun b!1123748 () Bool)

(declare-fun res!750878 () Bool)

(assert (=> b!1123748 (=> (not res!750878) (not e!639777))))

(assert (=> b!1123748 (= res!750878 (= (select (arr!35283 _keys!1208) i!673) k0!934))))

(declare-fun b!1123749 () Bool)

(declare-fun e!639773 () Bool)

(declare-fun e!639778 () Bool)

(assert (=> b!1123749 (= e!639773 e!639778)))

(declare-fun res!750868 () Bool)

(assert (=> b!1123749 (=> res!750868 e!639778)))

(declare-fun lt!499183 () ListLongMap!15851)

(declare-fun contains!6456 (ListLongMap!15851 (_ BitVec 64)) Bool)

(assert (=> b!1123749 (= res!750868 (not (contains!6456 lt!499183 k0!934)))))

(assert (=> b!1123749 (= lt!499183 (getCurrentListMapNoExtraKeys!4401 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123750 () Bool)

(declare-fun e!639774 () Bool)

(assert (=> b!1123750 (= e!639777 e!639774)))

(declare-fun res!750866 () Bool)

(assert (=> b!1123750 (=> (not res!750866) (not e!639774))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73268 (_ BitVec 32)) Bool)

(assert (=> b!1123750 (= res!750866 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!499185 mask!1564))))

(assert (=> b!1123750 (= lt!499185 (array!73269 (store (arr!35283 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35820 _keys!1208)))))

(declare-fun b!1123751 () Bool)

(declare-fun res!750874 () Bool)

(assert (=> b!1123751 (=> res!750874 e!639778)))

(assert (=> b!1123751 (= res!750874 (or (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun mapNonEmpty!44149 () Bool)

(declare-fun tp!83778 () Bool)

(declare-fun e!639770 () Bool)

(assert (=> mapNonEmpty!44149 (= mapRes!44149 (and tp!83778 e!639770))))

(declare-fun mapRest!44149 () (Array (_ BitVec 32) ValueCell!13401))

(declare-fun mapKey!44149 () (_ BitVec 32))

(declare-fun mapValue!44149 () ValueCell!13401)

(assert (=> mapNonEmpty!44149 (= (arr!35284 _values!996) (store mapRest!44149 mapKey!44149 mapValue!44149))))

(declare-fun b!1123752 () Bool)

(declare-fun e!639772 () Bool)

(declare-fun call!47356 () ListLongMap!15851)

(declare-fun call!47357 () ListLongMap!15851)

(assert (=> b!1123752 (= e!639772 (= call!47356 call!47357))))

(declare-fun b!1123753 () Bool)

(assert (=> b!1123753 (= e!639778 true)))

(declare-fun +!3374 (ListLongMap!15851 tuple2!17870) ListLongMap!15851)

(assert (=> b!1123753 (contains!6456 (+!3374 lt!499183 (tuple2!17871 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944)) k0!934)))

(declare-datatypes ((Unit!36785 0))(
  ( (Unit!36786) )
))
(declare-fun lt!499178 () Unit!36785)

(declare-fun addStillContains!673 (ListLongMap!15851 (_ BitVec 64) V!42755 (_ BitVec 64)) Unit!36785)

(assert (=> b!1123753 (= lt!499178 (addStillContains!673 lt!499183 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944 k0!934))))

(declare-fun b!1123754 () Bool)

(declare-fun res!750879 () Bool)

(assert (=> b!1123754 (=> (not res!750879) (not e!639777))))

(declare-datatypes ((List!24705 0))(
  ( (Nil!24702) (Cons!24701 (h!25910 (_ BitVec 64)) (t!35395 List!24705)) )
))
(declare-fun arrayNoDuplicates!0 (array!73268 (_ BitVec 32) List!24705) Bool)

(assert (=> b!1123754 (= res!750879 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24702))))

(declare-fun bm!47353 () Bool)

(assert (=> bm!47353 (= call!47357 (getCurrentListMapNoExtraKeys!4401 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123755 () Bool)

(assert (=> b!1123755 (= e!639771 e!639773)))

(declare-fun res!750875 () Bool)

(assert (=> b!1123755 (=> res!750875 e!639773)))

(assert (=> b!1123755 (= res!750875 (not (= (select (arr!35283 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1123755 e!639772))

(declare-fun c!109487 () Bool)

(assert (=> b!1123755 (= c!109487 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!499179 () Unit!36785)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!349 (array!73268 array!73270 (_ BitVec 32) (_ BitVec 32) V!42755 V!42755 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36785)

(assert (=> b!1123755 (= lt!499179 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!349 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1123756 () Bool)

(declare-fun res!750873 () Bool)

(assert (=> b!1123756 (=> (not res!750873) (not e!639777))))

(assert (=> b!1123756 (= res!750873 (and (= (size!35821 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35820 _keys!1208) (size!35821 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1123757 () Bool)

(assert (=> b!1123757 (= e!639774 (not e!639776))))

(declare-fun res!750869 () Bool)

(assert (=> b!1123757 (=> res!750869 e!639776)))

(assert (=> b!1123757 (= res!750869 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73268 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1123757 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!499182 () Unit!36785)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73268 (_ BitVec 64) (_ BitVec 32)) Unit!36785)

(assert (=> b!1123757 (= lt!499182 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1123758 () Bool)

(declare-fun -!1096 (ListLongMap!15851 (_ BitVec 64)) ListLongMap!15851)

(assert (=> b!1123758 (= e!639772 (= call!47356 (-!1096 call!47357 k0!934)))))

(declare-fun b!1123759 () Bool)

(declare-fun res!750870 () Bool)

(assert (=> b!1123759 (=> (not res!750870) (not e!639774))))

(assert (=> b!1123759 (= res!750870 (arrayNoDuplicates!0 lt!499185 #b00000000000000000000000000000000 Nil!24702))))

(declare-fun b!1123760 () Bool)

(assert (=> b!1123760 (= e!639770 tp_is_empty!28221)))

(declare-fun b!1123761 () Bool)

(declare-fun res!750872 () Bool)

(assert (=> b!1123761 (=> (not res!750872) (not e!639777))))

(assert (=> b!1123761 (= res!750872 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun bm!47354 () Bool)

(assert (=> bm!47354 (= call!47356 (getCurrentListMapNoExtraKeys!4401 lt!499185 lt!499180 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(assert (= (and start!98026 res!750865) b!1123743))

(assert (= (and b!1123743 res!750871) b!1123756))

(assert (= (and b!1123756 res!750873) b!1123761))

(assert (= (and b!1123761 res!750872) b!1123754))

(assert (= (and b!1123754 res!750879) b!1123742))

(assert (= (and b!1123742 res!750876) b!1123747))

(assert (= (and b!1123747 res!750877) b!1123748))

(assert (= (and b!1123748 res!750878) b!1123750))

(assert (= (and b!1123750 res!750866) b!1123759))

(assert (= (and b!1123759 res!750870) b!1123757))

(assert (= (and b!1123757 (not res!750869)) b!1123746))

(assert (= (and b!1123746 (not res!750867)) b!1123755))

(assert (= (and b!1123755 c!109487) b!1123758))

(assert (= (and b!1123755 (not c!109487)) b!1123752))

(assert (= (or b!1123758 b!1123752) bm!47354))

(assert (= (or b!1123758 b!1123752) bm!47353))

(assert (= (and b!1123755 (not res!750875)) b!1123749))

(assert (= (and b!1123749 (not res!750868)) b!1123751))

(assert (= (and b!1123751 (not res!750874)) b!1123753))

(assert (= (and b!1123744 condMapEmpty!44149) mapIsEmpty!44149))

(assert (= (and b!1123744 (not condMapEmpty!44149)) mapNonEmpty!44149))

(get-info :version)

(assert (= (and mapNonEmpty!44149 ((_ is ValueCellFull!13401) mapValue!44149)) b!1123760))

(assert (= (and b!1123744 ((_ is ValueCellFull!13401) mapDefault!44149)) b!1123745))

(assert (= start!98026 b!1123744))

(declare-fun b_lambda!18695 () Bool)

(assert (=> (not b_lambda!18695) (not b!1123746)))

(declare-fun t!35393 () Bool)

(declare-fun tb!8511 () Bool)

(assert (=> (and start!98026 (= defaultEntry!1004 defaultEntry!1004) t!35393) tb!8511))

(declare-fun result!17575 () Bool)

(assert (=> tb!8511 (= result!17575 tp_is_empty!28221)))

(assert (=> b!1123746 t!35393))

(declare-fun b_and!38189 () Bool)

(assert (= b_and!38187 (and (=> t!35393 result!17575) b_and!38189)))

(declare-fun m!1038259 () Bool)

(assert (=> b!1123743 m!1038259))

(declare-fun m!1038261 () Bool)

(assert (=> bm!47353 m!1038261))

(declare-fun m!1038263 () Bool)

(assert (=> b!1123758 m!1038263))

(declare-fun m!1038265 () Bool)

(assert (=> b!1123754 m!1038265))

(declare-fun m!1038267 () Bool)

(assert (=> b!1123759 m!1038267))

(declare-fun m!1038269 () Bool)

(assert (=> b!1123749 m!1038269))

(assert (=> b!1123749 m!1038261))

(declare-fun m!1038271 () Bool)

(assert (=> b!1123755 m!1038271))

(declare-fun m!1038273 () Bool)

(assert (=> b!1123755 m!1038273))

(declare-fun m!1038275 () Bool)

(assert (=> bm!47354 m!1038275))

(declare-fun m!1038277 () Bool)

(assert (=> start!98026 m!1038277))

(declare-fun m!1038279 () Bool)

(assert (=> start!98026 m!1038279))

(declare-fun m!1038281 () Bool)

(assert (=> mapNonEmpty!44149 m!1038281))

(declare-fun m!1038283 () Bool)

(assert (=> b!1123748 m!1038283))

(declare-fun m!1038285 () Bool)

(assert (=> b!1123753 m!1038285))

(assert (=> b!1123753 m!1038285))

(declare-fun m!1038287 () Bool)

(assert (=> b!1123753 m!1038287))

(declare-fun m!1038289 () Bool)

(assert (=> b!1123753 m!1038289))

(declare-fun m!1038291 () Bool)

(assert (=> b!1123750 m!1038291))

(declare-fun m!1038293 () Bool)

(assert (=> b!1123750 m!1038293))

(declare-fun m!1038295 () Bool)

(assert (=> b!1123757 m!1038295))

(declare-fun m!1038297 () Bool)

(assert (=> b!1123757 m!1038297))

(declare-fun m!1038299 () Bool)

(assert (=> b!1123746 m!1038299))

(declare-fun m!1038301 () Bool)

(assert (=> b!1123746 m!1038301))

(declare-fun m!1038303 () Bool)

(assert (=> b!1123746 m!1038303))

(declare-fun m!1038305 () Bool)

(assert (=> b!1123746 m!1038305))

(declare-fun m!1038307 () Bool)

(assert (=> b!1123761 m!1038307))

(declare-fun m!1038309 () Bool)

(assert (=> b!1123747 m!1038309))

(check-sat (not b_next!23691) tp_is_empty!28221 (not b!1123743) (not b!1123759) (not b!1123749) (not b_lambda!18695) (not b!1123746) (not b!1123755) (not b!1123758) (not b!1123750) (not b!1123757) (not start!98026) (not b!1123747) (not mapNonEmpty!44149) b_and!38189 (not bm!47354) (not b!1123761) (not b!1123754) (not bm!47353) (not b!1123753))
(check-sat b_and!38189 (not b_next!23691))

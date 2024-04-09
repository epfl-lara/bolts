; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98260 () Bool)

(assert start!98260)

(declare-fun b_free!23925 () Bool)

(declare-fun b_next!23925 () Bool)

(assert (=> start!98260 (= b_free!23925 (not b_next!23925))))

(declare-fun tp!84479 () Bool)

(declare-fun b_and!38655 () Bool)

(assert (=> start!98260 (= tp!84479 b_and!38655)))

(declare-fun b!1131170 () Bool)

(declare-fun e!643794 () Bool)

(declare-fun e!643801 () Bool)

(assert (=> b!1131170 (= e!643794 (not e!643801))))

(declare-fun res!755799 () Bool)

(assert (=> b!1131170 (=> res!755799 e!643801)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1131170 (= res!755799 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73728 0))(
  ( (array!73729 (arr!35513 (Array (_ BitVec 32) (_ BitVec 64))) (size!36050 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73728)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73728 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1131170 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!37009 0))(
  ( (Unit!37010) )
))
(declare-fun lt!502393 () Unit!37009)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73728 (_ BitVec 64) (_ BitVec 32)) Unit!37009)

(assert (=> b!1131170 (= lt!502393 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1131171 () Bool)

(declare-fun e!643806 () Unit!37009)

(declare-fun lt!502400 () Unit!37009)

(assert (=> b!1131171 (= e!643806 lt!502400)))

(declare-fun call!48579 () Unit!37009)

(assert (=> b!1131171 (= lt!502400 call!48579)))

(declare-fun call!48578 () Bool)

(assert (=> b!1131171 call!48578))

(declare-fun b!1131172 () Bool)

(declare-fun e!643799 () Bool)

(declare-fun e!643795 () Bool)

(assert (=> b!1131172 (= e!643799 e!643795)))

(declare-fun res!755795 () Bool)

(assert (=> b!1131172 (=> res!755795 e!643795)))

(declare-datatypes ((V!43067 0))(
  ( (V!43068 (val!14284 Int)) )
))
(declare-datatypes ((tuple2!18090 0))(
  ( (tuple2!18091 (_1!9055 (_ BitVec 64)) (_2!9055 V!43067)) )
))
(declare-datatypes ((List!24907 0))(
  ( (Nil!24904) (Cons!24903 (h!26112 tuple2!18090) (t!35831 List!24907)) )
))
(declare-datatypes ((ListLongMap!16071 0))(
  ( (ListLongMap!16072 (toList!8051 List!24907)) )
))
(declare-fun lt!502394 () ListLongMap!16071)

(declare-fun contains!6544 (ListLongMap!16071 (_ BitVec 64)) Bool)

(assert (=> b!1131172 (= res!755795 (not (contains!6544 lt!502394 k0!934)))))

(declare-fun zeroValue!944 () V!43067)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13518 0))(
  ( (ValueCellFull!13518 (v!16918 V!43067)) (EmptyCell!13518) )
))
(declare-datatypes ((array!73730 0))(
  ( (array!73731 (arr!35514 (Array (_ BitVec 32) ValueCell!13518)) (size!36051 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73730)

(declare-fun minValue!944 () V!43067)

(declare-fun getCurrentListMapNoExtraKeys!4503 (array!73728 array!73730 (_ BitVec 32) (_ BitVec 32) V!43067 V!43067 (_ BitVec 32) Int) ListLongMap!16071)

(assert (=> b!1131172 (= lt!502394 (getCurrentListMapNoExtraKeys!4503 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131174 () Bool)

(declare-fun res!755794 () Bool)

(declare-fun e!643803 () Bool)

(assert (=> b!1131174 (=> (not res!755794) (not e!643803))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1131174 (= res!755794 (validMask!0 mask!1564))))

(declare-fun b!1131175 () Bool)

(declare-fun res!755801 () Bool)

(assert (=> b!1131175 (=> (not res!755801) (not e!643803))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1131175 (= res!755801 (validKeyInArray!0 k0!934))))

(declare-fun b!1131176 () Bool)

(declare-fun e!643808 () Bool)

(assert (=> b!1131176 (= e!643801 e!643808)))

(declare-fun res!755791 () Bool)

(assert (=> b!1131176 (=> res!755791 e!643808)))

(assert (=> b!1131176 (= res!755791 (not (= from!1455 i!673)))))

(declare-fun lt!502398 () ListLongMap!16071)

(declare-fun lt!502402 () array!73728)

(declare-fun lt!502391 () array!73730)

(assert (=> b!1131176 (= lt!502398 (getCurrentListMapNoExtraKeys!4503 lt!502402 lt!502391 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2577 (Int (_ BitVec 64)) V!43067)

(assert (=> b!1131176 (= lt!502391 (array!73731 (store (arr!35514 _values!996) i!673 (ValueCellFull!13518 (dynLambda!2577 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!36051 _values!996)))))

(declare-fun lt!502399 () ListLongMap!16071)

(assert (=> b!1131176 (= lt!502399 (getCurrentListMapNoExtraKeys!4503 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun bm!48571 () Bool)

(declare-fun call!48580 () Unit!37009)

(assert (=> bm!48571 (= call!48579 call!48580)))

(declare-fun b!1131177 () Bool)

(declare-fun e!643805 () Unit!37009)

(declare-fun lt!502392 () Unit!37009)

(assert (=> b!1131177 (= e!643805 lt!502392)))

(declare-fun lt!502404 () Unit!37009)

(assert (=> b!1131177 (= lt!502404 call!48580)))

(declare-fun lt!502403 () ListLongMap!16071)

(declare-fun call!48581 () ListLongMap!16071)

(assert (=> b!1131177 (= lt!502403 call!48581)))

(declare-fun call!48576 () Bool)

(assert (=> b!1131177 call!48576))

(declare-fun addStillContains!716 (ListLongMap!16071 (_ BitVec 64) V!43067 (_ BitVec 64)) Unit!37009)

(assert (=> b!1131177 (= lt!502392 (addStillContains!716 lt!502403 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944 k0!934))))

(declare-fun +!3416 (ListLongMap!16071 tuple2!18090) ListLongMap!16071)

(assert (=> b!1131177 (contains!6544 (+!3416 lt!502403 (tuple2!18091 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944)) k0!934)))

(declare-fun mapNonEmpty!44500 () Bool)

(declare-fun mapRes!44500 () Bool)

(declare-fun tp!84480 () Bool)

(declare-fun e!643796 () Bool)

(assert (=> mapNonEmpty!44500 (= mapRes!44500 (and tp!84480 e!643796))))

(declare-fun mapKey!44500 () (_ BitVec 32))

(declare-fun mapValue!44500 () ValueCell!13518)

(declare-fun mapRest!44500 () (Array (_ BitVec 32) ValueCell!13518))

(assert (=> mapNonEmpty!44500 (= (arr!35514 _values!996) (store mapRest!44500 mapKey!44500 mapValue!44500))))

(declare-fun b!1131178 () Bool)

(declare-fun res!755797 () Bool)

(assert (=> b!1131178 (=> (not res!755797) (not e!643803))))

(assert (=> b!1131178 (= res!755797 (and (= (size!36051 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!36050 _keys!1208) (size!36051 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!44500 () Bool)

(assert (=> mapIsEmpty!44500 mapRes!44500))

(declare-fun c!110096 () Bool)

(declare-fun bm!48572 () Bool)

(declare-fun c!110097 () Bool)

(assert (=> bm!48572 (= call!48580 (addStillContains!716 lt!502394 (ite (or c!110097 c!110096) #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000) (ite (or c!110097 c!110096) zeroValue!944 minValue!944) k0!934))))

(declare-fun b!1131179 () Bool)

(declare-fun res!755798 () Bool)

(assert (=> b!1131179 (=> (not res!755798) (not e!643803))))

(assert (=> b!1131179 (= res!755798 (= (select (arr!35513 _keys!1208) i!673) k0!934))))

(declare-fun b!1131180 () Bool)

(declare-fun e!643807 () Unit!37009)

(assert (=> b!1131180 (= e!643805 e!643807)))

(declare-fun lt!502390 () Bool)

(assert (=> b!1131180 (= c!110096 (and (not lt!502390) (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!48573 () Bool)

(assert (=> bm!48573 (= call!48581 (+!3416 lt!502394 (ite (or c!110097 c!110096) (tuple2!18091 #b0000000000000000000000000000000000000000000000000000000000000000 zeroValue!944) (tuple2!18091 #b1000000000000000000000000000000000000000000000000000000000000000 minValue!944))))))

(declare-fun b!1131181 () Bool)

(assert (=> b!1131181 call!48578))

(declare-fun lt!502395 () Unit!37009)

(assert (=> b!1131181 (= lt!502395 call!48579)))

(assert (=> b!1131181 (= e!643807 lt!502395)))

(declare-fun bm!48574 () Bool)

(declare-fun call!48577 () ListLongMap!16071)

(assert (=> bm!48574 (= call!48577 (getCurrentListMapNoExtraKeys!4503 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131182 () Bool)

(declare-fun res!755788 () Bool)

(assert (=> b!1131182 (=> (not res!755788) (not e!643803))))

(assert (=> b!1131182 (= res!755788 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!36050 _keys!1208))))))

(declare-fun bm!48575 () Bool)

(declare-fun call!48574 () ListLongMap!16071)

(assert (=> bm!48575 (= call!48574 call!48581)))

(declare-fun b!1131173 () Bool)

(assert (=> b!1131173 (= e!643808 e!643799)))

(declare-fun res!755796 () Bool)

(assert (=> b!1131173 (=> res!755796 e!643799)))

(assert (=> b!1131173 (= res!755796 (not (= (select (arr!35513 _keys!1208) from!1455) k0!934)))))

(declare-fun e!643797 () Bool)

(assert (=> b!1131173 e!643797))

(declare-fun c!110098 () Bool)

(assert (=> b!1131173 (= c!110098 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!502397 () Unit!37009)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!432 (array!73728 array!73730 (_ BitVec 32) (_ BitVec 32) V!43067 V!43067 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!37009)

(assert (=> b!1131173 (= lt!502397 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!432 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun res!755789 () Bool)

(assert (=> start!98260 (=> (not res!755789) (not e!643803))))

(assert (=> start!98260 (= res!755789 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!36050 _keys!1208))))))

(assert (=> start!98260 e!643803))

(declare-fun tp_is_empty!28455 () Bool)

(assert (=> start!98260 tp_is_empty!28455))

(declare-fun array_inv!27110 (array!73728) Bool)

(assert (=> start!98260 (array_inv!27110 _keys!1208)))

(assert (=> start!98260 true))

(assert (=> start!98260 tp!84479))

(declare-fun e!643798 () Bool)

(declare-fun array_inv!27111 (array!73730) Bool)

(assert (=> start!98260 (and (array_inv!27111 _values!996) e!643798)))

(declare-fun b!1131183 () Bool)

(declare-fun Unit!37011 () Unit!37009)

(assert (=> b!1131183 (= e!643806 Unit!37011)))

(declare-fun b!1131184 () Bool)

(assert (=> b!1131184 (= e!643796 tp_is_empty!28455)))

(declare-fun bm!48576 () Bool)

(assert (=> bm!48576 (= call!48576 (contains!6544 (ite c!110097 lt!502403 call!48574) k0!934))))

(declare-fun bm!48577 () Bool)

(declare-fun call!48575 () ListLongMap!16071)

(assert (=> bm!48577 (= call!48575 (getCurrentListMapNoExtraKeys!4503 lt!502402 lt!502391 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1131185 () Bool)

(declare-fun c!110099 () Bool)

(assert (=> b!1131185 (= c!110099 (and (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000)) lt!502390))))

(assert (=> b!1131185 (= e!643807 e!643806)))

(declare-fun b!1131186 () Bool)

(declare-fun e!643802 () Bool)

(assert (=> b!1131186 (= e!643795 e!643802)))

(declare-fun res!755793 () Bool)

(assert (=> b!1131186 (=> res!755793 e!643802)))

(assert (=> b!1131186 (= res!755793 (or (bvslt (bvadd #b00000000000000000000000000000001 from!1455) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!1455) (size!36050 _keys!1208))))))

(declare-fun lt!502401 () Unit!37009)

(assert (=> b!1131186 (= lt!502401 e!643805)))

(assert (=> b!1131186 (= c!110097 (and (not lt!502390) (not (= (bvand extraKeys!923 #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> b!1131186 (= lt!502390 (= (bvand extraKeys!923 #b00000000000000000000000000000001) #b00000000000000000000000000000000))))

(declare-fun b!1131187 () Bool)

(declare-fun e!643800 () Bool)

(assert (=> b!1131187 (= e!643800 tp_is_empty!28455)))

(declare-fun b!1131188 () Bool)

(declare-fun res!755790 () Bool)

(assert (=> b!1131188 (=> (not res!755790) (not e!643794))))

(declare-datatypes ((List!24908 0))(
  ( (Nil!24905) (Cons!24904 (h!26113 (_ BitVec 64)) (t!35832 List!24908)) )
))
(declare-fun arrayNoDuplicates!0 (array!73728 (_ BitVec 32) List!24908) Bool)

(assert (=> b!1131188 (= res!755790 (arrayNoDuplicates!0 lt!502402 #b00000000000000000000000000000000 Nil!24905))))

(declare-fun b!1131189 () Bool)

(assert (=> b!1131189 (= e!643802 true)))

(declare-fun lt!502396 () Bool)

(declare-fun getCurrentListMap!4452 (array!73728 array!73730 (_ BitVec 32) (_ BitVec 32) V!43067 V!43067 (_ BitVec 32) Int) ListLongMap!16071)

(assert (=> b!1131189 (= lt!502396 (contains!6544 (getCurrentListMap!4452 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1131190 () Bool)

(declare-fun -!1177 (ListLongMap!16071 (_ BitVec 64)) ListLongMap!16071)

(assert (=> b!1131190 (= e!643797 (= call!48575 (-!1177 call!48577 k0!934)))))

(declare-fun b!1131191 () Bool)

(declare-fun res!755800 () Bool)

(assert (=> b!1131191 (=> (not res!755800) (not e!643803))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73728 (_ BitVec 32)) Bool)

(assert (=> b!1131191 (= res!755800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1131192 () Bool)

(declare-fun res!755792 () Bool)

(assert (=> b!1131192 (=> (not res!755792) (not e!643803))))

(assert (=> b!1131192 (= res!755792 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24905))))

(declare-fun bm!48578 () Bool)

(assert (=> bm!48578 (= call!48578 call!48576)))

(declare-fun b!1131193 () Bool)

(assert (=> b!1131193 (= e!643797 (= call!48575 call!48577))))

(declare-fun b!1131194 () Bool)

(assert (=> b!1131194 (= e!643798 (and e!643800 mapRes!44500))))

(declare-fun condMapEmpty!44500 () Bool)

(declare-fun mapDefault!44500 () ValueCell!13518)

(assert (=> b!1131194 (= condMapEmpty!44500 (= (arr!35514 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13518)) mapDefault!44500)))))

(declare-fun b!1131195 () Bool)

(assert (=> b!1131195 (= e!643803 e!643794)))

(declare-fun res!755802 () Bool)

(assert (=> b!1131195 (=> (not res!755802) (not e!643794))))

(assert (=> b!1131195 (= res!755802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!502402 mask!1564))))

(assert (=> b!1131195 (= lt!502402 (array!73729 (store (arr!35513 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!36050 _keys!1208)))))

(assert (= (and start!98260 res!755789) b!1131174))

(assert (= (and b!1131174 res!755794) b!1131178))

(assert (= (and b!1131178 res!755797) b!1131191))

(assert (= (and b!1131191 res!755800) b!1131192))

(assert (= (and b!1131192 res!755792) b!1131182))

(assert (= (and b!1131182 res!755788) b!1131175))

(assert (= (and b!1131175 res!755801) b!1131179))

(assert (= (and b!1131179 res!755798) b!1131195))

(assert (= (and b!1131195 res!755802) b!1131188))

(assert (= (and b!1131188 res!755790) b!1131170))

(assert (= (and b!1131170 (not res!755799)) b!1131176))

(assert (= (and b!1131176 (not res!755791)) b!1131173))

(assert (= (and b!1131173 c!110098) b!1131190))

(assert (= (and b!1131173 (not c!110098)) b!1131193))

(assert (= (or b!1131190 b!1131193) bm!48577))

(assert (= (or b!1131190 b!1131193) bm!48574))

(assert (= (and b!1131173 (not res!755796)) b!1131172))

(assert (= (and b!1131172 (not res!755795)) b!1131186))

(assert (= (and b!1131186 c!110097) b!1131177))

(assert (= (and b!1131186 (not c!110097)) b!1131180))

(assert (= (and b!1131180 c!110096) b!1131181))

(assert (= (and b!1131180 (not c!110096)) b!1131185))

(assert (= (and b!1131185 c!110099) b!1131171))

(assert (= (and b!1131185 (not c!110099)) b!1131183))

(assert (= (or b!1131181 b!1131171) bm!48571))

(assert (= (or b!1131181 b!1131171) bm!48575))

(assert (= (or b!1131181 b!1131171) bm!48578))

(assert (= (or b!1131177 bm!48578) bm!48576))

(assert (= (or b!1131177 bm!48571) bm!48572))

(assert (= (or b!1131177 bm!48575) bm!48573))

(assert (= (and b!1131186 (not res!755793)) b!1131189))

(assert (= (and b!1131194 condMapEmpty!44500) mapIsEmpty!44500))

(assert (= (and b!1131194 (not condMapEmpty!44500)) mapNonEmpty!44500))

(get-info :version)

(assert (= (and mapNonEmpty!44500 ((_ is ValueCellFull!13518) mapValue!44500)) b!1131184))

(assert (= (and b!1131194 ((_ is ValueCellFull!13518) mapDefault!44500)) b!1131187))

(assert (= start!98260 b!1131194))

(declare-fun b_lambda!18929 () Bool)

(assert (=> (not b_lambda!18929) (not b!1131176)))

(declare-fun t!35830 () Bool)

(declare-fun tb!8745 () Bool)

(assert (=> (and start!98260 (= defaultEntry!1004 defaultEntry!1004) t!35830) tb!8745))

(declare-fun result!18043 () Bool)

(assert (=> tb!8745 (= result!18043 tp_is_empty!28455)))

(assert (=> b!1131176 t!35830))

(declare-fun b_and!38657 () Bool)

(assert (= b_and!38655 (and (=> t!35830 result!18043) b_and!38657)))

(declare-fun m!1044273 () Bool)

(assert (=> b!1131192 m!1044273))

(declare-fun m!1044275 () Bool)

(assert (=> bm!48573 m!1044275))

(declare-fun m!1044277 () Bool)

(assert (=> start!98260 m!1044277))

(declare-fun m!1044279 () Bool)

(assert (=> start!98260 m!1044279))

(declare-fun m!1044281 () Bool)

(assert (=> b!1131174 m!1044281))

(declare-fun m!1044283 () Bool)

(assert (=> bm!48576 m!1044283))

(declare-fun m!1044285 () Bool)

(assert (=> b!1131190 m!1044285))

(declare-fun m!1044287 () Bool)

(assert (=> b!1131191 m!1044287))

(declare-fun m!1044289 () Bool)

(assert (=> b!1131195 m!1044289))

(declare-fun m!1044291 () Bool)

(assert (=> b!1131195 m!1044291))

(declare-fun m!1044293 () Bool)

(assert (=> b!1131179 m!1044293))

(declare-fun m!1044295 () Bool)

(assert (=> bm!48574 m!1044295))

(declare-fun m!1044297 () Bool)

(assert (=> b!1131173 m!1044297))

(declare-fun m!1044299 () Bool)

(assert (=> b!1131173 m!1044299))

(declare-fun m!1044301 () Bool)

(assert (=> b!1131176 m!1044301))

(declare-fun m!1044303 () Bool)

(assert (=> b!1131176 m!1044303))

(declare-fun m!1044305 () Bool)

(assert (=> b!1131176 m!1044305))

(declare-fun m!1044307 () Bool)

(assert (=> b!1131176 m!1044307))

(declare-fun m!1044309 () Bool)

(assert (=> b!1131172 m!1044309))

(assert (=> b!1131172 m!1044295))

(declare-fun m!1044311 () Bool)

(assert (=> b!1131177 m!1044311))

(declare-fun m!1044313 () Bool)

(assert (=> b!1131177 m!1044313))

(assert (=> b!1131177 m!1044313))

(declare-fun m!1044315 () Bool)

(assert (=> b!1131177 m!1044315))

(declare-fun m!1044317 () Bool)

(assert (=> b!1131188 m!1044317))

(declare-fun m!1044319 () Bool)

(assert (=> bm!48577 m!1044319))

(declare-fun m!1044321 () Bool)

(assert (=> bm!48572 m!1044321))

(declare-fun m!1044323 () Bool)

(assert (=> b!1131175 m!1044323))

(declare-fun m!1044325 () Bool)

(assert (=> mapNonEmpty!44500 m!1044325))

(declare-fun m!1044327 () Bool)

(assert (=> b!1131170 m!1044327))

(declare-fun m!1044329 () Bool)

(assert (=> b!1131170 m!1044329))

(declare-fun m!1044331 () Bool)

(assert (=> b!1131189 m!1044331))

(assert (=> b!1131189 m!1044331))

(declare-fun m!1044333 () Bool)

(assert (=> b!1131189 m!1044333))

(check-sat (not start!98260) tp_is_empty!28455 (not b_next!23925) (not bm!48574) (not b!1131174) (not mapNonEmpty!44500) (not b!1131188) (not b!1131176) (not bm!48576) (not b!1131190) (not b!1131177) (not bm!48573) (not bm!48572) (not b!1131195) (not b_lambda!18929) (not b!1131189) b_and!38657 (not b!1131170) (not b!1131191) (not bm!48577) (not b!1131175) (not b!1131192) (not b!1131173) (not b!1131172))
(check-sat b_and!38657 (not b_next!23925))

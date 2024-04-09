; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!97978 () Bool)

(assert start!97978)

(declare-fun b_free!23643 () Bool)

(declare-fun b_next!23643 () Bool)

(assert (=> start!97978 (= b_free!23643 (not b_next!23643))))

(declare-fun tp!83634 () Bool)

(declare-fun b_and!38091 () Bool)

(assert (=> start!97978 (= tp!83634 b_and!38091)))

(declare-fun b!1122379 () Bool)

(declare-fun e!639048 () Bool)

(declare-fun e!639049 () Bool)

(assert (=> b!1122379 (= e!639048 (not e!639049))))

(declare-fun res!749913 () Bool)

(assert (=> b!1122379 (=> res!749913 e!639049)))

(declare-fun from!1455 () (_ BitVec 32))

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1122379 (= res!749913 (bvsgt from!1455 i!673))))

(declare-datatypes ((array!73172 0))(
  ( (array!73173 (arr!35235 (Array (_ BitVec 32) (_ BitVec 64))) (size!35772 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73172)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73172 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1122379 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36747 0))(
  ( (Unit!36748) )
))
(declare-fun lt!498679 () Unit!36747)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73172 (_ BitVec 64) (_ BitVec 32)) Unit!36747)

(assert (=> b!1122379 (= lt!498679 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1122380 () Bool)

(declare-fun e!639045 () Bool)

(declare-fun tp_is_empty!28173 () Bool)

(assert (=> b!1122380 (= e!639045 tp_is_empty!28173)))

(declare-fun b!1122381 () Bool)

(declare-fun e!639046 () Bool)

(assert (=> b!1122381 (= e!639046 e!639048)))

(declare-fun res!749917 () Bool)

(assert (=> b!1122381 (=> (not res!749917) (not e!639048))))

(declare-fun lt!498681 () array!73172)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73172 (_ BitVec 32)) Bool)

(assert (=> b!1122381 (= res!749917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!498681 mask!1564))))

(assert (=> b!1122381 (= lt!498681 (array!73173 (store (arr!35235 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35772 _keys!1208)))))

(declare-fun mapIsEmpty!44077 () Bool)

(declare-fun mapRes!44077 () Bool)

(assert (=> mapIsEmpty!44077 mapRes!44077))

(declare-fun b!1122382 () Bool)

(declare-fun e!639053 () Bool)

(assert (=> b!1122382 (= e!639053 (and e!639045 mapRes!44077))))

(declare-fun condMapEmpty!44077 () Bool)

(declare-datatypes ((V!42691 0))(
  ( (V!42692 (val!14143 Int)) )
))
(declare-datatypes ((ValueCell!13377 0))(
  ( (ValueCellFull!13377 (v!16777 V!42691)) (EmptyCell!13377) )
))
(declare-datatypes ((array!73174 0))(
  ( (array!73175 (arr!35236 (Array (_ BitVec 32) ValueCell!13377)) (size!35773 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73174)

(declare-fun mapDefault!44077 () ValueCell!13377)

(assert (=> b!1122382 (= condMapEmpty!44077 (= (arr!35236 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13377)) mapDefault!44077)))))

(declare-fun zeroValue!944 () V!42691)

(declare-fun defaultEntry!1004 () Int)

(declare-fun bm!47209 () Bool)

(declare-fun minValue!944 () V!42691)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-datatypes ((tuple2!17826 0))(
  ( (tuple2!17827 (_1!8923 (_ BitVec 64)) (_2!8923 V!42691)) )
))
(declare-datatypes ((List!24663 0))(
  ( (Nil!24660) (Cons!24659 (h!25868 tuple2!17826) (t!35305 List!24663)) )
))
(declare-datatypes ((ListLongMap!15807 0))(
  ( (ListLongMap!15808 (toList!7919 List!24663)) )
))
(declare-fun call!47212 () ListLongMap!15807)

(declare-fun getCurrentListMapNoExtraKeys!4379 (array!73172 array!73174 (_ BitVec 32) (_ BitVec 32) V!42691 V!42691 (_ BitVec 32) Int) ListLongMap!15807)

(assert (=> bm!47209 (= call!47212 (getCurrentListMapNoExtraKeys!4379 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122383 () Bool)

(declare-fun res!749921 () Bool)

(assert (=> b!1122383 (=> (not res!749921) (not e!639046))))

(declare-datatypes ((List!24664 0))(
  ( (Nil!24661) (Cons!24660 (h!25869 (_ BitVec 64)) (t!35306 List!24664)) )
))
(declare-fun arrayNoDuplicates!0 (array!73172 (_ BitVec 32) List!24664) Bool)

(assert (=> b!1122383 (= res!749921 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24661))))

(declare-fun b!1122384 () Bool)

(declare-fun res!749910 () Bool)

(assert (=> b!1122384 (=> (not res!749910) (not e!639048))))

(assert (=> b!1122384 (= res!749910 (arrayNoDuplicates!0 lt!498681 #b00000000000000000000000000000000 Nil!24661))))

(declare-fun call!47213 () ListLongMap!15807)

(declare-fun bm!47210 () Bool)

(declare-fun lt!498683 () array!73174)

(assert (=> bm!47210 (= call!47213 (getCurrentListMapNoExtraKeys!4379 lt!498681 lt!498683 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122385 () Bool)

(declare-fun res!749915 () Bool)

(assert (=> b!1122385 (=> (not res!749915) (not e!639046))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1122385 (= res!749915 (validMask!0 mask!1564))))

(declare-fun b!1122386 () Bool)

(declare-fun e!639044 () Bool)

(declare-fun -!1082 (ListLongMap!15807 (_ BitVec 64)) ListLongMap!15807)

(assert (=> b!1122386 (= e!639044 (= call!47213 (-!1082 call!47212 k0!934)))))

(declare-fun b!1122387 () Bool)

(assert (=> b!1122387 (= e!639044 (= call!47213 call!47212))))

(declare-fun b!1122388 () Bool)

(declare-fun e!639050 () Bool)

(assert (=> b!1122388 (= e!639049 e!639050)))

(declare-fun res!749916 () Bool)

(assert (=> b!1122388 (=> res!749916 e!639050)))

(assert (=> b!1122388 (= res!749916 (not (= from!1455 i!673)))))

(declare-fun lt!498682 () ListLongMap!15807)

(assert (=> b!1122388 (= lt!498682 (getCurrentListMapNoExtraKeys!4379 lt!498681 lt!498683 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2476 (Int (_ BitVec 64)) V!42691)

(assert (=> b!1122388 (= lt!498683 (array!73175 (store (arr!35236 _values!996) i!673 (ValueCellFull!13377 (dynLambda!2476 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35773 _values!996)))))

(declare-fun lt!498680 () ListLongMap!15807)

(assert (=> b!1122388 (= lt!498680 (getCurrentListMapNoExtraKeys!4379 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1122389 () Bool)

(declare-fun e!639051 () Bool)

(assert (=> b!1122389 (= e!639051 true)))

(declare-fun lt!498684 () Bool)

(declare-fun contains!6439 (ListLongMap!15807 (_ BitVec 64)) Bool)

(assert (=> b!1122389 (= lt!498684 (contains!6439 (getCurrentListMapNoExtraKeys!4379 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1122390 () Bool)

(assert (=> b!1122390 (= e!639050 e!639051)))

(declare-fun res!749911 () Bool)

(assert (=> b!1122390 (=> res!749911 e!639051)))

(assert (=> b!1122390 (= res!749911 (not (= (select (arr!35235 _keys!1208) from!1455) k0!934)))))

(assert (=> b!1122390 e!639044))

(declare-fun c!109415 () Bool)

(assert (=> b!1122390 (= c!109415 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun lt!498678 () Unit!36747)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!333 (array!73172 array!73174 (_ BitVec 32) (_ BitVec 32) V!42691 V!42691 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36747)

(assert (=> b!1122390 (= lt!498678 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!333 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1122391 () Bool)

(declare-fun res!749912 () Bool)

(assert (=> b!1122391 (=> (not res!749912) (not e!639046))))

(assert (=> b!1122391 (= res!749912 (and (= (size!35773 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35772 _keys!1208) (size!35773 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1122392 () Bool)

(declare-fun e!639052 () Bool)

(assert (=> b!1122392 (= e!639052 tp_is_empty!28173)))

(declare-fun b!1122393 () Bool)

(declare-fun res!749922 () Bool)

(assert (=> b!1122393 (=> (not res!749922) (not e!639046))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1122393 (= res!749922 (validKeyInArray!0 k0!934))))

(declare-fun b!1122394 () Bool)

(declare-fun res!749919 () Bool)

(assert (=> b!1122394 (=> (not res!749919) (not e!639046))))

(assert (=> b!1122394 (= res!749919 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun mapNonEmpty!44077 () Bool)

(declare-fun tp!83633 () Bool)

(assert (=> mapNonEmpty!44077 (= mapRes!44077 (and tp!83633 e!639052))))

(declare-fun mapValue!44077 () ValueCell!13377)

(declare-fun mapRest!44077 () (Array (_ BitVec 32) ValueCell!13377))

(declare-fun mapKey!44077 () (_ BitVec 32))

(assert (=> mapNonEmpty!44077 (= (arr!35236 _values!996) (store mapRest!44077 mapKey!44077 mapValue!44077))))

(declare-fun res!749920 () Bool)

(assert (=> start!97978 (=> (not res!749920) (not e!639046))))

(assert (=> start!97978 (= res!749920 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35772 _keys!1208))))))

(assert (=> start!97978 e!639046))

(assert (=> start!97978 tp_is_empty!28173))

(declare-fun array_inv!26928 (array!73172) Bool)

(assert (=> start!97978 (array_inv!26928 _keys!1208)))

(assert (=> start!97978 true))

(assert (=> start!97978 tp!83634))

(declare-fun array_inv!26929 (array!73174) Bool)

(assert (=> start!97978 (and (array_inv!26929 _values!996) e!639053)))

(declare-fun b!1122395 () Bool)

(declare-fun res!749918 () Bool)

(assert (=> b!1122395 (=> (not res!749918) (not e!639046))))

(assert (=> b!1122395 (= res!749918 (= (select (arr!35235 _keys!1208) i!673) k0!934))))

(declare-fun b!1122396 () Bool)

(declare-fun res!749914 () Bool)

(assert (=> b!1122396 (=> (not res!749914) (not e!639046))))

(assert (=> b!1122396 (= res!749914 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35772 _keys!1208))))))

(assert (= (and start!97978 res!749920) b!1122385))

(assert (= (and b!1122385 res!749915) b!1122391))

(assert (= (and b!1122391 res!749912) b!1122394))

(assert (= (and b!1122394 res!749919) b!1122383))

(assert (= (and b!1122383 res!749921) b!1122396))

(assert (= (and b!1122396 res!749914) b!1122393))

(assert (= (and b!1122393 res!749922) b!1122395))

(assert (= (and b!1122395 res!749918) b!1122381))

(assert (= (and b!1122381 res!749917) b!1122384))

(assert (= (and b!1122384 res!749910) b!1122379))

(assert (= (and b!1122379 (not res!749913)) b!1122388))

(assert (= (and b!1122388 (not res!749916)) b!1122390))

(assert (= (and b!1122390 c!109415) b!1122386))

(assert (= (and b!1122390 (not c!109415)) b!1122387))

(assert (= (or b!1122386 b!1122387) bm!47210))

(assert (= (or b!1122386 b!1122387) bm!47209))

(assert (= (and b!1122390 (not res!749911)) b!1122389))

(assert (= (and b!1122382 condMapEmpty!44077) mapIsEmpty!44077))

(assert (= (and b!1122382 (not condMapEmpty!44077)) mapNonEmpty!44077))

(get-info :version)

(assert (= (and mapNonEmpty!44077 ((_ is ValueCellFull!13377) mapValue!44077)) b!1122392))

(assert (= (and b!1122382 ((_ is ValueCellFull!13377) mapDefault!44077)) b!1122380))

(assert (= start!97978 b!1122382))

(declare-fun b_lambda!18647 () Bool)

(assert (=> (not b_lambda!18647) (not b!1122388)))

(declare-fun t!35304 () Bool)

(declare-fun tb!8463 () Bool)

(assert (=> (and start!97978 (= defaultEntry!1004 defaultEntry!1004) t!35304) tb!8463))

(declare-fun result!17479 () Bool)

(assert (=> tb!8463 (= result!17479 tp_is_empty!28173)))

(assert (=> b!1122388 t!35304))

(declare-fun b_and!38093 () Bool)

(assert (= b_and!38091 (and (=> t!35304 result!17479) b_and!38093)))

(declare-fun m!1037149 () Bool)

(assert (=> bm!47210 m!1037149))

(declare-fun m!1037151 () Bool)

(assert (=> b!1122384 m!1037151))

(declare-fun m!1037153 () Bool)

(assert (=> start!97978 m!1037153))

(declare-fun m!1037155 () Bool)

(assert (=> start!97978 m!1037155))

(declare-fun m!1037157 () Bool)

(assert (=> b!1122385 m!1037157))

(declare-fun m!1037159 () Bool)

(assert (=> b!1122394 m!1037159))

(declare-fun m!1037161 () Bool)

(assert (=> b!1122381 m!1037161))

(declare-fun m!1037163 () Bool)

(assert (=> b!1122381 m!1037163))

(declare-fun m!1037165 () Bool)

(assert (=> b!1122389 m!1037165))

(assert (=> b!1122389 m!1037165))

(declare-fun m!1037167 () Bool)

(assert (=> b!1122389 m!1037167))

(declare-fun m!1037169 () Bool)

(assert (=> b!1122379 m!1037169))

(declare-fun m!1037171 () Bool)

(assert (=> b!1122379 m!1037171))

(assert (=> bm!47209 m!1037165))

(declare-fun m!1037173 () Bool)

(assert (=> b!1122386 m!1037173))

(declare-fun m!1037175 () Bool)

(assert (=> mapNonEmpty!44077 m!1037175))

(declare-fun m!1037177 () Bool)

(assert (=> b!1122390 m!1037177))

(declare-fun m!1037179 () Bool)

(assert (=> b!1122390 m!1037179))

(declare-fun m!1037181 () Bool)

(assert (=> b!1122388 m!1037181))

(declare-fun m!1037183 () Bool)

(assert (=> b!1122388 m!1037183))

(declare-fun m!1037185 () Bool)

(assert (=> b!1122388 m!1037185))

(declare-fun m!1037187 () Bool)

(assert (=> b!1122388 m!1037187))

(declare-fun m!1037189 () Bool)

(assert (=> b!1122393 m!1037189))

(declare-fun m!1037191 () Bool)

(assert (=> b!1122383 m!1037191))

(declare-fun m!1037193 () Bool)

(assert (=> b!1122395 m!1037193))

(check-sat (not b_lambda!18647) (not b!1122384) (not b!1122393) (not b!1122390) (not bm!47209) (not bm!47210) (not b!1122394) (not b!1122385) (not b!1122383) (not b!1122381) (not b!1122388) (not start!97978) (not b!1122379) (not b_next!23643) (not b!1122389) tp_is_empty!28173 b_and!38093 (not mapNonEmpty!44077) (not b!1122386))
(check-sat b_and!38093 (not b_next!23643))

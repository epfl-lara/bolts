; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98104 () Bool)

(assert start!98104)

(declare-fun b_free!23769 () Bool)

(declare-fun b_next!23769 () Bool)

(assert (=> start!98104 (= b_free!23769 (not b_next!23769))))

(declare-fun tp!84011 () Bool)

(declare-fun b_and!38343 () Bool)

(assert (=> start!98104 (= tp!84011 b_and!38343)))

(declare-fun mapIsEmpty!44266 () Bool)

(declare-fun mapRes!44266 () Bool)

(assert (=> mapIsEmpty!44266 mapRes!44266))

(declare-fun b!1126096 () Bool)

(declare-fun e!641024 () Bool)

(declare-fun e!641028 () Bool)

(assert (=> b!1126096 (= e!641024 e!641028)))

(declare-fun res!752559 () Bool)

(assert (=> b!1126096 (=> res!752559 e!641028)))

(declare-datatypes ((array!73420 0))(
  ( (array!73421 (arr!35359 (Array (_ BitVec 32) (_ BitVec 64))) (size!35896 (_ BitVec 32))) )
))
(declare-fun _keys!1208 () array!73420)

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> b!1126096 (= res!752559 (not (= (select (arr!35359 _keys!1208) from!1455) k0!934)))))

(declare-fun e!641027 () Bool)

(assert (=> b!1126096 e!641027))

(declare-fun c!109604 () Bool)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1126096 (= c!109604 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-datatypes ((V!42859 0))(
  ( (V!42860 (val!14206 Int)) )
))
(declare-fun zeroValue!944 () V!42859)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-datatypes ((ValueCell!13440 0))(
  ( (ValueCellFull!13440 (v!16840 V!42859)) (EmptyCell!13440) )
))
(declare-datatypes ((array!73422 0))(
  ( (array!73423 (arr!35360 (Array (_ BitVec 32) ValueCell!13440)) (size!35897 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73422)

(declare-fun minValue!944 () V!42859)

(declare-datatypes ((Unit!36849 0))(
  ( (Unit!36850) )
))
(declare-fun lt!500085 () Unit!36849)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!374 (array!73420 array!73422 (_ BitVec 32) (_ BitVec 32) V!42859 V!42859 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36849)

(assert (=> b!1126096 (= lt!500085 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!374 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126097 () Bool)

(declare-fun res!752565 () Bool)

(declare-fun e!641031 () Bool)

(assert (=> b!1126097 (=> (not res!752565) (not e!641031))))

(assert (=> b!1126097 (= res!752565 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35896 _keys!1208))))))

(declare-fun b!1126098 () Bool)

(declare-fun res!752566 () Bool)

(assert (=> b!1126098 (=> (not res!752566) (not e!641031))))

(assert (=> b!1126098 (= res!752566 (= (select (arr!35359 _keys!1208) i!673) k0!934))))

(declare-fun b!1126099 () Bool)

(declare-fun e!641025 () Bool)

(declare-fun tp_is_empty!28299 () Bool)

(assert (=> b!1126099 (= e!641025 tp_is_empty!28299)))

(declare-fun b!1126100 () Bool)

(declare-fun e!641032 () Bool)

(declare-fun e!641029 () Bool)

(assert (=> b!1126100 (= e!641032 (not e!641029))))

(declare-fun res!752568 () Bool)

(assert (=> b!1126100 (=> res!752568 e!641029)))

(assert (=> b!1126100 (= res!752568 (bvsgt from!1455 i!673))))

(declare-fun arrayContainsKey!0 (array!73420 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1126100 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-fun lt!500083 () Unit!36849)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73420 (_ BitVec 64) (_ BitVec 32)) Unit!36849)

(assert (=> b!1126100 (= lt!500083 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1126101 () Bool)

(declare-datatypes ((tuple2!17944 0))(
  ( (tuple2!17945 (_1!8982 (_ BitVec 64)) (_2!8982 V!42859)) )
))
(declare-datatypes ((List!24771 0))(
  ( (Nil!24768) (Cons!24767 (h!25976 tuple2!17944) (t!35539 List!24771)) )
))
(declare-datatypes ((ListLongMap!15925 0))(
  ( (ListLongMap!15926 (toList!7978 List!24771)) )
))
(declare-fun call!47591 () ListLongMap!15925)

(declare-fun call!47590 () ListLongMap!15925)

(assert (=> b!1126101 (= e!641027 (= call!47591 call!47590))))

(declare-fun lt!500087 () array!73422)

(declare-fun lt!500084 () array!73420)

(declare-fun bm!47587 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!4437 (array!73420 array!73422 (_ BitVec 32) (_ BitVec 32) V!42859 V!42859 (_ BitVec 32) Int) ListLongMap!15925)

(assert (=> bm!47587 (= call!47591 (getCurrentListMapNoExtraKeys!4437 lt!500084 lt!500087 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126102 () Bool)

(declare-fun res!752557 () Bool)

(assert (=> b!1126102 (=> (not res!752557) (not e!641032))))

(declare-datatypes ((List!24772 0))(
  ( (Nil!24769) (Cons!24768 (h!25977 (_ BitVec 64)) (t!35540 List!24772)) )
))
(declare-fun arrayNoDuplicates!0 (array!73420 (_ BitVec 32) List!24772) Bool)

(assert (=> b!1126102 (= res!752557 (arrayNoDuplicates!0 lt!500084 #b00000000000000000000000000000000 Nil!24769))))

(declare-fun mapNonEmpty!44266 () Bool)

(declare-fun tp!84012 () Bool)

(assert (=> mapNonEmpty!44266 (= mapRes!44266 (and tp!84012 e!641025))))

(declare-fun mapRest!44266 () (Array (_ BitVec 32) ValueCell!13440))

(declare-fun mapValue!44266 () ValueCell!13440)

(declare-fun mapKey!44266 () (_ BitVec 32))

(assert (=> mapNonEmpty!44266 (= (arr!35360 _values!996) (store mapRest!44266 mapKey!44266 mapValue!44266))))

(declare-fun b!1126103 () Bool)

(assert (=> b!1126103 (= e!641029 e!641024)))

(declare-fun res!752564 () Bool)

(assert (=> b!1126103 (=> res!752564 e!641024)))

(assert (=> b!1126103 (= res!752564 (not (= from!1455 i!673)))))

(declare-fun lt!500086 () ListLongMap!15925)

(assert (=> b!1126103 (= lt!500086 (getCurrentListMapNoExtraKeys!4437 lt!500084 lt!500087 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2518 (Int (_ BitVec 64)) V!42859)

(assert (=> b!1126103 (= lt!500087 (array!73423 (store (arr!35360 _values!996) i!673 (ValueCellFull!13440 (dynLambda!2518 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35897 _values!996)))))

(declare-fun lt!500088 () ListLongMap!15925)

(assert (=> b!1126103 (= lt!500088 (getCurrentListMapNoExtraKeys!4437 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun b!1126104 () Bool)

(assert (=> b!1126104 (= e!641028 true)))

(declare-fun lt!500082 () Bool)

(declare-fun contains!6487 (ListLongMap!15925 (_ BitVec 64)) Bool)

(assert (=> b!1126104 (= lt!500082 (contains!6487 (getCurrentListMapNoExtraKeys!4437 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1126105 () Bool)

(declare-fun e!641033 () Bool)

(assert (=> b!1126105 (= e!641033 tp_is_empty!28299)))

(declare-fun b!1126106 () Bool)

(assert (=> b!1126106 (= e!641031 e!641032)))

(declare-fun res!752562 () Bool)

(assert (=> b!1126106 (=> (not res!752562) (not e!641032))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73420 (_ BitVec 32)) Bool)

(assert (=> b!1126106 (= res!752562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500084 mask!1564))))

(assert (=> b!1126106 (= lt!500084 (array!73421 (store (arr!35359 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35896 _keys!1208)))))

(declare-fun b!1126107 () Bool)

(declare-fun res!752561 () Bool)

(assert (=> b!1126107 (=> (not res!752561) (not e!641031))))

(assert (=> b!1126107 (= res!752561 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1126108 () Bool)

(declare-fun res!752558 () Bool)

(assert (=> b!1126108 (=> (not res!752558) (not e!641031))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1126108 (= res!752558 (validKeyInArray!0 k0!934))))

(declare-fun b!1126109 () Bool)

(declare-fun res!752567 () Bool)

(assert (=> b!1126109 (=> (not res!752567) (not e!641031))))

(assert (=> b!1126109 (= res!752567 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24769))))

(declare-fun b!1126110 () Bool)

(declare-fun res!752560 () Bool)

(assert (=> b!1126110 (=> (not res!752560) (not e!641031))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1126110 (= res!752560 (validMask!0 mask!1564))))

(declare-fun b!1126111 () Bool)

(declare-fun e!641026 () Bool)

(assert (=> b!1126111 (= e!641026 (and e!641033 mapRes!44266))))

(declare-fun condMapEmpty!44266 () Bool)

(declare-fun mapDefault!44266 () ValueCell!13440)

(assert (=> b!1126111 (= condMapEmpty!44266 (= (arr!35360 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13440)) mapDefault!44266)))))

(declare-fun b!1126112 () Bool)

(declare-fun res!752563 () Bool)

(assert (=> b!1126112 (=> (not res!752563) (not e!641031))))

(assert (=> b!1126112 (= res!752563 (and (= (size!35897 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35896 _keys!1208) (size!35897 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun res!752556 () Bool)

(assert (=> start!98104 (=> (not res!752556) (not e!641031))))

(assert (=> start!98104 (= res!752556 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35896 _keys!1208))))))

(assert (=> start!98104 e!641031))

(assert (=> start!98104 tp_is_empty!28299))

(declare-fun array_inv!27008 (array!73420) Bool)

(assert (=> start!98104 (array_inv!27008 _keys!1208)))

(assert (=> start!98104 true))

(assert (=> start!98104 tp!84011))

(declare-fun array_inv!27009 (array!73422) Bool)

(assert (=> start!98104 (and (array_inv!27009 _values!996) e!641026)))

(declare-fun bm!47588 () Bool)

(assert (=> bm!47588 (= call!47590 (getCurrentListMapNoExtraKeys!4437 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1126113 () Bool)

(declare-fun -!1120 (ListLongMap!15925 (_ BitVec 64)) ListLongMap!15925)

(assert (=> b!1126113 (= e!641027 (= call!47591 (-!1120 call!47590 k0!934)))))

(assert (= (and start!98104 res!752556) b!1126110))

(assert (= (and b!1126110 res!752560) b!1126112))

(assert (= (and b!1126112 res!752563) b!1126107))

(assert (= (and b!1126107 res!752561) b!1126109))

(assert (= (and b!1126109 res!752567) b!1126097))

(assert (= (and b!1126097 res!752565) b!1126108))

(assert (= (and b!1126108 res!752558) b!1126098))

(assert (= (and b!1126098 res!752566) b!1126106))

(assert (= (and b!1126106 res!752562) b!1126102))

(assert (= (and b!1126102 res!752557) b!1126100))

(assert (= (and b!1126100 (not res!752568)) b!1126103))

(assert (= (and b!1126103 (not res!752564)) b!1126096))

(assert (= (and b!1126096 c!109604) b!1126113))

(assert (= (and b!1126096 (not c!109604)) b!1126101))

(assert (= (or b!1126113 b!1126101) bm!47587))

(assert (= (or b!1126113 b!1126101) bm!47588))

(assert (= (and b!1126096 (not res!752559)) b!1126104))

(assert (= (and b!1126111 condMapEmpty!44266) mapIsEmpty!44266))

(assert (= (and b!1126111 (not condMapEmpty!44266)) mapNonEmpty!44266))

(get-info :version)

(assert (= (and mapNonEmpty!44266 ((_ is ValueCellFull!13440) mapValue!44266)) b!1126099))

(assert (= (and b!1126111 ((_ is ValueCellFull!13440) mapDefault!44266)) b!1126105))

(assert (= start!98104 b!1126111))

(declare-fun b_lambda!18773 () Bool)

(assert (=> (not b_lambda!18773) (not b!1126103)))

(declare-fun t!35538 () Bool)

(declare-fun tb!8589 () Bool)

(assert (=> (and start!98104 (= defaultEntry!1004 defaultEntry!1004) t!35538) tb!8589))

(declare-fun result!17731 () Bool)

(assert (=> tb!8589 (= result!17731 tp_is_empty!28299)))

(assert (=> b!1126103 t!35538))

(declare-fun b_and!38345 () Bool)

(assert (= b_and!38343 (and (=> t!35538 result!17731) b_and!38345)))

(declare-fun m!1040233 () Bool)

(assert (=> start!98104 m!1040233))

(declare-fun m!1040235 () Bool)

(assert (=> start!98104 m!1040235))

(declare-fun m!1040237 () Bool)

(assert (=> b!1126100 m!1040237))

(declare-fun m!1040239 () Bool)

(assert (=> b!1126100 m!1040239))

(declare-fun m!1040241 () Bool)

(assert (=> b!1126098 m!1040241))

(declare-fun m!1040243 () Bool)

(assert (=> b!1126108 m!1040243))

(declare-fun m!1040245 () Bool)

(assert (=> b!1126096 m!1040245))

(declare-fun m!1040247 () Bool)

(assert (=> b!1126096 m!1040247))

(declare-fun m!1040249 () Bool)

(assert (=> b!1126104 m!1040249))

(assert (=> b!1126104 m!1040249))

(declare-fun m!1040251 () Bool)

(assert (=> b!1126104 m!1040251))

(declare-fun m!1040253 () Bool)

(assert (=> bm!47587 m!1040253))

(declare-fun m!1040255 () Bool)

(assert (=> b!1126110 m!1040255))

(declare-fun m!1040257 () Bool)

(assert (=> b!1126106 m!1040257))

(declare-fun m!1040259 () Bool)

(assert (=> b!1126106 m!1040259))

(declare-fun m!1040261 () Bool)

(assert (=> b!1126103 m!1040261))

(declare-fun m!1040263 () Bool)

(assert (=> b!1126103 m!1040263))

(declare-fun m!1040265 () Bool)

(assert (=> b!1126103 m!1040265))

(declare-fun m!1040267 () Bool)

(assert (=> b!1126103 m!1040267))

(declare-fun m!1040269 () Bool)

(assert (=> b!1126102 m!1040269))

(declare-fun m!1040271 () Bool)

(assert (=> mapNonEmpty!44266 m!1040271))

(declare-fun m!1040273 () Bool)

(assert (=> b!1126107 m!1040273))

(assert (=> bm!47588 m!1040249))

(declare-fun m!1040275 () Bool)

(assert (=> b!1126109 m!1040275))

(declare-fun m!1040277 () Bool)

(assert (=> b!1126113 m!1040277))

(check-sat (not b_next!23769) (not b!1126113) (not b!1126104) (not b!1126106) (not mapNonEmpty!44266) (not start!98104) tp_is_empty!28299 (not b!1126103) b_and!38345 (not b!1126100) (not b!1126096) (not b!1126108) (not b!1126110) (not b!1126107) (not b!1126109) (not bm!47587) (not bm!47588) (not b!1126102) (not b_lambda!18773))
(check-sat b_and!38345 (not b_next!23769))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!98140 () Bool)

(assert start!98140)

(declare-fun b_free!23805 () Bool)

(declare-fun b_next!23805 () Bool)

(assert (=> start!98140 (= b_free!23805 (not b_next!23805))))

(declare-fun tp!84120 () Bool)

(declare-fun b_and!38415 () Bool)

(assert (=> start!98140 (= tp!84120 b_and!38415)))

(declare-fun b!1127113 () Bool)

(declare-fun e!641567 () Bool)

(declare-fun e!641570 () Bool)

(assert (=> b!1127113 (= e!641567 e!641570)))

(declare-fun res!753277 () Bool)

(assert (=> b!1127113 (=> (not res!753277) (not e!641570))))

(declare-datatypes ((array!73490 0))(
  ( (array!73491 (arr!35394 (Array (_ BitVec 32) (_ BitVec 64))) (size!35931 (_ BitVec 32))) )
))
(declare-fun lt!500456 () array!73490)

(declare-fun mask!1564 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!73490 (_ BitVec 32)) Bool)

(assert (=> b!1127113 (= res!753277 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!500456 mask!1564))))

(declare-fun _keys!1208 () array!73490)

(declare-fun i!673 () (_ BitVec 32))

(assert (=> b!1127113 (= lt!500456 (array!73491 (store (arr!35394 _keys!1208) i!673 #b1000000000000000000000000000000000000000000000000000000000000000) (size!35931 _keys!1208)))))

(declare-fun res!753270 () Bool)

(assert (=> start!98140 (=> (not res!753270) (not e!641567))))

(declare-fun from!1455 () (_ BitVec 32))

(assert (=> start!98140 (= res!753270 (and (bvsge from!1455 #b00000000000000000000000000000000) (bvsle from!1455 (size!35931 _keys!1208))))))

(assert (=> start!98140 e!641567))

(declare-fun tp_is_empty!28335 () Bool)

(assert (=> start!98140 tp_is_empty!28335))

(declare-fun array_inv!27028 (array!73490) Bool)

(assert (=> start!98140 (array_inv!27028 _keys!1208)))

(assert (=> start!98140 true))

(assert (=> start!98140 tp!84120))

(declare-datatypes ((V!42907 0))(
  ( (V!42908 (val!14224 Int)) )
))
(declare-datatypes ((ValueCell!13458 0))(
  ( (ValueCellFull!13458 (v!16858 V!42907)) (EmptyCell!13458) )
))
(declare-datatypes ((array!73492 0))(
  ( (array!73493 (arr!35395 (Array (_ BitVec 32) ValueCell!13458)) (size!35932 (_ BitVec 32))) )
))
(declare-fun _values!996 () array!73492)

(declare-fun e!641571 () Bool)

(declare-fun array_inv!27029 (array!73492) Bool)

(assert (=> start!98140 (and (array_inv!27029 _values!996) e!641571)))

(declare-fun b!1127114 () Bool)

(declare-fun e!641568 () Bool)

(assert (=> b!1127114 (= e!641570 (not e!641568))))

(declare-fun res!753272 () Bool)

(assert (=> b!1127114 (=> res!753272 e!641568)))

(assert (=> b!1127114 (= res!753272 (bvsgt from!1455 i!673))))

(declare-fun k0!934 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!73490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1127114 (arrayContainsKey!0 _keys!1208 k0!934 #b00000000000000000000000000000000)))

(declare-datatypes ((Unit!36881 0))(
  ( (Unit!36882) )
))
(declare-fun lt!500452 () Unit!36881)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!73490 (_ BitVec 64) (_ BitVec 32)) Unit!36881)

(assert (=> b!1127114 (= lt!500452 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!1208 k0!934 i!673))))

(declare-fun b!1127115 () Bool)

(declare-fun res!753275 () Bool)

(assert (=> b!1127115 (=> (not res!753275) (not e!641567))))

(declare-datatypes ((List!24801 0))(
  ( (Nil!24798) (Cons!24797 (h!26006 (_ BitVec 64)) (t!35605 List!24801)) )
))
(declare-fun arrayNoDuplicates!0 (array!73490 (_ BitVec 32) List!24801) Bool)

(assert (=> b!1127115 (= res!753275 (arrayNoDuplicates!0 _keys!1208 #b00000000000000000000000000000000 Nil!24798))))

(declare-fun b!1127116 () Bool)

(declare-fun e!641572 () Bool)

(declare-fun e!641564 () Bool)

(assert (=> b!1127116 (= e!641572 e!641564)))

(declare-fun res!753278 () Bool)

(assert (=> b!1127116 (=> res!753278 e!641564)))

(assert (=> b!1127116 (= res!753278 (not (= (select (arr!35394 _keys!1208) from!1455) k0!934)))))

(declare-fun e!641573 () Bool)

(assert (=> b!1127116 e!641573))

(declare-fun c!109658 () Bool)

(assert (=> b!1127116 (= c!109658 (bvsle (bvadd #b00000000000000000000000000000001 from!1455) i!673))))

(declare-fun zeroValue!944 () V!42907)

(declare-fun extraKeys!923 () (_ BitVec 32))

(declare-fun defaultEntry!1004 () Int)

(declare-fun lt!500455 () Unit!36881)

(declare-fun minValue!944 () V!42907)

(declare-fun lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!389 (array!73490 array!73492 (_ BitVec 32) (_ BitVec 32) V!42907 V!42907 (_ BitVec 32) (_ BitVec 64) (_ BitVec 32) Int) Unit!36881)

(assert (=> b!1127116 (= lt!500455 (lemmaRemoveValidKeyFromArrayThenMapNoExtrasRemoveKey!389 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 i!673 k0!934 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127117 () Bool)

(declare-fun e!641565 () Bool)

(assert (=> b!1127117 (= e!641565 tp_is_empty!28335)))

(declare-fun b!1127118 () Bool)

(declare-fun res!753276 () Bool)

(assert (=> b!1127118 (=> (not res!753276) (not e!641567))))

(assert (=> b!1127118 (= res!753276 (and (bvsge i!673 #b00000000000000000000000000000000) (bvslt i!673 (size!35931 _keys!1208))))))

(declare-fun b!1127119 () Bool)

(assert (=> b!1127119 (= e!641568 e!641572)))

(declare-fun res!753273 () Bool)

(assert (=> b!1127119 (=> res!753273 e!641572)))

(assert (=> b!1127119 (= res!753273 (not (= from!1455 i!673)))))

(declare-fun lt!500451 () array!73492)

(declare-datatypes ((tuple2!17976 0))(
  ( (tuple2!17977 (_1!8998 (_ BitVec 64)) (_2!8998 V!42907)) )
))
(declare-datatypes ((List!24802 0))(
  ( (Nil!24799) (Cons!24798 (h!26007 tuple2!17976) (t!35606 List!24802)) )
))
(declare-datatypes ((ListLongMap!15957 0))(
  ( (ListLongMap!15958 (toList!7994 List!24802)) )
))
(declare-fun lt!500453 () ListLongMap!15957)

(declare-fun getCurrentListMapNoExtraKeys!4453 (array!73490 array!73492 (_ BitVec 32) (_ BitVec 32) V!42907 V!42907 (_ BitVec 32) Int) ListLongMap!15957)

(assert (=> b!1127119 (= lt!500453 (getCurrentListMapNoExtraKeys!4453 lt!500456 lt!500451 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun dynLambda!2533 (Int (_ BitVec 64)) V!42907)

(assert (=> b!1127119 (= lt!500451 (array!73493 (store (arr!35395 _values!996) i!673 (ValueCellFull!13458 (dynLambda!2533 defaultEntry!1004 #b0000000000000000000000000000000000000000000000000000000000000000))) (size!35932 _values!996)))))

(declare-fun lt!500454 () ListLongMap!15957)

(assert (=> b!1127119 (= lt!500454 (getCurrentListMapNoExtraKeys!4453 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 from!1455 defaultEntry!1004))))

(declare-fun mapIsEmpty!44320 () Bool)

(declare-fun mapRes!44320 () Bool)

(assert (=> mapIsEmpty!44320 mapRes!44320))

(declare-fun bm!47695 () Bool)

(declare-fun call!47698 () ListLongMap!15957)

(assert (=> bm!47695 (= call!47698 (getCurrentListMapNoExtraKeys!4453 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun call!47699 () ListLongMap!15957)

(declare-fun b!1127120 () Bool)

(declare-fun -!1132 (ListLongMap!15957 (_ BitVec 64)) ListLongMap!15957)

(assert (=> b!1127120 (= e!641573 (= call!47699 (-!1132 call!47698 k0!934)))))

(declare-fun b!1127121 () Bool)

(declare-fun res!753274 () Bool)

(assert (=> b!1127121 (=> (not res!753274) (not e!641567))))

(assert (=> b!1127121 (= res!753274 (= (select (arr!35394 _keys!1208) i!673) k0!934))))

(declare-fun b!1127122 () Bool)

(assert (=> b!1127122 (= e!641571 (and e!641565 mapRes!44320))))

(declare-fun condMapEmpty!44320 () Bool)

(declare-fun mapDefault!44320 () ValueCell!13458)

(assert (=> b!1127122 (= condMapEmpty!44320 (= (arr!35395 _values!996) ((as const (Array (_ BitVec 32) ValueCell!13458)) mapDefault!44320)))))

(declare-fun b!1127123 () Bool)

(assert (=> b!1127123 (= e!641564 true)))

(declare-fun lt!500457 () Bool)

(declare-fun contains!6500 (ListLongMap!15957 (_ BitVec 64)) Bool)

(assert (=> b!1127123 (= lt!500457 (contains!6500 (getCurrentListMapNoExtraKeys!4453 _keys!1208 _values!996 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004) k0!934))))

(declare-fun b!1127124 () Bool)

(declare-fun res!753279 () Bool)

(assert (=> b!1127124 (=> (not res!753279) (not e!641567))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1127124 (= res!753279 (validMask!0 mask!1564))))

(declare-fun mapNonEmpty!44320 () Bool)

(declare-fun tp!84119 () Bool)

(declare-fun e!641569 () Bool)

(assert (=> mapNonEmpty!44320 (= mapRes!44320 (and tp!84119 e!641569))))

(declare-fun mapValue!44320 () ValueCell!13458)

(declare-fun mapKey!44320 () (_ BitVec 32))

(declare-fun mapRest!44320 () (Array (_ BitVec 32) ValueCell!13458))

(assert (=> mapNonEmpty!44320 (= (arr!35395 _values!996) (store mapRest!44320 mapKey!44320 mapValue!44320))))

(declare-fun b!1127125 () Bool)

(declare-fun res!753267 () Bool)

(assert (=> b!1127125 (=> (not res!753267) (not e!641567))))

(assert (=> b!1127125 (= res!753267 (and (= (size!35932 _values!996) (bvadd #b00000000000000000000000000000001 mask!1564)) (= (size!35931 _keys!1208) (size!35932 _values!996)) (bvsge mask!1564 #b00000000000000000000000000000000) (bvsge extraKeys!923 #b00000000000000000000000000000000) (bvsle extraKeys!923 #b00000000000000000000000000000011)))))

(declare-fun b!1127126 () Bool)

(assert (=> b!1127126 (= e!641573 (= call!47699 call!47698))))

(declare-fun b!1127127 () Bool)

(assert (=> b!1127127 (= e!641569 tp_is_empty!28335)))

(declare-fun bm!47696 () Bool)

(assert (=> bm!47696 (= call!47699 (getCurrentListMapNoExtraKeys!4453 lt!500456 lt!500451 mask!1564 extraKeys!923 zeroValue!944 minValue!944 (bvadd #b00000000000000000000000000000001 from!1455) defaultEntry!1004))))

(declare-fun b!1127128 () Bool)

(declare-fun res!753268 () Bool)

(assert (=> b!1127128 (=> (not res!753268) (not e!641567))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1127128 (= res!753268 (validKeyInArray!0 k0!934))))

(declare-fun b!1127129 () Bool)

(declare-fun res!753271 () Bool)

(assert (=> b!1127129 (=> (not res!753271) (not e!641567))))

(assert (=> b!1127129 (= res!753271 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1208 mask!1564))))

(declare-fun b!1127130 () Bool)

(declare-fun res!753269 () Bool)

(assert (=> b!1127130 (=> (not res!753269) (not e!641570))))

(assert (=> b!1127130 (= res!753269 (arrayNoDuplicates!0 lt!500456 #b00000000000000000000000000000000 Nil!24798))))

(assert (= (and start!98140 res!753270) b!1127124))

(assert (= (and b!1127124 res!753279) b!1127125))

(assert (= (and b!1127125 res!753267) b!1127129))

(assert (= (and b!1127129 res!753271) b!1127115))

(assert (= (and b!1127115 res!753275) b!1127118))

(assert (= (and b!1127118 res!753276) b!1127128))

(assert (= (and b!1127128 res!753268) b!1127121))

(assert (= (and b!1127121 res!753274) b!1127113))

(assert (= (and b!1127113 res!753277) b!1127130))

(assert (= (and b!1127130 res!753269) b!1127114))

(assert (= (and b!1127114 (not res!753272)) b!1127119))

(assert (= (and b!1127119 (not res!753273)) b!1127116))

(assert (= (and b!1127116 c!109658) b!1127120))

(assert (= (and b!1127116 (not c!109658)) b!1127126))

(assert (= (or b!1127120 b!1127126) bm!47696))

(assert (= (or b!1127120 b!1127126) bm!47695))

(assert (= (and b!1127116 (not res!753278)) b!1127123))

(assert (= (and b!1127122 condMapEmpty!44320) mapIsEmpty!44320))

(assert (= (and b!1127122 (not condMapEmpty!44320)) mapNonEmpty!44320))

(get-info :version)

(assert (= (and mapNonEmpty!44320 ((_ is ValueCellFull!13458) mapValue!44320)) b!1127127))

(assert (= (and b!1127122 ((_ is ValueCellFull!13458) mapDefault!44320)) b!1127117))

(assert (= start!98140 b!1127122))

(declare-fun b_lambda!18809 () Bool)

(assert (=> (not b_lambda!18809) (not b!1127119)))

(declare-fun t!35604 () Bool)

(declare-fun tb!8625 () Bool)

(assert (=> (and start!98140 (= defaultEntry!1004 defaultEntry!1004) t!35604) tb!8625))

(declare-fun result!17803 () Bool)

(assert (=> tb!8625 (= result!17803 tp_is_empty!28335)))

(assert (=> b!1127119 t!35604))

(declare-fun b_and!38417 () Bool)

(assert (= b_and!38415 (and (=> t!35604 result!17803) b_and!38417)))

(declare-fun m!1041063 () Bool)

(assert (=> b!1127120 m!1041063))

(declare-fun m!1041065 () Bool)

(assert (=> b!1127124 m!1041065))

(declare-fun m!1041067 () Bool)

(assert (=> b!1127115 m!1041067))

(declare-fun m!1041069 () Bool)

(assert (=> b!1127116 m!1041069))

(declare-fun m!1041071 () Bool)

(assert (=> b!1127116 m!1041071))

(declare-fun m!1041073 () Bool)

(assert (=> b!1127114 m!1041073))

(declare-fun m!1041075 () Bool)

(assert (=> b!1127114 m!1041075))

(declare-fun m!1041077 () Bool)

(assert (=> bm!47695 m!1041077))

(declare-fun m!1041079 () Bool)

(assert (=> b!1127121 m!1041079))

(assert (=> b!1127123 m!1041077))

(assert (=> b!1127123 m!1041077))

(declare-fun m!1041081 () Bool)

(assert (=> b!1127123 m!1041081))

(declare-fun m!1041083 () Bool)

(assert (=> mapNonEmpty!44320 m!1041083))

(declare-fun m!1041085 () Bool)

(assert (=> b!1127113 m!1041085))

(declare-fun m!1041087 () Bool)

(assert (=> b!1127113 m!1041087))

(declare-fun m!1041089 () Bool)

(assert (=> start!98140 m!1041089))

(declare-fun m!1041091 () Bool)

(assert (=> start!98140 m!1041091))

(declare-fun m!1041093 () Bool)

(assert (=> b!1127129 m!1041093))

(declare-fun m!1041095 () Bool)

(assert (=> bm!47696 m!1041095))

(declare-fun m!1041097 () Bool)

(assert (=> b!1127128 m!1041097))

(declare-fun m!1041099 () Bool)

(assert (=> b!1127130 m!1041099))

(declare-fun m!1041101 () Bool)

(assert (=> b!1127119 m!1041101))

(declare-fun m!1041103 () Bool)

(assert (=> b!1127119 m!1041103))

(declare-fun m!1041105 () Bool)

(assert (=> b!1127119 m!1041105))

(declare-fun m!1041107 () Bool)

(assert (=> b!1127119 m!1041107))

(check-sat (not b!1127128) (not b_lambda!18809) (not b!1127129) (not b!1127114) tp_is_empty!28335 (not b!1127123) (not b!1127115) (not bm!47695) (not start!98140) (not bm!47696) (not b!1127124) (not b!1127113) (not mapNonEmpty!44320) (not b!1127116) (not b_next!23805) b_and!38417 (not b!1127120) (not b!1127130) (not b!1127119))
(check-sat b_and!38417 (not b_next!23805))

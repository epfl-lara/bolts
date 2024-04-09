; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73192 () Bool)

(assert start!73192)

(declare-fun b_free!14079 () Bool)

(declare-fun b_next!14079 () Bool)

(assert (=> start!73192 (= b_free!14079 (not b_next!14079))))

(declare-fun tp!49741 () Bool)

(declare-fun b_and!23335 () Bool)

(assert (=> start!73192 (= tp!49741 b_and!23335)))

(declare-fun b!851861 () Bool)

(declare-datatypes ((V!26667 0))(
  ( (V!26668 (val!8155 Int)) )
))
(declare-datatypes ((tuple2!10720 0))(
  ( (tuple2!10721 (_1!5370 (_ BitVec 64)) (_2!5370 V!26667)) )
))
(declare-datatypes ((List!16604 0))(
  ( (Nil!16601) (Cons!16600 (h!17731 tuple2!10720) (t!23137 List!16604)) )
))
(declare-datatypes ((ListLongMap!9503 0))(
  ( (ListLongMap!9504 (toList!4767 List!16604)) )
))
(declare-fun call!38093 () ListLongMap!9503)

(declare-fun v!557 () V!26667)

(declare-fun e!475159 () Bool)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun call!38092 () ListLongMap!9503)

(declare-fun +!2108 (ListLongMap!9503 tuple2!10720) ListLongMap!9503)

(assert (=> b!851861 (= e!475159 (= call!38092 (+!2108 call!38093 (tuple2!10721 k0!854 v!557))))))

(declare-fun b!851862 () Bool)

(declare-fun e!475163 () Bool)

(declare-fun e!475157 () Bool)

(assert (=> b!851862 (= e!475163 e!475157)))

(declare-fun res!578729 () Bool)

(assert (=> b!851862 (=> (not res!578729) (not e!475157))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851862 (= res!578729 (= from!1053 i!612))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!383769 () ListLongMap!9503)

(declare-datatypes ((array!48618 0))(
  ( (array!48619 (arr!23336 (Array (_ BitVec 32) (_ BitVec 64))) (size!23777 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48618)

(declare-fun minValue!654 () V!26667)

(declare-fun zeroValue!654 () V!26667)

(declare-datatypes ((ValueCell!7668 0))(
  ( (ValueCellFull!7668 (v!10576 V!26667)) (EmptyCell!7668) )
))
(declare-datatypes ((array!48620 0))(
  ( (array!48621 (arr!23337 (Array (_ BitVec 32) ValueCell!7668)) (size!23778 (_ BitVec 32))) )
))
(declare-fun lt!383773 () array!48620)

(declare-fun getCurrentListMapNoExtraKeys!2752 (array!48618 array!48620 (_ BitVec 32) (_ BitVec 32) V!26667 V!26667 (_ BitVec 32) Int) ListLongMap!9503)

(assert (=> b!851862 (= lt!383769 (getCurrentListMapNoExtraKeys!2752 _keys!868 lt!383773 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun _values!688 () array!48620)

(assert (=> b!851862 (= lt!383773 (array!48621 (store (arr!23337 _values!688) i!612 (ValueCellFull!7668 v!557)) (size!23778 _values!688)))))

(declare-fun lt!383778 () ListLongMap!9503)

(assert (=> b!851862 (= lt!383778 (getCurrentListMapNoExtraKeys!2752 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!851863 () Bool)

(declare-fun e!475158 () Bool)

(assert (=> b!851863 (= e!475158 true)))

(declare-fun lt!383770 () tuple2!10720)

(declare-fun lt!383777 () ListLongMap!9503)

(declare-fun lt!383775 () V!26667)

(assert (=> b!851863 (= (+!2108 lt!383777 lt!383770) (+!2108 (+!2108 lt!383777 (tuple2!10721 k0!854 lt!383775)) lt!383770))))

(declare-fun lt!383771 () V!26667)

(assert (=> b!851863 (= lt!383770 (tuple2!10721 k0!854 lt!383771))))

(declare-datatypes ((Unit!29064 0))(
  ( (Unit!29065) )
))
(declare-fun lt!383772 () Unit!29064)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!291 (ListLongMap!9503 (_ BitVec 64) V!26667 V!26667) Unit!29064)

(assert (=> b!851863 (= lt!383772 (addSameAsAddTwiceSameKeyDiffValues!291 lt!383777 k0!854 lt!383775 lt!383771))))

(declare-fun lt!383774 () V!26667)

(declare-fun get!12315 (ValueCell!7668 V!26667) V!26667)

(assert (=> b!851863 (= lt!383775 (get!12315 (select (arr!23337 _values!688) from!1053) lt!383774))))

(assert (=> b!851863 (= lt!383769 (+!2108 lt!383777 (tuple2!10721 (select (arr!23336 _keys!868) from!1053) lt!383771)))))

(assert (=> b!851863 (= lt!383771 (get!12315 (select (store (arr!23337 _values!688) i!612 (ValueCellFull!7668 v!557)) from!1053) lt!383774))))

(declare-fun dynLambda!1039 (Int (_ BitVec 64)) V!26667)

(assert (=> b!851863 (= lt!383774 (dynLambda!1039 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!851863 (= lt!383777 (getCurrentListMapNoExtraKeys!2752 _keys!868 lt!383773 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851864 () Bool)

(declare-fun res!578723 () Bool)

(assert (=> b!851864 (=> (not res!578723) (not e!475163))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851864 (= res!578723 (validMask!0 mask!1196))))

(declare-fun b!851865 () Bool)

(assert (=> b!851865 (= e!475157 (not e!475158))))

(declare-fun res!578727 () Bool)

(assert (=> b!851865 (=> res!578727 e!475158)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851865 (= res!578727 (not (validKeyInArray!0 (select (arr!23336 _keys!868) from!1053))))))

(assert (=> b!851865 e!475159))

(declare-fun c!91707 () Bool)

(assert (=> b!851865 (= c!91707 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383776 () Unit!29064)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!374 (array!48618 array!48620 (_ BitVec 32) (_ BitVec 32) V!26667 V!26667 (_ BitVec 32) (_ BitVec 64) V!26667 (_ BitVec 32) Int) Unit!29064)

(assert (=> b!851865 (= lt!383776 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!374 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851866 () Bool)

(declare-fun res!578730 () Bool)

(assert (=> b!851866 (=> (not res!578730) (not e!475163))))

(assert (=> b!851866 (= res!578730 (and (= (select (arr!23336 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!851867 () Bool)

(assert (=> b!851867 (= e!475159 (= call!38092 call!38093))))

(declare-fun bm!38089 () Bool)

(assert (=> bm!38089 (= call!38093 (getCurrentListMapNoExtraKeys!2752 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851868 () Bool)

(declare-fun res!578728 () Bool)

(assert (=> b!851868 (=> (not res!578728) (not e!475163))))

(assert (=> b!851868 (= res!578728 (and (= (size!23778 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23777 _keys!868) (size!23778 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!851870 () Bool)

(declare-fun res!578726 () Bool)

(assert (=> b!851870 (=> (not res!578726) (not e!475163))))

(declare-datatypes ((List!16605 0))(
  ( (Nil!16602) (Cons!16601 (h!17732 (_ BitVec 64)) (t!23138 List!16605)) )
))
(declare-fun arrayNoDuplicates!0 (array!48618 (_ BitVec 32) List!16605) Bool)

(assert (=> b!851870 (= res!578726 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16602))))

(declare-fun mapIsEmpty!25922 () Bool)

(declare-fun mapRes!25922 () Bool)

(assert (=> mapIsEmpty!25922 mapRes!25922))

(declare-fun bm!38090 () Bool)

(assert (=> bm!38090 (= call!38092 (getCurrentListMapNoExtraKeys!2752 _keys!868 lt!383773 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851871 () Bool)

(declare-fun res!578725 () Bool)

(assert (=> b!851871 (=> (not res!578725) (not e!475163))))

(assert (=> b!851871 (= res!578725 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!25922 () Bool)

(declare-fun tp!49742 () Bool)

(declare-fun e!475164 () Bool)

(assert (=> mapNonEmpty!25922 (= mapRes!25922 (and tp!49742 e!475164))))

(declare-fun mapValue!25922 () ValueCell!7668)

(declare-fun mapRest!25922 () (Array (_ BitVec 32) ValueCell!7668))

(declare-fun mapKey!25922 () (_ BitVec 32))

(assert (=> mapNonEmpty!25922 (= (arr!23337 _values!688) (store mapRest!25922 mapKey!25922 mapValue!25922))))

(declare-fun b!851869 () Bool)

(declare-fun e!475161 () Bool)

(declare-fun e!475162 () Bool)

(assert (=> b!851869 (= e!475161 (and e!475162 mapRes!25922))))

(declare-fun condMapEmpty!25922 () Bool)

(declare-fun mapDefault!25922 () ValueCell!7668)

(assert (=> b!851869 (= condMapEmpty!25922 (= (arr!23337 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7668)) mapDefault!25922)))))

(declare-fun res!578724 () Bool)

(assert (=> start!73192 (=> (not res!578724) (not e!475163))))

(assert (=> start!73192 (= res!578724 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23777 _keys!868))))))

(assert (=> start!73192 e!475163))

(declare-fun tp_is_empty!16215 () Bool)

(assert (=> start!73192 tp_is_empty!16215))

(assert (=> start!73192 true))

(assert (=> start!73192 tp!49741))

(declare-fun array_inv!18500 (array!48618) Bool)

(assert (=> start!73192 (array_inv!18500 _keys!868)))

(declare-fun array_inv!18501 (array!48620) Bool)

(assert (=> start!73192 (and (array_inv!18501 _values!688) e!475161)))

(declare-fun b!851872 () Bool)

(declare-fun res!578722 () Bool)

(assert (=> b!851872 (=> (not res!578722) (not e!475163))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48618 (_ BitVec 32)) Bool)

(assert (=> b!851872 (= res!578722 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851873 () Bool)

(assert (=> b!851873 (= e!475162 tp_is_empty!16215)))

(declare-fun b!851874 () Bool)

(assert (=> b!851874 (= e!475164 tp_is_empty!16215)))

(declare-fun b!851875 () Bool)

(declare-fun res!578721 () Bool)

(assert (=> b!851875 (=> (not res!578721) (not e!475163))))

(assert (=> b!851875 (= res!578721 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23777 _keys!868))))))

(assert (= (and start!73192 res!578724) b!851864))

(assert (= (and b!851864 res!578723) b!851868))

(assert (= (and b!851868 res!578728) b!851872))

(assert (= (and b!851872 res!578722) b!851870))

(assert (= (and b!851870 res!578726) b!851875))

(assert (= (and b!851875 res!578721) b!851871))

(assert (= (and b!851871 res!578725) b!851866))

(assert (= (and b!851866 res!578730) b!851862))

(assert (= (and b!851862 res!578729) b!851865))

(assert (= (and b!851865 c!91707) b!851861))

(assert (= (and b!851865 (not c!91707)) b!851867))

(assert (= (or b!851861 b!851867) bm!38090))

(assert (= (or b!851861 b!851867) bm!38089))

(assert (= (and b!851865 (not res!578727)) b!851863))

(assert (= (and b!851869 condMapEmpty!25922) mapIsEmpty!25922))

(assert (= (and b!851869 (not condMapEmpty!25922)) mapNonEmpty!25922))

(get-info :version)

(assert (= (and mapNonEmpty!25922 ((_ is ValueCellFull!7668) mapValue!25922)) b!851874))

(assert (= (and b!851869 ((_ is ValueCellFull!7668) mapDefault!25922)) b!851873))

(assert (= start!73192 b!851869))

(declare-fun b_lambda!11641 () Bool)

(assert (=> (not b_lambda!11641) (not b!851863)))

(declare-fun t!23136 () Bool)

(declare-fun tb!4389 () Bool)

(assert (=> (and start!73192 (= defaultEntry!696 defaultEntry!696) t!23136) tb!4389))

(declare-fun result!8381 () Bool)

(assert (=> tb!4389 (= result!8381 tp_is_empty!16215)))

(assert (=> b!851863 t!23136))

(declare-fun b_and!23337 () Bool)

(assert (= b_and!23335 (and (=> t!23136 result!8381) b_and!23337)))

(declare-fun m!792965 () Bool)

(assert (=> start!73192 m!792965))

(declare-fun m!792967 () Bool)

(assert (=> start!73192 m!792967))

(declare-fun m!792969 () Bool)

(assert (=> b!851866 m!792969))

(declare-fun m!792971 () Bool)

(assert (=> bm!38090 m!792971))

(declare-fun m!792973 () Bool)

(assert (=> bm!38089 m!792973))

(declare-fun m!792975 () Bool)

(assert (=> b!851871 m!792975))

(declare-fun m!792977 () Bool)

(assert (=> mapNonEmpty!25922 m!792977))

(declare-fun m!792979 () Bool)

(assert (=> b!851864 m!792979))

(declare-fun m!792981 () Bool)

(assert (=> b!851870 m!792981))

(declare-fun m!792983 () Bool)

(assert (=> b!851863 m!792983))

(declare-fun m!792985 () Bool)

(assert (=> b!851863 m!792985))

(declare-fun m!792987 () Bool)

(assert (=> b!851863 m!792987))

(assert (=> b!851863 m!792987))

(declare-fun m!792989 () Bool)

(assert (=> b!851863 m!792989))

(assert (=> b!851863 m!792971))

(declare-fun m!792991 () Bool)

(assert (=> b!851863 m!792991))

(declare-fun m!792993 () Bool)

(assert (=> b!851863 m!792993))

(declare-fun m!792995 () Bool)

(assert (=> b!851863 m!792995))

(assert (=> b!851863 m!792991))

(declare-fun m!792997 () Bool)

(assert (=> b!851863 m!792997))

(declare-fun m!792999 () Bool)

(assert (=> b!851863 m!792999))

(declare-fun m!793001 () Bool)

(assert (=> b!851863 m!793001))

(declare-fun m!793003 () Bool)

(assert (=> b!851863 m!793003))

(assert (=> b!851863 m!792995))

(declare-fun m!793005 () Bool)

(assert (=> b!851863 m!793005))

(declare-fun m!793007 () Bool)

(assert (=> b!851862 m!793007))

(assert (=> b!851862 m!792997))

(declare-fun m!793009 () Bool)

(assert (=> b!851862 m!793009))

(assert (=> b!851865 m!793001))

(assert (=> b!851865 m!793001))

(declare-fun m!793011 () Bool)

(assert (=> b!851865 m!793011))

(declare-fun m!793013 () Bool)

(assert (=> b!851865 m!793013))

(declare-fun m!793015 () Bool)

(assert (=> b!851872 m!793015))

(declare-fun m!793017 () Bool)

(assert (=> b!851861 m!793017))

(check-sat (not b!851872) (not mapNonEmpty!25922) (not b!851871) (not b!851864) (not bm!38090) (not b!851865) (not bm!38089) (not start!73192) (not b!851863) b_and!23337 (not b!851862) (not b!851870) (not b!851861) (not b_next!14079) tp_is_empty!16215 (not b_lambda!11641))
(check-sat b_and!23337 (not b_next!14079))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73276 () Bool)

(assert start!73276)

(declare-fun b_free!14163 () Bool)

(declare-fun b_next!14163 () Bool)

(assert (=> start!73276 (= b_free!14163 (not b_next!14163))))

(declare-fun tp!49993 () Bool)

(declare-fun b_and!23503 () Bool)

(assert (=> start!73276 (= tp!49993 b_and!23503)))

(declare-fun b!853835 () Bool)

(declare-fun res!579982 () Bool)

(declare-fun e!476170 () Bool)

(assert (=> b!853835 (=> (not res!579982) (not e!476170))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!48780 0))(
  ( (array!48781 (arr!23417 (Array (_ BitVec 32) (_ BitVec 64))) (size!23858 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48780)

(assert (=> b!853835 (= res!579982 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23858 _keys!868))))))

(declare-fun res!579984 () Bool)

(assert (=> start!73276 (=> (not res!579984) (not e!476170))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73276 (= res!579984 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23858 _keys!868))))))

(assert (=> start!73276 e!476170))

(declare-fun tp_is_empty!16299 () Bool)

(assert (=> start!73276 tp_is_empty!16299))

(assert (=> start!73276 true))

(assert (=> start!73276 tp!49993))

(declare-fun array_inv!18544 (array!48780) Bool)

(assert (=> start!73276 (array_inv!18544 _keys!868)))

(declare-datatypes ((V!26779 0))(
  ( (V!26780 (val!8197 Int)) )
))
(declare-datatypes ((ValueCell!7710 0))(
  ( (ValueCellFull!7710 (v!10618 V!26779)) (EmptyCell!7710) )
))
(declare-datatypes ((array!48782 0))(
  ( (array!48783 (arr!23418 (Array (_ BitVec 32) ValueCell!7710)) (size!23859 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48782)

(declare-fun e!476172 () Bool)

(declare-fun array_inv!18545 (array!48782) Bool)

(assert (=> start!73276 (and (array_inv!18545 _values!688) e!476172)))

(declare-fun b!853836 () Bool)

(declare-fun e!476168 () Bool)

(assert (=> b!853836 (= e!476168 tp_is_empty!16299)))

(declare-fun b!853837 () Bool)

(declare-fun e!476169 () Bool)

(assert (=> b!853837 (= e!476169 true)))

(declare-datatypes ((tuple2!10790 0))(
  ( (tuple2!10791 (_1!5405 (_ BitVec 64)) (_2!5405 V!26779)) )
))
(declare-fun lt!385031 () tuple2!10790)

(declare-datatypes ((List!16666 0))(
  ( (Nil!16663) (Cons!16662 (h!17793 tuple2!10790) (t!23283 List!16666)) )
))
(declare-datatypes ((ListLongMap!9573 0))(
  ( (ListLongMap!9574 (toList!4802 List!16666)) )
))
(declare-fun lt!385029 () ListLongMap!9573)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lt!385032 () V!26779)

(declare-fun +!2140 (ListLongMap!9573 tuple2!10790) ListLongMap!9573)

(assert (=> b!853837 (= (+!2140 lt!385029 lt!385031) (+!2140 (+!2140 lt!385029 (tuple2!10791 k0!854 lt!385032)) lt!385031))))

(declare-fun lt!385034 () V!26779)

(assert (=> b!853837 (= lt!385031 (tuple2!10791 k0!854 lt!385034))))

(declare-datatypes ((Unit!29124 0))(
  ( (Unit!29125) )
))
(declare-fun lt!385030 () Unit!29124)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!319 (ListLongMap!9573 (_ BitVec 64) V!26779 V!26779) Unit!29124)

(assert (=> b!853837 (= lt!385030 (addSameAsAddTwiceSameKeyDiffValues!319 lt!385029 k0!854 lt!385032 lt!385034))))

(declare-fun lt!385035 () V!26779)

(declare-fun get!12371 (ValueCell!7710 V!26779) V!26779)

(assert (=> b!853837 (= lt!385032 (get!12371 (select (arr!23418 _values!688) from!1053) lt!385035))))

(declare-fun lt!385037 () ListLongMap!9573)

(assert (=> b!853837 (= lt!385037 (+!2140 lt!385029 (tuple2!10791 (select (arr!23417 _keys!868) from!1053) lt!385034)))))

(declare-fun v!557 () V!26779)

(assert (=> b!853837 (= lt!385034 (get!12371 (select (store (arr!23418 _values!688) i!612 (ValueCellFull!7710 v!557)) from!1053) lt!385035))))

(declare-fun defaultEntry!696 () Int)

(declare-fun dynLambda!1067 (Int (_ BitVec 64)) V!26779)

(assert (=> b!853837 (= lt!385035 (dynLambda!1067 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!385036 () array!48782)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26779)

(declare-fun zeroValue!654 () V!26779)

(declare-fun getCurrentListMapNoExtraKeys!2784 (array!48780 array!48782 (_ BitVec 32) (_ BitVec 32) V!26779 V!26779 (_ BitVec 32) Int) ListLongMap!9573)

(assert (=> b!853837 (= lt!385029 (getCurrentListMapNoExtraKeys!2784 _keys!868 lt!385036 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853838 () Bool)

(declare-fun e!476167 () Bool)

(assert (=> b!853838 (= e!476167 (not e!476169))))

(declare-fun res!579983 () Bool)

(assert (=> b!853838 (=> res!579983 e!476169)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853838 (= res!579983 (not (validKeyInArray!0 (select (arr!23417 _keys!868) from!1053))))))

(declare-fun e!476171 () Bool)

(assert (=> b!853838 e!476171))

(declare-fun c!91833 () Bool)

(assert (=> b!853838 (= c!91833 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!385038 () Unit!29124)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!401 (array!48780 array!48782 (_ BitVec 32) (_ BitVec 32) V!26779 V!26779 (_ BitVec 32) (_ BitVec 64) V!26779 (_ BitVec 32) Int) Unit!29124)

(assert (=> b!853838 (= lt!385038 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!401 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun call!38345 () ListLongMap!9573)

(declare-fun bm!38341 () Bool)

(assert (=> bm!38341 (= call!38345 (getCurrentListMapNoExtraKeys!2784 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853839 () Bool)

(declare-fun call!38344 () ListLongMap!9573)

(assert (=> b!853839 (= e!476171 (= call!38344 (+!2140 call!38345 (tuple2!10791 k0!854 v!557))))))

(declare-fun b!853840 () Bool)

(declare-fun e!476166 () Bool)

(assert (=> b!853840 (= e!476166 tp_is_empty!16299)))

(declare-fun b!853841 () Bool)

(declare-fun res!579990 () Bool)

(assert (=> b!853841 (=> (not res!579990) (not e!476170))))

(declare-datatypes ((List!16667 0))(
  ( (Nil!16664) (Cons!16663 (h!17794 (_ BitVec 64)) (t!23284 List!16667)) )
))
(declare-fun arrayNoDuplicates!0 (array!48780 (_ BitVec 32) List!16667) Bool)

(assert (=> b!853841 (= res!579990 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16664))))

(declare-fun b!853842 () Bool)

(assert (=> b!853842 (= e!476170 e!476167)))

(declare-fun res!579986 () Bool)

(assert (=> b!853842 (=> (not res!579986) (not e!476167))))

(assert (=> b!853842 (= res!579986 (= from!1053 i!612))))

(assert (=> b!853842 (= lt!385037 (getCurrentListMapNoExtraKeys!2784 _keys!868 lt!385036 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!853842 (= lt!385036 (array!48783 (store (arr!23418 _values!688) i!612 (ValueCellFull!7710 v!557)) (size!23859 _values!688)))))

(declare-fun lt!385033 () ListLongMap!9573)

(assert (=> b!853842 (= lt!385033 (getCurrentListMapNoExtraKeys!2784 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!853843 () Bool)

(declare-fun res!579989 () Bool)

(assert (=> b!853843 (=> (not res!579989) (not e!476170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853843 (= res!579989 (validMask!0 mask!1196))))

(declare-fun b!853844 () Bool)

(assert (=> b!853844 (= e!476171 (= call!38344 call!38345))))

(declare-fun b!853845 () Bool)

(declare-fun res!579985 () Bool)

(assert (=> b!853845 (=> (not res!579985) (not e!476170))))

(assert (=> b!853845 (= res!579985 (and (= (select (arr!23417 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!853846 () Bool)

(declare-fun res!579981 () Bool)

(assert (=> b!853846 (=> (not res!579981) (not e!476170))))

(assert (=> b!853846 (= res!579981 (and (= (size!23859 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23858 _keys!868) (size!23859 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!26048 () Bool)

(declare-fun mapRes!26048 () Bool)

(declare-fun tp!49994 () Bool)

(assert (=> mapNonEmpty!26048 (= mapRes!26048 (and tp!49994 e!476168))))

(declare-fun mapKey!26048 () (_ BitVec 32))

(declare-fun mapValue!26048 () ValueCell!7710)

(declare-fun mapRest!26048 () (Array (_ BitVec 32) ValueCell!7710))

(assert (=> mapNonEmpty!26048 (= (arr!23418 _values!688) (store mapRest!26048 mapKey!26048 mapValue!26048))))

(declare-fun b!853847 () Bool)

(declare-fun res!579987 () Bool)

(assert (=> b!853847 (=> (not res!579987) (not e!476170))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48780 (_ BitVec 32)) Bool)

(assert (=> b!853847 (= res!579987 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!853848 () Bool)

(declare-fun res!579988 () Bool)

(assert (=> b!853848 (=> (not res!579988) (not e!476170))))

(assert (=> b!853848 (= res!579988 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!26048 () Bool)

(assert (=> mapIsEmpty!26048 mapRes!26048))

(declare-fun b!853849 () Bool)

(assert (=> b!853849 (= e!476172 (and e!476166 mapRes!26048))))

(declare-fun condMapEmpty!26048 () Bool)

(declare-fun mapDefault!26048 () ValueCell!7710)

(assert (=> b!853849 (= condMapEmpty!26048 (= (arr!23418 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7710)) mapDefault!26048)))))

(declare-fun bm!38342 () Bool)

(assert (=> bm!38342 (= call!38344 (getCurrentListMapNoExtraKeys!2784 _keys!868 lt!385036 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73276 res!579984) b!853843))

(assert (= (and b!853843 res!579989) b!853846))

(assert (= (and b!853846 res!579981) b!853847))

(assert (= (and b!853847 res!579987) b!853841))

(assert (= (and b!853841 res!579990) b!853835))

(assert (= (and b!853835 res!579982) b!853848))

(assert (= (and b!853848 res!579988) b!853845))

(assert (= (and b!853845 res!579985) b!853842))

(assert (= (and b!853842 res!579986) b!853838))

(assert (= (and b!853838 c!91833) b!853839))

(assert (= (and b!853838 (not c!91833)) b!853844))

(assert (= (or b!853839 b!853844) bm!38342))

(assert (= (or b!853839 b!853844) bm!38341))

(assert (= (and b!853838 (not res!579983)) b!853837))

(assert (= (and b!853849 condMapEmpty!26048) mapIsEmpty!26048))

(assert (= (and b!853849 (not condMapEmpty!26048)) mapNonEmpty!26048))

(get-info :version)

(assert (= (and mapNonEmpty!26048 ((_ is ValueCellFull!7710) mapValue!26048)) b!853836))

(assert (= (and b!853849 ((_ is ValueCellFull!7710) mapDefault!26048)) b!853840))

(assert (= start!73276 b!853849))

(declare-fun b_lambda!11725 () Bool)

(assert (=> (not b_lambda!11725) (not b!853837)))

(declare-fun t!23282 () Bool)

(declare-fun tb!4473 () Bool)

(assert (=> (and start!73276 (= defaultEntry!696 defaultEntry!696) t!23282) tb!4473))

(declare-fun result!8549 () Bool)

(assert (=> tb!4473 (= result!8549 tp_is_empty!16299)))

(assert (=> b!853837 t!23282))

(declare-fun b_and!23505 () Bool)

(assert (= b_and!23503 (and (=> t!23282 result!8549) b_and!23505)))

(declare-fun m!795235 () Bool)

(assert (=> bm!38341 m!795235))

(declare-fun m!795237 () Bool)

(assert (=> b!853843 m!795237))

(declare-fun m!795239 () Bool)

(assert (=> b!853847 m!795239))

(declare-fun m!795241 () Bool)

(assert (=> b!853842 m!795241))

(declare-fun m!795243 () Bool)

(assert (=> b!853842 m!795243))

(declare-fun m!795245 () Bool)

(assert (=> b!853842 m!795245))

(declare-fun m!795247 () Bool)

(assert (=> b!853845 m!795247))

(declare-fun m!795249 () Bool)

(assert (=> b!853848 m!795249))

(declare-fun m!795251 () Bool)

(assert (=> mapNonEmpty!26048 m!795251))

(declare-fun m!795253 () Bool)

(assert (=> b!853838 m!795253))

(assert (=> b!853838 m!795253))

(declare-fun m!795255 () Bool)

(assert (=> b!853838 m!795255))

(declare-fun m!795257 () Bool)

(assert (=> b!853838 m!795257))

(declare-fun m!795259 () Bool)

(assert (=> bm!38342 m!795259))

(declare-fun m!795261 () Bool)

(assert (=> b!853839 m!795261))

(declare-fun m!795263 () Bool)

(assert (=> b!853841 m!795263))

(declare-fun m!795265 () Bool)

(assert (=> start!73276 m!795265))

(declare-fun m!795267 () Bool)

(assert (=> start!73276 m!795267))

(assert (=> b!853837 m!795259))

(declare-fun m!795269 () Bool)

(assert (=> b!853837 m!795269))

(declare-fun m!795271 () Bool)

(assert (=> b!853837 m!795271))

(declare-fun m!795273 () Bool)

(assert (=> b!853837 m!795273))

(declare-fun m!795275 () Bool)

(assert (=> b!853837 m!795275))

(assert (=> b!853837 m!795269))

(declare-fun m!795277 () Bool)

(assert (=> b!853837 m!795277))

(declare-fun m!795279 () Bool)

(assert (=> b!853837 m!795279))

(declare-fun m!795281 () Bool)

(assert (=> b!853837 m!795281))

(assert (=> b!853837 m!795253))

(declare-fun m!795283 () Bool)

(assert (=> b!853837 m!795283))

(assert (=> b!853837 m!795271))

(assert (=> b!853837 m!795275))

(declare-fun m!795285 () Bool)

(assert (=> b!853837 m!795285))

(declare-fun m!795287 () Bool)

(assert (=> b!853837 m!795287))

(assert (=> b!853837 m!795243))

(check-sat (not start!73276) (not b!853842) tp_is_empty!16299 (not b!853838) (not b!853839) (not b!853847) (not mapNonEmpty!26048) (not b_lambda!11725) b_and!23505 (not bm!38341) (not b!853837) (not b!853843) (not b!853848) (not bm!38342) (not b_next!14163) (not b!853841))
(check-sat b_and!23505 (not b_next!14163))

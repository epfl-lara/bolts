; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73156 () Bool)

(assert start!73156)

(declare-fun b_free!14043 () Bool)

(declare-fun b_next!14043 () Bool)

(assert (=> start!73156 (= b_free!14043 (not b_next!14043))))

(declare-fun tp!49634 () Bool)

(declare-fun b_and!23263 () Bool)

(assert (=> start!73156 (= tp!49634 b_and!23263)))

(declare-fun b!851015 () Bool)

(declare-fun e!474728 () Bool)

(declare-fun e!474729 () Bool)

(declare-fun mapRes!25868 () Bool)

(assert (=> b!851015 (= e!474728 (and e!474729 mapRes!25868))))

(declare-fun condMapEmpty!25868 () Bool)

(declare-datatypes ((V!26619 0))(
  ( (V!26620 (val!8137 Int)) )
))
(declare-datatypes ((ValueCell!7650 0))(
  ( (ValueCellFull!7650 (v!10558 V!26619)) (EmptyCell!7650) )
))
(declare-datatypes ((array!48546 0))(
  ( (array!48547 (arr!23300 (Array (_ BitVec 32) ValueCell!7650)) (size!23741 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48546)

(declare-fun mapDefault!25868 () ValueCell!7650)

(assert (=> b!851015 (= condMapEmpty!25868 (= (arr!23300 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7650)) mapDefault!25868)))))

(declare-fun b!851016 () Bool)

(declare-fun e!474731 () Bool)

(declare-datatypes ((tuple2!10684 0))(
  ( (tuple2!10685 (_1!5352 (_ BitVec 64)) (_2!5352 V!26619)) )
))
(declare-datatypes ((List!16574 0))(
  ( (Nil!16571) (Cons!16570 (h!17701 tuple2!10684) (t!23071 List!16574)) )
))
(declare-datatypes ((ListLongMap!9467 0))(
  ( (ListLongMap!9468 (toList!4749 List!16574)) )
))
(declare-fun call!37984 () ListLongMap!9467)

(declare-fun call!37985 () ListLongMap!9467)

(assert (=> b!851016 (= e!474731 (= call!37984 call!37985))))

(declare-fun b!851017 () Bool)

(declare-fun res!578187 () Bool)

(declare-fun e!474732 () Bool)

(assert (=> b!851017 (=> (not res!578187) (not e!474732))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48548 0))(
  ( (array!48549 (arr!23301 (Array (_ BitVec 32) (_ BitVec 64))) (size!23742 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48548)

(assert (=> b!851017 (= res!578187 (and (= (size!23741 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23742 _keys!868) (size!23741 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun bm!37981 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26619)

(declare-fun zeroValue!654 () V!26619)

(declare-fun getCurrentListMapNoExtraKeys!2734 (array!48548 array!48546 (_ BitVec 32) (_ BitVec 32) V!26619 V!26619 (_ BitVec 32) Int) ListLongMap!9467)

(assert (=> bm!37981 (= call!37985 (getCurrentListMapNoExtraKeys!2734 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851018 () Bool)

(declare-fun e!474725 () Bool)

(declare-fun e!474730 () Bool)

(assert (=> b!851018 (= e!474725 (not e!474730))))

(declare-fun res!578183 () Bool)

(assert (=> b!851018 (=> res!578183 e!474730)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!851018 (= res!578183 (not (validKeyInArray!0 (select (arr!23301 _keys!868) from!1053))))))

(assert (=> b!851018 e!474731))

(declare-fun c!91653 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!851018 (= c!91653 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29028 0))(
  ( (Unit!29029) )
))
(declare-fun lt!383229 () Unit!29028)

(declare-fun v!557 () V!26619)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!359 (array!48548 array!48546 (_ BitVec 32) (_ BitVec 32) V!26619 V!26619 (_ BitVec 32) (_ BitVec 64) V!26619 (_ BitVec 32) Int) Unit!29028)

(assert (=> b!851018 (= lt!383229 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!359 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851019 () Bool)

(declare-fun res!578186 () Bool)

(assert (=> b!851019 (=> (not res!578186) (not e!474732))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!851019 (= res!578186 (validMask!0 mask!1196))))

(declare-fun b!851020 () Bool)

(declare-fun res!578188 () Bool)

(assert (=> b!851020 (=> (not res!578188) (not e!474732))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48548 (_ BitVec 32)) Bool)

(assert (=> b!851020 (= res!578188 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!851021 () Bool)

(declare-fun res!578190 () Bool)

(assert (=> b!851021 (=> (not res!578190) (not e!474732))))

(assert (=> b!851021 (= res!578190 (validKeyInArray!0 k0!854))))

(declare-fun res!578181 () Bool)

(assert (=> start!73156 (=> (not res!578181) (not e!474732))))

(assert (=> start!73156 (= res!578181 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23742 _keys!868))))))

(assert (=> start!73156 e!474732))

(declare-fun tp_is_empty!16179 () Bool)

(assert (=> start!73156 tp_is_empty!16179))

(assert (=> start!73156 true))

(assert (=> start!73156 tp!49634))

(declare-fun array_inv!18474 (array!48548) Bool)

(assert (=> start!73156 (array_inv!18474 _keys!868)))

(declare-fun array_inv!18475 (array!48546) Bool)

(assert (=> start!73156 (and (array_inv!18475 _values!688) e!474728)))

(declare-fun b!851022 () Bool)

(assert (=> b!851022 (= e!474730 true)))

(declare-fun lt!383232 () tuple2!10684)

(declare-fun lt!383236 () ListLongMap!9467)

(declare-fun lt!383234 () V!26619)

(declare-fun +!2092 (ListLongMap!9467 tuple2!10684) ListLongMap!9467)

(assert (=> b!851022 (= (+!2092 lt!383236 lt!383232) (+!2092 (+!2092 lt!383236 (tuple2!10685 k0!854 lt!383234)) lt!383232))))

(declare-fun lt!383238 () V!26619)

(assert (=> b!851022 (= lt!383232 (tuple2!10685 k0!854 lt!383238))))

(declare-fun lt!383237 () Unit!29028)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!276 (ListLongMap!9467 (_ BitVec 64) V!26619 V!26619) Unit!29028)

(assert (=> b!851022 (= lt!383237 (addSameAsAddTwiceSameKeyDiffValues!276 lt!383236 k0!854 lt!383234 lt!383238))))

(declare-fun lt!383231 () V!26619)

(declare-fun get!12288 (ValueCell!7650 V!26619) V!26619)

(assert (=> b!851022 (= lt!383234 (get!12288 (select (arr!23300 _values!688) from!1053) lt!383231))))

(declare-fun lt!383235 () ListLongMap!9467)

(assert (=> b!851022 (= lt!383235 (+!2092 lt!383236 (tuple2!10685 (select (arr!23301 _keys!868) from!1053) lt!383238)))))

(assert (=> b!851022 (= lt!383238 (get!12288 (select (store (arr!23300 _values!688) i!612 (ValueCellFull!7650 v!557)) from!1053) lt!383231))))

(declare-fun dynLambda!1024 (Int (_ BitVec 64)) V!26619)

(assert (=> b!851022 (= lt!383231 (dynLambda!1024 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383230 () array!48546)

(assert (=> b!851022 (= lt!383236 (getCurrentListMapNoExtraKeys!2734 _keys!868 lt!383230 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun mapIsEmpty!25868 () Bool)

(assert (=> mapIsEmpty!25868 mapRes!25868))

(declare-fun b!851023 () Bool)

(declare-fun res!578189 () Bool)

(assert (=> b!851023 (=> (not res!578189) (not e!474732))))

(assert (=> b!851023 (= res!578189 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23742 _keys!868))))))

(declare-fun b!851024 () Bool)

(declare-fun e!474727 () Bool)

(assert (=> b!851024 (= e!474727 tp_is_empty!16179)))

(declare-fun b!851025 () Bool)

(declare-fun res!578185 () Bool)

(assert (=> b!851025 (=> (not res!578185) (not e!474732))))

(declare-datatypes ((List!16575 0))(
  ( (Nil!16572) (Cons!16571 (h!17702 (_ BitVec 64)) (t!23072 List!16575)) )
))
(declare-fun arrayNoDuplicates!0 (array!48548 (_ BitVec 32) List!16575) Bool)

(assert (=> b!851025 (= res!578185 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16572))))

(declare-fun b!851026 () Bool)

(assert (=> b!851026 (= e!474731 (= call!37984 (+!2092 call!37985 (tuple2!10685 k0!854 v!557))))))

(declare-fun mapNonEmpty!25868 () Bool)

(declare-fun tp!49633 () Bool)

(assert (=> mapNonEmpty!25868 (= mapRes!25868 (and tp!49633 e!474727))))

(declare-fun mapRest!25868 () (Array (_ BitVec 32) ValueCell!7650))

(declare-fun mapValue!25868 () ValueCell!7650)

(declare-fun mapKey!25868 () (_ BitVec 32))

(assert (=> mapNonEmpty!25868 (= (arr!23300 _values!688) (store mapRest!25868 mapKey!25868 mapValue!25868))))

(declare-fun bm!37982 () Bool)

(assert (=> bm!37982 (= call!37984 (getCurrentListMapNoExtraKeys!2734 _keys!868 lt!383230 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!851027 () Bool)

(declare-fun res!578184 () Bool)

(assert (=> b!851027 (=> (not res!578184) (not e!474732))))

(assert (=> b!851027 (= res!578184 (and (= (select (arr!23301 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!851028 () Bool)

(assert (=> b!851028 (= e!474732 e!474725)))

(declare-fun res!578182 () Bool)

(assert (=> b!851028 (=> (not res!578182) (not e!474725))))

(assert (=> b!851028 (= res!578182 (= from!1053 i!612))))

(assert (=> b!851028 (= lt!383235 (getCurrentListMapNoExtraKeys!2734 _keys!868 lt!383230 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!851028 (= lt!383230 (array!48547 (store (arr!23300 _values!688) i!612 (ValueCellFull!7650 v!557)) (size!23741 _values!688)))))

(declare-fun lt!383233 () ListLongMap!9467)

(assert (=> b!851028 (= lt!383233 (getCurrentListMapNoExtraKeys!2734 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!851029 () Bool)

(assert (=> b!851029 (= e!474729 tp_is_empty!16179)))

(assert (= (and start!73156 res!578181) b!851019))

(assert (= (and b!851019 res!578186) b!851017))

(assert (= (and b!851017 res!578187) b!851020))

(assert (= (and b!851020 res!578188) b!851025))

(assert (= (and b!851025 res!578185) b!851023))

(assert (= (and b!851023 res!578189) b!851021))

(assert (= (and b!851021 res!578190) b!851027))

(assert (= (and b!851027 res!578184) b!851028))

(assert (= (and b!851028 res!578182) b!851018))

(assert (= (and b!851018 c!91653) b!851026))

(assert (= (and b!851018 (not c!91653)) b!851016))

(assert (= (or b!851026 b!851016) bm!37982))

(assert (= (or b!851026 b!851016) bm!37981))

(assert (= (and b!851018 (not res!578183)) b!851022))

(assert (= (and b!851015 condMapEmpty!25868) mapIsEmpty!25868))

(assert (= (and b!851015 (not condMapEmpty!25868)) mapNonEmpty!25868))

(get-info :version)

(assert (= (and mapNonEmpty!25868 ((_ is ValueCellFull!7650) mapValue!25868)) b!851024))

(assert (= (and b!851015 ((_ is ValueCellFull!7650) mapDefault!25868)) b!851029))

(assert (= start!73156 b!851015))

(declare-fun b_lambda!11605 () Bool)

(assert (=> (not b_lambda!11605) (not b!851022)))

(declare-fun t!23070 () Bool)

(declare-fun tb!4353 () Bool)

(assert (=> (and start!73156 (= defaultEntry!696 defaultEntry!696) t!23070) tb!4353))

(declare-fun result!8309 () Bool)

(assert (=> tb!4353 (= result!8309 tp_is_empty!16179)))

(assert (=> b!851022 t!23070))

(declare-fun b_and!23265 () Bool)

(assert (= b_and!23263 (and (=> t!23070 result!8309) b_and!23265)))

(declare-fun m!791993 () Bool)

(assert (=> b!851018 m!791993))

(assert (=> b!851018 m!791993))

(declare-fun m!791995 () Bool)

(assert (=> b!851018 m!791995))

(declare-fun m!791997 () Bool)

(assert (=> b!851018 m!791997))

(declare-fun m!791999 () Bool)

(assert (=> bm!37982 m!791999))

(declare-fun m!792001 () Bool)

(assert (=> b!851022 m!792001))

(declare-fun m!792003 () Bool)

(assert (=> b!851022 m!792003))

(declare-fun m!792005 () Bool)

(assert (=> b!851022 m!792005))

(assert (=> b!851022 m!791999))

(declare-fun m!792007 () Bool)

(assert (=> b!851022 m!792007))

(declare-fun m!792009 () Bool)

(assert (=> b!851022 m!792009))

(declare-fun m!792011 () Bool)

(assert (=> b!851022 m!792011))

(assert (=> b!851022 m!792007))

(declare-fun m!792013 () Bool)

(assert (=> b!851022 m!792013))

(assert (=> b!851022 m!792003))

(declare-fun m!792015 () Bool)

(assert (=> b!851022 m!792015))

(assert (=> b!851022 m!791993))

(declare-fun m!792017 () Bool)

(assert (=> b!851022 m!792017))

(assert (=> b!851022 m!792001))

(declare-fun m!792019 () Bool)

(assert (=> b!851022 m!792019))

(declare-fun m!792021 () Bool)

(assert (=> b!851022 m!792021))

(declare-fun m!792023 () Bool)

(assert (=> start!73156 m!792023))

(declare-fun m!792025 () Bool)

(assert (=> start!73156 m!792025))

(declare-fun m!792027 () Bool)

(assert (=> b!851028 m!792027))

(assert (=> b!851028 m!792021))

(declare-fun m!792029 () Bool)

(assert (=> b!851028 m!792029))

(declare-fun m!792031 () Bool)

(assert (=> b!851025 m!792031))

(declare-fun m!792033 () Bool)

(assert (=> b!851020 m!792033))

(declare-fun m!792035 () Bool)

(assert (=> mapNonEmpty!25868 m!792035))

(declare-fun m!792037 () Bool)

(assert (=> b!851026 m!792037))

(declare-fun m!792039 () Bool)

(assert (=> b!851019 m!792039))

(declare-fun m!792041 () Bool)

(assert (=> b!851021 m!792041))

(declare-fun m!792043 () Bool)

(assert (=> b!851027 m!792043))

(declare-fun m!792045 () Bool)

(assert (=> bm!37981 m!792045))

(check-sat (not bm!37981) (not b!851028) (not start!73156) (not b_next!14043) (not b_lambda!11605) b_and!23265 (not b!851018) (not b!851020) (not b!851021) (not b!851022) (not mapNonEmpty!25868) (not bm!37982) (not b!851025) (not b!851019) (not b!851026) tp_is_empty!16179)
(check-sat b_and!23265 (not b_next!14043))

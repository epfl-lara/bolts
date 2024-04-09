; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73198 () Bool)

(assert start!73198)

(declare-fun b_free!14085 () Bool)

(declare-fun b_next!14085 () Bool)

(assert (=> start!73198 (= b_free!14085 (not b_next!14085))))

(declare-fun tp!49759 () Bool)

(declare-fun b_and!23347 () Bool)

(assert (=> start!73198 (= tp!49759 b_and!23347)))

(declare-fun b!852002 () Bool)

(declare-fun res!578813 () Bool)

(declare-fun e!475233 () Bool)

(assert (=> b!852002 (=> (not res!578813) (not e!475233))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!852002 (= res!578813 (validMask!0 mask!1196))))

(declare-fun b!852003 () Bool)

(declare-fun e!475231 () Bool)

(declare-fun e!475230 () Bool)

(declare-fun mapRes!25931 () Bool)

(assert (=> b!852003 (= e!475231 (and e!475230 mapRes!25931))))

(declare-fun condMapEmpty!25931 () Bool)

(declare-datatypes ((V!26675 0))(
  ( (V!26676 (val!8158 Int)) )
))
(declare-datatypes ((ValueCell!7671 0))(
  ( (ValueCellFull!7671 (v!10579 V!26675)) (EmptyCell!7671) )
))
(declare-datatypes ((array!48630 0))(
  ( (array!48631 (arr!23342 (Array (_ BitVec 32) ValueCell!7671)) (size!23783 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48630)

(declare-fun mapDefault!25931 () ValueCell!7671)

(assert (=> b!852003 (= condMapEmpty!25931 (= (arr!23342 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7671)) mapDefault!25931)))))

(declare-fun b!852004 () Bool)

(declare-fun e!475236 () Bool)

(declare-fun tp_is_empty!16221 () Bool)

(assert (=> b!852004 (= e!475236 tp_is_empty!16221)))

(declare-datatypes ((tuple2!10724 0))(
  ( (tuple2!10725 (_1!5372 (_ BitVec 64)) (_2!5372 V!26675)) )
))
(declare-datatypes ((List!16609 0))(
  ( (Nil!16606) (Cons!16605 (h!17736 tuple2!10724) (t!23148 List!16609)) )
))
(declare-datatypes ((ListLongMap!9507 0))(
  ( (ListLongMap!9508 (toList!4769 List!16609)) )
))
(declare-fun call!38111 () ListLongMap!9507)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun bm!38107 () Bool)

(declare-datatypes ((array!48632 0))(
  ( (array!48633 (arr!23343 (Array (_ BitVec 32) (_ BitVec 64))) (size!23784 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48632)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26675)

(declare-fun zeroValue!654 () V!26675)

(declare-fun getCurrentListMapNoExtraKeys!2754 (array!48632 array!48630 (_ BitVec 32) (_ BitVec 32) V!26675 V!26675 (_ BitVec 32) Int) ListLongMap!9507)

(assert (=> bm!38107 (= call!38111 (getCurrentListMapNoExtraKeys!2754 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun e!475235 () Bool)

(declare-fun v!557 () V!26675)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun call!38110 () ListLongMap!9507)

(declare-fun b!852005 () Bool)

(declare-fun +!2110 (ListLongMap!9507 tuple2!10724) ListLongMap!9507)

(assert (=> b!852005 (= e!475235 (= call!38110 (+!2110 call!38111 (tuple2!10725 k0!854 v!557))))))

(declare-fun bm!38108 () Bool)

(declare-fun lt!383863 () array!48630)

(assert (=> bm!38108 (= call!38110 (getCurrentListMapNoExtraKeys!2754 _keys!868 lt!383863 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852006 () Bool)

(declare-fun res!578815 () Bool)

(assert (=> b!852006 (=> (not res!578815) (not e!475233))))

(declare-datatypes ((List!16610 0))(
  ( (Nil!16607) (Cons!16606 (h!17737 (_ BitVec 64)) (t!23149 List!16610)) )
))
(declare-fun arrayNoDuplicates!0 (array!48632 (_ BitVec 32) List!16610) Bool)

(assert (=> b!852006 (= res!578815 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16607))))

(declare-fun mapIsEmpty!25931 () Bool)

(assert (=> mapIsEmpty!25931 mapRes!25931))

(declare-fun b!852007 () Bool)

(declare-fun res!578814 () Bool)

(assert (=> b!852007 (=> (not res!578814) (not e!475233))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!852007 (= res!578814 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23784 _keys!868))))))

(declare-fun mapNonEmpty!25931 () Bool)

(declare-fun tp!49760 () Bool)

(assert (=> mapNonEmpty!25931 (= mapRes!25931 (and tp!49760 e!475236))))

(declare-fun mapRest!25931 () (Array (_ BitVec 32) ValueCell!7671))

(declare-fun mapValue!25931 () ValueCell!7671)

(declare-fun mapKey!25931 () (_ BitVec 32))

(assert (=> mapNonEmpty!25931 (= (arr!23342 _values!688) (store mapRest!25931 mapKey!25931 mapValue!25931))))

(declare-fun b!852008 () Bool)

(assert (=> b!852008 (= e!475230 tp_is_empty!16221)))

(declare-fun b!852009 () Bool)

(declare-fun e!475234 () Bool)

(assert (=> b!852009 (= e!475234 true)))

(declare-fun lt!383868 () tuple2!10724)

(declare-fun lt!383866 () ListLongMap!9507)

(declare-fun lt!383860 () V!26675)

(assert (=> b!852009 (= (+!2110 lt!383866 lt!383868) (+!2110 (+!2110 lt!383866 (tuple2!10725 k0!854 lt!383860)) lt!383868))))

(declare-fun lt!383861 () V!26675)

(assert (=> b!852009 (= lt!383868 (tuple2!10725 k0!854 lt!383861))))

(declare-datatypes ((Unit!29068 0))(
  ( (Unit!29069) )
))
(declare-fun lt!383865 () Unit!29068)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!293 (ListLongMap!9507 (_ BitVec 64) V!26675 V!26675) Unit!29068)

(assert (=> b!852009 (= lt!383865 (addSameAsAddTwiceSameKeyDiffValues!293 lt!383866 k0!854 lt!383860 lt!383861))))

(declare-fun lt!383864 () V!26675)

(declare-fun get!12319 (ValueCell!7671 V!26675) V!26675)

(assert (=> b!852009 (= lt!383860 (get!12319 (select (arr!23342 _values!688) from!1053) lt!383864))))

(declare-fun lt!383867 () ListLongMap!9507)

(assert (=> b!852009 (= lt!383867 (+!2110 lt!383866 (tuple2!10725 (select (arr!23343 _keys!868) from!1053) lt!383861)))))

(assert (=> b!852009 (= lt!383861 (get!12319 (select (store (arr!23342 _values!688) i!612 (ValueCellFull!7671 v!557)) from!1053) lt!383864))))

(declare-fun dynLambda!1041 (Int (_ BitVec 64)) V!26675)

(assert (=> b!852009 (= lt!383864 (dynLambda!1041 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!852009 (= lt!383866 (getCurrentListMapNoExtraKeys!2754 _keys!868 lt!383863 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!852010 () Bool)

(declare-fun res!578817 () Bool)

(assert (=> b!852010 (=> (not res!578817) (not e!475233))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!852010 (= res!578817 (validKeyInArray!0 k0!854))))

(declare-fun b!852011 () Bool)

(declare-fun res!578816 () Bool)

(assert (=> b!852011 (=> (not res!578816) (not e!475233))))

(assert (=> b!852011 (= res!578816 (and (= (size!23783 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23784 _keys!868) (size!23783 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!852012 () Bool)

(assert (=> b!852012 (= e!475235 (= call!38110 call!38111))))

(declare-fun b!852014 () Bool)

(declare-fun res!578812 () Bool)

(assert (=> b!852014 (=> (not res!578812) (not e!475233))))

(assert (=> b!852014 (= res!578812 (and (= (select (arr!23343 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!852013 () Bool)

(declare-fun res!578819 () Bool)

(assert (=> b!852013 (=> (not res!578819) (not e!475233))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48632 (_ BitVec 32)) Bool)

(assert (=> b!852013 (= res!578819 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!578820 () Bool)

(assert (=> start!73198 (=> (not res!578820) (not e!475233))))

(assert (=> start!73198 (= res!578820 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23784 _keys!868))))))

(assert (=> start!73198 e!475233))

(assert (=> start!73198 tp_is_empty!16221))

(assert (=> start!73198 true))

(assert (=> start!73198 tp!49759))

(declare-fun array_inv!18504 (array!48632) Bool)

(assert (=> start!73198 (array_inv!18504 _keys!868)))

(declare-fun array_inv!18505 (array!48630) Bool)

(assert (=> start!73198 (and (array_inv!18505 _values!688) e!475231)))

(declare-fun b!852015 () Bool)

(declare-fun e!475229 () Bool)

(assert (=> b!852015 (= e!475233 e!475229)))

(declare-fun res!578818 () Bool)

(assert (=> b!852015 (=> (not res!578818) (not e!475229))))

(assert (=> b!852015 (= res!578818 (= from!1053 i!612))))

(assert (=> b!852015 (= lt!383867 (getCurrentListMapNoExtraKeys!2754 _keys!868 lt!383863 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!852015 (= lt!383863 (array!48631 (store (arr!23342 _values!688) i!612 (ValueCellFull!7671 v!557)) (size!23783 _values!688)))))

(declare-fun lt!383859 () ListLongMap!9507)

(assert (=> b!852015 (= lt!383859 (getCurrentListMapNoExtraKeys!2754 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!852016 () Bool)

(assert (=> b!852016 (= e!475229 (not e!475234))))

(declare-fun res!578811 () Bool)

(assert (=> b!852016 (=> res!578811 e!475234)))

(assert (=> b!852016 (= res!578811 (not (validKeyInArray!0 (select (arr!23343 _keys!868) from!1053))))))

(assert (=> b!852016 e!475235))

(declare-fun c!91716 () Bool)

(assert (=> b!852016 (= c!91716 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun lt!383862 () Unit!29068)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!376 (array!48632 array!48630 (_ BitVec 32) (_ BitVec 32) V!26675 V!26675 (_ BitVec 32) (_ BitVec 64) V!26675 (_ BitVec 32) Int) Unit!29068)

(assert (=> b!852016 (= lt!383862 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!376 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73198 res!578820) b!852002))

(assert (= (and b!852002 res!578813) b!852011))

(assert (= (and b!852011 res!578816) b!852013))

(assert (= (and b!852013 res!578819) b!852006))

(assert (= (and b!852006 res!578815) b!852007))

(assert (= (and b!852007 res!578814) b!852010))

(assert (= (and b!852010 res!578817) b!852014))

(assert (= (and b!852014 res!578812) b!852015))

(assert (= (and b!852015 res!578818) b!852016))

(assert (= (and b!852016 c!91716) b!852005))

(assert (= (and b!852016 (not c!91716)) b!852012))

(assert (= (or b!852005 b!852012) bm!38108))

(assert (= (or b!852005 b!852012) bm!38107))

(assert (= (and b!852016 (not res!578811)) b!852009))

(assert (= (and b!852003 condMapEmpty!25931) mapIsEmpty!25931))

(assert (= (and b!852003 (not condMapEmpty!25931)) mapNonEmpty!25931))

(get-info :version)

(assert (= (and mapNonEmpty!25931 ((_ is ValueCellFull!7671) mapValue!25931)) b!852004))

(assert (= (and b!852003 ((_ is ValueCellFull!7671) mapDefault!25931)) b!852008))

(assert (= start!73198 b!852003))

(declare-fun b_lambda!11647 () Bool)

(assert (=> (not b_lambda!11647) (not b!852009)))

(declare-fun t!23147 () Bool)

(declare-fun tb!4395 () Bool)

(assert (=> (and start!73198 (= defaultEntry!696 defaultEntry!696) t!23147) tb!4395))

(declare-fun result!8393 () Bool)

(assert (=> tb!4395 (= result!8393 tp_is_empty!16221)))

(assert (=> b!852009 t!23147))

(declare-fun b_and!23349 () Bool)

(assert (= b_and!23347 (and (=> t!23147 result!8393) b_and!23349)))

(declare-fun m!793127 () Bool)

(assert (=> b!852014 m!793127))

(declare-fun m!793129 () Bool)

(assert (=> b!852013 m!793129))

(declare-fun m!793131 () Bool)

(assert (=> bm!38107 m!793131))

(declare-fun m!793133 () Bool)

(assert (=> b!852002 m!793133))

(declare-fun m!793135 () Bool)

(assert (=> b!852005 m!793135))

(declare-fun m!793137 () Bool)

(assert (=> b!852015 m!793137))

(declare-fun m!793139 () Bool)

(assert (=> b!852015 m!793139))

(declare-fun m!793141 () Bool)

(assert (=> b!852015 m!793141))

(declare-fun m!793143 () Bool)

(assert (=> b!852016 m!793143))

(assert (=> b!852016 m!793143))

(declare-fun m!793145 () Bool)

(assert (=> b!852016 m!793145))

(declare-fun m!793147 () Bool)

(assert (=> b!852016 m!793147))

(declare-fun m!793149 () Bool)

(assert (=> mapNonEmpty!25931 m!793149))

(declare-fun m!793151 () Bool)

(assert (=> bm!38108 m!793151))

(declare-fun m!793153 () Bool)

(assert (=> b!852010 m!793153))

(declare-fun m!793155 () Bool)

(assert (=> b!852006 m!793155))

(declare-fun m!793157 () Bool)

(assert (=> b!852009 m!793157))

(declare-fun m!793159 () Bool)

(assert (=> b!852009 m!793159))

(declare-fun m!793161 () Bool)

(assert (=> b!852009 m!793161))

(declare-fun m!793163 () Bool)

(assert (=> b!852009 m!793163))

(declare-fun m!793165 () Bool)

(assert (=> b!852009 m!793165))

(declare-fun m!793167 () Bool)

(assert (=> b!852009 m!793167))

(declare-fun m!793169 () Bool)

(assert (=> b!852009 m!793169))

(declare-fun m!793171 () Bool)

(assert (=> b!852009 m!793171))

(assert (=> b!852009 m!793167))

(assert (=> b!852009 m!793161))

(assert (=> b!852009 m!793143))

(declare-fun m!793173 () Bool)

(assert (=> b!852009 m!793173))

(assert (=> b!852009 m!793151))

(assert (=> b!852009 m!793157))

(declare-fun m!793175 () Bool)

(assert (=> b!852009 m!793175))

(assert (=> b!852009 m!793139))

(declare-fun m!793177 () Bool)

(assert (=> start!73198 m!793177))

(declare-fun m!793179 () Bool)

(assert (=> start!73198 m!793179))

(check-sat (not b!852010) (not b!852005) (not bm!38107) (not mapNonEmpty!25931) (not b!852006) (not b_next!14085) (not b!852013) (not b!852009) (not bm!38108) (not b!852016) (not b_lambda!11647) b_and!23349 (not start!73198) (not b!852015) (not b!852002) tp_is_empty!16221)
(check-sat b_and!23349 (not b_next!14085))

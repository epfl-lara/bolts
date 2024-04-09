; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73264 () Bool)

(assert start!73264)

(declare-fun b_free!14151 () Bool)

(declare-fun b_next!14151 () Bool)

(assert (=> start!73264 (= b_free!14151 (not b_next!14151))))

(declare-fun tp!49957 () Bool)

(declare-fun b_and!23479 () Bool)

(assert (=> start!73264 (= tp!49957 b_and!23479)))

(declare-fun mapNonEmpty!26030 () Bool)

(declare-fun mapRes!26030 () Bool)

(declare-fun tp!49958 () Bool)

(declare-fun e!476025 () Bool)

(assert (=> mapNonEmpty!26030 (= mapRes!26030 (and tp!49958 e!476025))))

(declare-fun mapKey!26030 () (_ BitVec 32))

(declare-datatypes ((V!26763 0))(
  ( (V!26764 (val!8191 Int)) )
))
(declare-datatypes ((ValueCell!7704 0))(
  ( (ValueCellFull!7704 (v!10612 V!26763)) (EmptyCell!7704) )
))
(declare-fun mapRest!26030 () (Array (_ BitVec 32) ValueCell!7704))

(declare-datatypes ((array!48756 0))(
  ( (array!48757 (arr!23405 (Array (_ BitVec 32) ValueCell!7704)) (size!23846 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48756)

(declare-fun mapValue!26030 () ValueCell!7704)

(assert (=> mapNonEmpty!26030 (= (arr!23405 _values!688) (store mapRest!26030 mapKey!26030 mapValue!26030))))

(declare-fun b!853553 () Bool)

(declare-fun res!579804 () Bool)

(declare-fun e!476028 () Bool)

(assert (=> b!853553 (=> (not res!579804) (not e!476028))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!853553 (= res!579804 (validMask!0 mask!1196))))

(declare-fun b!853554 () Bool)

(declare-fun e!476021 () Bool)

(declare-datatypes ((tuple2!10780 0))(
  ( (tuple2!10781 (_1!5400 (_ BitVec 64)) (_2!5400 V!26763)) )
))
(declare-datatypes ((List!16657 0))(
  ( (Nil!16654) (Cons!16653 (h!17784 tuple2!10780) (t!23262 List!16657)) )
))
(declare-datatypes ((ListLongMap!9563 0))(
  ( (ListLongMap!9564 (toList!4797 List!16657)) )
))
(declare-fun call!38309 () ListLongMap!9563)

(declare-fun call!38308 () ListLongMap!9563)

(assert (=> b!853554 (= e!476021 (= call!38309 call!38308))))

(declare-fun mapIsEmpty!26030 () Bool)

(assert (=> mapIsEmpty!26030 mapRes!26030))

(declare-fun b!853555 () Bool)

(declare-fun e!476026 () Bool)

(declare-fun tp_is_empty!16287 () Bool)

(assert (=> b!853555 (= e!476026 tp_is_empty!16287)))

(declare-fun b!853556 () Bool)

(declare-fun res!579807 () Bool)

(assert (=> b!853556 (=> (not res!579807) (not e!476028))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!48758 0))(
  ( (array!48759 (arr!23406 (Array (_ BitVec 32) (_ BitVec 64))) (size!23847 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48758)

(assert (=> b!853556 (= res!579807 (and (= (size!23846 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23847 _keys!868) (size!23846 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!853557 () Bool)

(declare-fun e!476027 () Bool)

(assert (=> b!853557 (= e!476027 (and e!476026 mapRes!26030))))

(declare-fun condMapEmpty!26030 () Bool)

(declare-fun mapDefault!26030 () ValueCell!7704)

(assert (=> b!853557 (= condMapEmpty!26030 (= (arr!23405 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7704)) mapDefault!26030)))))

(declare-fun b!853558 () Bool)

(declare-fun e!476023 () Bool)

(declare-fun e!476022 () Bool)

(assert (=> b!853558 (= e!476023 (not e!476022))))

(declare-fun res!579806 () Bool)

(assert (=> b!853558 (=> res!579806 e!476022)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!853558 (= res!579806 (not (validKeyInArray!0 (select (arr!23406 _keys!868) from!1053))))))

(assert (=> b!853558 e!476021))

(declare-fun c!91815 () Bool)

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!853558 (= c!91815 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun v!557 () V!26763)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((Unit!29118 0))(
  ( (Unit!29119) )
))
(declare-fun lt!384855 () Unit!29118)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun minValue!654 () V!26763)

(declare-fun zeroValue!654 () V!26763)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!399 (array!48758 array!48756 (_ BitVec 32) (_ BitVec 32) V!26763 V!26763 (_ BitVec 32) (_ BitVec 64) V!26763 (_ BitVec 32) Int) Unit!29118)

(assert (=> b!853558 (= lt!384855 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!399 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!579809 () Bool)

(assert (=> start!73264 (=> (not res!579809) (not e!476028))))

(assert (=> start!73264 (= res!579809 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23847 _keys!868))))))

(assert (=> start!73264 e!476028))

(assert (=> start!73264 tp_is_empty!16287))

(assert (=> start!73264 true))

(assert (=> start!73264 tp!49957))

(declare-fun array_inv!18538 (array!48758) Bool)

(assert (=> start!73264 (array_inv!18538 _keys!868)))

(declare-fun array_inv!18539 (array!48756) Bool)

(assert (=> start!73264 (and (array_inv!18539 _values!688) e!476027)))

(declare-fun b!853559 () Bool)

(declare-fun res!579810 () Bool)

(assert (=> b!853559 (=> (not res!579810) (not e!476028))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48758 (_ BitVec 32)) Bool)

(assert (=> b!853559 (= res!579810 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!853560 () Bool)

(declare-fun +!2136 (ListLongMap!9563 tuple2!10780) ListLongMap!9563)

(assert (=> b!853560 (= e!476021 (= call!38309 (+!2136 call!38308 (tuple2!10781 k0!854 v!557))))))

(declare-fun b!853561 () Bool)

(assert (=> b!853561 (= e!476028 e!476023)))

(declare-fun res!579801 () Bool)

(assert (=> b!853561 (=> (not res!579801) (not e!476023))))

(assert (=> b!853561 (= res!579801 (= from!1053 i!612))))

(declare-fun lt!384857 () ListLongMap!9563)

(declare-fun lt!384849 () array!48756)

(declare-fun getCurrentListMapNoExtraKeys!2780 (array!48758 array!48756 (_ BitVec 32) (_ BitVec 32) V!26763 V!26763 (_ BitVec 32) Int) ListLongMap!9563)

(assert (=> b!853561 (= lt!384857 (getCurrentListMapNoExtraKeys!2780 _keys!868 lt!384849 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!853561 (= lt!384849 (array!48757 (store (arr!23405 _values!688) i!612 (ValueCellFull!7704 v!557)) (size!23846 _values!688)))))

(declare-fun lt!384856 () ListLongMap!9563)

(assert (=> b!853561 (= lt!384856 (getCurrentListMapNoExtraKeys!2780 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!853562 () Bool)

(declare-fun res!579803 () Bool)

(assert (=> b!853562 (=> (not res!579803) (not e!476028))))

(declare-datatypes ((List!16658 0))(
  ( (Nil!16655) (Cons!16654 (h!17785 (_ BitVec 64)) (t!23263 List!16658)) )
))
(declare-fun arrayNoDuplicates!0 (array!48758 (_ BitVec 32) List!16658) Bool)

(assert (=> b!853562 (= res!579803 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16655))))

(declare-fun b!853563 () Bool)

(assert (=> b!853563 (= e!476025 tp_is_empty!16287)))

(declare-fun b!853564 () Bool)

(declare-fun res!579802 () Bool)

(assert (=> b!853564 (=> (not res!579802) (not e!476028))))

(assert (=> b!853564 (= res!579802 (validKeyInArray!0 k0!854))))

(declare-fun b!853565 () Bool)

(declare-fun res!579808 () Bool)

(assert (=> b!853565 (=> (not res!579808) (not e!476028))))

(assert (=> b!853565 (= res!579808 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23847 _keys!868))))))

(declare-fun b!853566 () Bool)

(assert (=> b!853566 (= e!476022 true)))

(declare-fun lt!384851 () V!26763)

(declare-fun lt!384854 () tuple2!10780)

(declare-fun lt!384853 () ListLongMap!9563)

(assert (=> b!853566 (= (+!2136 lt!384853 lt!384854) (+!2136 (+!2136 lt!384853 (tuple2!10781 k0!854 lt!384851)) lt!384854))))

(declare-fun lt!384850 () V!26763)

(assert (=> b!853566 (= lt!384854 (tuple2!10781 k0!854 lt!384850))))

(declare-fun lt!384858 () Unit!29118)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!316 (ListLongMap!9563 (_ BitVec 64) V!26763 V!26763) Unit!29118)

(assert (=> b!853566 (= lt!384858 (addSameAsAddTwiceSameKeyDiffValues!316 lt!384853 k0!854 lt!384851 lt!384850))))

(declare-fun lt!384852 () V!26763)

(declare-fun get!12364 (ValueCell!7704 V!26763) V!26763)

(assert (=> b!853566 (= lt!384851 (get!12364 (select (arr!23405 _values!688) from!1053) lt!384852))))

(assert (=> b!853566 (= lt!384857 (+!2136 lt!384853 (tuple2!10781 (select (arr!23406 _keys!868) from!1053) lt!384850)))))

(assert (=> b!853566 (= lt!384850 (get!12364 (select (store (arr!23405 _values!688) i!612 (ValueCellFull!7704 v!557)) from!1053) lt!384852))))

(declare-fun dynLambda!1064 (Int (_ BitVec 64)) V!26763)

(assert (=> b!853566 (= lt!384852 (dynLambda!1064 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!853566 (= lt!384853 (getCurrentListMapNoExtraKeys!2780 _keys!868 lt!384849 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun bm!38305 () Bool)

(assert (=> bm!38305 (= call!38309 (getCurrentListMapNoExtraKeys!2780 _keys!868 lt!384849 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!853567 () Bool)

(declare-fun res!579805 () Bool)

(assert (=> b!853567 (=> (not res!579805) (not e!476028))))

(assert (=> b!853567 (= res!579805 (and (= (select (arr!23406 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun bm!38306 () Bool)

(assert (=> bm!38306 (= call!38308 (getCurrentListMapNoExtraKeys!2780 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73264 res!579809) b!853553))

(assert (= (and b!853553 res!579804) b!853556))

(assert (= (and b!853556 res!579807) b!853559))

(assert (= (and b!853559 res!579810) b!853562))

(assert (= (and b!853562 res!579803) b!853565))

(assert (= (and b!853565 res!579808) b!853564))

(assert (= (and b!853564 res!579802) b!853567))

(assert (= (and b!853567 res!579805) b!853561))

(assert (= (and b!853561 res!579801) b!853558))

(assert (= (and b!853558 c!91815) b!853560))

(assert (= (and b!853558 (not c!91815)) b!853554))

(assert (= (or b!853560 b!853554) bm!38305))

(assert (= (or b!853560 b!853554) bm!38306))

(assert (= (and b!853558 (not res!579806)) b!853566))

(assert (= (and b!853557 condMapEmpty!26030) mapIsEmpty!26030))

(assert (= (and b!853557 (not condMapEmpty!26030)) mapNonEmpty!26030))

(get-info :version)

(assert (= (and mapNonEmpty!26030 ((_ is ValueCellFull!7704) mapValue!26030)) b!853563))

(assert (= (and b!853557 ((_ is ValueCellFull!7704) mapDefault!26030)) b!853555))

(assert (= start!73264 b!853557))

(declare-fun b_lambda!11713 () Bool)

(assert (=> (not b_lambda!11713) (not b!853566)))

(declare-fun t!23261 () Bool)

(declare-fun tb!4461 () Bool)

(assert (=> (and start!73264 (= defaultEntry!696 defaultEntry!696) t!23261) tb!4461))

(declare-fun result!8525 () Bool)

(assert (=> tb!4461 (= result!8525 tp_is_empty!16287)))

(assert (=> b!853566 t!23261))

(declare-fun b_and!23481 () Bool)

(assert (= b_and!23479 (and (=> t!23261 result!8525) b_and!23481)))

(declare-fun m!794911 () Bool)

(assert (=> start!73264 m!794911))

(declare-fun m!794913 () Bool)

(assert (=> start!73264 m!794913))

(declare-fun m!794915 () Bool)

(assert (=> b!853566 m!794915))

(declare-fun m!794917 () Bool)

(assert (=> b!853566 m!794917))

(assert (=> b!853566 m!794917))

(declare-fun m!794919 () Bool)

(assert (=> b!853566 m!794919))

(declare-fun m!794921 () Bool)

(assert (=> b!853566 m!794921))

(declare-fun m!794923 () Bool)

(assert (=> b!853566 m!794923))

(declare-fun m!794925 () Bool)

(assert (=> b!853566 m!794925))

(declare-fun m!794927 () Bool)

(assert (=> b!853566 m!794927))

(declare-fun m!794929 () Bool)

(assert (=> b!853566 m!794929))

(declare-fun m!794931 () Bool)

(assert (=> b!853566 m!794931))

(declare-fun m!794933 () Bool)

(assert (=> b!853566 m!794933))

(declare-fun m!794935 () Bool)

(assert (=> b!853566 m!794935))

(declare-fun m!794937 () Bool)

(assert (=> b!853566 m!794937))

(assert (=> b!853566 m!794929))

(declare-fun m!794939 () Bool)

(assert (=> b!853566 m!794939))

(assert (=> b!853566 m!794925))

(declare-fun m!794941 () Bool)

(assert (=> b!853567 m!794941))

(assert (=> bm!38305 m!794931))

(assert (=> b!853558 m!794935))

(assert (=> b!853558 m!794935))

(declare-fun m!794943 () Bool)

(assert (=> b!853558 m!794943))

(declare-fun m!794945 () Bool)

(assert (=> b!853558 m!794945))

(declare-fun m!794947 () Bool)

(assert (=> mapNonEmpty!26030 m!794947))

(declare-fun m!794949 () Bool)

(assert (=> b!853553 m!794949))

(declare-fun m!794951 () Bool)

(assert (=> b!853559 m!794951))

(declare-fun m!794953 () Bool)

(assert (=> b!853560 m!794953))

(declare-fun m!794955 () Bool)

(assert (=> bm!38306 m!794955))

(declare-fun m!794957 () Bool)

(assert (=> b!853561 m!794957))

(assert (=> b!853561 m!794923))

(declare-fun m!794959 () Bool)

(assert (=> b!853561 m!794959))

(declare-fun m!794961 () Bool)

(assert (=> b!853562 m!794961))

(declare-fun m!794963 () Bool)

(assert (=> b!853564 m!794963))

(check-sat (not b_lambda!11713) (not b!853560) (not b_next!14151) (not b!853553) b_and!23481 (not start!73264) (not bm!38306) (not b!853558) (not mapNonEmpty!26030) (not b!853562) (not b!853566) tp_is_empty!16287 (not b!853559) (not b!853561) (not b!853564) (not bm!38305))
(check-sat b_and!23481 (not b_next!14151))

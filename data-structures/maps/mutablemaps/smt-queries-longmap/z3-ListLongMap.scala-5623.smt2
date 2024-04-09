; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73552 () Bool)

(assert start!73552)

(declare-fun b_free!14439 () Bool)

(declare-fun b_next!14439 () Bool)

(assert (=> start!73552 (= b_free!14439 (not b_next!14439))))

(declare-fun tp!50821 () Bool)

(declare-fun b_and!23875 () Bool)

(assert (=> start!73552 (= tp!50821 b_and!23875)))

(declare-fun mapNonEmpty!26462 () Bool)

(declare-fun mapRes!26462 () Bool)

(declare-fun tp!50822 () Bool)

(declare-fun e!478795 () Bool)

(assert (=> mapNonEmpty!26462 (= mapRes!26462 (and tp!50822 e!478795))))

(declare-fun mapKey!26462 () (_ BitVec 32))

(declare-datatypes ((V!27147 0))(
  ( (V!27148 (val!8335 Int)) )
))
(declare-datatypes ((ValueCell!7848 0))(
  ( (ValueCellFull!7848 (v!10756 V!27147)) (EmptyCell!7848) )
))
(declare-fun mapValue!26462 () ValueCell!7848)

(declare-fun mapRest!26462 () (Array (_ BitVec 32) ValueCell!7848))

(declare-datatypes ((array!49308 0))(
  ( (array!49309 (arr!23681 (Array (_ BitVec 32) ValueCell!7848)) (size!24122 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49308)

(assert (=> mapNonEmpty!26462 (= (arr!23681 _values!688) (store mapRest!26462 mapKey!26462 mapValue!26462))))

(declare-fun b!859092 () Bool)

(declare-fun res!583810 () Bool)

(declare-fun e!478796 () Bool)

(assert (=> b!859092 (=> (not res!583810) (not e!478796))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49310 0))(
  ( (array!49311 (arr!23682 (Array (_ BitVec 32) (_ BitVec 64))) (size!24123 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49310)

(assert (=> b!859092 (= res!583810 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24123 _keys!868))))))

(declare-fun b!859093 () Bool)

(declare-fun e!478797 () Bool)

(assert (=> b!859093 (= e!478796 e!478797)))

(declare-fun res!583809 () Bool)

(assert (=> b!859093 (=> (not res!583809) (not e!478797))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!859093 (= res!583809 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10994 0))(
  ( (tuple2!10995 (_1!5507 (_ BitVec 64)) (_2!5507 V!27147)) )
))
(declare-datatypes ((List!16866 0))(
  ( (Nil!16863) (Cons!16862 (h!17993 tuple2!10994) (t!23579 List!16866)) )
))
(declare-datatypes ((ListLongMap!9777 0))(
  ( (ListLongMap!9778 (toList!4904 List!16866)) )
))
(declare-fun lt!387105 () ListLongMap!9777)

(declare-fun lt!387098 () array!49308)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!27147)

(declare-fun zeroValue!654 () V!27147)

(declare-fun getCurrentListMapNoExtraKeys!2884 (array!49310 array!49308 (_ BitVec 32) (_ BitVec 32) V!27147 V!27147 (_ BitVec 32) Int) ListLongMap!9777)

(assert (=> b!859093 (= lt!387105 (getCurrentListMapNoExtraKeys!2884 _keys!868 lt!387098 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27147)

(assert (=> b!859093 (= lt!387098 (array!49309 (store (arr!23681 _values!688) i!612 (ValueCellFull!7848 v!557)) (size!24122 _values!688)))))

(declare-fun lt!387104 () ListLongMap!9777)

(assert (=> b!859093 (= lt!387104 (getCurrentListMapNoExtraKeys!2884 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun mapIsEmpty!26462 () Bool)

(assert (=> mapIsEmpty!26462 mapRes!26462))

(declare-fun b!859094 () Bool)

(declare-fun res!583806 () Bool)

(assert (=> b!859094 (=> (not res!583806) (not e!478796))))

(declare-datatypes ((List!16867 0))(
  ( (Nil!16864) (Cons!16863 (h!17994 (_ BitVec 64)) (t!23580 List!16867)) )
))
(declare-fun arrayNoDuplicates!0 (array!49310 (_ BitVec 32) List!16867) Bool)

(assert (=> b!859094 (= res!583806 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16864))))

(declare-fun b!859095 () Bool)

(declare-fun e!478799 () Bool)

(declare-fun e!478798 () Bool)

(assert (=> b!859095 (= e!478799 (and e!478798 mapRes!26462))))

(declare-fun condMapEmpty!26462 () Bool)

(declare-fun mapDefault!26462 () ValueCell!7848)

(assert (=> b!859095 (= condMapEmpty!26462 (= (arr!23681 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7848)) mapDefault!26462)))))

(declare-fun b!859096 () Bool)

(declare-fun tp_is_empty!16575 () Bool)

(assert (=> b!859096 (= e!478798 tp_is_empty!16575)))

(declare-fun b!859098 () Bool)

(declare-fun res!583804 () Bool)

(assert (=> b!859098 (=> (not res!583804) (not e!478796))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49310 (_ BitVec 32)) Bool)

(assert (=> b!859098 (= res!583804 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!859099 () Bool)

(declare-fun res!583803 () Bool)

(assert (=> b!859099 (=> (not res!583803) (not e!478796))))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!859099 (= res!583803 (and (= (select (arr!23682 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!859100 () Bool)

(assert (=> b!859100 (= e!478795 tp_is_empty!16575)))

(declare-fun b!859101 () Bool)

(declare-fun res!583807 () Bool)

(assert (=> b!859101 (=> (not res!583807) (not e!478796))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859101 (= res!583807 (validMask!0 mask!1196))))

(declare-fun b!859102 () Bool)

(declare-fun res!583811 () Bool)

(assert (=> b!859102 (=> (not res!583811) (not e!478796))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859102 (= res!583811 (validKeyInArray!0 k0!854))))

(declare-fun b!859103 () Bool)

(declare-fun res!583802 () Bool)

(assert (=> b!859103 (=> (not res!583802) (not e!478796))))

(assert (=> b!859103 (= res!583802 (and (= (size!24122 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24123 _keys!868) (size!24122 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun res!583808 () Bool)

(assert (=> start!73552 (=> (not res!583808) (not e!478796))))

(assert (=> start!73552 (= res!583808 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24123 _keys!868))))))

(assert (=> start!73552 e!478796))

(assert (=> start!73552 tp_is_empty!16575))

(assert (=> start!73552 true))

(assert (=> start!73552 tp!50821))

(declare-fun array_inv!18730 (array!49310) Bool)

(assert (=> start!73552 (array_inv!18730 _keys!868)))

(declare-fun array_inv!18731 (array!49308) Bool)

(assert (=> start!73552 (and (array_inv!18731 _values!688) e!478799)))

(declare-fun b!859097 () Bool)

(declare-fun e!478794 () Bool)

(declare-fun e!478793 () Bool)

(assert (=> b!859097 (= e!478794 e!478793)))

(declare-fun res!583812 () Bool)

(assert (=> b!859097 (=> res!583812 e!478793)))

(assert (=> b!859097 (= res!583812 (not (= (select (arr!23682 _keys!868) from!1053) k0!854)))))

(declare-fun lt!387101 () ListLongMap!9777)

(declare-fun +!2207 (ListLongMap!9777 tuple2!10994) ListLongMap!9777)

(declare-fun get!12490 (ValueCell!7848 V!27147) V!27147)

(declare-fun dynLambda!1094 (Int (_ BitVec 64)) V!27147)

(assert (=> b!859097 (= lt!387105 (+!2207 lt!387101 (tuple2!10995 (select (arr!23682 _keys!868) from!1053) (get!12490 (select (arr!23681 _values!688) from!1053) (dynLambda!1094 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!859104 () Bool)

(assert (=> b!859104 (= e!478797 (not e!478794))))

(declare-fun res!583805 () Bool)

(assert (=> b!859104 (=> res!583805 e!478794)))

(assert (=> b!859104 (= res!583805 (not (validKeyInArray!0 (select (arr!23682 _keys!868) from!1053))))))

(declare-fun lt!387099 () ListLongMap!9777)

(assert (=> b!859104 (= lt!387099 lt!387101)))

(declare-fun lt!387102 () ListLongMap!9777)

(assert (=> b!859104 (= lt!387101 (+!2207 lt!387102 (tuple2!10995 k0!854 v!557)))))

(assert (=> b!859104 (= lt!387099 (getCurrentListMapNoExtraKeys!2884 _keys!868 lt!387098 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859104 (= lt!387102 (getCurrentListMapNoExtraKeys!2884 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29258 0))(
  ( (Unit!29259) )
))
(declare-fun lt!387103 () Unit!29258)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!464 (array!49310 array!49308 (_ BitVec 32) (_ BitVec 32) V!27147 V!27147 (_ BitVec 32) (_ BitVec 64) V!27147 (_ BitVec 32) Int) Unit!29258)

(assert (=> b!859104 (= lt!387103 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!464 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859105 () Bool)

(assert (=> b!859105 (= e!478793 true)))

(assert (=> b!859105 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16864)))

(declare-fun lt!387100 () Unit!29258)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49310 (_ BitVec 32) (_ BitVec 32)) Unit!29258)

(assert (=> b!859105 (= lt!387100 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (= (and start!73552 res!583808) b!859101))

(assert (= (and b!859101 res!583807) b!859103))

(assert (= (and b!859103 res!583802) b!859098))

(assert (= (and b!859098 res!583804) b!859094))

(assert (= (and b!859094 res!583806) b!859092))

(assert (= (and b!859092 res!583810) b!859102))

(assert (= (and b!859102 res!583811) b!859099))

(assert (= (and b!859099 res!583803) b!859093))

(assert (= (and b!859093 res!583809) b!859104))

(assert (= (and b!859104 (not res!583805)) b!859097))

(assert (= (and b!859097 (not res!583812)) b!859105))

(assert (= (and b!859095 condMapEmpty!26462) mapIsEmpty!26462))

(assert (= (and b!859095 (not condMapEmpty!26462)) mapNonEmpty!26462))

(get-info :version)

(assert (= (and mapNonEmpty!26462 ((_ is ValueCellFull!7848) mapValue!26462)) b!859100))

(assert (= (and b!859095 ((_ is ValueCellFull!7848) mapDefault!26462)) b!859096))

(assert (= start!73552 b!859095))

(declare-fun b_lambda!11821 () Bool)

(assert (=> (not b_lambda!11821) (not b!859097)))

(declare-fun t!23578 () Bool)

(declare-fun tb!4569 () Bool)

(assert (=> (and start!73552 (= defaultEntry!696 defaultEntry!696) t!23578) tb!4569))

(declare-fun result!8741 () Bool)

(assert (=> tb!4569 (= result!8741 tp_is_empty!16575)))

(assert (=> b!859097 t!23578))

(declare-fun b_and!23877 () Bool)

(assert (= b_and!23875 (and (=> t!23578 result!8741) b_and!23877)))

(declare-fun m!799943 () Bool)

(assert (=> b!859101 m!799943))

(declare-fun m!799945 () Bool)

(assert (=> b!859104 m!799945))

(declare-fun m!799947 () Bool)

(assert (=> b!859104 m!799947))

(declare-fun m!799949 () Bool)

(assert (=> b!859104 m!799949))

(declare-fun m!799951 () Bool)

(assert (=> b!859104 m!799951))

(assert (=> b!859104 m!799949))

(declare-fun m!799953 () Bool)

(assert (=> b!859104 m!799953))

(declare-fun m!799955 () Bool)

(assert (=> b!859104 m!799955))

(declare-fun m!799957 () Bool)

(assert (=> b!859094 m!799957))

(declare-fun m!799959 () Bool)

(assert (=> b!859098 m!799959))

(declare-fun m!799961 () Bool)

(assert (=> b!859102 m!799961))

(declare-fun m!799963 () Bool)

(assert (=> start!73552 m!799963))

(declare-fun m!799965 () Bool)

(assert (=> start!73552 m!799965))

(declare-fun m!799967 () Bool)

(assert (=> b!859099 m!799967))

(declare-fun m!799969 () Bool)

(assert (=> b!859097 m!799969))

(declare-fun m!799971 () Bool)

(assert (=> b!859097 m!799971))

(declare-fun m!799973 () Bool)

(assert (=> b!859097 m!799973))

(declare-fun m!799975 () Bool)

(assert (=> b!859097 m!799975))

(assert (=> b!859097 m!799971))

(assert (=> b!859097 m!799949))

(assert (=> b!859097 m!799973))

(declare-fun m!799977 () Bool)

(assert (=> mapNonEmpty!26462 m!799977))

(declare-fun m!799979 () Bool)

(assert (=> b!859105 m!799979))

(declare-fun m!799981 () Bool)

(assert (=> b!859105 m!799981))

(declare-fun m!799983 () Bool)

(assert (=> b!859093 m!799983))

(declare-fun m!799985 () Bool)

(assert (=> b!859093 m!799985))

(declare-fun m!799987 () Bool)

(assert (=> b!859093 m!799987))

(check-sat (not b!859104) (not b!859093) b_and!23877 (not b!859102) (not b!859101) (not b_next!14439) tp_is_empty!16575 (not b_lambda!11821) (not b!859098) (not b!859094) (not start!73552) (not mapNonEmpty!26462) (not b!859105) (not b!859097))
(check-sat b_and!23877 (not b_next!14439))

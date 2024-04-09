; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73546 () Bool)

(assert start!73546)

(declare-fun b_free!14433 () Bool)

(declare-fun b_next!14433 () Bool)

(assert (=> start!73546 (= b_free!14433 (not b_next!14433))))

(declare-fun tp!50804 () Bool)

(declare-fun b_and!23863 () Bool)

(assert (=> start!73546 (= tp!50804 b_and!23863)))

(declare-fun b!858960 () Bool)

(declare-fun e!478723 () Bool)

(declare-fun tp_is_empty!16569 () Bool)

(assert (=> b!858960 (= e!478723 tp_is_empty!16569)))

(declare-fun b!858961 () Bool)

(declare-fun e!478727 () Bool)

(declare-fun e!478728 () Bool)

(assert (=> b!858961 (= e!478727 e!478728)))

(declare-fun res!583703 () Bool)

(assert (=> b!858961 (=> res!583703 e!478728)))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!49296 0))(
  ( (array!49297 (arr!23675 (Array (_ BitVec 32) (_ BitVec 64))) (size!24116 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49296)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!858961 (= res!583703 (not (= (select (arr!23675 _keys!868) from!1053) k0!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((V!27139 0))(
  ( (V!27140 (val!8332 Int)) )
))
(declare-datatypes ((ValueCell!7845 0))(
  ( (ValueCellFull!7845 (v!10753 V!27139)) (EmptyCell!7845) )
))
(declare-datatypes ((array!49298 0))(
  ( (array!49299 (arr!23676 (Array (_ BitVec 32) ValueCell!7845)) (size!24117 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49298)

(declare-datatypes ((tuple2!10988 0))(
  ( (tuple2!10989 (_1!5504 (_ BitVec 64)) (_2!5504 V!27139)) )
))
(declare-datatypes ((List!16860 0))(
  ( (Nil!16857) (Cons!16856 (h!17987 tuple2!10988) (t!23567 List!16860)) )
))
(declare-datatypes ((ListLongMap!9771 0))(
  ( (ListLongMap!9772 (toList!4901 List!16860)) )
))
(declare-fun lt!387028 () ListLongMap!9771)

(declare-fun lt!387031 () ListLongMap!9771)

(declare-fun +!2204 (ListLongMap!9771 tuple2!10988) ListLongMap!9771)

(declare-fun get!12486 (ValueCell!7845 V!27139) V!27139)

(declare-fun dynLambda!1092 (Int (_ BitVec 64)) V!27139)

(assert (=> b!858961 (= lt!387028 (+!2204 lt!387031 (tuple2!10989 (select (arr!23675 _keys!868) from!1053) (get!12486 (select (arr!23676 _values!688) from!1053) (dynLambda!1092 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!858962 () Bool)

(declare-fun res!583711 () Bool)

(declare-fun e!478724 () Bool)

(assert (=> b!858962 (=> (not res!583711) (not e!478724))))

(declare-datatypes ((List!16861 0))(
  ( (Nil!16858) (Cons!16857 (h!17988 (_ BitVec 64)) (t!23568 List!16861)) )
))
(declare-fun arrayNoDuplicates!0 (array!49296 (_ BitVec 32) List!16861) Bool)

(assert (=> b!858962 (= res!583711 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16858))))

(declare-fun b!858963 () Bool)

(declare-fun res!583713 () Bool)

(assert (=> b!858963 (=> (not res!583713) (not e!478724))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!858963 (= res!583713 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24116 _keys!868))))))

(declare-fun b!858964 () Bool)

(declare-fun res!583705 () Bool)

(assert (=> b!858964 (=> (not res!583705) (not e!478724))))

(assert (=> b!858964 (= res!583705 (and (= (select (arr!23675 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!858965 () Bool)

(declare-fun e!478726 () Bool)

(assert (=> b!858965 (= e!478726 tp_is_empty!16569)))

(declare-fun res!583709 () Bool)

(assert (=> start!73546 (=> (not res!583709) (not e!478724))))

(assert (=> start!73546 (= res!583709 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24116 _keys!868))))))

(assert (=> start!73546 e!478724))

(assert (=> start!73546 tp_is_empty!16569))

(assert (=> start!73546 true))

(assert (=> start!73546 tp!50804))

(declare-fun array_inv!18726 (array!49296) Bool)

(assert (=> start!73546 (array_inv!18726 _keys!868)))

(declare-fun e!478725 () Bool)

(declare-fun array_inv!18727 (array!49298) Bool)

(assert (=> start!73546 (and (array_inv!18727 _values!688) e!478725)))

(declare-fun b!858966 () Bool)

(assert (=> b!858966 (= e!478728 true)))

(assert (=> b!858966 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16858)))

(declare-datatypes ((Unit!29252 0))(
  ( (Unit!29253) )
))
(declare-fun lt!387032 () Unit!29252)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49296 (_ BitVec 32) (_ BitVec 32)) Unit!29252)

(assert (=> b!858966 (= lt!387032 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!858967 () Bool)

(declare-fun res!583708 () Bool)

(assert (=> b!858967 (=> (not res!583708) (not e!478724))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!858967 (= res!583708 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!26453 () Bool)

(declare-fun mapRes!26453 () Bool)

(assert (=> mapIsEmpty!26453 mapRes!26453))

(declare-fun b!858968 () Bool)

(assert (=> b!858968 (= e!478725 (and e!478723 mapRes!26453))))

(declare-fun condMapEmpty!26453 () Bool)

(declare-fun mapDefault!26453 () ValueCell!7845)

(assert (=> b!858968 (= condMapEmpty!26453 (= (arr!23676 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7845)) mapDefault!26453)))))

(declare-fun b!858969 () Bool)

(declare-fun e!478721 () Bool)

(assert (=> b!858969 (= e!478724 e!478721)))

(declare-fun res!583704 () Bool)

(assert (=> b!858969 (=> (not res!583704) (not e!478721))))

(assert (=> b!858969 (= res!583704 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!387033 () array!49298)

(declare-fun minValue!654 () V!27139)

(declare-fun zeroValue!654 () V!27139)

(declare-fun getCurrentListMapNoExtraKeys!2881 (array!49296 array!49298 (_ BitVec 32) (_ BitVec 32) V!27139 V!27139 (_ BitVec 32) Int) ListLongMap!9771)

(assert (=> b!858969 (= lt!387028 (getCurrentListMapNoExtraKeys!2881 _keys!868 lt!387033 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27139)

(assert (=> b!858969 (= lt!387033 (array!49299 (store (arr!23676 _values!688) i!612 (ValueCellFull!7845 v!557)) (size!24117 _values!688)))))

(declare-fun lt!387030 () ListLongMap!9771)

(assert (=> b!858969 (= lt!387030 (getCurrentListMapNoExtraKeys!2881 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!858970 () Bool)

(declare-fun res!583712 () Bool)

(assert (=> b!858970 (=> (not res!583712) (not e!478724))))

(assert (=> b!858970 (= res!583712 (and (= (size!24117 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24116 _keys!868) (size!24117 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!858971 () Bool)

(declare-fun res!583710 () Bool)

(assert (=> b!858971 (=> (not res!583710) (not e!478724))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49296 (_ BitVec 32)) Bool)

(assert (=> b!858971 (= res!583710 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26453 () Bool)

(declare-fun tp!50803 () Bool)

(assert (=> mapNonEmpty!26453 (= mapRes!26453 (and tp!50803 e!478726))))

(declare-fun mapKey!26453 () (_ BitVec 32))

(declare-fun mapValue!26453 () ValueCell!7845)

(declare-fun mapRest!26453 () (Array (_ BitVec 32) ValueCell!7845))

(assert (=> mapNonEmpty!26453 (= (arr!23676 _values!688) (store mapRest!26453 mapKey!26453 mapValue!26453))))

(declare-fun b!858972 () Bool)

(assert (=> b!858972 (= e!478721 (not e!478727))))

(declare-fun res!583707 () Bool)

(assert (=> b!858972 (=> res!583707 e!478727)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!858972 (= res!583707 (not (validKeyInArray!0 (select (arr!23675 _keys!868) from!1053))))))

(declare-fun lt!387027 () ListLongMap!9771)

(assert (=> b!858972 (= lt!387027 lt!387031)))

(declare-fun lt!387026 () ListLongMap!9771)

(assert (=> b!858972 (= lt!387031 (+!2204 lt!387026 (tuple2!10989 k0!854 v!557)))))

(assert (=> b!858972 (= lt!387027 (getCurrentListMapNoExtraKeys!2881 _keys!868 lt!387033 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!858972 (= lt!387026 (getCurrentListMapNoExtraKeys!2881 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!387029 () Unit!29252)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!461 (array!49296 array!49298 (_ BitVec 32) (_ BitVec 32) V!27139 V!27139 (_ BitVec 32) (_ BitVec 64) V!27139 (_ BitVec 32) Int) Unit!29252)

(assert (=> b!858972 (= lt!387029 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!461 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!858973 () Bool)

(declare-fun res!583706 () Bool)

(assert (=> b!858973 (=> (not res!583706) (not e!478724))))

(assert (=> b!858973 (= res!583706 (validKeyInArray!0 k0!854))))

(assert (= (and start!73546 res!583709) b!858967))

(assert (= (and b!858967 res!583708) b!858970))

(assert (= (and b!858970 res!583712) b!858971))

(assert (= (and b!858971 res!583710) b!858962))

(assert (= (and b!858962 res!583711) b!858963))

(assert (= (and b!858963 res!583713) b!858973))

(assert (= (and b!858973 res!583706) b!858964))

(assert (= (and b!858964 res!583705) b!858969))

(assert (= (and b!858969 res!583704) b!858972))

(assert (= (and b!858972 (not res!583707)) b!858961))

(assert (= (and b!858961 (not res!583703)) b!858966))

(assert (= (and b!858968 condMapEmpty!26453) mapIsEmpty!26453))

(assert (= (and b!858968 (not condMapEmpty!26453)) mapNonEmpty!26453))

(get-info :version)

(assert (= (and mapNonEmpty!26453 ((_ is ValueCellFull!7845) mapValue!26453)) b!858965))

(assert (= (and b!858968 ((_ is ValueCellFull!7845) mapDefault!26453)) b!858960))

(assert (= start!73546 b!858968))

(declare-fun b_lambda!11815 () Bool)

(assert (=> (not b_lambda!11815) (not b!858961)))

(declare-fun t!23566 () Bool)

(declare-fun tb!4563 () Bool)

(assert (=> (and start!73546 (= defaultEntry!696 defaultEntry!696) t!23566) tb!4563))

(declare-fun result!8729 () Bool)

(assert (=> tb!4563 (= result!8729 tp_is_empty!16569)))

(assert (=> b!858961 t!23566))

(declare-fun b_and!23865 () Bool)

(assert (= b_and!23863 (and (=> t!23566 result!8729) b_and!23865)))

(declare-fun m!799805 () Bool)

(assert (=> mapNonEmpty!26453 m!799805))

(declare-fun m!799807 () Bool)

(assert (=> b!858971 m!799807))

(declare-fun m!799809 () Bool)

(assert (=> b!858972 m!799809))

(declare-fun m!799811 () Bool)

(assert (=> b!858972 m!799811))

(declare-fun m!799813 () Bool)

(assert (=> b!858972 m!799813))

(declare-fun m!799815 () Bool)

(assert (=> b!858972 m!799815))

(assert (=> b!858972 m!799813))

(declare-fun m!799817 () Bool)

(assert (=> b!858972 m!799817))

(declare-fun m!799819 () Bool)

(assert (=> b!858972 m!799819))

(declare-fun m!799821 () Bool)

(assert (=> b!858967 m!799821))

(declare-fun m!799823 () Bool)

(assert (=> b!858964 m!799823))

(declare-fun m!799825 () Bool)

(assert (=> start!73546 m!799825))

(declare-fun m!799827 () Bool)

(assert (=> start!73546 m!799827))

(declare-fun m!799829 () Bool)

(assert (=> b!858969 m!799829))

(declare-fun m!799831 () Bool)

(assert (=> b!858969 m!799831))

(declare-fun m!799833 () Bool)

(assert (=> b!858969 m!799833))

(declare-fun m!799835 () Bool)

(assert (=> b!858966 m!799835))

(declare-fun m!799837 () Bool)

(assert (=> b!858966 m!799837))

(declare-fun m!799839 () Bool)

(assert (=> b!858961 m!799839))

(declare-fun m!799841 () Bool)

(assert (=> b!858961 m!799841))

(declare-fun m!799843 () Bool)

(assert (=> b!858961 m!799843))

(declare-fun m!799845 () Bool)

(assert (=> b!858961 m!799845))

(assert (=> b!858961 m!799841))

(assert (=> b!858961 m!799813))

(assert (=> b!858961 m!799843))

(declare-fun m!799847 () Bool)

(assert (=> b!858973 m!799847))

(declare-fun m!799849 () Bool)

(assert (=> b!858962 m!799849))

(check-sat (not start!73546) (not b!858967) (not b_lambda!11815) (not mapNonEmpty!26453) (not b!858969) (not b!858966) (not b!858961) tp_is_empty!16569 (not b!858972) (not b_next!14433) (not b!858973) b_and!23865 (not b!858962) (not b!858971))
(check-sat b_and!23865 (not b_next!14433))

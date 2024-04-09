; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74700 () Bool)

(assert start!74700)

(declare-fun b_free!15321 () Bool)

(declare-fun b_next!15321 () Bool)

(assert (=> start!74700 (= b_free!15321 (not b_next!15321))))

(declare-fun tp!53651 () Bool)

(declare-fun b_and!25279 () Bool)

(assert (=> start!74700 (= tp!53651 b_and!25279)))

(declare-fun b!879937 () Bool)

(declare-fun res!597932 () Bool)

(declare-fun e!489719 () Bool)

(assert (=> b!879937 (=> (not res!597932) (not e!489719))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879937 (= res!597932 (validKeyInArray!0 k0!854))))

(declare-fun res!597930 () Bool)

(assert (=> start!74700 (=> (not res!597930) (not e!489719))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!51240 0))(
  ( (array!51241 (arr!24640 (Array (_ BitVec 32) (_ BitVec 64))) (size!25081 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51240)

(assert (=> start!74700 (= res!597930 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25081 _keys!868))))))

(assert (=> start!74700 e!489719))

(declare-fun tp_is_empty!17565 () Bool)

(assert (=> start!74700 tp_is_empty!17565))

(assert (=> start!74700 true))

(assert (=> start!74700 tp!53651))

(declare-fun array_inv!19398 (array!51240) Bool)

(assert (=> start!74700 (array_inv!19398 _keys!868)))

(declare-datatypes ((V!28467 0))(
  ( (V!28468 (val!8830 Int)) )
))
(declare-datatypes ((ValueCell!8343 0))(
  ( (ValueCellFull!8343 (v!11274 V!28467)) (EmptyCell!8343) )
))
(declare-datatypes ((array!51242 0))(
  ( (array!51243 (arr!24641 (Array (_ BitVec 32) ValueCell!8343)) (size!25082 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51242)

(declare-fun e!489721 () Bool)

(declare-fun array_inv!19399 (array!51242) Bool)

(assert (=> start!74700 (and (array_inv!19399 _values!688) e!489721)))

(declare-fun mapIsEmpty!27969 () Bool)

(declare-fun mapRes!27969 () Bool)

(assert (=> mapIsEmpty!27969 mapRes!27969))

(declare-fun b!879938 () Bool)

(declare-fun e!489718 () Bool)

(assert (=> b!879938 (= e!489718 tp_is_empty!17565)))

(declare-fun b!879939 () Bool)

(declare-fun res!597931 () Bool)

(assert (=> b!879939 (=> (not res!597931) (not e!489719))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(assert (=> b!879939 (= res!597931 (and (= (size!25082 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25081 _keys!868) (size!25082 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879940 () Bool)

(declare-fun res!597928 () Bool)

(assert (=> b!879940 (=> (not res!597928) (not e!489719))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!879940 (= res!597928 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25081 _keys!868))))))

(declare-fun b!879941 () Bool)

(declare-fun res!597927 () Bool)

(assert (=> b!879941 (=> (not res!597927) (not e!489719))))

(declare-datatypes ((List!17580 0))(
  ( (Nil!17577) (Cons!17576 (h!18707 (_ BitVec 64)) (t!24711 List!17580)) )
))
(declare-fun arrayNoDuplicates!0 (array!51240 (_ BitVec 32) List!17580) Bool)

(assert (=> b!879941 (= res!597927 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17577))))

(declare-fun mapNonEmpty!27969 () Bool)

(declare-fun tp!53652 () Bool)

(assert (=> mapNonEmpty!27969 (= mapRes!27969 (and tp!53652 e!489718))))

(declare-fun mapValue!27969 () ValueCell!8343)

(declare-fun mapRest!27969 () (Array (_ BitVec 32) ValueCell!8343))

(declare-fun mapKey!27969 () (_ BitVec 32))

(assert (=> mapNonEmpty!27969 (= (arr!24641 _values!688) (store mapRest!27969 mapKey!27969 mapValue!27969))))

(declare-fun b!879942 () Bool)

(declare-fun e!489717 () Bool)

(assert (=> b!879942 (= e!489719 e!489717)))

(declare-fun res!597929 () Bool)

(assert (=> b!879942 (=> (not res!597929) (not e!489717))))

(assert (=> b!879942 (= res!597929 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11706 0))(
  ( (tuple2!11707 (_1!5863 (_ BitVec 64)) (_2!5863 V!28467)) )
))
(declare-datatypes ((List!17581 0))(
  ( (Nil!17578) (Cons!17577 (h!18708 tuple2!11706) (t!24712 List!17581)) )
))
(declare-datatypes ((ListLongMap!10489 0))(
  ( (ListLongMap!10490 (toList!5260 List!17581)) )
))
(declare-fun lt!397885 () ListLongMap!10489)

(declare-fun minValue!654 () V!28467)

(declare-fun zeroValue!654 () V!28467)

(declare-fun lt!397882 () array!51242)

(declare-fun getCurrentListMapNoExtraKeys!3220 (array!51240 array!51242 (_ BitVec 32) (_ BitVec 32) V!28467 V!28467 (_ BitVec 32) Int) ListLongMap!10489)

(assert (=> b!879942 (= lt!397885 (getCurrentListMapNoExtraKeys!3220 _keys!868 lt!397882 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28467)

(assert (=> b!879942 (= lt!397882 (array!51243 (store (arr!24641 _values!688) i!612 (ValueCellFull!8343 v!557)) (size!25082 _values!688)))))

(declare-fun lt!397879 () ListLongMap!10489)

(assert (=> b!879942 (= lt!397879 (getCurrentListMapNoExtraKeys!3220 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!879943 () Bool)

(declare-fun e!489722 () Bool)

(assert (=> b!879943 (= e!489722 true)))

(declare-fun lt!397880 () ListLongMap!10489)

(declare-fun +!2466 (ListLongMap!10489 tuple2!11706) ListLongMap!10489)

(declare-fun get!12970 (ValueCell!8343 V!28467) V!28467)

(declare-fun dynLambda!1235 (Int (_ BitVec 64)) V!28467)

(assert (=> b!879943 (= lt!397885 (+!2466 lt!397880 (tuple2!11707 (select (arr!24640 _keys!868) from!1053) (get!12970 (select (arr!24641 _values!688) from!1053) (dynLambda!1235 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879944 () Bool)

(declare-fun e!489720 () Bool)

(assert (=> b!879944 (= e!489720 tp_is_empty!17565)))

(declare-fun b!879945 () Bool)

(declare-fun res!597926 () Bool)

(assert (=> b!879945 (=> (not res!597926) (not e!489719))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!879945 (= res!597926 (validMask!0 mask!1196))))

(declare-fun b!879946 () Bool)

(declare-fun res!597933 () Bool)

(assert (=> b!879946 (=> (not res!597933) (not e!489719))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51240 (_ BitVec 32)) Bool)

(assert (=> b!879946 (= res!597933 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!879947 () Bool)

(assert (=> b!879947 (= e!489721 (and e!489720 mapRes!27969))))

(declare-fun condMapEmpty!27969 () Bool)

(declare-fun mapDefault!27969 () ValueCell!8343)

(assert (=> b!879947 (= condMapEmpty!27969 (= (arr!24641 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8343)) mapDefault!27969)))))

(declare-fun b!879948 () Bool)

(declare-fun res!597934 () Bool)

(assert (=> b!879948 (=> (not res!597934) (not e!489719))))

(assert (=> b!879948 (= res!597934 (and (= (select (arr!24640 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!879949 () Bool)

(assert (=> b!879949 (= e!489717 (not e!489722))))

(declare-fun res!597925 () Bool)

(assert (=> b!879949 (=> res!597925 e!489722)))

(assert (=> b!879949 (= res!597925 (not (validKeyInArray!0 (select (arr!24640 _keys!868) from!1053))))))

(declare-fun lt!397884 () ListLongMap!10489)

(assert (=> b!879949 (= lt!397884 lt!397880)))

(declare-fun lt!397881 () ListLongMap!10489)

(assert (=> b!879949 (= lt!397880 (+!2466 lt!397881 (tuple2!11707 k0!854 v!557)))))

(assert (=> b!879949 (= lt!397884 (getCurrentListMapNoExtraKeys!3220 _keys!868 lt!397882 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879949 (= lt!397881 (getCurrentListMapNoExtraKeys!3220 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!30008 0))(
  ( (Unit!30009) )
))
(declare-fun lt!397883 () Unit!30008)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!696 (array!51240 array!51242 (_ BitVec 32) (_ BitVec 32) V!28467 V!28467 (_ BitVec 32) (_ BitVec 64) V!28467 (_ BitVec 32) Int) Unit!30008)

(assert (=> b!879949 (= lt!397883 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!696 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!74700 res!597930) b!879945))

(assert (= (and b!879945 res!597926) b!879939))

(assert (= (and b!879939 res!597931) b!879946))

(assert (= (and b!879946 res!597933) b!879941))

(assert (= (and b!879941 res!597927) b!879940))

(assert (= (and b!879940 res!597928) b!879937))

(assert (= (and b!879937 res!597932) b!879948))

(assert (= (and b!879948 res!597934) b!879942))

(assert (= (and b!879942 res!597929) b!879949))

(assert (= (and b!879949 (not res!597925)) b!879943))

(assert (= (and b!879947 condMapEmpty!27969) mapIsEmpty!27969))

(assert (= (and b!879947 (not condMapEmpty!27969)) mapNonEmpty!27969))

(get-info :version)

(assert (= (and mapNonEmpty!27969 ((_ is ValueCellFull!8343) mapValue!27969)) b!879938))

(assert (= (and b!879947 ((_ is ValueCellFull!8343) mapDefault!27969)) b!879944))

(assert (= start!74700 b!879947))

(declare-fun b_lambda!12459 () Bool)

(assert (=> (not b_lambda!12459) (not b!879943)))

(declare-fun t!24710 () Bool)

(declare-fun tb!4987 () Bool)

(assert (=> (and start!74700 (= defaultEntry!696 defaultEntry!696) t!24710) tb!4987))

(declare-fun result!9591 () Bool)

(assert (=> tb!4987 (= result!9591 tp_is_empty!17565)))

(assert (=> b!879943 t!24710))

(declare-fun b_and!25281 () Bool)

(assert (= b_and!25279 (and (=> t!24710 result!9591) b_and!25281)))

(declare-fun m!819809 () Bool)

(assert (=> b!879941 m!819809))

(declare-fun m!819811 () Bool)

(assert (=> b!879948 m!819811))

(declare-fun m!819813 () Bool)

(assert (=> start!74700 m!819813))

(declare-fun m!819815 () Bool)

(assert (=> start!74700 m!819815))

(declare-fun m!819817 () Bool)

(assert (=> b!879949 m!819817))

(declare-fun m!819819 () Bool)

(assert (=> b!879949 m!819819))

(declare-fun m!819821 () Bool)

(assert (=> b!879949 m!819821))

(assert (=> b!879949 m!819819))

(declare-fun m!819823 () Bool)

(assert (=> b!879949 m!819823))

(declare-fun m!819825 () Bool)

(assert (=> b!879949 m!819825))

(declare-fun m!819827 () Bool)

(assert (=> b!879949 m!819827))

(declare-fun m!819829 () Bool)

(assert (=> b!879943 m!819829))

(assert (=> b!879943 m!819819))

(declare-fun m!819831 () Bool)

(assert (=> b!879943 m!819831))

(assert (=> b!879943 m!819829))

(assert (=> b!879943 m!819831))

(declare-fun m!819833 () Bool)

(assert (=> b!879943 m!819833))

(declare-fun m!819835 () Bool)

(assert (=> b!879943 m!819835))

(declare-fun m!819837 () Bool)

(assert (=> b!879937 m!819837))

(declare-fun m!819839 () Bool)

(assert (=> mapNonEmpty!27969 m!819839))

(declare-fun m!819841 () Bool)

(assert (=> b!879945 m!819841))

(declare-fun m!819843 () Bool)

(assert (=> b!879942 m!819843))

(declare-fun m!819845 () Bool)

(assert (=> b!879942 m!819845))

(declare-fun m!819847 () Bool)

(assert (=> b!879942 m!819847))

(declare-fun m!819849 () Bool)

(assert (=> b!879946 m!819849))

(check-sat (not b_next!15321) (not start!74700) (not b!879937) b_and!25281 (not b!879941) (not b!879945) (not mapNonEmpty!27969) tp_is_empty!17565 (not b!879942) (not b!879943) (not b_lambda!12459) (not b!879946) (not b!879949))
(check-sat b_and!25281 (not b_next!15321))

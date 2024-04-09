; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74630 () Bool)

(assert start!74630)

(declare-fun b_free!15291 () Bool)

(declare-fun b_next!15291 () Bool)

(assert (=> start!74630 (= b_free!15291 (not b_next!15291))))

(declare-fun tp!53555 () Bool)

(declare-fun b_and!25187 () Bool)

(assert (=> start!74630 (= tp!53555 b_and!25187)))

(declare-fun b!879062 () Bool)

(declare-fun res!597380 () Bool)

(declare-fun e!489237 () Bool)

(assert (=> b!879062 (=> (not res!597380) (not e!489237))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-datatypes ((array!51176 0))(
  ( (array!51177 (arr!24610 (Array (_ BitVec 32) (_ BitVec 64))) (size!25051 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!51176)

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!879062 (= res!597380 (and (= (select (arr!24610 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-datatypes ((V!28427 0))(
  ( (V!28428 (val!8815 Int)) )
))
(declare-datatypes ((tuple2!11682 0))(
  ( (tuple2!11683 (_1!5851 (_ BitVec 64)) (_2!5851 V!28427)) )
))
(declare-datatypes ((List!17558 0))(
  ( (Nil!17555) (Cons!17554 (h!18685 tuple2!11682) (t!24659 List!17558)) )
))
(declare-datatypes ((ListLongMap!10465 0))(
  ( (ListLongMap!10466 (toList!5248 List!17558)) )
))
(declare-fun lt!397430 () ListLongMap!10465)

(declare-fun e!489241 () Bool)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!397427 () ListLongMap!10465)

(declare-datatypes ((ValueCell!8328 0))(
  ( (ValueCellFull!8328 (v!11251 V!28427)) (EmptyCell!8328) )
))
(declare-datatypes ((array!51178 0))(
  ( (array!51179 (arr!24611 (Array (_ BitVec 32) ValueCell!8328)) (size!25052 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!51178)

(declare-fun b!879063 () Bool)

(declare-fun +!2454 (ListLongMap!10465 tuple2!11682) ListLongMap!10465)

(declare-fun get!12946 (ValueCell!8328 V!28427) V!28427)

(declare-fun dynLambda!1225 (Int (_ BitVec 64)) V!28427)

(assert (=> b!879063 (= e!489241 (= lt!397430 (+!2454 lt!397427 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!879064 () Bool)

(declare-fun res!597381 () Bool)

(assert (=> b!879064 (=> (not res!597381) (not e!489237))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!879064 (= res!597381 (validKeyInArray!0 k0!854))))

(declare-fun b!879065 () Bool)

(declare-fun e!489243 () Bool)

(declare-fun tp_is_empty!17535 () Bool)

(assert (=> b!879065 (= e!489243 tp_is_empty!17535)))

(declare-fun b!879066 () Bool)

(declare-fun res!597376 () Bool)

(assert (=> b!879066 (=> (not res!597376) (not e!489237))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!879066 (= res!597376 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!27918 () Bool)

(declare-fun mapRes!27918 () Bool)

(assert (=> mapIsEmpty!27918 mapRes!27918))

(declare-fun mapNonEmpty!27918 () Bool)

(declare-fun tp!53556 () Bool)

(assert (=> mapNonEmpty!27918 (= mapRes!27918 (and tp!53556 e!489243))))

(declare-fun mapKey!27918 () (_ BitVec 32))

(declare-fun mapRest!27918 () (Array (_ BitVec 32) ValueCell!8328))

(declare-fun mapValue!27918 () ValueCell!8328)

(assert (=> mapNonEmpty!27918 (= (arr!24611 _values!688) (store mapRest!27918 mapKey!27918 mapValue!27918))))

(declare-fun b!879067 () Bool)

(declare-fun res!597383 () Bool)

(assert (=> b!879067 (=> (not res!597383) (not e!489237))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!51176 (_ BitVec 32)) Bool)

(assert (=> b!879067 (= res!597383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!879068 () Bool)

(declare-fun res!597382 () Bool)

(assert (=> b!879068 (=> (not res!597382) (not e!489237))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!879068 (= res!597382 (and (= (size!25052 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!25051 _keys!868) (size!25052 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!879069 () Bool)

(declare-fun e!489239 () Bool)

(declare-fun e!489240 () Bool)

(assert (=> b!879069 (= e!489239 (and e!489240 mapRes!27918))))

(declare-fun condMapEmpty!27918 () Bool)

(declare-fun mapDefault!27918 () ValueCell!8328)

(assert (=> b!879069 (= condMapEmpty!27918 (= (arr!24611 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8328)) mapDefault!27918)))))

(declare-fun res!597379 () Bool)

(assert (=> start!74630 (=> (not res!597379) (not e!489237))))

(assert (=> start!74630 (= res!597379 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!25051 _keys!868))))))

(assert (=> start!74630 e!489237))

(assert (=> start!74630 tp_is_empty!17535))

(assert (=> start!74630 true))

(assert (=> start!74630 tp!53555))

(declare-fun array_inv!19374 (array!51176) Bool)

(assert (=> start!74630 (array_inv!19374 _keys!868)))

(declare-fun array_inv!19375 (array!51178) Bool)

(assert (=> start!74630 (and (array_inv!19375 _values!688) e!489239)))

(declare-fun b!879070 () Bool)

(declare-fun e!489242 () Bool)

(assert (=> b!879070 (= e!489237 e!489242)))

(declare-fun res!597377 () Bool)

(assert (=> b!879070 (=> (not res!597377) (not e!489242))))

(assert (=> b!879070 (= res!597377 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!397428 () array!51178)

(declare-fun minValue!654 () V!28427)

(declare-fun zeroValue!654 () V!28427)

(declare-fun getCurrentListMapNoExtraKeys!3209 (array!51176 array!51178 (_ BitVec 32) (_ BitVec 32) V!28427 V!28427 (_ BitVec 32) Int) ListLongMap!10465)

(assert (=> b!879070 (= lt!397430 (getCurrentListMapNoExtraKeys!3209 _keys!868 lt!397428 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!28427)

(assert (=> b!879070 (= lt!397428 (array!51179 (store (arr!24611 _values!688) i!612 (ValueCellFull!8328 v!557)) (size!25052 _values!688)))))

(declare-fun lt!397424 () ListLongMap!10465)

(assert (=> b!879070 (= lt!397424 (getCurrentListMapNoExtraKeys!3209 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!879071 () Bool)

(assert (=> b!879071 (= e!489240 tp_is_empty!17535)))

(declare-fun b!879072 () Bool)

(declare-fun res!597378 () Bool)

(assert (=> b!879072 (=> (not res!597378) (not e!489237))))

(declare-datatypes ((List!17559 0))(
  ( (Nil!17556) (Cons!17555 (h!18686 (_ BitVec 64)) (t!24660 List!17559)) )
))
(declare-fun arrayNoDuplicates!0 (array!51176 (_ BitVec 32) List!17559) Bool)

(assert (=> b!879072 (= res!597378 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17556))))

(declare-fun b!879073 () Bool)

(declare-fun res!597375 () Bool)

(assert (=> b!879073 (=> (not res!597375) (not e!489237))))

(assert (=> b!879073 (= res!597375 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25051 _keys!868))))))

(declare-fun b!879074 () Bool)

(assert (=> b!879074 (= e!489242 (not e!489241))))

(declare-fun res!597384 () Bool)

(assert (=> b!879074 (=> res!597384 e!489241)))

(assert (=> b!879074 (= res!597384 (not (validKeyInArray!0 (select (arr!24610 _keys!868) from!1053))))))

(declare-fun lt!397425 () ListLongMap!10465)

(assert (=> b!879074 (= lt!397425 lt!397427)))

(declare-fun lt!397429 () ListLongMap!10465)

(assert (=> b!879074 (= lt!397427 (+!2454 lt!397429 (tuple2!11683 k0!854 v!557)))))

(assert (=> b!879074 (= lt!397425 (getCurrentListMapNoExtraKeys!3209 _keys!868 lt!397428 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!879074 (= lt!397429 (getCurrentListMapNoExtraKeys!3209 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-datatypes ((Unit!29986 0))(
  ( (Unit!29987) )
))
(declare-fun lt!397426 () Unit!29986)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!685 (array!51176 array!51178 (_ BitVec 32) (_ BitVec 32) V!28427 V!28427 (_ BitVec 32) (_ BitVec 64) V!28427 (_ BitVec 32) Int) Unit!29986)

(assert (=> b!879074 (= lt!397426 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!685 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!74630 res!597379) b!879066))

(assert (= (and b!879066 res!597376) b!879068))

(assert (= (and b!879068 res!597382) b!879067))

(assert (= (and b!879067 res!597383) b!879072))

(assert (= (and b!879072 res!597378) b!879073))

(assert (= (and b!879073 res!597375) b!879064))

(assert (= (and b!879064 res!597381) b!879062))

(assert (= (and b!879062 res!597380) b!879070))

(assert (= (and b!879070 res!597377) b!879074))

(assert (= (and b!879074 (not res!597384)) b!879063))

(assert (= (and b!879069 condMapEmpty!27918) mapIsEmpty!27918))

(assert (= (and b!879069 (not condMapEmpty!27918)) mapNonEmpty!27918))

(get-info :version)

(assert (= (and mapNonEmpty!27918 ((_ is ValueCellFull!8328) mapValue!27918)) b!879065))

(assert (= (and b!879069 ((_ is ValueCellFull!8328) mapDefault!27918)) b!879071))

(assert (= start!74630 b!879069))

(declare-fun b_lambda!12361 () Bool)

(assert (=> (not b_lambda!12361) (not b!879063)))

(declare-fun t!24658 () Bool)

(declare-fun tb!4957 () Bool)

(assert (=> (and start!74630 (= defaultEntry!696 defaultEntry!696) t!24658) tb!4957))

(declare-fun result!9527 () Bool)

(assert (=> tb!4957 (= result!9527 tp_is_empty!17535)))

(assert (=> b!879063 t!24658))

(declare-fun b_and!25189 () Bool)

(assert (= b_and!25187 (and (=> t!24658 result!9527) b_and!25189)))

(declare-fun m!818883 () Bool)

(assert (=> start!74630 m!818883))

(declare-fun m!818885 () Bool)

(assert (=> start!74630 m!818885))

(declare-fun m!818887 () Bool)

(assert (=> b!879064 m!818887))

(declare-fun m!818889 () Bool)

(assert (=> b!879063 m!818889))

(declare-fun m!818891 () Bool)

(assert (=> b!879063 m!818891))

(declare-fun m!818893 () Bool)

(assert (=> b!879063 m!818893))

(assert (=> b!879063 m!818889))

(declare-fun m!818895 () Bool)

(assert (=> b!879063 m!818895))

(assert (=> b!879063 m!818891))

(declare-fun m!818897 () Bool)

(assert (=> b!879063 m!818897))

(declare-fun m!818899 () Bool)

(assert (=> b!879066 m!818899))

(declare-fun m!818901 () Bool)

(assert (=> mapNonEmpty!27918 m!818901))

(declare-fun m!818903 () Bool)

(assert (=> b!879070 m!818903))

(declare-fun m!818905 () Bool)

(assert (=> b!879070 m!818905))

(declare-fun m!818907 () Bool)

(assert (=> b!879070 m!818907))

(declare-fun m!818909 () Bool)

(assert (=> b!879067 m!818909))

(declare-fun m!818911 () Bool)

(assert (=> b!879074 m!818911))

(declare-fun m!818913 () Bool)

(assert (=> b!879074 m!818913))

(assert (=> b!879074 m!818895))

(declare-fun m!818915 () Bool)

(assert (=> b!879074 m!818915))

(assert (=> b!879074 m!818895))

(declare-fun m!818917 () Bool)

(assert (=> b!879074 m!818917))

(declare-fun m!818919 () Bool)

(assert (=> b!879074 m!818919))

(declare-fun m!818921 () Bool)

(assert (=> b!879072 m!818921))

(declare-fun m!818923 () Bool)

(assert (=> b!879062 m!818923))

(check-sat (not b!879067) (not start!74630) (not b!879072) (not mapNonEmpty!27918) (not b_next!15291) (not b!879074) (not b!879064) (not b!879066) (not b_lambda!12361) b_and!25189 (not b!879063) tp_is_empty!17535 (not b!879070))
(check-sat b_and!25189 (not b_next!15291))
(get-model)

(declare-fun b_lambda!12365 () Bool)

(assert (= b_lambda!12361 (or (and start!74630 b_free!15291) b_lambda!12365)))

(check-sat (not start!74630) (not b!879072) (not mapNonEmpty!27918) (not b_next!15291) (not b!879074) (not b!879064) (not b!879066) b_and!25189 (not b!879063) (not b_lambda!12365) (not b!879067) tp_is_empty!17535 (not b!879070))
(check-sat b_and!25189 (not b_next!15291))
(get-model)

(declare-fun d!108817 () Bool)

(declare-fun e!489267 () Bool)

(assert (=> d!108817 e!489267))

(declare-fun res!597419 () Bool)

(assert (=> d!108817 (=> (not res!597419) (not e!489267))))

(declare-fun lt!397463 () ListLongMap!10465)

(declare-fun contains!4247 (ListLongMap!10465 (_ BitVec 64)) Bool)

(assert (=> d!108817 (= res!597419 (contains!4247 lt!397463 (_1!5851 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lt!397461 () List!17558)

(assert (=> d!108817 (= lt!397463 (ListLongMap!10466 lt!397461))))

(declare-fun lt!397460 () Unit!29986)

(declare-fun lt!397462 () Unit!29986)

(assert (=> d!108817 (= lt!397460 lt!397462)))

(declare-datatypes ((Option!425 0))(
  ( (Some!424 (v!11256 V!28427)) (None!423) )
))
(declare-fun getValueByKey!419 (List!17558 (_ BitVec 64)) Option!425)

(assert (=> d!108817 (= (getValueByKey!419 lt!397461 (_1!5851 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!424 (_2!5851 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!235 (List!17558 (_ BitVec 64) V!28427) Unit!29986)

(assert (=> d!108817 (= lt!397462 (lemmaContainsTupThenGetReturnValue!235 lt!397461 (_1!5851 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5851 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun insertStrictlySorted!273 (List!17558 (_ BitVec 64) V!28427) List!17558)

(assert (=> d!108817 (= lt!397461 (insertStrictlySorted!273 (toList!5248 lt!397427) (_1!5851 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) (_2!5851 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!108817 (= (+!2454 lt!397427 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))) lt!397463)))

(declare-fun b!879122 () Bool)

(declare-fun res!597420 () Bool)

(assert (=> b!879122 (=> (not res!597420) (not e!489267))))

(assert (=> b!879122 (= res!597420 (= (getValueByKey!419 (toList!5248 lt!397463) (_1!5851 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))) (Some!424 (_2!5851 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))))

(declare-fun b!879123 () Bool)

(declare-fun contains!4248 (List!17558 tuple2!11682) Bool)

(assert (=> b!879123 (= e!489267 (contains!4248 (toList!5248 lt!397463) (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (= (and d!108817 res!597419) b!879122))

(assert (= (and b!879122 res!597420) b!879123))

(declare-fun m!818967 () Bool)

(assert (=> d!108817 m!818967))

(declare-fun m!818969 () Bool)

(assert (=> d!108817 m!818969))

(declare-fun m!818971 () Bool)

(assert (=> d!108817 m!818971))

(declare-fun m!818973 () Bool)

(assert (=> d!108817 m!818973))

(declare-fun m!818975 () Bool)

(assert (=> b!879122 m!818975))

(declare-fun m!818977 () Bool)

(assert (=> b!879123 m!818977))

(assert (=> b!879063 d!108817))

(declare-fun d!108819 () Bool)

(declare-fun c!92707 () Bool)

(assert (=> d!108819 (= c!92707 ((_ is ValueCellFull!8328) (select (arr!24611 _values!688) from!1053)))))

(declare-fun e!489270 () V!28427)

(assert (=> d!108819 (= (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)) e!489270)))

(declare-fun b!879128 () Bool)

(declare-fun get!12947 (ValueCell!8328 V!28427) V!28427)

(assert (=> b!879128 (= e!489270 (get!12947 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!879129 () Bool)

(declare-fun get!12948 (ValueCell!8328 V!28427) V!28427)

(assert (=> b!879129 (= e!489270 (get!12948 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!108819 c!92707) b!879128))

(assert (= (and d!108819 (not c!92707)) b!879129))

(assert (=> b!879128 m!818889))

(assert (=> b!879128 m!818891))

(declare-fun m!818979 () Bool)

(assert (=> b!879128 m!818979))

(assert (=> b!879129 m!818889))

(assert (=> b!879129 m!818891))

(declare-fun m!818981 () Bool)

(assert (=> b!879129 m!818981))

(assert (=> b!879063 d!108819))

(declare-fun b!879140 () Bool)

(declare-fun e!489282 () Bool)

(declare-fun call!38857 () Bool)

(assert (=> b!879140 (= e!489282 call!38857)))

(declare-fun bm!38854 () Bool)

(declare-fun c!92710 () Bool)

(assert (=> bm!38854 (= call!38857 (arrayNoDuplicates!0 _keys!868 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!92710 (Cons!17555 (select (arr!24610 _keys!868) #b00000000000000000000000000000000) Nil!17556) Nil!17556)))))

(declare-fun b!879141 () Bool)

(declare-fun e!489279 () Bool)

(assert (=> b!879141 (= e!489279 e!489282)))

(assert (=> b!879141 (= c!92710 (validKeyInArray!0 (select (arr!24610 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!879142 () Bool)

(declare-fun e!489281 () Bool)

(assert (=> b!879142 (= e!489281 e!489279)))

(declare-fun res!597428 () Bool)

(assert (=> b!879142 (=> (not res!597428) (not e!489279))))

(declare-fun e!489280 () Bool)

(assert (=> b!879142 (= res!597428 (not e!489280))))

(declare-fun res!597427 () Bool)

(assert (=> b!879142 (=> (not res!597427) (not e!489280))))

(assert (=> b!879142 (= res!597427 (validKeyInArray!0 (select (arr!24610 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun d!108821 () Bool)

(declare-fun res!597429 () Bool)

(assert (=> d!108821 (=> res!597429 e!489281)))

(assert (=> d!108821 (= res!597429 (bvsge #b00000000000000000000000000000000 (size!25051 _keys!868)))))

(assert (=> d!108821 (= (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17556) e!489281)))

(declare-fun b!879143 () Bool)

(declare-fun contains!4249 (List!17559 (_ BitVec 64)) Bool)

(assert (=> b!879143 (= e!489280 (contains!4249 Nil!17556 (select (arr!24610 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!879144 () Bool)

(assert (=> b!879144 (= e!489282 call!38857)))

(assert (= (and d!108821 (not res!597429)) b!879142))

(assert (= (and b!879142 res!597427) b!879143))

(assert (= (and b!879142 res!597428) b!879141))

(assert (= (and b!879141 c!92710) b!879140))

(assert (= (and b!879141 (not c!92710)) b!879144))

(assert (= (or b!879140 b!879144) bm!38854))

(declare-fun m!818983 () Bool)

(assert (=> bm!38854 m!818983))

(declare-fun m!818985 () Bool)

(assert (=> bm!38854 m!818985))

(assert (=> b!879141 m!818983))

(assert (=> b!879141 m!818983))

(declare-fun m!818987 () Bool)

(assert (=> b!879141 m!818987))

(assert (=> b!879142 m!818983))

(assert (=> b!879142 m!818983))

(assert (=> b!879142 m!818987))

(assert (=> b!879143 m!818983))

(assert (=> b!879143 m!818983))

(declare-fun m!818989 () Bool)

(assert (=> b!879143 m!818989))

(assert (=> b!879072 d!108821))

(declare-fun bm!38857 () Bool)

(declare-fun call!38860 () Bool)

(assert (=> bm!38857 (= call!38860 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) _keys!868 mask!1196))))

(declare-fun d!108823 () Bool)

(declare-fun res!597434 () Bool)

(declare-fun e!489291 () Bool)

(assert (=> d!108823 (=> res!597434 e!489291)))

(assert (=> d!108823 (= res!597434 (bvsge #b00000000000000000000000000000000 (size!25051 _keys!868)))))

(assert (=> d!108823 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196) e!489291)))

(declare-fun b!879153 () Bool)

(declare-fun e!489290 () Bool)

(assert (=> b!879153 (= e!489290 call!38860)))

(declare-fun b!879154 () Bool)

(declare-fun e!489289 () Bool)

(assert (=> b!879154 (= e!489291 e!489289)))

(declare-fun c!92713 () Bool)

(assert (=> b!879154 (= c!92713 (validKeyInArray!0 (select (arr!24610 _keys!868) #b00000000000000000000000000000000)))))

(declare-fun b!879155 () Bool)

(assert (=> b!879155 (= e!489289 e!489290)))

(declare-fun lt!397470 () (_ BitVec 64))

(assert (=> b!879155 (= lt!397470 (select (arr!24610 _keys!868) #b00000000000000000000000000000000))))

(declare-fun lt!397471 () Unit!29986)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!51176 (_ BitVec 64) (_ BitVec 32)) Unit!29986)

(assert (=> b!879155 (= lt!397471 (lemmaArrayContainsFromImpliesContainsFromZero!0 _keys!868 lt!397470 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!51176 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!879155 (arrayContainsKey!0 _keys!868 lt!397470 #b00000000000000000000000000000000)))

(declare-fun lt!397472 () Unit!29986)

(assert (=> b!879155 (= lt!397472 lt!397471)))

(declare-fun res!597435 () Bool)

(declare-datatypes ((SeekEntryResult!8743 0))(
  ( (MissingZero!8743 (index!37342 (_ BitVec 32))) (Found!8743 (index!37343 (_ BitVec 32))) (Intermediate!8743 (undefined!9555 Bool) (index!37344 (_ BitVec 32)) (x!74454 (_ BitVec 32))) (Undefined!8743) (MissingVacant!8743 (index!37345 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!51176 (_ BitVec 32)) SeekEntryResult!8743)

(assert (=> b!879155 (= res!597435 (= (seekEntryOrOpen!0 (select (arr!24610 _keys!868) #b00000000000000000000000000000000) _keys!868 mask!1196) (Found!8743 #b00000000000000000000000000000000)))))

(assert (=> b!879155 (=> (not res!597435) (not e!489290))))

(declare-fun b!879156 () Bool)

(assert (=> b!879156 (= e!489289 call!38860)))

(assert (= (and d!108823 (not res!597434)) b!879154))

(assert (= (and b!879154 c!92713) b!879155))

(assert (= (and b!879154 (not c!92713)) b!879156))

(assert (= (and b!879155 res!597435) b!879153))

(assert (= (or b!879153 b!879156) bm!38857))

(declare-fun m!818991 () Bool)

(assert (=> bm!38857 m!818991))

(assert (=> b!879154 m!818983))

(assert (=> b!879154 m!818983))

(assert (=> b!879154 m!818987))

(assert (=> b!879155 m!818983))

(declare-fun m!818993 () Bool)

(assert (=> b!879155 m!818993))

(declare-fun m!818995 () Bool)

(assert (=> b!879155 m!818995))

(assert (=> b!879155 m!818983))

(declare-fun m!818997 () Bool)

(assert (=> b!879155 m!818997))

(assert (=> b!879067 d!108823))

(declare-fun d!108825 () Bool)

(assert (=> d!108825 (= (validKeyInArray!0 k0!854) (and (not (= k0!854 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= k0!854 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!879064 d!108825))

(declare-fun d!108827 () Bool)

(assert (=> d!108827 (= (validMask!0 mask!1196) (and (or (= mask!1196 #b00000000000000000000000000000111) (= mask!1196 #b00000000000000000000000000001111) (= mask!1196 #b00000000000000000000000000011111) (= mask!1196 #b00000000000000000000000000111111) (= mask!1196 #b00000000000000000000000001111111) (= mask!1196 #b00000000000000000000000011111111) (= mask!1196 #b00000000000000000000000111111111) (= mask!1196 #b00000000000000000000001111111111) (= mask!1196 #b00000000000000000000011111111111) (= mask!1196 #b00000000000000000000111111111111) (= mask!1196 #b00000000000000000001111111111111) (= mask!1196 #b00000000000000000011111111111111) (= mask!1196 #b00000000000000000111111111111111) (= mask!1196 #b00000000000000001111111111111111) (= mask!1196 #b00000000000000011111111111111111) (= mask!1196 #b00000000000000111111111111111111) (= mask!1196 #b00000000000001111111111111111111) (= mask!1196 #b00000000000011111111111111111111) (= mask!1196 #b00000000000111111111111111111111) (= mask!1196 #b00000000001111111111111111111111) (= mask!1196 #b00000000011111111111111111111111) (= mask!1196 #b00000000111111111111111111111111) (= mask!1196 #b00000001111111111111111111111111) (= mask!1196 #b00000011111111111111111111111111) (= mask!1196 #b00000111111111111111111111111111) (= mask!1196 #b00001111111111111111111111111111) (= mask!1196 #b00011111111111111111111111111111) (= mask!1196 #b00111111111111111111111111111111)) (bvsle mask!1196 #b00111111111111111111111111111111)))))

(assert (=> b!879066 d!108827))

(declare-fun d!108829 () Bool)

(assert (=> d!108829 (= (array_inv!19374 _keys!868) (bvsge (size!25051 _keys!868) #b00000000000000000000000000000000))))

(assert (=> start!74630 d!108829))

(declare-fun d!108831 () Bool)

(assert (=> d!108831 (= (array_inv!19375 _values!688) (bvsge (size!25052 _values!688) #b00000000000000000000000000000000))))

(assert (=> start!74630 d!108831))

(declare-fun b!879181 () Bool)

(declare-fun e!489307 () Bool)

(declare-fun e!489312 () Bool)

(assert (=> b!879181 (= e!489307 e!489312)))

(assert (=> b!879181 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25051 _keys!868)))))

(declare-fun res!597447 () Bool)

(declare-fun lt!397488 () ListLongMap!10465)

(assert (=> b!879181 (= res!597447 (contains!4247 lt!397488 (select (arr!24610 _keys!868) from!1053)))))

(assert (=> b!879181 (=> (not res!597447) (not e!489312))))

(declare-fun d!108833 () Bool)

(declare-fun e!489308 () Bool)

(assert (=> d!108833 e!489308))

(declare-fun res!597444 () Bool)

(assert (=> d!108833 (=> (not res!597444) (not e!489308))))

(assert (=> d!108833 (= res!597444 (not (contains!4247 lt!397488 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!489310 () ListLongMap!10465)

(assert (=> d!108833 (= lt!397488 e!489310)))

(declare-fun c!92724 () Bool)

(assert (=> d!108833 (= c!92724 (bvsge from!1053 (size!25051 _keys!868)))))

(assert (=> d!108833 (validMask!0 mask!1196)))

(assert (=> d!108833 (= (getCurrentListMapNoExtraKeys!3209 _keys!868 lt!397428 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!397488)))

(declare-fun b!879182 () Bool)

(assert (=> b!879182 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25051 _keys!868)))))

(assert (=> b!879182 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25052 lt!397428)))))

(declare-fun apply!378 (ListLongMap!10465 (_ BitVec 64)) V!28427)

(assert (=> b!879182 (= e!489312 (= (apply!378 lt!397488 (select (arr!24610 _keys!868) from!1053)) (get!12946 (select (arr!24611 lt!397428) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!879183 () Bool)

(assert (=> b!879183 (= e!489310 (ListLongMap!10466 Nil!17555))))

(declare-fun b!879184 () Bool)

(assert (=> b!879184 (= e!489308 e!489307)))

(declare-fun c!92723 () Bool)

(declare-fun e!489311 () Bool)

(assert (=> b!879184 (= c!92723 e!489311)))

(declare-fun res!597445 () Bool)

(assert (=> b!879184 (=> (not res!597445) (not e!489311))))

(assert (=> b!879184 (= res!597445 (bvslt from!1053 (size!25051 _keys!868)))))

(declare-fun b!879185 () Bool)

(declare-fun e!489309 () ListLongMap!10465)

(declare-fun call!38863 () ListLongMap!10465)

(assert (=> b!879185 (= e!489309 call!38863)))

(declare-fun b!879186 () Bool)

(declare-fun res!597446 () Bool)

(assert (=> b!879186 (=> (not res!597446) (not e!489308))))

(assert (=> b!879186 (= res!597446 (not (contains!4247 lt!397488 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!879187 () Bool)

(declare-fun e!489306 () Bool)

(assert (=> b!879187 (= e!489307 e!489306)))

(declare-fun c!92722 () Bool)

(assert (=> b!879187 (= c!92722 (bvslt from!1053 (size!25051 _keys!868)))))

(declare-fun bm!38860 () Bool)

(assert (=> bm!38860 (= call!38863 (getCurrentListMapNoExtraKeys!3209 _keys!868 lt!397428 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!879188 () Bool)

(declare-fun lt!397492 () Unit!29986)

(declare-fun lt!397489 () Unit!29986)

(assert (=> b!879188 (= lt!397492 lt!397489)))

(declare-fun lt!397491 () (_ BitVec 64))

(declare-fun lt!397493 () (_ BitVec 64))

(declare-fun lt!397487 () ListLongMap!10465)

(declare-fun lt!397490 () V!28427)

(assert (=> b!879188 (not (contains!4247 (+!2454 lt!397487 (tuple2!11683 lt!397493 lt!397490)) lt!397491))))

(declare-fun addStillNotContains!205 (ListLongMap!10465 (_ BitVec 64) V!28427 (_ BitVec 64)) Unit!29986)

(assert (=> b!879188 (= lt!397489 (addStillNotContains!205 lt!397487 lt!397493 lt!397490 lt!397491))))

(assert (=> b!879188 (= lt!397491 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!879188 (= lt!397490 (get!12946 (select (arr!24611 lt!397428) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!879188 (= lt!397493 (select (arr!24610 _keys!868) from!1053))))

(assert (=> b!879188 (= lt!397487 call!38863)))

(assert (=> b!879188 (= e!489309 (+!2454 call!38863 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 lt!397428) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879189 () Bool)

(assert (=> b!879189 (= e!489306 (= lt!397488 (getCurrentListMapNoExtraKeys!3209 _keys!868 lt!397428 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!879190 () Bool)

(assert (=> b!879190 (= e!489311 (validKeyInArray!0 (select (arr!24610 _keys!868) from!1053)))))

(assert (=> b!879190 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!879191 () Bool)

(assert (=> b!879191 (= e!489310 e!489309)))

(declare-fun c!92725 () Bool)

(assert (=> b!879191 (= c!92725 (validKeyInArray!0 (select (arr!24610 _keys!868) from!1053)))))

(declare-fun b!879192 () Bool)

(declare-fun isEmpty!670 (ListLongMap!10465) Bool)

(assert (=> b!879192 (= e!489306 (isEmpty!670 lt!397488))))

(assert (= (and d!108833 c!92724) b!879183))

(assert (= (and d!108833 (not c!92724)) b!879191))

(assert (= (and b!879191 c!92725) b!879188))

(assert (= (and b!879191 (not c!92725)) b!879185))

(assert (= (or b!879188 b!879185) bm!38860))

(assert (= (and d!108833 res!597444) b!879186))

(assert (= (and b!879186 res!597446) b!879184))

(assert (= (and b!879184 res!597445) b!879190))

(assert (= (and b!879184 c!92723) b!879181))

(assert (= (and b!879184 (not c!92723)) b!879187))

(assert (= (and b!879181 res!597447) b!879182))

(assert (= (and b!879187 c!92722) b!879189))

(assert (= (and b!879187 (not c!92722)) b!879192))

(declare-fun b_lambda!12367 () Bool)

(assert (=> (not b_lambda!12367) (not b!879182)))

(assert (=> b!879182 t!24658))

(declare-fun b_and!25195 () Bool)

(assert (= b_and!25189 (and (=> t!24658 result!9527) b_and!25195)))

(declare-fun b_lambda!12369 () Bool)

(assert (=> (not b_lambda!12369) (not b!879188)))

(assert (=> b!879188 t!24658))

(declare-fun b_and!25197 () Bool)

(assert (= b_and!25195 (and (=> t!24658 result!9527) b_and!25197)))

(assert (=> b!879182 m!818891))

(declare-fun m!818999 () Bool)

(assert (=> b!879182 m!818999))

(assert (=> b!879182 m!818895))

(declare-fun m!819001 () Bool)

(assert (=> b!879182 m!819001))

(assert (=> b!879182 m!818999))

(assert (=> b!879182 m!818891))

(declare-fun m!819003 () Bool)

(assert (=> b!879182 m!819003))

(assert (=> b!879182 m!818895))

(assert (=> b!879190 m!818895))

(assert (=> b!879190 m!818895))

(assert (=> b!879190 m!818915))

(declare-fun m!819005 () Bool)

(assert (=> d!108833 m!819005))

(assert (=> d!108833 m!818899))

(assert (=> b!879181 m!818895))

(assert (=> b!879181 m!818895))

(declare-fun m!819007 () Bool)

(assert (=> b!879181 m!819007))

(assert (=> b!879191 m!818895))

(assert (=> b!879191 m!818895))

(assert (=> b!879191 m!818915))

(assert (=> b!879188 m!818999))

(declare-fun m!819009 () Bool)

(assert (=> b!879188 m!819009))

(declare-fun m!819011 () Bool)

(assert (=> b!879188 m!819011))

(assert (=> b!879188 m!818891))

(declare-fun m!819013 () Bool)

(assert (=> b!879188 m!819013))

(assert (=> b!879188 m!819013))

(declare-fun m!819015 () Bool)

(assert (=> b!879188 m!819015))

(assert (=> b!879188 m!818999))

(assert (=> b!879188 m!818891))

(assert (=> b!879188 m!819003))

(assert (=> b!879188 m!818895))

(declare-fun m!819017 () Bool)

(assert (=> b!879186 m!819017))

(declare-fun m!819019 () Bool)

(assert (=> b!879192 m!819019))

(declare-fun m!819021 () Bool)

(assert (=> b!879189 m!819021))

(assert (=> bm!38860 m!819021))

(assert (=> b!879070 d!108833))

(declare-fun b!879193 () Bool)

(declare-fun e!489314 () Bool)

(declare-fun e!489319 () Bool)

(assert (=> b!879193 (= e!489314 e!489319)))

(assert (=> b!879193 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25051 _keys!868)))))

(declare-fun lt!397495 () ListLongMap!10465)

(declare-fun res!597451 () Bool)

(assert (=> b!879193 (= res!597451 (contains!4247 lt!397495 (select (arr!24610 _keys!868) from!1053)))))

(assert (=> b!879193 (=> (not res!597451) (not e!489319))))

(declare-fun d!108835 () Bool)

(declare-fun e!489315 () Bool)

(assert (=> d!108835 e!489315))

(declare-fun res!597448 () Bool)

(assert (=> d!108835 (=> (not res!597448) (not e!489315))))

(assert (=> d!108835 (= res!597448 (not (contains!4247 lt!397495 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!489317 () ListLongMap!10465)

(assert (=> d!108835 (= lt!397495 e!489317)))

(declare-fun c!92728 () Bool)

(assert (=> d!108835 (= c!92728 (bvsge from!1053 (size!25051 _keys!868)))))

(assert (=> d!108835 (validMask!0 mask!1196)))

(assert (=> d!108835 (= (getCurrentListMapNoExtraKeys!3209 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696) lt!397495)))

(declare-fun b!879194 () Bool)

(assert (=> b!879194 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25051 _keys!868)))))

(assert (=> b!879194 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvslt from!1053 (size!25052 _values!688)))))

(assert (=> b!879194 (= e!489319 (= (apply!378 lt!397495 (select (arr!24610 _keys!868) from!1053)) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!879195 () Bool)

(assert (=> b!879195 (= e!489317 (ListLongMap!10466 Nil!17555))))

(declare-fun b!879196 () Bool)

(assert (=> b!879196 (= e!489315 e!489314)))

(declare-fun c!92727 () Bool)

(declare-fun e!489318 () Bool)

(assert (=> b!879196 (= c!92727 e!489318)))

(declare-fun res!597449 () Bool)

(assert (=> b!879196 (=> (not res!597449) (not e!489318))))

(assert (=> b!879196 (= res!597449 (bvslt from!1053 (size!25051 _keys!868)))))

(declare-fun b!879197 () Bool)

(declare-fun e!489316 () ListLongMap!10465)

(declare-fun call!38864 () ListLongMap!10465)

(assert (=> b!879197 (= e!489316 call!38864)))

(declare-fun b!879198 () Bool)

(declare-fun res!597450 () Bool)

(assert (=> b!879198 (=> (not res!597450) (not e!489315))))

(assert (=> b!879198 (= res!597450 (not (contains!4247 lt!397495 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!879199 () Bool)

(declare-fun e!489313 () Bool)

(assert (=> b!879199 (= e!489314 e!489313)))

(declare-fun c!92726 () Bool)

(assert (=> b!879199 (= c!92726 (bvslt from!1053 (size!25051 _keys!868)))))

(declare-fun bm!38861 () Bool)

(assert (=> bm!38861 (= call!38864 (getCurrentListMapNoExtraKeys!3209 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!879200 () Bool)

(declare-fun lt!397499 () Unit!29986)

(declare-fun lt!397496 () Unit!29986)

(assert (=> b!879200 (= lt!397499 lt!397496)))

(declare-fun lt!397498 () (_ BitVec 64))

(declare-fun lt!397494 () ListLongMap!10465)

(declare-fun lt!397500 () (_ BitVec 64))

(declare-fun lt!397497 () V!28427)

(assert (=> b!879200 (not (contains!4247 (+!2454 lt!397494 (tuple2!11683 lt!397500 lt!397497)) lt!397498))))

(assert (=> b!879200 (= lt!397496 (addStillNotContains!205 lt!397494 lt!397500 lt!397497 lt!397498))))

(assert (=> b!879200 (= lt!397498 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!879200 (= lt!397497 (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!879200 (= lt!397500 (select (arr!24610 _keys!868) from!1053))))

(assert (=> b!879200 (= lt!397494 call!38864)))

(assert (=> b!879200 (= e!489316 (+!2454 call!38864 (tuple2!11683 (select (arr!24610 _keys!868) from!1053) (get!12946 (select (arr!24611 _values!688) from!1053) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879201 () Bool)

(assert (=> b!879201 (= e!489313 (= lt!397495 (getCurrentListMapNoExtraKeys!3209 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!879202 () Bool)

(assert (=> b!879202 (= e!489318 (validKeyInArray!0 (select (arr!24610 _keys!868) from!1053)))))

(assert (=> b!879202 (bvsge from!1053 #b00000000000000000000000000000000)))

(declare-fun b!879203 () Bool)

(assert (=> b!879203 (= e!489317 e!489316)))

(declare-fun c!92729 () Bool)

(assert (=> b!879203 (= c!92729 (validKeyInArray!0 (select (arr!24610 _keys!868) from!1053)))))

(declare-fun b!879204 () Bool)

(assert (=> b!879204 (= e!489313 (isEmpty!670 lt!397495))))

(assert (= (and d!108835 c!92728) b!879195))

(assert (= (and d!108835 (not c!92728)) b!879203))

(assert (= (and b!879203 c!92729) b!879200))

(assert (= (and b!879203 (not c!92729)) b!879197))

(assert (= (or b!879200 b!879197) bm!38861))

(assert (= (and d!108835 res!597448) b!879198))

(assert (= (and b!879198 res!597450) b!879196))

(assert (= (and b!879196 res!597449) b!879202))

(assert (= (and b!879196 c!92727) b!879193))

(assert (= (and b!879196 (not c!92727)) b!879199))

(assert (= (and b!879193 res!597451) b!879194))

(assert (= (and b!879199 c!92726) b!879201))

(assert (= (and b!879199 (not c!92726)) b!879204))

(declare-fun b_lambda!12371 () Bool)

(assert (=> (not b_lambda!12371) (not b!879194)))

(assert (=> b!879194 t!24658))

(declare-fun b_and!25199 () Bool)

(assert (= b_and!25197 (and (=> t!24658 result!9527) b_and!25199)))

(declare-fun b_lambda!12373 () Bool)

(assert (=> (not b_lambda!12373) (not b!879200)))

(assert (=> b!879200 t!24658))

(declare-fun b_and!25201 () Bool)

(assert (= b_and!25199 (and (=> t!24658 result!9527) b_and!25201)))

(assert (=> b!879194 m!818891))

(assert (=> b!879194 m!818889))

(assert (=> b!879194 m!818895))

(declare-fun m!819023 () Bool)

(assert (=> b!879194 m!819023))

(assert (=> b!879194 m!818889))

(assert (=> b!879194 m!818891))

(assert (=> b!879194 m!818893))

(assert (=> b!879194 m!818895))

(assert (=> b!879202 m!818895))

(assert (=> b!879202 m!818895))

(assert (=> b!879202 m!818915))

(declare-fun m!819025 () Bool)

(assert (=> d!108835 m!819025))

(assert (=> d!108835 m!818899))

(assert (=> b!879193 m!818895))

(assert (=> b!879193 m!818895))

(declare-fun m!819027 () Bool)

(assert (=> b!879193 m!819027))

(assert (=> b!879203 m!818895))

(assert (=> b!879203 m!818895))

(assert (=> b!879203 m!818915))

(assert (=> b!879200 m!818889))

(declare-fun m!819029 () Bool)

(assert (=> b!879200 m!819029))

(declare-fun m!819031 () Bool)

(assert (=> b!879200 m!819031))

(assert (=> b!879200 m!818891))

(declare-fun m!819033 () Bool)

(assert (=> b!879200 m!819033))

(assert (=> b!879200 m!819033))

(declare-fun m!819035 () Bool)

(assert (=> b!879200 m!819035))

(assert (=> b!879200 m!818889))

(assert (=> b!879200 m!818891))

(assert (=> b!879200 m!818893))

(assert (=> b!879200 m!818895))

(declare-fun m!819037 () Bool)

(assert (=> b!879198 m!819037))

(declare-fun m!819039 () Bool)

(assert (=> b!879204 m!819039))

(declare-fun m!819041 () Bool)

(assert (=> b!879201 m!819041))

(assert (=> bm!38861 m!819041))

(assert (=> b!879070 d!108835))

(declare-fun b!879205 () Bool)

(declare-fun e!489321 () Bool)

(declare-fun e!489326 () Bool)

(assert (=> b!879205 (= e!489321 e!489326)))

(assert (=> b!879205 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(declare-fun lt!397502 () ListLongMap!10465)

(declare-fun res!597455 () Bool)

(assert (=> b!879205 (= res!597455 (contains!4247 lt!397502 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!879205 (=> (not res!597455) (not e!489326))))

(declare-fun d!108837 () Bool)

(declare-fun e!489322 () Bool)

(assert (=> d!108837 e!489322))

(declare-fun res!597452 () Bool)

(assert (=> d!108837 (=> (not res!597452) (not e!489322))))

(assert (=> d!108837 (= res!597452 (not (contains!4247 lt!397502 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!489324 () ListLongMap!10465)

(assert (=> d!108837 (= lt!397502 e!489324)))

(declare-fun c!92732 () Bool)

(assert (=> d!108837 (= c!92732 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(assert (=> d!108837 (validMask!0 mask!1196)))

(assert (=> d!108837 (= (getCurrentListMapNoExtraKeys!3209 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!397502)))

(declare-fun b!879206 () Bool)

(assert (=> b!879206 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(assert (=> b!879206 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25052 _values!688)))))

(assert (=> b!879206 (= e!489326 (= (apply!378 lt!397502 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12946 (select (arr!24611 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!879207 () Bool)

(assert (=> b!879207 (= e!489324 (ListLongMap!10466 Nil!17555))))

(declare-fun b!879208 () Bool)

(assert (=> b!879208 (= e!489322 e!489321)))

(declare-fun c!92731 () Bool)

(declare-fun e!489325 () Bool)

(assert (=> b!879208 (= c!92731 e!489325)))

(declare-fun res!597453 () Bool)

(assert (=> b!879208 (=> (not res!597453) (not e!489325))))

(assert (=> b!879208 (= res!597453 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(declare-fun b!879209 () Bool)

(declare-fun e!489323 () ListLongMap!10465)

(declare-fun call!38865 () ListLongMap!10465)

(assert (=> b!879209 (= e!489323 call!38865)))

(declare-fun b!879210 () Bool)

(declare-fun res!597454 () Bool)

(assert (=> b!879210 (=> (not res!597454) (not e!489322))))

(assert (=> b!879210 (= res!597454 (not (contains!4247 lt!397502 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!879211 () Bool)

(declare-fun e!489320 () Bool)

(assert (=> b!879211 (= e!489321 e!489320)))

(declare-fun c!92730 () Bool)

(assert (=> b!879211 (= c!92730 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(declare-fun bm!38862 () Bool)

(assert (=> bm!38862 (= call!38865 (getCurrentListMapNoExtraKeys!3209 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!879212 () Bool)

(declare-fun lt!397506 () Unit!29986)

(declare-fun lt!397503 () Unit!29986)

(assert (=> b!879212 (= lt!397506 lt!397503)))

(declare-fun lt!397504 () V!28427)

(declare-fun lt!397507 () (_ BitVec 64))

(declare-fun lt!397505 () (_ BitVec 64))

(declare-fun lt!397501 () ListLongMap!10465)

(assert (=> b!879212 (not (contains!4247 (+!2454 lt!397501 (tuple2!11683 lt!397507 lt!397504)) lt!397505))))

(assert (=> b!879212 (= lt!397503 (addStillNotContains!205 lt!397501 lt!397507 lt!397504 lt!397505))))

(assert (=> b!879212 (= lt!397505 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!879212 (= lt!397504 (get!12946 (select (arr!24611 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!879212 (= lt!397507 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!879212 (= lt!397501 call!38865)))

(assert (=> b!879212 (= e!489323 (+!2454 call!38865 (tuple2!11683 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12946 (select (arr!24611 _values!688) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879213 () Bool)

(assert (=> b!879213 (= e!489320 (= lt!397502 (getCurrentListMapNoExtraKeys!3209 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!879214 () Bool)

(assert (=> b!879214 (= e!489325 (validKeyInArray!0 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!879214 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!879215 () Bool)

(assert (=> b!879215 (= e!489324 e!489323)))

(declare-fun c!92733 () Bool)

(assert (=> b!879215 (= c!92733 (validKeyInArray!0 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!879216 () Bool)

(assert (=> b!879216 (= e!489320 (isEmpty!670 lt!397502))))

(assert (= (and d!108837 c!92732) b!879207))

(assert (= (and d!108837 (not c!92732)) b!879215))

(assert (= (and b!879215 c!92733) b!879212))

(assert (= (and b!879215 (not c!92733)) b!879209))

(assert (= (or b!879212 b!879209) bm!38862))

(assert (= (and d!108837 res!597452) b!879210))

(assert (= (and b!879210 res!597454) b!879208))

(assert (= (and b!879208 res!597453) b!879214))

(assert (= (and b!879208 c!92731) b!879205))

(assert (= (and b!879208 (not c!92731)) b!879211))

(assert (= (and b!879205 res!597455) b!879206))

(assert (= (and b!879211 c!92730) b!879213))

(assert (= (and b!879211 (not c!92730)) b!879216))

(declare-fun b_lambda!12375 () Bool)

(assert (=> (not b_lambda!12375) (not b!879206)))

(assert (=> b!879206 t!24658))

(declare-fun b_and!25203 () Bool)

(assert (= b_and!25201 (and (=> t!24658 result!9527) b_and!25203)))

(declare-fun b_lambda!12377 () Bool)

(assert (=> (not b_lambda!12377) (not b!879212)))

(assert (=> b!879212 t!24658))

(declare-fun b_and!25205 () Bool)

(assert (= b_and!25203 (and (=> t!24658 result!9527) b_and!25205)))

(assert (=> b!879206 m!818891))

(declare-fun m!819043 () Bool)

(assert (=> b!879206 m!819043))

(declare-fun m!819045 () Bool)

(assert (=> b!879206 m!819045))

(declare-fun m!819047 () Bool)

(assert (=> b!879206 m!819047))

(assert (=> b!879206 m!819043))

(assert (=> b!879206 m!818891))

(declare-fun m!819049 () Bool)

(assert (=> b!879206 m!819049))

(assert (=> b!879206 m!819045))

(assert (=> b!879214 m!819045))

(assert (=> b!879214 m!819045))

(declare-fun m!819051 () Bool)

(assert (=> b!879214 m!819051))

(declare-fun m!819053 () Bool)

(assert (=> d!108837 m!819053))

(assert (=> d!108837 m!818899))

(assert (=> b!879205 m!819045))

(assert (=> b!879205 m!819045))

(declare-fun m!819055 () Bool)

(assert (=> b!879205 m!819055))

(assert (=> b!879215 m!819045))

(assert (=> b!879215 m!819045))

(assert (=> b!879215 m!819051))

(assert (=> b!879212 m!819043))

(declare-fun m!819057 () Bool)

(assert (=> b!879212 m!819057))

(declare-fun m!819059 () Bool)

(assert (=> b!879212 m!819059))

(assert (=> b!879212 m!818891))

(declare-fun m!819061 () Bool)

(assert (=> b!879212 m!819061))

(assert (=> b!879212 m!819061))

(declare-fun m!819063 () Bool)

(assert (=> b!879212 m!819063))

(assert (=> b!879212 m!819043))

(assert (=> b!879212 m!818891))

(assert (=> b!879212 m!819049))

(assert (=> b!879212 m!819045))

(declare-fun m!819065 () Bool)

(assert (=> b!879210 m!819065))

(declare-fun m!819067 () Bool)

(assert (=> b!879216 m!819067))

(declare-fun m!819069 () Bool)

(assert (=> b!879213 m!819069))

(assert (=> bm!38862 m!819069))

(assert (=> b!879074 d!108837))

(declare-fun d!108839 () Bool)

(assert (=> d!108839 (= (validKeyInArray!0 (select (arr!24610 _keys!868) from!1053)) (and (not (= (select (arr!24610 _keys!868) from!1053) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!24610 _keys!868) from!1053) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!879074 d!108839))

(declare-fun b!879223 () Bool)

(declare-fun e!489332 () Bool)

(declare-fun call!38870 () ListLongMap!10465)

(declare-fun call!38871 () ListLongMap!10465)

(assert (=> b!879223 (= e!489332 (= call!38870 call!38871))))

(declare-fun bm!38867 () Bool)

(assert (=> bm!38867 (= call!38870 (getCurrentListMapNoExtraKeys!3209 _keys!868 (array!51179 (store (arr!24611 _values!688) i!612 (ValueCellFull!8328 v!557)) (size!25052 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun d!108841 () Bool)

(declare-fun e!489331 () Bool)

(assert (=> d!108841 e!489331))

(declare-fun res!597458 () Bool)

(assert (=> d!108841 (=> (not res!597458) (not e!489331))))

(assert (=> d!108841 (= res!597458 (and (or (not (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612)) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25052 _values!688)))) (or (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612) (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!25052 _values!688))))))))

(declare-fun lt!397510 () Unit!29986)

(declare-fun choose!1442 (array!51176 array!51178 (_ BitVec 32) (_ BitVec 32) V!28427 V!28427 (_ BitVec 32) (_ BitVec 64) V!28427 (_ BitVec 32) Int) Unit!29986)

(assert (=> d!108841 (= lt!397510 (choose!1442 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> d!108841 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(assert (=> d!108841 (= (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!685 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!397510)))

(declare-fun b!879224 () Bool)

(assert (=> b!879224 (= e!489331 e!489332)))

(declare-fun c!92736 () Bool)

(assert (=> b!879224 (= c!92736 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-fun bm!38868 () Bool)

(assert (=> bm!38868 (= call!38871 (getCurrentListMapNoExtraKeys!3209 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!879225 () Bool)

(assert (=> b!879225 (= e!489332 (= call!38870 (+!2454 call!38871 (tuple2!11683 k0!854 v!557))))))

(assert (= (and d!108841 res!597458) b!879224))

(assert (= (and b!879224 c!92736) b!879225))

(assert (= (and b!879224 (not c!92736)) b!879223))

(assert (= (or b!879225 b!879223) bm!38868))

(assert (= (or b!879225 b!879223) bm!38867))

(assert (=> bm!38867 m!818905))

(declare-fun m!819071 () Bool)

(assert (=> bm!38867 m!819071))

(declare-fun m!819073 () Bool)

(assert (=> d!108841 m!819073))

(assert (=> bm!38868 m!818913))

(declare-fun m!819075 () Bool)

(assert (=> b!879225 m!819075))

(assert (=> b!879074 d!108841))

(declare-fun b!879226 () Bool)

(declare-fun e!489334 () Bool)

(declare-fun e!489339 () Bool)

(assert (=> b!879226 (= e!489334 e!489339)))

(assert (=> b!879226 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(declare-fun lt!397512 () ListLongMap!10465)

(declare-fun res!597462 () Bool)

(assert (=> b!879226 (= res!597462 (contains!4247 lt!397512 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!879226 (=> (not res!597462) (not e!489339))))

(declare-fun d!108843 () Bool)

(declare-fun e!489335 () Bool)

(assert (=> d!108843 e!489335))

(declare-fun res!597459 () Bool)

(assert (=> d!108843 (=> (not res!597459) (not e!489335))))

(assert (=> d!108843 (= res!597459 (not (contains!4247 lt!397512 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!489337 () ListLongMap!10465)

(assert (=> d!108843 (= lt!397512 e!489337)))

(declare-fun c!92739 () Bool)

(assert (=> d!108843 (= c!92739 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(assert (=> d!108843 (validMask!0 mask!1196)))

(assert (=> d!108843 (= (getCurrentListMapNoExtraKeys!3209 _keys!868 lt!397428 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) lt!397512)))

(declare-fun b!879227 () Bool)

(assert (=> b!879227 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(assert (=> b!879227 (and (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25052 lt!397428)))))

(assert (=> b!879227 (= e!489339 (= (apply!378 lt!397512 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))) (get!12946 (select (arr!24611 lt!397428) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!879228 () Bool)

(assert (=> b!879228 (= e!489337 (ListLongMap!10466 Nil!17555))))

(declare-fun b!879229 () Bool)

(assert (=> b!879229 (= e!489335 e!489334)))

(declare-fun c!92738 () Bool)

(declare-fun e!489338 () Bool)

(assert (=> b!879229 (= c!92738 e!489338)))

(declare-fun res!597460 () Bool)

(assert (=> b!879229 (=> (not res!597460) (not e!489338))))

(assert (=> b!879229 (= res!597460 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(declare-fun b!879230 () Bool)

(declare-fun e!489336 () ListLongMap!10465)

(declare-fun call!38872 () ListLongMap!10465)

(assert (=> b!879230 (= e!489336 call!38872)))

(declare-fun b!879231 () Bool)

(declare-fun res!597461 () Bool)

(assert (=> b!879231 (=> (not res!597461) (not e!489335))))

(assert (=> b!879231 (= res!597461 (not (contains!4247 lt!397512 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!879232 () Bool)

(declare-fun e!489333 () Bool)

(assert (=> b!879232 (= e!489334 e!489333)))

(declare-fun c!92737 () Bool)

(assert (=> b!879232 (= c!92737 (bvslt (bvadd #b00000000000000000000000000000001 from!1053) (size!25051 _keys!868)))))

(declare-fun bm!38869 () Bool)

(assert (=> bm!38869 (= call!38872 (getCurrentListMapNoExtraKeys!3209 _keys!868 lt!397428 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696))))

(declare-fun b!879233 () Bool)

(declare-fun lt!397516 () Unit!29986)

(declare-fun lt!397513 () Unit!29986)

(assert (=> b!879233 (= lt!397516 lt!397513)))

(declare-fun lt!397511 () ListLongMap!10465)

(declare-fun lt!397514 () V!28427)

(declare-fun lt!397515 () (_ BitVec 64))

(declare-fun lt!397517 () (_ BitVec 64))

(assert (=> b!879233 (not (contains!4247 (+!2454 lt!397511 (tuple2!11683 lt!397517 lt!397514)) lt!397515))))

(assert (=> b!879233 (= lt!397513 (addStillNotContains!205 lt!397511 lt!397517 lt!397514 lt!397515))))

(assert (=> b!879233 (= lt!397515 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!879233 (= lt!397514 (get!12946 (select (arr!24611 lt!397428) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!879233 (= lt!397517 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!879233 (= lt!397511 call!38872)))

(assert (=> b!879233 (= e!489336 (+!2454 call!38872 (tuple2!11683 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053)) (get!12946 (select (arr!24611 lt!397428) (bvadd #b00000000000000000000000000000001 from!1053)) (dynLambda!1225 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!879234 () Bool)

(assert (=> b!879234 (= e!489333 (= lt!397512 (getCurrentListMapNoExtraKeys!3209 _keys!868 lt!397428 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053 #b00000000000000000000000000000001) defaultEntry!696)))))

(declare-fun b!879235 () Bool)

(assert (=> b!879235 (= e!489338 (validKeyInArray!0 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(assert (=> b!879235 (bvsge (bvadd #b00000000000000000000000000000001 from!1053) #b00000000000000000000000000000000)))

(declare-fun b!879236 () Bool)

(assert (=> b!879236 (= e!489337 e!489336)))

(declare-fun c!92740 () Bool)

(assert (=> b!879236 (= c!92740 (validKeyInArray!0 (select (arr!24610 _keys!868) (bvadd #b00000000000000000000000000000001 from!1053))))))

(declare-fun b!879237 () Bool)

(assert (=> b!879237 (= e!489333 (isEmpty!670 lt!397512))))

(assert (= (and d!108843 c!92739) b!879228))

(assert (= (and d!108843 (not c!92739)) b!879236))

(assert (= (and b!879236 c!92740) b!879233))

(assert (= (and b!879236 (not c!92740)) b!879230))

(assert (= (or b!879233 b!879230) bm!38869))

(assert (= (and d!108843 res!597459) b!879231))

(assert (= (and b!879231 res!597461) b!879229))

(assert (= (and b!879229 res!597460) b!879235))

(assert (= (and b!879229 c!92738) b!879226))

(assert (= (and b!879229 (not c!92738)) b!879232))

(assert (= (and b!879226 res!597462) b!879227))

(assert (= (and b!879232 c!92737) b!879234))

(assert (= (and b!879232 (not c!92737)) b!879237))

(declare-fun b_lambda!12379 () Bool)

(assert (=> (not b_lambda!12379) (not b!879227)))

(assert (=> b!879227 t!24658))

(declare-fun b_and!25207 () Bool)

(assert (= b_and!25205 (and (=> t!24658 result!9527) b_and!25207)))

(declare-fun b_lambda!12381 () Bool)

(assert (=> (not b_lambda!12381) (not b!879233)))

(assert (=> b!879233 t!24658))

(declare-fun b_and!25209 () Bool)

(assert (= b_and!25207 (and (=> t!24658 result!9527) b_and!25209)))

(assert (=> b!879227 m!818891))

(declare-fun m!819077 () Bool)

(assert (=> b!879227 m!819077))

(assert (=> b!879227 m!819045))

(declare-fun m!819079 () Bool)

(assert (=> b!879227 m!819079))

(assert (=> b!879227 m!819077))

(assert (=> b!879227 m!818891))

(declare-fun m!819081 () Bool)

(assert (=> b!879227 m!819081))

(assert (=> b!879227 m!819045))

(assert (=> b!879235 m!819045))

(assert (=> b!879235 m!819045))

(assert (=> b!879235 m!819051))

(declare-fun m!819083 () Bool)

(assert (=> d!108843 m!819083))

(assert (=> d!108843 m!818899))

(assert (=> b!879226 m!819045))

(assert (=> b!879226 m!819045))

(declare-fun m!819085 () Bool)

(assert (=> b!879226 m!819085))

(assert (=> b!879236 m!819045))

(assert (=> b!879236 m!819045))

(assert (=> b!879236 m!819051))

(assert (=> b!879233 m!819077))

(declare-fun m!819087 () Bool)

(assert (=> b!879233 m!819087))

(declare-fun m!819089 () Bool)

(assert (=> b!879233 m!819089))

(assert (=> b!879233 m!818891))

(declare-fun m!819091 () Bool)

(assert (=> b!879233 m!819091))

(assert (=> b!879233 m!819091))

(declare-fun m!819093 () Bool)

(assert (=> b!879233 m!819093))

(assert (=> b!879233 m!819077))

(assert (=> b!879233 m!818891))

(assert (=> b!879233 m!819081))

(assert (=> b!879233 m!819045))

(declare-fun m!819095 () Bool)

(assert (=> b!879231 m!819095))

(declare-fun m!819097 () Bool)

(assert (=> b!879237 m!819097))

(declare-fun m!819099 () Bool)

(assert (=> b!879234 m!819099))

(assert (=> bm!38869 m!819099))

(assert (=> b!879074 d!108843))

(declare-fun d!108845 () Bool)

(declare-fun e!489340 () Bool)

(assert (=> d!108845 e!489340))

(declare-fun res!597463 () Bool)

(assert (=> d!108845 (=> (not res!597463) (not e!489340))))

(declare-fun lt!397521 () ListLongMap!10465)

(assert (=> d!108845 (= res!597463 (contains!4247 lt!397521 (_1!5851 (tuple2!11683 k0!854 v!557))))))

(declare-fun lt!397519 () List!17558)

(assert (=> d!108845 (= lt!397521 (ListLongMap!10466 lt!397519))))

(declare-fun lt!397518 () Unit!29986)

(declare-fun lt!397520 () Unit!29986)

(assert (=> d!108845 (= lt!397518 lt!397520)))

(assert (=> d!108845 (= (getValueByKey!419 lt!397519 (_1!5851 (tuple2!11683 k0!854 v!557))) (Some!424 (_2!5851 (tuple2!11683 k0!854 v!557))))))

(assert (=> d!108845 (= lt!397520 (lemmaContainsTupThenGetReturnValue!235 lt!397519 (_1!5851 (tuple2!11683 k0!854 v!557)) (_2!5851 (tuple2!11683 k0!854 v!557))))))

(assert (=> d!108845 (= lt!397519 (insertStrictlySorted!273 (toList!5248 lt!397429) (_1!5851 (tuple2!11683 k0!854 v!557)) (_2!5851 (tuple2!11683 k0!854 v!557))))))

(assert (=> d!108845 (= (+!2454 lt!397429 (tuple2!11683 k0!854 v!557)) lt!397521)))

(declare-fun b!879238 () Bool)

(declare-fun res!597464 () Bool)

(assert (=> b!879238 (=> (not res!597464) (not e!489340))))

(assert (=> b!879238 (= res!597464 (= (getValueByKey!419 (toList!5248 lt!397521) (_1!5851 (tuple2!11683 k0!854 v!557))) (Some!424 (_2!5851 (tuple2!11683 k0!854 v!557)))))))

(declare-fun b!879239 () Bool)

(assert (=> b!879239 (= e!489340 (contains!4248 (toList!5248 lt!397521) (tuple2!11683 k0!854 v!557)))))

(assert (= (and d!108845 res!597463) b!879238))

(assert (= (and b!879238 res!597464) b!879239))

(declare-fun m!819101 () Bool)

(assert (=> d!108845 m!819101))

(declare-fun m!819103 () Bool)

(assert (=> d!108845 m!819103))

(declare-fun m!819105 () Bool)

(assert (=> d!108845 m!819105))

(declare-fun m!819107 () Bool)

(assert (=> d!108845 m!819107))

(declare-fun m!819109 () Bool)

(assert (=> b!879238 m!819109))

(declare-fun m!819111 () Bool)

(assert (=> b!879239 m!819111))

(assert (=> b!879074 d!108845))

(declare-fun b!879247 () Bool)

(declare-fun e!489346 () Bool)

(assert (=> b!879247 (= e!489346 tp_is_empty!17535)))

(declare-fun mapNonEmpty!27924 () Bool)

(declare-fun mapRes!27924 () Bool)

(declare-fun tp!53565 () Bool)

(declare-fun e!489345 () Bool)

(assert (=> mapNonEmpty!27924 (= mapRes!27924 (and tp!53565 e!489345))))

(declare-fun mapKey!27924 () (_ BitVec 32))

(declare-fun mapRest!27924 () (Array (_ BitVec 32) ValueCell!8328))

(declare-fun mapValue!27924 () ValueCell!8328)

(assert (=> mapNonEmpty!27924 (= mapRest!27918 (store mapRest!27924 mapKey!27924 mapValue!27924))))

(declare-fun condMapEmpty!27924 () Bool)

(declare-fun mapDefault!27924 () ValueCell!8328)

(assert (=> mapNonEmpty!27918 (= condMapEmpty!27924 (= mapRest!27918 ((as const (Array (_ BitVec 32) ValueCell!8328)) mapDefault!27924)))))

(assert (=> mapNonEmpty!27918 (= tp!53556 (and e!489346 mapRes!27924))))

(declare-fun mapIsEmpty!27924 () Bool)

(assert (=> mapIsEmpty!27924 mapRes!27924))

(declare-fun b!879246 () Bool)

(assert (=> b!879246 (= e!489345 tp_is_empty!17535)))

(assert (= (and mapNonEmpty!27918 condMapEmpty!27924) mapIsEmpty!27924))

(assert (= (and mapNonEmpty!27918 (not condMapEmpty!27924)) mapNonEmpty!27924))

(assert (= (and mapNonEmpty!27924 ((_ is ValueCellFull!8328) mapValue!27924)) b!879246))

(assert (= (and mapNonEmpty!27918 ((_ is ValueCellFull!8328) mapDefault!27924)) b!879247))

(declare-fun m!819113 () Bool)

(assert (=> mapNonEmpty!27924 m!819113))

(declare-fun b_lambda!12383 () Bool)

(assert (= b_lambda!12377 (or (and start!74630 b_free!15291) b_lambda!12383)))

(declare-fun b_lambda!12385 () Bool)

(assert (= b_lambda!12379 (or (and start!74630 b_free!15291) b_lambda!12385)))

(declare-fun b_lambda!12387 () Bool)

(assert (= b_lambda!12375 (or (and start!74630 b_free!15291) b_lambda!12387)))

(declare-fun b_lambda!12389 () Bool)

(assert (= b_lambda!12371 (or (and start!74630 b_free!15291) b_lambda!12389)))

(declare-fun b_lambda!12391 () Bool)

(assert (= b_lambda!12381 (or (and start!74630 b_free!15291) b_lambda!12391)))

(declare-fun b_lambda!12393 () Bool)

(assert (= b_lambda!12373 (or (and start!74630 b_free!15291) b_lambda!12393)))

(declare-fun b_lambda!12395 () Bool)

(assert (= b_lambda!12367 (or (and start!74630 b_free!15291) b_lambda!12395)))

(declare-fun b_lambda!12397 () Bool)

(assert (= b_lambda!12369 (or (and start!74630 b_free!15291) b_lambda!12397)))

(check-sat (not bm!38868) (not b_next!15291) (not d!108835) (not d!108837) (not b!879225) (not b!879192) (not b_lambda!12385) (not b_lambda!12395) (not b!879227) (not b!879141) (not bm!38869) (not b_lambda!12387) (not b!879210) (not b!879212) (not b_lambda!12365) (not b!879193) (not b!879226) (not bm!38854) (not b!879181) (not b!879204) (not bm!38867) (not b!879182) (not b!879201) (not d!108817) (not b!879203) (not bm!38857) (not b!879236) (not b!879239) (not b!879190) (not b_lambda!12393) tp_is_empty!17535 (not b_lambda!12389) (not b!879216) (not b!879186) (not b!879142) (not b!879234) (not b!879235) (not b!879206) (not b!879128) (not b!879233) (not b!879122) (not bm!38860) (not b!879198) (not b!879123) (not b!879188) (not b!879194) b_and!25209 (not b!879189) (not b!879143) (not b!879200) (not b!879237) (not b!879231) (not b_lambda!12391) (not d!108843) (not b!879155) (not b!879191) (not bm!38861) (not bm!38862) (not b_lambda!12383) (not d!108845) (not b!879213) (not b!879154) (not b!879205) (not mapNonEmpty!27924) (not b!879202) (not d!108841) (not b_lambda!12397) (not b!879215) (not d!108833) (not b!879214) (not b!879129) (not b!879238))
(check-sat b_and!25209 (not b_next!15291))

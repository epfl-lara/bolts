; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73792 () Bool)

(assert start!73792)

(declare-fun b_free!14679 () Bool)

(declare-fun b_next!14679 () Bool)

(assert (=> start!73792 (= b_free!14679 (not b_next!14679))))

(declare-fun tp!51541 () Bool)

(declare-fun b_and!24355 () Bool)

(assert (=> start!73792 (= tp!51541 b_and!24355)))

(declare-fun b!865075 () Bool)

(declare-fun e!481941 () Bool)

(declare-fun e!481944 () Bool)

(declare-fun mapRes!26822 () Bool)

(assert (=> b!865075 (= e!481941 (and e!481944 mapRes!26822))))

(declare-fun condMapEmpty!26822 () Bool)

(declare-datatypes ((V!27467 0))(
  ( (V!27468 (val!8455 Int)) )
))
(declare-datatypes ((ValueCell!7968 0))(
  ( (ValueCellFull!7968 (v!10876 V!27467)) (EmptyCell!7968) )
))
(declare-datatypes ((array!49774 0))(
  ( (array!49775 (arr!23914 (Array (_ BitVec 32) ValueCell!7968)) (size!24355 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49774)

(declare-fun mapDefault!26822 () ValueCell!7968)

(assert (=> b!865075 (= condMapEmpty!26822 (= (arr!23914 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7968)) mapDefault!26822)))))

(declare-fun b!865076 () Bool)

(declare-fun tp_is_empty!16815 () Bool)

(assert (=> b!865076 (= e!481944 tp_is_empty!16815)))

(declare-fun b!865077 () Bool)

(declare-fun res!587925 () Bool)

(declare-fun e!481943 () Bool)

(assert (=> b!865077 (=> (not res!587925) (not e!481943))))

(declare-datatypes ((array!49776 0))(
  ( (array!49777 (arr!23915 (Array (_ BitVec 32) (_ BitVec 64))) (size!24356 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49776)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49776 (_ BitVec 32)) Bool)

(assert (=> b!865077 (= res!587925 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!865078 () Bool)

(declare-fun e!481939 () Bool)

(declare-fun e!481940 () Bool)

(assert (=> b!865078 (= e!481939 (not e!481940))))

(declare-fun res!587921 () Bool)

(assert (=> b!865078 (=> res!587921 e!481940)))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!865078 (= res!587921 (not (validKeyInArray!0 (select (arr!23915 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11206 0))(
  ( (tuple2!11207 (_1!5613 (_ BitVec 64)) (_2!5613 V!27467)) )
))
(declare-datatypes ((List!17069 0))(
  ( (Nil!17066) (Cons!17065 (h!18196 tuple2!11206) (t!24022 List!17069)) )
))
(declare-datatypes ((ListLongMap!9989 0))(
  ( (ListLongMap!9990 (toList!5010 List!17069)) )
))
(declare-fun lt!391896 () ListLongMap!9989)

(declare-fun lt!391890 () ListLongMap!9989)

(assert (=> b!865078 (= lt!391896 lt!391890)))

(declare-fun lt!391895 () ListLongMap!9989)

(declare-fun lt!391902 () tuple2!11206)

(declare-fun +!2306 (ListLongMap!9989 tuple2!11206) ListLongMap!9989)

(assert (=> b!865078 (= lt!391890 (+!2306 lt!391895 lt!391902))))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun lt!391898 () array!49774)

(declare-fun minValue!654 () V!27467)

(declare-fun zeroValue!654 () V!27467)

(declare-fun getCurrentListMapNoExtraKeys!2980 (array!49776 array!49774 (_ BitVec 32) (_ BitVec 32) V!27467 V!27467 (_ BitVec 32) Int) ListLongMap!9989)

(assert (=> b!865078 (= lt!391896 (getCurrentListMapNoExtraKeys!2980 _keys!868 lt!391898 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun v!557 () V!27467)

(assert (=> b!865078 (= lt!391902 (tuple2!11207 k0!854 v!557))))

(assert (=> b!865078 (= lt!391895 (getCurrentListMapNoExtraKeys!2980 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((Unit!29592 0))(
  ( (Unit!29593) )
))
(declare-fun lt!391893 () Unit!29592)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!546 (array!49776 array!49774 (_ BitVec 32) (_ BitVec 32) V!27467 V!27467 (_ BitVec 32) (_ BitVec 64) V!27467 (_ BitVec 32) Int) Unit!29592)

(assert (=> b!865078 (= lt!391893 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!546 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!865079 () Bool)

(declare-fun res!587923 () Bool)

(assert (=> b!865079 (=> (not res!587923) (not e!481943))))

(assert (=> b!865079 (= res!587923 (and (= (select (arr!23915 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!865080 () Bool)

(declare-fun res!587916 () Bool)

(assert (=> b!865080 (=> (not res!587916) (not e!481943))))

(assert (=> b!865080 (= res!587916 (validKeyInArray!0 k0!854))))

(declare-fun b!865081 () Bool)

(declare-fun res!587917 () Bool)

(assert (=> b!865081 (=> (not res!587917) (not e!481943))))

(declare-datatypes ((List!17070 0))(
  ( (Nil!17067) (Cons!17066 (h!18197 (_ BitVec 64)) (t!24023 List!17070)) )
))
(declare-fun arrayNoDuplicates!0 (array!49776 (_ BitVec 32) List!17070) Bool)

(assert (=> b!865081 (= res!587917 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17067))))

(declare-fun b!865082 () Bool)

(declare-fun e!481942 () Unit!29592)

(declare-fun Unit!29594 () Unit!29592)

(assert (=> b!865082 (= e!481942 Unit!29594)))

(declare-fun lt!391892 () Unit!29592)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49776 (_ BitVec 32) (_ BitVec 32)) Unit!29592)

(assert (=> b!865082 (= lt!391892 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!865082 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17067)))

(declare-fun lt!391903 () Unit!29592)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49776 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29592)

(assert (=> b!865082 (= lt!391903 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49776 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!865082 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!391897 () Unit!29592)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49776 (_ BitVec 64) (_ BitVec 32) List!17070) Unit!29592)

(assert (=> b!865082 (= lt!391897 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17067))))

(assert (=> b!865082 false))

(declare-fun b!865083 () Bool)

(declare-fun res!587924 () Bool)

(assert (=> b!865083 (=> (not res!587924) (not e!481943))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!865083 (= res!587924 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!26822 () Bool)

(assert (=> mapIsEmpty!26822 mapRes!26822))

(declare-fun b!865084 () Bool)

(declare-fun e!481947 () Bool)

(assert (=> b!865084 (= e!481947 tp_is_empty!16815)))

(declare-fun b!865085 () Bool)

(declare-fun Unit!29595 () Unit!29592)

(assert (=> b!865085 (= e!481942 Unit!29595)))

(declare-fun mapNonEmpty!26822 () Bool)

(declare-fun tp!51542 () Bool)

(assert (=> mapNonEmpty!26822 (= mapRes!26822 (and tp!51542 e!481947))))

(declare-fun mapRest!26822 () (Array (_ BitVec 32) ValueCell!7968))

(declare-fun mapValue!26822 () ValueCell!7968)

(declare-fun mapKey!26822 () (_ BitVec 32))

(assert (=> mapNonEmpty!26822 (= (arr!23914 _values!688) (store mapRest!26822 mapKey!26822 mapValue!26822))))

(declare-fun b!865087 () Bool)

(declare-fun res!587918 () Bool)

(assert (=> b!865087 (=> (not res!587918) (not e!481943))))

(assert (=> b!865087 (= res!587918 (and (= (size!24355 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24356 _keys!868) (size!24355 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!865088 () Bool)

(declare-fun e!481945 () Bool)

(assert (=> b!865088 (= e!481945 true)))

(declare-fun lt!391899 () ListLongMap!9989)

(declare-fun lt!391904 () tuple2!11206)

(assert (=> b!865088 (= lt!391899 (+!2306 (+!2306 lt!391895 lt!391904) lt!391902))))

(declare-fun lt!391900 () Unit!29592)

(declare-fun lt!391905 () V!27467)

(declare-fun addCommutativeForDiffKeys!513 (ListLongMap!9989 (_ BitVec 64) V!27467 (_ BitVec 64) V!27467) Unit!29592)

(assert (=> b!865088 (= lt!391900 (addCommutativeForDiffKeys!513 lt!391895 k0!854 v!557 (select (arr!23915 _keys!868) from!1053) lt!391905))))

(declare-fun b!865086 () Bool)

(assert (=> b!865086 (= e!481940 e!481945)))

(declare-fun res!587922 () Bool)

(assert (=> b!865086 (=> res!587922 e!481945)))

(assert (=> b!865086 (= res!587922 (= k0!854 (select (arr!23915 _keys!868) from!1053)))))

(assert (=> b!865086 (not (= (select (arr!23915 _keys!868) from!1053) k0!854))))

(declare-fun lt!391901 () Unit!29592)

(assert (=> b!865086 (= lt!391901 e!481942)))

(declare-fun c!92157 () Bool)

(assert (=> b!865086 (= c!92157 (= (select (arr!23915 _keys!868) from!1053) k0!854))))

(declare-fun lt!391894 () ListLongMap!9989)

(assert (=> b!865086 (= lt!391894 lt!391899)))

(assert (=> b!865086 (= lt!391899 (+!2306 lt!391890 lt!391904))))

(assert (=> b!865086 (= lt!391904 (tuple2!11207 (select (arr!23915 _keys!868) from!1053) lt!391905))))

(declare-fun get!12650 (ValueCell!7968 V!27467) V!27467)

(declare-fun dynLambda!1174 (Int (_ BitVec 64)) V!27467)

(assert (=> b!865086 (= lt!391905 (get!12650 (select (arr!23914 _values!688) from!1053) (dynLambda!1174 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun res!587915 () Bool)

(assert (=> start!73792 (=> (not res!587915) (not e!481943))))

(assert (=> start!73792 (= res!587915 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24356 _keys!868))))))

(assert (=> start!73792 e!481943))

(assert (=> start!73792 tp_is_empty!16815))

(assert (=> start!73792 true))

(assert (=> start!73792 tp!51541))

(declare-fun array_inv!18890 (array!49776) Bool)

(assert (=> start!73792 (array_inv!18890 _keys!868)))

(declare-fun array_inv!18891 (array!49774) Bool)

(assert (=> start!73792 (and (array_inv!18891 _values!688) e!481941)))

(declare-fun b!865089 () Bool)

(declare-fun res!587919 () Bool)

(assert (=> b!865089 (=> (not res!587919) (not e!481943))))

(assert (=> b!865089 (= res!587919 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24356 _keys!868))))))

(declare-fun b!865090 () Bool)

(assert (=> b!865090 (= e!481943 e!481939)))

(declare-fun res!587920 () Bool)

(assert (=> b!865090 (=> (not res!587920) (not e!481939))))

(assert (=> b!865090 (= res!587920 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!865090 (= lt!391894 (getCurrentListMapNoExtraKeys!2980 _keys!868 lt!391898 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!865090 (= lt!391898 (array!49775 (store (arr!23914 _values!688) i!612 (ValueCellFull!7968 v!557)) (size!24355 _values!688)))))

(declare-fun lt!391891 () ListLongMap!9989)

(assert (=> b!865090 (= lt!391891 (getCurrentListMapNoExtraKeys!2980 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!73792 res!587915) b!865083))

(assert (= (and b!865083 res!587924) b!865087))

(assert (= (and b!865087 res!587918) b!865077))

(assert (= (and b!865077 res!587925) b!865081))

(assert (= (and b!865081 res!587917) b!865089))

(assert (= (and b!865089 res!587919) b!865080))

(assert (= (and b!865080 res!587916) b!865079))

(assert (= (and b!865079 res!587923) b!865090))

(assert (= (and b!865090 res!587920) b!865078))

(assert (= (and b!865078 (not res!587921)) b!865086))

(assert (= (and b!865086 c!92157) b!865082))

(assert (= (and b!865086 (not c!92157)) b!865085))

(assert (= (and b!865086 (not res!587922)) b!865088))

(assert (= (and b!865075 condMapEmpty!26822) mapIsEmpty!26822))

(assert (= (and b!865075 (not condMapEmpty!26822)) mapNonEmpty!26822))

(get-info :version)

(assert (= (and mapNonEmpty!26822 ((_ is ValueCellFull!7968) mapValue!26822)) b!865084))

(assert (= (and b!865075 ((_ is ValueCellFull!7968) mapDefault!26822)) b!865076))

(assert (= start!73792 b!865075))

(declare-fun b_lambda!12061 () Bool)

(assert (=> (not b_lambda!12061) (not b!865086)))

(declare-fun t!24021 () Bool)

(declare-fun tb!4809 () Bool)

(assert (=> (and start!73792 (= defaultEntry!696 defaultEntry!696) t!24021) tb!4809))

(declare-fun result!9221 () Bool)

(assert (=> tb!4809 (= result!9221 tp_is_empty!16815)))

(assert (=> b!865086 t!24021))

(declare-fun b_and!24357 () Bool)

(assert (= b_and!24355 (and (=> t!24021 result!9221) b_and!24357)))

(declare-fun m!806645 () Bool)

(assert (=> b!865088 m!806645))

(assert (=> b!865088 m!806645))

(declare-fun m!806647 () Bool)

(assert (=> b!865088 m!806647))

(declare-fun m!806649 () Bool)

(assert (=> b!865088 m!806649))

(assert (=> b!865088 m!806649))

(declare-fun m!806651 () Bool)

(assert (=> b!865088 m!806651))

(declare-fun m!806653 () Bool)

(assert (=> b!865083 m!806653))

(declare-fun m!806655 () Bool)

(assert (=> b!865079 m!806655))

(declare-fun m!806657 () Bool)

(assert (=> mapNonEmpty!26822 m!806657))

(declare-fun m!806659 () Bool)

(assert (=> b!865086 m!806659))

(declare-fun m!806661 () Bool)

(assert (=> b!865086 m!806661))

(declare-fun m!806663 () Bool)

(assert (=> b!865086 m!806663))

(declare-fun m!806665 () Bool)

(assert (=> b!865086 m!806665))

(assert (=> b!865086 m!806661))

(assert (=> b!865086 m!806649))

(assert (=> b!865086 m!806663))

(declare-fun m!806667 () Bool)

(assert (=> b!865090 m!806667))

(declare-fun m!806669 () Bool)

(assert (=> b!865090 m!806669))

(declare-fun m!806671 () Bool)

(assert (=> b!865090 m!806671))

(declare-fun m!806673 () Bool)

(assert (=> b!865077 m!806673))

(declare-fun m!806675 () Bool)

(assert (=> b!865080 m!806675))

(declare-fun m!806677 () Bool)

(assert (=> b!865078 m!806677))

(declare-fun m!806679 () Bool)

(assert (=> b!865078 m!806679))

(assert (=> b!865078 m!806649))

(declare-fun m!806681 () Bool)

(assert (=> b!865078 m!806681))

(declare-fun m!806683 () Bool)

(assert (=> b!865078 m!806683))

(assert (=> b!865078 m!806649))

(declare-fun m!806685 () Bool)

(assert (=> b!865078 m!806685))

(declare-fun m!806687 () Bool)

(assert (=> start!73792 m!806687))

(declare-fun m!806689 () Bool)

(assert (=> start!73792 m!806689))

(declare-fun m!806691 () Bool)

(assert (=> b!865081 m!806691))

(declare-fun m!806693 () Bool)

(assert (=> b!865082 m!806693))

(declare-fun m!806695 () Bool)

(assert (=> b!865082 m!806695))

(declare-fun m!806697 () Bool)

(assert (=> b!865082 m!806697))

(declare-fun m!806699 () Bool)

(assert (=> b!865082 m!806699))

(declare-fun m!806701 () Bool)

(assert (=> b!865082 m!806701))

(check-sat (not b!865086) (not b!865082) (not b!865080) (not mapNonEmpty!26822) b_and!24357 (not b!865088) (not b!865090) tp_is_empty!16815 (not b_lambda!12061) (not b!865078) (not b_next!14679) (not start!73792) (not b!865083) (not b!865077) (not b!865081))
(check-sat b_and!24357 (not b_next!14679))

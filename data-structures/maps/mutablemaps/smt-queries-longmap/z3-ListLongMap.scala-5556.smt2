; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73150 () Bool)

(assert start!73150)

(declare-fun b_free!14037 () Bool)

(declare-fun b_next!14037 () Bool)

(assert (=> start!73150 (= b_free!14037 (not b_next!14037))))

(declare-fun tp!49615 () Bool)

(declare-fun b_and!23251 () Bool)

(assert (=> start!73150 (= tp!49615 b_and!23251)))

(declare-datatypes ((V!26611 0))(
  ( (V!26612 (val!8134 Int)) )
))
(declare-datatypes ((tuple2!10678 0))(
  ( (tuple2!10679 (_1!5349 (_ BitVec 64)) (_2!5349 V!26611)) )
))
(declare-datatypes ((List!16570 0))(
  ( (Nil!16567) (Cons!16566 (h!17697 tuple2!10678) (t!23061 List!16570)) )
))
(declare-datatypes ((ListLongMap!9461 0))(
  ( (ListLongMap!9462 (toList!4746 List!16570)) )
))
(declare-fun call!37967 () ListLongMap!9461)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun bm!37963 () Bool)

(declare-datatypes ((array!48534 0))(
  ( (array!48535 (arr!23294 (Array (_ BitVec 32) (_ BitVec 64))) (size!23735 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48534)

(declare-datatypes ((ValueCell!7647 0))(
  ( (ValueCellFull!7647 (v!10555 V!26611)) (EmptyCell!7647) )
))
(declare-datatypes ((array!48536 0))(
  ( (array!48537 (arr!23295 (Array (_ BitVec 32) ValueCell!7647)) (size!23736 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48536)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26611)

(declare-fun zeroValue!654 () V!26611)

(declare-fun getCurrentListMapNoExtraKeys!2732 (array!48534 array!48536 (_ BitVec 32) (_ BitVec 32) V!26611 V!26611 (_ BitVec 32) Int) ListLongMap!9461)

(assert (=> bm!37963 (= call!37967 (getCurrentListMapNoExtraKeys!2732 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850874 () Bool)

(declare-fun res!578096 () Bool)

(declare-fun e!474658 () Bool)

(assert (=> b!850874 (=> (not res!578096) (not e!474658))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!850874 (= res!578096 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23735 _keys!868))))))

(declare-fun mapIsEmpty!25859 () Bool)

(declare-fun mapRes!25859 () Bool)

(assert (=> mapIsEmpty!25859 mapRes!25859))

(declare-fun b!850875 () Bool)

(declare-fun e!474654 () Bool)

(declare-fun e!474653 () Bool)

(assert (=> b!850875 (= e!474654 (not e!474653))))

(declare-fun res!578098 () Bool)

(assert (=> b!850875 (=> res!578098 e!474653)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!850875 (= res!578098 (not (validKeyInArray!0 (select (arr!23294 _keys!868) from!1053))))))

(declare-fun e!474659 () Bool)

(assert (=> b!850875 e!474659))

(declare-fun c!91644 () Bool)

(assert (=> b!850875 (= c!91644 (bvsle (bvadd #b00000000000000000000000000000001 from!1053) i!612))))

(declare-datatypes ((Unit!29024 0))(
  ( (Unit!29025) )
))
(declare-fun lt!383147 () Unit!29024)

(declare-fun v!557 () V!26611)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!358 (array!48534 array!48536 (_ BitVec 32) (_ BitVec 32) V!26611 V!26611 (_ BitVec 32) (_ BitVec 64) V!26611 (_ BitVec 32) Int) Unit!29024)

(assert (=> b!850875 (= lt!383147 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!358 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850876 () Bool)

(assert (=> b!850876 (= e!474653 true)))

(declare-fun lt!383145 () tuple2!10678)

(declare-fun lt!383146 () V!26611)

(declare-fun lt!383139 () ListLongMap!9461)

(declare-fun +!2089 (ListLongMap!9461 tuple2!10678) ListLongMap!9461)

(assert (=> b!850876 (= (+!2089 lt!383139 lt!383145) (+!2089 (+!2089 lt!383139 (tuple2!10679 k0!854 lt!383146)) lt!383145))))

(declare-fun lt!383144 () V!26611)

(assert (=> b!850876 (= lt!383145 (tuple2!10679 k0!854 lt!383144))))

(declare-fun lt!383142 () Unit!29024)

(declare-fun addSameAsAddTwiceSameKeyDiffValues!274 (ListLongMap!9461 (_ BitVec 64) V!26611 V!26611) Unit!29024)

(assert (=> b!850876 (= lt!383142 (addSameAsAddTwiceSameKeyDiffValues!274 lt!383139 k0!854 lt!383146 lt!383144))))

(declare-fun lt!383140 () V!26611)

(declare-fun get!12284 (ValueCell!7647 V!26611) V!26611)

(assert (=> b!850876 (= lt!383146 (get!12284 (select (arr!23295 _values!688) from!1053) lt!383140))))

(declare-fun lt!383141 () ListLongMap!9461)

(assert (=> b!850876 (= lt!383141 (+!2089 lt!383139 (tuple2!10679 (select (arr!23294 _keys!868) from!1053) lt!383144)))))

(assert (=> b!850876 (= lt!383144 (get!12284 (select (store (arr!23295 _values!688) i!612 (ValueCellFull!7647 v!557)) from!1053) lt!383140))))

(declare-fun dynLambda!1022 (Int (_ BitVec 64)) V!26611)

(assert (=> b!850876 (= lt!383140 (dynLambda!1022 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun lt!383148 () array!48536)

(assert (=> b!850876 (= lt!383139 (getCurrentListMapNoExtraKeys!2732 _keys!868 lt!383148 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!850877 () Bool)

(declare-fun res!578099 () Bool)

(assert (=> b!850877 (=> (not res!578099) (not e!474658))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!850877 (= res!578099 (validMask!0 mask!1196))))

(declare-fun b!850878 () Bool)

(declare-fun call!37966 () ListLongMap!9461)

(assert (=> b!850878 (= e!474659 (= call!37966 (+!2089 call!37967 (tuple2!10679 k0!854 v!557))))))

(declare-fun b!850879 () Bool)

(declare-fun res!578097 () Bool)

(assert (=> b!850879 (=> (not res!578097) (not e!474658))))

(assert (=> b!850879 (= res!578097 (validKeyInArray!0 k0!854))))

(declare-fun b!850880 () Bool)

(assert (=> b!850880 (= e!474658 e!474654)))

(declare-fun res!578094 () Bool)

(assert (=> b!850880 (=> (not res!578094) (not e!474654))))

(assert (=> b!850880 (= res!578094 (= from!1053 i!612))))

(assert (=> b!850880 (= lt!383141 (getCurrentListMapNoExtraKeys!2732 _keys!868 lt!383148 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!850880 (= lt!383148 (array!48537 (store (arr!23295 _values!688) i!612 (ValueCellFull!7647 v!557)) (size!23736 _values!688)))))

(declare-fun lt!383143 () ListLongMap!9461)

(assert (=> b!850880 (= lt!383143 (getCurrentListMapNoExtraKeys!2732 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!850881 () Bool)

(declare-fun e!474656 () Bool)

(declare-fun tp_is_empty!16173 () Bool)

(assert (=> b!850881 (= e!474656 tp_is_empty!16173)))

(declare-fun b!850882 () Bool)

(declare-fun res!578095 () Bool)

(assert (=> b!850882 (=> (not res!578095) (not e!474658))))

(declare-datatypes ((List!16571 0))(
  ( (Nil!16568) (Cons!16567 (h!17698 (_ BitVec 64)) (t!23062 List!16571)) )
))
(declare-fun arrayNoDuplicates!0 (array!48534 (_ BitVec 32) List!16571) Bool)

(assert (=> b!850882 (= res!578095 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16568))))

(declare-fun b!850883 () Bool)

(declare-fun res!578093 () Bool)

(assert (=> b!850883 (=> (not res!578093) (not e!474658))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48534 (_ BitVec 32)) Bool)

(assert (=> b!850883 (= res!578093 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25859 () Bool)

(declare-fun tp!49616 () Bool)

(assert (=> mapNonEmpty!25859 (= mapRes!25859 (and tp!49616 e!474656))))

(declare-fun mapRest!25859 () (Array (_ BitVec 32) ValueCell!7647))

(declare-fun mapKey!25859 () (_ BitVec 32))

(declare-fun mapValue!25859 () ValueCell!7647)

(assert (=> mapNonEmpty!25859 (= (arr!23295 _values!688) (store mapRest!25859 mapKey!25859 mapValue!25859))))

(declare-fun b!850884 () Bool)

(declare-fun res!578091 () Bool)

(assert (=> b!850884 (=> (not res!578091) (not e!474658))))

(assert (=> b!850884 (= res!578091 (and (= (select (arr!23294 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun bm!37964 () Bool)

(assert (=> bm!37964 (= call!37966 (getCurrentListMapNoExtraKeys!2732 _keys!868 lt!383148 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!578100 () Bool)

(assert (=> start!73150 (=> (not res!578100) (not e!474658))))

(assert (=> start!73150 (= res!578100 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23735 _keys!868))))))

(assert (=> start!73150 e!474658))

(assert (=> start!73150 tp_is_empty!16173))

(assert (=> start!73150 true))

(assert (=> start!73150 tp!49615))

(declare-fun array_inv!18472 (array!48534) Bool)

(assert (=> start!73150 (array_inv!18472 _keys!868)))

(declare-fun e!474660 () Bool)

(declare-fun array_inv!18473 (array!48536) Bool)

(assert (=> start!73150 (and (array_inv!18473 _values!688) e!474660)))

(declare-fun b!850885 () Bool)

(declare-fun e!474655 () Bool)

(assert (=> b!850885 (= e!474660 (and e!474655 mapRes!25859))))

(declare-fun condMapEmpty!25859 () Bool)

(declare-fun mapDefault!25859 () ValueCell!7647)

(assert (=> b!850885 (= condMapEmpty!25859 (= (arr!23295 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7647)) mapDefault!25859)))))

(declare-fun b!850886 () Bool)

(assert (=> b!850886 (= e!474655 tp_is_empty!16173)))

(declare-fun b!850887 () Bool)

(assert (=> b!850887 (= e!474659 (= call!37966 call!37967))))

(declare-fun b!850888 () Bool)

(declare-fun res!578092 () Bool)

(assert (=> b!850888 (=> (not res!578092) (not e!474658))))

(assert (=> b!850888 (= res!578092 (and (= (size!23736 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23735 _keys!868) (size!23736 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!73150 res!578100) b!850877))

(assert (= (and b!850877 res!578099) b!850888))

(assert (= (and b!850888 res!578092) b!850883))

(assert (= (and b!850883 res!578093) b!850882))

(assert (= (and b!850882 res!578095) b!850874))

(assert (= (and b!850874 res!578096) b!850879))

(assert (= (and b!850879 res!578097) b!850884))

(assert (= (and b!850884 res!578091) b!850880))

(assert (= (and b!850880 res!578094) b!850875))

(assert (= (and b!850875 c!91644) b!850878))

(assert (= (and b!850875 (not c!91644)) b!850887))

(assert (= (or b!850878 b!850887) bm!37964))

(assert (= (or b!850878 b!850887) bm!37963))

(assert (= (and b!850875 (not res!578098)) b!850876))

(assert (= (and b!850885 condMapEmpty!25859) mapIsEmpty!25859))

(assert (= (and b!850885 (not condMapEmpty!25859)) mapNonEmpty!25859))

(get-info :version)

(assert (= (and mapNonEmpty!25859 ((_ is ValueCellFull!7647) mapValue!25859)) b!850881))

(assert (= (and b!850885 ((_ is ValueCellFull!7647) mapDefault!25859)) b!850886))

(assert (= start!73150 b!850885))

(declare-fun b_lambda!11599 () Bool)

(assert (=> (not b_lambda!11599) (not b!850876)))

(declare-fun t!23060 () Bool)

(declare-fun tb!4347 () Bool)

(assert (=> (and start!73150 (= defaultEntry!696 defaultEntry!696) t!23060) tb!4347))

(declare-fun result!8297 () Bool)

(assert (=> tb!4347 (= result!8297 tp_is_empty!16173)))

(assert (=> b!850876 t!23060))

(declare-fun b_and!23253 () Bool)

(assert (= b_and!23251 (and (=> t!23060 result!8297) b_and!23253)))

(declare-fun m!791831 () Bool)

(assert (=> b!850879 m!791831))

(declare-fun m!791833 () Bool)

(assert (=> bm!37963 m!791833))

(declare-fun m!791835 () Bool)

(assert (=> b!850880 m!791835))

(declare-fun m!791837 () Bool)

(assert (=> b!850880 m!791837))

(declare-fun m!791839 () Bool)

(assert (=> b!850880 m!791839))

(declare-fun m!791841 () Bool)

(assert (=> b!850882 m!791841))

(declare-fun m!791843 () Bool)

(assert (=> b!850877 m!791843))

(declare-fun m!791845 () Bool)

(assert (=> b!850883 m!791845))

(declare-fun m!791847 () Bool)

(assert (=> start!73150 m!791847))

(declare-fun m!791849 () Bool)

(assert (=> start!73150 m!791849))

(declare-fun m!791851 () Bool)

(assert (=> b!850878 m!791851))

(declare-fun m!791853 () Bool)

(assert (=> b!850875 m!791853))

(assert (=> b!850875 m!791853))

(declare-fun m!791855 () Bool)

(assert (=> b!850875 m!791855))

(declare-fun m!791857 () Bool)

(assert (=> b!850875 m!791857))

(declare-fun m!791859 () Bool)

(assert (=> b!850884 m!791859))

(declare-fun m!791861 () Bool)

(assert (=> bm!37964 m!791861))

(declare-fun m!791863 () Bool)

(assert (=> mapNonEmpty!25859 m!791863))

(declare-fun m!791865 () Bool)

(assert (=> b!850876 m!791865))

(declare-fun m!791867 () Bool)

(assert (=> b!850876 m!791867))

(assert (=> b!850876 m!791867))

(declare-fun m!791869 () Bool)

(assert (=> b!850876 m!791869))

(declare-fun m!791871 () Bool)

(assert (=> b!850876 m!791871))

(declare-fun m!791873 () Bool)

(assert (=> b!850876 m!791873))

(declare-fun m!791875 () Bool)

(assert (=> b!850876 m!791875))

(assert (=> b!850876 m!791837))

(declare-fun m!791877 () Bool)

(assert (=> b!850876 m!791877))

(assert (=> b!850876 m!791861))

(assert (=> b!850876 m!791853))

(declare-fun m!791879 () Bool)

(assert (=> b!850876 m!791879))

(assert (=> b!850876 m!791875))

(declare-fun m!791881 () Bool)

(assert (=> b!850876 m!791881))

(declare-fun m!791883 () Bool)

(assert (=> b!850876 m!791883))

(assert (=> b!850876 m!791871))

(check-sat (not b!850883) (not b!850878) tp_is_empty!16173 (not b_lambda!11599) (not start!73150) (not b!850879) (not b_next!14037) (not b!850877) (not b!850880) (not bm!37963) (not b!850882) (not bm!37964) (not b!850875) (not mapNonEmpty!25859) (not b!850876) b_and!23253)
(check-sat b_and!23253 (not b_next!14037))

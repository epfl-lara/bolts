; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73624 () Bool)

(assert start!73624)

(declare-fun b_free!14511 () Bool)

(declare-fun b_next!14511 () Bool)

(assert (=> start!73624 (= b_free!14511 (not b_next!14511))))

(declare-fun tp!51038 () Bool)

(declare-fun b_and!24019 () Bool)

(assert (=> start!73624 (= tp!51038 b_and!24019)))

(declare-fun b!860942 () Bool)

(declare-fun e!479739 () Bool)

(declare-fun e!479743 () Bool)

(declare-fun mapRes!26570 () Bool)

(assert (=> b!860942 (= e!479739 (and e!479743 mapRes!26570))))

(declare-fun condMapEmpty!26570 () Bool)

(declare-datatypes ((V!27243 0))(
  ( (V!27244 (val!8371 Int)) )
))
(declare-datatypes ((ValueCell!7884 0))(
  ( (ValueCellFull!7884 (v!10792 V!27243)) (EmptyCell!7884) )
))
(declare-datatypes ((array!49442 0))(
  ( (array!49443 (arr!23748 (Array (_ BitVec 32) ValueCell!7884)) (size!24189 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49442)

(declare-fun mapDefault!26570 () ValueCell!7884)

(assert (=> b!860942 (= condMapEmpty!26570 (= (arr!23748 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7884)) mapDefault!26570)))))

(declare-fun mapNonEmpty!26570 () Bool)

(declare-fun tp!51037 () Bool)

(declare-fun e!479738 () Bool)

(assert (=> mapNonEmpty!26570 (= mapRes!26570 (and tp!51037 e!479738))))

(declare-fun mapRest!26570 () (Array (_ BitVec 32) ValueCell!7884))

(declare-fun mapValue!26570 () ValueCell!7884)

(declare-fun mapKey!26570 () (_ BitVec 32))

(assert (=> mapNonEmpty!26570 (= (arr!23748 _values!688) (store mapRest!26570 mapKey!26570 mapValue!26570))))

(declare-fun b!860943 () Bool)

(declare-fun res!585214 () Bool)

(declare-fun e!479744 () Bool)

(assert (=> b!860943 (=> (not res!585214) (not e!479744))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!860943 (= res!585214 (validMask!0 mask!1196))))

(declare-fun b!860944 () Bool)

(declare-fun e!479740 () Bool)

(assert (=> b!860944 (= e!479740 true)))

(declare-datatypes ((array!49444 0))(
  ( (array!49445 (arr!23749 (Array (_ BitVec 32) (_ BitVec 64))) (size!24190 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49444)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!860944 (not (= (select (arr!23749 _keys!868) from!1053) k0!854))))

(declare-datatypes ((Unit!29318 0))(
  ( (Unit!29319) )
))
(declare-fun lt!388198 () Unit!29318)

(declare-fun e!479741 () Unit!29318)

(assert (=> b!860944 (= lt!388198 e!479741)))

(declare-fun c!91905 () Bool)

(assert (=> b!860944 (= c!91905 (= (select (arr!23749 _keys!868) from!1053) k0!854))))

(declare-datatypes ((tuple2!11052 0))(
  ( (tuple2!11053 (_1!5536 (_ BitVec 64)) (_2!5536 V!27243)) )
))
(declare-datatypes ((List!16923 0))(
  ( (Nil!16920) (Cons!16919 (h!18050 tuple2!11052) (t!23708 List!16923)) )
))
(declare-datatypes ((ListLongMap!9835 0))(
  ( (ListLongMap!9836 (toList!4933 List!16923)) )
))
(declare-fun lt!388195 () ListLongMap!9835)

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!388197 () ListLongMap!9835)

(declare-fun +!2234 (ListLongMap!9835 tuple2!11052) ListLongMap!9835)

(declare-fun get!12537 (ValueCell!7884 V!27243) V!27243)

(declare-fun dynLambda!1117 (Int (_ BitVec 64)) V!27243)

(assert (=> b!860944 (= lt!388195 (+!2234 lt!388197 (tuple2!11053 (select (arr!23749 _keys!868) from!1053) (get!12537 (select (arr!23748 _values!688) from!1053) (dynLambda!1117 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!860945 () Bool)

(declare-fun Unit!29320 () Unit!29318)

(assert (=> b!860945 (= e!479741 Unit!29320)))

(declare-fun b!860946 () Bool)

(declare-fun tp_is_empty!16647 () Bool)

(assert (=> b!860946 (= e!479743 tp_is_empty!16647)))

(declare-fun res!585213 () Bool)

(assert (=> start!73624 (=> (not res!585213) (not e!479744))))

(assert (=> start!73624 (= res!585213 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24190 _keys!868))))))

(assert (=> start!73624 e!479744))

(assert (=> start!73624 tp_is_empty!16647))

(assert (=> start!73624 true))

(assert (=> start!73624 tp!51038))

(declare-fun array_inv!18770 (array!49444) Bool)

(assert (=> start!73624 (array_inv!18770 _keys!868)))

(declare-fun array_inv!18771 (array!49442) Bool)

(assert (=> start!73624 (and (array_inv!18771 _values!688) e!479739)))

(declare-fun b!860947 () Bool)

(declare-fun res!585210 () Bool)

(assert (=> b!860947 (=> (not res!585210) (not e!479744))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!860947 (= res!585210 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24190 _keys!868))))))

(declare-fun b!860948 () Bool)

(declare-fun res!585217 () Bool)

(assert (=> b!860948 (=> (not res!585217) (not e!479744))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!860948 (= res!585217 (and (= (size!24189 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24190 _keys!868) (size!24189 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!860949 () Bool)

(declare-fun Unit!29321 () Unit!29318)

(assert (=> b!860949 (= e!479741 Unit!29321)))

(declare-fun lt!388202 () Unit!29318)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49444 (_ BitVec 32) (_ BitVec 32)) Unit!29318)

(assert (=> b!860949 (= lt!388202 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16924 0))(
  ( (Nil!16921) (Cons!16920 (h!18051 (_ BitVec 64)) (t!23709 List!16924)) )
))
(declare-fun arrayNoDuplicates!0 (array!49444 (_ BitVec 32) List!16924) Bool)

(assert (=> b!860949 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16921)))

(declare-fun lt!388196 () Unit!29318)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49444 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29318)

(assert (=> b!860949 (= lt!388196 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49444 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!860949 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!388193 () Unit!29318)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49444 (_ BitVec 64) (_ BitVec 32) List!16924) Unit!29318)

(assert (=> b!860949 (= lt!388193 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16921))))

(assert (=> b!860949 false))

(declare-fun b!860950 () Bool)

(declare-fun res!585219 () Bool)

(assert (=> b!860950 (=> (not res!585219) (not e!479744))))

(assert (=> b!860950 (= res!585219 (and (= (select (arr!23749 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!860951 () Bool)

(assert (=> b!860951 (= e!479738 tp_is_empty!16647)))

(declare-fun b!860952 () Bool)

(declare-fun res!585212 () Bool)

(assert (=> b!860952 (=> (not res!585212) (not e!479744))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49444 (_ BitVec 32)) Bool)

(assert (=> b!860952 (= res!585212 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!860953 () Bool)

(declare-fun res!585218 () Bool)

(assert (=> b!860953 (=> (not res!585218) (not e!479744))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!860953 (= res!585218 (validKeyInArray!0 k0!854))))

(declare-fun mapIsEmpty!26570 () Bool)

(assert (=> mapIsEmpty!26570 mapRes!26570))

(declare-fun b!860954 () Bool)

(declare-fun e!479745 () Bool)

(assert (=> b!860954 (= e!479744 e!479745)))

(declare-fun res!585216 () Bool)

(assert (=> b!860954 (=> (not res!585216) (not e!479745))))

(assert (=> b!860954 (= res!585216 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun minValue!654 () V!27243)

(declare-fun zeroValue!654 () V!27243)

(declare-fun lt!388201 () array!49442)

(declare-fun getCurrentListMapNoExtraKeys!2913 (array!49444 array!49442 (_ BitVec 32) (_ BitVec 32) V!27243 V!27243 (_ BitVec 32) Int) ListLongMap!9835)

(assert (=> b!860954 (= lt!388195 (getCurrentListMapNoExtraKeys!2913 _keys!868 lt!388201 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27243)

(assert (=> b!860954 (= lt!388201 (array!49443 (store (arr!23748 _values!688) i!612 (ValueCellFull!7884 v!557)) (size!24189 _values!688)))))

(declare-fun lt!388200 () ListLongMap!9835)

(assert (=> b!860954 (= lt!388200 (getCurrentListMapNoExtraKeys!2913 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!860955 () Bool)

(declare-fun res!585215 () Bool)

(assert (=> b!860955 (=> (not res!585215) (not e!479744))))

(assert (=> b!860955 (= res!585215 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16921))))

(declare-fun b!860956 () Bool)

(assert (=> b!860956 (= e!479745 (not e!479740))))

(declare-fun res!585211 () Bool)

(assert (=> b!860956 (=> res!585211 e!479740)))

(assert (=> b!860956 (= res!585211 (not (validKeyInArray!0 (select (arr!23749 _keys!868) from!1053))))))

(declare-fun lt!388194 () ListLongMap!9835)

(assert (=> b!860956 (= lt!388194 lt!388197)))

(declare-fun lt!388199 () ListLongMap!9835)

(assert (=> b!860956 (= lt!388197 (+!2234 lt!388199 (tuple2!11053 k0!854 v!557)))))

(assert (=> b!860956 (= lt!388194 (getCurrentListMapNoExtraKeys!2913 _keys!868 lt!388201 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!860956 (= lt!388199 (getCurrentListMapNoExtraKeys!2913 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!388203 () Unit!29318)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!487 (array!49444 array!49442 (_ BitVec 32) (_ BitVec 32) V!27243 V!27243 (_ BitVec 32) (_ BitVec 64) V!27243 (_ BitVec 32) Int) Unit!29318)

(assert (=> b!860956 (= lt!388203 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!487 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (= (and start!73624 res!585213) b!860943))

(assert (= (and b!860943 res!585214) b!860948))

(assert (= (and b!860948 res!585217) b!860952))

(assert (= (and b!860952 res!585212) b!860955))

(assert (= (and b!860955 res!585215) b!860947))

(assert (= (and b!860947 res!585210) b!860953))

(assert (= (and b!860953 res!585218) b!860950))

(assert (= (and b!860950 res!585219) b!860954))

(assert (= (and b!860954 res!585216) b!860956))

(assert (= (and b!860956 (not res!585211)) b!860944))

(assert (= (and b!860944 c!91905) b!860949))

(assert (= (and b!860944 (not c!91905)) b!860945))

(assert (= (and b!860942 condMapEmpty!26570) mapIsEmpty!26570))

(assert (= (and b!860942 (not condMapEmpty!26570)) mapNonEmpty!26570))

(get-info :version)

(assert (= (and mapNonEmpty!26570 ((_ is ValueCellFull!7884) mapValue!26570)) b!860951))

(assert (= (and b!860942 ((_ is ValueCellFull!7884) mapDefault!26570)) b!860946))

(assert (= start!73624 b!860942))

(declare-fun b_lambda!11893 () Bool)

(assert (=> (not b_lambda!11893) (not b!860944)))

(declare-fun t!23707 () Bool)

(declare-fun tb!4641 () Bool)

(assert (=> (and start!73624 (= defaultEntry!696 defaultEntry!696) t!23707) tb!4641))

(declare-fun result!8885 () Bool)

(assert (=> tb!4641 (= result!8885 tp_is_empty!16647)))

(assert (=> b!860944 t!23707))

(declare-fun b_and!24021 () Bool)

(assert (= b_and!24019 (and (=> t!23707 result!8885) b_and!24021)))

(declare-fun m!801911 () Bool)

(assert (=> b!860944 m!801911))

(declare-fun m!801913 () Bool)

(assert (=> b!860944 m!801913))

(declare-fun m!801915 () Bool)

(assert (=> b!860944 m!801915))

(assert (=> b!860944 m!801911))

(declare-fun m!801917 () Bool)

(assert (=> b!860944 m!801917))

(declare-fun m!801919 () Bool)

(assert (=> b!860944 m!801919))

(assert (=> b!860944 m!801913))

(declare-fun m!801921 () Bool)

(assert (=> b!860952 m!801921))

(declare-fun m!801923 () Bool)

(assert (=> b!860955 m!801923))

(declare-fun m!801925 () Bool)

(assert (=> b!860949 m!801925))

(declare-fun m!801927 () Bool)

(assert (=> b!860949 m!801927))

(declare-fun m!801929 () Bool)

(assert (=> b!860949 m!801929))

(declare-fun m!801931 () Bool)

(assert (=> b!860949 m!801931))

(declare-fun m!801933 () Bool)

(assert (=> b!860949 m!801933))

(declare-fun m!801935 () Bool)

(assert (=> b!860956 m!801935))

(declare-fun m!801937 () Bool)

(assert (=> b!860956 m!801937))

(assert (=> b!860956 m!801919))

(declare-fun m!801939 () Bool)

(assert (=> b!860956 m!801939))

(assert (=> b!860956 m!801919))

(declare-fun m!801941 () Bool)

(assert (=> b!860956 m!801941))

(declare-fun m!801943 () Bool)

(assert (=> b!860956 m!801943))

(declare-fun m!801945 () Bool)

(assert (=> start!73624 m!801945))

(declare-fun m!801947 () Bool)

(assert (=> start!73624 m!801947))

(declare-fun m!801949 () Bool)

(assert (=> b!860954 m!801949))

(declare-fun m!801951 () Bool)

(assert (=> b!860954 m!801951))

(declare-fun m!801953 () Bool)

(assert (=> b!860954 m!801953))

(declare-fun m!801955 () Bool)

(assert (=> b!860953 m!801955))

(declare-fun m!801957 () Bool)

(assert (=> b!860950 m!801957))

(declare-fun m!801959 () Bool)

(assert (=> mapNonEmpty!26570 m!801959))

(declare-fun m!801961 () Bool)

(assert (=> b!860943 m!801961))

(check-sat b_and!24021 (not b_next!14511) (not b!860956) (not b!860953) (not b!860944) (not mapNonEmpty!26570) (not b!860943) (not b!860952) tp_is_empty!16647 (not b_lambda!11893) (not start!73624) (not b!860955) (not b!860954) (not b!860949))
(check-sat b_and!24021 (not b_next!14511))

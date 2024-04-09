; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73558 () Bool)

(assert start!73558)

(declare-fun b_free!14445 () Bool)

(declare-fun b_next!14445 () Bool)

(assert (=> start!73558 (= b_free!14445 (not b_next!14445))))

(declare-fun tp!50840 () Bool)

(declare-fun b_and!23887 () Bool)

(assert (=> start!73558 (= tp!50840 b_and!23887)))

(declare-fun b!859239 () Bool)

(declare-fun res!583917 () Bool)

(declare-fun e!478874 () Bool)

(assert (=> b!859239 (=> (not res!583917) (not e!478874))))

(declare-datatypes ((array!49320 0))(
  ( (array!49321 (arr!23687 (Array (_ BitVec 32) (_ BitVec 64))) (size!24128 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49320)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49320 (_ BitVec 32)) Bool)

(assert (=> b!859239 (= res!583917 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26471 () Bool)

(declare-fun mapRes!26471 () Bool)

(declare-fun tp!50839 () Bool)

(declare-fun e!478873 () Bool)

(assert (=> mapNonEmpty!26471 (= mapRes!26471 (and tp!50839 e!478873))))

(declare-fun mapKey!26471 () (_ BitVec 32))

(declare-datatypes ((V!27155 0))(
  ( (V!27156 (val!8338 Int)) )
))
(declare-datatypes ((ValueCell!7851 0))(
  ( (ValueCellFull!7851 (v!10759 V!27155)) (EmptyCell!7851) )
))
(declare-fun mapValue!26471 () ValueCell!7851)

(declare-fun mapRest!26471 () (Array (_ BitVec 32) ValueCell!7851))

(declare-datatypes ((array!49322 0))(
  ( (array!49323 (arr!23688 (Array (_ BitVec 32) ValueCell!7851)) (size!24129 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49322)

(assert (=> mapNonEmpty!26471 (= (arr!23688 _values!688) (store mapRest!26471 mapKey!26471 mapValue!26471))))

(declare-fun b!859240 () Bool)

(declare-fun e!478870 () Bool)

(declare-fun e!478877 () Bool)

(assert (=> b!859240 (= e!478870 (and e!478877 mapRes!26471))))

(declare-fun condMapEmpty!26471 () Bool)

(declare-fun mapDefault!26471 () ValueCell!7851)

(assert (=> b!859240 (= condMapEmpty!26471 (= (arr!23688 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7851)) mapDefault!26471)))))

(declare-fun res!583928 () Bool)

(assert (=> start!73558 (=> (not res!583928) (not e!478874))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73558 (= res!583928 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24128 _keys!868))))))

(assert (=> start!73558 e!478874))

(declare-fun tp_is_empty!16581 () Bool)

(assert (=> start!73558 tp_is_empty!16581))

(assert (=> start!73558 true))

(assert (=> start!73558 tp!50840))

(declare-fun array_inv!18736 (array!49320) Bool)

(assert (=> start!73558 (array_inv!18736 _keys!868)))

(declare-fun array_inv!18737 (array!49322) Bool)

(assert (=> start!73558 (and (array_inv!18737 _values!688) e!478870)))

(declare-fun mapIsEmpty!26471 () Bool)

(assert (=> mapIsEmpty!26471 mapRes!26471))

(declare-fun b!859241 () Bool)

(declare-fun res!583924 () Bool)

(assert (=> b!859241 (=> (not res!583924) (not e!478874))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!859241 (= res!583924 (and (= (size!24129 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24128 _keys!868) (size!24129 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!859242 () Bool)

(declare-fun res!583927 () Bool)

(declare-fun e!478876 () Bool)

(assert (=> b!859242 (=> res!583927 e!478876)))

(declare-datatypes ((List!16872 0))(
  ( (Nil!16869) (Cons!16868 (h!17999 (_ BitVec 64)) (t!23591 List!16872)) )
))
(declare-fun contains!4218 (List!16872 (_ BitVec 64)) Bool)

(assert (=> b!859242 (= res!583927 (contains!4218 Nil!16869 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859243 () Bool)

(declare-fun res!583916 () Bool)

(assert (=> b!859243 (=> (not res!583916) (not e!478874))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!859243 (= res!583916 (validKeyInArray!0 k0!854))))

(declare-fun b!859244 () Bool)

(declare-fun res!583918 () Bool)

(assert (=> b!859244 (=> (not res!583918) (not e!478874))))

(declare-fun arrayNoDuplicates!0 (array!49320 (_ BitVec 32) List!16872) Bool)

(assert (=> b!859244 (= res!583918 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16869))))

(declare-fun b!859245 () Bool)

(assert (=> b!859245 (= e!478876 true)))

(declare-fun lt!387186 () Bool)

(assert (=> b!859245 (= lt!387186 (contains!4218 Nil!16869 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!859246 () Bool)

(declare-fun e!478872 () Bool)

(assert (=> b!859246 (= e!478872 e!478876)))

(declare-fun res!583925 () Bool)

(assert (=> b!859246 (=> res!583925 e!478876)))

(assert (=> b!859246 (= res!583925 (or (bvsge (size!24128 _keys!868) #b01111111111111111111111111111111) (bvsge (bvadd #b00000000000000000000000000000001 from!1053) (size!24128 _keys!868)) (bvsge from!1053 (size!24128 _keys!868))))))

(declare-fun arrayContainsKey!0 (array!49320 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!859246 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-datatypes ((Unit!29264 0))(
  ( (Unit!29265) )
))
(declare-fun lt!387189 () Unit!29264)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49320 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29264)

(assert (=> b!859246 (= lt!387189 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(assert (=> b!859246 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16869)))

(declare-fun lt!387187 () Unit!29264)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49320 (_ BitVec 32) (_ BitVec 32)) Unit!29264)

(assert (=> b!859246 (= lt!387187 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-fun b!859247 () Bool)

(declare-fun res!583920 () Bool)

(assert (=> b!859247 (=> res!583920 e!478876)))

(declare-fun noDuplicate!1300 (List!16872) Bool)

(assert (=> b!859247 (= res!583920 (not (noDuplicate!1300 Nil!16869)))))

(declare-fun b!859248 () Bool)

(declare-fun e!478871 () Bool)

(assert (=> b!859248 (= e!478871 e!478872)))

(declare-fun res!583921 () Bool)

(assert (=> b!859248 (=> res!583921 e!478872)))

(assert (=> b!859248 (= res!583921 (not (= (select (arr!23687 _keys!868) from!1053) k0!854)))))

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!11000 0))(
  ( (tuple2!11001 (_1!5510 (_ BitVec 64)) (_2!5510 V!27155)) )
))
(declare-datatypes ((List!16873 0))(
  ( (Nil!16870) (Cons!16869 (h!18000 tuple2!11000) (t!23592 List!16873)) )
))
(declare-datatypes ((ListLongMap!9783 0))(
  ( (ListLongMap!9784 (toList!4907 List!16873)) )
))
(declare-fun lt!387188 () ListLongMap!9783)

(declare-fun lt!387182 () ListLongMap!9783)

(declare-fun +!2210 (ListLongMap!9783 tuple2!11000) ListLongMap!9783)

(declare-fun get!12495 (ValueCell!7851 V!27155) V!27155)

(declare-fun dynLambda!1097 (Int (_ BitVec 64)) V!27155)

(assert (=> b!859248 (= lt!387182 (+!2210 lt!387188 (tuple2!11001 (select (arr!23687 _keys!868) from!1053) (get!12495 (select (arr!23688 _values!688) from!1053) (dynLambda!1097 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!859249 () Bool)

(declare-fun res!583919 () Bool)

(assert (=> b!859249 (=> (not res!583919) (not e!478874))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!859249 (= res!583919 (validMask!0 mask!1196))))

(declare-fun b!859250 () Bool)

(declare-fun res!583929 () Bool)

(assert (=> b!859250 (=> (not res!583929) (not e!478874))))

(assert (=> b!859250 (= res!583929 (and (= (select (arr!23687 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!859251 () Bool)

(assert (=> b!859251 (= e!478877 tp_is_empty!16581)))

(declare-fun b!859252 () Bool)

(declare-fun e!478878 () Bool)

(assert (=> b!859252 (= e!478874 e!478878)))

(declare-fun res!583926 () Bool)

(assert (=> b!859252 (=> (not res!583926) (not e!478878))))

(assert (=> b!859252 (= res!583926 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!387181 () array!49322)

(declare-fun minValue!654 () V!27155)

(declare-fun zeroValue!654 () V!27155)

(declare-fun getCurrentListMapNoExtraKeys!2887 (array!49320 array!49322 (_ BitVec 32) (_ BitVec 32) V!27155 V!27155 (_ BitVec 32) Int) ListLongMap!9783)

(assert (=> b!859252 (= lt!387182 (getCurrentListMapNoExtraKeys!2887 _keys!868 lt!387181 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27155)

(assert (=> b!859252 (= lt!387181 (array!49323 (store (arr!23688 _values!688) i!612 (ValueCellFull!7851 v!557)) (size!24129 _values!688)))))

(declare-fun lt!387183 () ListLongMap!9783)

(assert (=> b!859252 (= lt!387183 (getCurrentListMapNoExtraKeys!2887 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!859253 () Bool)

(assert (=> b!859253 (= e!478878 (not e!478871))))

(declare-fun res!583923 () Bool)

(assert (=> b!859253 (=> res!583923 e!478871)))

(assert (=> b!859253 (= res!583923 (not (validKeyInArray!0 (select (arr!23687 _keys!868) from!1053))))))

(declare-fun lt!387185 () ListLongMap!9783)

(assert (=> b!859253 (= lt!387185 lt!387188)))

(declare-fun lt!387184 () ListLongMap!9783)

(assert (=> b!859253 (= lt!387188 (+!2210 lt!387184 (tuple2!11001 k0!854 v!557)))))

(assert (=> b!859253 (= lt!387185 (getCurrentListMapNoExtraKeys!2887 _keys!868 lt!387181 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!859253 (= lt!387184 (getCurrentListMapNoExtraKeys!2887 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!387180 () Unit!29264)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!467 (array!49320 array!49322 (_ BitVec 32) (_ BitVec 32) V!27155 V!27155 (_ BitVec 32) (_ BitVec 64) V!27155 (_ BitVec 32) Int) Unit!29264)

(assert (=> b!859253 (= lt!387180 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!467 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!859254 () Bool)

(assert (=> b!859254 (= e!478873 tp_is_empty!16581)))

(declare-fun b!859255 () Bool)

(declare-fun res!583922 () Bool)

(assert (=> b!859255 (=> (not res!583922) (not e!478874))))

(assert (=> b!859255 (= res!583922 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24128 _keys!868))))))

(assert (= (and start!73558 res!583928) b!859249))

(assert (= (and b!859249 res!583919) b!859241))

(assert (= (and b!859241 res!583924) b!859239))

(assert (= (and b!859239 res!583917) b!859244))

(assert (= (and b!859244 res!583918) b!859255))

(assert (= (and b!859255 res!583922) b!859243))

(assert (= (and b!859243 res!583916) b!859250))

(assert (= (and b!859250 res!583929) b!859252))

(assert (= (and b!859252 res!583926) b!859253))

(assert (= (and b!859253 (not res!583923)) b!859248))

(assert (= (and b!859248 (not res!583921)) b!859246))

(assert (= (and b!859246 (not res!583925)) b!859247))

(assert (= (and b!859247 (not res!583920)) b!859242))

(assert (= (and b!859242 (not res!583927)) b!859245))

(assert (= (and b!859240 condMapEmpty!26471) mapIsEmpty!26471))

(assert (= (and b!859240 (not condMapEmpty!26471)) mapNonEmpty!26471))

(get-info :version)

(assert (= (and mapNonEmpty!26471 ((_ is ValueCellFull!7851) mapValue!26471)) b!859254))

(assert (= (and b!859240 ((_ is ValueCellFull!7851) mapDefault!26471)) b!859251))

(assert (= start!73558 b!859240))

(declare-fun b_lambda!11827 () Bool)

(assert (=> (not b_lambda!11827) (not b!859248)))

(declare-fun t!23590 () Bool)

(declare-fun tb!4575 () Bool)

(assert (=> (and start!73558 (= defaultEntry!696 defaultEntry!696) t!23590) tb!4575))

(declare-fun result!8753 () Bool)

(assert (=> tb!4575 (= result!8753 tp_is_empty!16581)))

(assert (=> b!859248 t!23590))

(declare-fun b_and!23889 () Bool)

(assert (= b_and!23887 (and (=> t!23590 result!8753) b_and!23889)))

(declare-fun m!800091 () Bool)

(assert (=> b!859250 m!800091))

(declare-fun m!800093 () Bool)

(assert (=> b!859249 m!800093))

(declare-fun m!800095 () Bool)

(assert (=> b!859253 m!800095))

(declare-fun m!800097 () Bool)

(assert (=> b!859253 m!800097))

(declare-fun m!800099 () Bool)

(assert (=> b!859253 m!800099))

(declare-fun m!800101 () Bool)

(assert (=> b!859253 m!800101))

(assert (=> b!859253 m!800099))

(declare-fun m!800103 () Bool)

(assert (=> b!859253 m!800103))

(declare-fun m!800105 () Bool)

(assert (=> b!859253 m!800105))

(declare-fun m!800107 () Bool)

(assert (=> b!859244 m!800107))

(declare-fun m!800109 () Bool)

(assert (=> b!859248 m!800109))

(declare-fun m!800111 () Bool)

(assert (=> b!859248 m!800111))

(declare-fun m!800113 () Bool)

(assert (=> b!859248 m!800113))

(declare-fun m!800115 () Bool)

(assert (=> b!859248 m!800115))

(assert (=> b!859248 m!800111))

(assert (=> b!859248 m!800099))

(assert (=> b!859248 m!800113))

(declare-fun m!800117 () Bool)

(assert (=> b!859246 m!800117))

(declare-fun m!800119 () Bool)

(assert (=> b!859246 m!800119))

(declare-fun m!800121 () Bool)

(assert (=> b!859246 m!800121))

(declare-fun m!800123 () Bool)

(assert (=> b!859246 m!800123))

(declare-fun m!800125 () Bool)

(assert (=> b!859252 m!800125))

(declare-fun m!800127 () Bool)

(assert (=> b!859252 m!800127))

(declare-fun m!800129 () Bool)

(assert (=> b!859252 m!800129))

(declare-fun m!800131 () Bool)

(assert (=> b!859245 m!800131))

(declare-fun m!800133 () Bool)

(assert (=> b!859239 m!800133))

(declare-fun m!800135 () Bool)

(assert (=> b!859243 m!800135))

(declare-fun m!800137 () Bool)

(assert (=> b!859247 m!800137))

(declare-fun m!800139 () Bool)

(assert (=> start!73558 m!800139))

(declare-fun m!800141 () Bool)

(assert (=> start!73558 m!800141))

(declare-fun m!800143 () Bool)

(assert (=> b!859242 m!800143))

(declare-fun m!800145 () Bool)

(assert (=> mapNonEmpty!26471 m!800145))

(check-sat tp_is_empty!16581 (not b!859242) (not b!859246) (not b!859253) b_and!23889 (not b!859244) (not b!859239) (not b_next!14445) (not start!73558) (not mapNonEmpty!26471) (not b!859249) (not b_lambda!11827) (not b!859245) (not b!859247) (not b!859252) (not b!859243) (not b!859248))
(check-sat b_and!23889 (not b_next!14445))

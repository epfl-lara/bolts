; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73672 () Bool)

(assert start!73672)

(declare-fun b_free!14559 () Bool)

(declare-fun b_next!14559 () Bool)

(assert (=> start!73672 (= b_free!14559 (not b_next!14559))))

(declare-fun tp!51182 () Bool)

(declare-fun b_and!24115 () Bool)

(assert (=> start!73672 (= tp!51182 b_and!24115)))

(declare-fun b!862076 () Bool)

(declare-fun res!585936 () Bool)

(declare-fun e!480321 () Bool)

(assert (=> b!862076 (=> (not res!585936) (not e!480321))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!49536 0))(
  ( (array!49537 (arr!23795 (Array (_ BitVec 32) (_ BitVec 64))) (size!24236 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49536)

(assert (=> b!862076 (= res!585936 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24236 _keys!868))))))

(declare-fun b!862077 () Bool)

(declare-fun e!480325 () Bool)

(declare-fun tp_is_empty!16695 () Bool)

(assert (=> b!862077 (= e!480325 tp_is_empty!16695)))

(declare-fun b!862078 () Bool)

(declare-fun e!480327 () Bool)

(assert (=> b!862078 (= e!480327 tp_is_empty!16695)))

(declare-fun b!862079 () Bool)

(declare-fun e!480326 () Bool)

(assert (=> b!862079 (= e!480326 true)))

(declare-datatypes ((V!27307 0))(
  ( (V!27308 (val!8395 Int)) )
))
(declare-datatypes ((tuple2!11096 0))(
  ( (tuple2!11097 (_1!5558 (_ BitVec 64)) (_2!5558 V!27307)) )
))
(declare-datatypes ((List!16967 0))(
  ( (Nil!16964) (Cons!16963 (h!18094 tuple2!11096) (t!23800 List!16967)) )
))
(declare-datatypes ((ListLongMap!9879 0))(
  ( (ListLongMap!9880 (toList!4955 List!16967)) )
))
(declare-fun lt!389023 () ListLongMap!9879)

(declare-fun lt!389013 () tuple2!11096)

(declare-fun lt!389020 () ListLongMap!9879)

(declare-fun lt!389012 () tuple2!11096)

(declare-fun +!2252 (ListLongMap!9879 tuple2!11096) ListLongMap!9879)

(assert (=> b!862079 (= lt!389020 (+!2252 (+!2252 lt!389023 lt!389013) lt!389012))))

(declare-datatypes ((Unit!29400 0))(
  ( (Unit!29401) )
))
(declare-fun lt!389024 () Unit!29400)

(declare-fun v!557 () V!27307)

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun lt!389011 () V!27307)

(declare-fun addCommutativeForDiffKeys!469 (ListLongMap!9879 (_ BitVec 64) V!27307 (_ BitVec 64) V!27307) Unit!29400)

(assert (=> b!862079 (= lt!389024 (addCommutativeForDiffKeys!469 lt!389023 k0!854 v!557 (select (arr!23795 _keys!868) from!1053) lt!389011))))

(declare-fun b!862080 () Bool)

(declare-fun res!585937 () Bool)

(assert (=> b!862080 (=> (not res!585937) (not e!480321))))

(assert (=> b!862080 (= res!585937 (and (= (select (arr!23795 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!862081 () Bool)

(declare-fun res!585940 () Bool)

(assert (=> b!862081 (=> (not res!585940) (not e!480321))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((ValueCell!7908 0))(
  ( (ValueCellFull!7908 (v!10816 V!27307)) (EmptyCell!7908) )
))
(declare-datatypes ((array!49538 0))(
  ( (array!49539 (arr!23796 (Array (_ BitVec 32) ValueCell!7908)) (size!24237 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49538)

(assert (=> b!862081 (= res!585940 (and (= (size!24237 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24236 _keys!868) (size!24237 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!862082 () Bool)

(declare-fun e!480323 () Unit!29400)

(declare-fun Unit!29402 () Unit!29400)

(assert (=> b!862082 (= e!480323 Unit!29402)))

(declare-fun lt!389022 () Unit!29400)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49536 (_ BitVec 32) (_ BitVec 32)) Unit!29400)

(assert (=> b!862082 (= lt!389022 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(declare-datatypes ((List!16968 0))(
  ( (Nil!16965) (Cons!16964 (h!18095 (_ BitVec 64)) (t!23801 List!16968)) )
))
(declare-fun arrayNoDuplicates!0 (array!49536 (_ BitVec 32) List!16968) Bool)

(assert (=> b!862082 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!16965)))

(declare-fun lt!389025 () Unit!29400)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49536 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29400)

(assert (=> b!862082 (= lt!389025 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49536 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!862082 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!389010 () Unit!29400)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49536 (_ BitVec 64) (_ BitVec 32) List!16968) Unit!29400)

(assert (=> b!862082 (= lt!389010 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!16965))))

(assert (=> b!862082 false))

(declare-fun mapNonEmpty!26642 () Bool)

(declare-fun mapRes!26642 () Bool)

(declare-fun tp!51181 () Bool)

(assert (=> mapNonEmpty!26642 (= mapRes!26642 (and tp!51181 e!480327))))

(declare-fun mapRest!26642 () (Array (_ BitVec 32) ValueCell!7908))

(declare-fun mapValue!26642 () ValueCell!7908)

(declare-fun mapKey!26642 () (_ BitVec 32))

(assert (=> mapNonEmpty!26642 (= (arr!23796 _values!688) (store mapRest!26642 mapKey!26642 mapValue!26642))))

(declare-fun b!862083 () Bool)

(declare-fun e!480319 () Bool)

(declare-fun e!480322 () Bool)

(assert (=> b!862083 (= e!480319 (not e!480322))))

(declare-fun res!585945 () Bool)

(assert (=> b!862083 (=> res!585945 e!480322)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!862083 (= res!585945 (not (validKeyInArray!0 (select (arr!23795 _keys!868) from!1053))))))

(declare-fun lt!389014 () ListLongMap!9879)

(declare-fun lt!389016 () ListLongMap!9879)

(assert (=> b!862083 (= lt!389014 lt!389016)))

(assert (=> b!862083 (= lt!389016 (+!2252 lt!389023 lt!389012))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!389015 () array!49538)

(declare-fun minValue!654 () V!27307)

(declare-fun zeroValue!654 () V!27307)

(declare-fun getCurrentListMapNoExtraKeys!2932 (array!49536 array!49538 (_ BitVec 32) (_ BitVec 32) V!27307 V!27307 (_ BitVec 32) Int) ListLongMap!9879)

(assert (=> b!862083 (= lt!389014 (getCurrentListMapNoExtraKeys!2932 _keys!868 lt!389015 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(assert (=> b!862083 (= lt!389012 (tuple2!11097 k0!854 v!557))))

(assert (=> b!862083 (= lt!389023 (getCurrentListMapNoExtraKeys!2932 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun lt!389018 () Unit!29400)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!502 (array!49536 array!49538 (_ BitVec 32) (_ BitVec 32) V!27307 V!27307 (_ BitVec 32) (_ BitVec 64) V!27307 (_ BitVec 32) Int) Unit!29400)

(assert (=> b!862083 (= lt!389018 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!502 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!862084 () Bool)

(declare-fun res!585941 () Bool)

(assert (=> b!862084 (=> (not res!585941) (not e!480321))))

(assert (=> b!862084 (= res!585941 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16965))))

(declare-fun b!862085 () Bool)

(declare-fun res!585944 () Bool)

(assert (=> b!862085 (=> (not res!585944) (not e!480321))))

(assert (=> b!862085 (= res!585944 (validKeyInArray!0 k0!854))))

(declare-fun b!862086 () Bool)

(declare-fun res!585939 () Bool)

(assert (=> b!862086 (=> (not res!585939) (not e!480321))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49536 (_ BitVec 32)) Bool)

(assert (=> b!862086 (= res!585939 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!862087 () Bool)

(declare-fun e!480324 () Bool)

(assert (=> b!862087 (= e!480324 (and e!480325 mapRes!26642))))

(declare-fun condMapEmpty!26642 () Bool)

(declare-fun mapDefault!26642 () ValueCell!7908)

(assert (=> b!862087 (= condMapEmpty!26642 (= (arr!23796 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7908)) mapDefault!26642)))))

(declare-fun res!585943 () Bool)

(assert (=> start!73672 (=> (not res!585943) (not e!480321))))

(assert (=> start!73672 (= res!585943 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24236 _keys!868))))))

(assert (=> start!73672 e!480321))

(assert (=> start!73672 tp_is_empty!16695))

(assert (=> start!73672 true))

(assert (=> start!73672 tp!51182))

(declare-fun array_inv!18802 (array!49536) Bool)

(assert (=> start!73672 (array_inv!18802 _keys!868)))

(declare-fun array_inv!18803 (array!49538) Bool)

(assert (=> start!73672 (and (array_inv!18803 _values!688) e!480324)))

(declare-fun b!862075 () Bool)

(assert (=> b!862075 (= e!480322 e!480326)))

(declare-fun res!585935 () Bool)

(assert (=> b!862075 (=> res!585935 e!480326)))

(assert (=> b!862075 (= res!585935 (= k0!854 (select (arr!23795 _keys!868) from!1053)))))

(assert (=> b!862075 (not (= (select (arr!23795 _keys!868) from!1053) k0!854))))

(declare-fun lt!389017 () Unit!29400)

(assert (=> b!862075 (= lt!389017 e!480323)))

(declare-fun c!91977 () Bool)

(assert (=> b!862075 (= c!91977 (= (select (arr!23795 _keys!868) from!1053) k0!854))))

(declare-fun lt!389019 () ListLongMap!9879)

(assert (=> b!862075 (= lt!389019 lt!389020)))

(assert (=> b!862075 (= lt!389020 (+!2252 lt!389016 lt!389013))))

(assert (=> b!862075 (= lt!389013 (tuple2!11097 (select (arr!23795 _keys!868) from!1053) lt!389011))))

(declare-fun get!12568 (ValueCell!7908 V!27307) V!27307)

(declare-fun dynLambda!1132 (Int (_ BitVec 64)) V!27307)

(assert (=> b!862075 (= lt!389011 (get!12568 (select (arr!23796 _values!688) from!1053) (dynLambda!1132 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!862088 () Bool)

(declare-fun res!585942 () Bool)

(assert (=> b!862088 (=> (not res!585942) (not e!480321))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!862088 (= res!585942 (validMask!0 mask!1196))))

(declare-fun mapIsEmpty!26642 () Bool)

(assert (=> mapIsEmpty!26642 mapRes!26642))

(declare-fun b!862089 () Bool)

(assert (=> b!862089 (= e!480321 e!480319)))

(declare-fun res!585938 () Bool)

(assert (=> b!862089 (=> (not res!585938) (not e!480319))))

(assert (=> b!862089 (= res!585938 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!862089 (= lt!389019 (getCurrentListMapNoExtraKeys!2932 _keys!868 lt!389015 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!862089 (= lt!389015 (array!49539 (store (arr!23796 _values!688) i!612 (ValueCellFull!7908 v!557)) (size!24237 _values!688)))))

(declare-fun lt!389021 () ListLongMap!9879)

(assert (=> b!862089 (= lt!389021 (getCurrentListMapNoExtraKeys!2932 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!862090 () Bool)

(declare-fun Unit!29403 () Unit!29400)

(assert (=> b!862090 (= e!480323 Unit!29403)))

(assert (= (and start!73672 res!585943) b!862088))

(assert (= (and b!862088 res!585942) b!862081))

(assert (= (and b!862081 res!585940) b!862086))

(assert (= (and b!862086 res!585939) b!862084))

(assert (= (and b!862084 res!585941) b!862076))

(assert (= (and b!862076 res!585936) b!862085))

(assert (= (and b!862085 res!585944) b!862080))

(assert (= (and b!862080 res!585937) b!862089))

(assert (= (and b!862089 res!585938) b!862083))

(assert (= (and b!862083 (not res!585945)) b!862075))

(assert (= (and b!862075 c!91977) b!862082))

(assert (= (and b!862075 (not c!91977)) b!862090))

(assert (= (and b!862075 (not res!585935)) b!862079))

(assert (= (and b!862087 condMapEmpty!26642) mapIsEmpty!26642))

(assert (= (and b!862087 (not condMapEmpty!26642)) mapNonEmpty!26642))

(get-info :version)

(assert (= (and mapNonEmpty!26642 ((_ is ValueCellFull!7908) mapValue!26642)) b!862078))

(assert (= (and b!862087 ((_ is ValueCellFull!7908) mapDefault!26642)) b!862077))

(assert (= start!73672 b!862087))

(declare-fun b_lambda!11941 () Bool)

(assert (=> (not b_lambda!11941) (not b!862075)))

(declare-fun t!23799 () Bool)

(declare-fun tb!4689 () Bool)

(assert (=> (and start!73672 (= defaultEntry!696 defaultEntry!696) t!23799) tb!4689))

(declare-fun result!8981 () Bool)

(assert (=> tb!4689 (= result!8981 tp_is_empty!16695)))

(assert (=> b!862075 t!23799))

(declare-fun b_and!24117 () Bool)

(assert (= b_and!24115 (and (=> t!23799 result!8981) b_and!24117)))

(declare-fun m!803165 () Bool)

(assert (=> b!862086 m!803165))

(declare-fun m!803167 () Bool)

(assert (=> b!862075 m!803167))

(declare-fun m!803169 () Bool)

(assert (=> b!862075 m!803169))

(declare-fun m!803171 () Bool)

(assert (=> b!862075 m!803171))

(declare-fun m!803173 () Bool)

(assert (=> b!862075 m!803173))

(assert (=> b!862075 m!803169))

(declare-fun m!803175 () Bool)

(assert (=> b!862075 m!803175))

(assert (=> b!862075 m!803171))

(declare-fun m!803177 () Bool)

(assert (=> b!862082 m!803177))

(declare-fun m!803179 () Bool)

(assert (=> b!862082 m!803179))

(declare-fun m!803181 () Bool)

(assert (=> b!862082 m!803181))

(declare-fun m!803183 () Bool)

(assert (=> b!862082 m!803183))

(declare-fun m!803185 () Bool)

(assert (=> b!862082 m!803185))

(declare-fun m!803187 () Bool)

(assert (=> b!862089 m!803187))

(declare-fun m!803189 () Bool)

(assert (=> b!862089 m!803189))

(declare-fun m!803191 () Bool)

(assert (=> b!862089 m!803191))

(declare-fun m!803193 () Bool)

(assert (=> b!862079 m!803193))

(assert (=> b!862079 m!803193))

(declare-fun m!803195 () Bool)

(assert (=> b!862079 m!803195))

(assert (=> b!862079 m!803175))

(assert (=> b!862079 m!803175))

(declare-fun m!803197 () Bool)

(assert (=> b!862079 m!803197))

(declare-fun m!803199 () Bool)

(assert (=> start!73672 m!803199))

(declare-fun m!803201 () Bool)

(assert (=> start!73672 m!803201))

(declare-fun m!803203 () Bool)

(assert (=> b!862085 m!803203))

(declare-fun m!803205 () Bool)

(assert (=> b!862088 m!803205))

(declare-fun m!803207 () Bool)

(assert (=> mapNonEmpty!26642 m!803207))

(declare-fun m!803209 () Bool)

(assert (=> b!862080 m!803209))

(declare-fun m!803211 () Bool)

(assert (=> b!862084 m!803211))

(declare-fun m!803213 () Bool)

(assert (=> b!862083 m!803213))

(assert (=> b!862083 m!803175))

(declare-fun m!803215 () Bool)

(assert (=> b!862083 m!803215))

(assert (=> b!862083 m!803175))

(declare-fun m!803217 () Bool)

(assert (=> b!862083 m!803217))

(declare-fun m!803219 () Bool)

(assert (=> b!862083 m!803219))

(declare-fun m!803221 () Bool)

(assert (=> b!862083 m!803221))

(check-sat (not b!862085) (not start!73672) (not b_next!14559) (not b!862089) (not b!862075) (not b_lambda!11941) b_and!24117 (not b!862079) (not b!862086) (not b!862082) tp_is_empty!16695 (not b!862083) (not b!862084) (not b!862088) (not mapNonEmpty!26642))
(check-sat b_and!24117 (not b_next!14559))

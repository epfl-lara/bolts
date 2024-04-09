; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73876 () Bool)

(assert start!73876)

(declare-fun b_free!14763 () Bool)

(declare-fun b_next!14763 () Bool)

(assert (=> start!73876 (= b_free!14763 (not b_next!14763))))

(declare-fun tp!51794 () Bool)

(declare-fun b_and!24523 () Bool)

(assert (=> start!73876 (= tp!51794 b_and!24523)))

(declare-fun b!867175 () Bool)

(declare-fun e!483080 () Bool)

(declare-fun e!483073 () Bool)

(declare-fun mapRes!26948 () Bool)

(assert (=> b!867175 (= e!483080 (and e!483073 mapRes!26948))))

(declare-fun condMapEmpty!26948 () Bool)

(declare-datatypes ((V!27579 0))(
  ( (V!27580 (val!8497 Int)) )
))
(declare-datatypes ((ValueCell!8010 0))(
  ( (ValueCellFull!8010 (v!10918 V!27579)) (EmptyCell!8010) )
))
(declare-datatypes ((array!49938 0))(
  ( (array!49939 (arr!23996 (Array (_ BitVec 32) ValueCell!8010)) (size!24437 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49938)

(declare-fun mapDefault!26948 () ValueCell!8010)

(assert (=> b!867175 (= condMapEmpty!26948 (= (arr!23996 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8010)) mapDefault!26948)))))

(declare-fun b!867176 () Bool)

(declare-datatypes ((Unit!29721 0))(
  ( (Unit!29722) )
))
(declare-fun e!483076 () Unit!29721)

(declare-fun Unit!29723 () Unit!29721)

(assert (=> b!867176 (= e!483076 Unit!29723)))

(declare-fun b!867177 () Bool)

(declare-fun e!483081 () Bool)

(declare-fun e!483075 () Bool)

(assert (=> b!867177 (= e!483081 (not e!483075))))

(declare-fun res!589305 () Bool)

(assert (=> b!867177 (=> res!589305 e!483075)))

(declare-datatypes ((array!49940 0))(
  ( (array!49941 (arr!23997 (Array (_ BitVec 32) (_ BitVec 64))) (size!24438 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49940)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!867177 (= res!589305 (not (validKeyInArray!0 (select (arr!23997 _keys!868) from!1053))))))

(declare-datatypes ((tuple2!11276 0))(
  ( (tuple2!11277 (_1!5648 (_ BitVec 64)) (_2!5648 V!27579)) )
))
(declare-datatypes ((List!17138 0))(
  ( (Nil!17135) (Cons!17134 (h!18265 tuple2!11276) (t!24175 List!17138)) )
))
(declare-datatypes ((ListLongMap!10059 0))(
  ( (ListLongMap!10060 (toList!5045 List!17138)) )
))
(declare-fun lt!393915 () ListLongMap!10059)

(declare-fun lt!393916 () ListLongMap!10059)

(assert (=> b!867177 (= lt!393915 lt!393916)))

(declare-fun lt!393908 () ListLongMap!10059)

(declare-fun lt!393917 () tuple2!11276)

(declare-fun +!2339 (ListLongMap!10059 tuple2!11276) ListLongMap!10059)

(assert (=> b!867177 (= lt!393916 (+!2339 lt!393908 lt!393917))))

(declare-fun defaultEntry!696 () Int)

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun lt!393920 () array!49938)

(declare-fun minValue!654 () V!27579)

(declare-fun zeroValue!654 () V!27579)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!3010 (array!49940 array!49938 (_ BitVec 32) (_ BitVec 32) V!27579 V!27579 (_ BitVec 32) Int) ListLongMap!10059)

(assert (=> b!867177 (= lt!393915 (getCurrentListMapNoExtraKeys!3010 _keys!868 lt!393920 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun v!557 () V!27579)

(assert (=> b!867177 (= lt!393917 (tuple2!11277 k0!854 v!557))))

(assert (=> b!867177 (= lt!393908 (getCurrentListMapNoExtraKeys!3010 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun lt!393918 () Unit!29721)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!571 (array!49940 array!49938 (_ BitVec 32) (_ BitVec 32) V!27579 V!27579 (_ BitVec 32) (_ BitVec 64) V!27579 (_ BitVec 32) Int) Unit!29721)

(assert (=> b!867177 (= lt!393918 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!571 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!867178 () Bool)

(declare-fun res!589307 () Bool)

(declare-fun e!483074 () Bool)

(assert (=> b!867178 (=> (not res!589307) (not e!483074))))

(declare-datatypes ((List!17139 0))(
  ( (Nil!17136) (Cons!17135 (h!18266 (_ BitVec 64)) (t!24176 List!17139)) )
))
(declare-fun arrayNoDuplicates!0 (array!49940 (_ BitVec 32) List!17139) Bool)

(assert (=> b!867178 (= res!589307 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17136))))

(declare-fun b!867179 () Bool)

(declare-fun res!589301 () Bool)

(assert (=> b!867179 (=> (not res!589301) (not e!483074))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49940 (_ BitVec 32)) Bool)

(assert (=> b!867179 (= res!589301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!867180 () Bool)

(declare-fun e!483077 () Bool)

(declare-fun tp_is_empty!16899 () Bool)

(assert (=> b!867180 (= e!483077 tp_is_empty!16899)))

(declare-fun b!867181 () Bool)

(declare-fun res!589311 () Bool)

(assert (=> b!867181 (=> (not res!589311) (not e!483074))))

(assert (=> b!867181 (= res!589311 (and (= (select (arr!23997 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!867182 () Bool)

(declare-fun e!483078 () Bool)

(assert (=> b!867182 (= e!483078 true)))

(declare-fun lt!393921 () ListLongMap!10059)

(declare-fun lt!393911 () tuple2!11276)

(assert (=> b!867182 (= lt!393921 (+!2339 (+!2339 lt!393908 lt!393911) lt!393917))))

(declare-fun lt!393919 () Unit!29721)

(declare-fun lt!393912 () V!27579)

(declare-fun addCommutativeForDiffKeys!540 (ListLongMap!10059 (_ BitVec 64) V!27579 (_ BitVec 64) V!27579) Unit!29721)

(assert (=> b!867182 (= lt!393919 (addCommutativeForDiffKeys!540 lt!393908 k0!854 v!557 (select (arr!23997 _keys!868) from!1053) lt!393912))))

(declare-fun mapNonEmpty!26948 () Bool)

(declare-fun tp!51793 () Bool)

(assert (=> mapNonEmpty!26948 (= mapRes!26948 (and tp!51793 e!483077))))

(declare-fun mapKey!26948 () (_ BitVec 32))

(declare-fun mapValue!26948 () ValueCell!8010)

(declare-fun mapRest!26948 () (Array (_ BitVec 32) ValueCell!8010))

(assert (=> mapNonEmpty!26948 (= (arr!23996 _values!688) (store mapRest!26948 mapKey!26948 mapValue!26948))))

(declare-fun res!589303 () Bool)

(assert (=> start!73876 (=> (not res!589303) (not e!483074))))

(assert (=> start!73876 (= res!589303 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24438 _keys!868))))))

(assert (=> start!73876 e!483074))

(assert (=> start!73876 tp_is_empty!16899))

(assert (=> start!73876 true))

(assert (=> start!73876 tp!51794))

(declare-fun array_inv!18944 (array!49940) Bool)

(assert (=> start!73876 (array_inv!18944 _keys!868)))

(declare-fun array_inv!18945 (array!49938) Bool)

(assert (=> start!73876 (and (array_inv!18945 _values!688) e!483080)))

(declare-fun b!867183 () Bool)

(declare-fun res!589309 () Bool)

(assert (=> b!867183 (=> (not res!589309) (not e!483074))))

(assert (=> b!867183 (= res!589309 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24438 _keys!868))))))

(declare-fun b!867184 () Bool)

(declare-fun Unit!29724 () Unit!29721)

(assert (=> b!867184 (= e!483076 Unit!29724)))

(declare-fun lt!393909 () Unit!29721)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!49940 (_ BitVec 32) (_ BitVec 32)) Unit!29721)

(assert (=> b!867184 (= lt!393909 (lemmaNoDuplicateFromThenFromBigger!0 _keys!868 #b00000000000000000000000000000000 from!1053))))

(assert (=> b!867184 (arrayNoDuplicates!0 _keys!868 from!1053 Nil!17136)))

(declare-fun lt!393913 () Unit!29721)

(declare-fun lemmaArrayContainsFromImpliesContainsFromSmaller!0 (array!49940 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32)) Unit!29721)

(assert (=> b!867184 (= lt!393913 (lemmaArrayContainsFromImpliesContainsFromSmaller!0 _keys!868 k0!854 i!612 (bvadd #b00000000000000000000000000000001 from!1053)))))

(declare-fun arrayContainsKey!0 (array!49940 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!867184 (arrayContainsKey!0 _keys!868 k0!854 (bvadd #b00000000000000000000000000000001 from!1053))))

(declare-fun lt!393910 () Unit!29721)

(declare-fun lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 (array!49940 (_ BitVec 64) (_ BitVec 32) List!17139) Unit!29721)

(assert (=> b!867184 (= lt!393910 (lemmaArrayNoDuplicateThenKeysContainedNotEqual!0 _keys!868 k0!854 from!1053 Nil!17136))))

(assert (=> b!867184 false))

(declare-fun b!867185 () Bool)

(assert (=> b!867185 (= e!483075 e!483078)))

(declare-fun res!589310 () Bool)

(assert (=> b!867185 (=> res!589310 e!483078)))

(assert (=> b!867185 (= res!589310 (= k0!854 (select (arr!23997 _keys!868) from!1053)))))

(assert (=> b!867185 (not (= (select (arr!23997 _keys!868) from!1053) k0!854))))

(declare-fun lt!393906 () Unit!29721)

(assert (=> b!867185 (= lt!393906 e!483076)))

(declare-fun c!92283 () Bool)

(assert (=> b!867185 (= c!92283 (= (select (arr!23997 _keys!868) from!1053) k0!854))))

(declare-fun lt!393907 () ListLongMap!10059)

(assert (=> b!867185 (= lt!393907 lt!393921)))

(assert (=> b!867185 (= lt!393921 (+!2339 lt!393916 lt!393911))))

(assert (=> b!867185 (= lt!393911 (tuple2!11277 (select (arr!23997 _keys!868) from!1053) lt!393912))))

(declare-fun get!12708 (ValueCell!8010 V!27579) V!27579)

(declare-fun dynLambda!1204 (Int (_ BitVec 64)) V!27579)

(assert (=> b!867185 (= lt!393912 (get!12708 (select (arr!23996 _values!688) from!1053) (dynLambda!1204 defaultEntry!696 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!867186 () Bool)

(declare-fun res!589308 () Bool)

(assert (=> b!867186 (=> (not res!589308) (not e!483074))))

(assert (=> b!867186 (= res!589308 (validKeyInArray!0 k0!854))))

(declare-fun b!867187 () Bool)

(declare-fun res!589302 () Bool)

(assert (=> b!867187 (=> (not res!589302) (not e!483074))))

(assert (=> b!867187 (= res!589302 (and (= (size!24437 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24438 _keys!868) (size!24437 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26948 () Bool)

(assert (=> mapIsEmpty!26948 mapRes!26948))

(declare-fun b!867188 () Bool)

(assert (=> b!867188 (= e!483074 e!483081)))

(declare-fun res!589306 () Bool)

(assert (=> b!867188 (=> (not res!589306) (not e!483081))))

(assert (=> b!867188 (= res!589306 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(assert (=> b!867188 (= lt!393907 (getCurrentListMapNoExtraKeys!3010 _keys!868 lt!393920 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!867188 (= lt!393920 (array!49939 (store (arr!23996 _values!688) i!612 (ValueCellFull!8010 v!557)) (size!24437 _values!688)))))

(declare-fun lt!393914 () ListLongMap!10059)

(assert (=> b!867188 (= lt!393914 (getCurrentListMapNoExtraKeys!3010 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!867189 () Bool)

(assert (=> b!867189 (= e!483073 tp_is_empty!16899)))

(declare-fun b!867190 () Bool)

(declare-fun res!589304 () Bool)

(assert (=> b!867190 (=> (not res!589304) (not e!483074))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!867190 (= res!589304 (validMask!0 mask!1196))))

(assert (= (and start!73876 res!589303) b!867190))

(assert (= (and b!867190 res!589304) b!867187))

(assert (= (and b!867187 res!589302) b!867179))

(assert (= (and b!867179 res!589301) b!867178))

(assert (= (and b!867178 res!589307) b!867183))

(assert (= (and b!867183 res!589309) b!867186))

(assert (= (and b!867186 res!589308) b!867181))

(assert (= (and b!867181 res!589311) b!867188))

(assert (= (and b!867188 res!589306) b!867177))

(assert (= (and b!867177 (not res!589305)) b!867185))

(assert (= (and b!867185 c!92283) b!867184))

(assert (= (and b!867185 (not c!92283)) b!867176))

(assert (= (and b!867185 (not res!589310)) b!867182))

(assert (= (and b!867175 condMapEmpty!26948) mapIsEmpty!26948))

(assert (= (and b!867175 (not condMapEmpty!26948)) mapNonEmpty!26948))

(get-info :version)

(assert (= (and mapNonEmpty!26948 ((_ is ValueCellFull!8010) mapValue!26948)) b!867180))

(assert (= (and b!867175 ((_ is ValueCellFull!8010) mapDefault!26948)) b!867189))

(assert (= start!73876 b!867175))

(declare-fun b_lambda!12145 () Bool)

(assert (=> (not b_lambda!12145) (not b!867185)))

(declare-fun t!24174 () Bool)

(declare-fun tb!4893 () Bool)

(assert (=> (and start!73876 (= defaultEntry!696 defaultEntry!696) t!24174) tb!4893))

(declare-fun result!9389 () Bool)

(assert (=> tb!4893 (= result!9389 tp_is_empty!16899)))

(assert (=> b!867185 t!24174))

(declare-fun b_and!24525 () Bool)

(assert (= b_and!24523 (and (=> t!24174 result!9389) b_and!24525)))

(declare-fun m!809081 () Bool)

(assert (=> mapNonEmpty!26948 m!809081))

(declare-fun m!809083 () Bool)

(assert (=> b!867181 m!809083))

(declare-fun m!809085 () Bool)

(assert (=> b!867188 m!809085))

(declare-fun m!809087 () Bool)

(assert (=> b!867188 m!809087))

(declare-fun m!809089 () Bool)

(assert (=> b!867188 m!809089))

(declare-fun m!809091 () Bool)

(assert (=> b!867179 m!809091))

(declare-fun m!809093 () Bool)

(assert (=> b!867182 m!809093))

(assert (=> b!867182 m!809093))

(declare-fun m!809095 () Bool)

(assert (=> b!867182 m!809095))

(declare-fun m!809097 () Bool)

(assert (=> b!867182 m!809097))

(assert (=> b!867182 m!809097))

(declare-fun m!809099 () Bool)

(assert (=> b!867182 m!809099))

(declare-fun m!809101 () Bool)

(assert (=> start!73876 m!809101))

(declare-fun m!809103 () Bool)

(assert (=> start!73876 m!809103))

(declare-fun m!809105 () Bool)

(assert (=> b!867186 m!809105))

(declare-fun m!809107 () Bool)

(assert (=> b!867190 m!809107))

(declare-fun m!809109 () Bool)

(assert (=> b!867178 m!809109))

(declare-fun m!809111 () Bool)

(assert (=> b!867177 m!809111))

(declare-fun m!809113 () Bool)

(assert (=> b!867177 m!809113))

(declare-fun m!809115 () Bool)

(assert (=> b!867177 m!809115))

(assert (=> b!867177 m!809097))

(declare-fun m!809117 () Bool)

(assert (=> b!867177 m!809117))

(assert (=> b!867177 m!809097))

(declare-fun m!809119 () Bool)

(assert (=> b!867177 m!809119))

(declare-fun m!809121 () Bool)

(assert (=> b!867184 m!809121))

(declare-fun m!809123 () Bool)

(assert (=> b!867184 m!809123))

(declare-fun m!809125 () Bool)

(assert (=> b!867184 m!809125))

(declare-fun m!809127 () Bool)

(assert (=> b!867184 m!809127))

(declare-fun m!809129 () Bool)

(assert (=> b!867184 m!809129))

(declare-fun m!809131 () Bool)

(assert (=> b!867185 m!809131))

(declare-fun m!809133 () Bool)

(assert (=> b!867185 m!809133))

(declare-fun m!809135 () Bool)

(assert (=> b!867185 m!809135))

(declare-fun m!809137 () Bool)

(assert (=> b!867185 m!809137))

(assert (=> b!867185 m!809133))

(assert (=> b!867185 m!809097))

(assert (=> b!867185 m!809135))

(check-sat (not b!867186) tp_is_empty!16899 (not b_lambda!12145) (not b!867188) (not start!73876) (not b!867179) (not mapNonEmpty!26948) (not b_next!14763) (not b!867177) (not b!867184) (not b!867182) (not b!867178) b_and!24525 (not b!867190) (not b!867185))
(check-sat b_and!24525 (not b_next!14763))

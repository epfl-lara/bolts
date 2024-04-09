; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73936 () Bool)

(assert start!73936)

(declare-fun b_free!14823 () Bool)

(declare-fun b_next!14823 () Bool)

(assert (=> start!73936 (= b_free!14823 (not b_next!14823))))

(declare-fun tp!51974 () Bool)

(declare-fun b_and!24593 () Bool)

(assert (=> start!73936 (= tp!51974 b_and!24593)))

(declare-fun b!868317 () Bool)

(declare-fun res!590141 () Bool)

(declare-fun e!483653 () Bool)

(assert (=> b!868317 (=> (not res!590141) (not e!483653))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!868317 (= res!590141 (validMask!0 mask!1196))))

(declare-fun b!868318 () Bool)

(declare-fun e!483654 () Bool)

(declare-fun tp_is_empty!16959 () Bool)

(assert (=> b!868318 (= e!483654 tp_is_empty!16959)))

(declare-fun b!868319 () Bool)

(declare-fun e!483656 () Bool)

(assert (=> b!868319 (= e!483656 tp_is_empty!16959)))

(declare-fun b!868320 () Bool)

(declare-fun res!590138 () Bool)

(assert (=> b!868320 (=> (not res!590138) (not e!483653))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!868320 (= res!590138 (validKeyInArray!0 k0!854))))

(declare-fun b!868321 () Bool)

(declare-fun res!590145 () Bool)

(assert (=> b!868321 (=> (not res!590145) (not e!483653))))

(declare-datatypes ((array!50054 0))(
  ( (array!50055 (arr!24054 (Array (_ BitVec 32) (_ BitVec 64))) (size!24495 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50054)

(declare-datatypes ((List!17179 0))(
  ( (Nil!17176) (Cons!17175 (h!18306 (_ BitVec 64)) (t!24224 List!17179)) )
))
(declare-fun arrayNoDuplicates!0 (array!50054 (_ BitVec 32) List!17179) Bool)

(assert (=> b!868321 (= res!590145 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17176))))

(declare-fun b!868322 () Bool)

(declare-fun e!483657 () Bool)

(assert (=> b!868322 (= e!483653 e!483657)))

(declare-fun res!590137 () Bool)

(assert (=> b!868322 (=> (not res!590137) (not e!483657))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!868322 (= res!590137 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-datatypes ((V!27659 0))(
  ( (V!27660 (val!8527 Int)) )
))
(declare-datatypes ((tuple2!11318 0))(
  ( (tuple2!11319 (_1!5669 (_ BitVec 64)) (_2!5669 V!27659)) )
))
(declare-datatypes ((List!17180 0))(
  ( (Nil!17177) (Cons!17176 (h!18307 tuple2!11318) (t!24225 List!17180)) )
))
(declare-datatypes ((ListLongMap!10101 0))(
  ( (ListLongMap!10102 (toList!5066 List!17180)) )
))
(declare-fun lt!394425 () ListLongMap!10101)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!8040 0))(
  ( (ValueCellFull!8040 (v!10948 V!27659)) (EmptyCell!8040) )
))
(declare-datatypes ((array!50056 0))(
  ( (array!50057 (arr!24055 (Array (_ BitVec 32) ValueCell!8040)) (size!24496 (_ BitVec 32))) )
))
(declare-fun lt!394422 () array!50056)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27659)

(declare-fun zeroValue!654 () V!27659)

(declare-fun getCurrentListMapNoExtraKeys!3030 (array!50054 array!50056 (_ BitVec 32) (_ BitVec 32) V!27659 V!27659 (_ BitVec 32) Int) ListLongMap!10101)

(assert (=> b!868322 (= lt!394425 (getCurrentListMapNoExtraKeys!3030 _keys!868 lt!394422 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27659)

(declare-fun _values!688 () array!50056)

(assert (=> b!868322 (= lt!394422 (array!50057 (store (arr!24055 _values!688) i!612 (ValueCellFull!8040 v!557)) (size!24496 _values!688)))))

(declare-fun lt!394424 () ListLongMap!10101)

(assert (=> b!868322 (= lt!394424 (getCurrentListMapNoExtraKeys!3030 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!868323 () Bool)

(declare-fun res!590142 () Bool)

(assert (=> b!868323 (=> (not res!590142) (not e!483653))))

(assert (=> b!868323 (= res!590142 (and (= (size!24496 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24495 _keys!868) (size!24496 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!868324 () Bool)

(declare-fun res!590140 () Bool)

(assert (=> b!868324 (=> (not res!590140) (not e!483653))))

(assert (=> b!868324 (= res!590140 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24495 _keys!868))))))

(declare-fun mapNonEmpty!27038 () Bool)

(declare-fun mapRes!27038 () Bool)

(declare-fun tp!51973 () Bool)

(assert (=> mapNonEmpty!27038 (= mapRes!27038 (and tp!51973 e!483654))))

(declare-fun mapRest!27038 () (Array (_ BitVec 32) ValueCell!8040))

(declare-fun mapKey!27038 () (_ BitVec 32))

(declare-fun mapValue!27038 () ValueCell!8040)

(assert (=> mapNonEmpty!27038 (= (arr!24055 _values!688) (store mapRest!27038 mapKey!27038 mapValue!27038))))

(declare-fun b!868325 () Bool)

(declare-fun res!590144 () Bool)

(assert (=> b!868325 (=> (not res!590144) (not e!483653))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50054 (_ BitVec 32)) Bool)

(assert (=> b!868325 (= res!590144 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!868326 () Bool)

(assert (=> b!868326 (= e!483657 (not true))))

(declare-fun +!2356 (ListLongMap!10101 tuple2!11318) ListLongMap!10101)

(assert (=> b!868326 (= (getCurrentListMapNoExtraKeys!3030 _keys!868 lt!394422 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2356 (getCurrentListMapNoExtraKeys!3030 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11319 k0!854 v!557)))))

(declare-datatypes ((Unit!29762 0))(
  ( (Unit!29763) )
))
(declare-fun lt!394423 () Unit!29762)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!587 (array!50054 array!50056 (_ BitVec 32) (_ BitVec 32) V!27659 V!27659 (_ BitVec 32) (_ BitVec 64) V!27659 (_ BitVec 32) Int) Unit!29762)

(assert (=> b!868326 (= lt!394423 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!587 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun res!590143 () Bool)

(assert (=> start!73936 (=> (not res!590143) (not e!483653))))

(assert (=> start!73936 (= res!590143 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24495 _keys!868))))))

(assert (=> start!73936 e!483653))

(assert (=> start!73936 tp_is_empty!16959))

(assert (=> start!73936 true))

(assert (=> start!73936 tp!51974))

(declare-fun array_inv!18978 (array!50054) Bool)

(assert (=> start!73936 (array_inv!18978 _keys!868)))

(declare-fun e!483652 () Bool)

(declare-fun array_inv!18979 (array!50056) Bool)

(assert (=> start!73936 (and (array_inv!18979 _values!688) e!483652)))

(declare-fun mapIsEmpty!27038 () Bool)

(assert (=> mapIsEmpty!27038 mapRes!27038))

(declare-fun b!868327 () Bool)

(declare-fun res!590139 () Bool)

(assert (=> b!868327 (=> (not res!590139) (not e!483653))))

(assert (=> b!868327 (= res!590139 (and (= (select (arr!24054 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!868328 () Bool)

(assert (=> b!868328 (= e!483652 (and e!483656 mapRes!27038))))

(declare-fun condMapEmpty!27038 () Bool)

(declare-fun mapDefault!27038 () ValueCell!8040)

(assert (=> b!868328 (= condMapEmpty!27038 (= (arr!24055 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8040)) mapDefault!27038)))))

(assert (= (and start!73936 res!590143) b!868317))

(assert (= (and b!868317 res!590141) b!868323))

(assert (= (and b!868323 res!590142) b!868325))

(assert (= (and b!868325 res!590144) b!868321))

(assert (= (and b!868321 res!590145) b!868324))

(assert (= (and b!868324 res!590140) b!868320))

(assert (= (and b!868320 res!590138) b!868327))

(assert (= (and b!868327 res!590139) b!868322))

(assert (= (and b!868322 res!590137) b!868326))

(assert (= (and b!868328 condMapEmpty!27038) mapIsEmpty!27038))

(assert (= (and b!868328 (not condMapEmpty!27038)) mapNonEmpty!27038))

(get-info :version)

(assert (= (and mapNonEmpty!27038 ((_ is ValueCellFull!8040) mapValue!27038)) b!868318))

(assert (= (and b!868328 ((_ is ValueCellFull!8040) mapDefault!27038)) b!868319))

(assert (= start!73936 b!868328))

(declare-fun m!810121 () Bool)

(assert (=> b!868327 m!810121))

(declare-fun m!810123 () Bool)

(assert (=> b!868322 m!810123))

(declare-fun m!810125 () Bool)

(assert (=> b!868322 m!810125))

(declare-fun m!810127 () Bool)

(assert (=> b!868322 m!810127))

(declare-fun m!810129 () Bool)

(assert (=> b!868320 m!810129))

(declare-fun m!810131 () Bool)

(assert (=> b!868317 m!810131))

(declare-fun m!810133 () Bool)

(assert (=> b!868325 m!810133))

(declare-fun m!810135 () Bool)

(assert (=> mapNonEmpty!27038 m!810135))

(declare-fun m!810137 () Bool)

(assert (=> b!868321 m!810137))

(declare-fun m!810139 () Bool)

(assert (=> b!868326 m!810139))

(declare-fun m!810141 () Bool)

(assert (=> b!868326 m!810141))

(assert (=> b!868326 m!810141))

(declare-fun m!810143 () Bool)

(assert (=> b!868326 m!810143))

(declare-fun m!810145 () Bool)

(assert (=> b!868326 m!810145))

(declare-fun m!810147 () Bool)

(assert (=> start!73936 m!810147))

(declare-fun m!810149 () Bool)

(assert (=> start!73936 m!810149))

(check-sat (not b_next!14823) (not b!868322) (not mapNonEmpty!27038) (not b!868321) b_and!24593 (not start!73936) tp_is_empty!16959 (not b!868326) (not b!868325) (not b!868317) (not b!868320))
(check-sat b_and!24593 (not b_next!14823))

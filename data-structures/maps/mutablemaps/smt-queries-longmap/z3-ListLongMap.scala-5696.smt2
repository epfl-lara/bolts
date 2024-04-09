; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73990 () Bool)

(assert start!73990)

(declare-fun b_free!14877 () Bool)

(declare-fun b_next!14877 () Bool)

(assert (=> start!73990 (= b_free!14877 (not b_next!14877))))

(declare-fun tp!52135 () Bool)

(declare-fun b_and!24647 () Bool)

(assert (=> start!73990 (= tp!52135 b_and!24647)))

(declare-fun b!869289 () Bool)

(declare-fun res!590869 () Bool)

(declare-fun e!484138 () Bool)

(assert (=> b!869289 (=> (not res!590869) (not e!484138))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869289 (= res!590869 (validMask!0 mask!1196))))

(declare-fun b!869290 () Bool)

(declare-fun res!590867 () Bool)

(assert (=> b!869290 (=> (not res!590867) (not e!484138))))

(declare-datatypes ((array!50158 0))(
  ( (array!50159 (arr!24106 (Array (_ BitVec 32) (_ BitVec 64))) (size!24547 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50158)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50158 (_ BitVec 32)) Bool)

(assert (=> b!869290 (= res!590867 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869291 () Bool)

(declare-fun res!590868 () Bool)

(assert (=> b!869291 (=> (not res!590868) (not e!484138))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((V!27731 0))(
  ( (V!27732 (val!8554 Int)) )
))
(declare-datatypes ((ValueCell!8067 0))(
  ( (ValueCellFull!8067 (v!10975 V!27731)) (EmptyCell!8067) )
))
(declare-datatypes ((array!50160 0))(
  ( (array!50161 (arr!24107 (Array (_ BitVec 32) ValueCell!8067)) (size!24548 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50160)

(assert (=> b!869291 (= res!590868 (and (= (size!24548 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24547 _keys!868) (size!24548 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869292 () Bool)

(declare-fun e!484142 () Bool)

(declare-fun tp_is_empty!17013 () Bool)

(assert (=> b!869292 (= e!484142 tp_is_empty!17013)))

(declare-fun res!590870 () Bool)

(assert (=> start!73990 (=> (not res!590870) (not e!484138))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!73990 (= res!590870 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24547 _keys!868))))))

(assert (=> start!73990 e!484138))

(assert (=> start!73990 tp_is_empty!17013))

(assert (=> start!73990 true))

(assert (=> start!73990 tp!52135))

(declare-fun array_inv!19014 (array!50158) Bool)

(assert (=> start!73990 (array_inv!19014 _keys!868)))

(declare-fun e!484141 () Bool)

(declare-fun array_inv!19015 (array!50160) Bool)

(assert (=> start!73990 (and (array_inv!19015 _values!688) e!484141)))

(declare-fun b!869293 () Bool)

(declare-fun e!484139 () Bool)

(assert (=> b!869293 (= e!484139 tp_is_empty!17013)))

(declare-fun mapIsEmpty!27119 () Bool)

(declare-fun mapRes!27119 () Bool)

(assert (=> mapIsEmpty!27119 mapRes!27119))

(declare-fun mapNonEmpty!27119 () Bool)

(declare-fun tp!52136 () Bool)

(assert (=> mapNonEmpty!27119 (= mapRes!27119 (and tp!52136 e!484139))))

(declare-fun mapKey!27119 () (_ BitVec 32))

(declare-fun mapValue!27119 () ValueCell!8067)

(declare-fun mapRest!27119 () (Array (_ BitVec 32) ValueCell!8067))

(assert (=> mapNonEmpty!27119 (= (arr!24107 _values!688) (store mapRest!27119 mapKey!27119 mapValue!27119))))

(declare-fun b!869294 () Bool)

(assert (=> b!869294 (= e!484141 (and e!484142 mapRes!27119))))

(declare-fun condMapEmpty!27119 () Bool)

(declare-fun mapDefault!27119 () ValueCell!8067)

(assert (=> b!869294 (= condMapEmpty!27119 (= (arr!24107 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8067)) mapDefault!27119)))))

(declare-fun b!869295 () Bool)

(declare-fun res!590874 () Bool)

(assert (=> b!869295 (=> (not res!590874) (not e!484138))))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(assert (=> b!869295 (= res!590874 (and (= (select (arr!24106 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!869296 () Bool)

(declare-fun res!590872 () Bool)

(assert (=> b!869296 (=> (not res!590872) (not e!484138))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869296 (= res!590872 (validKeyInArray!0 k0!854))))

(declare-fun b!869297 () Bool)

(declare-fun e!484143 () Bool)

(assert (=> b!869297 (= e!484138 e!484143)))

(declare-fun res!590866 () Bool)

(assert (=> b!869297 (=> (not res!590866) (not e!484143))))

(assert (=> b!869297 (= res!590866 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun defaultEntry!696 () Int)

(declare-fun lt!394747 () array!50160)

(declare-fun minValue!654 () V!27731)

(declare-fun zeroValue!654 () V!27731)

(declare-datatypes ((tuple2!11358 0))(
  ( (tuple2!11359 (_1!5689 (_ BitVec 64)) (_2!5689 V!27731)) )
))
(declare-datatypes ((List!17216 0))(
  ( (Nil!17213) (Cons!17212 (h!18343 tuple2!11358) (t!24261 List!17216)) )
))
(declare-datatypes ((ListLongMap!10141 0))(
  ( (ListLongMap!10142 (toList!5086 List!17216)) )
))
(declare-fun lt!394749 () ListLongMap!10141)

(declare-fun getCurrentListMapNoExtraKeys!3050 (array!50158 array!50160 (_ BitVec 32) (_ BitVec 32) V!27731 V!27731 (_ BitVec 32) Int) ListLongMap!10141)

(assert (=> b!869297 (= lt!394749 (getCurrentListMapNoExtraKeys!3050 _keys!868 lt!394747 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27731)

(assert (=> b!869297 (= lt!394747 (array!50161 (store (arr!24107 _values!688) i!612 (ValueCellFull!8067 v!557)) (size!24548 _values!688)))))

(declare-fun lt!394746 () ListLongMap!10141)

(assert (=> b!869297 (= lt!394746 (getCurrentListMapNoExtraKeys!3050 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!869298 () Bool)

(declare-fun res!590873 () Bool)

(assert (=> b!869298 (=> (not res!590873) (not e!484138))))

(declare-datatypes ((List!17217 0))(
  ( (Nil!17214) (Cons!17213 (h!18344 (_ BitVec 64)) (t!24262 List!17217)) )
))
(declare-fun arrayNoDuplicates!0 (array!50158 (_ BitVec 32) List!17217) Bool)

(assert (=> b!869298 (= res!590873 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17214))))

(declare-fun b!869299 () Bool)

(assert (=> b!869299 (= e!484143 (not true))))

(declare-fun +!2372 (ListLongMap!10141 tuple2!11358) ListLongMap!10141)

(assert (=> b!869299 (= (getCurrentListMapNoExtraKeys!3050 _keys!868 lt!394747 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2372 (getCurrentListMapNoExtraKeys!3050 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11359 k0!854 v!557)))))

(declare-datatypes ((Unit!29794 0))(
  ( (Unit!29795) )
))
(declare-fun lt!394748 () Unit!29794)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!603 (array!50158 array!50160 (_ BitVec 32) (_ BitVec 32) V!27731 V!27731 (_ BitVec 32) (_ BitVec 64) V!27731 (_ BitVec 32) Int) Unit!29794)

(assert (=> b!869299 (= lt!394748 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!603 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869300 () Bool)

(declare-fun res!590871 () Bool)

(assert (=> b!869300 (=> (not res!590871) (not e!484138))))

(assert (=> b!869300 (= res!590871 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24547 _keys!868))))))

(assert (= (and start!73990 res!590870) b!869289))

(assert (= (and b!869289 res!590869) b!869291))

(assert (= (and b!869291 res!590868) b!869290))

(assert (= (and b!869290 res!590867) b!869298))

(assert (= (and b!869298 res!590873) b!869300))

(assert (= (and b!869300 res!590871) b!869296))

(assert (= (and b!869296 res!590872) b!869295))

(assert (= (and b!869295 res!590874) b!869297))

(assert (= (and b!869297 res!590866) b!869299))

(assert (= (and b!869294 condMapEmpty!27119) mapIsEmpty!27119))

(assert (= (and b!869294 (not condMapEmpty!27119)) mapNonEmpty!27119))

(get-info :version)

(assert (= (and mapNonEmpty!27119 ((_ is ValueCellFull!8067) mapValue!27119)) b!869293))

(assert (= (and b!869294 ((_ is ValueCellFull!8067) mapDefault!27119)) b!869292))

(assert (= start!73990 b!869294))

(declare-fun m!810931 () Bool)

(assert (=> b!869297 m!810931))

(declare-fun m!810933 () Bool)

(assert (=> b!869297 m!810933))

(declare-fun m!810935 () Bool)

(assert (=> b!869297 m!810935))

(declare-fun m!810937 () Bool)

(assert (=> b!869290 m!810937))

(declare-fun m!810939 () Bool)

(assert (=> b!869289 m!810939))

(declare-fun m!810941 () Bool)

(assert (=> b!869295 m!810941))

(declare-fun m!810943 () Bool)

(assert (=> b!869296 m!810943))

(declare-fun m!810945 () Bool)

(assert (=> mapNonEmpty!27119 m!810945))

(declare-fun m!810947 () Bool)

(assert (=> b!869298 m!810947))

(declare-fun m!810949 () Bool)

(assert (=> start!73990 m!810949))

(declare-fun m!810951 () Bool)

(assert (=> start!73990 m!810951))

(declare-fun m!810953 () Bool)

(assert (=> b!869299 m!810953))

(declare-fun m!810955 () Bool)

(assert (=> b!869299 m!810955))

(assert (=> b!869299 m!810955))

(declare-fun m!810957 () Bool)

(assert (=> b!869299 m!810957))

(declare-fun m!810959 () Bool)

(assert (=> b!869299 m!810959))

(check-sat b_and!24647 (not start!73990) (not b_next!14877) (not b!869289) tp_is_empty!17013 (not b!869297) (not mapNonEmpty!27119) (not b!869299) (not b!869296) (not b!869298) (not b!869290))
(check-sat b_and!24647 (not b_next!14877))

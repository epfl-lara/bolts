; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74008 () Bool)

(assert start!74008)

(declare-fun b_free!14895 () Bool)

(declare-fun b_next!14895 () Bool)

(assert (=> start!74008 (= b_free!14895 (not b_next!14895))))

(declare-fun tp!52189 () Bool)

(declare-fun b_and!24665 () Bool)

(assert (=> start!74008 (= tp!52189 b_and!24665)))

(declare-fun b!869613 () Bool)

(declare-fun e!484304 () Bool)

(declare-fun tp_is_empty!17031 () Bool)

(assert (=> b!869613 (= e!484304 tp_is_empty!17031)))

(declare-fun mapNonEmpty!27146 () Bool)

(declare-fun mapRes!27146 () Bool)

(declare-fun tp!52190 () Bool)

(assert (=> mapNonEmpty!27146 (= mapRes!27146 (and tp!52190 e!484304))))

(declare-datatypes ((V!27755 0))(
  ( (V!27756 (val!8563 Int)) )
))
(declare-datatypes ((ValueCell!8076 0))(
  ( (ValueCellFull!8076 (v!10984 V!27755)) (EmptyCell!8076) )
))
(declare-fun mapValue!27146 () ValueCell!8076)

(declare-fun mapRest!27146 () (Array (_ BitVec 32) ValueCell!8076))

(declare-datatypes ((array!50194 0))(
  ( (array!50195 (arr!24124 (Array (_ BitVec 32) ValueCell!8076)) (size!24565 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!50194)

(declare-fun mapKey!27146 () (_ BitVec 32))

(assert (=> mapNonEmpty!27146 (= (arr!24124 _values!688) (store mapRest!27146 mapKey!27146 mapValue!27146))))

(declare-fun b!869615 () Bool)

(declare-fun res!591115 () Bool)

(declare-fun e!484305 () Bool)

(assert (=> b!869615 (=> (not res!591115) (not e!484305))))

(declare-fun i!612 () (_ BitVec 32))

(declare-datatypes ((array!50196 0))(
  ( (array!50197 (arr!24125 (Array (_ BitVec 32) (_ BitVec 64))) (size!24566 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!50196)

(assert (=> b!869615 (= res!591115 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24566 _keys!868))))))

(declare-fun b!869616 () Bool)

(declare-fun res!591111 () Bool)

(assert (=> b!869616 (=> (not res!591111) (not e!484305))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!869616 (= res!591111 (and (= (size!24565 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24566 _keys!868) (size!24565 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!869617 () Bool)

(declare-fun e!484302 () Bool)

(declare-fun e!484300 () Bool)

(assert (=> b!869617 (= e!484302 (and e!484300 mapRes!27146))))

(declare-fun condMapEmpty!27146 () Bool)

(declare-fun mapDefault!27146 () ValueCell!8076)

(assert (=> b!869617 (= condMapEmpty!27146 (= (arr!24124 _values!688) ((as const (Array (_ BitVec 32) ValueCell!8076)) mapDefault!27146)))))

(declare-fun b!869618 () Bool)

(declare-fun res!591117 () Bool)

(assert (=> b!869618 (=> (not res!591117) (not e!484305))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> b!869618 (= res!591117 (and (= (select (arr!24125 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!869619 () Bool)

(declare-fun res!591116 () Bool)

(assert (=> b!869619 (=> (not res!591116) (not e!484305))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!869619 (= res!591116 (validMask!0 mask!1196))))

(declare-fun b!869614 () Bool)

(declare-fun res!591109 () Bool)

(assert (=> b!869614 (=> (not res!591109) (not e!484305))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!869614 (= res!591109 (validKeyInArray!0 k0!854))))

(declare-fun res!591114 () Bool)

(assert (=> start!74008 (=> (not res!591114) (not e!484305))))

(assert (=> start!74008 (= res!591114 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24566 _keys!868))))))

(assert (=> start!74008 e!484305))

(assert (=> start!74008 tp_is_empty!17031))

(assert (=> start!74008 true))

(assert (=> start!74008 tp!52189))

(declare-fun array_inv!19024 (array!50196) Bool)

(assert (=> start!74008 (array_inv!19024 _keys!868)))

(declare-fun array_inv!19025 (array!50194) Bool)

(assert (=> start!74008 (and (array_inv!19025 _values!688) e!484302)))

(declare-fun b!869620 () Bool)

(declare-fun res!591113 () Bool)

(assert (=> b!869620 (=> (not res!591113) (not e!484305))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!50196 (_ BitVec 32)) Bool)

(assert (=> b!869620 (= res!591113 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!869621 () Bool)

(assert (=> b!869621 (= e!484300 tp_is_empty!17031)))

(declare-fun b!869622 () Bool)

(declare-fun e!484301 () Bool)

(assert (=> b!869622 (= e!484301 (not true))))

(declare-fun lt!394857 () array!50194)

(declare-fun v!557 () V!27755)

(declare-fun defaultEntry!696 () Int)

(declare-fun minValue!654 () V!27755)

(declare-fun zeroValue!654 () V!27755)

(declare-datatypes ((tuple2!11372 0))(
  ( (tuple2!11373 (_1!5696 (_ BitVec 64)) (_2!5696 V!27755)) )
))
(declare-datatypes ((List!17229 0))(
  ( (Nil!17226) (Cons!17225 (h!18356 tuple2!11372) (t!24274 List!17229)) )
))
(declare-datatypes ((ListLongMap!10155 0))(
  ( (ListLongMap!10156 (toList!5093 List!17229)) )
))
(declare-fun getCurrentListMapNoExtraKeys!3057 (array!50196 array!50194 (_ BitVec 32) (_ BitVec 32) V!27755 V!27755 (_ BitVec 32) Int) ListLongMap!10155)

(declare-fun +!2378 (ListLongMap!10155 tuple2!11372) ListLongMap!10155)

(assert (=> b!869622 (= (getCurrentListMapNoExtraKeys!3057 _keys!868 lt!394857 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2378 (getCurrentListMapNoExtraKeys!3057 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!11373 k0!854 v!557)))))

(declare-datatypes ((Unit!29806 0))(
  ( (Unit!29807) )
))
(declare-fun lt!394854 () Unit!29806)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!609 (array!50196 array!50194 (_ BitVec 32) (_ BitVec 32) V!27755 V!27755 (_ BitVec 32) (_ BitVec 64) V!27755 (_ BitVec 32) Int) Unit!29806)

(assert (=> b!869622 (= lt!394854 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!609 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!869623 () Bool)

(declare-fun res!591110 () Bool)

(assert (=> b!869623 (=> (not res!591110) (not e!484305))))

(declare-datatypes ((List!17230 0))(
  ( (Nil!17227) (Cons!17226 (h!18357 (_ BitVec 64)) (t!24275 List!17230)) )
))
(declare-fun arrayNoDuplicates!0 (array!50196 (_ BitVec 32) List!17230) Bool)

(assert (=> b!869623 (= res!591110 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!17227))))

(declare-fun mapIsEmpty!27146 () Bool)

(assert (=> mapIsEmpty!27146 mapRes!27146))

(declare-fun b!869624 () Bool)

(assert (=> b!869624 (= e!484305 e!484301)))

(declare-fun res!591112 () Bool)

(assert (=> b!869624 (=> (not res!591112) (not e!484301))))

(assert (=> b!869624 (= res!591112 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!394855 () ListLongMap!10155)

(assert (=> b!869624 (= lt!394855 (getCurrentListMapNoExtraKeys!3057 _keys!868 lt!394857 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!869624 (= lt!394857 (array!50195 (store (arr!24124 _values!688) i!612 (ValueCellFull!8076 v!557)) (size!24565 _values!688)))))

(declare-fun lt!394856 () ListLongMap!10155)

(assert (=> b!869624 (= lt!394856 (getCurrentListMapNoExtraKeys!3057 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (= (and start!74008 res!591114) b!869619))

(assert (= (and b!869619 res!591116) b!869616))

(assert (= (and b!869616 res!591111) b!869620))

(assert (= (and b!869620 res!591113) b!869623))

(assert (= (and b!869623 res!591110) b!869615))

(assert (= (and b!869615 res!591115) b!869614))

(assert (= (and b!869614 res!591109) b!869618))

(assert (= (and b!869618 res!591117) b!869624))

(assert (= (and b!869624 res!591112) b!869622))

(assert (= (and b!869617 condMapEmpty!27146) mapIsEmpty!27146))

(assert (= (and b!869617 (not condMapEmpty!27146)) mapNonEmpty!27146))

(get-info :version)

(assert (= (and mapNonEmpty!27146 ((_ is ValueCellFull!8076) mapValue!27146)) b!869613))

(assert (= (and b!869617 ((_ is ValueCellFull!8076) mapDefault!27146)) b!869621))

(assert (= start!74008 b!869617))

(declare-fun m!811201 () Bool)

(assert (=> b!869623 m!811201))

(declare-fun m!811203 () Bool)

(assert (=> b!869624 m!811203))

(declare-fun m!811205 () Bool)

(assert (=> b!869624 m!811205))

(declare-fun m!811207 () Bool)

(assert (=> b!869624 m!811207))

(declare-fun m!811209 () Bool)

(assert (=> b!869619 m!811209))

(declare-fun m!811211 () Bool)

(assert (=> mapNonEmpty!27146 m!811211))

(declare-fun m!811213 () Bool)

(assert (=> b!869614 m!811213))

(declare-fun m!811215 () Bool)

(assert (=> b!869618 m!811215))

(declare-fun m!811217 () Bool)

(assert (=> b!869622 m!811217))

(declare-fun m!811219 () Bool)

(assert (=> b!869622 m!811219))

(assert (=> b!869622 m!811219))

(declare-fun m!811221 () Bool)

(assert (=> b!869622 m!811221))

(declare-fun m!811223 () Bool)

(assert (=> b!869622 m!811223))

(declare-fun m!811225 () Bool)

(assert (=> b!869620 m!811225))

(declare-fun m!811227 () Bool)

(assert (=> start!74008 m!811227))

(declare-fun m!811229 () Bool)

(assert (=> start!74008 m!811229))

(check-sat (not b_next!14895) (not b!869619) (not start!74008) (not mapNonEmpty!27146) b_and!24665 (not b!869623) (not b!869620) (not b!869624) (not b!869622) (not b!869614) tp_is_empty!17031)
(check-sat b_and!24665 (not b_next!14895))

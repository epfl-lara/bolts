; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73414 () Bool)

(assert start!73414)

(declare-fun b_free!14301 () Bool)

(declare-fun b_next!14301 () Bool)

(assert (=> start!73414 (= b_free!14301 (not b_next!14301))))

(declare-fun tp!50408 () Bool)

(declare-fun b_and!23675 () Bool)

(assert (=> start!73414 (= tp!50408 b_and!23675)))

(declare-fun b!856392 () Bool)

(declare-fun res!581789 () Bool)

(declare-fun e!477401 () Bool)

(assert (=> b!856392 (=> (not res!581789) (not e!477401))))

(declare-datatypes ((array!49042 0))(
  ( (array!49043 (arr!23548 (Array (_ BitVec 32) (_ BitVec 64))) (size!23989 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49042)

(declare-datatypes ((List!16760 0))(
  ( (Nil!16757) (Cons!16756 (h!17887 (_ BitVec 64)) (t!23409 List!16760)) )
))
(declare-fun arrayNoDuplicates!0 (array!49042 (_ BitVec 32) List!16760) Bool)

(assert (=> b!856392 (= res!581789 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16757))))

(declare-fun b!856393 () Bool)

(declare-fun e!477398 () Bool)

(declare-fun tp_is_empty!16437 () Bool)

(assert (=> b!856393 (= e!477398 tp_is_empty!16437)))

(declare-fun b!856394 () Bool)

(declare-fun e!477402 () Bool)

(assert (=> b!856394 (= e!477402 tp_is_empty!16437)))

(declare-fun b!856395 () Bool)

(declare-fun res!581788 () Bool)

(assert (=> b!856395 (=> (not res!581788) (not e!477401))))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!856395 (= res!581788 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23989 _keys!868))))))

(declare-fun b!856396 () Bool)

(declare-fun e!477400 () Bool)

(assert (=> b!856396 (= e!477400 (not true))))

(declare-datatypes ((V!26963 0))(
  ( (V!26964 (val!8266 Int)) )
))
(declare-fun v!557 () V!26963)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((ValueCell!7779 0))(
  ( (ValueCellFull!7779 (v!10687 V!26963)) (EmptyCell!7779) )
))
(declare-datatypes ((array!49044 0))(
  ( (array!49045 (arr!23549 (Array (_ BitVec 32) ValueCell!7779)) (size!23990 (_ BitVec 32))) )
))
(declare-fun lt!385936 () array!49044)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun _values!688 () array!49044)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26963)

(declare-fun zeroValue!654 () V!26963)

(declare-datatypes ((tuple2!10886 0))(
  ( (tuple2!10887 (_1!5453 (_ BitVec 64)) (_2!5453 V!26963)) )
))
(declare-datatypes ((List!16761 0))(
  ( (Nil!16758) (Cons!16757 (h!17888 tuple2!10886) (t!23410 List!16761)) )
))
(declare-datatypes ((ListLongMap!9669 0))(
  ( (ListLongMap!9670 (toList!4850 List!16761)) )
))
(declare-fun getCurrentListMapNoExtraKeys!2832 (array!49042 array!49044 (_ BitVec 32) (_ BitVec 32) V!26963 V!26963 (_ BitVec 32) Int) ListLongMap!9669)

(declare-fun +!2159 (ListLongMap!9669 tuple2!10886) ListLongMap!9669)

(assert (=> b!856396 (= (getCurrentListMapNoExtraKeys!2832 _keys!868 lt!385936 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2159 (getCurrentListMapNoExtraKeys!2832 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10887 k0!854 v!557)))))

(declare-datatypes ((Unit!29160 0))(
  ( (Unit!29161) )
))
(declare-fun lt!385938 () Unit!29160)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!419 (array!49042 array!49044 (_ BitVec 32) (_ BitVec 32) V!26963 V!26963 (_ BitVec 32) (_ BitVec 64) V!26963 (_ BitVec 32) Int) Unit!29160)

(assert (=> b!856396 (= lt!385938 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!419 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!856397 () Bool)

(declare-fun res!581790 () Bool)

(assert (=> b!856397 (=> (not res!581790) (not e!477401))))

(assert (=> b!856397 (= res!581790 (and (= (select (arr!23548 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!856398 () Bool)

(declare-fun e!477397 () Bool)

(declare-fun mapRes!26255 () Bool)

(assert (=> b!856398 (= e!477397 (and e!477402 mapRes!26255))))

(declare-fun condMapEmpty!26255 () Bool)

(declare-fun mapDefault!26255 () ValueCell!7779)

(assert (=> b!856398 (= condMapEmpty!26255 (= (arr!23549 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7779)) mapDefault!26255)))))

(declare-fun b!856399 () Bool)

(declare-fun res!581787 () Bool)

(assert (=> b!856399 (=> (not res!581787) (not e!477401))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!856399 (= res!581787 (validMask!0 mask!1196))))

(declare-fun b!856400 () Bool)

(declare-fun res!581785 () Bool)

(assert (=> b!856400 (=> (not res!581785) (not e!477401))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!856400 (= res!581785 (validKeyInArray!0 k0!854))))

(declare-fun b!856401 () Bool)

(assert (=> b!856401 (= e!477401 e!477400)))

(declare-fun res!581786 () Bool)

(assert (=> b!856401 (=> (not res!581786) (not e!477400))))

(assert (=> b!856401 (= res!581786 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun lt!385935 () ListLongMap!9669)

(assert (=> b!856401 (= lt!385935 (getCurrentListMapNoExtraKeys!2832 _keys!868 lt!385936 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(assert (=> b!856401 (= lt!385936 (array!49045 (store (arr!23549 _values!688) i!612 (ValueCellFull!7779 v!557)) (size!23990 _values!688)))))

(declare-fun lt!385937 () ListLongMap!9669)

(assert (=> b!856401 (= lt!385937 (getCurrentListMapNoExtraKeys!2832 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!856402 () Bool)

(declare-fun res!581793 () Bool)

(assert (=> b!856402 (=> (not res!581793) (not e!477401))))

(assert (=> b!856402 (= res!581793 (and (= (size!23990 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23989 _keys!868) (size!23990 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26255 () Bool)

(assert (=> mapIsEmpty!26255 mapRes!26255))

(declare-fun res!581792 () Bool)

(assert (=> start!73414 (=> (not res!581792) (not e!477401))))

(assert (=> start!73414 (= res!581792 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23989 _keys!868))))))

(assert (=> start!73414 e!477401))

(assert (=> start!73414 tp_is_empty!16437))

(assert (=> start!73414 true))

(assert (=> start!73414 tp!50408))

(declare-fun array_inv!18638 (array!49042) Bool)

(assert (=> start!73414 (array_inv!18638 _keys!868)))

(declare-fun array_inv!18639 (array!49044) Bool)

(assert (=> start!73414 (and (array_inv!18639 _values!688) e!477397)))

(declare-fun b!856403 () Bool)

(declare-fun res!581791 () Bool)

(assert (=> b!856403 (=> (not res!581791) (not e!477401))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49042 (_ BitVec 32)) Bool)

(assert (=> b!856403 (= res!581791 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!26255 () Bool)

(declare-fun tp!50407 () Bool)

(assert (=> mapNonEmpty!26255 (= mapRes!26255 (and tp!50407 e!477398))))

(declare-fun mapKey!26255 () (_ BitVec 32))

(declare-fun mapValue!26255 () ValueCell!7779)

(declare-fun mapRest!26255 () (Array (_ BitVec 32) ValueCell!7779))

(assert (=> mapNonEmpty!26255 (= (arr!23549 _values!688) (store mapRest!26255 mapKey!26255 mapValue!26255))))

(assert (= (and start!73414 res!581792) b!856399))

(assert (= (and b!856399 res!581787) b!856402))

(assert (= (and b!856402 res!581793) b!856403))

(assert (= (and b!856403 res!581791) b!856392))

(assert (= (and b!856392 res!581789) b!856395))

(assert (= (and b!856395 res!581788) b!856400))

(assert (= (and b!856400 res!581785) b!856397))

(assert (= (and b!856397 res!581790) b!856401))

(assert (= (and b!856401 res!581786) b!856396))

(assert (= (and b!856398 condMapEmpty!26255) mapIsEmpty!26255))

(assert (= (and b!856398 (not condMapEmpty!26255)) mapNonEmpty!26255))

(get-info :version)

(assert (= (and mapNonEmpty!26255 ((_ is ValueCellFull!7779) mapValue!26255)) b!856393))

(assert (= (and b!856398 ((_ is ValueCellFull!7779) mapDefault!26255)) b!856394))

(assert (= start!73414 b!856398))

(declare-fun m!797425 () Bool)

(assert (=> b!856392 m!797425))

(declare-fun m!797427 () Bool)

(assert (=> b!856400 m!797427))

(declare-fun m!797429 () Bool)

(assert (=> b!856401 m!797429))

(declare-fun m!797431 () Bool)

(assert (=> b!856401 m!797431))

(declare-fun m!797433 () Bool)

(assert (=> b!856401 m!797433))

(declare-fun m!797435 () Bool)

(assert (=> b!856399 m!797435))

(declare-fun m!797437 () Bool)

(assert (=> mapNonEmpty!26255 m!797437))

(declare-fun m!797439 () Bool)

(assert (=> b!856403 m!797439))

(declare-fun m!797441 () Bool)

(assert (=> b!856396 m!797441))

(declare-fun m!797443 () Bool)

(assert (=> b!856396 m!797443))

(assert (=> b!856396 m!797443))

(declare-fun m!797445 () Bool)

(assert (=> b!856396 m!797445))

(declare-fun m!797447 () Bool)

(assert (=> b!856396 m!797447))

(declare-fun m!797449 () Bool)

(assert (=> start!73414 m!797449))

(declare-fun m!797451 () Bool)

(assert (=> start!73414 m!797451))

(declare-fun m!797453 () Bool)

(assert (=> b!856397 m!797453))

(check-sat (not b!856403) (not start!73414) (not b!856400) (not b!856396) (not b_next!14301) (not b!856401) (not mapNonEmpty!26255) (not b!856399) tp_is_empty!16437 b_and!23675 (not b!856392))
(check-sat b_and!23675 (not b_next!14301))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73480 () Bool)

(assert start!73480)

(declare-fun b_free!14367 () Bool)

(declare-fun b_next!14367 () Bool)

(assert (=> start!73480 (= b_free!14367 (not b_next!14367))))

(declare-fun tp!50606 () Bool)

(declare-fun b_and!23741 () Bool)

(assert (=> start!73480 (= tp!50606 b_and!23741)))

(declare-fun mapIsEmpty!26354 () Bool)

(declare-fun mapRes!26354 () Bool)

(assert (=> mapIsEmpty!26354 mapRes!26354))

(declare-fun b!857580 () Bool)

(declare-fun res!582681 () Bool)

(declare-fun e!477991 () Bool)

(assert (=> b!857580 (=> (not res!582681) (not e!477991))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!857580 (= res!582681 (validMask!0 mask!1196))))

(declare-fun b!857582 () Bool)

(declare-fun res!582682 () Bool)

(assert (=> b!857582 (=> (not res!582682) (not e!477991))))

(declare-datatypes ((array!49168 0))(
  ( (array!49169 (arr!23611 (Array (_ BitVec 32) (_ BitVec 64))) (size!24052 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!49168)

(declare-datatypes ((List!16806 0))(
  ( (Nil!16803) (Cons!16802 (h!17933 (_ BitVec 64)) (t!23455 List!16806)) )
))
(declare-fun arrayNoDuplicates!0 (array!49168 (_ BitVec 32) List!16806) Bool)

(assert (=> b!857582 (= res!582682 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16803))))

(declare-fun mapNonEmpty!26354 () Bool)

(declare-fun tp!50605 () Bool)

(declare-fun e!477993 () Bool)

(assert (=> mapNonEmpty!26354 (= mapRes!26354 (and tp!50605 e!477993))))

(declare-datatypes ((V!27051 0))(
  ( (V!27052 (val!8299 Int)) )
))
(declare-datatypes ((ValueCell!7812 0))(
  ( (ValueCellFull!7812 (v!10720 V!27051)) (EmptyCell!7812) )
))
(declare-fun mapValue!26354 () ValueCell!7812)

(declare-fun mapKey!26354 () (_ BitVec 32))

(declare-fun mapRest!26354 () (Array (_ BitVec 32) ValueCell!7812))

(declare-datatypes ((array!49170 0))(
  ( (array!49171 (arr!23612 (Array (_ BitVec 32) ValueCell!7812)) (size!24053 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!49170)

(assert (=> mapNonEmpty!26354 (= (arr!23612 _values!688) (store mapRest!26354 mapKey!26354 mapValue!26354))))

(declare-fun b!857583 () Bool)

(declare-fun e!477992 () Bool)

(assert (=> b!857583 (= e!477991 e!477992)))

(declare-fun res!582683 () Bool)

(assert (=> b!857583 (=> (not res!582683) (not e!477992))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun i!612 () (_ BitVec 32))

(assert (=> b!857583 (= res!582683 (and (not (= from!1053 i!612)) (bvslt from!1053 i!612)))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun minValue!654 () V!27051)

(declare-fun zeroValue!654 () V!27051)

(declare-fun lt!386332 () array!49170)

(declare-fun defaultEntry!696 () Int)

(declare-datatypes ((tuple2!10934 0))(
  ( (tuple2!10935 (_1!5477 (_ BitVec 64)) (_2!5477 V!27051)) )
))
(declare-datatypes ((List!16807 0))(
  ( (Nil!16804) (Cons!16803 (h!17934 tuple2!10934) (t!23456 List!16807)) )
))
(declare-datatypes ((ListLongMap!9717 0))(
  ( (ListLongMap!9718 (toList!4874 List!16807)) )
))
(declare-fun lt!386331 () ListLongMap!9717)

(declare-fun getCurrentListMapNoExtraKeys!2856 (array!49168 array!49170 (_ BitVec 32) (_ BitVec 32) V!27051 V!27051 (_ BitVec 32) Int) ListLongMap!9717)

(assert (=> b!857583 (= lt!386331 (getCurrentListMapNoExtraKeys!2856 _keys!868 lt!386332 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun v!557 () V!27051)

(assert (=> b!857583 (= lt!386332 (array!49171 (store (arr!23612 _values!688) i!612 (ValueCellFull!7812 v!557)) (size!24053 _values!688)))))

(declare-fun lt!386334 () ListLongMap!9717)

(assert (=> b!857583 (= lt!386334 (getCurrentListMapNoExtraKeys!2856 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!857584 () Bool)

(declare-fun e!477995 () Bool)

(declare-fun e!477994 () Bool)

(assert (=> b!857584 (= e!477995 (and e!477994 mapRes!26354))))

(declare-fun condMapEmpty!26354 () Bool)

(declare-fun mapDefault!26354 () ValueCell!7812)

(assert (=> b!857584 (= condMapEmpty!26354 (= (arr!23612 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7812)) mapDefault!26354)))))

(declare-fun b!857585 () Bool)

(declare-fun res!582676 () Bool)

(assert (=> b!857585 (=> (not res!582676) (not e!477991))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!49168 (_ BitVec 32)) Bool)

(assert (=> b!857585 (= res!582676 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!857586 () Bool)

(assert (=> b!857586 (= e!477992 (not true))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun +!2182 (ListLongMap!9717 tuple2!10934) ListLongMap!9717)

(assert (=> b!857586 (= (getCurrentListMapNoExtraKeys!2856 _keys!868 lt!386332 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (+!2182 (getCurrentListMapNoExtraKeys!2856 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696) (tuple2!10935 k0!854 v!557)))))

(declare-datatypes ((Unit!29206 0))(
  ( (Unit!29207) )
))
(declare-fun lt!386333 () Unit!29206)

(declare-fun lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!442 (array!49168 array!49170 (_ BitVec 32) (_ BitVec 32) V!27051 V!27051 (_ BitVec 32) (_ BitVec 64) V!27051 (_ BitVec 32) Int) Unit!29206)

(assert (=> b!857586 (= lt!386333 (lemmaChangeValueExistingKeyToArrayThenMapNoExtrasAddPair!442 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 i!612 k0!854 v!557 (bvadd #b00000000000000000000000000000001 from!1053) defaultEntry!696))))

(declare-fun b!857587 () Bool)

(declare-fun res!582684 () Bool)

(assert (=> b!857587 (=> (not res!582684) (not e!477991))))

(assert (=> b!857587 (= res!582684 (and (= (select (arr!23611 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun res!582678 () Bool)

(assert (=> start!73480 (=> (not res!582678) (not e!477991))))

(assert (=> start!73480 (= res!582678 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!24052 _keys!868))))))

(assert (=> start!73480 e!477991))

(declare-fun tp_is_empty!16503 () Bool)

(assert (=> start!73480 tp_is_empty!16503))

(assert (=> start!73480 true))

(assert (=> start!73480 tp!50606))

(declare-fun array_inv!18684 (array!49168) Bool)

(assert (=> start!73480 (array_inv!18684 _keys!868)))

(declare-fun array_inv!18685 (array!49170) Bool)

(assert (=> start!73480 (and (array_inv!18685 _values!688) e!477995)))

(declare-fun b!857581 () Bool)

(declare-fun res!582679 () Bool)

(assert (=> b!857581 (=> (not res!582679) (not e!477991))))

(assert (=> b!857581 (= res!582679 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!24052 _keys!868))))))

(declare-fun b!857588 () Bool)

(declare-fun res!582677 () Bool)

(assert (=> b!857588 (=> (not res!582677) (not e!477991))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!857588 (= res!582677 (validKeyInArray!0 k0!854))))

(declare-fun b!857589 () Bool)

(assert (=> b!857589 (= e!477994 tp_is_empty!16503)))

(declare-fun b!857590 () Bool)

(assert (=> b!857590 (= e!477993 tp_is_empty!16503)))

(declare-fun b!857591 () Bool)

(declare-fun res!582680 () Bool)

(assert (=> b!857591 (=> (not res!582680) (not e!477991))))

(assert (=> b!857591 (= res!582680 (and (= (size!24053 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!24052 _keys!868) (size!24053 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(assert (= (and start!73480 res!582678) b!857580))

(assert (= (and b!857580 res!582681) b!857591))

(assert (= (and b!857591 res!582680) b!857585))

(assert (= (and b!857585 res!582676) b!857582))

(assert (= (and b!857582 res!582682) b!857581))

(assert (= (and b!857581 res!582679) b!857588))

(assert (= (and b!857588 res!582677) b!857587))

(assert (= (and b!857587 res!582684) b!857583))

(assert (= (and b!857583 res!582683) b!857586))

(assert (= (and b!857584 condMapEmpty!26354) mapIsEmpty!26354))

(assert (= (and b!857584 (not condMapEmpty!26354)) mapNonEmpty!26354))

(get-info :version)

(assert (= (and mapNonEmpty!26354 ((_ is ValueCellFull!7812) mapValue!26354)) b!857590))

(assert (= (and b!857584 ((_ is ValueCellFull!7812) mapDefault!26354)) b!857589))

(assert (= start!73480 b!857584))

(declare-fun m!798415 () Bool)

(assert (=> b!857582 m!798415))

(declare-fun m!798417 () Bool)

(assert (=> b!857583 m!798417))

(declare-fun m!798419 () Bool)

(assert (=> b!857583 m!798419))

(declare-fun m!798421 () Bool)

(assert (=> b!857583 m!798421))

(declare-fun m!798423 () Bool)

(assert (=> b!857580 m!798423))

(declare-fun m!798425 () Bool)

(assert (=> b!857588 m!798425))

(declare-fun m!798427 () Bool)

(assert (=> b!857585 m!798427))

(declare-fun m!798429 () Bool)

(assert (=> b!857586 m!798429))

(declare-fun m!798431 () Bool)

(assert (=> b!857586 m!798431))

(assert (=> b!857586 m!798431))

(declare-fun m!798433 () Bool)

(assert (=> b!857586 m!798433))

(declare-fun m!798435 () Bool)

(assert (=> b!857586 m!798435))

(declare-fun m!798437 () Bool)

(assert (=> mapNonEmpty!26354 m!798437))

(declare-fun m!798439 () Bool)

(assert (=> start!73480 m!798439))

(declare-fun m!798441 () Bool)

(assert (=> start!73480 m!798441))

(declare-fun m!798443 () Bool)

(assert (=> b!857587 m!798443))

(check-sat (not b!857580) (not b_next!14367) tp_is_empty!16503 (not b!857586) (not b!857588) (not mapNonEmpty!26354) (not b!857585) (not b!857583) (not start!73480) b_and!23741 (not b!857582))
(check-sat b_and!23741 (not b_next!14367))

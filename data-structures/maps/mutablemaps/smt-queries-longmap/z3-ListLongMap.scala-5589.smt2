; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73348 () Bool)

(assert start!73348)

(declare-fun b_free!14235 () Bool)

(declare-fun b_next!14235 () Bool)

(assert (=> start!73348 (= b_free!14235 (not b_next!14235))))

(declare-fun tp!50210 () Bool)

(declare-fun b_and!23609 () Bool)

(assert (=> start!73348 (= tp!50210 b_and!23609)))

(declare-fun mapNonEmpty!26156 () Bool)

(declare-fun mapRes!26156 () Bool)

(declare-fun tp!50209 () Bool)

(declare-fun e!476856 () Bool)

(assert (=> mapNonEmpty!26156 (= mapRes!26156 (and tp!50209 e!476856))))

(declare-datatypes ((V!26875 0))(
  ( (V!26876 (val!8233 Int)) )
))
(declare-datatypes ((ValueCell!7746 0))(
  ( (ValueCellFull!7746 (v!10654 V!26875)) (EmptyCell!7746) )
))
(declare-fun mapRest!26156 () (Array (_ BitVec 32) ValueCell!7746))

(declare-fun mapKey!26156 () (_ BitVec 32))

(declare-datatypes ((array!48918 0))(
  ( (array!48919 (arr!23486 (Array (_ BitVec 32) ValueCell!7746)) (size!23927 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48918)

(declare-fun mapValue!26156 () ValueCell!7746)

(assert (=> mapNonEmpty!26156 (= (arr!23486 _values!688) (store mapRest!26156 mapKey!26156 mapValue!26156))))

(declare-fun b!855253 () Bool)

(declare-fun res!580949 () Bool)

(declare-fun e!476852 () Bool)

(assert (=> b!855253 (=> (not res!580949) (not e!476852))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855253 (= res!580949 (validMask!0 mask!1196))))

(declare-fun b!855254 () Bool)

(assert (=> b!855254 (= e!476852 false)))

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26875)

(declare-fun zeroValue!654 () V!26875)

(declare-fun v!557 () V!26875)

(declare-datatypes ((tuple2!10836 0))(
  ( (tuple2!10837 (_1!5428 (_ BitVec 64)) (_2!5428 V!26875)) )
))
(declare-datatypes ((List!16712 0))(
  ( (Nil!16709) (Cons!16708 (h!17839 tuple2!10836) (t!23361 List!16712)) )
))
(declare-datatypes ((ListLongMap!9619 0))(
  ( (ListLongMap!9620 (toList!4825 List!16712)) )
))
(declare-fun lt!385637 () ListLongMap!9619)

(declare-datatypes ((array!48920 0))(
  ( (array!48921 (arr!23487 (Array (_ BitVec 32) (_ BitVec 64))) (size!23928 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48920)

(declare-fun getCurrentListMapNoExtraKeys!2807 (array!48920 array!48918 (_ BitVec 32) (_ BitVec 32) V!26875 V!26875 (_ BitVec 32) Int) ListLongMap!9619)

(assert (=> b!855254 (= lt!385637 (getCurrentListMapNoExtraKeys!2807 _keys!868 (array!48919 (store (arr!23486 _values!688) i!612 (ValueCellFull!7746 v!557)) (size!23927 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385638 () ListLongMap!9619)

(assert (=> b!855254 (= lt!385638 (getCurrentListMapNoExtraKeys!2807 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855255 () Bool)

(declare-fun res!580948 () Bool)

(assert (=> b!855255 (=> (not res!580948) (not e!476852))))

(assert (=> b!855255 (= res!580948 (and (= (size!23927 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23928 _keys!868) (size!23927 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!26156 () Bool)

(assert (=> mapIsEmpty!26156 mapRes!26156))

(declare-fun b!855256 () Bool)

(declare-fun e!476855 () Bool)

(declare-fun tp_is_empty!16371 () Bool)

(assert (=> b!855256 (= e!476855 tp_is_empty!16371)))

(declare-fun b!855257 () Bool)

(assert (=> b!855257 (= e!476856 tp_is_empty!16371)))

(declare-fun b!855258 () Bool)

(declare-fun res!580943 () Bool)

(assert (=> b!855258 (=> (not res!580943) (not e!476852))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855258 (= res!580943 (validKeyInArray!0 k0!854))))

(declare-fun b!855259 () Bool)

(declare-fun res!580944 () Bool)

(assert (=> b!855259 (=> (not res!580944) (not e!476852))))

(assert (=> b!855259 (= res!580944 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23928 _keys!868))))))

(declare-fun b!855260 () Bool)

(declare-fun res!580946 () Bool)

(assert (=> b!855260 (=> (not res!580946) (not e!476852))))

(declare-datatypes ((List!16713 0))(
  ( (Nil!16710) (Cons!16709 (h!17840 (_ BitVec 64)) (t!23362 List!16713)) )
))
(declare-fun arrayNoDuplicates!0 (array!48920 (_ BitVec 32) List!16713) Bool)

(assert (=> b!855260 (= res!580946 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16710))))

(declare-fun b!855261 () Bool)

(declare-fun e!476854 () Bool)

(assert (=> b!855261 (= e!476854 (and e!476855 mapRes!26156))))

(declare-fun condMapEmpty!26156 () Bool)

(declare-fun mapDefault!26156 () ValueCell!7746)

(assert (=> b!855261 (= condMapEmpty!26156 (= (arr!23486 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7746)) mapDefault!26156)))))

(declare-fun b!855262 () Bool)

(declare-fun res!580950 () Bool)

(assert (=> b!855262 (=> (not res!580950) (not e!476852))))

(assert (=> b!855262 (= res!580950 (and (= (select (arr!23487 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!855263 () Bool)

(declare-fun res!580947 () Bool)

(assert (=> b!855263 (=> (not res!580947) (not e!476852))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48920 (_ BitVec 32)) Bool)

(assert (=> b!855263 (= res!580947 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!580945 () Bool)

(assert (=> start!73348 (=> (not res!580945) (not e!476852))))

(assert (=> start!73348 (= res!580945 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23928 _keys!868))))))

(assert (=> start!73348 e!476852))

(assert (=> start!73348 tp_is_empty!16371))

(assert (=> start!73348 true))

(assert (=> start!73348 tp!50210))

(declare-fun array_inv!18596 (array!48920) Bool)

(assert (=> start!73348 (array_inv!18596 _keys!868)))

(declare-fun array_inv!18597 (array!48918) Bool)

(assert (=> start!73348 (and (array_inv!18597 _values!688) e!476854)))

(assert (= (and start!73348 res!580945) b!855253))

(assert (= (and b!855253 res!580949) b!855255))

(assert (= (and b!855255 res!580948) b!855263))

(assert (= (and b!855263 res!580947) b!855260))

(assert (= (and b!855260 res!580946) b!855259))

(assert (= (and b!855259 res!580944) b!855258))

(assert (= (and b!855258 res!580943) b!855262))

(assert (= (and b!855262 res!580950) b!855254))

(assert (= (and b!855261 condMapEmpty!26156) mapIsEmpty!26156))

(assert (= (and b!855261 (not condMapEmpty!26156)) mapNonEmpty!26156))

(get-info :version)

(assert (= (and mapNonEmpty!26156 ((_ is ValueCellFull!7746) mapValue!26156)) b!855257))

(assert (= (and b!855261 ((_ is ValueCellFull!7746) mapDefault!26156)) b!855256))

(assert (= start!73348 b!855261))

(declare-fun m!796571 () Bool)

(assert (=> start!73348 m!796571))

(declare-fun m!796573 () Bool)

(assert (=> start!73348 m!796573))

(declare-fun m!796575 () Bool)

(assert (=> b!855263 m!796575))

(declare-fun m!796577 () Bool)

(assert (=> b!855262 m!796577))

(declare-fun m!796579 () Bool)

(assert (=> b!855260 m!796579))

(declare-fun m!796581 () Bool)

(assert (=> b!855253 m!796581))

(declare-fun m!796583 () Bool)

(assert (=> b!855258 m!796583))

(declare-fun m!796585 () Bool)

(assert (=> b!855254 m!796585))

(declare-fun m!796587 () Bool)

(assert (=> b!855254 m!796587))

(declare-fun m!796589 () Bool)

(assert (=> b!855254 m!796589))

(declare-fun m!796591 () Bool)

(assert (=> mapNonEmpty!26156 m!796591))

(check-sat (not b!855254) (not b!855260) b_and!23609 (not mapNonEmpty!26156) (not b_next!14235) (not b!855263) (not b!855253) (not b!855258) (not start!73348) tp_is_empty!16371)
(check-sat b_and!23609 (not b_next!14235))

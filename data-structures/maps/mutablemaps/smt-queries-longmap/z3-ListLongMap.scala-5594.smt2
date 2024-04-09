; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73378 () Bool)

(assert start!73378)

(declare-fun b_free!14265 () Bool)

(declare-fun b_next!14265 () Bool)

(assert (=> start!73378 (= b_free!14265 (not b_next!14265))))

(declare-fun tp!50300 () Bool)

(declare-fun b_and!23639 () Bool)

(assert (=> start!73378 (= tp!50300 b_and!23639)))

(declare-fun res!581306 () Bool)

(declare-fun e!477077 () Bool)

(assert (=> start!73378 (=> (not res!581306) (not e!477077))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!48972 0))(
  ( (array!48973 (arr!23513 (Array (_ BitVec 32) (_ BitVec 64))) (size!23954 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48972)

(assert (=> start!73378 (= res!581306 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23954 _keys!868))))))

(assert (=> start!73378 e!477077))

(declare-fun tp_is_empty!16401 () Bool)

(assert (=> start!73378 tp_is_empty!16401))

(assert (=> start!73378 true))

(assert (=> start!73378 tp!50300))

(declare-fun array_inv!18614 (array!48972) Bool)

(assert (=> start!73378 (array_inv!18614 _keys!868)))

(declare-datatypes ((V!26915 0))(
  ( (V!26916 (val!8248 Int)) )
))
(declare-datatypes ((ValueCell!7761 0))(
  ( (ValueCellFull!7761 (v!10669 V!26915)) (EmptyCell!7761) )
))
(declare-datatypes ((array!48974 0))(
  ( (array!48975 (arr!23514 (Array (_ BitVec 32) ValueCell!7761)) (size!23955 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48974)

(declare-fun e!477079 () Bool)

(declare-fun array_inv!18615 (array!48974) Bool)

(assert (=> start!73378 (and (array_inv!18615 _values!688) e!477079)))

(declare-fun mapIsEmpty!26201 () Bool)

(declare-fun mapRes!26201 () Bool)

(assert (=> mapIsEmpty!26201 mapRes!26201))

(declare-fun b!855748 () Bool)

(assert (=> b!855748 (= e!477077 false)))

(declare-datatypes ((tuple2!10860 0))(
  ( (tuple2!10861 (_1!5440 (_ BitVec 64)) (_2!5440 V!26915)) )
))
(declare-datatypes ((List!16734 0))(
  ( (Nil!16731) (Cons!16730 (h!17861 tuple2!10860) (t!23383 List!16734)) )
))
(declare-datatypes ((ListLongMap!9643 0))(
  ( (ListLongMap!9644 (toList!4837 List!16734)) )
))
(declare-fun lt!385727 () ListLongMap!9643)

(declare-fun v!557 () V!26915)

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun minValue!654 () V!26915)

(declare-fun zeroValue!654 () V!26915)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun getCurrentListMapNoExtraKeys!2819 (array!48972 array!48974 (_ BitVec 32) (_ BitVec 32) V!26915 V!26915 (_ BitVec 32) Int) ListLongMap!9643)

(assert (=> b!855748 (= lt!385727 (getCurrentListMapNoExtraKeys!2819 _keys!868 (array!48975 (store (arr!23514 _values!688) i!612 (ValueCellFull!7761 v!557)) (size!23955 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385728 () ListLongMap!9643)

(assert (=> b!855748 (= lt!385728 (getCurrentListMapNoExtraKeys!2819 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!855749 () Bool)

(declare-fun res!581307 () Bool)

(assert (=> b!855749 (=> (not res!581307) (not e!477077))))

(assert (=> b!855749 (= res!581307 (and (= (size!23955 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23954 _keys!868) (size!23955 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!855750 () Bool)

(declare-fun res!581310 () Bool)

(assert (=> b!855750 (=> (not res!581310) (not e!477077))))

(declare-datatypes ((List!16735 0))(
  ( (Nil!16732) (Cons!16731 (h!17862 (_ BitVec 64)) (t!23384 List!16735)) )
))
(declare-fun arrayNoDuplicates!0 (array!48972 (_ BitVec 32) List!16735) Bool)

(assert (=> b!855750 (= res!581310 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16732))))

(declare-fun b!855751 () Bool)

(declare-fun res!581305 () Bool)

(assert (=> b!855751 (=> (not res!581305) (not e!477077))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!855751 (= res!581305 (validKeyInArray!0 k0!854))))

(declare-fun mapNonEmpty!26201 () Bool)

(declare-fun tp!50299 () Bool)

(declare-fun e!477081 () Bool)

(assert (=> mapNonEmpty!26201 (= mapRes!26201 (and tp!50299 e!477081))))

(declare-fun mapValue!26201 () ValueCell!7761)

(declare-fun mapKey!26201 () (_ BitVec 32))

(declare-fun mapRest!26201 () (Array (_ BitVec 32) ValueCell!7761))

(assert (=> mapNonEmpty!26201 (= (arr!23514 _values!688) (store mapRest!26201 mapKey!26201 mapValue!26201))))

(declare-fun b!855752 () Bool)

(declare-fun e!477078 () Bool)

(assert (=> b!855752 (= e!477079 (and e!477078 mapRes!26201))))

(declare-fun condMapEmpty!26201 () Bool)

(declare-fun mapDefault!26201 () ValueCell!7761)

(assert (=> b!855752 (= condMapEmpty!26201 (= (arr!23514 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7761)) mapDefault!26201)))))

(declare-fun b!855753 () Bool)

(declare-fun res!581309 () Bool)

(assert (=> b!855753 (=> (not res!581309) (not e!477077))))

(assert (=> b!855753 (= res!581309 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23954 _keys!868))))))

(declare-fun b!855754 () Bool)

(declare-fun res!581304 () Bool)

(assert (=> b!855754 (=> (not res!581304) (not e!477077))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48972 (_ BitVec 32)) Bool)

(assert (=> b!855754 (= res!581304 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun b!855755 () Bool)

(assert (=> b!855755 (= e!477078 tp_is_empty!16401)))

(declare-fun b!855756 () Bool)

(declare-fun res!581303 () Bool)

(assert (=> b!855756 (=> (not res!581303) (not e!477077))))

(assert (=> b!855756 (= res!581303 (and (= (select (arr!23513 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!855757 () Bool)

(declare-fun res!581308 () Bool)

(assert (=> b!855757 (=> (not res!581308) (not e!477077))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!855757 (= res!581308 (validMask!0 mask!1196))))

(declare-fun b!855758 () Bool)

(assert (=> b!855758 (= e!477081 tp_is_empty!16401)))

(assert (= (and start!73378 res!581306) b!855757))

(assert (= (and b!855757 res!581308) b!855749))

(assert (= (and b!855749 res!581307) b!855754))

(assert (= (and b!855754 res!581304) b!855750))

(assert (= (and b!855750 res!581310) b!855753))

(assert (= (and b!855753 res!581309) b!855751))

(assert (= (and b!855751 res!581305) b!855756))

(assert (= (and b!855756 res!581303) b!855748))

(assert (= (and b!855752 condMapEmpty!26201) mapIsEmpty!26201))

(assert (= (and b!855752 (not condMapEmpty!26201)) mapNonEmpty!26201))

(get-info :version)

(assert (= (and mapNonEmpty!26201 ((_ is ValueCellFull!7761) mapValue!26201)) b!855758))

(assert (= (and b!855752 ((_ is ValueCellFull!7761) mapDefault!26201)) b!855755))

(assert (= start!73378 b!855752))

(declare-fun m!796901 () Bool)

(assert (=> b!855757 m!796901))

(declare-fun m!796903 () Bool)

(assert (=> b!855756 m!796903))

(declare-fun m!796905 () Bool)

(assert (=> b!855750 m!796905))

(declare-fun m!796907 () Bool)

(assert (=> start!73378 m!796907))

(declare-fun m!796909 () Bool)

(assert (=> start!73378 m!796909))

(declare-fun m!796911 () Bool)

(assert (=> mapNonEmpty!26201 m!796911))

(declare-fun m!796913 () Bool)

(assert (=> b!855751 m!796913))

(declare-fun m!796915 () Bool)

(assert (=> b!855748 m!796915))

(declare-fun m!796917 () Bool)

(assert (=> b!855748 m!796917))

(declare-fun m!796919 () Bool)

(assert (=> b!855748 m!796919))

(declare-fun m!796921 () Bool)

(assert (=> b!855754 m!796921))

(check-sat (not b!855751) (not b!855748) b_and!23639 (not b!855750) (not b_next!14265) (not start!73378) tp_is_empty!16401 (not b!855757) (not mapNonEmpty!26201) (not b!855754))
(check-sat b_and!23639 (not b_next!14265))

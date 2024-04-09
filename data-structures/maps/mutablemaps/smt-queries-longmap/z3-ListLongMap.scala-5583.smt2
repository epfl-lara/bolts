; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!73312 () Bool)

(assert start!73312)

(declare-fun b_free!14199 () Bool)

(declare-fun b_next!14199 () Bool)

(assert (=> start!73312 (= b_free!14199 (not b_next!14199))))

(declare-fun tp!50101 () Bool)

(declare-fun b_and!23573 () Bool)

(assert (=> start!73312 (= tp!50101 b_and!23573)))

(declare-fun b!854660 () Bool)

(declare-fun e!476583 () Bool)

(assert (=> b!854660 (= e!476583 false)))

(declare-datatypes ((V!26827 0))(
  ( (V!26828 (val!8215 Int)) )
))
(declare-datatypes ((tuple2!10818 0))(
  ( (tuple2!10819 (_1!5419 (_ BitVec 64)) (_2!5419 V!26827)) )
))
(declare-datatypes ((List!16690 0))(
  ( (Nil!16687) (Cons!16686 (h!17817 tuple2!10818) (t!23339 List!16690)) )
))
(declare-datatypes ((ListLongMap!9601 0))(
  ( (ListLongMap!9602 (toList!4816 List!16690)) )
))
(declare-fun lt!385529 () ListLongMap!9601)

(declare-fun v!557 () V!26827)

(declare-fun i!612 () (_ BitVec 32))

(declare-fun defaultEntry!696 () Int)

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-datatypes ((array!48850 0))(
  ( (array!48851 (arr!23452 (Array (_ BitVec 32) (_ BitVec 64))) (size!23893 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!48850)

(declare-datatypes ((ValueCell!7728 0))(
  ( (ValueCellFull!7728 (v!10636 V!26827)) (EmptyCell!7728) )
))
(declare-datatypes ((array!48852 0))(
  ( (array!48853 (arr!23453 (Array (_ BitVec 32) ValueCell!7728)) (size!23894 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!48852)

(declare-fun from!1053 () (_ BitVec 32))

(declare-fun minValue!654 () V!26827)

(declare-fun zeroValue!654 () V!26827)

(declare-fun getCurrentListMapNoExtraKeys!2798 (array!48850 array!48852 (_ BitVec 32) (_ BitVec 32) V!26827 V!26827 (_ BitVec 32) Int) ListLongMap!9601)

(assert (=> b!854660 (= lt!385529 (getCurrentListMapNoExtraKeys!2798 _keys!868 (array!48853 (store (arr!23453 _values!688) i!612 (ValueCellFull!7728 v!557)) (size!23894 _values!688)) mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun lt!385530 () ListLongMap!9601)

(assert (=> b!854660 (= lt!385530 (getCurrentListMapNoExtraKeys!2798 _keys!868 _values!688 mask!1196 extraKeys!635 zeroValue!654 minValue!654 from!1053 defaultEntry!696))))

(declare-fun b!854661 () Bool)

(declare-fun res!580516 () Bool)

(assert (=> b!854661 (=> (not res!580516) (not e!476583))))

(declare-datatypes ((List!16691 0))(
  ( (Nil!16688) (Cons!16687 (h!17818 (_ BitVec 64)) (t!23340 List!16691)) )
))
(declare-fun arrayNoDuplicates!0 (array!48850 (_ BitVec 32) List!16691) Bool)

(assert (=> b!854661 (= res!580516 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16688))))

(declare-fun mapNonEmpty!26102 () Bool)

(declare-fun mapRes!26102 () Bool)

(declare-fun tp!50102 () Bool)

(declare-fun e!476584 () Bool)

(assert (=> mapNonEmpty!26102 (= mapRes!26102 (and tp!50102 e!476584))))

(declare-fun mapValue!26102 () ValueCell!7728)

(declare-fun mapKey!26102 () (_ BitVec 32))

(declare-fun mapRest!26102 () (Array (_ BitVec 32) ValueCell!7728))

(assert (=> mapNonEmpty!26102 (= (arr!23453 _values!688) (store mapRest!26102 mapKey!26102 mapValue!26102))))

(declare-fun mapIsEmpty!26102 () Bool)

(assert (=> mapIsEmpty!26102 mapRes!26102))

(declare-fun b!854662 () Bool)

(declare-fun res!580517 () Bool)

(assert (=> b!854662 (=> (not res!580517) (not e!476583))))

(assert (=> b!854662 (= res!580517 (and (= (size!23894 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23893 _keys!868) (size!23894 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!854663 () Bool)

(declare-fun tp_is_empty!16335 () Bool)

(assert (=> b!854663 (= e!476584 tp_is_empty!16335)))

(declare-fun b!854664 () Bool)

(declare-fun e!476582 () Bool)

(assert (=> b!854664 (= e!476582 tp_is_empty!16335)))

(declare-fun b!854665 () Bool)

(declare-fun res!580518 () Bool)

(assert (=> b!854665 (=> (not res!580518) (not e!476583))))

(declare-fun k0!854 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!854665 (= res!580518 (validKeyInArray!0 k0!854))))

(declare-fun b!854666 () Bool)

(declare-fun res!580511 () Bool)

(assert (=> b!854666 (=> (not res!580511) (not e!476583))))

(assert (=> b!854666 (= res!580511 (and (= (select (arr!23452 _keys!868) i!612) k0!854) (bvsle from!1053 i!612)))))

(declare-fun b!854667 () Bool)

(declare-fun res!580513 () Bool)

(assert (=> b!854667 (=> (not res!580513) (not e!476583))))

(assert (=> b!854667 (= res!580513 (and (bvsge i!612 #b00000000000000000000000000000000) (bvslt i!612 (size!23893 _keys!868))))))

(declare-fun b!854668 () Bool)

(declare-fun e!476586 () Bool)

(assert (=> b!854668 (= e!476586 (and e!476582 mapRes!26102))))

(declare-fun condMapEmpty!26102 () Bool)

(declare-fun mapDefault!26102 () ValueCell!7728)

(assert (=> b!854668 (= condMapEmpty!26102 (= (arr!23453 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7728)) mapDefault!26102)))))

(declare-fun b!854669 () Bool)

(declare-fun res!580515 () Bool)

(assert (=> b!854669 (=> (not res!580515) (not e!476583))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!854669 (= res!580515 (validMask!0 mask!1196))))

(declare-fun b!854659 () Bool)

(declare-fun res!580512 () Bool)

(assert (=> b!854659 (=> (not res!580512) (not e!476583))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!48850 (_ BitVec 32)) Bool)

(assert (=> b!854659 (= res!580512 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!580514 () Bool)

(assert (=> start!73312 (=> (not res!580514) (not e!476583))))

(assert (=> start!73312 (= res!580514 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23893 _keys!868))))))

(assert (=> start!73312 e!476583))

(assert (=> start!73312 tp_is_empty!16335))

(assert (=> start!73312 true))

(assert (=> start!73312 tp!50101))

(declare-fun array_inv!18568 (array!48850) Bool)

(assert (=> start!73312 (array_inv!18568 _keys!868)))

(declare-fun array_inv!18569 (array!48852) Bool)

(assert (=> start!73312 (and (array_inv!18569 _values!688) e!476586)))

(assert (= (and start!73312 res!580514) b!854669))

(assert (= (and b!854669 res!580515) b!854662))

(assert (= (and b!854662 res!580517) b!854659))

(assert (= (and b!854659 res!580512) b!854661))

(assert (= (and b!854661 res!580516) b!854667))

(assert (= (and b!854667 res!580513) b!854665))

(assert (= (and b!854665 res!580518) b!854666))

(assert (= (and b!854666 res!580511) b!854660))

(assert (= (and b!854668 condMapEmpty!26102) mapIsEmpty!26102))

(assert (= (and b!854668 (not condMapEmpty!26102)) mapNonEmpty!26102))

(get-info :version)

(assert (= (and mapNonEmpty!26102 ((_ is ValueCellFull!7728) mapValue!26102)) b!854663))

(assert (= (and b!854668 ((_ is ValueCellFull!7728) mapDefault!26102)) b!854664))

(assert (= start!73312 b!854668))

(declare-fun m!796175 () Bool)

(assert (=> start!73312 m!796175))

(declare-fun m!796177 () Bool)

(assert (=> start!73312 m!796177))

(declare-fun m!796179 () Bool)

(assert (=> b!854665 m!796179))

(declare-fun m!796181 () Bool)

(assert (=> b!854659 m!796181))

(declare-fun m!796183 () Bool)

(assert (=> b!854661 m!796183))

(declare-fun m!796185 () Bool)

(assert (=> mapNonEmpty!26102 m!796185))

(declare-fun m!796187 () Bool)

(assert (=> b!854669 m!796187))

(declare-fun m!796189 () Bool)

(assert (=> b!854660 m!796189))

(declare-fun m!796191 () Bool)

(assert (=> b!854660 m!796191))

(declare-fun m!796193 () Bool)

(assert (=> b!854660 m!796193))

(declare-fun m!796195 () Bool)

(assert (=> b!854666 m!796195))

(check-sat (not b!854659) tp_is_empty!16335 b_and!23573 (not mapNonEmpty!26102) (not b!854661) (not b_next!14199) (not b!854669) (not b!854660) (not start!73312) (not b!854665))
(check-sat b_and!23573 (not b_next!14199))

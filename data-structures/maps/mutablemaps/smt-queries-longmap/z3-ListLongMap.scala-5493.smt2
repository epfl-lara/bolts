; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72772 () Bool)

(assert start!72772)

(declare-fun res!573654 () Bool)

(declare-fun e!471146 () Bool)

(assert (=> start!72772 (=> (not res!573654) (not e!471146))))

(declare-fun from!1053 () (_ BitVec 32))

(declare-datatypes ((array!47808 0))(
  ( (array!47809 (arr!22931 (Array (_ BitVec 32) (_ BitVec 64))) (size!23372 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47808)

(assert (=> start!72772 (= res!573654 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!23372 _keys!868))))))

(assert (=> start!72772 e!471146))

(assert (=> start!72772 true))

(declare-fun array_inv!18218 (array!47808) Bool)

(assert (=> start!72772 (array_inv!18218 _keys!868)))

(declare-datatypes ((V!26107 0))(
  ( (V!26108 (val!7945 Int)) )
))
(declare-datatypes ((ValueCell!7458 0))(
  ( (ValueCellFull!7458 (v!10366 V!26107)) (EmptyCell!7458) )
))
(declare-datatypes ((array!47810 0))(
  ( (array!47811 (arr!22932 (Array (_ BitVec 32) ValueCell!7458)) (size!23373 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!47810)

(declare-fun e!471147 () Bool)

(declare-fun array_inv!18219 (array!47810) Bool)

(assert (=> start!72772 (and (array_inv!18219 _values!688) e!471147)))

(declare-fun b!844127 () Bool)

(assert (=> b!844127 (= e!471146 false)))

(declare-fun lt!381204 () Bool)

(declare-datatypes ((List!16334 0))(
  ( (Nil!16331) (Cons!16330 (h!17461 (_ BitVec 64)) (t!22713 List!16334)) )
))
(declare-fun arrayNoDuplicates!0 (array!47808 (_ BitVec 32) List!16334) Bool)

(assert (=> b!844127 (= lt!381204 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16331))))

(declare-fun b!844128 () Bool)

(declare-fun res!573652 () Bool)

(assert (=> b!844128 (=> (not res!573652) (not e!471146))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!844128 (= res!573652 (validMask!0 mask!1196))))

(declare-fun b!844129 () Bool)

(declare-fun e!471148 () Bool)

(declare-fun mapRes!25292 () Bool)

(assert (=> b!844129 (= e!471147 (and e!471148 mapRes!25292))))

(declare-fun condMapEmpty!25292 () Bool)

(declare-fun mapDefault!25292 () ValueCell!7458)

(assert (=> b!844129 (= condMapEmpty!25292 (= (arr!22932 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7458)) mapDefault!25292)))))

(declare-fun mapIsEmpty!25292 () Bool)

(assert (=> mapIsEmpty!25292 mapRes!25292))

(declare-fun b!844130 () Bool)

(declare-fun res!573651 () Bool)

(assert (=> b!844130 (=> (not res!573651) (not e!471146))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(assert (=> b!844130 (= res!573651 (and (= (size!23373 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!23372 _keys!868) (size!23373 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!844131 () Bool)

(declare-fun res!573653 () Bool)

(assert (=> b!844131 (=> (not res!573653) (not e!471146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47808 (_ BitVec 32)) Bool)

(assert (=> b!844131 (= res!573653 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun mapNonEmpty!25292 () Bool)

(declare-fun tp!48611 () Bool)

(declare-fun e!471149 () Bool)

(assert (=> mapNonEmpty!25292 (= mapRes!25292 (and tp!48611 e!471149))))

(declare-fun mapRest!25292 () (Array (_ BitVec 32) ValueCell!7458))

(declare-fun mapKey!25292 () (_ BitVec 32))

(declare-fun mapValue!25292 () ValueCell!7458)

(assert (=> mapNonEmpty!25292 (= (arr!22932 _values!688) (store mapRest!25292 mapKey!25292 mapValue!25292))))

(declare-fun b!844132 () Bool)

(declare-fun tp_is_empty!15795 () Bool)

(assert (=> b!844132 (= e!471149 tp_is_empty!15795)))

(declare-fun b!844133 () Bool)

(assert (=> b!844133 (= e!471148 tp_is_empty!15795)))

(assert (= (and start!72772 res!573654) b!844128))

(assert (= (and b!844128 res!573652) b!844130))

(assert (= (and b!844130 res!573651) b!844131))

(assert (= (and b!844131 res!573653) b!844127))

(assert (= (and b!844129 condMapEmpty!25292) mapIsEmpty!25292))

(assert (= (and b!844129 (not condMapEmpty!25292)) mapNonEmpty!25292))

(get-info :version)

(assert (= (and mapNonEmpty!25292 ((_ is ValueCellFull!7458) mapValue!25292)) b!844132))

(assert (= (and b!844129 ((_ is ValueCellFull!7458) mapDefault!25292)) b!844133))

(assert (= start!72772 b!844129))

(declare-fun m!786557 () Bool)

(assert (=> mapNonEmpty!25292 m!786557))

(declare-fun m!786559 () Bool)

(assert (=> start!72772 m!786559))

(declare-fun m!786561 () Bool)

(assert (=> start!72772 m!786561))

(declare-fun m!786563 () Bool)

(assert (=> b!844128 m!786563))

(declare-fun m!786565 () Bool)

(assert (=> b!844127 m!786565))

(declare-fun m!786567 () Bool)

(assert (=> b!844131 m!786567))

(check-sat (not b!844131) tp_is_empty!15795 (not mapNonEmpty!25292) (not start!72772) (not b!844128) (not b!844127))
(check-sat)

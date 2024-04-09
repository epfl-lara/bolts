; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!72346 () Bool)

(assert start!72346)

(declare-fun b!837710 () Bool)

(declare-fun res!569800 () Bool)

(declare-fun e!467630 () Bool)

(assert (=> b!837710 (=> (not res!569800) (not e!467630))))

(declare-fun mask!1196 () (_ BitVec 32))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!837710 (= res!569800 (validMask!0 mask!1196))))

(declare-fun b!837711 () Bool)

(declare-fun e!467628 () Bool)

(declare-fun tp_is_empty!15369 () Bool)

(assert (=> b!837711 (= e!467628 tp_is_empty!15369)))

(declare-fun mapIsEmpty!24653 () Bool)

(declare-fun mapRes!24653 () Bool)

(assert (=> mapIsEmpty!24653 mapRes!24653))

(declare-fun b!837712 () Bool)

(declare-fun e!467631 () Bool)

(assert (=> b!837712 (= e!467631 (and e!467628 mapRes!24653))))

(declare-fun condMapEmpty!24653 () Bool)

(declare-datatypes ((V!25539 0))(
  ( (V!25540 (val!7732 Int)) )
))
(declare-datatypes ((ValueCell!7245 0))(
  ( (ValueCellFull!7245 (v!10153 V!25539)) (EmptyCell!7245) )
))
(declare-datatypes ((array!46998 0))(
  ( (array!46999 (arr!22526 (Array (_ BitVec 32) ValueCell!7245)) (size!22967 (_ BitVec 32))) )
))
(declare-fun _values!688 () array!46998)

(declare-fun mapDefault!24653 () ValueCell!7245)

(assert (=> b!837712 (= condMapEmpty!24653 (= (arr!22526 _values!688) ((as const (Array (_ BitVec 32) ValueCell!7245)) mapDefault!24653)))))

(declare-fun mapNonEmpty!24653 () Bool)

(declare-fun tp!47648 () Bool)

(declare-fun e!467629 () Bool)

(assert (=> mapNonEmpty!24653 (= mapRes!24653 (and tp!47648 e!467629))))

(declare-fun mapValue!24653 () ValueCell!7245)

(declare-fun mapKey!24653 () (_ BitVec 32))

(declare-fun mapRest!24653 () (Array (_ BitVec 32) ValueCell!7245))

(assert (=> mapNonEmpty!24653 (= (arr!22526 _values!688) (store mapRest!24653 mapKey!24653 mapValue!24653))))

(declare-fun b!837713 () Bool)

(declare-fun res!569801 () Bool)

(assert (=> b!837713 (=> (not res!569801) (not e!467630))))

(declare-fun extraKeys!635 () (_ BitVec 32))

(declare-datatypes ((array!47000 0))(
  ( (array!47001 (arr!22527 (Array (_ BitVec 32) (_ BitVec 64))) (size!22968 (_ BitVec 32))) )
))
(declare-fun _keys!868 () array!47000)

(assert (=> b!837713 (= res!569801 (and (= (size!22967 _values!688) (bvadd #b00000000000000000000000000000001 mask!1196)) (= (size!22968 _keys!868) (size!22967 _values!688)) (bvsge mask!1196 #b00000000000000000000000000000000) (bvsge extraKeys!635 #b00000000000000000000000000000000) (bvsle extraKeys!635 #b00000000000000000000000000000011)))))

(declare-fun b!837714 () Bool)

(declare-fun res!569802 () Bool)

(assert (=> b!837714 (=> (not res!569802) (not e!467630))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!47000 (_ BitVec 32)) Bool)

(assert (=> b!837714 (= res!569802 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!868 mask!1196))))

(declare-fun res!569799 () Bool)

(assert (=> start!72346 (=> (not res!569799) (not e!467630))))

(declare-fun from!1053 () (_ BitVec 32))

(assert (=> start!72346 (= res!569799 (and (bvsge from!1053 #b00000000000000000000000000000000) (bvsle from!1053 (size!22968 _keys!868))))))

(assert (=> start!72346 e!467630))

(assert (=> start!72346 true))

(declare-fun array_inv!17922 (array!47000) Bool)

(assert (=> start!72346 (array_inv!17922 _keys!868)))

(declare-fun array_inv!17923 (array!46998) Bool)

(assert (=> start!72346 (and (array_inv!17923 _values!688) e!467631)))

(declare-fun b!837715 () Bool)

(assert (=> b!837715 (= e!467629 tp_is_empty!15369)))

(declare-fun b!837716 () Bool)

(assert (=> b!837716 (= e!467630 false)))

(declare-fun lt!380565 () Bool)

(declare-datatypes ((List!16094 0))(
  ( (Nil!16091) (Cons!16090 (h!17221 (_ BitVec 64)) (t!22473 List!16094)) )
))
(declare-fun arrayNoDuplicates!0 (array!47000 (_ BitVec 32) List!16094) Bool)

(assert (=> b!837716 (= lt!380565 (arrayNoDuplicates!0 _keys!868 #b00000000000000000000000000000000 Nil!16091))))

(assert (= (and start!72346 res!569799) b!837710))

(assert (= (and b!837710 res!569800) b!837713))

(assert (= (and b!837713 res!569801) b!837714))

(assert (= (and b!837714 res!569802) b!837716))

(assert (= (and b!837712 condMapEmpty!24653) mapIsEmpty!24653))

(assert (= (and b!837712 (not condMapEmpty!24653)) mapNonEmpty!24653))

(get-info :version)

(assert (= (and mapNonEmpty!24653 ((_ is ValueCellFull!7245) mapValue!24653)) b!837715))

(assert (= (and b!837712 ((_ is ValueCellFull!7245) mapDefault!24653)) b!837711))

(assert (= start!72346 b!837712))

(declare-fun m!782489 () Bool)

(assert (=> start!72346 m!782489))

(declare-fun m!782491 () Bool)

(assert (=> start!72346 m!782491))

(declare-fun m!782493 () Bool)

(assert (=> b!837716 m!782493))

(declare-fun m!782495 () Bool)

(assert (=> mapNonEmpty!24653 m!782495))

(declare-fun m!782497 () Bool)

(assert (=> b!837714 m!782497))

(declare-fun m!782499 () Bool)

(assert (=> b!837710 m!782499))

(check-sat (not b!837716) (not b!837710) (not start!72346) tp_is_empty!15369 (not b!837714) (not mapNonEmpty!24653))
(check-sat)

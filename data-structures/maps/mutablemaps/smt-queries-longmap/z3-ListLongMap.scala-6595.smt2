; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!83484 () Bool)

(assert start!83484)

(declare-fun b_free!19443 () Bool)

(declare-fun b_next!19443 () Bool)

(assert (=> start!83484 (= b_free!19443 (not b_next!19443))))

(declare-fun tp!67617 () Bool)

(declare-fun b_and!31063 () Bool)

(assert (=> start!83484 (= tp!67617 b_and!31063)))

(declare-fun b!974647 () Bool)

(declare-fun e!549377 () Bool)

(declare-fun e!549376 () Bool)

(declare-fun mapRes!35530 () Bool)

(assert (=> b!974647 (= e!549377 (and e!549376 mapRes!35530))))

(declare-fun condMapEmpty!35530 () Bool)

(declare-datatypes ((V!34779 0))(
  ( (V!34780 (val!11224 Int)) )
))
(declare-datatypes ((ValueCell!10692 0))(
  ( (ValueCellFull!10692 (v!13783 V!34779)) (EmptyCell!10692) )
))
(declare-datatypes ((array!60711 0))(
  ( (array!60712 (arr!29215 (Array (_ BitVec 32) ValueCell!10692)) (size!29695 (_ BitVec 32))) )
))
(declare-fun _values!1425 () array!60711)

(declare-fun mapDefault!35530 () ValueCell!10692)

(assert (=> b!974647 (= condMapEmpty!35530 (= (arr!29215 _values!1425) ((as const (Array (_ BitVec 32) ValueCell!10692)) mapDefault!35530)))))

(declare-fun mapIsEmpty!35530 () Bool)

(assert (=> mapIsEmpty!35530 mapRes!35530))

(declare-fun b!974648 () Bool)

(declare-fun res!652546 () Bool)

(declare-fun e!549375 () Bool)

(assert (=> b!974648 (=> (not res!652546) (not e!549375))))

(declare-fun mask!2147 () (_ BitVec 32))

(declare-fun zeroValue!1367 () V!34779)

(declare-fun defaultEntry!1428 () Int)

(declare-fun minValue!1367 () V!34779)

(declare-fun i!822 () (_ BitVec 32))

(declare-fun extraKeys!1346 () (_ BitVec 32))

(declare-datatypes ((array!60713 0))(
  ( (array!60714 (arr!29216 (Array (_ BitVec 32) (_ BitVec 64))) (size!29696 (_ BitVec 32))) )
))
(declare-fun _keys!1717 () array!60713)

(declare-fun from!2118 () (_ BitVec 32))

(declare-datatypes ((tuple2!14520 0))(
  ( (tuple2!14521 (_1!7270 (_ BitVec 64)) (_2!7270 V!34779)) )
))
(declare-datatypes ((List!20396 0))(
  ( (Nil!20393) (Cons!20392 (h!21554 tuple2!14520) (t!28881 List!20396)) )
))
(declare-datatypes ((ListLongMap!13231 0))(
  ( (ListLongMap!13232 (toList!6631 List!20396)) )
))
(declare-fun contains!5667 (ListLongMap!13231 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3816 (array!60713 array!60711 (_ BitVec 32) (_ BitVec 32) V!34779 V!34779 (_ BitVec 32) Int) ListLongMap!13231)

(assert (=> b!974648 (= res!652546 (contains!5667 (getCurrentListMap!3816 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 from!2118 defaultEntry!1428) (select (arr!29216 _keys!1717) i!822)))))

(declare-fun b!974649 () Bool)

(declare-fun res!652547 () Bool)

(assert (=> b!974649 (=> (not res!652547) (not e!549375))))

(assert (=> b!974649 (= res!652547 (and (= (size!29695 _values!1425) (bvadd #b00000000000000000000000000000001 mask!2147)) (= (size!29696 _keys!1717) (size!29695 _values!1425)) (bvsge mask!2147 #b00000000000000000000000000000000) (bvsge extraKeys!1346 #b00000000000000000000000000000000) (bvsle extraKeys!1346 #b00000000000000000000000000000011)))))

(declare-fun b!974650 () Bool)

(assert (=> b!974650 (= e!549375 (bvsge (bvsub from!2118 #b00000000000000000000000000000001) (size!29696 _keys!1717)))))

(declare-fun lt!432745 () ListLongMap!13231)

(assert (=> b!974650 (= lt!432745 (getCurrentListMap!3816 _keys!1717 _values!1425 mask!2147 extraKeys!1346 zeroValue!1367 minValue!1367 (bvsub from!2118 #b00000000000000000000000000000001) defaultEntry!1428))))

(declare-fun res!652543 () Bool)

(assert (=> start!83484 (=> (not res!652543) (not e!549375))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!83484 (= res!652543 (validMask!0 mask!2147))))

(assert (=> start!83484 e!549375))

(assert (=> start!83484 true))

(declare-fun array_inv!22493 (array!60711) Bool)

(assert (=> start!83484 (and (array_inv!22493 _values!1425) e!549377)))

(declare-fun tp_is_empty!22347 () Bool)

(assert (=> start!83484 tp_is_empty!22347))

(assert (=> start!83484 tp!67617))

(declare-fun array_inv!22494 (array!60713) Bool)

(assert (=> start!83484 (array_inv!22494 _keys!1717)))

(declare-fun b!974651 () Bool)

(declare-fun e!549378 () Bool)

(assert (=> b!974651 (= e!549378 tp_is_empty!22347)))

(declare-fun b!974652 () Bool)

(declare-fun res!652549 () Bool)

(assert (=> b!974652 (=> (not res!652549) (not e!549375))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!974652 (= res!652549 (validKeyInArray!0 (select (arr!29216 _keys!1717) i!822)))))

(declare-fun mapNonEmpty!35530 () Bool)

(declare-fun tp!67618 () Bool)

(assert (=> mapNonEmpty!35530 (= mapRes!35530 (and tp!67618 e!549378))))

(declare-fun mapRest!35530 () (Array (_ BitVec 32) ValueCell!10692))

(declare-fun mapValue!35530 () ValueCell!10692)

(declare-fun mapKey!35530 () (_ BitVec 32))

(assert (=> mapNonEmpty!35530 (= (arr!29215 _values!1425) (store mapRest!35530 mapKey!35530 mapValue!35530))))

(declare-fun b!974653 () Bool)

(declare-fun res!652544 () Bool)

(assert (=> b!974653 (=> (not res!652544) (not e!549375))))

(assert (=> b!974653 (= res!652544 (and (bvsgt from!2118 #b00000000000000000000000000000000) (bvslt from!2118 (size!29696 _keys!1717)) (bvsge i!822 from!2118) (bvslt i!822 (size!29696 _keys!1717))))))

(declare-fun b!974654 () Bool)

(declare-fun res!652548 () Bool)

(assert (=> b!974654 (=> (not res!652548) (not e!549375))))

(declare-datatypes ((List!20397 0))(
  ( (Nil!20394) (Cons!20393 (h!21555 (_ BitVec 64)) (t!28882 List!20397)) )
))
(declare-fun arrayNoDuplicates!0 (array!60713 (_ BitVec 32) List!20397) Bool)

(assert (=> b!974654 (= res!652548 (arrayNoDuplicates!0 _keys!1717 #b00000000000000000000000000000000 Nil!20394))))

(declare-fun b!974655 () Bool)

(assert (=> b!974655 (= e!549376 tp_is_empty!22347)))

(declare-fun b!974656 () Bool)

(declare-fun res!652545 () Bool)

(assert (=> b!974656 (=> (not res!652545) (not e!549375))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!60713 (_ BitVec 32)) Bool)

(assert (=> b!974656 (= res!652545 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1717 mask!2147))))

(assert (= (and start!83484 res!652543) b!974649))

(assert (= (and b!974649 res!652547) b!974656))

(assert (= (and b!974656 res!652545) b!974654))

(assert (= (and b!974654 res!652548) b!974653))

(assert (= (and b!974653 res!652544) b!974652))

(assert (= (and b!974652 res!652549) b!974648))

(assert (= (and b!974648 res!652546) b!974650))

(assert (= (and b!974647 condMapEmpty!35530) mapIsEmpty!35530))

(assert (= (and b!974647 (not condMapEmpty!35530)) mapNonEmpty!35530))

(get-info :version)

(assert (= (and mapNonEmpty!35530 ((_ is ValueCellFull!10692) mapValue!35530)) b!974651))

(assert (= (and b!974647 ((_ is ValueCellFull!10692) mapDefault!35530)) b!974655))

(assert (= start!83484 b!974647))

(declare-fun m!902169 () Bool)

(assert (=> b!974654 m!902169))

(declare-fun m!902171 () Bool)

(assert (=> b!974648 m!902171))

(declare-fun m!902173 () Bool)

(assert (=> b!974648 m!902173))

(assert (=> b!974648 m!902171))

(assert (=> b!974648 m!902173))

(declare-fun m!902175 () Bool)

(assert (=> b!974648 m!902175))

(declare-fun m!902177 () Bool)

(assert (=> b!974656 m!902177))

(assert (=> b!974652 m!902173))

(assert (=> b!974652 m!902173))

(declare-fun m!902179 () Bool)

(assert (=> b!974652 m!902179))

(declare-fun m!902181 () Bool)

(assert (=> mapNonEmpty!35530 m!902181))

(declare-fun m!902183 () Bool)

(assert (=> start!83484 m!902183))

(declare-fun m!902185 () Bool)

(assert (=> start!83484 m!902185))

(declare-fun m!902187 () Bool)

(assert (=> start!83484 m!902187))

(declare-fun m!902189 () Bool)

(assert (=> b!974650 m!902189))

(check-sat tp_is_empty!22347 (not b!974648) (not b!974650) b_and!31063 (not start!83484) (not b!974654) (not b_next!19443) (not b!974652) (not b!974656) (not mapNonEmpty!35530))
(check-sat b_and!31063 (not b_next!19443))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!930 () Bool)

(assert start!930)

(declare-fun b_free!303 () Bool)

(declare-fun b_next!303 () Bool)

(assert (=> start!930 (= b_free!303 (not b_next!303))))

(declare-fun tp!1142 () Bool)

(declare-fun b_and!451 () Bool)

(assert (=> start!930 (= tp!1142 b_and!451)))

(declare-fun b!7828 () Bool)

(declare-fun e!4409 () Bool)

(declare-fun tp_is_empty!381 () Bool)

(assert (=> b!7828 (= e!4409 tp_is_empty!381)))

(declare-fun b!7829 () Bool)

(declare-fun e!4411 () Bool)

(declare-fun mapRes!545 () Bool)

(assert (=> b!7829 (= e!4411 (and e!4409 mapRes!545))))

(declare-fun condMapEmpty!545 () Bool)

(declare-datatypes ((V!685 0))(
  ( (V!686 (val!196 Int)) )
))
(declare-datatypes ((ValueCell!174 0))(
  ( (ValueCellFull!174 (v!1288 V!685)) (EmptyCell!174) )
))
(declare-datatypes ((array!691 0))(
  ( (array!692 (arr!333 (Array (_ BitVec 32) ValueCell!174)) (size!395 (_ BitVec 32))) )
))
(declare-fun _values!1492 () array!691)

(declare-fun mapDefault!545 () ValueCell!174)

(assert (=> b!7829 (= condMapEmpty!545 (= (arr!333 _values!1492) ((as const (Array (_ BitVec 32) ValueCell!174)) mapDefault!545)))))

(declare-fun mapNonEmpty!545 () Bool)

(declare-fun tp!1141 () Bool)

(declare-fun e!4410 () Bool)

(assert (=> mapNonEmpty!545 (= mapRes!545 (and tp!1141 e!4410))))

(declare-fun mapKey!545 () (_ BitVec 32))

(declare-fun mapRest!545 () (Array (_ BitVec 32) ValueCell!174))

(declare-fun mapValue!545 () ValueCell!174)

(assert (=> mapNonEmpty!545 (= (arr!333 _values!1492) (store mapRest!545 mapKey!545 mapValue!545))))

(declare-fun b!7830 () Bool)

(declare-fun res!7627 () Bool)

(declare-fun e!4408 () Bool)

(assert (=> b!7830 (=> (not res!7627) (not e!4408))))

(declare-datatypes ((array!693 0))(
  ( (array!694 (arr!334 (Array (_ BitVec 32) (_ BitVec 64))) (size!396 (_ BitVec 32))) )
))
(declare-fun _keys!1806 () array!693)

(declare-fun mask!2250 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!693 (_ BitVec 32)) Bool)

(assert (=> b!7830 (= res!7627 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1806 mask!2250))))

(declare-fun b!7831 () Bool)

(declare-fun res!7630 () Bool)

(assert (=> b!7831 (=> (not res!7630) (not e!4408))))

(declare-datatypes ((List!227 0))(
  ( (Nil!224) (Cons!223 (h!789 (_ BitVec 64)) (t!2364 List!227)) )
))
(declare-fun arrayNoDuplicates!0 (array!693 (_ BitVec 32) List!227) Bool)

(assert (=> b!7831 (= res!7630 (arrayNoDuplicates!0 _keys!1806 #b00000000000000000000000000000000 Nil!224))))

(declare-fun b!7832 () Bool)

(assert (=> b!7832 (= e!4408 false)))

(declare-fun defaultEntry!1495 () Int)

(declare-fun minValue!1434 () V!685)

(declare-fun lt!1593 () Bool)

(declare-fun k0!1278 () (_ BitVec 64))

(declare-fun extraKeys!1413 () (_ BitVec 32))

(declare-fun zeroValue!1434 () V!685)

(declare-datatypes ((tuple2!206 0))(
  ( (tuple2!207 (_1!103 (_ BitVec 64)) (_2!103 V!685)) )
))
(declare-datatypes ((List!228 0))(
  ( (Nil!225) (Cons!224 (h!790 tuple2!206) (t!2365 List!228)) )
))
(declare-datatypes ((ListLongMap!211 0))(
  ( (ListLongMap!212 (toList!121 List!228)) )
))
(declare-fun contains!96 (ListLongMap!211 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!80 (array!693 array!691 (_ BitVec 32) (_ BitVec 32) V!685 V!685 (_ BitVec 32) Int) ListLongMap!211)

(assert (=> b!7832 (= lt!1593 (contains!96 (getCurrentListMap!80 _keys!1806 _values!1492 mask!2250 extraKeys!1413 zeroValue!1434 minValue!1434 #b00000000000000000000000000000000 defaultEntry!1495) k0!1278))))

(declare-fun b!7827 () Bool)

(assert (=> b!7827 (= e!4410 tp_is_empty!381)))

(declare-fun res!7629 () Bool)

(assert (=> start!930 (=> (not res!7629) (not e!4408))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!930 (= res!7629 (validMask!0 mask!2250))))

(assert (=> start!930 e!4408))

(assert (=> start!930 tp!1142))

(assert (=> start!930 true))

(declare-fun array_inv!247 (array!691) Bool)

(assert (=> start!930 (and (array_inv!247 _values!1492) e!4411)))

(assert (=> start!930 tp_is_empty!381))

(declare-fun array_inv!248 (array!693) Bool)

(assert (=> start!930 (array_inv!248 _keys!1806)))

(declare-fun b!7833 () Bool)

(declare-fun res!7628 () Bool)

(assert (=> b!7833 (=> (not res!7628) (not e!4408))))

(assert (=> b!7833 (= res!7628 (and (= (size!395 _values!1492) (bvadd #b00000000000000000000000000000001 mask!2250)) (= (size!396 _keys!1806) (size!395 _values!1492)) (bvsge mask!2250 #b00000000000000000000000000000000) (bvsge extraKeys!1413 #b00000000000000000000000000000000) (bvsle extraKeys!1413 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!545 () Bool)

(assert (=> mapIsEmpty!545 mapRes!545))

(assert (= (and start!930 res!7629) b!7833))

(assert (= (and b!7833 res!7628) b!7830))

(assert (= (and b!7830 res!7627) b!7831))

(assert (= (and b!7831 res!7630) b!7832))

(assert (= (and b!7829 condMapEmpty!545) mapIsEmpty!545))

(assert (= (and b!7829 (not condMapEmpty!545)) mapNonEmpty!545))

(get-info :version)

(assert (= (and mapNonEmpty!545 ((_ is ValueCellFull!174) mapValue!545)) b!7827))

(assert (= (and b!7829 ((_ is ValueCellFull!174) mapDefault!545)) b!7828))

(assert (= start!930 b!7829))

(declare-fun m!4773 () Bool)

(assert (=> b!7832 m!4773))

(assert (=> b!7832 m!4773))

(declare-fun m!4775 () Bool)

(assert (=> b!7832 m!4775))

(declare-fun m!4777 () Bool)

(assert (=> b!7831 m!4777))

(declare-fun m!4779 () Bool)

(assert (=> b!7830 m!4779))

(declare-fun m!4781 () Bool)

(assert (=> mapNonEmpty!545 m!4781))

(declare-fun m!4783 () Bool)

(assert (=> start!930 m!4783))

(declare-fun m!4785 () Bool)

(assert (=> start!930 m!4785))

(declare-fun m!4787 () Bool)

(assert (=> start!930 m!4787))

(check-sat (not b_next!303) (not b!7830) (not mapNonEmpty!545) b_and!451 tp_is_empty!381 (not b!7832) (not b!7831) (not start!930))
(check-sat b_and!451 (not b_next!303))

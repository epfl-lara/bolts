; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34504 () Bool)

(assert start!34504)

(declare-fun b_free!7419 () Bool)

(declare-fun b_next!7419 () Bool)

(assert (=> start!34504 (= b_free!7419 (not b_next!7419))))

(declare-fun tp!25802 () Bool)

(declare-fun b_and!14645 () Bool)

(assert (=> start!34504 (= tp!25802 b_and!14645)))

(declare-fun b!344501 () Bool)

(declare-fun e!211185 () Bool)

(declare-fun e!211187 () Bool)

(declare-fun mapRes!12495 () Bool)

(assert (=> b!344501 (= e!211185 (and e!211187 mapRes!12495))))

(declare-fun condMapEmpty!12495 () Bool)

(declare-datatypes ((V!10805 0))(
  ( (V!10806 (val!3730 Int)) )
))
(declare-datatypes ((ValueCell!3342 0))(
  ( (ValueCellFull!3342 (v!5902 V!10805)) (EmptyCell!3342) )
))
(declare-datatypes ((array!18297 0))(
  ( (array!18298 (arr!8662 (Array (_ BitVec 32) ValueCell!3342)) (size!9014 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18297)

(declare-fun mapDefault!12495 () ValueCell!3342)

(assert (=> b!344501 (= condMapEmpty!12495 (= (arr!8662 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3342)) mapDefault!12495)))))

(declare-fun b!344502 () Bool)

(declare-fun res!190621 () Bool)

(declare-fun e!211184 () Bool)

(assert (=> b!344502 (=> (not res!190621) (not e!211184))))

(declare-datatypes ((array!18299 0))(
  ( (array!18300 (arr!8663 (Array (_ BitVec 32) (_ BitVec 64))) (size!9015 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18299)

(declare-datatypes ((List!5032 0))(
  ( (Nil!5029) (Cons!5028 (h!5884 (_ BitVec 64)) (t!10156 List!5032)) )
))
(declare-fun arrayNoDuplicates!0 (array!18299 (_ BitVec 32) List!5032) Bool)

(assert (=> b!344502 (= res!190621 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5029))))

(declare-fun mapNonEmpty!12495 () Bool)

(declare-fun tp!25803 () Bool)

(declare-fun e!211186 () Bool)

(assert (=> mapNonEmpty!12495 (= mapRes!12495 (and tp!25803 e!211186))))

(declare-fun mapKey!12495 () (_ BitVec 32))

(declare-fun mapRest!12495 () (Array (_ BitVec 32) ValueCell!3342))

(declare-fun mapValue!12495 () ValueCell!3342)

(assert (=> mapNonEmpty!12495 (= (arr!8662 _values!1525) (store mapRest!12495 mapKey!12495 mapValue!12495))))

(declare-fun b!344503 () Bool)

(declare-fun res!190618 () Bool)

(assert (=> b!344503 (=> (not res!190618) (not e!211184))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!344503 (= res!190618 (validKeyInArray!0 k0!1348))))

(declare-fun b!344504 () Bool)

(declare-fun res!190617 () Bool)

(assert (=> b!344504 (=> (not res!190617) (not e!211184))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!344504 (= res!190617 (and (= (size!9014 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9015 _keys!1895) (size!9014 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!344505 () Bool)

(declare-fun tp_is_empty!7371 () Bool)

(assert (=> b!344505 (= e!211187 tp_is_empty!7371)))

(declare-fun b!344506 () Bool)

(declare-fun res!190622 () Bool)

(assert (=> b!344506 (=> (not res!190622) (not e!211184))))

(declare-fun zeroValue!1467 () V!10805)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!10805)

(declare-datatypes ((tuple2!5386 0))(
  ( (tuple2!5387 (_1!2703 (_ BitVec 64)) (_2!2703 V!10805)) )
))
(declare-datatypes ((List!5033 0))(
  ( (Nil!5030) (Cons!5029 (h!5885 tuple2!5386) (t!10157 List!5033)) )
))
(declare-datatypes ((ListLongMap!4313 0))(
  ( (ListLongMap!4314 (toList!2172 List!5033)) )
))
(declare-fun contains!2226 (ListLongMap!4313 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1692 (array!18299 array!18297 (_ BitVec 32) (_ BitVec 32) V!10805 V!10805 (_ BitVec 32) Int) ListLongMap!4313)

(assert (=> b!344506 (= res!190622 (not (contains!2226 (getCurrentListMap!1692 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!344507 () Bool)

(assert (=> b!344507 (= e!211186 tp_is_empty!7371)))

(declare-fun b!344508 () Bool)

(declare-fun res!190620 () Bool)

(assert (=> b!344508 (=> (not res!190620) (not e!211184))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18299 (_ BitVec 32)) Bool)

(assert (=> b!344508 (= res!190620 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!344509 () Bool)

(assert (=> b!344509 (= e!211184 false)))

(declare-datatypes ((SeekEntryResult!3337 0))(
  ( (MissingZero!3337 (index!15527 (_ BitVec 32))) (Found!3337 (index!15528 (_ BitVec 32))) (Intermediate!3337 (undefined!4149 Bool) (index!15529 (_ BitVec 32)) (x!34318 (_ BitVec 32))) (Undefined!3337) (MissingVacant!3337 (index!15530 (_ BitVec 32))) )
))
(declare-fun lt!162663 () SeekEntryResult!3337)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18299 (_ BitVec 32)) SeekEntryResult!3337)

(assert (=> b!344509 (= lt!162663 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun mapIsEmpty!12495 () Bool)

(assert (=> mapIsEmpty!12495 mapRes!12495))

(declare-fun res!190619 () Bool)

(assert (=> start!34504 (=> (not res!190619) (not e!211184))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34504 (= res!190619 (validMask!0 mask!2385))))

(assert (=> start!34504 e!211184))

(assert (=> start!34504 true))

(assert (=> start!34504 tp_is_empty!7371))

(assert (=> start!34504 tp!25802))

(declare-fun array_inv!6406 (array!18297) Bool)

(assert (=> start!34504 (and (array_inv!6406 _values!1525) e!211185)))

(declare-fun array_inv!6407 (array!18299) Bool)

(assert (=> start!34504 (array_inv!6407 _keys!1895)))

(assert (= (and start!34504 res!190619) b!344504))

(assert (= (and b!344504 res!190617) b!344508))

(assert (= (and b!344508 res!190620) b!344502))

(assert (= (and b!344502 res!190621) b!344503))

(assert (= (and b!344503 res!190618) b!344506))

(assert (= (and b!344506 res!190622) b!344509))

(assert (= (and b!344501 condMapEmpty!12495) mapIsEmpty!12495))

(assert (= (and b!344501 (not condMapEmpty!12495)) mapNonEmpty!12495))

(get-info :version)

(assert (= (and mapNonEmpty!12495 ((_ is ValueCellFull!3342) mapValue!12495)) b!344507))

(assert (= (and b!344501 ((_ is ValueCellFull!3342) mapDefault!12495)) b!344505))

(assert (= start!34504 b!344501))

(declare-fun m!346097 () Bool)

(assert (=> b!344508 m!346097))

(declare-fun m!346099 () Bool)

(assert (=> mapNonEmpty!12495 m!346099))

(declare-fun m!346101 () Bool)

(assert (=> b!344506 m!346101))

(assert (=> b!344506 m!346101))

(declare-fun m!346103 () Bool)

(assert (=> b!344506 m!346103))

(declare-fun m!346105 () Bool)

(assert (=> b!344502 m!346105))

(declare-fun m!346107 () Bool)

(assert (=> start!34504 m!346107))

(declare-fun m!346109 () Bool)

(assert (=> start!34504 m!346109))

(declare-fun m!346111 () Bool)

(assert (=> start!34504 m!346111))

(declare-fun m!346113 () Bool)

(assert (=> b!344503 m!346113))

(declare-fun m!346115 () Bool)

(assert (=> b!344509 m!346115))

(check-sat (not b!344506) (not start!34504) (not b!344503) (not mapNonEmpty!12495) (not b_next!7419) (not b!344502) tp_is_empty!7371 (not b!344509) (not b!344508) b_and!14645)
(check-sat b_and!14645 (not b_next!7419))

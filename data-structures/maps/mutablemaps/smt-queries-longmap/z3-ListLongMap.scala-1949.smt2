; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34450 () Bool)

(assert start!34450)

(declare-fun b_free!7365 () Bool)

(declare-fun b_next!7365 () Bool)

(assert (=> start!34450 (= b_free!7365 (not b_next!7365))))

(declare-fun tp!25641 () Bool)

(declare-fun b_and!14591 () Bool)

(assert (=> start!34450 (= tp!25641 b_and!14591)))

(declare-fun b!343772 () Bool)

(declare-fun res!190132 () Bool)

(declare-fun e!210783 () Bool)

(assert (=> b!343772 (=> (not res!190132) (not e!210783))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((V!10733 0))(
  ( (V!10734 (val!3703 Int)) )
))
(declare-fun zeroValue!1467 () V!10733)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3315 0))(
  ( (ValueCellFull!3315 (v!5875 V!10733)) (EmptyCell!3315) )
))
(declare-datatypes ((array!18197 0))(
  ( (array!18198 (arr!8612 (Array (_ BitVec 32) ValueCell!3315)) (size!8964 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18197)

(declare-datatypes ((array!18199 0))(
  ( (array!18200 (arr!8613 (Array (_ BitVec 32) (_ BitVec 64))) (size!8965 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18199)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10733)

(declare-datatypes ((tuple2!5354 0))(
  ( (tuple2!5355 (_1!2687 (_ BitVec 64)) (_2!2687 V!10733)) )
))
(declare-datatypes ((List!4999 0))(
  ( (Nil!4996) (Cons!4995 (h!5851 tuple2!5354) (t!10123 List!4999)) )
))
(declare-datatypes ((ListLongMap!4281 0))(
  ( (ListLongMap!4282 (toList!2156 List!4999)) )
))
(declare-fun contains!2210 (ListLongMap!4281 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1676 (array!18199 array!18197 (_ BitVec 32) (_ BitVec 32) V!10733 V!10733 (_ BitVec 32) Int) ListLongMap!4281)

(assert (=> b!343772 (= res!190132 (not (contains!2210 (getCurrentListMap!1676 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!343773 () Bool)

(declare-fun res!190133 () Bool)

(assert (=> b!343773 (=> (not res!190133) (not e!210783))))

(assert (=> b!343773 (= res!190133 (and (= (size!8964 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!8965 _keys!1895) (size!8964 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!12414 () Bool)

(declare-fun mapRes!12414 () Bool)

(assert (=> mapIsEmpty!12414 mapRes!12414))

(declare-fun b!343774 () Bool)

(declare-fun res!190131 () Bool)

(assert (=> b!343774 (=> (not res!190131) (not e!210783))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18199 (_ BitVec 32)) Bool)

(assert (=> b!343774 (= res!190131 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!343776 () Bool)

(declare-fun e!210782 () Bool)

(declare-fun e!210781 () Bool)

(assert (=> b!343776 (= e!210782 (and e!210781 mapRes!12414))))

(declare-fun condMapEmpty!12414 () Bool)

(declare-fun mapDefault!12414 () ValueCell!3315)

(assert (=> b!343776 (= condMapEmpty!12414 (= (arr!8612 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3315)) mapDefault!12414)))))

(declare-fun b!343777 () Bool)

(declare-fun tp_is_empty!7317 () Bool)

(assert (=> b!343777 (= e!210781 tp_is_empty!7317)))

(declare-fun mapNonEmpty!12414 () Bool)

(declare-fun tp!25640 () Bool)

(declare-fun e!210780 () Bool)

(assert (=> mapNonEmpty!12414 (= mapRes!12414 (and tp!25640 e!210780))))

(declare-fun mapRest!12414 () (Array (_ BitVec 32) ValueCell!3315))

(declare-fun mapKey!12414 () (_ BitVec 32))

(declare-fun mapValue!12414 () ValueCell!3315)

(assert (=> mapNonEmpty!12414 (= (arr!8612 _values!1525) (store mapRest!12414 mapKey!12414 mapValue!12414))))

(declare-fun b!343778 () Bool)

(assert (=> b!343778 (= e!210783 false)))

(declare-datatypes ((SeekEntryResult!3323 0))(
  ( (MissingZero!3323 (index!15471 (_ BitVec 32))) (Found!3323 (index!15472 (_ BitVec 32))) (Intermediate!3323 (undefined!4135 Bool) (index!15473 (_ BitVec 32)) (x!34232 (_ BitVec 32))) (Undefined!3323) (MissingVacant!3323 (index!15474 (_ BitVec 32))) )
))
(declare-fun lt!162582 () SeekEntryResult!3323)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18199 (_ BitVec 32)) SeekEntryResult!3323)

(assert (=> b!343778 (= lt!162582 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!343779 () Bool)

(declare-fun res!190136 () Bool)

(assert (=> b!343779 (=> (not res!190136) (not e!210783))))

(declare-datatypes ((List!5000 0))(
  ( (Nil!4997) (Cons!4996 (h!5852 (_ BitVec 64)) (t!10124 List!5000)) )
))
(declare-fun arrayNoDuplicates!0 (array!18199 (_ BitVec 32) List!5000) Bool)

(assert (=> b!343779 (= res!190136 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!4997))))

(declare-fun b!343780 () Bool)

(assert (=> b!343780 (= e!210780 tp_is_empty!7317)))

(declare-fun b!343775 () Bool)

(declare-fun res!190134 () Bool)

(assert (=> b!343775 (=> (not res!190134) (not e!210783))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!343775 (= res!190134 (validKeyInArray!0 k0!1348))))

(declare-fun res!190135 () Bool)

(assert (=> start!34450 (=> (not res!190135) (not e!210783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34450 (= res!190135 (validMask!0 mask!2385))))

(assert (=> start!34450 e!210783))

(assert (=> start!34450 true))

(assert (=> start!34450 tp_is_empty!7317))

(assert (=> start!34450 tp!25641))

(declare-fun array_inv!6372 (array!18197) Bool)

(assert (=> start!34450 (and (array_inv!6372 _values!1525) e!210782)))

(declare-fun array_inv!6373 (array!18199) Bool)

(assert (=> start!34450 (array_inv!6373 _keys!1895)))

(assert (= (and start!34450 res!190135) b!343773))

(assert (= (and b!343773 res!190133) b!343774))

(assert (= (and b!343774 res!190131) b!343779))

(assert (= (and b!343779 res!190136) b!343775))

(assert (= (and b!343775 res!190134) b!343772))

(assert (= (and b!343772 res!190132) b!343778))

(assert (= (and b!343776 condMapEmpty!12414) mapIsEmpty!12414))

(assert (= (and b!343776 (not condMapEmpty!12414)) mapNonEmpty!12414))

(get-info :version)

(assert (= (and mapNonEmpty!12414 ((_ is ValueCellFull!3315) mapValue!12414)) b!343780))

(assert (= (and b!343776 ((_ is ValueCellFull!3315) mapDefault!12414)) b!343777))

(assert (= start!34450 b!343776))

(declare-fun m!345557 () Bool)

(assert (=> start!34450 m!345557))

(declare-fun m!345559 () Bool)

(assert (=> start!34450 m!345559))

(declare-fun m!345561 () Bool)

(assert (=> start!34450 m!345561))

(declare-fun m!345563 () Bool)

(assert (=> mapNonEmpty!12414 m!345563))

(declare-fun m!345565 () Bool)

(assert (=> b!343772 m!345565))

(assert (=> b!343772 m!345565))

(declare-fun m!345567 () Bool)

(assert (=> b!343772 m!345567))

(declare-fun m!345569 () Bool)

(assert (=> b!343779 m!345569))

(declare-fun m!345571 () Bool)

(assert (=> b!343774 m!345571))

(declare-fun m!345573 () Bool)

(assert (=> b!343778 m!345573))

(declare-fun m!345575 () Bool)

(assert (=> b!343775 m!345575))

(check-sat (not b!343775) (not start!34450) (not b!343778) (not b!343779) (not b!343772) b_and!14591 tp_is_empty!7317 (not b!343774) (not mapNonEmpty!12414) (not b_next!7365))
(check-sat b_and!14591 (not b_next!7365))

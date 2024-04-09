; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!82540 () Bool)

(assert start!82540)

(declare-fun b!961436 () Bool)

(declare-fun res!643562 () Bool)

(declare-fun e!542170 () Bool)

(assert (=> b!961436 (=> (not res!643562) (not e!542170))))

(declare-datatypes ((array!58989 0))(
  ( (array!58990 (arr!28359 (Array (_ BitVec 32) (_ BitVec 64))) (size!28839 (_ BitVec 32))) )
))
(declare-fun _keys!1686 () array!58989)

(declare-fun mask!2110 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!58989 (_ BitVec 32)) Bool)

(assert (=> b!961436 (= res!643562 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1686 mask!2110))))

(declare-fun b!961437 () Bool)

(declare-fun res!643560 () Bool)

(assert (=> b!961437 (=> (not res!643560) (not e!542170))))

(declare-fun extraKeys!1321 () (_ BitVec 32))

(declare-datatypes ((V!33579 0))(
  ( (V!33580 (val!10774 Int)) )
))
(declare-datatypes ((ValueCell!10242 0))(
  ( (ValueCellFull!10242 (v!13332 V!33579)) (EmptyCell!10242) )
))
(declare-datatypes ((array!58991 0))(
  ( (array!58992 (arr!28360 (Array (_ BitVec 32) ValueCell!10242)) (size!28840 (_ BitVec 32))) )
))
(declare-fun _values!1400 () array!58991)

(assert (=> b!961437 (= res!643560 (and (= (size!28840 _values!1400) (bvadd #b00000000000000000000000000000001 mask!2110)) (= (size!28839 _keys!1686) (size!28840 _values!1400)) (bvsge mask!2110 #b00000000000000000000000000000000) (bvsge extraKeys!1321 #b00000000000000000000000000000000) (bvsle extraKeys!1321 #b00000000000000000000000000000011)))))

(declare-fun b!961438 () Bool)

(declare-fun e!542172 () Bool)

(declare-fun e!542171 () Bool)

(declare-fun mapRes!34165 () Bool)

(assert (=> b!961438 (= e!542172 (and e!542171 mapRes!34165))))

(declare-fun condMapEmpty!34165 () Bool)

(declare-fun mapDefault!34165 () ValueCell!10242)

(assert (=> b!961438 (= condMapEmpty!34165 (= (arr!28360 _values!1400) ((as const (Array (_ BitVec 32) ValueCell!10242)) mapDefault!34165)))))

(declare-fun mapNonEmpty!34165 () Bool)

(declare-fun tp!65095 () Bool)

(declare-fun e!542173 () Bool)

(assert (=> mapNonEmpty!34165 (= mapRes!34165 (and tp!65095 e!542173))))

(declare-fun mapRest!34165 () (Array (_ BitVec 32) ValueCell!10242))

(declare-fun mapValue!34165 () ValueCell!10242)

(declare-fun mapKey!34165 () (_ BitVec 32))

(assert (=> mapNonEmpty!34165 (= (arr!28360 _values!1400) (store mapRest!34165 mapKey!34165 mapValue!34165))))

(declare-fun b!961439 () Bool)

(declare-fun tp_is_empty!21447 () Bool)

(assert (=> b!961439 (= e!542171 tp_is_empty!21447)))

(declare-fun res!643561 () Bool)

(assert (=> start!82540 (=> (not res!643561) (not e!542170))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!82540 (= res!643561 (validMask!0 mask!2110))))

(assert (=> start!82540 e!542170))

(assert (=> start!82540 true))

(declare-fun array_inv!21903 (array!58991) Bool)

(assert (=> start!82540 (and (array_inv!21903 _values!1400) e!542172)))

(declare-fun array_inv!21904 (array!58989) Bool)

(assert (=> start!82540 (array_inv!21904 _keys!1686)))

(declare-fun b!961440 () Bool)

(assert (=> b!961440 (= e!542173 tp_is_empty!21447)))

(declare-fun b!961441 () Bool)

(assert (=> b!961441 (= e!542170 false)))

(declare-fun lt!430725 () Bool)

(declare-datatypes ((List!19815 0))(
  ( (Nil!19812) (Cons!19811 (h!20973 (_ BitVec 64)) (t!28186 List!19815)) )
))
(declare-fun arrayNoDuplicates!0 (array!58989 (_ BitVec 32) List!19815) Bool)

(assert (=> b!961441 (= lt!430725 (arrayNoDuplicates!0 _keys!1686 #b00000000000000000000000000000000 Nil!19812))))

(declare-fun mapIsEmpty!34165 () Bool)

(assert (=> mapIsEmpty!34165 mapRes!34165))

(assert (= (and start!82540 res!643561) b!961437))

(assert (= (and b!961437 res!643560) b!961436))

(assert (= (and b!961436 res!643562) b!961441))

(assert (= (and b!961438 condMapEmpty!34165) mapIsEmpty!34165))

(assert (= (and b!961438 (not condMapEmpty!34165)) mapNonEmpty!34165))

(get-info :version)

(assert (= (and mapNonEmpty!34165 ((_ is ValueCellFull!10242) mapValue!34165)) b!961440))

(assert (= (and b!961438 ((_ is ValueCellFull!10242) mapDefault!34165)) b!961439))

(assert (= start!82540 b!961438))

(declare-fun m!891445 () Bool)

(assert (=> b!961436 m!891445))

(declare-fun m!891447 () Bool)

(assert (=> mapNonEmpty!34165 m!891447))

(declare-fun m!891449 () Bool)

(assert (=> start!82540 m!891449))

(declare-fun m!891451 () Bool)

(assert (=> start!82540 m!891451))

(declare-fun m!891453 () Bool)

(assert (=> start!82540 m!891453))

(declare-fun m!891455 () Bool)

(assert (=> b!961441 m!891455))

(check-sat (not mapNonEmpty!34165) tp_is_empty!21447 (not start!82540) (not b!961436) (not b!961441))
(check-sat)

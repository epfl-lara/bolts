; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!35194 () Bool)

(assert start!35194)

(declare-fun b_free!7779 () Bool)

(declare-fun b_next!7779 () Bool)

(assert (=> start!35194 (= b_free!7779 (not b_next!7779))))

(declare-fun tp!26928 () Bool)

(declare-fun b_and!15035 () Bool)

(assert (=> start!35194 (= tp!26928 b_and!15035)))

(declare-fun b!352523 () Bool)

(declare-fun e!215885 () Bool)

(assert (=> b!352523 (= e!215885 false)))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-datatypes ((array!19011 0))(
  ( (array!19012 (arr!9004 (Array (_ BitVec 32) (_ BitVec 64))) (size!9356 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!19011)

(declare-datatypes ((SeekEntryResult!3463 0))(
  ( (MissingZero!3463 (index!16031 (_ BitVec 32))) (Found!3463 (index!16032 (_ BitVec 32))) (Intermediate!3463 (undefined!4275 Bool) (index!16033 (_ BitVec 32)) (x!35074 (_ BitVec 32))) (Undefined!3463) (MissingVacant!3463 (index!16034 (_ BitVec 32))) )
))
(declare-fun lt!165294 () SeekEntryResult!3463)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!19011 (_ BitVec 32)) SeekEntryResult!3463)

(assert (=> b!352523 (= lt!165294 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!352524 () Bool)

(declare-fun e!215884 () Bool)

(declare-fun e!215883 () Bool)

(declare-fun mapRes!13080 () Bool)

(assert (=> b!352524 (= e!215884 (and e!215883 mapRes!13080))))

(declare-fun condMapEmpty!13080 () Bool)

(declare-datatypes ((V!11285 0))(
  ( (V!11286 (val!3910 Int)) )
))
(declare-datatypes ((ValueCell!3522 0))(
  ( (ValueCellFull!3522 (v!6097 V!11285)) (EmptyCell!3522) )
))
(declare-datatypes ((array!19013 0))(
  ( (array!19014 (arr!9005 (Array (_ BitVec 32) ValueCell!3522)) (size!9357 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!19013)

(declare-fun mapDefault!13080 () ValueCell!3522)

(assert (=> b!352524 (= condMapEmpty!13080 (= (arr!9005 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3522)) mapDefault!13080)))))

(declare-fun b!352525 () Bool)

(declare-fun res!195543 () Bool)

(assert (=> b!352525 (=> (not res!195543) (not e!215885))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!352525 (= res!195543 (and (= (size!9357 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9356 _keys!1895) (size!9357 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!352526 () Bool)

(declare-fun res!195545 () Bool)

(assert (=> b!352526 (=> (not res!195545) (not e!215885))))

(declare-datatypes ((List!5274 0))(
  ( (Nil!5271) (Cons!5270 (h!6126 (_ BitVec 64)) (t!10428 List!5274)) )
))
(declare-fun arrayNoDuplicates!0 (array!19011 (_ BitVec 32) List!5274) Bool)

(assert (=> b!352526 (= res!195545 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5271))))

(declare-fun b!352527 () Bool)

(declare-fun res!195544 () Bool)

(assert (=> b!352527 (=> (not res!195544) (not e!215885))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!352527 (= res!195544 (validKeyInArray!0 k0!1348))))

(declare-fun mapIsEmpty!13080 () Bool)

(assert (=> mapIsEmpty!13080 mapRes!13080))

(declare-fun b!352528 () Bool)

(declare-fun res!195546 () Bool)

(assert (=> b!352528 (=> (not res!195546) (not e!215885))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!19011 (_ BitVec 32)) Bool)

(assert (=> b!352528 (= res!195546 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!352529 () Bool)

(declare-fun res!195547 () Bool)

(assert (=> b!352529 (=> (not res!195547) (not e!215885))))

(declare-fun zeroValue!1467 () V!11285)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11285)

(declare-datatypes ((tuple2!5638 0))(
  ( (tuple2!5639 (_1!2829 (_ BitVec 64)) (_2!2829 V!11285)) )
))
(declare-datatypes ((List!5275 0))(
  ( (Nil!5272) (Cons!5271 (h!6127 tuple2!5638) (t!10429 List!5275)) )
))
(declare-datatypes ((ListLongMap!4565 0))(
  ( (ListLongMap!4566 (toList!2298 List!5275)) )
))
(declare-fun contains!2367 (ListLongMap!4565 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1815 (array!19011 array!19013 (_ BitVec 32) (_ BitVec 32) V!11285 V!11285 (_ BitVec 32) Int) ListLongMap!4565)

(assert (=> b!352529 (= res!195547 (not (contains!2367 (getCurrentListMap!1815 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!352530 () Bool)

(declare-fun e!215886 () Bool)

(declare-fun tp_is_empty!7731 () Bool)

(assert (=> b!352530 (= e!215886 tp_is_empty!7731)))

(declare-fun mapNonEmpty!13080 () Bool)

(declare-fun tp!26927 () Bool)

(assert (=> mapNonEmpty!13080 (= mapRes!13080 (and tp!26927 e!215886))))

(declare-fun mapValue!13080 () ValueCell!3522)

(declare-fun mapKey!13080 () (_ BitVec 32))

(declare-fun mapRest!13080 () (Array (_ BitVec 32) ValueCell!3522))

(assert (=> mapNonEmpty!13080 (= (arr!9005 _values!1525) (store mapRest!13080 mapKey!13080 mapValue!13080))))

(declare-fun b!352531 () Bool)

(assert (=> b!352531 (= e!215883 tp_is_empty!7731)))

(declare-fun res!195548 () Bool)

(assert (=> start!35194 (=> (not res!195548) (not e!215885))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!35194 (= res!195548 (validMask!0 mask!2385))))

(assert (=> start!35194 e!215885))

(assert (=> start!35194 true))

(assert (=> start!35194 tp_is_empty!7731))

(assert (=> start!35194 tp!26928))

(declare-fun array_inv!6634 (array!19013) Bool)

(assert (=> start!35194 (and (array_inv!6634 _values!1525) e!215884)))

(declare-fun array_inv!6635 (array!19011) Bool)

(assert (=> start!35194 (array_inv!6635 _keys!1895)))

(assert (= (and start!35194 res!195548) b!352525))

(assert (= (and b!352525 res!195543) b!352528))

(assert (= (and b!352528 res!195546) b!352526))

(assert (= (and b!352526 res!195545) b!352527))

(assert (= (and b!352527 res!195544) b!352529))

(assert (= (and b!352529 res!195547) b!352523))

(assert (= (and b!352524 condMapEmpty!13080) mapIsEmpty!13080))

(assert (= (and b!352524 (not condMapEmpty!13080)) mapNonEmpty!13080))

(get-info :version)

(assert (= (and mapNonEmpty!13080 ((_ is ValueCellFull!3522) mapValue!13080)) b!352530))

(assert (= (and b!352524 ((_ is ValueCellFull!3522) mapDefault!13080)) b!352531))

(assert (= start!35194 b!352524))

(declare-fun m!352127 () Bool)

(assert (=> mapNonEmpty!13080 m!352127))

(declare-fun m!352129 () Bool)

(assert (=> b!352527 m!352129))

(declare-fun m!352131 () Bool)

(assert (=> b!352523 m!352131))

(declare-fun m!352133 () Bool)

(assert (=> b!352528 m!352133))

(declare-fun m!352135 () Bool)

(assert (=> b!352526 m!352135))

(declare-fun m!352137 () Bool)

(assert (=> b!352529 m!352137))

(assert (=> b!352529 m!352137))

(declare-fun m!352139 () Bool)

(assert (=> b!352529 m!352139))

(declare-fun m!352141 () Bool)

(assert (=> start!35194 m!352141))

(declare-fun m!352143 () Bool)

(assert (=> start!35194 m!352143))

(declare-fun m!352145 () Bool)

(assert (=> start!35194 m!352145))

(check-sat (not b!352526) (not b!352523) (not start!35194) (not b!352527) (not b!352528) tp_is_empty!7731 (not mapNonEmpty!13080) (not b_next!7779) (not b!352529) b_and!15035)
(check-sat b_and!15035 (not b_next!7779))

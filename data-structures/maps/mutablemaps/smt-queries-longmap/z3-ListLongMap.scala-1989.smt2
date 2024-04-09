; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34828 () Bool)

(assert start!34828)

(declare-fun b_free!7605 () Bool)

(declare-fun b_next!7605 () Bool)

(assert (=> start!34828 (= b_free!7605 (not b_next!7605))))

(declare-fun tp!26382 () Bool)

(declare-fun b_and!14845 () Bool)

(assert (=> start!34828 (= tp!26382 b_and!14845)))

(declare-fun b!348339 () Bool)

(declare-fun res!193044 () Bool)

(declare-fun e!213430 () Bool)

(assert (=> b!348339 (=> (not res!193044) (not e!213430))))

(declare-datatypes ((array!18667 0))(
  ( (array!18668 (arr!8840 (Array (_ BitVec 32) (_ BitVec 64))) (size!9192 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18667)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18667 (_ BitVec 32)) Bool)

(assert (=> b!348339 (= res!193044 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348340 () Bool)

(declare-fun res!193051 () Bool)

(assert (=> b!348340 (=> (not res!193051) (not e!213430))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348340 (= res!193051 (validKeyInArray!0 k0!1348))))

(declare-fun b!348341 () Bool)

(declare-fun e!213431 () Bool)

(assert (=> b!348341 (= e!213431 false)))

(declare-fun lt!163857 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18667 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348341 (= lt!163857 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun res!193045 () Bool)

(assert (=> start!34828 (=> (not res!193045) (not e!213430))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34828 (= res!193045 (validMask!0 mask!2385))))

(assert (=> start!34828 e!213430))

(assert (=> start!34828 true))

(declare-fun tp_is_empty!7557 () Bool)

(assert (=> start!34828 tp_is_empty!7557))

(assert (=> start!34828 tp!26382))

(declare-datatypes ((V!11053 0))(
  ( (V!11054 (val!3823 Int)) )
))
(declare-datatypes ((ValueCell!3435 0))(
  ( (ValueCellFull!3435 (v!6002 V!11053)) (EmptyCell!3435) )
))
(declare-datatypes ((array!18669 0))(
  ( (array!18670 (arr!8841 (Array (_ BitVec 32) ValueCell!3435)) (size!9193 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18669)

(declare-fun e!213426 () Bool)

(declare-fun array_inv!6526 (array!18669) Bool)

(assert (=> start!34828 (and (array_inv!6526 _values!1525) e!213426)))

(declare-fun array_inv!6527 (array!18667) Bool)

(assert (=> start!34828 (array_inv!6527 _keys!1895)))

(declare-fun b!348342 () Bool)

(declare-fun e!213427 () Bool)

(assert (=> b!348342 (= e!213427 tp_is_empty!7557)))

(declare-fun b!348343 () Bool)

(declare-fun res!193050 () Bool)

(assert (=> b!348343 (=> (not res!193050) (not e!213431))))

(declare-fun arrayContainsKey!0 (array!18667 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348343 (= res!193050 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!12795 () Bool)

(declare-fun mapRes!12795 () Bool)

(assert (=> mapIsEmpty!12795 mapRes!12795))

(declare-fun b!348344 () Bool)

(declare-fun res!193047 () Bool)

(assert (=> b!348344 (=> (not res!193047) (not e!213430))))

(declare-datatypes ((List!5161 0))(
  ( (Nil!5158) (Cons!5157 (h!6013 (_ BitVec 64)) (t!10299 List!5161)) )
))
(declare-fun arrayNoDuplicates!0 (array!18667 (_ BitVec 32) List!5161) Bool)

(assert (=> b!348344 (= res!193047 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5158))))

(declare-fun mapNonEmpty!12795 () Bool)

(declare-fun tp!26381 () Bool)

(declare-fun e!213429 () Bool)

(assert (=> mapNonEmpty!12795 (= mapRes!12795 (and tp!26381 e!213429))))

(declare-fun mapValue!12795 () ValueCell!3435)

(declare-fun mapRest!12795 () (Array (_ BitVec 32) ValueCell!3435))

(declare-fun mapKey!12795 () (_ BitVec 32))

(assert (=> mapNonEmpty!12795 (= (arr!8841 _values!1525) (store mapRest!12795 mapKey!12795 mapValue!12795))))

(declare-fun b!348345 () Bool)

(declare-fun res!193046 () Bool)

(assert (=> b!348345 (=> (not res!193046) (not e!213430))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348345 (= res!193046 (and (= (size!9193 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9192 _keys!1895) (size!9193 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348346 () Bool)

(assert (=> b!348346 (= e!213430 e!213431)))

(declare-fun res!193048 () Bool)

(assert (=> b!348346 (=> (not res!193048) (not e!213431))))

(declare-datatypes ((SeekEntryResult!3405 0))(
  ( (MissingZero!3405 (index!15799 (_ BitVec 32))) (Found!3405 (index!15800 (_ BitVec 32))) (Intermediate!3405 (undefined!4217 Bool) (index!15801 (_ BitVec 32)) (x!34704 (_ BitVec 32))) (Undefined!3405) (MissingVacant!3405 (index!15802 (_ BitVec 32))) )
))
(declare-fun lt!163856 () SeekEntryResult!3405)

(get-info :version)

(assert (=> b!348346 (= res!193048 (and (not ((_ is Found!3405) lt!163856)) ((_ is MissingZero!3405) lt!163856)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18667 (_ BitVec 32)) SeekEntryResult!3405)

(assert (=> b!348346 (= lt!163856 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!348347 () Bool)

(assert (=> b!348347 (= e!213429 tp_is_empty!7557)))

(declare-fun b!348348 () Bool)

(declare-fun res!193049 () Bool)

(assert (=> b!348348 (=> (not res!193049) (not e!213430))))

(declare-fun zeroValue!1467 () V!11053)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11053)

(declare-datatypes ((tuple2!5520 0))(
  ( (tuple2!5521 (_1!2770 (_ BitVec 64)) (_2!2770 V!11053)) )
))
(declare-datatypes ((List!5162 0))(
  ( (Nil!5159) (Cons!5158 (h!6014 tuple2!5520) (t!10300 List!5162)) )
))
(declare-datatypes ((ListLongMap!4447 0))(
  ( (ListLongMap!4448 (toList!2239 List!5162)) )
))
(declare-fun contains!2300 (ListLongMap!4447 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1756 (array!18667 array!18669 (_ BitVec 32) (_ BitVec 32) V!11053 V!11053 (_ BitVec 32) Int) ListLongMap!4447)

(assert (=> b!348348 (= res!193049 (not (contains!2300 (getCurrentListMap!1756 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!348349 () Bool)

(assert (=> b!348349 (= e!213426 (and e!213427 mapRes!12795))))

(declare-fun condMapEmpty!12795 () Bool)

(declare-fun mapDefault!12795 () ValueCell!3435)

(assert (=> b!348349 (= condMapEmpty!12795 (= (arr!8841 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3435)) mapDefault!12795)))))

(assert (= (and start!34828 res!193045) b!348345))

(assert (= (and b!348345 res!193046) b!348339))

(assert (= (and b!348339 res!193044) b!348344))

(assert (= (and b!348344 res!193047) b!348340))

(assert (= (and b!348340 res!193051) b!348348))

(assert (= (and b!348348 res!193049) b!348346))

(assert (= (and b!348346 res!193048) b!348343))

(assert (= (and b!348343 res!193050) b!348341))

(assert (= (and b!348349 condMapEmpty!12795) mapIsEmpty!12795))

(assert (= (and b!348349 (not condMapEmpty!12795)) mapNonEmpty!12795))

(assert (= (and mapNonEmpty!12795 ((_ is ValueCellFull!3435) mapValue!12795)) b!348347))

(assert (= (and b!348349 ((_ is ValueCellFull!3435) mapDefault!12795)) b!348342))

(assert (= start!34828 b!348349))

(declare-fun m!349125 () Bool)

(assert (=> b!348340 m!349125))

(declare-fun m!349127 () Bool)

(assert (=> start!34828 m!349127))

(declare-fun m!349129 () Bool)

(assert (=> start!34828 m!349129))

(declare-fun m!349131 () Bool)

(assert (=> start!34828 m!349131))

(declare-fun m!349133 () Bool)

(assert (=> b!348341 m!349133))

(declare-fun m!349135 () Bool)

(assert (=> b!348339 m!349135))

(declare-fun m!349137 () Bool)

(assert (=> b!348348 m!349137))

(assert (=> b!348348 m!349137))

(declare-fun m!349139 () Bool)

(assert (=> b!348348 m!349139))

(declare-fun m!349141 () Bool)

(assert (=> b!348343 m!349141))

(declare-fun m!349143 () Bool)

(assert (=> mapNonEmpty!12795 m!349143))

(declare-fun m!349145 () Bool)

(assert (=> b!348346 m!349145))

(declare-fun m!349147 () Bool)

(assert (=> b!348344 m!349147))

(check-sat (not b!348344) (not b!348348) (not b!348339) tp_is_empty!7557 (not b!348343) (not mapNonEmpty!12795) (not b!348341) b_and!14845 (not b!348346) (not b!348340) (not b_next!7605) (not start!34828))
(check-sat b_and!14845 (not b_next!7605))

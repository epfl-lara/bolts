; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34834 () Bool)

(assert start!34834)

(declare-fun b_free!7611 () Bool)

(declare-fun b_next!7611 () Bool)

(assert (=> start!34834 (= b_free!7611 (not b_next!7611))))

(declare-fun tp!26399 () Bool)

(declare-fun b_and!14851 () Bool)

(assert (=> start!34834 (= tp!26399 b_and!14851)))

(declare-fun b!348438 () Bool)

(declare-fun res!193117 () Bool)

(declare-fun e!213483 () Bool)

(assert (=> b!348438 (=> (not res!193117) (not e!213483))))

(declare-datatypes ((array!18679 0))(
  ( (array!18680 (arr!8846 (Array (_ BitVec 32) (_ BitVec 64))) (size!9198 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18679)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18679 (_ BitVec 32)) Bool)

(assert (=> b!348438 (= res!193117 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348439 () Bool)

(declare-fun e!213482 () Bool)

(assert (=> b!348439 (= e!213482 false)))

(declare-fun lt!163875 () (_ BitVec 32))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!18679 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348439 (= lt!163875 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun res!193120 () Bool)

(assert (=> start!34834 (=> (not res!193120) (not e!213483))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34834 (= res!193120 (validMask!0 mask!2385))))

(assert (=> start!34834 e!213483))

(assert (=> start!34834 true))

(declare-fun tp_is_empty!7563 () Bool)

(assert (=> start!34834 tp_is_empty!7563))

(assert (=> start!34834 tp!26399))

(declare-datatypes ((V!11061 0))(
  ( (V!11062 (val!3826 Int)) )
))
(declare-datatypes ((ValueCell!3438 0))(
  ( (ValueCellFull!3438 (v!6005 V!11061)) (EmptyCell!3438) )
))
(declare-datatypes ((array!18681 0))(
  ( (array!18682 (arr!8847 (Array (_ BitVec 32) ValueCell!3438)) (size!9199 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18681)

(declare-fun e!213480 () Bool)

(declare-fun array_inv!6528 (array!18681) Bool)

(assert (=> start!34834 (and (array_inv!6528 _values!1525) e!213480)))

(declare-fun array_inv!6529 (array!18679) Bool)

(assert (=> start!34834 (array_inv!6529 _keys!1895)))

(declare-fun b!348440 () Bool)

(declare-fun e!213481 () Bool)

(assert (=> b!348440 (= e!213481 tp_is_empty!7563)))

(declare-fun b!348441 () Bool)

(assert (=> b!348441 (= e!213483 e!213482)))

(declare-fun res!193119 () Bool)

(assert (=> b!348441 (=> (not res!193119) (not e!213482))))

(declare-datatypes ((SeekEntryResult!3407 0))(
  ( (MissingZero!3407 (index!15807 (_ BitVec 32))) (Found!3407 (index!15808 (_ BitVec 32))) (Intermediate!3407 (undefined!4219 Bool) (index!15809 (_ BitVec 32)) (x!34714 (_ BitVec 32))) (Undefined!3407) (MissingVacant!3407 (index!15810 (_ BitVec 32))) )
))
(declare-fun lt!163874 () SeekEntryResult!3407)

(get-info :version)

(assert (=> b!348441 (= res!193119 (and (not ((_ is Found!3407) lt!163874)) ((_ is MissingZero!3407) lt!163874)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18679 (_ BitVec 32)) SeekEntryResult!3407)

(assert (=> b!348441 (= lt!163874 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!348442 () Bool)

(declare-fun res!193118 () Bool)

(assert (=> b!348442 (=> (not res!193118) (not e!213483))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348442 (= res!193118 (validKeyInArray!0 k0!1348))))

(declare-fun b!348443 () Bool)

(declare-fun res!193116 () Bool)

(assert (=> b!348443 (=> (not res!193116) (not e!213483))))

(declare-datatypes ((List!5165 0))(
  ( (Nil!5162) (Cons!5161 (h!6017 (_ BitVec 64)) (t!10303 List!5165)) )
))
(declare-fun arrayNoDuplicates!0 (array!18679 (_ BitVec 32) List!5165) Bool)

(assert (=> b!348443 (= res!193116 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5162))))

(declare-fun b!348444 () Bool)

(declare-fun mapRes!12804 () Bool)

(assert (=> b!348444 (= e!213480 (and e!213481 mapRes!12804))))

(declare-fun condMapEmpty!12804 () Bool)

(declare-fun mapDefault!12804 () ValueCell!3438)

(assert (=> b!348444 (= condMapEmpty!12804 (= (arr!8847 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3438)) mapDefault!12804)))))

(declare-fun b!348445 () Bool)

(declare-fun res!193123 () Bool)

(assert (=> b!348445 (=> (not res!193123) (not e!213483))))

(declare-fun extraKeys!1446 () (_ BitVec 32))

(assert (=> b!348445 (= res!193123 (and (= (size!9199 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9198 _keys!1895) (size!9199 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!12804 () Bool)

(declare-fun tp!26400 () Bool)

(declare-fun e!213484 () Bool)

(assert (=> mapNonEmpty!12804 (= mapRes!12804 (and tp!26400 e!213484))))

(declare-fun mapValue!12804 () ValueCell!3438)

(declare-fun mapKey!12804 () (_ BitVec 32))

(declare-fun mapRest!12804 () (Array (_ BitVec 32) ValueCell!3438))

(assert (=> mapNonEmpty!12804 (= (arr!8847 _values!1525) (store mapRest!12804 mapKey!12804 mapValue!12804))))

(declare-fun b!348446 () Bool)

(assert (=> b!348446 (= e!213484 tp_is_empty!7563)))

(declare-fun mapIsEmpty!12804 () Bool)

(assert (=> mapIsEmpty!12804 mapRes!12804))

(declare-fun b!348447 () Bool)

(declare-fun res!193121 () Bool)

(assert (=> b!348447 (=> (not res!193121) (not e!213483))))

(declare-fun zeroValue!1467 () V!11061)

(declare-fun defaultEntry!1528 () Int)

(declare-fun minValue!1467 () V!11061)

(declare-datatypes ((tuple2!5524 0))(
  ( (tuple2!5525 (_1!2772 (_ BitVec 64)) (_2!2772 V!11061)) )
))
(declare-datatypes ((List!5166 0))(
  ( (Nil!5163) (Cons!5162 (h!6018 tuple2!5524) (t!10304 List!5166)) )
))
(declare-datatypes ((ListLongMap!4451 0))(
  ( (ListLongMap!4452 (toList!2241 List!5166)) )
))
(declare-fun contains!2302 (ListLongMap!4451 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1758 (array!18679 array!18681 (_ BitVec 32) (_ BitVec 32) V!11061 V!11061 (_ BitVec 32) Int) ListLongMap!4451)

(assert (=> b!348447 (= res!193121 (not (contains!2302 (getCurrentListMap!1758 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!348448 () Bool)

(declare-fun res!193122 () Bool)

(assert (=> b!348448 (=> (not res!193122) (not e!213482))))

(declare-fun arrayContainsKey!0 (array!18679 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348448 (= res!193122 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(assert (= (and start!34834 res!193120) b!348445))

(assert (= (and b!348445 res!193123) b!348438))

(assert (= (and b!348438 res!193117) b!348443))

(assert (= (and b!348443 res!193116) b!348442))

(assert (= (and b!348442 res!193118) b!348447))

(assert (= (and b!348447 res!193121) b!348441))

(assert (= (and b!348441 res!193119) b!348448))

(assert (= (and b!348448 res!193122) b!348439))

(assert (= (and b!348444 condMapEmpty!12804) mapIsEmpty!12804))

(assert (= (and b!348444 (not condMapEmpty!12804)) mapNonEmpty!12804))

(assert (= (and mapNonEmpty!12804 ((_ is ValueCellFull!3438) mapValue!12804)) b!348446))

(assert (= (and b!348444 ((_ is ValueCellFull!3438) mapDefault!12804)) b!348440))

(assert (= start!34834 b!348444))

(declare-fun m!349197 () Bool)

(assert (=> b!348439 m!349197))

(declare-fun m!349199 () Bool)

(assert (=> b!348448 m!349199))

(declare-fun m!349201 () Bool)

(assert (=> b!348443 m!349201))

(declare-fun m!349203 () Bool)

(assert (=> b!348438 m!349203))

(declare-fun m!349205 () Bool)

(assert (=> b!348442 m!349205))

(declare-fun m!349207 () Bool)

(assert (=> b!348441 m!349207))

(declare-fun m!349209 () Bool)

(assert (=> mapNonEmpty!12804 m!349209))

(declare-fun m!349211 () Bool)

(assert (=> start!34834 m!349211))

(declare-fun m!349213 () Bool)

(assert (=> start!34834 m!349213))

(declare-fun m!349215 () Bool)

(assert (=> start!34834 m!349215))

(declare-fun m!349217 () Bool)

(assert (=> b!348447 m!349217))

(assert (=> b!348447 m!349217))

(declare-fun m!349219 () Bool)

(assert (=> b!348447 m!349219))

(check-sat (not start!34834) (not b!348441) b_and!14851 (not b!348442) (not b!348448) (not mapNonEmpty!12804) tp_is_empty!7563 (not b_next!7611) (not b!348438) (not b!348443) (not b!348447) (not b!348439))
(check-sat b_and!14851 (not b_next!7611))

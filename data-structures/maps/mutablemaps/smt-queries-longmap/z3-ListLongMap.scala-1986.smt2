; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!34810 () Bool)

(assert start!34810)

(declare-fun b_free!7587 () Bool)

(declare-fun b_next!7587 () Bool)

(assert (=> start!34810 (= b_free!7587 (not b_next!7587))))

(declare-fun tp!26327 () Bool)

(declare-fun b_and!14827 () Bool)

(assert (=> start!34810 (= tp!26327 b_and!14827)))

(declare-fun b!348042 () Bool)

(declare-fun res!192829 () Bool)

(declare-fun e!213265 () Bool)

(assert (=> b!348042 (=> (not res!192829) (not e!213265))))

(declare-datatypes ((array!18631 0))(
  ( (array!18632 (arr!8822 (Array (_ BitVec 32) (_ BitVec 64))) (size!9174 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18631)

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18631 (_ BitVec 32)) Bool)

(assert (=> b!348042 (= res!192829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348043 () Bool)

(declare-fun e!213269 () Bool)

(declare-fun tp_is_empty!7539 () Bool)

(assert (=> b!348043 (= e!213269 tp_is_empty!7539)))

(declare-fun mapNonEmpty!12768 () Bool)

(declare-fun mapRes!12768 () Bool)

(declare-fun tp!26328 () Bool)

(declare-fun e!213267 () Bool)

(assert (=> mapNonEmpty!12768 (= mapRes!12768 (and tp!26328 e!213267))))

(declare-datatypes ((V!11029 0))(
  ( (V!11030 (val!3814 Int)) )
))
(declare-datatypes ((ValueCell!3426 0))(
  ( (ValueCellFull!3426 (v!5993 V!11029)) (EmptyCell!3426) )
))
(declare-datatypes ((array!18633 0))(
  ( (array!18634 (arr!8823 (Array (_ BitVec 32) ValueCell!3426)) (size!9175 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18633)

(declare-fun mapRest!12768 () (Array (_ BitVec 32) ValueCell!3426))

(declare-fun mapValue!12768 () ValueCell!3426)

(declare-fun mapKey!12768 () (_ BitVec 32))

(assert (=> mapNonEmpty!12768 (= (arr!8823 _values!1525) (store mapRest!12768 mapKey!12768 mapValue!12768))))

(declare-fun b!348044 () Bool)

(declare-fun res!192830 () Bool)

(assert (=> b!348044 (=> (not res!192830) (not e!213265))))

(declare-fun k0!1348 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348044 (= res!192830 (validKeyInArray!0 k0!1348))))

(declare-fun b!348045 () Bool)

(declare-fun e!213268 () Bool)

(assert (=> b!348045 (= e!213265 e!213268)))

(declare-fun res!192831 () Bool)

(assert (=> b!348045 (=> (not res!192831) (not e!213268))))

(declare-datatypes ((SeekEntryResult!3399 0))(
  ( (MissingZero!3399 (index!15775 (_ BitVec 32))) (Found!3399 (index!15776 (_ BitVec 32))) (Intermediate!3399 (undefined!4211 Bool) (index!15777 (_ BitVec 32)) (x!34674 (_ BitVec 32))) (Undefined!3399) (MissingVacant!3399 (index!15778 (_ BitVec 32))) )
))
(declare-fun lt!163802 () SeekEntryResult!3399)

(get-info :version)

(assert (=> b!348045 (= res!192831 (and (not ((_ is Found!3399) lt!163802)) ((_ is MissingZero!3399) lt!163802)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18631 (_ BitVec 32)) SeekEntryResult!3399)

(assert (=> b!348045 (= lt!163802 (seekEntryOrOpen!0 k0!1348 _keys!1895 mask!2385))))

(declare-fun b!348046 () Bool)

(declare-fun e!213264 () Bool)

(assert (=> b!348046 (= e!213264 (and e!213269 mapRes!12768))))

(declare-fun condMapEmpty!12768 () Bool)

(declare-fun mapDefault!12768 () ValueCell!3426)

(assert (=> b!348046 (= condMapEmpty!12768 (= (arr!8823 _values!1525) ((as const (Array (_ BitVec 32) ValueCell!3426)) mapDefault!12768)))))

(declare-fun mapIsEmpty!12768 () Bool)

(assert (=> mapIsEmpty!12768 mapRes!12768))

(declare-fun b!348047 () Bool)

(declare-fun res!192828 () Bool)

(assert (=> b!348047 (=> (not res!192828) (not e!213265))))

(declare-fun zeroValue!1467 () V!11029)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11029)

(declare-datatypes ((tuple2!5506 0))(
  ( (tuple2!5507 (_1!2763 (_ BitVec 64)) (_2!2763 V!11029)) )
))
(declare-datatypes ((List!5149 0))(
  ( (Nil!5146) (Cons!5145 (h!6001 tuple2!5506) (t!10287 List!5149)) )
))
(declare-datatypes ((ListLongMap!4433 0))(
  ( (ListLongMap!4434 (toList!2232 List!5149)) )
))
(declare-fun contains!2293 (ListLongMap!4433 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1749 (array!18631 array!18633 (_ BitVec 32) (_ BitVec 32) V!11029 V!11029 (_ BitVec 32) Int) ListLongMap!4433)

(assert (=> b!348047 (= res!192828 (not (contains!2293 (getCurrentListMap!1749 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k0!1348)))))

(declare-fun b!348048 () Bool)

(declare-fun res!192835 () Bool)

(assert (=> b!348048 (=> (not res!192835) (not e!213265))))

(assert (=> b!348048 (= res!192835 (and (= (size!9175 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9174 _keys!1895) (size!9175 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!348049 () Bool)

(assert (=> b!348049 (= e!213268 false)))

(declare-fun lt!163803 () (_ BitVec 32))

(declare-fun arrayScanForKey!0 (array!18631 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348049 (= lt!163803 (arrayScanForKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!348050 () Bool)

(declare-fun res!192833 () Bool)

(assert (=> b!348050 (=> (not res!192833) (not e!213268))))

(declare-fun arrayContainsKey!0 (array!18631 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348050 (= res!192833 (arrayContainsKey!0 _keys!1895 k0!1348 #b00000000000000000000000000000000))))

(declare-fun b!348052 () Bool)

(assert (=> b!348052 (= e!213267 tp_is_empty!7539)))

(declare-fun res!192832 () Bool)

(assert (=> start!34810 (=> (not res!192832) (not e!213265))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34810 (= res!192832 (validMask!0 mask!2385))))

(assert (=> start!34810 e!213265))

(assert (=> start!34810 true))

(assert (=> start!34810 tp_is_empty!7539))

(assert (=> start!34810 tp!26327))

(declare-fun array_inv!6514 (array!18633) Bool)

(assert (=> start!34810 (and (array_inv!6514 _values!1525) e!213264)))

(declare-fun array_inv!6515 (array!18631) Bool)

(assert (=> start!34810 (array_inv!6515 _keys!1895)))

(declare-fun b!348051 () Bool)

(declare-fun res!192834 () Bool)

(assert (=> b!348051 (=> (not res!192834) (not e!213265))))

(declare-datatypes ((List!5150 0))(
  ( (Nil!5147) (Cons!5146 (h!6002 (_ BitVec 64)) (t!10288 List!5150)) )
))
(declare-fun arrayNoDuplicates!0 (array!18631 (_ BitVec 32) List!5150) Bool)

(assert (=> b!348051 (= res!192834 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5147))))

(assert (= (and start!34810 res!192832) b!348048))

(assert (= (and b!348048 res!192835) b!348042))

(assert (= (and b!348042 res!192829) b!348051))

(assert (= (and b!348051 res!192834) b!348044))

(assert (= (and b!348044 res!192830) b!348047))

(assert (= (and b!348047 res!192828) b!348045))

(assert (= (and b!348045 res!192831) b!348050))

(assert (= (and b!348050 res!192833) b!348049))

(assert (= (and b!348046 condMapEmpty!12768) mapIsEmpty!12768))

(assert (= (and b!348046 (not condMapEmpty!12768)) mapNonEmpty!12768))

(assert (= (and mapNonEmpty!12768 ((_ is ValueCellFull!3426) mapValue!12768)) b!348052))

(assert (= (and b!348046 ((_ is ValueCellFull!3426) mapDefault!12768)) b!348043))

(assert (= start!34810 b!348046))

(declare-fun m!348909 () Bool)

(assert (=> b!348042 m!348909))

(declare-fun m!348911 () Bool)

(assert (=> b!348045 m!348911))

(declare-fun m!348913 () Bool)

(assert (=> b!348044 m!348913))

(declare-fun m!348915 () Bool)

(assert (=> b!348050 m!348915))

(declare-fun m!348917 () Bool)

(assert (=> start!34810 m!348917))

(declare-fun m!348919 () Bool)

(assert (=> start!34810 m!348919))

(declare-fun m!348921 () Bool)

(assert (=> start!34810 m!348921))

(declare-fun m!348923 () Bool)

(assert (=> b!348049 m!348923))

(declare-fun m!348925 () Bool)

(assert (=> b!348051 m!348925))

(declare-fun m!348927 () Bool)

(assert (=> b!348047 m!348927))

(assert (=> b!348047 m!348927))

(declare-fun m!348929 () Bool)

(assert (=> b!348047 m!348929))

(declare-fun m!348931 () Bool)

(assert (=> mapNonEmpty!12768 m!348931))

(check-sat (not b!348044) (not b!348049) (not b!348050) (not b!348042) b_and!14827 (not b!348045) tp_is_empty!7539 (not b!348047) (not mapNonEmpty!12768) (not b_next!7587) (not start!34810) (not b!348051))
(check-sat b_and!14827 (not b_next!7587))

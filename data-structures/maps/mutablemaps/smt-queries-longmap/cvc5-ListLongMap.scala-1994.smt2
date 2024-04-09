; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34856 () Bool)

(assert start!34856)

(declare-fun b_free!7633 () Bool)

(declare-fun b_next!7633 () Bool)

(assert (=> start!34856 (= b_free!7633 (not b_next!7633))))

(declare-fun tp!26465 () Bool)

(declare-fun b_and!14873 () Bool)

(assert (=> start!34856 (= tp!26465 b_and!14873)))

(declare-fun b!348801 () Bool)

(declare-fun res!193387 () Bool)

(declare-fun e!213678 () Bool)

(assert (=> b!348801 (=> (not res!193387) (not e!213678))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((V!11091 0))(
  ( (V!11092 (val!3837 Int)) )
))
(declare-fun zeroValue!1467 () V!11091)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((array!18723 0))(
  ( (array!18724 (arr!8868 (Array (_ BitVec 32) (_ BitVec 64))) (size!9220 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18723)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11091)

(declare-datatypes ((ValueCell!3449 0))(
  ( (ValueCellFull!3449 (v!6016 V!11091)) (EmptyCell!3449) )
))
(declare-datatypes ((array!18725 0))(
  ( (array!18726 (arr!8869 (Array (_ BitVec 32) ValueCell!3449)) (size!9221 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18725)

(declare-datatypes ((tuple2!5542 0))(
  ( (tuple2!5543 (_1!2781 (_ BitVec 64)) (_2!2781 V!11091)) )
))
(declare-datatypes ((List!5182 0))(
  ( (Nil!5179) (Cons!5178 (h!6034 tuple2!5542) (t!10320 List!5182)) )
))
(declare-datatypes ((ListLongMap!4469 0))(
  ( (ListLongMap!4470 (toList!2250 List!5182)) )
))
(declare-fun contains!2311 (ListLongMap!4469 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1767 (array!18723 array!18725 (_ BitVec 32) (_ BitVec 32) V!11091 V!11091 (_ BitVec 32) Int) ListLongMap!4469)

(assert (=> b!348801 (= res!193387 (not (contains!2311 (getCurrentListMap!1767 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapIsEmpty!12837 () Bool)

(declare-fun mapRes!12837 () Bool)

(assert (=> mapIsEmpty!12837 mapRes!12837))

(declare-fun b!348802 () Bool)

(declare-fun res!193382 () Bool)

(assert (=> b!348802 (=> (not res!193382) (not e!213678))))

(declare-datatypes ((List!5183 0))(
  ( (Nil!5180) (Cons!5179 (h!6035 (_ BitVec 64)) (t!10321 List!5183)) )
))
(declare-fun arrayNoDuplicates!0 (array!18723 (_ BitVec 32) List!5183) Bool)

(assert (=> b!348802 (= res!193382 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5180))))

(declare-fun b!348803 () Bool)

(declare-fun e!213679 () Bool)

(declare-fun lt!163940 () (_ BitVec 32))

(assert (=> b!348803 (= e!213679 (or (bvslt lt!163940 #b00000000000000000000000000000000) (bvsge lt!163940 (size!9220 _keys!1895))))))

(declare-fun arrayScanForKey!0 (array!18723 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348803 (= lt!163940 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12837 () Bool)

(declare-fun tp!26466 () Bool)

(declare-fun e!213683 () Bool)

(assert (=> mapNonEmpty!12837 (= mapRes!12837 (and tp!26466 e!213683))))

(declare-fun mapValue!12837 () ValueCell!3449)

(declare-fun mapRest!12837 () (Array (_ BitVec 32) ValueCell!3449))

(declare-fun mapKey!12837 () (_ BitVec 32))

(assert (=> mapNonEmpty!12837 (= (arr!8869 _values!1525) (store mapRest!12837 mapKey!12837 mapValue!12837))))

(declare-fun b!348804 () Bool)

(declare-fun e!213681 () Bool)

(declare-fun tp_is_empty!7585 () Bool)

(assert (=> b!348804 (= e!213681 tp_is_empty!7585)))

(declare-fun b!348805 () Bool)

(assert (=> b!348805 (= e!213683 tp_is_empty!7585)))

(declare-fun b!348806 () Bool)

(declare-fun res!193384 () Bool)

(assert (=> b!348806 (=> (not res!193384) (not e!213678))))

(assert (=> b!348806 (= res!193384 (and (= (size!9221 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9220 _keys!1895) (size!9221 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun res!193380 () Bool)

(assert (=> start!34856 (=> (not res!193380) (not e!213678))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> start!34856 (= res!193380 (validMask!0 mask!2385))))

(assert (=> start!34856 e!213678))

(assert (=> start!34856 true))

(assert (=> start!34856 tp_is_empty!7585))

(assert (=> start!34856 tp!26465))

(declare-fun e!213680 () Bool)

(declare-fun array_inv!6542 (array!18725) Bool)

(assert (=> start!34856 (and (array_inv!6542 _values!1525) e!213680)))

(declare-fun array_inv!6543 (array!18723) Bool)

(assert (=> start!34856 (array_inv!6543 _keys!1895)))

(declare-fun b!348807 () Bool)

(declare-fun res!193385 () Bool)

(assert (=> b!348807 (=> (not res!193385) (not e!213679))))

(declare-fun arrayContainsKey!0 (array!18723 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348807 (= res!193385 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348808 () Bool)

(declare-fun res!193381 () Bool)

(assert (=> b!348808 (=> (not res!193381) (not e!213678))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18723 (_ BitVec 32)) Bool)

(assert (=> b!348808 (= res!193381 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348809 () Bool)

(assert (=> b!348809 (= e!213680 (and e!213681 mapRes!12837))))

(declare-fun condMapEmpty!12837 () Bool)

(declare-fun mapDefault!12837 () ValueCell!3449)


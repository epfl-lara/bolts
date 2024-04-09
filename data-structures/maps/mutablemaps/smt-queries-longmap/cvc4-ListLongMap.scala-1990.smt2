; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34836 () Bool)

(assert start!34836)

(declare-fun b_free!7613 () Bool)

(declare-fun b_next!7613 () Bool)

(assert (=> start!34836 (= b_free!7613 (not b_next!7613))))

(declare-fun tp!26406 () Bool)

(declare-fun b_and!14853 () Bool)

(assert (=> start!34836 (= tp!26406 b_and!14853)))

(declare-fun b!348471 () Bool)

(declare-fun e!213500 () Bool)

(assert (=> b!348471 (= e!213500 false)))

(declare-fun lt!163880 () (_ BitVec 32))

(declare-datatypes ((array!18683 0))(
  ( (array!18684 (arr!8848 (Array (_ BitVec 32) (_ BitVec 64))) (size!9200 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18683)

(declare-fun k!1348 () (_ BitVec 64))

(declare-fun arrayScanForKey!0 (array!18683 (_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!348471 (= lt!163880 (arrayScanForKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!12807 () Bool)

(declare-fun mapRes!12807 () Bool)

(declare-fun tp!26405 () Bool)

(declare-fun e!213502 () Bool)

(assert (=> mapNonEmpty!12807 (= mapRes!12807 (and tp!26405 e!213502))))

(declare-datatypes ((V!11063 0))(
  ( (V!11064 (val!3827 Int)) )
))
(declare-datatypes ((ValueCell!3439 0))(
  ( (ValueCellFull!3439 (v!6006 V!11063)) (EmptyCell!3439) )
))
(declare-fun mapRest!12807 () (Array (_ BitVec 32) ValueCell!3439))

(declare-datatypes ((array!18685 0))(
  ( (array!18686 (arr!8849 (Array (_ BitVec 32) ValueCell!3439)) (size!9201 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18685)

(declare-fun mapKey!12807 () (_ BitVec 32))

(declare-fun mapValue!12807 () ValueCell!3439)

(assert (=> mapNonEmpty!12807 (= (arr!8849 _values!1525) (store mapRest!12807 mapKey!12807 mapValue!12807))))

(declare-fun b!348472 () Bool)

(declare-fun res!193147 () Bool)

(declare-fun e!213503 () Bool)

(assert (=> b!348472 (=> (not res!193147) (not e!213503))))

(declare-datatypes ((List!5167 0))(
  ( (Nil!5164) (Cons!5163 (h!6019 (_ BitVec 64)) (t!10305 List!5167)) )
))
(declare-fun arrayNoDuplicates!0 (array!18683 (_ BitVec 32) List!5167) Bool)

(assert (=> b!348472 (= res!193147 (arrayNoDuplicates!0 _keys!1895 #b00000000000000000000000000000000 Nil!5164))))

(declare-fun b!348473 () Bool)

(declare-fun res!193142 () Bool)

(assert (=> b!348473 (=> (not res!193142) (not e!213503))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!18683 (_ BitVec 32)) Bool)

(assert (=> b!348473 (= res!193142 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 _keys!1895 mask!2385))))

(declare-fun b!348474 () Bool)

(declare-fun res!193140 () Bool)

(assert (=> b!348474 (=> (not res!193140) (not e!213503))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348474 (= res!193140 (validKeyInArray!0 k!1348))))

(declare-fun b!348475 () Bool)

(declare-fun res!193141 () Bool)

(assert (=> b!348475 (=> (not res!193141) (not e!213503))))

(declare-fun zeroValue!1467 () V!11063)

(declare-fun defaultEntry!1528 () Int)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!11063)

(declare-datatypes ((tuple2!5526 0))(
  ( (tuple2!5527 (_1!2773 (_ BitVec 64)) (_2!2773 V!11063)) )
))
(declare-datatypes ((List!5168 0))(
  ( (Nil!5165) (Cons!5164 (h!6020 tuple2!5526) (t!10306 List!5168)) )
))
(declare-datatypes ((ListLongMap!4453 0))(
  ( (ListLongMap!4454 (toList!2242 List!5168)) )
))
(declare-fun contains!2303 (ListLongMap!4453 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1759 (array!18683 array!18685 (_ BitVec 32) (_ BitVec 32) V!11063 V!11063 (_ BitVec 32) Int) ListLongMap!4453)

(assert (=> b!348475 (= res!193141 (not (contains!2303 (getCurrentListMap!1759 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!348476 () Bool)

(assert (=> b!348476 (= e!213503 e!213500)))

(declare-fun res!193146 () Bool)

(assert (=> b!348476 (=> (not res!193146) (not e!213500))))

(declare-datatypes ((SeekEntryResult!3408 0))(
  ( (MissingZero!3408 (index!15811 (_ BitVec 32))) (Found!3408 (index!15812 (_ BitVec 32))) (Intermediate!3408 (undefined!4220 Bool) (index!15813 (_ BitVec 32)) (x!34715 (_ BitVec 32))) (Undefined!3408) (MissingVacant!3408 (index!15814 (_ BitVec 32))) )
))
(declare-fun lt!163881 () SeekEntryResult!3408)

(assert (=> b!348476 (= res!193146 (and (not (is-Found!3408 lt!163881)) (is-MissingZero!3408 lt!163881)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18683 (_ BitVec 32)) SeekEntryResult!3408)

(assert (=> b!348476 (= lt!163881 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!348477 () Bool)

(declare-fun e!213498 () Bool)

(declare-fun e!213501 () Bool)

(assert (=> b!348477 (= e!213498 (and e!213501 mapRes!12807))))

(declare-fun condMapEmpty!12807 () Bool)

(declare-fun mapDefault!12807 () ValueCell!3439)


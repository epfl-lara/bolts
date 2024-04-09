; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34832 () Bool)

(assert start!34832)

(declare-fun b_free!7609 () Bool)

(declare-fun b_next!7609 () Bool)

(assert (=> start!34832 (= b_free!7609 (not b_next!7609))))

(declare-fun tp!26393 () Bool)

(declare-fun b_and!14849 () Bool)

(assert (=> start!34832 (= tp!26393 b_and!14849)))

(declare-fun b!348405 () Bool)

(declare-fun e!213463 () Bool)

(declare-fun e!213462 () Bool)

(assert (=> b!348405 (= e!213463 e!213462)))

(declare-fun res!193097 () Bool)

(assert (=> b!348405 (=> (not res!193097) (not e!213462))))

(declare-datatypes ((SeekEntryResult!3406 0))(
  ( (MissingZero!3406 (index!15803 (_ BitVec 32))) (Found!3406 (index!15804 (_ BitVec 32))) (Intermediate!3406 (undefined!4218 Bool) (index!15805 (_ BitVec 32)) (x!34713 (_ BitVec 32))) (Undefined!3406) (MissingVacant!3406 (index!15806 (_ BitVec 32))) )
))
(declare-fun lt!163868 () SeekEntryResult!3406)

(assert (=> b!348405 (= res!193097 (and (not (is-Found!3406 lt!163868)) (is-MissingZero!3406 lt!163868)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18675 0))(
  ( (array!18676 (arr!8844 (Array (_ BitVec 32) (_ BitVec 64))) (size!9196 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18675)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18675 (_ BitVec 32)) SeekEntryResult!3406)

(assert (=> b!348405 (= lt!163868 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!348406 () Bool)

(declare-fun res!193099 () Bool)

(assert (=> b!348406 (=> (not res!193099) (not e!213462))))

(declare-fun arrayContainsKey!0 (array!18675 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!348406 (= res!193099 (arrayContainsKey!0 _keys!1895 k!1348 #b00000000000000000000000000000000))))

(declare-fun b!348407 () Bool)

(declare-fun res!193092 () Bool)

(assert (=> b!348407 (=> (not res!193092) (not e!213463))))

(declare-datatypes ((V!11059 0))(
  ( (V!11060 (val!3825 Int)) )
))
(declare-fun zeroValue!1467 () V!11059)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3437 0))(
  ( (ValueCellFull!3437 (v!6004 V!11059)) (EmptyCell!3437) )
))
(declare-datatypes ((array!18677 0))(
  ( (array!18678 (arr!8845 (Array (_ BitVec 32) ValueCell!3437)) (size!9197 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18677)

(declare-fun minValue!1467 () V!11059)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-datatypes ((tuple2!5522 0))(
  ( (tuple2!5523 (_1!2771 (_ BitVec 64)) (_2!2771 V!11059)) )
))
(declare-datatypes ((List!5164 0))(
  ( (Nil!5161) (Cons!5160 (h!6016 tuple2!5522) (t!10302 List!5164)) )
))
(declare-datatypes ((ListLongMap!4449 0))(
  ( (ListLongMap!4450 (toList!2240 List!5164)) )
))
(declare-fun contains!2301 (ListLongMap!4449 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1757 (array!18675 array!18677 (_ BitVec 32) (_ BitVec 32) V!11059 V!11059 (_ BitVec 32) Int) ListLongMap!4449)

(assert (=> b!348407 (= res!193092 (not (contains!2301 (getCurrentListMap!1757 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun mapNonEmpty!12801 () Bool)

(declare-fun mapRes!12801 () Bool)

(declare-fun tp!26394 () Bool)

(declare-fun e!213467 () Bool)

(assert (=> mapNonEmpty!12801 (= mapRes!12801 (and tp!26394 e!213467))))

(declare-fun mapKey!12801 () (_ BitVec 32))

(declare-fun mapRest!12801 () (Array (_ BitVec 32) ValueCell!3437))

(declare-fun mapValue!12801 () ValueCell!3437)

(assert (=> mapNonEmpty!12801 (= (arr!8845 _values!1525) (store mapRest!12801 mapKey!12801 mapValue!12801))))

(declare-fun b!348408 () Bool)

(declare-fun res!193094 () Bool)

(assert (=> b!348408 (=> (not res!193094) (not e!213463))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!348408 (= res!193094 (validKeyInArray!0 k!1348))))

(declare-fun b!348409 () Bool)

(declare-fun e!213466 () Bool)

(declare-fun e!213465 () Bool)

(assert (=> b!348409 (= e!213466 (and e!213465 mapRes!12801))))

(declare-fun condMapEmpty!12801 () Bool)

(declare-fun mapDefault!12801 () ValueCell!3437)


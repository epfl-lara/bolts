; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!34730 () Bool)

(assert start!34730)

(declare-fun b_free!7529 () Bool)

(declare-fun b_next!7529 () Bool)

(assert (=> start!34730 (= b_free!7529 (not b_next!7529))))

(declare-fun tp!26150 () Bool)

(declare-fun b_and!14767 () Bool)

(assert (=> start!34730 (= tp!26150 b_and!14767)))

(declare-fun mapIsEmpty!12678 () Bool)

(declare-fun mapRes!12678 () Bool)

(assert (=> mapIsEmpty!12678 mapRes!12678))

(declare-fun b!346941 () Bool)

(declare-fun e!212613 () Bool)

(declare-fun e!212609 () Bool)

(assert (=> b!346941 (= e!212613 e!212609)))

(declare-fun res!192076 () Bool)

(assert (=> b!346941 (=> (not res!192076) (not e!212609))))

(declare-fun k!1348 () (_ BitVec 64))

(declare-datatypes ((array!18519 0))(
  ( (array!18520 (arr!8767 (Array (_ BitVec 32) (_ BitVec 64))) (size!9119 (_ BitVec 32))) )
))
(declare-fun _keys!1895 () array!18519)

(declare-datatypes ((SeekEntryResult!3376 0))(
  ( (MissingZero!3376 (index!15683 (_ BitVec 32))) (Found!3376 (index!15684 (_ BitVec 32))) (Intermediate!3376 (undefined!4188 Bool) (index!15685 (_ BitVec 32)) (x!34561 (_ BitVec 32))) (Undefined!3376) (MissingVacant!3376 (index!15686 (_ BitVec 32))) )
))
(declare-fun lt!163457 () SeekEntryResult!3376)

(assert (=> b!346941 (= res!192076 (and (is-Found!3376 lt!163457) (= (select (arr!8767 _keys!1895) (index!15684 lt!163457)) k!1348)))))

(declare-fun mask!2385 () (_ BitVec 32))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!18519 (_ BitVec 32)) SeekEntryResult!3376)

(assert (=> b!346941 (= lt!163457 (seekEntryOrOpen!0 k!1348 _keys!1895 mask!2385))))

(declare-fun b!346942 () Bool)

(declare-fun res!192073 () Bool)

(assert (=> b!346942 (=> (not res!192073) (not e!212609))))

(declare-fun arrayContainsKey!0 (array!18519 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!346942 (= res!192073 (arrayContainsKey!0 _keys!1895 k!1348 (index!15684 lt!163457)))))

(declare-fun b!346944 () Bool)

(declare-fun res!192077 () Bool)

(assert (=> b!346944 (=> (not res!192077) (not e!212613))))

(declare-datatypes ((V!10951 0))(
  ( (V!10952 (val!3785 Int)) )
))
(declare-fun zeroValue!1467 () V!10951)

(declare-fun defaultEntry!1528 () Int)

(declare-datatypes ((ValueCell!3397 0))(
  ( (ValueCellFull!3397 (v!5963 V!10951)) (EmptyCell!3397) )
))
(declare-datatypes ((array!18521 0))(
  ( (array!18522 (arr!8768 (Array (_ BitVec 32) ValueCell!3397)) (size!9120 (_ BitVec 32))) )
))
(declare-fun _values!1525 () array!18521)

(declare-fun extraKeys!1446 () (_ BitVec 32))

(declare-fun minValue!1467 () V!10951)

(declare-datatypes ((tuple2!5462 0))(
  ( (tuple2!5463 (_1!2741 (_ BitVec 64)) (_2!2741 V!10951)) )
))
(declare-datatypes ((List!5109 0))(
  ( (Nil!5106) (Cons!5105 (h!5961 tuple2!5462) (t!10245 List!5109)) )
))
(declare-datatypes ((ListLongMap!4389 0))(
  ( (ListLongMap!4390 (toList!2210 List!5109)) )
))
(declare-fun contains!2270 (ListLongMap!4389 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1730 (array!18519 array!18521 (_ BitVec 32) (_ BitVec 32) V!10951 V!10951 (_ BitVec 32) Int) ListLongMap!4389)

(assert (=> b!346944 (= res!192077 (not (contains!2270 (getCurrentListMap!1730 _keys!1895 _values!1525 mask!2385 extraKeys!1446 zeroValue!1467 minValue!1467 #b00000000000000000000000000000000 defaultEntry!1528) k!1348)))))

(declare-fun b!346945 () Bool)

(declare-fun e!212612 () Bool)

(declare-fun tp_is_empty!7481 () Bool)

(assert (=> b!346945 (= e!212612 tp_is_empty!7481)))

(declare-fun b!346946 () Bool)

(declare-fun res!192072 () Bool)

(assert (=> b!346946 (=> (not res!192072) (not e!212613))))

(assert (=> b!346946 (= res!192072 (and (= (size!9120 _values!1525) (bvadd #b00000000000000000000000000000001 mask!2385)) (= (size!9119 _keys!1895) (size!9120 _values!1525)) (bvsge mask!2385 #b00000000000000000000000000000000) (bvsge extraKeys!1446 #b00000000000000000000000000000000) (bvsle extraKeys!1446 #b00000000000000000000000000000011)))))

(declare-fun b!346947 () Bool)

(declare-fun e!212611 () Bool)

(assert (=> b!346947 (= e!212611 (and e!212612 mapRes!12678))))

(declare-fun condMapEmpty!12678 () Bool)

(declare-fun mapDefault!12678 () ValueCell!3397)


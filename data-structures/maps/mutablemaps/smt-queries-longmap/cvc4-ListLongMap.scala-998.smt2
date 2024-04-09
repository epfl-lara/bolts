; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!21564 () Bool)

(assert start!21564)

(declare-fun b!216040 () Bool)

(declare-fun b_free!5741 () Bool)

(declare-fun b_next!5741 () Bool)

(assert (=> b!216040 (= b_free!5741 (not b_next!5741))))

(declare-fun tp!20348 () Bool)

(declare-fun b_and!12649 () Bool)

(assert (=> b!216040 (= tp!20348 b_and!12649)))

(declare-fun b!216034 () Bool)

(declare-fun e!140565 () Bool)

(declare-fun e!140571 () Bool)

(assert (=> b!216034 (= e!140565 e!140571)))

(declare-fun res!105649 () Bool)

(assert (=> b!216034 (=> (not res!105649) (not e!140571))))

(declare-datatypes ((SeekEntryResult!749 0))(
  ( (MissingZero!749 (index!5166 (_ BitVec 32))) (Found!749 (index!5167 (_ BitVec 32))) (Intermediate!749 (undefined!1561 Bool) (index!5168 (_ BitVec 32)) (x!22597 (_ BitVec 32))) (Undefined!749) (MissingVacant!749 (index!5169 (_ BitVec 32))) )
))
(declare-fun lt!111115 () SeekEntryResult!749)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!216034 (= res!105649 (or (= lt!111115 (MissingZero!749 index!297)) (= lt!111115 (MissingVacant!749 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7117 0))(
  ( (V!7118 (val!2846 Int)) )
))
(declare-datatypes ((ValueCell!2458 0))(
  ( (ValueCellFull!2458 (v!4860 V!7117)) (EmptyCell!2458) )
))
(declare-datatypes ((array!10438 0))(
  ( (array!10439 (arr!4943 (Array (_ BitVec 32) ValueCell!2458)) (size!5275 (_ BitVec 32))) )
))
(declare-datatypes ((array!10440 0))(
  ( (array!10441 (arr!4944 (Array (_ BitVec 32) (_ BitVec 64))) (size!5276 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2816 0))(
  ( (LongMapFixedSize!2817 (defaultEntry!4058 Int) (mask!9780 (_ BitVec 32)) (extraKeys!3795 (_ BitVec 32)) (zeroValue!3899 V!7117) (minValue!3899 V!7117) (_size!1457 (_ BitVec 32)) (_keys!6101 array!10440) (_values!4041 array!10438) (_vacant!1457 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!2816)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!10440 (_ BitVec 32)) SeekEntryResult!749)

(assert (=> b!216034 (= lt!111115 (seekEntryOrOpen!0 key!932 (_keys!6101 thiss!1504) (mask!9780 thiss!1504)))))

(declare-fun mapIsEmpty!9558 () Bool)

(declare-fun mapRes!9558 () Bool)

(assert (=> mapIsEmpty!9558 mapRes!9558))

(declare-fun b!216035 () Bool)

(declare-fun e!140568 () Bool)

(declare-fun e!140569 () Bool)

(assert (=> b!216035 (= e!140568 (and e!140569 mapRes!9558))))

(declare-fun condMapEmpty!9558 () Bool)

(declare-fun mapDefault!9558 () ValueCell!2458)


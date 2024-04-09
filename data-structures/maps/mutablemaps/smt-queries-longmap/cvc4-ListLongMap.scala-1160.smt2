; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24438 () Bool)

(assert start!24438)

(declare-fun b!255892 () Bool)

(declare-fun b_free!6713 () Bool)

(declare-fun b_next!6713 () Bool)

(assert (=> b!255892 (= b_free!6713 (not b_next!6713))))

(declare-fun tp!23436 () Bool)

(declare-fun b_and!13785 () Bool)

(assert (=> b!255892 (= tp!23436 b_and!13785)))

(declare-fun mapNonEmpty!11187 () Bool)

(declare-fun mapRes!11187 () Bool)

(declare-fun tp!23435 () Bool)

(declare-fun e!165892 () Bool)

(assert (=> mapNonEmpty!11187 (= mapRes!11187 (and tp!23435 e!165892))))

(declare-datatypes ((V!8413 0))(
  ( (V!8414 (val!3332 Int)) )
))
(declare-datatypes ((ValueCell!2944 0))(
  ( (ValueCellFull!2944 (v!5411 V!8413)) (EmptyCell!2944) )
))
(declare-fun mapValue!11187 () ValueCell!2944)

(declare-datatypes ((array!12486 0))(
  ( (array!12487 (arr!5915 (Array (_ BitVec 32) ValueCell!2944)) (size!6262 (_ BitVec 32))) )
))
(declare-datatypes ((array!12488 0))(
  ( (array!12489 (arr!5916 (Array (_ BitVec 32) (_ BitVec 64))) (size!6263 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3788 0))(
  ( (LongMapFixedSize!3789 (defaultEntry!4722 Int) (mask!10988 (_ BitVec 32)) (extraKeys!4459 (_ BitVec 32)) (zeroValue!4563 V!8413) (minValue!4563 V!8413) (_size!1943 (_ BitVec 32)) (_keys!6882 array!12488) (_values!4705 array!12486) (_vacant!1943 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3788)

(declare-fun mapRest!11187 () (Array (_ BitVec 32) ValueCell!2944))

(declare-fun mapKey!11187 () (_ BitVec 32))

(assert (=> mapNonEmpty!11187 (= (arr!5915 (_values!4705 thiss!1504)) (store mapRest!11187 mapKey!11187 mapValue!11187))))

(declare-fun b!255888 () Bool)

(declare-fun e!165888 () Bool)

(declare-fun e!165881 () Bool)

(assert (=> b!255888 (= e!165888 (and e!165881 mapRes!11187))))

(declare-fun condMapEmpty!11187 () Bool)

(declare-fun mapDefault!11187 () ValueCell!2944)


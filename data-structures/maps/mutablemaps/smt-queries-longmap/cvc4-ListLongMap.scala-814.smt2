; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19930 () Bool)

(assert start!19930)

(declare-fun b!195425 () Bool)

(declare-fun b_free!4727 () Bool)

(declare-fun b_next!4727 () Bool)

(assert (=> b!195425 (= b_free!4727 (not b_next!4727))))

(declare-fun tp!17055 () Bool)

(declare-fun b_and!11491 () Bool)

(assert (=> b!195425 (= tp!17055 b_and!11491)))

(declare-fun b!195424 () Bool)

(declare-fun e!128547 () Bool)

(declare-datatypes ((SeekEntryResult!707 0))(
  ( (MissingZero!707 (index!4998 (_ BitVec 32))) (Found!707 (index!4999 (_ BitVec 32))) (Intermediate!707 (undefined!1519 Bool) (index!5000 (_ BitVec 32)) (x!20746 (_ BitVec 32))) (Undefined!707) (MissingVacant!707 (index!5001 (_ BitVec 32))) )
))
(declare-fun lt!97479 () SeekEntryResult!707)

(assert (=> b!195424 (= e!128547 (and (not (is-Undefined!707 lt!97479)) (not (is-MissingVacant!707 lt!97479)) (not (is-MissingZero!707 lt!97479)) (not (is-Found!707 lt!97479))))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5645 0))(
  ( (V!5646 (val!2294 Int)) )
))
(declare-datatypes ((ValueCell!1906 0))(
  ( (ValueCellFull!1906 (v!4258 V!5645)) (EmptyCell!1906) )
))
(declare-datatypes ((array!8250 0))(
  ( (array!8251 (arr!3882 (Array (_ BitVec 32) (_ BitVec 64))) (size!4207 (_ BitVec 32))) )
))
(declare-datatypes ((array!8252 0))(
  ( (array!8253 (arr!3883 (Array (_ BitVec 32) ValueCell!1906)) (size!4208 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2720 0))(
  ( (LongMapFixedSize!2721 (defaultEntry!3974 Int) (mask!9247 (_ BitVec 32)) (extraKeys!3711 (_ BitVec 32)) (zeroValue!3815 V!5645) (minValue!3815 V!5645) (_size!1409 (_ BitVec 32)) (_keys!5972 array!8250) (_values!3957 array!8252) (_vacant!1409 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2720)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8250 (_ BitVec 32)) SeekEntryResult!707)

(assert (=> b!195424 (= lt!97479 (seekEntryOrOpen!0 key!828 (_keys!5972 thiss!1248) (mask!9247 thiss!1248)))))

(declare-fun tp_is_empty!4499 () Bool)

(declare-fun e!128551 () Bool)

(declare-fun e!128552 () Bool)

(declare-fun array_inv!2511 (array!8250) Bool)

(declare-fun array_inv!2512 (array!8252) Bool)

(assert (=> b!195425 (= e!128551 (and tp!17055 tp_is_empty!4499 (array_inv!2511 (_keys!5972 thiss!1248)) (array_inv!2512 (_values!3957 thiss!1248)) e!128552))))

(declare-fun b!195426 () Bool)

(declare-fun e!128549 () Bool)

(declare-fun mapRes!7786 () Bool)

(assert (=> b!195426 (= e!128552 (and e!128549 mapRes!7786))))

(declare-fun condMapEmpty!7786 () Bool)

(declare-fun mapDefault!7786 () ValueCell!1906)


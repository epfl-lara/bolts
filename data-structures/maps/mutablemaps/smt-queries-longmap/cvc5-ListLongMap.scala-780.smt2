; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18474 () Bool)

(assert start!18474)

(declare-fun b!183089 () Bool)

(declare-fun b_free!4519 () Bool)

(declare-fun b_next!4519 () Bool)

(assert (=> b!183089 (= b_free!4519 (not b_next!4519))))

(declare-fun tp!16324 () Bool)

(declare-fun b_and!11105 () Bool)

(assert (=> b!183089 (= tp!16324 b_and!11105)))

(declare-fun b!183083 () Bool)

(declare-fun e!120545 () Bool)

(declare-datatypes ((V!5369 0))(
  ( (V!5370 (val!2190 Int)) )
))
(declare-datatypes ((ValueCell!1802 0))(
  ( (ValueCellFull!1802 (v!4088 V!5369)) (EmptyCell!1802) )
))
(declare-datatypes ((array!7772 0))(
  ( (array!7773 (arr!3674 (Array (_ BitVec 32) (_ BitVec 64))) (size!3986 (_ BitVec 32))) )
))
(declare-datatypes ((array!7774 0))(
  ( (array!7775 (arr!3675 (Array (_ BitVec 32) ValueCell!1802)) (size!3987 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2512 0))(
  ( (LongMapFixedSize!2513 (defaultEntry!3745 Int) (mask!8803 (_ BitVec 32)) (extraKeys!3482 (_ BitVec 32)) (zeroValue!3586 V!5369) (minValue!3586 V!5369) (_size!1305 (_ BitVec 32)) (_keys!5662 array!7772) (_values!3728 array!7774) (_vacant!1305 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2512)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!183083 (= e!120545 (not (validMask!0 (mask!8803 thiss!1248))))))

(declare-fun b!183084 () Bool)

(declare-fun e!120547 () Bool)

(assert (=> b!183084 (= e!120547 e!120545)))

(declare-fun res!86687 () Bool)

(assert (=> b!183084 (=> (not res!86687) (not e!120545))))

(declare-datatypes ((SeekEntryResult!626 0))(
  ( (MissingZero!626 (index!4674 (_ BitVec 32))) (Found!626 (index!4675 (_ BitVec 32))) (Intermediate!626 (undefined!1438 Bool) (index!4676 (_ BitVec 32)) (x!19962 (_ BitVec 32))) (Undefined!626) (MissingVacant!626 (index!4677 (_ BitVec 32))) )
))
(declare-fun lt!90545 () SeekEntryResult!626)

(assert (=> b!183084 (= res!86687 (and (not (is-Undefined!626 lt!90545)) (not (is-MissingVacant!626 lt!90545)) (not (is-MissingZero!626 lt!90545)) (is-Found!626 lt!90545)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7772 (_ BitVec 32)) SeekEntryResult!626)

(assert (=> b!183084 (= lt!90545 (seekEntryOrOpen!0 key!828 (_keys!5662 thiss!1248) (mask!8803 thiss!1248)))))

(declare-fun b!183085 () Bool)

(declare-fun e!120546 () Bool)

(declare-fun e!120542 () Bool)

(declare-fun mapRes!7367 () Bool)

(assert (=> b!183085 (= e!120546 (and e!120542 mapRes!7367))))

(declare-fun condMapEmpty!7367 () Bool)

(declare-fun mapDefault!7367 () ValueCell!1802)


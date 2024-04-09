; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!18814 () Bool)

(assert start!18814)

(declare-fun b!185769 () Bool)

(declare-fun b_free!4577 () Bool)

(declare-fun b_next!4577 () Bool)

(assert (=> b!185769 (= b_free!4577 (not b_next!4577))))

(declare-fun tp!16530 () Bool)

(declare-fun b_and!11197 () Bool)

(assert (=> b!185769 (= tp!16530 b_and!11197)))

(declare-fun mapNonEmpty!7485 () Bool)

(declare-fun mapRes!7485 () Bool)

(declare-fun tp!16529 () Bool)

(declare-fun e!122237 () Bool)

(assert (=> mapNonEmpty!7485 (= mapRes!7485 (and tp!16529 e!122237))))

(declare-datatypes ((V!5445 0))(
  ( (V!5446 (val!2219 Int)) )
))
(declare-datatypes ((ValueCell!1831 0))(
  ( (ValueCellFull!1831 (v!4126 V!5445)) (EmptyCell!1831) )
))
(declare-fun mapValue!7485 () ValueCell!1831)

(declare-fun mapRest!7485 () (Array (_ BitVec 32) ValueCell!1831))

(declare-fun mapKey!7485 () (_ BitVec 32))

(declare-datatypes ((array!7906 0))(
  ( (array!7907 (arr!3732 (Array (_ BitVec 32) (_ BitVec 64))) (size!4048 (_ BitVec 32))) )
))
(declare-datatypes ((array!7908 0))(
  ( (array!7909 (arr!3733 (Array (_ BitVec 32) ValueCell!1831)) (size!4049 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2570 0))(
  ( (LongMapFixedSize!2571 (defaultEntry!3787 Int) (mask!8900 (_ BitVec 32)) (extraKeys!3524 (_ BitVec 32)) (zeroValue!3628 V!5445) (minValue!3628 V!5445) (_size!1334 (_ BitVec 32)) (_keys!5728 array!7906) (_values!3770 array!7908) (_vacant!1334 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2570)

(assert (=> mapNonEmpty!7485 (= (arr!3733 (_values!3770 thiss!1248)) (store mapRest!7485 mapKey!7485 mapValue!7485))))

(declare-fun b!185760 () Bool)

(declare-fun res!87906 () Bool)

(declare-fun e!122232 () Bool)

(assert (=> b!185760 (=> (not res!87906) (not e!122232))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3452 0))(
  ( (tuple2!3453 (_1!1736 (_ BitVec 64)) (_2!1736 V!5445)) )
))
(declare-datatypes ((List!2387 0))(
  ( (Nil!2384) (Cons!2383 (h!3016 tuple2!3452) (t!7279 List!2387)) )
))
(declare-datatypes ((ListLongMap!2383 0))(
  ( (ListLongMap!2384 (toList!1207 List!2387)) )
))
(declare-fun contains!1297 (ListLongMap!2383 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!850 (array!7906 array!7908 (_ BitVec 32) (_ BitVec 32) V!5445 V!5445 (_ BitVec 32) Int) ListLongMap!2383)

(assert (=> b!185760 (= res!87906 (not (contains!1297 (getCurrentListMap!850 (_keys!5728 thiss!1248) (_values!3770 thiss!1248) (mask!8900 thiss!1248) (extraKeys!3524 thiss!1248) (zeroValue!3628 thiss!1248) (minValue!3628 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3787 thiss!1248)) key!828)))))

(declare-fun b!185761 () Bool)

(declare-fun res!87904 () Bool)

(assert (=> b!185761 (=> (not res!87904) (not e!122232))))

(assert (=> b!185761 (= res!87904 (and (= (size!4049 (_values!3770 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8900 thiss!1248))) (= (size!4048 (_keys!5728 thiss!1248)) (size!4049 (_values!3770 thiss!1248))) (bvsge (mask!8900 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3524 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3524 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!7485 () Bool)

(assert (=> mapIsEmpty!7485 mapRes!7485))

(declare-fun b!185762 () Bool)

(declare-fun e!122238 () Bool)

(assert (=> b!185762 (= e!122238 e!122232)))

(declare-fun res!87907 () Bool)

(assert (=> b!185762 (=> (not res!87907) (not e!122232))))

(declare-datatypes ((SeekEntryResult!647 0))(
  ( (MissingZero!647 (index!4758 (_ BitVec 32))) (Found!647 (index!4759 (_ BitVec 32))) (Intermediate!647 (undefined!1459 Bool) (index!4760 (_ BitVec 32)) (x!20177 (_ BitVec 32))) (Undefined!647) (MissingVacant!647 (index!4761 (_ BitVec 32))) )
))
(declare-fun lt!91890 () SeekEntryResult!647)

(assert (=> b!185762 (= res!87907 (and (not (is-Undefined!647 lt!91890)) (not (is-MissingVacant!647 lt!91890)) (not (is-MissingZero!647 lt!91890)) (is-Found!647 lt!91890)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7906 (_ BitVec 32)) SeekEntryResult!647)

(assert (=> b!185762 (= lt!91890 (seekEntryOrOpen!0 key!828 (_keys!5728 thiss!1248) (mask!8900 thiss!1248)))))

(declare-fun b!185763 () Bool)

(declare-fun e!122236 () Bool)

(declare-fun tp_is_empty!4349 () Bool)

(assert (=> b!185763 (= e!122236 tp_is_empty!4349)))

(declare-fun b!185764 () Bool)

(declare-fun e!122234 () Bool)

(assert (=> b!185764 (= e!122234 (and e!122236 mapRes!7485))))

(declare-fun condMapEmpty!7485 () Bool)

(declare-fun mapDefault!7485 () ValueCell!1831)


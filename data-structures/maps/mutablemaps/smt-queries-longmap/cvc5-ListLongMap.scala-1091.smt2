; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22304 () Bool)

(assert start!22304)

(declare-fun b!233652 () Bool)

(declare-fun b_free!6295 () Bool)

(declare-fun b_next!6295 () Bool)

(assert (=> b!233652 (= b_free!6295 (not b_next!6295))))

(declare-fun tp!22033 () Bool)

(declare-fun b_and!13219 () Bool)

(assert (=> b!233652 (= tp!22033 b_and!13219)))

(declare-fun e!151784 () Bool)

(declare-fun e!151785 () Bool)

(declare-datatypes ((V!7857 0))(
  ( (V!7858 (val!3123 Int)) )
))
(declare-datatypes ((ValueCell!2735 0))(
  ( (ValueCellFull!2735 (v!5141 V!7857)) (EmptyCell!2735) )
))
(declare-datatypes ((array!11560 0))(
  ( (array!11561 (arr!5497 (Array (_ BitVec 32) ValueCell!2735)) (size!5831 (_ BitVec 32))) )
))
(declare-datatypes ((array!11562 0))(
  ( (array!11563 (arr!5498 (Array (_ BitVec 32) (_ BitVec 64))) (size!5832 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3370 0))(
  ( (LongMapFixedSize!3371 (defaultEntry!4347 Int) (mask!10281 (_ BitVec 32)) (extraKeys!4084 (_ BitVec 32)) (zeroValue!4188 V!7857) (minValue!4188 V!7857) (_size!1734 (_ BitVec 32)) (_keys!6406 array!11562) (_values!4330 array!11560) (_vacant!1734 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3370)

(declare-fun tp_is_empty!6157 () Bool)

(declare-fun array_inv!3613 (array!11562) Bool)

(declare-fun array_inv!3614 (array!11560) Bool)

(assert (=> b!233652 (= e!151784 (and tp!22033 tp_is_empty!6157 (array_inv!3613 (_keys!6406 thiss!1504)) (array_inv!3614 (_values!4330 thiss!1504)) e!151785))))

(declare-fun b!233653 () Bool)

(declare-fun res!114668 () Bool)

(declare-fun e!151783 () Bool)

(assert (=> b!233653 (=> (not res!114668) (not e!151783))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!233653 (= res!114668 (validMask!0 (mask!10281 thiss!1504)))))

(declare-fun res!114666 () Bool)

(declare-fun e!151786 () Bool)

(assert (=> start!22304 (=> (not res!114666) (not e!151786))))

(declare-fun valid!1322 (LongMapFixedSize!3370) Bool)

(assert (=> start!22304 (= res!114666 (valid!1322 thiss!1504))))

(assert (=> start!22304 e!151786))

(assert (=> start!22304 e!151784))

(assert (=> start!22304 true))

(declare-fun b!233654 () Bool)

(declare-fun e!151787 () Bool)

(assert (=> b!233654 (= e!151787 tp_is_empty!6157)))

(declare-fun mapIsEmpty!10412 () Bool)

(declare-fun mapRes!10412 () Bool)

(assert (=> mapIsEmpty!10412 mapRes!10412))

(declare-fun b!233655 () Bool)

(declare-fun res!114667 () Bool)

(assert (=> b!233655 (=> (not res!114667) (not e!151783))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((tuple2!4602 0))(
  ( (tuple2!4603 (_1!2311 (_ BitVec 64)) (_2!2311 V!7857)) )
))
(declare-datatypes ((List!3538 0))(
  ( (Nil!3535) (Cons!3534 (h!4183 tuple2!4602) (t!8509 List!3538)) )
))
(declare-datatypes ((ListLongMap!3529 0))(
  ( (ListLongMap!3530 (toList!1780 List!3538)) )
))
(declare-fun contains!1644 (ListLongMap!3529 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1303 (array!11562 array!11560 (_ BitVec 32) (_ BitVec 32) V!7857 V!7857 (_ BitVec 32) Int) ListLongMap!3529)

(assert (=> b!233655 (= res!114667 (contains!1644 (getCurrentListMap!1303 (_keys!6406 thiss!1504) (_values!4330 thiss!1504) (mask!10281 thiss!1504) (extraKeys!4084 thiss!1504) (zeroValue!4188 thiss!1504) (minValue!4188 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4347 thiss!1504)) key!932))))

(declare-fun mapNonEmpty!10412 () Bool)

(declare-fun tp!22034 () Bool)

(assert (=> mapNonEmpty!10412 (= mapRes!10412 (and tp!22034 e!151787))))

(declare-fun mapValue!10412 () ValueCell!2735)

(declare-fun mapRest!10412 () (Array (_ BitVec 32) ValueCell!2735))

(declare-fun mapKey!10412 () (_ BitVec 32))

(assert (=> mapNonEmpty!10412 (= (arr!5497 (_values!4330 thiss!1504)) (store mapRest!10412 mapKey!10412 mapValue!10412))))

(declare-fun b!233656 () Bool)

(declare-fun e!151782 () Bool)

(assert (=> b!233656 (= e!151785 (and e!151782 mapRes!10412))))

(declare-fun condMapEmpty!10412 () Bool)

(declare-fun mapDefault!10412 () ValueCell!2735)


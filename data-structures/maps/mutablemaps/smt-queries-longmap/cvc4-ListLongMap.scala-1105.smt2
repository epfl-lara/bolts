; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22788 () Bool)

(assert start!22788)

(declare-fun b!237466 () Bool)

(declare-fun b_free!6383 () Bool)

(declare-fun b_next!6383 () Bool)

(assert (=> b!237466 (= b_free!6383 (not b_next!6383))))

(declare-fun tp!22339 () Bool)

(declare-fun b_and!13355 () Bool)

(assert (=> b!237466 (= tp!22339 b_and!13355)))

(declare-fun res!116402 () Bool)

(declare-fun e!154218 () Bool)

(assert (=> start!22788 (=> (not res!116402) (not e!154218))))

(declare-datatypes ((V!7973 0))(
  ( (V!7974 (val!3167 Int)) )
))
(declare-datatypes ((ValueCell!2779 0))(
  ( (ValueCellFull!2779 (v!5197 V!7973)) (EmptyCell!2779) )
))
(declare-datatypes ((array!11760 0))(
  ( (array!11761 (arr!5585 (Array (_ BitVec 32) ValueCell!2779)) (size!5925 (_ BitVec 32))) )
))
(declare-datatypes ((array!11762 0))(
  ( (array!11763 (arr!5586 (Array (_ BitVec 32) (_ BitVec 64))) (size!5926 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3458 0))(
  ( (LongMapFixedSize!3459 (defaultEntry!4409 Int) (mask!10422 (_ BitVec 32)) (extraKeys!4146 (_ BitVec 32)) (zeroValue!4250 V!7973) (minValue!4250 V!7973) (_size!1778 (_ BitVec 32)) (_keys!6501 array!11762) (_values!4392 array!11760) (_vacant!1778 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3458)

(declare-fun valid!1357 (LongMapFixedSize!3458) Bool)

(assert (=> start!22788 (= res!116402 (valid!1357 thiss!1504))))

(assert (=> start!22788 e!154218))

(declare-fun e!154221 () Bool)

(assert (=> start!22788 e!154221))

(assert (=> start!22788 true))

(declare-fun b!237462 () Bool)

(declare-fun e!154224 () Bool)

(assert (=> b!237462 (= e!154218 e!154224)))

(declare-fun res!116401 () Bool)

(assert (=> b!237462 (=> (not res!116401) (not e!154224))))

(declare-datatypes ((SeekEntryResult!1020 0))(
  ( (MissingZero!1020 (index!6250 (_ BitVec 32))) (Found!1020 (index!6251 (_ BitVec 32))) (Intermediate!1020 (undefined!1832 Bool) (index!6252 (_ BitVec 32)) (x!23972 (_ BitVec 32))) (Undefined!1020) (MissingVacant!1020 (index!6253 (_ BitVec 32))) )
))
(declare-fun lt!120113 () SeekEntryResult!1020)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!237462 (= res!116401 (or (= lt!120113 (MissingZero!1020 index!297)) (= lt!120113 (MissingVacant!1020 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11762 (_ BitVec 32)) SeekEntryResult!1020)

(assert (=> b!237462 (= lt!120113 (seekEntryOrOpen!0 key!932 (_keys!6501 thiss!1504) (mask!10422 thiss!1504)))))

(declare-fun b!237463 () Bool)

(declare-fun e!154222 () Bool)

(declare-fun tp_is_empty!6245 () Bool)

(assert (=> b!237463 (= e!154222 tp_is_empty!6245)))

(declare-fun b!237464 () Bool)

(declare-fun e!154219 () Bool)

(assert (=> b!237464 (= e!154219 tp_is_empty!6245)))

(declare-fun b!237465 () Bool)

(declare-fun res!116399 () Bool)

(assert (=> b!237465 (=> (not res!116399) (not e!154224))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!237465 (= res!116399 (validMask!0 (mask!10422 thiss!1504)))))

(declare-fun mapIsEmpty!10586 () Bool)

(declare-fun mapRes!10586 () Bool)

(assert (=> mapIsEmpty!10586 mapRes!10586))

(declare-fun e!154223 () Bool)

(declare-fun array_inv!3679 (array!11762) Bool)

(declare-fun array_inv!3680 (array!11760) Bool)

(assert (=> b!237466 (= e!154221 (and tp!22339 tp_is_empty!6245 (array_inv!3679 (_keys!6501 thiss!1504)) (array_inv!3680 (_values!4392 thiss!1504)) e!154223))))

(declare-fun b!237467 () Bool)

(declare-fun res!116400 () Bool)

(assert (=> b!237467 (=> (not res!116400) (not e!154224))))

(declare-datatypes ((tuple2!4664 0))(
  ( (tuple2!4665 (_1!2342 (_ BitVec 64)) (_2!2342 V!7973)) )
))
(declare-datatypes ((List!3587 0))(
  ( (Nil!3584) (Cons!3583 (h!4238 tuple2!4664) (t!8582 List!3587)) )
))
(declare-datatypes ((ListLongMap!3591 0))(
  ( (ListLongMap!3592 (toList!1811 List!3587)) )
))
(declare-fun contains!1689 (ListLongMap!3591 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1334 (array!11762 array!11760 (_ BitVec 32) (_ BitVec 32) V!7973 V!7973 (_ BitVec 32) Int) ListLongMap!3591)

(assert (=> b!237467 (= res!116400 (not (contains!1689 (getCurrentListMap!1334 (_keys!6501 thiss!1504) (_values!4392 thiss!1504) (mask!10422 thiss!1504) (extraKeys!4146 thiss!1504) (zeroValue!4250 thiss!1504) (minValue!4250 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4409 thiss!1504)) key!932)))))

(declare-fun b!237468 () Bool)

(declare-fun res!116403 () Bool)

(assert (=> b!237468 (=> (not res!116403) (not e!154218))))

(assert (=> b!237468 (= res!116403 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!237469 () Bool)

(assert (=> b!237469 (= e!154223 (and e!154222 mapRes!10586))))

(declare-fun condMapEmpty!10586 () Bool)

(declare-fun mapDefault!10586 () ValueCell!2779)


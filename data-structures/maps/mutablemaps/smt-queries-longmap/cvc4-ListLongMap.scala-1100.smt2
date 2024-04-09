; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22580 () Bool)

(assert start!22580)

(declare-fun b!235931 () Bool)

(declare-fun b_free!6353 () Bool)

(declare-fun b_next!6353 () Bool)

(assert (=> b!235931 (= b_free!6353 (not b_next!6353))))

(declare-fun tp!22232 () Bool)

(declare-fun b_and!13303 () Bool)

(assert (=> b!235931 (= tp!22232 b_and!13303)))

(declare-fun b!235925 () Bool)

(declare-fun e!153240 () Bool)

(declare-fun e!153242 () Bool)

(assert (=> b!235925 (= e!153240 e!153242)))

(declare-fun res!115732 () Bool)

(assert (=> b!235925 (=> (not res!115732) (not e!153242))))

(declare-datatypes ((SeekEntryResult!1009 0))(
  ( (MissingZero!1009 (index!6206 (_ BitVec 32))) (Found!1009 (index!6207 (_ BitVec 32))) (Intermediate!1009 (undefined!1821 Bool) (index!6208 (_ BitVec 32)) (x!23847 (_ BitVec 32))) (Undefined!1009) (MissingVacant!1009 (index!6209 (_ BitVec 32))) )
))
(declare-fun lt!119303 () SeekEntryResult!1009)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!235925 (= res!115732 (or (= lt!119303 (MissingZero!1009 index!297)) (= lt!119303 (MissingVacant!1009 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7933 0))(
  ( (V!7934 (val!3152 Int)) )
))
(declare-datatypes ((ValueCell!2764 0))(
  ( (ValueCellFull!2764 (v!5177 V!7933)) (EmptyCell!2764) )
))
(declare-datatypes ((array!11690 0))(
  ( (array!11691 (arr!5555 (Array (_ BitVec 32) ValueCell!2764)) (size!5892 (_ BitVec 32))) )
))
(declare-datatypes ((array!11692 0))(
  ( (array!11693 (arr!5556 (Array (_ BitVec 32) (_ BitVec 64))) (size!5893 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3428 0))(
  ( (LongMapFixedSize!3429 (defaultEntry!4386 Int) (mask!10367 (_ BitVec 32)) (extraKeys!4123 (_ BitVec 32)) (zeroValue!4227 V!7933) (minValue!4227 V!7933) (_size!1763 (_ BitVec 32)) (_keys!6464 array!11692) (_values!4369 array!11690) (_vacant!1763 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3428)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11692 (_ BitVec 32)) SeekEntryResult!1009)

(assert (=> b!235925 (= lt!119303 (seekEntryOrOpen!0 key!932 (_keys!6464 thiss!1504) (mask!10367 thiss!1504)))))

(declare-fun b!235926 () Bool)

(declare-fun e!153244 () Bool)

(declare-fun tp_is_empty!6215 () Bool)

(assert (=> b!235926 (= e!153244 tp_is_empty!6215)))

(declare-fun mapNonEmpty!10523 () Bool)

(declare-fun mapRes!10523 () Bool)

(declare-fun tp!22231 () Bool)

(declare-fun e!153243 () Bool)

(assert (=> mapNonEmpty!10523 (= mapRes!10523 (and tp!22231 e!153243))))

(declare-fun mapValue!10523 () ValueCell!2764)

(declare-fun mapKey!10523 () (_ BitVec 32))

(declare-fun mapRest!10523 () (Array (_ BitVec 32) ValueCell!2764))

(assert (=> mapNonEmpty!10523 (= (arr!5555 (_values!4369 thiss!1504)) (store mapRest!10523 mapKey!10523 mapValue!10523))))

(declare-fun b!235927 () Bool)

(declare-fun res!115731 () Bool)

(assert (=> b!235927 (=> (not res!115731) (not e!153242))))

(declare-datatypes ((tuple2!4642 0))(
  ( (tuple2!4643 (_1!2331 (_ BitVec 64)) (_2!2331 V!7933)) )
))
(declare-datatypes ((List!3571 0))(
  ( (Nil!3568) (Cons!3567 (h!4219 tuple2!4642) (t!8556 List!3571)) )
))
(declare-datatypes ((ListLongMap!3569 0))(
  ( (ListLongMap!3570 (toList!1800 List!3571)) )
))
(declare-fun contains!1672 (ListLongMap!3569 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1323 (array!11692 array!11690 (_ BitVec 32) (_ BitVec 32) V!7933 V!7933 (_ BitVec 32) Int) ListLongMap!3569)

(assert (=> b!235927 (= res!115731 (not (contains!1672 (getCurrentListMap!1323 (_keys!6464 thiss!1504) (_values!4369 thiss!1504) (mask!10367 thiss!1504) (extraKeys!4123 thiss!1504) (zeroValue!4227 thiss!1504) (minValue!4227 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4386 thiss!1504)) key!932)))))

(declare-fun b!235928 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!235928 (= e!153242 (not (validMask!0 (mask!10367 thiss!1504))))))

(declare-fun b!235929 () Bool)

(declare-fun e!153246 () Bool)

(assert (=> b!235929 (= e!153246 (and e!153244 mapRes!10523))))

(declare-fun condMapEmpty!10523 () Bool)

(declare-fun mapDefault!10523 () ValueCell!2764)


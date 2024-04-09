; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22574 () Bool)

(assert start!22574)

(declare-fun b!235856 () Bool)

(declare-fun b_free!6347 () Bool)

(declare-fun b_next!6347 () Bool)

(assert (=> b!235856 (= b_free!6347 (not b_next!6347))))

(declare-fun tp!22213 () Bool)

(declare-fun b_and!13297 () Bool)

(assert (=> b!235856 (= tp!22213 b_and!13297)))

(declare-fun b!235851 () Bool)

(declare-fun e!153183 () Bool)

(assert (=> b!235851 (= e!153183 (not false))))

(declare-fun e!153177 () Bool)

(assert (=> b!235851 e!153177))

(declare-fun res!115698 () Bool)

(assert (=> b!235851 (=> (not res!115698) (not e!153177))))

(declare-datatypes ((SeekEntryResult!1006 0))(
  ( (MissingZero!1006 (index!6194 (_ BitVec 32))) (Found!1006 (index!6195 (_ BitVec 32))) (Intermediate!1006 (undefined!1818 Bool) (index!6196 (_ BitVec 32)) (x!23836 (_ BitVec 32))) (Undefined!1006) (MissingVacant!1006 (index!6197 (_ BitVec 32))) )
))
(declare-fun lt!119294 () SeekEntryResult!1006)

(assert (=> b!235851 (= res!115698 (is-Found!1006 lt!119294))))

(declare-datatypes ((Unit!7263 0))(
  ( (Unit!7264) )
))
(declare-fun lt!119293 () Unit!7263)

(declare-datatypes ((V!7925 0))(
  ( (V!7926 (val!3149 Int)) )
))
(declare-datatypes ((ValueCell!2761 0))(
  ( (ValueCellFull!2761 (v!5174 V!7925)) (EmptyCell!2761) )
))
(declare-datatypes ((array!11678 0))(
  ( (array!11679 (arr!5549 (Array (_ BitVec 32) ValueCell!2761)) (size!5886 (_ BitVec 32))) )
))
(declare-datatypes ((array!11680 0))(
  ( (array!11681 (arr!5550 (Array (_ BitVec 32) (_ BitVec 64))) (size!5887 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3422 0))(
  ( (LongMapFixedSize!3423 (defaultEntry!4383 Int) (mask!10362 (_ BitVec 32)) (extraKeys!4120 (_ BitVec 32)) (zeroValue!4224 V!7925) (minValue!4224 V!7925) (_size!1760 (_ BitVec 32)) (_keys!6461 array!11680) (_values!4366 array!11678) (_vacant!1760 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3422)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!318 (array!11680 array!11678 (_ BitVec 32) (_ BitVec 32) V!7925 V!7925 (_ BitVec 64) Int) Unit!7263)

(assert (=> b!235851 (= lt!119293 (lemmaInListMapThenSeekEntryOrOpenFindsIt!318 (_keys!6461 thiss!1504) (_values!4366 thiss!1504) (mask!10362 thiss!1504) (extraKeys!4120 thiss!1504) (zeroValue!4224 thiss!1504) (minValue!4224 thiss!1504) key!932 (defaultEntry!4383 thiss!1504)))))

(declare-fun mapNonEmpty!10514 () Bool)

(declare-fun mapRes!10514 () Bool)

(declare-fun tp!22214 () Bool)

(declare-fun e!153178 () Bool)

(assert (=> mapNonEmpty!10514 (= mapRes!10514 (and tp!22214 e!153178))))

(declare-fun mapValue!10514 () ValueCell!2761)

(declare-fun mapKey!10514 () (_ BitVec 32))

(declare-fun mapRest!10514 () (Array (_ BitVec 32) ValueCell!2761))

(assert (=> mapNonEmpty!10514 (= (arr!5549 (_values!4366 thiss!1504)) (store mapRest!10514 mapKey!10514 mapValue!10514))))

(declare-fun b!235852 () Bool)

(declare-fun res!115694 () Bool)

(declare-fun e!153181 () Bool)

(assert (=> b!235852 (=> (not res!115694) (not e!153181))))

(assert (=> b!235852 (= res!115694 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!235853 () Bool)

(declare-fun res!115697 () Bool)

(assert (=> b!235853 (=> (not res!115697) (not e!153183))))

(declare-datatypes ((tuple2!4636 0))(
  ( (tuple2!4637 (_1!2328 (_ BitVec 64)) (_2!2328 V!7925)) )
))
(declare-datatypes ((List!3568 0))(
  ( (Nil!3565) (Cons!3564 (h!4216 tuple2!4636) (t!8553 List!3568)) )
))
(declare-datatypes ((ListLongMap!3563 0))(
  ( (ListLongMap!3564 (toList!1797 List!3568)) )
))
(declare-fun contains!1669 (ListLongMap!3563 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1320 (array!11680 array!11678 (_ BitVec 32) (_ BitVec 32) V!7925 V!7925 (_ BitVec 32) Int) ListLongMap!3563)

(assert (=> b!235853 (= res!115697 (contains!1669 (getCurrentListMap!1320 (_keys!6461 thiss!1504) (_values!4366 thiss!1504) (mask!10362 thiss!1504) (extraKeys!4120 thiss!1504) (zeroValue!4224 thiss!1504) (minValue!4224 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4383 thiss!1504)) key!932))))

(declare-fun b!235854 () Bool)

(assert (=> b!235854 (= e!153177 (= (select (arr!5550 (_keys!6461 thiss!1504)) (index!6195 lt!119294)) key!932))))

(declare-fun b!235855 () Bool)

(declare-fun e!153179 () Bool)

(declare-fun e!153180 () Bool)

(assert (=> b!235855 (= e!153179 (and e!153180 mapRes!10514))))

(declare-fun condMapEmpty!10514 () Bool)

(declare-fun mapDefault!10514 () ValueCell!2761)


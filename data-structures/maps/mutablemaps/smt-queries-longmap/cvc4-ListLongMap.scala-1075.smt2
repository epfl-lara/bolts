; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22148 () Bool)

(assert start!22148)

(declare-fun b!230719 () Bool)

(declare-fun b_free!6203 () Bool)

(declare-fun b_next!6203 () Bool)

(assert (=> b!230719 (= b_free!6203 (not b_next!6203))))

(declare-fun tp!21751 () Bool)

(declare-fun b_and!13119 () Bool)

(assert (=> b!230719 (= tp!21751 b_and!13119)))

(declare-fun b!230716 () Bool)

(declare-datatypes ((Unit!7069 0))(
  ( (Unit!7070) )
))
(declare-fun e!149749 () Unit!7069)

(declare-fun Unit!7071 () Unit!7069)

(assert (=> b!230716 (= e!149749 Unit!7071)))

(declare-fun b!230717 () Bool)

(declare-fun c!38295 () Bool)

(declare-datatypes ((SeekEntryResult!951 0))(
  ( (MissingZero!951 (index!5974 (_ BitVec 32))) (Found!951 (index!5975 (_ BitVec 32))) (Intermediate!951 (undefined!1763 Bool) (index!5976 (_ BitVec 32)) (x!23467 (_ BitVec 32))) (Undefined!951) (MissingVacant!951 (index!5977 (_ BitVec 32))) )
))
(declare-fun lt!116217 () SeekEntryResult!951)

(assert (=> b!230717 (= c!38295 (is-MissingVacant!951 lt!116217))))

(declare-fun e!149758 () Bool)

(declare-fun e!149757 () Bool)

(assert (=> b!230717 (= e!149758 e!149757)))

(declare-fun mapNonEmpty!10267 () Bool)

(declare-fun mapRes!10267 () Bool)

(declare-fun tp!21750 () Bool)

(declare-fun e!149755 () Bool)

(assert (=> mapNonEmpty!10267 (= mapRes!10267 (and tp!21750 e!149755))))

(declare-datatypes ((V!7733 0))(
  ( (V!7734 (val!3077 Int)) )
))
(declare-datatypes ((ValueCell!2689 0))(
  ( (ValueCellFull!2689 (v!5093 V!7733)) (EmptyCell!2689) )
))
(declare-fun mapRest!10267 () (Array (_ BitVec 32) ValueCell!2689))

(declare-fun mapKey!10267 () (_ BitVec 32))

(declare-datatypes ((array!11372 0))(
  ( (array!11373 (arr!5405 (Array (_ BitVec 32) ValueCell!2689)) (size!5738 (_ BitVec 32))) )
))
(declare-datatypes ((array!11374 0))(
  ( (array!11375 (arr!5406 (Array (_ BitVec 32) (_ BitVec 64))) (size!5739 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3278 0))(
  ( (LongMapFixedSize!3279 (defaultEntry!4298 Int) (mask!10192 (_ BitVec 32)) (extraKeys!4035 (_ BitVec 32)) (zeroValue!4139 V!7733) (minValue!4139 V!7733) (_size!1688 (_ BitVec 32)) (_keys!6352 array!11374) (_values!4281 array!11372) (_vacant!1688 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3278)

(declare-fun mapValue!10267 () ValueCell!2689)

(assert (=> mapNonEmpty!10267 (= (arr!5405 (_values!4281 thiss!1504)) (store mapRest!10267 mapKey!10267 mapValue!10267))))

(declare-fun b!230718 () Bool)

(declare-fun e!149759 () Bool)

(declare-fun tp_is_empty!6065 () Bool)

(assert (=> b!230718 (= e!149759 tp_is_empty!6065)))

(declare-fun e!149756 () Bool)

(declare-fun e!149752 () Bool)

(declare-fun array_inv!3555 (array!11374) Bool)

(declare-fun array_inv!3556 (array!11372) Bool)

(assert (=> b!230719 (= e!149752 (and tp!21751 tp_is_empty!6065 (array_inv!3555 (_keys!6352 thiss!1504)) (array_inv!3556 (_values!4281 thiss!1504)) e!149756))))

(declare-fun b!230720 () Bool)

(declare-fun e!149751 () Bool)

(declare-fun call!21441 () Bool)

(assert (=> b!230720 (= e!149751 (not call!21441))))

(declare-fun b!230721 () Bool)

(declare-fun e!149750 () Bool)

(assert (=> b!230721 (= e!149757 e!149750)))

(declare-fun res!113465 () Bool)

(declare-fun call!21442 () Bool)

(assert (=> b!230721 (= res!113465 call!21442)))

(assert (=> b!230721 (=> (not res!113465) (not e!149750))))

(declare-fun b!230722 () Bool)

(declare-fun Unit!7072 () Unit!7069)

(assert (=> b!230722 (= e!149749 Unit!7072)))

(declare-fun lt!116216 () Unit!7069)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!127 (array!11374 array!11372 (_ BitVec 32) (_ BitVec 32) V!7733 V!7733 (_ BitVec 64) (_ BitVec 32) Int) Unit!7069)

(assert (=> b!230722 (= lt!116216 (lemmaArrayContainsKeyThenInListMap!127 (_keys!6352 thiss!1504) (_values!4281 thiss!1504) (mask!10192 thiss!1504) (extraKeys!4035 thiss!1504) (zeroValue!4139 thiss!1504) (minValue!4139 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4298 thiss!1504)))))

(assert (=> b!230722 false))

(declare-fun b!230723 () Bool)

(declare-fun res!113466 () Bool)

(assert (=> b!230723 (=> (not res!113466) (not e!149751))))

(assert (=> b!230723 (= res!113466 call!21442)))

(assert (=> b!230723 (= e!149758 e!149751)))

(declare-fun b!230724 () Bool)

(declare-fun res!113460 () Bool)

(declare-fun e!149761 () Bool)

(assert (=> b!230724 (=> (not res!113460) (not e!149761))))

(assert (=> b!230724 (= res!113460 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!230725 () Bool)

(declare-fun e!149753 () Bool)

(assert (=> b!230725 (= e!149761 e!149753)))

(declare-fun res!113461 () Bool)

(assert (=> b!230725 (=> (not res!113461) (not e!149753))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!230725 (= res!113461 (or (= lt!116217 (MissingZero!951 index!297)) (= lt!116217 (MissingVacant!951 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11374 (_ BitVec 32)) SeekEntryResult!951)

(assert (=> b!230725 (= lt!116217 (seekEntryOrOpen!0 key!932 (_keys!6352 thiss!1504) (mask!10192 thiss!1504)))))

(declare-fun b!230726 () Bool)

(assert (=> b!230726 (= e!149757 (is-Undefined!951 lt!116217))))

(declare-fun b!230727 () Bool)

(assert (=> b!230727 (= e!149756 (and e!149759 mapRes!10267))))

(declare-fun condMapEmpty!10267 () Bool)

(declare-fun mapDefault!10267 () ValueCell!2689)


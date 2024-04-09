; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22732 () Bool)

(assert start!22732)

(declare-fun b!237076 () Bool)

(declare-fun b_free!6377 () Bool)

(declare-fun b_next!6377 () Bool)

(assert (=> b!237076 (= b_free!6377 (not b_next!6377))))

(declare-fun tp!22318 () Bool)

(declare-fun b_and!13343 () Bool)

(assert (=> b!237076 (= tp!22318 b_and!13343)))

(declare-fun e!153981 () Bool)

(declare-datatypes ((V!7965 0))(
  ( (V!7966 (val!3164 Int)) )
))
(declare-datatypes ((ValueCell!2776 0))(
  ( (ValueCellFull!2776 (v!5193 V!7965)) (EmptyCell!2776) )
))
(declare-datatypes ((array!11746 0))(
  ( (array!11747 (arr!5579 (Array (_ BitVec 32) ValueCell!2776)) (size!5918 (_ BitVec 32))) )
))
(declare-datatypes ((array!11748 0))(
  ( (array!11749 (arr!5580 (Array (_ BitVec 32) (_ BitVec 64))) (size!5919 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3452 0))(
  ( (LongMapFixedSize!3453 (defaultEntry!4404 Int) (mask!10409 (_ BitVec 32)) (extraKeys!4141 (_ BitVec 32)) (zeroValue!4245 V!7965) (minValue!4245 V!7965) (_size!1775 (_ BitVec 32)) (_keys!6492 array!11748) (_values!4387 array!11746) (_vacant!1775 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3452)

(declare-fun tp_is_empty!6239 () Bool)

(declare-fun e!153977 () Bool)

(declare-fun array_inv!3673 (array!11748) Bool)

(declare-fun array_inv!3674 (array!11746) Bool)

(assert (=> b!237076 (= e!153981 (and tp!22318 tp_is_empty!6239 (array_inv!3673 (_keys!6492 thiss!1504)) (array_inv!3674 (_values!4387 thiss!1504)) e!153977))))

(declare-fun b!237077 () Bool)

(declare-fun e!153978 () Bool)

(assert (=> b!237077 (= e!153978 tp_is_empty!6239)))

(declare-fun b!237078 () Bool)

(declare-fun e!153979 () Bool)

(declare-fun e!153976 () Bool)

(assert (=> b!237078 (= e!153979 e!153976)))

(declare-fun res!116233 () Bool)

(assert (=> b!237078 (=> (not res!116233) (not e!153976))))

(declare-datatypes ((SeekEntryResult!1018 0))(
  ( (MissingZero!1018 (index!6242 (_ BitVec 32))) (Found!1018 (index!6243 (_ BitVec 32))) (Intermediate!1018 (undefined!1830 Bool) (index!6244 (_ BitVec 32)) (x!23944 (_ BitVec 32))) (Undefined!1018) (MissingVacant!1018 (index!6245 (_ BitVec 32))) )
))
(declare-fun lt!119907 () SeekEntryResult!1018)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!237078 (= res!116233 (or (= lt!119907 (MissingZero!1018 index!297)) (= lt!119907 (MissingVacant!1018 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11748 (_ BitVec 32)) SeekEntryResult!1018)

(assert (=> b!237078 (= lt!119907 (seekEntryOrOpen!0 key!932 (_keys!6492 thiss!1504) (mask!10409 thiss!1504)))))

(declare-fun res!116232 () Bool)

(assert (=> start!22732 (=> (not res!116232) (not e!153979))))

(declare-fun valid!1354 (LongMapFixedSize!3452) Bool)

(assert (=> start!22732 (= res!116232 (valid!1354 thiss!1504))))

(assert (=> start!22732 e!153979))

(assert (=> start!22732 e!153981))

(assert (=> start!22732 true))

(declare-fun b!237079 () Bool)

(declare-fun res!116234 () Bool)

(assert (=> b!237079 (=> (not res!116234) (not e!153979))))

(assert (=> b!237079 (= res!116234 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!237080 () Bool)

(declare-fun res!116235 () Bool)

(assert (=> b!237080 (=> (not res!116235) (not e!153976))))

(declare-datatypes ((tuple2!4658 0))(
  ( (tuple2!4659 (_1!2339 (_ BitVec 64)) (_2!2339 V!7965)) )
))
(declare-datatypes ((List!3583 0))(
  ( (Nil!3580) (Cons!3579 (h!4233 tuple2!4658) (t!8576 List!3583)) )
))
(declare-datatypes ((ListLongMap!3585 0))(
  ( (ListLongMap!3586 (toList!1808 List!3583)) )
))
(declare-fun contains!1684 (ListLongMap!3585 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1331 (array!11748 array!11746 (_ BitVec 32) (_ BitVec 32) V!7965 V!7965 (_ BitVec 32) Int) ListLongMap!3585)

(assert (=> b!237080 (= res!116235 (not (contains!1684 (getCurrentListMap!1331 (_keys!6492 thiss!1504) (_values!4387 thiss!1504) (mask!10409 thiss!1504) (extraKeys!4141 thiss!1504) (zeroValue!4245 thiss!1504) (minValue!4245 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4404 thiss!1504)) key!932)))))

(declare-fun b!237081 () Bool)

(assert (=> b!237081 (= e!153976 (and (= (size!5918 (_values!4387 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10409 thiss!1504))) (= (size!5919 (_keys!6492 thiss!1504)) (size!5918 (_values!4387 thiss!1504))) (bvsge (mask!10409 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4141 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun mapIsEmpty!10573 () Bool)

(declare-fun mapRes!10573 () Bool)

(assert (=> mapIsEmpty!10573 mapRes!10573))

(declare-fun b!237082 () Bool)

(assert (=> b!237082 (= e!153977 (and e!153978 mapRes!10573))))

(declare-fun condMapEmpty!10573 () Bool)

(declare-fun mapDefault!10573 () ValueCell!2776)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!19082 () Bool)

(assert start!19082)

(declare-fun b!187818 () Bool)

(declare-fun b_free!4619 () Bool)

(declare-fun b_next!4619 () Bool)

(assert (=> b!187818 (= b_free!4619 (not b_next!4619))))

(declare-fun tp!16673 () Bool)

(declare-fun b_and!11261 () Bool)

(assert (=> b!187818 (= tp!16673 b_and!11261)))

(declare-fun b!187808 () Bool)

(declare-datatypes ((Unit!5661 0))(
  ( (Unit!5662) )
))
(declare-fun e!123631 () Unit!5661)

(declare-fun lt!92968 () Unit!5661)

(assert (=> b!187808 (= e!123631 lt!92968)))

(declare-datatypes ((V!5501 0))(
  ( (V!5502 (val!2240 Int)) )
))
(declare-datatypes ((ValueCell!1852 0))(
  ( (ValueCellFull!1852 (v!4152 V!5501)) (EmptyCell!1852) )
))
(declare-datatypes ((array!8000 0))(
  ( (array!8001 (arr!3774 (Array (_ BitVec 32) (_ BitVec 64))) (size!4093 (_ BitVec 32))) )
))
(declare-datatypes ((array!8002 0))(
  ( (array!8003 (arr!3775 (Array (_ BitVec 32) ValueCell!1852)) (size!4094 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2612 0))(
  ( (LongMapFixedSize!2613 (defaultEntry!3832 Int) (mask!8986 (_ BitVec 32)) (extraKeys!3569 (_ BitVec 32)) (zeroValue!3673 V!5501) (minValue!3673 V!5501) (_size!1355 (_ BitVec 32)) (_keys!5787 array!8000) (_values!3815 array!8002) (_vacant!1355 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2612)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!154 (array!8000 array!8002 (_ BitVec 32) (_ BitVec 32) V!5501 V!5501 (_ BitVec 64) Int) Unit!5661)

(assert (=> b!187808 (= lt!92968 (lemmaInListMapThenSeekEntryOrOpenFindsIt!154 (_keys!5787 thiss!1248) (_values!3815 thiss!1248) (mask!8986 thiss!1248) (extraKeys!3569 thiss!1248) (zeroValue!3673 thiss!1248) (minValue!3673 thiss!1248) key!828 (defaultEntry!3832 thiss!1248)))))

(declare-fun res!88809 () Bool)

(declare-datatypes ((SeekEntryResult!661 0))(
  ( (MissingZero!661 (index!4814 (_ BitVec 32))) (Found!661 (index!4815 (_ BitVec 32))) (Intermediate!661 (undefined!1473 Bool) (index!4816 (_ BitVec 32)) (x!20321 (_ BitVec 32))) (Undefined!661) (MissingVacant!661 (index!4817 (_ BitVec 32))) )
))
(declare-fun lt!92967 () SeekEntryResult!661)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!187808 (= res!88809 (inRange!0 (index!4815 lt!92967) (mask!8986 thiss!1248)))))

(declare-fun e!123632 () Bool)

(assert (=> b!187808 (=> (not res!88809) (not e!123632))))

(assert (=> b!187808 e!123632))

(declare-fun b!187809 () Bool)

(declare-fun Unit!5663 () Unit!5661)

(assert (=> b!187809 (= e!123631 Unit!5663)))

(declare-fun lt!92965 () Unit!5661)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!155 (array!8000 array!8002 (_ BitVec 32) (_ BitVec 32) V!5501 V!5501 (_ BitVec 64) Int) Unit!5661)

(assert (=> b!187809 (= lt!92965 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!155 (_keys!5787 thiss!1248) (_values!3815 thiss!1248) (mask!8986 thiss!1248) (extraKeys!3569 thiss!1248) (zeroValue!3673 thiss!1248) (minValue!3673 thiss!1248) key!828 (defaultEntry!3832 thiss!1248)))))

(assert (=> b!187809 false))

(declare-fun b!187810 () Bool)

(declare-fun e!123629 () Bool)

(declare-fun e!123630 () Bool)

(assert (=> b!187810 (= e!123629 e!123630)))

(declare-fun res!88807 () Bool)

(assert (=> b!187810 (=> (not res!88807) (not e!123630))))

(assert (=> b!187810 (= res!88807 (and (not (is-Undefined!661 lt!92967)) (not (is-MissingVacant!661 lt!92967)) (not (is-MissingZero!661 lt!92967)) (is-Found!661 lt!92967)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8000 (_ BitVec 32)) SeekEntryResult!661)

(assert (=> b!187810 (= lt!92967 (seekEntryOrOpen!0 key!828 (_keys!5787 thiss!1248) (mask!8986 thiss!1248)))))

(declare-fun b!187811 () Bool)

(declare-fun e!123627 () Bool)

(assert (=> b!187811 (= e!123630 e!123627)))

(declare-fun res!88808 () Bool)

(assert (=> b!187811 (=> (not res!88808) (not e!123627))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!187811 (= res!88808 (validMask!0 (mask!8986 thiss!1248)))))

(declare-fun lt!92966 () Unit!5661)

(assert (=> b!187811 (= lt!92966 e!123631)))

(declare-fun c!33720 () Bool)

(declare-datatypes ((tuple2!3480 0))(
  ( (tuple2!3481 (_1!1750 (_ BitVec 64)) (_2!1750 V!5501)) )
))
(declare-datatypes ((List!2406 0))(
  ( (Nil!2403) (Cons!2402 (h!3038 tuple2!3480) (t!7308 List!2406)) )
))
(declare-datatypes ((ListLongMap!2411 0))(
  ( (ListLongMap!2412 (toList!1221 List!2406)) )
))
(declare-fun contains!1317 (ListLongMap!2411 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!864 (array!8000 array!8002 (_ BitVec 32) (_ BitVec 32) V!5501 V!5501 (_ BitVec 32) Int) ListLongMap!2411)

(assert (=> b!187811 (= c!33720 (contains!1317 (getCurrentListMap!864 (_keys!5787 thiss!1248) (_values!3815 thiss!1248) (mask!8986 thiss!1248) (extraKeys!3569 thiss!1248) (zeroValue!3673 thiss!1248) (minValue!3673 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3832 thiss!1248)) key!828))))

(declare-fun b!187812 () Bool)

(declare-fun e!123624 () Bool)

(declare-fun tp_is_empty!4391 () Bool)

(assert (=> b!187812 (= e!123624 tp_is_empty!4391)))

(declare-fun mapIsEmpty!7566 () Bool)

(declare-fun mapRes!7566 () Bool)

(assert (=> mapIsEmpty!7566 mapRes!7566))

(declare-fun res!88811 () Bool)

(assert (=> start!19082 (=> (not res!88811) (not e!123629))))

(declare-fun valid!1067 (LongMapFixedSize!2612) Bool)

(assert (=> start!19082 (= res!88811 (valid!1067 thiss!1248))))

(assert (=> start!19082 e!123629))

(declare-fun e!123626 () Bool)

(assert (=> start!19082 e!123626))

(assert (=> start!19082 true))

(declare-fun b!187813 () Bool)

(declare-fun e!123628 () Bool)

(assert (=> b!187813 (= e!123628 tp_is_empty!4391)))

(declare-fun b!187814 () Bool)

(declare-fun e!123633 () Bool)

(assert (=> b!187814 (= e!123633 (and e!123624 mapRes!7566))))

(declare-fun condMapEmpty!7566 () Bool)

(declare-fun mapDefault!7566 () ValueCell!1852)


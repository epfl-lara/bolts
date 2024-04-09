; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22912 () Bool)

(assert start!22912)

(declare-fun b!238490 () Bool)

(declare-fun b_free!6403 () Bool)

(declare-fun b_next!6403 () Bool)

(assert (=> b!238490 (= b_free!6403 (not b_next!6403))))

(declare-fun tp!22413 () Bool)

(declare-fun b_and!13387 () Bool)

(assert (=> b!238490 (= tp!22413 b_and!13387)))

(declare-fun b!238488 () Bool)

(declare-fun res!116884 () Bool)

(declare-fun e!154849 () Bool)

(assert (=> b!238488 (=> (not res!116884) (not e!154849))))

(declare-datatypes ((V!8001 0))(
  ( (V!8002 (val!3177 Int)) )
))
(declare-datatypes ((ValueCell!2789 0))(
  ( (ValueCellFull!2789 (v!5211 V!8001)) (EmptyCell!2789) )
))
(declare-datatypes ((array!11808 0))(
  ( (array!11809 (arr!5605 (Array (_ BitVec 32) ValueCell!2789)) (size!5946 (_ BitVec 32))) )
))
(declare-datatypes ((array!11810 0))(
  ( (array!11811 (arr!5606 (Array (_ BitVec 32) (_ BitVec 64))) (size!5947 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3478 0))(
  ( (LongMapFixedSize!3479 (defaultEntry!4424 Int) (mask!10460 (_ BitVec 32)) (extraKeys!4161 (_ BitVec 32)) (zeroValue!4265 V!8001) (minValue!4265 V!8001) (_size!1788 (_ BitVec 32)) (_keys!6526 array!11810) (_values!4407 array!11808) (_vacant!1788 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3478)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11810 (_ BitVec 32)) Bool)

(assert (=> b!238488 (= res!116884 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6526 thiss!1504) (mask!10460 thiss!1504)))))

(declare-fun b!238489 () Bool)

(declare-fun e!154848 () Bool)

(declare-fun tp_is_empty!6265 () Bool)

(assert (=> b!238489 (= e!154848 tp_is_empty!6265)))

(declare-fun e!154850 () Bool)

(declare-fun e!154852 () Bool)

(declare-fun array_inv!3697 (array!11810) Bool)

(declare-fun array_inv!3698 (array!11808) Bool)

(assert (=> b!238490 (= e!154850 (and tp!22413 tp_is_empty!6265 (array_inv!3697 (_keys!6526 thiss!1504)) (array_inv!3698 (_values!4407 thiss!1504)) e!154852))))

(declare-fun b!238491 () Bool)

(declare-fun e!154847 () Bool)

(assert (=> b!238491 (= e!154847 tp_is_empty!6265)))

(declare-fun b!238492 () Bool)

(declare-fun res!116882 () Bool)

(declare-fun e!154853 () Bool)

(assert (=> b!238492 (=> (not res!116882) (not e!154853))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!238492 (= res!116882 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!238493 () Bool)

(declare-fun res!116888 () Bool)

(assert (=> b!238493 (=> (not res!116888) (not e!154849))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!238493 (= res!116888 (validMask!0 (mask!10460 thiss!1504)))))

(declare-fun b!238494 () Bool)

(assert (=> b!238494 (= e!154849 false)))

(declare-fun lt!120630 () Bool)

(declare-datatypes ((List!3601 0))(
  ( (Nil!3598) (Cons!3597 (h!4253 (_ BitVec 64)) (t!8604 List!3601)) )
))
(declare-fun arrayNoDuplicates!0 (array!11810 (_ BitVec 32) List!3601) Bool)

(assert (=> b!238494 (= lt!120630 (arrayNoDuplicates!0 (_keys!6526 thiss!1504) #b00000000000000000000000000000000 Nil!3598))))

(declare-fun b!238495 () Bool)

(declare-fun res!116885 () Bool)

(assert (=> b!238495 (=> (not res!116885) (not e!154849))))

(assert (=> b!238495 (= res!116885 (and (= (size!5946 (_values!4407 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10460 thiss!1504))) (= (size!5947 (_keys!6526 thiss!1504)) (size!5946 (_values!4407 thiss!1504))) (bvsge (mask!10460 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4161 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4161 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!238497 () Bool)

(assert (=> b!238497 (= e!154853 e!154849)))

(declare-fun res!116886 () Bool)

(assert (=> b!238497 (=> (not res!116886) (not e!154849))))

(declare-datatypes ((SeekEntryResult!1028 0))(
  ( (MissingZero!1028 (index!6282 (_ BitVec 32))) (Found!1028 (index!6283 (_ BitVec 32))) (Intermediate!1028 (undefined!1840 Bool) (index!6284 (_ BitVec 32)) (x!24060 (_ BitVec 32))) (Undefined!1028) (MissingVacant!1028 (index!6285 (_ BitVec 32))) )
))
(declare-fun lt!120631 () SeekEntryResult!1028)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!238497 (= res!116886 (or (= lt!120631 (MissingZero!1028 index!297)) (= lt!120631 (MissingVacant!1028 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11810 (_ BitVec 32)) SeekEntryResult!1028)

(assert (=> b!238497 (= lt!120631 (seekEntryOrOpen!0 key!932 (_keys!6526 thiss!1504) (mask!10460 thiss!1504)))))

(declare-fun mapNonEmpty!10629 () Bool)

(declare-fun mapRes!10629 () Bool)

(declare-fun tp!22412 () Bool)

(assert (=> mapNonEmpty!10629 (= mapRes!10629 (and tp!22412 e!154848))))

(declare-fun mapRest!10629 () (Array (_ BitVec 32) ValueCell!2789))

(declare-fun mapValue!10629 () ValueCell!2789)

(declare-fun mapKey!10629 () (_ BitVec 32))

(assert (=> mapNonEmpty!10629 (= (arr!5605 (_values!4407 thiss!1504)) (store mapRest!10629 mapKey!10629 mapValue!10629))))

(declare-fun mapIsEmpty!10629 () Bool)

(assert (=> mapIsEmpty!10629 mapRes!10629))

(declare-fun b!238498 () Bool)

(declare-fun res!116887 () Bool)

(assert (=> b!238498 (=> (not res!116887) (not e!154849))))

(declare-datatypes ((tuple2!4680 0))(
  ( (tuple2!4681 (_1!2350 (_ BitVec 64)) (_2!2350 V!8001)) )
))
(declare-datatypes ((List!3602 0))(
  ( (Nil!3599) (Cons!3598 (h!4254 tuple2!4680) (t!8605 List!3602)) )
))
(declare-datatypes ((ListLongMap!3607 0))(
  ( (ListLongMap!3608 (toList!1819 List!3602)) )
))
(declare-fun contains!1701 (ListLongMap!3607 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1342 (array!11810 array!11808 (_ BitVec 32) (_ BitVec 32) V!8001 V!8001 (_ BitVec 32) Int) ListLongMap!3607)

(assert (=> b!238498 (= res!116887 (not (contains!1701 (getCurrentListMap!1342 (_keys!6526 thiss!1504) (_values!4407 thiss!1504) (mask!10460 thiss!1504) (extraKeys!4161 thiss!1504) (zeroValue!4265 thiss!1504) (minValue!4265 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4424 thiss!1504)) key!932)))))

(declare-fun b!238496 () Bool)

(assert (=> b!238496 (= e!154852 (and e!154847 mapRes!10629))))

(declare-fun condMapEmpty!10629 () Bool)

(declare-fun mapDefault!10629 () ValueCell!2789)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22058 () Bool)

(assert start!22058)

(declare-fun b!227777 () Bool)

(declare-fun b_free!6113 () Bool)

(declare-fun b_next!6113 () Bool)

(assert (=> b!227777 (= b_free!6113 (not b_next!6113))))

(declare-fun tp!21480 () Bool)

(declare-fun b_and!13029 () Bool)

(assert (=> b!227777 (= tp!21480 b_and!13029)))

(declare-fun b!227770 () Bool)

(declare-fun e!147782 () Bool)

(declare-fun call!21172 () Bool)

(assert (=> b!227770 (= e!147782 (not call!21172))))

(declare-fun b!227771 () Bool)

(declare-datatypes ((Unit!6909 0))(
  ( (Unit!6910) )
))
(declare-fun e!147787 () Unit!6909)

(declare-fun Unit!6911 () Unit!6909)

(assert (=> b!227771 (= e!147787 Unit!6911)))

(declare-fun lt!114655 () Unit!6909)

(declare-datatypes ((V!7613 0))(
  ( (V!7614 (val!3032 Int)) )
))
(declare-datatypes ((ValueCell!2644 0))(
  ( (ValueCellFull!2644 (v!5048 V!7613)) (EmptyCell!2644) )
))
(declare-datatypes ((array!11192 0))(
  ( (array!11193 (arr!5315 (Array (_ BitVec 32) ValueCell!2644)) (size!5648 (_ BitVec 32))) )
))
(declare-datatypes ((array!11194 0))(
  ( (array!11195 (arr!5316 (Array (_ BitVec 32) (_ BitVec 64))) (size!5649 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3188 0))(
  ( (LongMapFixedSize!3189 (defaultEntry!4253 Int) (mask!10117 (_ BitVec 32)) (extraKeys!3990 (_ BitVec 32)) (zeroValue!4094 V!7613) (minValue!4094 V!7613) (_size!1643 (_ BitVec 32)) (_keys!6307 array!11194) (_values!4236 array!11192) (_vacant!1643 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3188)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!268 (array!11194 array!11192 (_ BitVec 32) (_ BitVec 32) V!7613 V!7613 (_ BitVec 64) Int) Unit!6909)

(assert (=> b!227771 (= lt!114655 (lemmaInListMapThenSeekEntryOrOpenFindsIt!268 (_keys!6307 thiss!1504) (_values!4236 thiss!1504) (mask!10117 thiss!1504) (extraKeys!3990 thiss!1504) (zeroValue!4094 thiss!1504) (minValue!4094 thiss!1504) key!932 (defaultEntry!4253 thiss!1504)))))

(assert (=> b!227771 false))

(declare-fun mapIsEmpty!10132 () Bool)

(declare-fun mapRes!10132 () Bool)

(assert (=> mapIsEmpty!10132 mapRes!10132))

(declare-fun b!227773 () Bool)

(declare-fun res!112143 () Bool)

(assert (=> b!227773 (=> (not res!112143) (not e!147782))))

(declare-fun call!21171 () Bool)

(assert (=> b!227773 (= res!112143 call!21171)))

(declare-fun e!147781 () Bool)

(assert (=> b!227773 (= e!147781 e!147782)))

(declare-fun b!227774 () Bool)

(declare-fun res!112139 () Bool)

(declare-datatypes ((SeekEntryResult!909 0))(
  ( (MissingZero!909 (index!5806 (_ BitVec 32))) (Found!909 (index!5807 (_ BitVec 32))) (Intermediate!909 (undefined!1721 Bool) (index!5808 (_ BitVec 32)) (x!23305 (_ BitVec 32))) (Undefined!909) (MissingVacant!909 (index!5809 (_ BitVec 32))) )
))
(declare-fun lt!114652 () SeekEntryResult!909)

(assert (=> b!227774 (= res!112139 (= (select (arr!5316 (_keys!6307 thiss!1504)) (index!5809 lt!114652)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!147784 () Bool)

(assert (=> b!227774 (=> (not res!112139) (not e!147784))))

(declare-fun b!227775 () Bool)

(declare-fun lt!114650 () Unit!6909)

(assert (=> b!227775 (= e!147787 lt!114650)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!280 (array!11194 array!11192 (_ BitVec 32) (_ BitVec 32) V!7613 V!7613 (_ BitVec 64) Int) Unit!6909)

(assert (=> b!227775 (= lt!114650 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!280 (_keys!6307 thiss!1504) (_values!4236 thiss!1504) (mask!10117 thiss!1504) (extraKeys!3990 thiss!1504) (zeroValue!4094 thiss!1504) (minValue!4094 thiss!1504) key!932 (defaultEntry!4253 thiss!1504)))))

(declare-fun c!37756 () Bool)

(assert (=> b!227775 (= c!37756 (is-MissingZero!909 lt!114652))))

(assert (=> b!227775 e!147781))

(declare-fun b!227776 () Bool)

(assert (=> b!227776 (= e!147784 (not call!21172))))

(declare-fun e!147783 () Bool)

(declare-fun tp_is_empty!5975 () Bool)

(declare-fun e!147779 () Bool)

(declare-fun array_inv!3505 (array!11194) Bool)

(declare-fun array_inv!3506 (array!11192) Bool)

(assert (=> b!227777 (= e!147779 (and tp!21480 tp_is_empty!5975 (array_inv!3505 (_keys!6307 thiss!1504)) (array_inv!3506 (_values!4236 thiss!1504)) e!147783))))

(declare-fun b!227778 () Bool)

(declare-fun e!147788 () Bool)

(assert (=> b!227778 (= e!147788 tp_is_empty!5975)))

(declare-fun b!227779 () Bool)

(declare-fun e!147790 () Unit!6909)

(declare-fun Unit!6912 () Unit!6909)

(assert (=> b!227779 (= e!147790 Unit!6912)))

(declare-fun b!227780 () Bool)

(declare-fun e!147780 () Bool)

(assert (=> b!227780 (= e!147780 (is-Undefined!909 lt!114652))))

(declare-fun b!227781 () Bool)

(declare-fun e!147789 () Bool)

(declare-fun e!147785 () Bool)

(assert (=> b!227781 (= e!147789 (not e!147785))))

(declare-fun res!112137 () Bool)

(assert (=> b!227781 (=> res!112137 e!147785)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!227781 (= res!112137 (not (validMask!0 (mask!10117 thiss!1504))))))

(declare-fun lt!114654 () array!11194)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11194 (_ BitVec 32)) Bool)

(assert (=> b!227781 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114654 (mask!10117 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun lt!114653 () Unit!6909)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11194 (_ BitVec 32) (_ BitVec 32)) Unit!6909)

(assert (=> b!227781 (= lt!114653 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6307 thiss!1504) index!297 (mask!10117 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11194 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!227781 (= (arrayCountValidKeys!0 lt!114654 #b00000000000000000000000000000000 (size!5649 (_keys!6307 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6307 thiss!1504) #b00000000000000000000000000000000 (size!5649 (_keys!6307 thiss!1504)))))))

(declare-fun lt!114657 () Unit!6909)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11194 (_ BitVec 32) (_ BitVec 64)) Unit!6909)

(assert (=> b!227781 (= lt!114657 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6307 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3418 0))(
  ( (Nil!3415) (Cons!3414 (h!4062 (_ BitVec 64)) (t!8385 List!3418)) )
))
(declare-fun arrayNoDuplicates!0 (array!11194 (_ BitVec 32) List!3418) Bool)

(assert (=> b!227781 (arrayNoDuplicates!0 lt!114654 #b00000000000000000000000000000000 Nil!3415)))

(assert (=> b!227781 (= lt!114654 (array!11195 (store (arr!5316 (_keys!6307 thiss!1504)) index!297 key!932) (size!5649 (_keys!6307 thiss!1504))))))

(declare-fun lt!114651 () Unit!6909)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11194 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3418) Unit!6909)

(assert (=> b!227781 (= lt!114651 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6307 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3415))))

(declare-fun lt!114656 () Unit!6909)

(assert (=> b!227781 (= lt!114656 e!147790)))

(declare-fun c!37757 () Bool)

(declare-fun arrayContainsKey!0 (array!11194 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!227781 (= c!37757 (arrayContainsKey!0 (_keys!6307 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!10132 () Bool)

(declare-fun tp!21481 () Bool)

(assert (=> mapNonEmpty!10132 (= mapRes!10132 (and tp!21481 e!147788))))

(declare-fun mapKey!10132 () (_ BitVec 32))

(declare-fun mapRest!10132 () (Array (_ BitVec 32) ValueCell!2644))

(declare-fun mapValue!10132 () ValueCell!2644)

(assert (=> mapNonEmpty!10132 (= (arr!5315 (_values!4236 thiss!1504)) (store mapRest!10132 mapKey!10132 mapValue!10132))))

(declare-fun b!227782 () Bool)

(declare-fun res!112142 () Bool)

(assert (=> b!227782 (=> (not res!112142) (not e!147782))))

(assert (=> b!227782 (= res!112142 (= (select (arr!5316 (_keys!6307 thiss!1504)) (index!5806 lt!114652)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!227783 () Bool)

(declare-fun res!112140 () Bool)

(declare-fun e!147778 () Bool)

(assert (=> b!227783 (=> (not res!112140) (not e!147778))))

(assert (=> b!227783 (= res!112140 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!227784 () Bool)

(declare-fun e!147777 () Bool)

(assert (=> b!227784 (= e!147783 (and e!147777 mapRes!10132))))

(declare-fun condMapEmpty!10132 () Bool)

(declare-fun mapDefault!10132 () ValueCell!2644)


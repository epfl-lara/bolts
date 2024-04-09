; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24192 () Bool)

(assert start!24192)

(declare-fun b!252789 () Bool)

(declare-fun b_free!6655 () Bool)

(declare-fun b_next!6655 () Bool)

(assert (=> b!252789 (= b_free!6655 (not b_next!6655))))

(declare-fun tp!23247 () Bool)

(declare-fun b_and!13711 () Bool)

(assert (=> b!252789 (= tp!23247 b_and!13711)))

(declare-fun b!252775 () Bool)

(declare-fun res!123751 () Bool)

(declare-fun e!163925 () Bool)

(assert (=> b!252775 (=> (not res!123751) (not e!163925))))

(declare-fun call!23831 () Bool)

(assert (=> b!252775 (= res!123751 call!23831)))

(declare-fun e!163927 () Bool)

(assert (=> b!252775 (= e!163927 e!163925)))

(declare-fun b!252776 () Bool)

(declare-datatypes ((Unit!7822 0))(
  ( (Unit!7823) )
))
(declare-fun e!163923 () Unit!7822)

(declare-fun Unit!7824 () Unit!7822)

(assert (=> b!252776 (= e!163923 Unit!7824)))

(declare-fun lt!126756 () Unit!7822)

(declare-datatypes ((V!8337 0))(
  ( (V!8338 (val!3303 Int)) )
))
(declare-datatypes ((ValueCell!2915 0))(
  ( (ValueCellFull!2915 (v!5371 V!8337)) (EmptyCell!2915) )
))
(declare-datatypes ((array!12360 0))(
  ( (array!12361 (arr!5857 (Array (_ BitVec 32) ValueCell!2915)) (size!6204 (_ BitVec 32))) )
))
(declare-datatypes ((array!12362 0))(
  ( (array!12363 (arr!5858 (Array (_ BitVec 32) (_ BitVec 64))) (size!6205 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3730 0))(
  ( (LongMapFixedSize!3731 (defaultEntry!4670 Int) (mask!10896 (_ BitVec 32)) (extraKeys!4407 (_ BitVec 32)) (zeroValue!4511 V!8337) (minValue!4511 V!8337) (_size!1914 (_ BitVec 32)) (_keys!6820 array!12362) (_values!4653 array!12360) (_vacant!1914 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3730)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!212 (array!12362 array!12360 (_ BitVec 32) (_ BitVec 32) V!8337 V!8337 (_ BitVec 64) (_ BitVec 32) Int) Unit!7822)

(assert (=> b!252776 (= lt!126756 (lemmaArrayContainsKeyThenInListMap!212 (_keys!6820 thiss!1504) (_values!4653 thiss!1504) (mask!10896 thiss!1504) (extraKeys!4407 thiss!1504) (zeroValue!4511 thiss!1504) (minValue!4511 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4670 thiss!1504)))))

(assert (=> b!252776 false))

(declare-fun b!252777 () Bool)

(declare-fun call!23830 () Bool)

(assert (=> b!252777 (= e!163925 (not call!23830))))

(declare-fun b!252779 () Bool)

(declare-fun e!163924 () Unit!7822)

(declare-fun Unit!7825 () Unit!7822)

(assert (=> b!252779 (= e!163924 Unit!7825)))

(declare-fun lt!126758 () Unit!7822)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!408 (array!12362 array!12360 (_ BitVec 32) (_ BitVec 32) V!8337 V!8337 (_ BitVec 64) Int) Unit!7822)

(assert (=> b!252779 (= lt!126758 (lemmaInListMapThenSeekEntryOrOpenFindsIt!408 (_keys!6820 thiss!1504) (_values!4653 thiss!1504) (mask!10896 thiss!1504) (extraKeys!4407 thiss!1504) (zeroValue!4511 thiss!1504) (minValue!4511 thiss!1504) key!932 (defaultEntry!4670 thiss!1504)))))

(assert (=> b!252779 false))

(declare-fun b!252780 () Bool)

(declare-fun res!123743 () Bool)

(declare-fun e!163915 () Bool)

(assert (=> b!252780 (=> res!123743 e!163915)))

(assert (=> b!252780 (= res!123743 (or (not (= (size!6204 (_values!4653 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10896 thiss!1504)))) (not (= (size!6205 (_keys!6820 thiss!1504)) (size!6204 (_values!4653 thiss!1504)))) (bvslt (mask!10896 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4407 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4407 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!252781 () Bool)

(declare-fun e!163922 () Bool)

(declare-fun e!163921 () Bool)

(assert (=> b!252781 (= e!163922 e!163921)))

(declare-fun res!123741 () Bool)

(assert (=> b!252781 (= res!123741 call!23831)))

(assert (=> b!252781 (=> (not res!123741) (not e!163921))))

(declare-fun b!252782 () Bool)

(declare-fun e!163929 () Bool)

(declare-fun e!163918 () Bool)

(assert (=> b!252782 (= e!163929 e!163918)))

(declare-fun res!123745 () Bool)

(assert (=> b!252782 (=> (not res!123745) (not e!163918))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!252782 (= res!123745 (inRange!0 index!297 (mask!10896 thiss!1504)))))

(declare-fun lt!126757 () Unit!7822)

(assert (=> b!252782 (= lt!126757 e!163924)))

(declare-fun c!42599 () Bool)

(declare-datatypes ((tuple2!4862 0))(
  ( (tuple2!4863 (_1!2441 (_ BitVec 64)) (_2!2441 V!8337)) )
))
(declare-datatypes ((List!3766 0))(
  ( (Nil!3763) (Cons!3762 (h!4424 tuple2!4862) (t!8817 List!3766)) )
))
(declare-datatypes ((ListLongMap!3789 0))(
  ( (ListLongMap!3790 (toList!1910 List!3766)) )
))
(declare-fun contains!1832 (ListLongMap!3789 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1433 (array!12362 array!12360 (_ BitVec 32) (_ BitVec 32) V!8337 V!8337 (_ BitVec 32) Int) ListLongMap!3789)

(assert (=> b!252782 (= c!42599 (contains!1832 (getCurrentListMap!1433 (_keys!6820 thiss!1504) (_values!4653 thiss!1504) (mask!10896 thiss!1504) (extraKeys!4407 thiss!1504) (zeroValue!4511 thiss!1504) (minValue!4511 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4670 thiss!1504)) key!932))))

(declare-fun b!252783 () Bool)

(declare-fun lt!126759 () Unit!7822)

(assert (=> b!252783 (= e!163924 lt!126759)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!409 (array!12362 array!12360 (_ BitVec 32) (_ BitVec 32) V!8337 V!8337 (_ BitVec 64) Int) Unit!7822)

(assert (=> b!252783 (= lt!126759 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!409 (_keys!6820 thiss!1504) (_values!4653 thiss!1504) (mask!10896 thiss!1504) (extraKeys!4407 thiss!1504) (zeroValue!4511 thiss!1504) (minValue!4511 thiss!1504) key!932 (defaultEntry!4670 thiss!1504)))))

(declare-fun c!42597 () Bool)

(declare-datatypes ((SeekEntryResult!1145 0))(
  ( (MissingZero!1145 (index!6750 (_ BitVec 32))) (Found!1145 (index!6751 (_ BitVec 32))) (Intermediate!1145 (undefined!1957 Bool) (index!6752 (_ BitVec 32)) (x!24801 (_ BitVec 32))) (Undefined!1145) (MissingVacant!1145 (index!6753 (_ BitVec 32))) )
))
(declare-fun lt!126754 () SeekEntryResult!1145)

(assert (=> b!252783 (= c!42597 (is-MissingZero!1145 lt!126754))))

(assert (=> b!252783 e!163927))

(declare-fun b!252784 () Bool)

(assert (=> b!252784 (= e!163918 (not e!163915))))

(declare-fun res!123742 () Bool)

(assert (=> b!252784 (=> res!123742 e!163915)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!252784 (= res!123742 (not (validMask!0 (mask!10896 thiss!1504))))))

(declare-fun lt!126760 () array!12362)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12362 (_ BitVec 32)) Bool)

(assert (=> b!252784 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126760 (mask!10896 thiss!1504))))

(declare-fun lt!126762 () Unit!7822)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12362 (_ BitVec 32) (_ BitVec 32)) Unit!7822)

(assert (=> b!252784 (= lt!126762 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6820 thiss!1504) index!297 (mask!10896 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12362 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!252784 (= (arrayCountValidKeys!0 lt!126760 #b00000000000000000000000000000000 (size!6205 (_keys!6820 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6820 thiss!1504) #b00000000000000000000000000000000 (size!6205 (_keys!6820 thiss!1504)))))))

(declare-fun lt!126755 () Unit!7822)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12362 (_ BitVec 32) (_ BitVec 64)) Unit!7822)

(assert (=> b!252784 (= lt!126755 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6820 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3767 0))(
  ( (Nil!3764) (Cons!3763 (h!4425 (_ BitVec 64)) (t!8818 List!3767)) )
))
(declare-fun arrayNoDuplicates!0 (array!12362 (_ BitVec 32) List!3767) Bool)

(assert (=> b!252784 (arrayNoDuplicates!0 lt!126760 #b00000000000000000000000000000000 Nil!3764)))

(assert (=> b!252784 (= lt!126760 (array!12363 (store (arr!5858 (_keys!6820 thiss!1504)) index!297 key!932) (size!6205 (_keys!6820 thiss!1504))))))

(declare-fun lt!126761 () Unit!7822)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12362 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3767) Unit!7822)

(assert (=> b!252784 (= lt!126761 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6820 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3764))))

(declare-fun lt!126763 () Unit!7822)

(assert (=> b!252784 (= lt!126763 e!163923)))

(declare-fun c!42596 () Bool)

(declare-fun arrayContainsKey!0 (array!12362 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!252784 (= c!42596 (arrayContainsKey!0 (_keys!6820 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252785 () Bool)

(declare-fun e!163919 () Bool)

(assert (=> b!252785 (= e!163919 e!163929)))

(declare-fun res!123747 () Bool)

(assert (=> b!252785 (=> (not res!123747) (not e!163929))))

(assert (=> b!252785 (= res!123747 (or (= lt!126754 (MissingZero!1145 index!297)) (= lt!126754 (MissingVacant!1145 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12362 (_ BitVec 32)) SeekEntryResult!1145)

(assert (=> b!252785 (= lt!126754 (seekEntryOrOpen!0 key!932 (_keys!6820 thiss!1504) (mask!10896 thiss!1504)))))

(declare-fun b!252786 () Bool)

(declare-fun res!123752 () Bool)

(assert (=> b!252786 (=> res!123752 e!163915)))

(assert (=> b!252786 (= res!123752 (not (arrayNoDuplicates!0 (_keys!6820 thiss!1504) #b00000000000000000000000000000000 Nil!3764)))))

(declare-fun b!252787 () Bool)

(declare-fun e!163926 () Bool)

(declare-fun tp_is_empty!6517 () Bool)

(assert (=> b!252787 (= e!163926 tp_is_empty!6517)))

(declare-fun mapNonEmpty!11085 () Bool)

(declare-fun mapRes!11085 () Bool)

(declare-fun tp!23246 () Bool)

(assert (=> mapNonEmpty!11085 (= mapRes!11085 (and tp!23246 e!163926))))

(declare-fun mapKey!11085 () (_ BitVec 32))

(declare-fun mapValue!11085 () ValueCell!2915)

(declare-fun mapRest!11085 () (Array (_ BitVec 32) ValueCell!2915))

(assert (=> mapNonEmpty!11085 (= (arr!5857 (_values!4653 thiss!1504)) (store mapRest!11085 mapKey!11085 mapValue!11085))))

(declare-fun bm!23827 () Bool)

(assert (=> bm!23827 (= call!23830 (arrayContainsKey!0 (_keys!6820 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!252788 () Bool)

(assert (=> b!252788 (= e!163921 (not call!23830))))

(declare-fun e!163916 () Bool)

(declare-fun e!163928 () Bool)

(declare-fun array_inv!3863 (array!12362) Bool)

(declare-fun array_inv!3864 (array!12360) Bool)

(assert (=> b!252789 (= e!163916 (and tp!23247 tp_is_empty!6517 (array_inv!3863 (_keys!6820 thiss!1504)) (array_inv!3864 (_values!4653 thiss!1504)) e!163928))))

(declare-fun bm!23828 () Bool)

(assert (=> bm!23828 (= call!23831 (inRange!0 (ite c!42597 (index!6750 lt!126754) (index!6753 lt!126754)) (mask!10896 thiss!1504)))))

(declare-fun b!252778 () Bool)

(declare-fun Unit!7826 () Unit!7822)

(assert (=> b!252778 (= e!163923 Unit!7826)))

(declare-fun res!123749 () Bool)

(assert (=> start!24192 (=> (not res!123749) (not e!163919))))

(declare-fun valid!1452 (LongMapFixedSize!3730) Bool)

(assert (=> start!24192 (= res!123749 (valid!1452 thiss!1504))))

(assert (=> start!24192 e!163919))

(assert (=> start!24192 e!163916))

(assert (=> start!24192 true))

(declare-fun b!252790 () Bool)

(declare-fun res!123744 () Bool)

(assert (=> b!252790 (=> (not res!123744) (not e!163919))))

(assert (=> b!252790 (= res!123744 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!252791 () Bool)

(assert (=> b!252791 (= e!163915 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6205 (_keys!6820 thiss!1504)))))))

(declare-fun b!252792 () Bool)

(declare-fun res!123750 () Bool)

(assert (=> b!252792 (=> res!123750 e!163915)))

(assert (=> b!252792 (= res!123750 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6820 thiss!1504) (mask!10896 thiss!1504))))))

(declare-fun b!252793 () Bool)

(declare-fun res!123748 () Bool)

(assert (=> b!252793 (= res!123748 (= (select (arr!5858 (_keys!6820 thiss!1504)) (index!6753 lt!126754)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!252793 (=> (not res!123748) (not e!163921))))

(declare-fun b!252794 () Bool)

(declare-fun res!123746 () Bool)

(assert (=> b!252794 (=> (not res!123746) (not e!163925))))

(assert (=> b!252794 (= res!123746 (= (select (arr!5858 (_keys!6820 thiss!1504)) (index!6750 lt!126754)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!252795 () Bool)

(declare-fun c!42598 () Bool)

(assert (=> b!252795 (= c!42598 (is-MissingVacant!1145 lt!126754))))

(assert (=> b!252795 (= e!163927 e!163922)))

(declare-fun mapIsEmpty!11085 () Bool)

(assert (=> mapIsEmpty!11085 mapRes!11085))

(declare-fun b!252796 () Bool)

(assert (=> b!252796 (= e!163922 (is-Undefined!1145 lt!126754))))

(declare-fun b!252797 () Bool)

(declare-fun e!163920 () Bool)

(assert (=> b!252797 (= e!163920 tp_is_empty!6517)))

(declare-fun b!252798 () Bool)

(assert (=> b!252798 (= e!163928 (and e!163920 mapRes!11085))))

(declare-fun condMapEmpty!11085 () Bool)

(declare-fun mapDefault!11085 () ValueCell!2915)


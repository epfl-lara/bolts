; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!23936 () Bool)

(assert start!23936)

(declare-fun b!250799 () Bool)

(declare-fun b_free!6635 () Bool)

(declare-fun b_next!6635 () Bool)

(assert (=> b!250799 (= b_free!6635 (not b_next!6635))))

(declare-fun tp!23172 () Bool)

(declare-fun b_and!13675 () Bool)

(assert (=> b!250799 (= tp!23172 b_and!13675)))

(declare-fun res!122831 () Bool)

(declare-fun e!162679 () Bool)

(assert (=> start!23936 (=> (not res!122831) (not e!162679))))

(declare-datatypes ((V!8309 0))(
  ( (V!8310 (val!3293 Int)) )
))
(declare-datatypes ((ValueCell!2905 0))(
  ( (ValueCellFull!2905 (v!5355 V!8309)) (EmptyCell!2905) )
))
(declare-datatypes ((array!12312 0))(
  ( (array!12313 (arr!5837 (Array (_ BitVec 32) ValueCell!2905)) (size!6182 (_ BitVec 32))) )
))
(declare-datatypes ((array!12314 0))(
  ( (array!12315 (arr!5838 (Array (_ BitVec 32) (_ BitVec 64))) (size!6183 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3710 0))(
  ( (LongMapFixedSize!3711 (defaultEntry!4636 Int) (mask!10826 (_ BitVec 32)) (extraKeys!4373 (_ BitVec 32)) (zeroValue!4477 V!8309) (minValue!4477 V!8309) (_size!1904 (_ BitVec 32)) (_keys!6774 array!12314) (_values!4619 array!12312) (_vacant!1904 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3710)

(declare-fun valid!1442 (LongMapFixedSize!3710) Bool)

(assert (=> start!23936 (= res!122831 (valid!1442 thiss!1504))))

(assert (=> start!23936 e!162679))

(declare-fun e!162678 () Bool)

(assert (=> start!23936 e!162678))

(assert (=> start!23936 true))

(declare-fun b!250791 () Bool)

(declare-fun res!122829 () Bool)

(assert (=> b!250791 (=> (not res!122829) (not e!162679))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!250791 (= res!122829 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!250792 () Bool)

(declare-fun e!162671 () Bool)

(declare-fun tp_is_empty!6497 () Bool)

(assert (=> b!250792 (= e!162671 tp_is_empty!6497)))

(declare-fun b!250793 () Bool)

(declare-fun e!162672 () Bool)

(declare-fun e!162681 () Bool)

(assert (=> b!250793 (= e!162672 (not e!162681))))

(declare-fun res!122833 () Bool)

(assert (=> b!250793 (=> res!122833 e!162681)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!250793 (= res!122833 (not (validMask!0 (mask!10826 thiss!1504))))))

(declare-fun lt!125706 () array!12314)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12314 (_ BitVec 32)) Bool)

(assert (=> b!250793 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!125706 (mask!10826 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((Unit!7762 0))(
  ( (Unit!7763) )
))
(declare-fun lt!125710 () Unit!7762)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12314 (_ BitVec 32) (_ BitVec 32)) Unit!7762)

(assert (=> b!250793 (= lt!125710 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6774 thiss!1504) index!297 (mask!10826 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12314 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!250793 (= (arrayCountValidKeys!0 lt!125706 #b00000000000000000000000000000000 (size!6183 (_keys!6774 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6774 thiss!1504) #b00000000000000000000000000000000 (size!6183 (_keys!6774 thiss!1504)))))))

(declare-fun lt!125704 () Unit!7762)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12314 (_ BitVec 32) (_ BitVec 64)) Unit!7762)

(assert (=> b!250793 (= lt!125704 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6774 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3748 0))(
  ( (Nil!3745) (Cons!3744 (h!4404 (_ BitVec 64)) (t!8791 List!3748)) )
))
(declare-fun arrayNoDuplicates!0 (array!12314 (_ BitVec 32) List!3748) Bool)

(assert (=> b!250793 (arrayNoDuplicates!0 lt!125706 #b00000000000000000000000000000000 Nil!3745)))

(assert (=> b!250793 (= lt!125706 (array!12315 (store (arr!5838 (_keys!6774 thiss!1504)) index!297 key!932) (size!6183 (_keys!6774 thiss!1504))))))

(declare-fun lt!125705 () Unit!7762)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12314 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3748) Unit!7762)

(assert (=> b!250793 (= lt!125705 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6774 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3745))))

(declare-fun lt!125707 () Unit!7762)

(declare-fun e!162677 () Unit!7762)

(assert (=> b!250793 (= lt!125707 e!162677)))

(declare-fun c!42147 () Bool)

(declare-fun arrayContainsKey!0 (array!12314 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!250793 (= c!42147 (arrayContainsKey!0 (_keys!6774 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!250794 () Bool)

(declare-fun e!162667 () Unit!7762)

(declare-fun lt!125708 () Unit!7762)

(assert (=> b!250794 (= e!162667 lt!125708)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!401 (array!12314 array!12312 (_ BitVec 32) (_ BitVec 32) V!8309 V!8309 (_ BitVec 64) Int) Unit!7762)

(assert (=> b!250794 (= lt!125708 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!401 (_keys!6774 thiss!1504) (_values!4619 thiss!1504) (mask!10826 thiss!1504) (extraKeys!4373 thiss!1504) (zeroValue!4477 thiss!1504) (minValue!4477 thiss!1504) key!932 (defaultEntry!4636 thiss!1504)))))

(declare-fun c!42148 () Bool)

(declare-datatypes ((SeekEntryResult!1135 0))(
  ( (MissingZero!1135 (index!6710 (_ BitVec 32))) (Found!1135 (index!6711 (_ BitVec 32))) (Intermediate!1135 (undefined!1947 Bool) (index!6712 (_ BitVec 32)) (x!24703 (_ BitVec 32))) (Undefined!1135) (MissingVacant!1135 (index!6713 (_ BitVec 32))) )
))
(declare-fun lt!125709 () SeekEntryResult!1135)

(assert (=> b!250794 (= c!42148 (is-MissingZero!1135 lt!125709))))

(declare-fun e!162676 () Bool)

(assert (=> b!250794 e!162676))

(declare-fun b!250795 () Bool)

(assert (=> b!250795 (= e!162681 (or (not (= (size!6182 (_values!4619 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10826 thiss!1504)))) (not (= (size!6183 (_keys!6774 thiss!1504)) (size!6182 (_values!4619 thiss!1504)))) (bvslt (mask!10826 thiss!1504) #b00000000000000000000000000000000) (bvsge (extraKeys!4373 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun bm!23580 () Bool)

(declare-fun call!23584 () Bool)

(assert (=> bm!23580 (= call!23584 (arrayContainsKey!0 (_keys!6774 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!250796 () Bool)

(declare-fun e!162680 () Bool)

(assert (=> b!250796 (= e!162680 (not call!23584))))

(declare-fun b!250797 () Bool)

(declare-fun e!162670 () Bool)

(assert (=> b!250797 (= e!162670 e!162680)))

(declare-fun res!122832 () Bool)

(declare-fun call!23583 () Bool)

(assert (=> b!250797 (= res!122832 call!23583)))

(assert (=> b!250797 (=> (not res!122832) (not e!162680))))

(declare-fun b!250798 () Bool)

(declare-fun Unit!7764 () Unit!7762)

(assert (=> b!250798 (= e!162677 Unit!7764)))

(declare-fun e!162673 () Bool)

(declare-fun array_inv!3845 (array!12314) Bool)

(declare-fun array_inv!3846 (array!12312) Bool)

(assert (=> b!250799 (= e!162678 (and tp!23172 tp_is_empty!6497 (array_inv!3845 (_keys!6774 thiss!1504)) (array_inv!3846 (_values!4619 thiss!1504)) e!162673))))

(declare-fun b!250800 () Bool)

(declare-fun e!162675 () Bool)

(assert (=> b!250800 (= e!162675 e!162672)))

(declare-fun res!122827 () Bool)

(assert (=> b!250800 (=> (not res!122827) (not e!162672))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!250800 (= res!122827 (inRange!0 index!297 (mask!10826 thiss!1504)))))

(declare-fun lt!125702 () Unit!7762)

(assert (=> b!250800 (= lt!125702 e!162667)))

(declare-fun c!42145 () Bool)

(declare-datatypes ((tuple2!4844 0))(
  ( (tuple2!4845 (_1!2432 (_ BitVec 64)) (_2!2432 V!8309)) )
))
(declare-datatypes ((List!3749 0))(
  ( (Nil!3746) (Cons!3745 (h!4405 tuple2!4844) (t!8792 List!3749)) )
))
(declare-datatypes ((ListLongMap!3771 0))(
  ( (ListLongMap!3772 (toList!1901 List!3749)) )
))
(declare-fun contains!1817 (ListLongMap!3771 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1424 (array!12314 array!12312 (_ BitVec 32) (_ BitVec 32) V!8309 V!8309 (_ BitVec 32) Int) ListLongMap!3771)

(assert (=> b!250800 (= c!42145 (contains!1817 (getCurrentListMap!1424 (_keys!6774 thiss!1504) (_values!4619 thiss!1504) (mask!10826 thiss!1504) (extraKeys!4373 thiss!1504) (zeroValue!4477 thiss!1504) (minValue!4477 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4636 thiss!1504)) key!932))))

(declare-fun bm!23581 () Bool)

(assert (=> bm!23581 (= call!23583 (inRange!0 (ite c!42148 (index!6710 lt!125709) (index!6713 lt!125709)) (mask!10826 thiss!1504)))))

(declare-fun b!250801 () Bool)

(declare-fun Unit!7765 () Unit!7762)

(assert (=> b!250801 (= e!162667 Unit!7765)))

(declare-fun lt!125711 () Unit!7762)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!401 (array!12314 array!12312 (_ BitVec 32) (_ BitVec 32) V!8309 V!8309 (_ BitVec 64) Int) Unit!7762)

(assert (=> b!250801 (= lt!125711 (lemmaInListMapThenSeekEntryOrOpenFindsIt!401 (_keys!6774 thiss!1504) (_values!4619 thiss!1504) (mask!10826 thiss!1504) (extraKeys!4373 thiss!1504) (zeroValue!4477 thiss!1504) (minValue!4477 thiss!1504) key!932 (defaultEntry!4636 thiss!1504)))))

(assert (=> b!250801 false))

(declare-fun b!250802 () Bool)

(assert (=> b!250802 (= e!162679 e!162675)))

(declare-fun res!122826 () Bool)

(assert (=> b!250802 (=> (not res!122826) (not e!162675))))

(assert (=> b!250802 (= res!122826 (or (= lt!125709 (MissingZero!1135 index!297)) (= lt!125709 (MissingVacant!1135 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12314 (_ BitVec 32)) SeekEntryResult!1135)

(assert (=> b!250802 (= lt!125709 (seekEntryOrOpen!0 key!932 (_keys!6774 thiss!1504) (mask!10826 thiss!1504)))))

(declare-fun b!250803 () Bool)

(declare-fun Unit!7766 () Unit!7762)

(assert (=> b!250803 (= e!162677 Unit!7766)))

(declare-fun lt!125703 () Unit!7762)

(declare-fun lemmaArrayContainsKeyThenInListMap!203 (array!12314 array!12312 (_ BitVec 32) (_ BitVec 32) V!8309 V!8309 (_ BitVec 64) (_ BitVec 32) Int) Unit!7762)

(assert (=> b!250803 (= lt!125703 (lemmaArrayContainsKeyThenInListMap!203 (_keys!6774 thiss!1504) (_values!4619 thiss!1504) (mask!10826 thiss!1504) (extraKeys!4373 thiss!1504) (zeroValue!4477 thiss!1504) (minValue!4477 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4636 thiss!1504)))))

(assert (=> b!250803 false))

(declare-fun b!250804 () Bool)

(declare-fun mapRes!11041 () Bool)

(assert (=> b!250804 (= e!162673 (and e!162671 mapRes!11041))))

(declare-fun condMapEmpty!11041 () Bool)

(declare-fun mapDefault!11041 () ValueCell!2905)


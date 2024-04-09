; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!24434 () Bool)

(assert start!24434)

(declare-fun b!255782 () Bool)

(declare-fun b_free!6709 () Bool)

(declare-fun b_next!6709 () Bool)

(assert (=> b!255782 (= b_free!6709 (not b_next!6709))))

(declare-fun tp!23423 () Bool)

(declare-fun b_and!13781 () Bool)

(assert (=> b!255782 (= tp!23423 b_and!13781)))

(declare-fun b!255768 () Bool)

(declare-fun res!125171 () Bool)

(declare-datatypes ((V!8409 0))(
  ( (V!8410 (val!3330 Int)) )
))
(declare-datatypes ((ValueCell!2942 0))(
  ( (ValueCellFull!2942 (v!5409 V!8409)) (EmptyCell!2942) )
))
(declare-datatypes ((array!12478 0))(
  ( (array!12479 (arr!5911 (Array (_ BitVec 32) ValueCell!2942)) (size!6258 (_ BitVec 32))) )
))
(declare-datatypes ((array!12480 0))(
  ( (array!12481 (arr!5912 (Array (_ BitVec 32) (_ BitVec 64))) (size!6259 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3784 0))(
  ( (LongMapFixedSize!3785 (defaultEntry!4720 Int) (mask!10986 (_ BitVec 32)) (extraKeys!4457 (_ BitVec 32)) (zeroValue!4561 V!8409) (minValue!4561 V!8409) (_size!1941 (_ BitVec 32)) (_keys!6880 array!12480) (_values!4703 array!12478) (_vacant!1941 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3784)

(declare-datatypes ((SeekEntryResult!1169 0))(
  ( (MissingZero!1169 (index!6846 (_ BitVec 32))) (Found!1169 (index!6847 (_ BitVec 32))) (Intermediate!1169 (undefined!1981 Bool) (index!6848 (_ BitVec 32)) (x!24947 (_ BitVec 32))) (Undefined!1169) (MissingVacant!1169 (index!6849 (_ BitVec 32))) )
))
(declare-fun lt!128392 () SeekEntryResult!1169)

(assert (=> b!255768 (= res!125171 (= (select (arr!5912 (_keys!6880 thiss!1504)) (index!6849 lt!128392)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!165807 () Bool)

(assert (=> b!255768 (=> (not res!125171) (not e!165807))))

(declare-fun mapNonEmpty!11181 () Bool)

(declare-fun mapRes!11181 () Bool)

(declare-fun tp!23424 () Bool)

(declare-fun e!165810 () Bool)

(assert (=> mapNonEmpty!11181 (= mapRes!11181 (and tp!23424 e!165810))))

(declare-fun mapValue!11181 () ValueCell!2942)

(declare-fun mapKey!11181 () (_ BitVec 32))

(declare-fun mapRest!11181 () (Array (_ BitVec 32) ValueCell!2942))

(assert (=> mapNonEmpty!11181 (= (arr!5911 (_values!4703 thiss!1504)) (store mapRest!11181 mapKey!11181 mapValue!11181))))

(declare-fun b!255769 () Bool)

(declare-fun res!125173 () Bool)

(declare-fun e!165802 () Bool)

(assert (=> b!255769 (=> (not res!125173) (not e!165802))))

(declare-fun call!24203 () Bool)

(assert (=> b!255769 (= res!125173 call!24203)))

(declare-fun e!165797 () Bool)

(assert (=> b!255769 (= e!165797 e!165802)))

(declare-fun b!255770 () Bool)

(declare-fun call!24202 () Bool)

(assert (=> b!255770 (= e!165807 (not call!24202))))

(declare-fun b!255771 () Bool)

(declare-fun e!165800 () Bool)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!255771 (= e!165800 (not (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6259 (_keys!6880 thiss!1504))) (bvslt (size!6259 (_keys!6880 thiss!1504)) #b01111111111111111111111111111111))))))

(declare-fun lt!128390 () array!12480)

(declare-datatypes ((tuple2!4900 0))(
  ( (tuple2!4901 (_1!2460 (_ BitVec 64)) (_2!2460 V!8409)) )
))
(declare-datatypes ((List!3804 0))(
  ( (Nil!3801) (Cons!3800 (h!4462 tuple2!4900) (t!8865 List!3804)) )
))
(declare-datatypes ((ListLongMap!3827 0))(
  ( (ListLongMap!3828 (toList!1929 List!3804)) )
))
(declare-fun lt!128395 () ListLongMap!3827)

(declare-fun v!346 () V!8409)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun +!674 (ListLongMap!3827 tuple2!4900) ListLongMap!3827)

(declare-fun getCurrentListMap!1452 (array!12480 array!12478 (_ BitVec 32) (_ BitVec 32) V!8409 V!8409 (_ BitVec 32) Int) ListLongMap!3827)

(assert (=> b!255771 (= (+!674 lt!128395 (tuple2!4901 key!932 v!346)) (getCurrentListMap!1452 lt!128390 (array!12479 (store (arr!5911 (_values!4703 thiss!1504)) index!297 (ValueCellFull!2942 v!346)) (size!6258 (_values!4703 thiss!1504))) (mask!10986 thiss!1504) (extraKeys!4457 thiss!1504) (zeroValue!4561 thiss!1504) (minValue!4561 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4720 thiss!1504)))))

(declare-datatypes ((Unit!7933 0))(
  ( (Unit!7934) )
))
(declare-fun lt!128387 () Unit!7933)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!89 (array!12480 array!12478 (_ BitVec 32) (_ BitVec 32) V!8409 V!8409 (_ BitVec 32) (_ BitVec 64) V!8409 Int) Unit!7933)

(assert (=> b!255771 (= lt!128387 (lemmaAddValidKeyToArrayThenAddPairToListMap!89 (_keys!6880 thiss!1504) (_values!4703 thiss!1504) (mask!10986 thiss!1504) (extraKeys!4457 thiss!1504) (zeroValue!4561 thiss!1504) (minValue!4561 thiss!1504) index!297 key!932 v!346 (defaultEntry!4720 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12480 (_ BitVec 32)) Bool)

(assert (=> b!255771 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128390 (mask!10986 thiss!1504))))

(declare-fun lt!128391 () Unit!7933)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12480 (_ BitVec 32) (_ BitVec 32)) Unit!7933)

(assert (=> b!255771 (= lt!128391 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6880 thiss!1504) index!297 (mask!10986 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12480 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!255771 (= (arrayCountValidKeys!0 lt!128390 #b00000000000000000000000000000000 (size!6259 (_keys!6880 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6880 thiss!1504) #b00000000000000000000000000000000 (size!6259 (_keys!6880 thiss!1504)))))))

(declare-fun lt!128393 () Unit!7933)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12480 (_ BitVec 32) (_ BitVec 64)) Unit!7933)

(assert (=> b!255771 (= lt!128393 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6880 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3805 0))(
  ( (Nil!3802) (Cons!3801 (h!4463 (_ BitVec 64)) (t!8866 List!3805)) )
))
(declare-fun arrayNoDuplicates!0 (array!12480 (_ BitVec 32) List!3805) Bool)

(assert (=> b!255771 (arrayNoDuplicates!0 lt!128390 #b00000000000000000000000000000000 Nil!3802)))

(assert (=> b!255771 (= lt!128390 (array!12481 (store (arr!5912 (_keys!6880 thiss!1504)) index!297 key!932) (size!6259 (_keys!6880 thiss!1504))))))

(declare-fun lt!128396 () Unit!7933)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12480 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3805) Unit!7933)

(assert (=> b!255771 (= lt!128396 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6880 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3802))))

(declare-fun lt!128397 () Unit!7933)

(declare-fun e!165799 () Unit!7933)

(assert (=> b!255771 (= lt!128397 e!165799)))

(declare-fun c!43194 () Bool)

(declare-fun arrayContainsKey!0 (array!12480 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!255771 (= c!43194 (arrayContainsKey!0 (_keys!6880 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!255772 () Bool)

(declare-fun e!165803 () Bool)

(assert (=> b!255772 (= e!165803 (is-Undefined!1169 lt!128392))))

(declare-fun b!255773 () Bool)

(declare-fun e!165804 () Bool)

(assert (=> b!255773 (= e!165804 e!165800)))

(declare-fun res!125175 () Bool)

(assert (=> b!255773 (=> (not res!125175) (not e!165800))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!255773 (= res!125175 (inRange!0 index!297 (mask!10986 thiss!1504)))))

(declare-fun lt!128386 () Unit!7933)

(declare-fun e!165806 () Unit!7933)

(assert (=> b!255773 (= lt!128386 e!165806)))

(declare-fun c!43192 () Bool)

(declare-fun contains!1859 (ListLongMap!3827 (_ BitVec 64)) Bool)

(assert (=> b!255773 (= c!43192 (contains!1859 lt!128395 key!932))))

(assert (=> b!255773 (= lt!128395 (getCurrentListMap!1452 (_keys!6880 thiss!1504) (_values!4703 thiss!1504) (mask!10986 thiss!1504) (extraKeys!4457 thiss!1504) (zeroValue!4561 thiss!1504) (minValue!4561 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4720 thiss!1504)))))

(declare-fun b!255774 () Bool)

(declare-fun Unit!7935 () Unit!7933)

(assert (=> b!255774 (= e!165799 Unit!7935)))

(declare-fun lt!128389 () Unit!7933)

(declare-fun lemmaArrayContainsKeyThenInListMap!231 (array!12480 array!12478 (_ BitVec 32) (_ BitVec 32) V!8409 V!8409 (_ BitVec 64) (_ BitVec 32) Int) Unit!7933)

(assert (=> b!255774 (= lt!128389 (lemmaArrayContainsKeyThenInListMap!231 (_keys!6880 thiss!1504) (_values!4703 thiss!1504) (mask!10986 thiss!1504) (extraKeys!4457 thiss!1504) (zeroValue!4561 thiss!1504) (minValue!4561 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4720 thiss!1504)))))

(assert (=> b!255774 false))

(declare-fun b!255775 () Bool)

(declare-fun Unit!7936 () Unit!7933)

(assert (=> b!255775 (= e!165799 Unit!7936)))

(declare-fun b!255776 () Bool)

(declare-fun lt!128388 () Unit!7933)

(assert (=> b!255776 (= e!165806 lt!128388)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!426 (array!12480 array!12478 (_ BitVec 32) (_ BitVec 32) V!8409 V!8409 (_ BitVec 64) Int) Unit!7933)

(assert (=> b!255776 (= lt!128388 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!426 (_keys!6880 thiss!1504) (_values!4703 thiss!1504) (mask!10986 thiss!1504) (extraKeys!4457 thiss!1504) (zeroValue!4561 thiss!1504) (minValue!4561 thiss!1504) key!932 (defaultEntry!4720 thiss!1504)))))

(declare-fun c!43195 () Bool)

(assert (=> b!255776 (= c!43195 (is-MissingZero!1169 lt!128392))))

(assert (=> b!255776 e!165797))

(declare-fun b!255777 () Bool)

(declare-fun Unit!7937 () Unit!7933)

(assert (=> b!255777 (= e!165806 Unit!7937)))

(declare-fun lt!128394 () Unit!7933)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!425 (array!12480 array!12478 (_ BitVec 32) (_ BitVec 32) V!8409 V!8409 (_ BitVec 64) Int) Unit!7933)

(assert (=> b!255777 (= lt!128394 (lemmaInListMapThenSeekEntryOrOpenFindsIt!425 (_keys!6880 thiss!1504) (_values!4703 thiss!1504) (mask!10986 thiss!1504) (extraKeys!4457 thiss!1504) (zeroValue!4561 thiss!1504) (minValue!4561 thiss!1504) key!932 (defaultEntry!4720 thiss!1504)))))

(assert (=> b!255777 false))

(declare-fun res!125172 () Bool)

(declare-fun e!165805 () Bool)

(assert (=> start!24434 (=> (not res!125172) (not e!165805))))

(declare-fun valid!1471 (LongMapFixedSize!3784) Bool)

(assert (=> start!24434 (= res!125172 (valid!1471 thiss!1504))))

(assert (=> start!24434 e!165805))

(declare-fun e!165809 () Bool)

(assert (=> start!24434 e!165809))

(assert (=> start!24434 true))

(declare-fun tp_is_empty!6571 () Bool)

(assert (=> start!24434 tp_is_empty!6571))

(declare-fun b!255778 () Bool)

(declare-fun res!125169 () Bool)

(assert (=> b!255778 (=> (not res!125169) (not e!165805))))

(assert (=> b!255778 (= res!125169 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!255779 () Bool)

(assert (=> b!255779 (= e!165802 (not call!24202))))

(declare-fun b!255780 () Bool)

(assert (=> b!255780 (= e!165810 tp_is_empty!6571)))

(declare-fun b!255781 () Bool)

(assert (=> b!255781 (= e!165805 e!165804)))

(declare-fun res!125168 () Bool)

(assert (=> b!255781 (=> (not res!125168) (not e!165804))))

(assert (=> b!255781 (= res!125168 (or (= lt!128392 (MissingZero!1169 index!297)) (= lt!128392 (MissingVacant!1169 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12480 (_ BitVec 32)) SeekEntryResult!1169)

(assert (=> b!255781 (= lt!128392 (seekEntryOrOpen!0 key!932 (_keys!6880 thiss!1504) (mask!10986 thiss!1504)))))

(declare-fun bm!24199 () Bool)

(assert (=> bm!24199 (= call!24203 (inRange!0 (ite c!43195 (index!6846 lt!128392) (index!6849 lt!128392)) (mask!10986 thiss!1504)))))

(declare-fun e!165801 () Bool)

(declare-fun array_inv!3899 (array!12480) Bool)

(declare-fun array_inv!3900 (array!12478) Bool)

(assert (=> b!255782 (= e!165809 (and tp!23423 tp_is_empty!6571 (array_inv!3899 (_keys!6880 thiss!1504)) (array_inv!3900 (_values!4703 thiss!1504)) e!165801))))

(declare-fun bm!24200 () Bool)

(assert (=> bm!24200 (= call!24202 (arrayContainsKey!0 (_keys!6880 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!255783 () Bool)

(declare-fun res!125174 () Bool)

(assert (=> b!255783 (=> (not res!125174) (not e!165802))))

(assert (=> b!255783 (= res!125174 (= (select (arr!5912 (_keys!6880 thiss!1504)) (index!6846 lt!128392)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!255784 () Bool)

(declare-fun e!165798 () Bool)

(assert (=> b!255784 (= e!165798 tp_is_empty!6571)))

(declare-fun mapIsEmpty!11181 () Bool)

(assert (=> mapIsEmpty!11181 mapRes!11181))

(declare-fun b!255785 () Bool)

(declare-fun c!43193 () Bool)

(assert (=> b!255785 (= c!43193 (is-MissingVacant!1169 lt!128392))))

(assert (=> b!255785 (= e!165797 e!165803)))

(declare-fun b!255786 () Bool)

(assert (=> b!255786 (= e!165803 e!165807)))

(declare-fun res!125170 () Bool)

(assert (=> b!255786 (= res!125170 call!24203)))

(assert (=> b!255786 (=> (not res!125170) (not e!165807))))

(declare-fun b!255787 () Bool)

(assert (=> b!255787 (= e!165801 (and e!165798 mapRes!11181))))

(declare-fun condMapEmpty!11181 () Bool)

(declare-fun mapDefault!11181 () ValueCell!2942)


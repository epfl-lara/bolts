; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!22120 () Bool)

(assert start!22120)

(declare-fun b!229879 () Bool)

(declare-fun b_free!6175 () Bool)

(declare-fun b_next!6175 () Bool)

(assert (=> b!229879 (= b_free!6175 (not b_next!6175))))

(declare-fun tp!21667 () Bool)

(declare-fun b_and!13091 () Bool)

(assert (=> b!229879 (= tp!21667 b_and!13091)))

(declare-fun b!229876 () Bool)

(declare-fun e!149161 () Bool)

(declare-fun e!149160 () Bool)

(assert (=> b!229876 (= e!149161 e!149160)))

(declare-fun res!113127 () Bool)

(assert (=> b!229876 (=> (not res!113127) (not e!149160))))

(declare-datatypes ((SeekEntryResult!939 0))(
  ( (MissingZero!939 (index!5926 (_ BitVec 32))) (Found!939 (index!5927 (_ BitVec 32))) (Intermediate!939 (undefined!1751 Bool) (index!5928 (_ BitVec 32)) (x!23423 (_ BitVec 32))) (Undefined!939) (MissingVacant!939 (index!5929 (_ BitVec 32))) )
))
(declare-fun lt!115693 () SeekEntryResult!939)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!229876 (= res!113127 (or (= lt!115693 (MissingZero!939 index!297)) (= lt!115693 (MissingVacant!939 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7697 0))(
  ( (V!7698 (val!3063 Int)) )
))
(declare-datatypes ((ValueCell!2675 0))(
  ( (ValueCellFull!2675 (v!5079 V!7697)) (EmptyCell!2675) )
))
(declare-datatypes ((array!11316 0))(
  ( (array!11317 (arr!5377 (Array (_ BitVec 32) ValueCell!2675)) (size!5710 (_ BitVec 32))) )
))
(declare-datatypes ((array!11318 0))(
  ( (array!11319 (arr!5378 (Array (_ BitVec 32) (_ BitVec 64))) (size!5711 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3250 0))(
  ( (LongMapFixedSize!3251 (defaultEntry!4284 Int) (mask!10170 (_ BitVec 32)) (extraKeys!4021 (_ BitVec 32)) (zeroValue!4125 V!7697) (minValue!4125 V!7697) (_size!1674 (_ BitVec 32)) (_keys!6338 array!11318) (_values!4267 array!11316) (_vacant!1674 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3250)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11318 (_ BitVec 32)) SeekEntryResult!939)

(assert (=> b!229876 (= lt!115693 (seekEntryOrOpen!0 key!932 (_keys!6338 thiss!1504) (mask!10170 thiss!1504)))))

(declare-fun b!229877 () Bool)

(declare-fun e!149170 () Bool)

(assert (=> b!229877 (= e!149160 e!149170)))

(declare-fun res!113128 () Bool)

(assert (=> b!229877 (=> (not res!113128) (not e!149170))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!229877 (= res!113128 (inRange!0 index!297 (mask!10170 thiss!1504)))))

(declare-datatypes ((Unit!7020 0))(
  ( (Unit!7021) )
))
(declare-fun lt!115690 () Unit!7020)

(declare-fun e!149162 () Unit!7020)

(assert (=> b!229877 (= lt!115690 e!149162)))

(declare-fun c!38127 () Bool)

(declare-datatypes ((tuple2!4514 0))(
  ( (tuple2!4515 (_1!2267 (_ BitVec 64)) (_2!2267 V!7697)) )
))
(declare-datatypes ((List!3462 0))(
  ( (Nil!3459) (Cons!3458 (h!4106 tuple2!4514) (t!8429 List!3462)) )
))
(declare-datatypes ((ListLongMap!3441 0))(
  ( (ListLongMap!3442 (toList!1736 List!3462)) )
))
(declare-fun lt!115686 () ListLongMap!3441)

(declare-fun contains!1603 (ListLongMap!3441 (_ BitVec 64)) Bool)

(assert (=> b!229877 (= c!38127 (contains!1603 lt!115686 key!932))))

(declare-fun getCurrentListMap!1259 (array!11318 array!11316 (_ BitVec 32) (_ BitVec 32) V!7697 V!7697 (_ BitVec 32) Int) ListLongMap!3441)

(assert (=> b!229877 (= lt!115686 (getCurrentListMap!1259 (_keys!6338 thiss!1504) (_values!4267 thiss!1504) (mask!10170 thiss!1504) (extraKeys!4021 thiss!1504) (zeroValue!4125 thiss!1504) (minValue!4125 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4284 thiss!1504)))))

(declare-fun mapIsEmpty!10225 () Bool)

(declare-fun mapRes!10225 () Bool)

(assert (=> mapIsEmpty!10225 mapRes!10225))

(declare-fun bm!21354 () Bool)

(declare-fun call!21357 () Bool)

(declare-fun arrayContainsKey!0 (array!11318 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21354 (= call!21357 (arrayContainsKey!0 (_keys!6338 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun e!149166 () Bool)

(declare-fun e!149164 () Bool)

(declare-fun tp_is_empty!6037 () Bool)

(declare-fun array_inv!3539 (array!11318) Bool)

(declare-fun array_inv!3540 (array!11316) Bool)

(assert (=> b!229879 (= e!149164 (and tp!21667 tp_is_empty!6037 (array_inv!3539 (_keys!6338 thiss!1504)) (array_inv!3540 (_values!4267 thiss!1504)) e!149166))))

(declare-fun b!229880 () Bool)

(declare-fun e!149172 () Bool)

(declare-fun e!149165 () Bool)

(assert (=> b!229880 (= e!149172 e!149165)))

(declare-fun res!113126 () Bool)

(declare-fun call!21358 () Bool)

(assert (=> b!229880 (= res!113126 call!21358)))

(assert (=> b!229880 (=> (not res!113126) (not e!149165))))

(declare-fun b!229881 () Bool)

(declare-fun lt!115689 () Unit!7020)

(assert (=> b!229881 (= e!149162 lt!115689)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!300 (array!11318 array!11316 (_ BitVec 32) (_ BitVec 32) V!7697 V!7697 (_ BitVec 64) Int) Unit!7020)

(assert (=> b!229881 (= lt!115689 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!300 (_keys!6338 thiss!1504) (_values!4267 thiss!1504) (mask!10170 thiss!1504) (extraKeys!4021 thiss!1504) (zeroValue!4125 thiss!1504) (minValue!4125 thiss!1504) key!932 (defaultEntry!4284 thiss!1504)))))

(declare-fun c!38129 () Bool)

(assert (=> b!229881 (= c!38129 (is-MissingZero!939 lt!115693))))

(declare-fun e!149173 () Bool)

(assert (=> b!229881 e!149173))

(declare-fun b!229882 () Bool)

(declare-fun res!113124 () Bool)

(declare-fun e!149171 () Bool)

(assert (=> b!229882 (=> (not res!113124) (not e!149171))))

(assert (=> b!229882 (= res!113124 call!21358)))

(assert (=> b!229882 (= e!149173 e!149171)))

(declare-fun b!229883 () Bool)

(declare-fun e!149168 () Bool)

(assert (=> b!229883 (= e!149168 tp_is_empty!6037)))

(declare-fun b!229884 () Bool)

(declare-fun e!149163 () Unit!7020)

(declare-fun Unit!7022 () Unit!7020)

(assert (=> b!229884 (= e!149163 Unit!7022)))

(declare-fun b!229885 () Bool)

(declare-fun c!38128 () Bool)

(assert (=> b!229885 (= c!38128 (is-MissingVacant!939 lt!115693))))

(assert (=> b!229885 (= e!149173 e!149172)))

(declare-fun b!229886 () Bool)

(declare-fun Unit!7023 () Unit!7020)

(assert (=> b!229886 (= e!149163 Unit!7023)))

(declare-fun lt!115684 () Unit!7020)

(declare-fun lemmaArrayContainsKeyThenInListMap!119 (array!11318 array!11316 (_ BitVec 32) (_ BitVec 32) V!7697 V!7697 (_ BitVec 64) (_ BitVec 32) Int) Unit!7020)

(assert (=> b!229886 (= lt!115684 (lemmaArrayContainsKeyThenInListMap!119 (_keys!6338 thiss!1504) (_values!4267 thiss!1504) (mask!10170 thiss!1504) (extraKeys!4021 thiss!1504) (zeroValue!4125 thiss!1504) (minValue!4125 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4284 thiss!1504)))))

(assert (=> b!229886 false))

(declare-fun b!229878 () Bool)

(assert (=> b!229878 (= e!149170 (not true))))

(declare-fun lt!115695 () array!11318)

(declare-fun v!346 () V!7697)

(declare-fun +!595 (ListLongMap!3441 tuple2!4514) ListLongMap!3441)

(assert (=> b!229878 (= (+!595 lt!115686 (tuple2!4515 key!932 v!346)) (getCurrentListMap!1259 lt!115695 (array!11317 (store (arr!5377 (_values!4267 thiss!1504)) index!297 (ValueCellFull!2675 v!346)) (size!5710 (_values!4267 thiss!1504))) (mask!10170 thiss!1504) (extraKeys!4021 thiss!1504) (zeroValue!4125 thiss!1504) (minValue!4125 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4284 thiss!1504)))))

(declare-fun lt!115688 () Unit!7020)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!54 (array!11318 array!11316 (_ BitVec 32) (_ BitVec 32) V!7697 V!7697 (_ BitVec 32) (_ BitVec 64) V!7697 Int) Unit!7020)

(assert (=> b!229878 (= lt!115688 (lemmaAddValidKeyToArrayThenAddPairToListMap!54 (_keys!6338 thiss!1504) (_values!4267 thiss!1504) (mask!10170 thiss!1504) (extraKeys!4021 thiss!1504) (zeroValue!4125 thiss!1504) (minValue!4125 thiss!1504) index!297 key!932 v!346 (defaultEntry!4284 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11318 (_ BitVec 32)) Bool)

(assert (=> b!229878 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115695 (mask!10170 thiss!1504))))

(declare-fun lt!115692 () Unit!7020)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11318 (_ BitVec 32) (_ BitVec 32)) Unit!7020)

(assert (=> b!229878 (= lt!115692 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6338 thiss!1504) index!297 (mask!10170 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11318 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229878 (= (arrayCountValidKeys!0 lt!115695 #b00000000000000000000000000000000 (size!5711 (_keys!6338 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6338 thiss!1504) #b00000000000000000000000000000000 (size!5711 (_keys!6338 thiss!1504)))))))

(declare-fun lt!115687 () Unit!7020)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11318 (_ BitVec 32) (_ BitVec 64)) Unit!7020)

(assert (=> b!229878 (= lt!115687 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6338 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3463 0))(
  ( (Nil!3460) (Cons!3459 (h!4107 (_ BitVec 64)) (t!8430 List!3463)) )
))
(declare-fun arrayNoDuplicates!0 (array!11318 (_ BitVec 32) List!3463) Bool)

(assert (=> b!229878 (arrayNoDuplicates!0 lt!115695 #b00000000000000000000000000000000 Nil!3460)))

(assert (=> b!229878 (= lt!115695 (array!11319 (store (arr!5378 (_keys!6338 thiss!1504)) index!297 key!932) (size!5711 (_keys!6338 thiss!1504))))))

(declare-fun lt!115685 () Unit!7020)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11318 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3463) Unit!7020)

(assert (=> b!229878 (= lt!115685 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6338 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3460))))

(declare-fun lt!115694 () Unit!7020)

(assert (=> b!229878 (= lt!115694 e!149163)))

(declare-fun c!38126 () Bool)

(assert (=> b!229878 (= c!38126 (arrayContainsKey!0 (_keys!6338 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!113130 () Bool)

(assert (=> start!22120 (=> (not res!113130) (not e!149161))))

(declare-fun valid!1288 (LongMapFixedSize!3250) Bool)

(assert (=> start!22120 (= res!113130 (valid!1288 thiss!1504))))

(assert (=> start!22120 e!149161))

(assert (=> start!22120 e!149164))

(assert (=> start!22120 true))

(assert (=> start!22120 tp_is_empty!6037))

(declare-fun mapNonEmpty!10225 () Bool)

(declare-fun tp!21666 () Bool)

(assert (=> mapNonEmpty!10225 (= mapRes!10225 (and tp!21666 e!149168))))

(declare-fun mapRest!10225 () (Array (_ BitVec 32) ValueCell!2675))

(declare-fun mapValue!10225 () ValueCell!2675)

(declare-fun mapKey!10225 () (_ BitVec 32))

(assert (=> mapNonEmpty!10225 (= (arr!5377 (_values!4267 thiss!1504)) (store mapRest!10225 mapKey!10225 mapValue!10225))))

(declare-fun b!229887 () Bool)

(assert (=> b!229887 (= e!149172 (is-Undefined!939 lt!115693))))

(declare-fun bm!21355 () Bool)

(assert (=> bm!21355 (= call!21358 (inRange!0 (ite c!38129 (index!5926 lt!115693) (index!5929 lt!115693)) (mask!10170 thiss!1504)))))

(declare-fun b!229888 () Bool)

(assert (=> b!229888 (= e!149171 (not call!21357))))

(declare-fun b!229889 () Bool)

(assert (=> b!229889 (= e!149165 (not call!21357))))

(declare-fun b!229890 () Bool)

(declare-fun Unit!7024 () Unit!7020)

(assert (=> b!229890 (= e!149162 Unit!7024)))

(declare-fun lt!115691 () Unit!7020)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!286 (array!11318 array!11316 (_ BitVec 32) (_ BitVec 32) V!7697 V!7697 (_ BitVec 64) Int) Unit!7020)

(assert (=> b!229890 (= lt!115691 (lemmaInListMapThenSeekEntryOrOpenFindsIt!286 (_keys!6338 thiss!1504) (_values!4267 thiss!1504) (mask!10170 thiss!1504) (extraKeys!4021 thiss!1504) (zeroValue!4125 thiss!1504) (minValue!4125 thiss!1504) key!932 (defaultEntry!4284 thiss!1504)))))

(assert (=> b!229890 false))

(declare-fun b!229891 () Bool)

(declare-fun e!149169 () Bool)

(assert (=> b!229891 (= e!149169 tp_is_empty!6037)))

(declare-fun b!229892 () Bool)

(declare-fun res!113125 () Bool)

(assert (=> b!229892 (=> (not res!113125) (not e!149161))))

(assert (=> b!229892 (= res!113125 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!229893 () Bool)

(assert (=> b!229893 (= e!149166 (and e!149169 mapRes!10225))))

(declare-fun condMapEmpty!10225 () Bool)

(declare-fun mapDefault!10225 () ValueCell!2675)


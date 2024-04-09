; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22146 () Bool)

(assert start!22146)

(declare-fun b!230661 () Bool)

(declare-fun b_free!6201 () Bool)

(declare-fun b_next!6201 () Bool)

(assert (=> b!230661 (= b_free!6201 (not b_next!6201))))

(declare-fun tp!21744 () Bool)

(declare-fun b_and!13117 () Bool)

(assert (=> b!230661 (= tp!21744 b_and!13117)))

(declare-fun res!113442 () Bool)

(declare-fun e!149717 () Bool)

(assert (=> start!22146 (=> (not res!113442) (not e!149717))))

(declare-datatypes ((V!7731 0))(
  ( (V!7732 (val!3076 Int)) )
))
(declare-datatypes ((ValueCell!2688 0))(
  ( (ValueCellFull!2688 (v!5092 V!7731)) (EmptyCell!2688) )
))
(declare-datatypes ((array!11368 0))(
  ( (array!11369 (arr!5403 (Array (_ BitVec 32) ValueCell!2688)) (size!5736 (_ BitVec 32))) )
))
(declare-datatypes ((array!11370 0))(
  ( (array!11371 (arr!5404 (Array (_ BitVec 32) (_ BitVec 64))) (size!5737 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3276 0))(
  ( (LongMapFixedSize!3277 (defaultEntry!4297 Int) (mask!10191 (_ BitVec 32)) (extraKeys!4034 (_ BitVec 32)) (zeroValue!4138 V!7731) (minValue!4138 V!7731) (_size!1687 (_ BitVec 32)) (_keys!6351 array!11370) (_values!4280 array!11368) (_vacant!1687 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3276)

(declare-fun valid!1295 (LongMapFixedSize!3276) Bool)

(assert (=> start!22146 (= res!113442 (valid!1295 thiss!1504))))

(assert (=> start!22146 e!149717))

(declare-fun e!149719 () Bool)

(assert (=> start!22146 e!149719))

(assert (=> start!22146 true))

(declare-fun tp_is_empty!6063 () Bool)

(assert (=> start!22146 tp_is_empty!6063))

(declare-fun b!230656 () Bool)

(declare-datatypes ((Unit!7064 0))(
  ( (Unit!7065) )
))
(declare-fun e!149714 () Unit!7064)

(declare-fun Unit!7066 () Unit!7064)

(assert (=> b!230656 (= e!149714 Unit!7066)))

(declare-fun lt!116181 () Unit!7064)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!293 (array!11370 array!11368 (_ BitVec 32) (_ BitVec 32) V!7731 V!7731 (_ BitVec 64) Int) Unit!7064)

(assert (=> b!230656 (= lt!116181 (lemmaInListMapThenSeekEntryOrOpenFindsIt!293 (_keys!6351 thiss!1504) (_values!4280 thiss!1504) (mask!10191 thiss!1504) (extraKeys!4034 thiss!1504) (zeroValue!4138 thiss!1504) (minValue!4138 thiss!1504) key!932 (defaultEntry!4297 thiss!1504)))))

(assert (=> b!230656 false))

(declare-fun b!230657 () Bool)

(declare-fun res!113439 () Bool)

(declare-fun e!149715 () Bool)

(assert (=> b!230657 (=> (not res!113439) (not e!149715))))

(declare-fun call!21436 () Bool)

(assert (=> b!230657 (= res!113439 call!21436)))

(declare-fun e!149709 () Bool)

(assert (=> b!230657 (= e!149709 e!149715)))

(declare-fun c!38284 () Bool)

(declare-fun bm!21432 () Bool)

(declare-datatypes ((SeekEntryResult!950 0))(
  ( (MissingZero!950 (index!5970 (_ BitVec 32))) (Found!950 (index!5971 (_ BitVec 32))) (Intermediate!950 (undefined!1762 Bool) (index!5972 (_ BitVec 32)) (x!23466 (_ BitVec 32))) (Undefined!950) (MissingVacant!950 (index!5973 (_ BitVec 32))) )
))
(declare-fun lt!116180 () SeekEntryResult!950)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21432 (= call!21436 (inRange!0 (ite c!38284 (index!5970 lt!116180) (index!5973 lt!116180)) (mask!10191 thiss!1504)))))

(declare-fun b!230658 () Bool)

(declare-fun e!149706 () Bool)

(assert (=> b!230658 (= e!149706 tp_is_empty!6063)))

(declare-fun b!230659 () Bool)

(declare-fun res!113441 () Bool)

(assert (=> b!230659 (=> (not res!113441) (not e!149715))))

(assert (=> b!230659 (= res!113441 (= (select (arr!5404 (_keys!6351 thiss!1504)) (index!5970 lt!116180)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!230660 () Bool)

(declare-fun e!149707 () Bool)

(declare-fun e!149713 () Bool)

(assert (=> b!230660 (= e!149707 e!149713)))

(declare-fun res!113437 () Bool)

(assert (=> b!230660 (=> (not res!113437) (not e!149713))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!230660 (= res!113437 (inRange!0 index!297 (mask!10191 thiss!1504)))))

(declare-fun lt!116172 () Unit!7064)

(assert (=> b!230660 (= lt!116172 e!149714)))

(declare-fun c!38285 () Bool)

(declare-datatypes ((tuple2!4534 0))(
  ( (tuple2!4535 (_1!2277 (_ BitVec 64)) (_2!2277 V!7731)) )
))
(declare-datatypes ((List!3480 0))(
  ( (Nil!3477) (Cons!3476 (h!4124 tuple2!4534) (t!8447 List!3480)) )
))
(declare-datatypes ((ListLongMap!3461 0))(
  ( (ListLongMap!3462 (toList!1746 List!3480)) )
))
(declare-fun lt!116173 () ListLongMap!3461)

(declare-fun contains!1612 (ListLongMap!3461 (_ BitVec 64)) Bool)

(assert (=> b!230660 (= c!38285 (contains!1612 lt!116173 key!932))))

(declare-fun getCurrentListMap!1269 (array!11370 array!11368 (_ BitVec 32) (_ BitVec 32) V!7731 V!7731 (_ BitVec 32) Int) ListLongMap!3461)

(assert (=> b!230660 (= lt!116173 (getCurrentListMap!1269 (_keys!6351 thiss!1504) (_values!4280 thiss!1504) (mask!10191 thiss!1504) (extraKeys!4034 thiss!1504) (zeroValue!4138 thiss!1504) (minValue!4138 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4297 thiss!1504)))))

(declare-fun e!149711 () Bool)

(declare-fun array_inv!3553 (array!11370) Bool)

(declare-fun array_inv!3554 (array!11368) Bool)

(assert (=> b!230661 (= e!149719 (and tp!21744 tp_is_empty!6063 (array_inv!3553 (_keys!6351 thiss!1504)) (array_inv!3554 (_values!4280 thiss!1504)) e!149711))))

(declare-fun b!230662 () Bool)

(assert (=> b!230662 (= e!149713 (not true))))

(declare-fun lt!116178 () array!11370)

(declare-fun arrayCountValidKeys!0 (array!11370 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!230662 (= (arrayCountValidKeys!0 lt!116178 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!116171 () Unit!7064)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11370 (_ BitVec 32)) Unit!7064)

(assert (=> b!230662 (= lt!116171 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116178 index!297))))

(declare-fun arrayContainsKey!0 (array!11370 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!230662 (arrayContainsKey!0 lt!116178 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116174 () Unit!7064)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11370 (_ BitVec 64) (_ BitVec 32)) Unit!7064)

(assert (=> b!230662 (= lt!116174 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116178 key!932 index!297))))

(declare-fun v!346 () V!7731)

(declare-fun +!603 (ListLongMap!3461 tuple2!4534) ListLongMap!3461)

(assert (=> b!230662 (= (+!603 lt!116173 (tuple2!4535 key!932 v!346)) (getCurrentListMap!1269 lt!116178 (array!11369 (store (arr!5403 (_values!4280 thiss!1504)) index!297 (ValueCellFull!2688 v!346)) (size!5736 (_values!4280 thiss!1504))) (mask!10191 thiss!1504) (extraKeys!4034 thiss!1504) (zeroValue!4138 thiss!1504) (minValue!4138 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4297 thiss!1504)))))

(declare-fun lt!116177 () Unit!7064)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!62 (array!11370 array!11368 (_ BitVec 32) (_ BitVec 32) V!7731 V!7731 (_ BitVec 32) (_ BitVec 64) V!7731 Int) Unit!7064)

(assert (=> b!230662 (= lt!116177 (lemmaAddValidKeyToArrayThenAddPairToListMap!62 (_keys!6351 thiss!1504) (_values!4280 thiss!1504) (mask!10191 thiss!1504) (extraKeys!4034 thiss!1504) (zeroValue!4138 thiss!1504) (minValue!4138 thiss!1504) index!297 key!932 v!346 (defaultEntry!4297 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11370 (_ BitVec 32)) Bool)

(assert (=> b!230662 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116178 (mask!10191 thiss!1504))))

(declare-fun lt!116176 () Unit!7064)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11370 (_ BitVec 32) (_ BitVec 32)) Unit!7064)

(assert (=> b!230662 (= lt!116176 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6351 thiss!1504) index!297 (mask!10191 thiss!1504)))))

(assert (=> b!230662 (= (arrayCountValidKeys!0 lt!116178 #b00000000000000000000000000000000 (size!5737 (_keys!6351 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6351 thiss!1504) #b00000000000000000000000000000000 (size!5737 (_keys!6351 thiss!1504)))))))

(declare-fun lt!116183 () Unit!7064)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11370 (_ BitVec 32) (_ BitVec 64)) Unit!7064)

(assert (=> b!230662 (= lt!116183 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6351 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3481 0))(
  ( (Nil!3478) (Cons!3477 (h!4125 (_ BitVec 64)) (t!8448 List!3481)) )
))
(declare-fun arrayNoDuplicates!0 (array!11370 (_ BitVec 32) List!3481) Bool)

(assert (=> b!230662 (arrayNoDuplicates!0 lt!116178 #b00000000000000000000000000000000 Nil!3478)))

(assert (=> b!230662 (= lt!116178 (array!11371 (store (arr!5404 (_keys!6351 thiss!1504)) index!297 key!932) (size!5737 (_keys!6351 thiss!1504))))))

(declare-fun lt!116175 () Unit!7064)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11370 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3481) Unit!7064)

(assert (=> b!230662 (= lt!116175 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6351 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3478))))

(declare-fun lt!116184 () Unit!7064)

(declare-fun e!149710 () Unit!7064)

(assert (=> b!230662 (= lt!116184 e!149710)))

(declare-fun c!38282 () Bool)

(assert (=> b!230662 (= c!38282 (arrayContainsKey!0 (_keys!6351 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230663 () Bool)

(declare-fun e!149712 () Bool)

(declare-fun call!21435 () Bool)

(assert (=> b!230663 (= e!149712 (not call!21435))))

(declare-fun b!230664 () Bool)

(declare-fun Unit!7067 () Unit!7064)

(assert (=> b!230664 (= e!149710 Unit!7067)))

(declare-fun b!230665 () Bool)

(assert (=> b!230665 (= e!149715 (not call!21435))))

(declare-fun b!230666 () Bool)

(declare-fun lt!116179 () Unit!7064)

(assert (=> b!230666 (= e!149714 lt!116179)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!308 (array!11370 array!11368 (_ BitVec 32) (_ BitVec 32) V!7731 V!7731 (_ BitVec 64) Int) Unit!7064)

(assert (=> b!230666 (= lt!116179 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!308 (_keys!6351 thiss!1504) (_values!4280 thiss!1504) (mask!10191 thiss!1504) (extraKeys!4034 thiss!1504) (zeroValue!4138 thiss!1504) (minValue!4138 thiss!1504) key!932 (defaultEntry!4297 thiss!1504)))))

(get-info :version)

(assert (=> b!230666 (= c!38284 ((_ is MissingZero!950) lt!116180))))

(assert (=> b!230666 e!149709))

(declare-fun bm!21433 () Bool)

(assert (=> bm!21433 (= call!21435 (arrayContainsKey!0 (_keys!6351 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!230667 () Bool)

(declare-fun res!113440 () Bool)

(assert (=> b!230667 (=> (not res!113440) (not e!149717))))

(assert (=> b!230667 (= res!113440 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!230668 () Bool)

(declare-fun mapRes!10264 () Bool)

(assert (=> b!230668 (= e!149711 (and e!149706 mapRes!10264))))

(declare-fun condMapEmpty!10264 () Bool)

(declare-fun mapDefault!10264 () ValueCell!2688)

(assert (=> b!230668 (= condMapEmpty!10264 (= (arr!5403 (_values!4280 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2688)) mapDefault!10264)))))

(declare-fun mapIsEmpty!10264 () Bool)

(assert (=> mapIsEmpty!10264 mapRes!10264))

(declare-fun b!230669 () Bool)

(declare-fun e!149718 () Bool)

(assert (=> b!230669 (= e!149718 ((_ is Undefined!950) lt!116180))))

(declare-fun b!230670 () Bool)

(declare-fun e!149716 () Bool)

(assert (=> b!230670 (= e!149716 tp_is_empty!6063)))

(declare-fun b!230671 () Bool)

(declare-fun c!38283 () Bool)

(assert (=> b!230671 (= c!38283 ((_ is MissingVacant!950) lt!116180))))

(assert (=> b!230671 (= e!149709 e!149718)))

(declare-fun b!230672 () Bool)

(declare-fun Unit!7068 () Unit!7064)

(assert (=> b!230672 (= e!149710 Unit!7068)))

(declare-fun lt!116182 () Unit!7064)

(declare-fun lemmaArrayContainsKeyThenInListMap!126 (array!11370 array!11368 (_ BitVec 32) (_ BitVec 32) V!7731 V!7731 (_ BitVec 64) (_ BitVec 32) Int) Unit!7064)

(assert (=> b!230672 (= lt!116182 (lemmaArrayContainsKeyThenInListMap!126 (_keys!6351 thiss!1504) (_values!4280 thiss!1504) (mask!10191 thiss!1504) (extraKeys!4034 thiss!1504) (zeroValue!4138 thiss!1504) (minValue!4138 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4297 thiss!1504)))))

(assert (=> b!230672 false))

(declare-fun mapNonEmpty!10264 () Bool)

(declare-fun tp!21745 () Bool)

(assert (=> mapNonEmpty!10264 (= mapRes!10264 (and tp!21745 e!149716))))

(declare-fun mapKey!10264 () (_ BitVec 32))

(declare-fun mapRest!10264 () (Array (_ BitVec 32) ValueCell!2688))

(declare-fun mapValue!10264 () ValueCell!2688)

(assert (=> mapNonEmpty!10264 (= (arr!5403 (_values!4280 thiss!1504)) (store mapRest!10264 mapKey!10264 mapValue!10264))))

(declare-fun b!230673 () Bool)

(assert (=> b!230673 (= e!149717 e!149707)))

(declare-fun res!113436 () Bool)

(assert (=> b!230673 (=> (not res!113436) (not e!149707))))

(assert (=> b!230673 (= res!113436 (or (= lt!116180 (MissingZero!950 index!297)) (= lt!116180 (MissingVacant!950 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11370 (_ BitVec 32)) SeekEntryResult!950)

(assert (=> b!230673 (= lt!116180 (seekEntryOrOpen!0 key!932 (_keys!6351 thiss!1504) (mask!10191 thiss!1504)))))

(declare-fun b!230674 () Bool)

(declare-fun res!113438 () Bool)

(assert (=> b!230674 (= res!113438 (= (select (arr!5404 (_keys!6351 thiss!1504)) (index!5973 lt!116180)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!230674 (=> (not res!113438) (not e!149712))))

(declare-fun b!230675 () Bool)

(assert (=> b!230675 (= e!149718 e!149712)))

(declare-fun res!113443 () Bool)

(assert (=> b!230675 (= res!113443 call!21436)))

(assert (=> b!230675 (=> (not res!113443) (not e!149712))))

(assert (= (and start!22146 res!113442) b!230667))

(assert (= (and b!230667 res!113440) b!230673))

(assert (= (and b!230673 res!113436) b!230660))

(assert (= (and b!230660 c!38285) b!230656))

(assert (= (and b!230660 (not c!38285)) b!230666))

(assert (= (and b!230666 c!38284) b!230657))

(assert (= (and b!230666 (not c!38284)) b!230671))

(assert (= (and b!230657 res!113439) b!230659))

(assert (= (and b!230659 res!113441) b!230665))

(assert (= (and b!230671 c!38283) b!230675))

(assert (= (and b!230671 (not c!38283)) b!230669))

(assert (= (and b!230675 res!113443) b!230674))

(assert (= (and b!230674 res!113438) b!230663))

(assert (= (or b!230657 b!230675) bm!21432))

(assert (= (or b!230665 b!230663) bm!21433))

(assert (= (and b!230660 res!113437) b!230662))

(assert (= (and b!230662 c!38282) b!230672))

(assert (= (and b!230662 (not c!38282)) b!230664))

(assert (= (and b!230668 condMapEmpty!10264) mapIsEmpty!10264))

(assert (= (and b!230668 (not condMapEmpty!10264)) mapNonEmpty!10264))

(assert (= (and mapNonEmpty!10264 ((_ is ValueCellFull!2688) mapValue!10264)) b!230670))

(assert (= (and b!230668 ((_ is ValueCellFull!2688) mapDefault!10264)) b!230658))

(assert (= b!230661 b!230668))

(assert (= start!22146 b!230661))

(declare-fun m!252045 () Bool)

(assert (=> bm!21432 m!252045))

(declare-fun m!252047 () Bool)

(assert (=> mapNonEmpty!10264 m!252047))

(declare-fun m!252049 () Bool)

(assert (=> b!230674 m!252049))

(declare-fun m!252051 () Bool)

(assert (=> b!230662 m!252051))

(declare-fun m!252053 () Bool)

(assert (=> b!230662 m!252053))

(declare-fun m!252055 () Bool)

(assert (=> b!230662 m!252055))

(declare-fun m!252057 () Bool)

(assert (=> b!230662 m!252057))

(declare-fun m!252059 () Bool)

(assert (=> b!230662 m!252059))

(declare-fun m!252061 () Bool)

(assert (=> b!230662 m!252061))

(declare-fun m!252063 () Bool)

(assert (=> b!230662 m!252063))

(declare-fun m!252065 () Bool)

(assert (=> b!230662 m!252065))

(declare-fun m!252067 () Bool)

(assert (=> b!230662 m!252067))

(declare-fun m!252069 () Bool)

(assert (=> b!230662 m!252069))

(declare-fun m!252071 () Bool)

(assert (=> b!230662 m!252071))

(declare-fun m!252073 () Bool)

(assert (=> b!230662 m!252073))

(declare-fun m!252075 () Bool)

(assert (=> b!230662 m!252075))

(declare-fun m!252077 () Bool)

(assert (=> b!230662 m!252077))

(declare-fun m!252079 () Bool)

(assert (=> b!230662 m!252079))

(declare-fun m!252081 () Bool)

(assert (=> b!230662 m!252081))

(declare-fun m!252083 () Bool)

(assert (=> b!230662 m!252083))

(assert (=> bm!21433 m!252051))

(declare-fun m!252085 () Bool)

(assert (=> b!230661 m!252085))

(declare-fun m!252087 () Bool)

(assert (=> b!230661 m!252087))

(declare-fun m!252089 () Bool)

(assert (=> b!230666 m!252089))

(declare-fun m!252091 () Bool)

(assert (=> b!230673 m!252091))

(declare-fun m!252093 () Bool)

(assert (=> b!230656 m!252093))

(declare-fun m!252095 () Bool)

(assert (=> b!230659 m!252095))

(declare-fun m!252097 () Bool)

(assert (=> start!22146 m!252097))

(declare-fun m!252099 () Bool)

(assert (=> b!230660 m!252099))

(declare-fun m!252101 () Bool)

(assert (=> b!230660 m!252101))

(declare-fun m!252103 () Bool)

(assert (=> b!230660 m!252103))

(declare-fun m!252105 () Bool)

(assert (=> b!230672 m!252105))

(check-sat (not b!230662) (not bm!21433) (not bm!21432) (not b!230672) tp_is_empty!6063 (not b!230656) (not b_next!6201) (not b!230666) (not b!230673) (not start!22146) (not b!230660) b_and!13117 (not mapNonEmpty!10264) (not b!230661))
(check-sat b_and!13117 (not b_next!6201))

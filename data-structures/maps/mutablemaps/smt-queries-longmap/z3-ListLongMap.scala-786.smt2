; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18740 () Bool)

(assert start!18740)

(declare-fun b!185040 () Bool)

(declare-fun b_free!4557 () Bool)

(declare-fun b_next!4557 () Bool)

(assert (=> b!185040 (= b_free!4557 (not b_next!4557))))

(declare-fun tp!16460 () Bool)

(declare-fun b_and!11171 () Bool)

(assert (=> b!185040 (= tp!16460 b_and!11171)))

(declare-fun b!185032 () Bool)

(declare-fun e!121782 () Bool)

(declare-fun e!121787 () Bool)

(assert (=> b!185032 (= e!121782 e!121787)))

(declare-fun res!87537 () Bool)

(assert (=> b!185032 (=> (not res!87537) (not e!121787))))

(declare-datatypes ((SeekEntryResult!639 0))(
  ( (MissingZero!639 (index!4726 (_ BitVec 32))) (Found!639 (index!4727 (_ BitVec 32))) (Intermediate!639 (undefined!1451 Bool) (index!4728 (_ BitVec 32)) (x!20115 (_ BitVec 32))) (Undefined!639) (MissingVacant!639 (index!4729 (_ BitVec 32))) )
))
(declare-fun lt!91564 () SeekEntryResult!639)

(get-info :version)

(assert (=> b!185032 (= res!87537 (and (not ((_ is Undefined!639) lt!91564)) (not ((_ is MissingVacant!639) lt!91564)) (not ((_ is MissingZero!639) lt!91564)) ((_ is Found!639) lt!91564)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((V!5419 0))(
  ( (V!5420 (val!2209 Int)) )
))
(declare-datatypes ((ValueCell!1821 0))(
  ( (ValueCellFull!1821 (v!4113 V!5419)) (EmptyCell!1821) )
))
(declare-datatypes ((array!7860 0))(
  ( (array!7861 (arr!3712 (Array (_ BitVec 32) (_ BitVec 64))) (size!4028 (_ BitVec 32))) )
))
(declare-datatypes ((array!7862 0))(
  ( (array!7863 (arr!3713 (Array (_ BitVec 32) ValueCell!1821)) (size!4029 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2550 0))(
  ( (LongMapFixedSize!2551 (defaultEntry!3774 Int) (mask!8872 (_ BitVec 32)) (extraKeys!3511 (_ BitVec 32)) (zeroValue!3615 V!5419) (minValue!3615 V!5419) (_size!1324 (_ BitVec 32)) (_keys!5709 array!7860) (_values!3757 array!7862) (_vacant!1324 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2550)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7860 (_ BitVec 32)) SeekEntryResult!639)

(assert (=> b!185032 (= lt!91564 (seekEntryOrOpen!0 key!828 (_keys!5709 thiss!1248) (mask!8872 thiss!1248)))))

(declare-fun mapIsEmpty!7446 () Bool)

(declare-fun mapRes!7446 () Bool)

(assert (=> mapIsEmpty!7446 mapRes!7446))

(declare-fun b!185033 () Bool)

(declare-fun res!87534 () Bool)

(assert (=> b!185033 (=> (not res!87534) (not e!121787))))

(declare-datatypes ((tuple2!3436 0))(
  ( (tuple2!3437 (_1!1728 (_ BitVec 64)) (_2!1728 V!5419)) )
))
(declare-datatypes ((List!2372 0))(
  ( (Nil!2369) (Cons!2368 (h!3001 tuple2!3436) (t!7258 List!2372)) )
))
(declare-datatypes ((ListLongMap!2367 0))(
  ( (ListLongMap!2368 (toList!1199 List!2372)) )
))
(declare-fun contains!1287 (ListLongMap!2367 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!842 (array!7860 array!7862 (_ BitVec 32) (_ BitVec 32) V!5419 V!5419 (_ BitVec 32) Int) ListLongMap!2367)

(assert (=> b!185033 (= res!87534 (not (contains!1287 (getCurrentListMap!842 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248)) key!828)))))

(declare-fun b!185034 () Bool)

(declare-fun res!87538 () Bool)

(assert (=> b!185034 (=> (not res!87538) (not e!121787))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!185034 (= res!87538 (validMask!0 (mask!8872 thiss!1248)))))

(declare-fun b!185035 () Bool)

(declare-fun e!121783 () Bool)

(declare-fun tp_is_empty!4329 () Bool)

(assert (=> b!185035 (= e!121783 tp_is_empty!4329)))

(declare-fun b!185036 () Bool)

(declare-fun e!121785 () Bool)

(assert (=> b!185036 (= e!121785 tp_is_empty!4329)))

(declare-fun b!185037 () Bool)

(declare-fun res!87536 () Bool)

(assert (=> b!185037 (=> (not res!87536) (not e!121782))))

(assert (=> b!185037 (= res!87536 (not (= key!828 (bvneg key!828))))))

(declare-fun b!185038 () Bool)

(declare-fun res!87539 () Bool)

(assert (=> b!185038 (=> (not res!87539) (not e!121787))))

(assert (=> b!185038 (= res!87539 (and (= (size!4029 (_values!3757 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8872 thiss!1248))) (= (size!4028 (_keys!5709 thiss!1248)) (size!4029 (_values!3757 thiss!1248))) (bvsge (mask!8872 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3511 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3511 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!185039 () Bool)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7860 (_ BitVec 32)) Bool)

(assert (=> b!185039 (= e!121787 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5709 thiss!1248) (mask!8872 thiss!1248))))))

(declare-fun res!87535 () Bool)

(assert (=> start!18740 (=> (not res!87535) (not e!121782))))

(declare-fun valid!1045 (LongMapFixedSize!2550) Bool)

(assert (=> start!18740 (= res!87535 (valid!1045 thiss!1248))))

(assert (=> start!18740 e!121782))

(declare-fun e!121788 () Bool)

(assert (=> start!18740 e!121788))

(assert (=> start!18740 true))

(declare-fun e!121786 () Bool)

(declare-fun array_inv!2391 (array!7860) Bool)

(declare-fun array_inv!2392 (array!7862) Bool)

(assert (=> b!185040 (= e!121788 (and tp!16460 tp_is_empty!4329 (array_inv!2391 (_keys!5709 thiss!1248)) (array_inv!2392 (_values!3757 thiss!1248)) e!121786))))

(declare-fun mapNonEmpty!7446 () Bool)

(declare-fun tp!16461 () Bool)

(assert (=> mapNonEmpty!7446 (= mapRes!7446 (and tp!16461 e!121783))))

(declare-fun mapValue!7446 () ValueCell!1821)

(declare-fun mapRest!7446 () (Array (_ BitVec 32) ValueCell!1821))

(declare-fun mapKey!7446 () (_ BitVec 32))

(assert (=> mapNonEmpty!7446 (= (arr!3713 (_values!3757 thiss!1248)) (store mapRest!7446 mapKey!7446 mapValue!7446))))

(declare-fun b!185041 () Bool)

(assert (=> b!185041 (= e!121786 (and e!121785 mapRes!7446))))

(declare-fun condMapEmpty!7446 () Bool)

(declare-fun mapDefault!7446 () ValueCell!1821)

(assert (=> b!185041 (= condMapEmpty!7446 (= (arr!3713 (_values!3757 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1821)) mapDefault!7446)))))

(assert (= (and start!18740 res!87535) b!185037))

(assert (= (and b!185037 res!87536) b!185032))

(assert (= (and b!185032 res!87537) b!185033))

(assert (= (and b!185033 res!87534) b!185034))

(assert (= (and b!185034 res!87538) b!185038))

(assert (= (and b!185038 res!87539) b!185039))

(assert (= (and b!185041 condMapEmpty!7446) mapIsEmpty!7446))

(assert (= (and b!185041 (not condMapEmpty!7446)) mapNonEmpty!7446))

(assert (= (and mapNonEmpty!7446 ((_ is ValueCellFull!1821) mapValue!7446)) b!185035))

(assert (= (and b!185041 ((_ is ValueCellFull!1821) mapDefault!7446)) b!185036))

(assert (= b!185040 b!185041))

(assert (= start!18740 b!185040))

(declare-fun m!212389 () Bool)

(assert (=> start!18740 m!212389))

(declare-fun m!212391 () Bool)

(assert (=> b!185039 m!212391))

(declare-fun m!212393 () Bool)

(assert (=> b!185032 m!212393))

(declare-fun m!212395 () Bool)

(assert (=> b!185033 m!212395))

(assert (=> b!185033 m!212395))

(declare-fun m!212397 () Bool)

(assert (=> b!185033 m!212397))

(declare-fun m!212399 () Bool)

(assert (=> b!185034 m!212399))

(declare-fun m!212401 () Bool)

(assert (=> mapNonEmpty!7446 m!212401))

(declare-fun m!212403 () Bool)

(assert (=> b!185040 m!212403))

(declare-fun m!212405 () Bool)

(assert (=> b!185040 m!212405))

(check-sat (not start!18740) (not b!185033) (not b!185034) (not b!185040) (not mapNonEmpty!7446) (not b_next!4557) (not b!185039) b_and!11171 (not b!185032) tp_is_empty!4329)
(check-sat b_and!11171 (not b_next!4557))
(get-model)

(declare-fun b!185080 () Bool)

(declare-fun e!121817 () Bool)

(declare-fun e!121818 () Bool)

(assert (=> b!185080 (= e!121817 e!121818)))

(declare-fun lt!91574 () (_ BitVec 64))

(assert (=> b!185080 (= lt!91574 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5581 0))(
  ( (Unit!5582) )
))
(declare-fun lt!91575 () Unit!5581)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7860 (_ BitVec 64) (_ BitVec 32)) Unit!5581)

(assert (=> b!185080 (= lt!91575 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5709 thiss!1248) lt!91574 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7860 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!185080 (arrayContainsKey!0 (_keys!5709 thiss!1248) lt!91574 #b00000000000000000000000000000000)))

(declare-fun lt!91576 () Unit!5581)

(assert (=> b!185080 (= lt!91576 lt!91575)))

(declare-fun res!87563 () Bool)

(assert (=> b!185080 (= res!87563 (= (seekEntryOrOpen!0 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000) (_keys!5709 thiss!1248) (mask!8872 thiss!1248)) (Found!639 #b00000000000000000000000000000000)))))

(assert (=> b!185080 (=> (not res!87563) (not e!121818))))

(declare-fun b!185081 () Bool)

(declare-fun call!18662 () Bool)

(assert (=> b!185081 (= e!121818 call!18662)))

(declare-fun d!54995 () Bool)

(declare-fun res!87562 () Bool)

(declare-fun e!121816 () Bool)

(assert (=> d!54995 (=> res!87562 e!121816)))

(assert (=> d!54995 (= res!87562 (bvsge #b00000000000000000000000000000000 (size!4028 (_keys!5709 thiss!1248))))))

(assert (=> d!54995 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5709 thiss!1248) (mask!8872 thiss!1248)) e!121816)))

(declare-fun b!185082 () Bool)

(assert (=> b!185082 (= e!121817 call!18662)))

(declare-fun bm!18659 () Bool)

(assert (=> bm!18659 (= call!18662 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5709 thiss!1248) (mask!8872 thiss!1248)))))

(declare-fun b!185083 () Bool)

(assert (=> b!185083 (= e!121816 e!121817)))

(declare-fun c!33201 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!185083 (= c!33201 (validKeyInArray!0 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!54995 (not res!87562)) b!185083))

(assert (= (and b!185083 c!33201) b!185080))

(assert (= (and b!185083 (not c!33201)) b!185082))

(assert (= (and b!185080 res!87563) b!185081))

(assert (= (or b!185081 b!185082) bm!18659))

(declare-fun m!212425 () Bool)

(assert (=> b!185080 m!212425))

(declare-fun m!212427 () Bool)

(assert (=> b!185080 m!212427))

(declare-fun m!212429 () Bool)

(assert (=> b!185080 m!212429))

(assert (=> b!185080 m!212425))

(declare-fun m!212431 () Bool)

(assert (=> b!185080 m!212431))

(declare-fun m!212433 () Bool)

(assert (=> bm!18659 m!212433))

(assert (=> b!185083 m!212425))

(assert (=> b!185083 m!212425))

(declare-fun m!212435 () Bool)

(assert (=> b!185083 m!212435))

(assert (=> b!185039 d!54995))

(declare-fun d!54997 () Bool)

(assert (=> d!54997 (= (validMask!0 (mask!8872 thiss!1248)) (and (or (= (mask!8872 thiss!1248) #b00000000000000000000000000000111) (= (mask!8872 thiss!1248) #b00000000000000000000000000001111) (= (mask!8872 thiss!1248) #b00000000000000000000000000011111) (= (mask!8872 thiss!1248) #b00000000000000000000000000111111) (= (mask!8872 thiss!1248) #b00000000000000000000000001111111) (= (mask!8872 thiss!1248) #b00000000000000000000000011111111) (= (mask!8872 thiss!1248) #b00000000000000000000000111111111) (= (mask!8872 thiss!1248) #b00000000000000000000001111111111) (= (mask!8872 thiss!1248) #b00000000000000000000011111111111) (= (mask!8872 thiss!1248) #b00000000000000000000111111111111) (= (mask!8872 thiss!1248) #b00000000000000000001111111111111) (= (mask!8872 thiss!1248) #b00000000000000000011111111111111) (= (mask!8872 thiss!1248) #b00000000000000000111111111111111) (= (mask!8872 thiss!1248) #b00000000000000001111111111111111) (= (mask!8872 thiss!1248) #b00000000000000011111111111111111) (= (mask!8872 thiss!1248) #b00000000000000111111111111111111) (= (mask!8872 thiss!1248) #b00000000000001111111111111111111) (= (mask!8872 thiss!1248) #b00000000000011111111111111111111) (= (mask!8872 thiss!1248) #b00000000000111111111111111111111) (= (mask!8872 thiss!1248) #b00000000001111111111111111111111) (= (mask!8872 thiss!1248) #b00000000011111111111111111111111) (= (mask!8872 thiss!1248) #b00000000111111111111111111111111) (= (mask!8872 thiss!1248) #b00000001111111111111111111111111) (= (mask!8872 thiss!1248) #b00000011111111111111111111111111) (= (mask!8872 thiss!1248) #b00000111111111111111111111111111) (= (mask!8872 thiss!1248) #b00001111111111111111111111111111) (= (mask!8872 thiss!1248) #b00011111111111111111111111111111) (= (mask!8872 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8872 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!185034 d!54997))

(declare-fun d!54999 () Bool)

(declare-fun res!87570 () Bool)

(declare-fun e!121821 () Bool)

(assert (=> d!54999 (=> (not res!87570) (not e!121821))))

(declare-fun simpleValid!179 (LongMapFixedSize!2550) Bool)

(assert (=> d!54999 (= res!87570 (simpleValid!179 thiss!1248))))

(assert (=> d!54999 (= (valid!1045 thiss!1248) e!121821)))

(declare-fun b!185090 () Bool)

(declare-fun res!87571 () Bool)

(assert (=> b!185090 (=> (not res!87571) (not e!121821))))

(declare-fun arrayCountValidKeys!0 (array!7860 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!185090 (= res!87571 (= (arrayCountValidKeys!0 (_keys!5709 thiss!1248) #b00000000000000000000000000000000 (size!4028 (_keys!5709 thiss!1248))) (_size!1324 thiss!1248)))))

(declare-fun b!185091 () Bool)

(declare-fun res!87572 () Bool)

(assert (=> b!185091 (=> (not res!87572) (not e!121821))))

(assert (=> b!185091 (= res!87572 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5709 thiss!1248) (mask!8872 thiss!1248)))))

(declare-fun b!185092 () Bool)

(declare-datatypes ((List!2374 0))(
  ( (Nil!2371) (Cons!2370 (h!3003 (_ BitVec 64)) (t!7262 List!2374)) )
))
(declare-fun arrayNoDuplicates!0 (array!7860 (_ BitVec 32) List!2374) Bool)

(assert (=> b!185092 (= e!121821 (arrayNoDuplicates!0 (_keys!5709 thiss!1248) #b00000000000000000000000000000000 Nil!2371))))

(assert (= (and d!54999 res!87570) b!185090))

(assert (= (and b!185090 res!87571) b!185091))

(assert (= (and b!185091 res!87572) b!185092))

(declare-fun m!212437 () Bool)

(assert (=> d!54999 m!212437))

(declare-fun m!212439 () Bool)

(assert (=> b!185090 m!212439))

(assert (=> b!185091 m!212391))

(declare-fun m!212441 () Bool)

(assert (=> b!185092 m!212441))

(assert (=> start!18740 d!54999))

(declare-fun d!55001 () Bool)

(declare-fun e!121826 () Bool)

(assert (=> d!55001 e!121826))

(declare-fun res!87575 () Bool)

(assert (=> d!55001 (=> res!87575 e!121826)))

(declare-fun lt!91588 () Bool)

(assert (=> d!55001 (= res!87575 (not lt!91588))))

(declare-fun lt!91586 () Bool)

(assert (=> d!55001 (= lt!91588 lt!91586)))

(declare-fun lt!91585 () Unit!5581)

(declare-fun e!121827 () Unit!5581)

(assert (=> d!55001 (= lt!91585 e!121827)))

(declare-fun c!33204 () Bool)

(assert (=> d!55001 (= c!33204 lt!91586)))

(declare-fun containsKey!224 (List!2372 (_ BitVec 64)) Bool)

(assert (=> d!55001 (= lt!91586 (containsKey!224 (toList!1199 (getCurrentListMap!842 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248))) key!828))))

(assert (=> d!55001 (= (contains!1287 (getCurrentListMap!842 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248)) key!828) lt!91588)))

(declare-fun b!185099 () Bool)

(declare-fun lt!91587 () Unit!5581)

(assert (=> b!185099 (= e!121827 lt!91587)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!173 (List!2372 (_ BitVec 64)) Unit!5581)

(assert (=> b!185099 (= lt!91587 (lemmaContainsKeyImpliesGetValueByKeyDefined!173 (toList!1199 (getCurrentListMap!842 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248))) key!828))))

(declare-datatypes ((Option!226 0))(
  ( (Some!225 (v!4115 V!5419)) (None!224) )
))
(declare-fun isDefined!174 (Option!226) Bool)

(declare-fun getValueByKey!220 (List!2372 (_ BitVec 64)) Option!226)

(assert (=> b!185099 (isDefined!174 (getValueByKey!220 (toList!1199 (getCurrentListMap!842 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248))) key!828))))

(declare-fun b!185100 () Bool)

(declare-fun Unit!5583 () Unit!5581)

(assert (=> b!185100 (= e!121827 Unit!5583)))

(declare-fun b!185101 () Bool)

(assert (=> b!185101 (= e!121826 (isDefined!174 (getValueByKey!220 (toList!1199 (getCurrentListMap!842 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248))) key!828)))))

(assert (= (and d!55001 c!33204) b!185099))

(assert (= (and d!55001 (not c!33204)) b!185100))

(assert (= (and d!55001 (not res!87575)) b!185101))

(declare-fun m!212443 () Bool)

(assert (=> d!55001 m!212443))

(declare-fun m!212445 () Bool)

(assert (=> b!185099 m!212445))

(declare-fun m!212447 () Bool)

(assert (=> b!185099 m!212447))

(assert (=> b!185099 m!212447))

(declare-fun m!212449 () Bool)

(assert (=> b!185099 m!212449))

(assert (=> b!185101 m!212447))

(assert (=> b!185101 m!212447))

(assert (=> b!185101 m!212449))

(assert (=> b!185033 d!55001))

(declare-fun b!185144 () Bool)

(declare-fun e!121858 () Bool)

(declare-fun lt!91637 () ListLongMap!2367)

(declare-fun apply!164 (ListLongMap!2367 (_ BitVec 64)) V!5419)

(assert (=> b!185144 (= e!121858 (= (apply!164 lt!91637 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3615 thiss!1248)))))

(declare-fun b!185145 () Bool)

(declare-fun res!87601 () Bool)

(declare-fun e!121861 () Bool)

(assert (=> b!185145 (=> (not res!87601) (not e!121861))))

(declare-fun e!121854 () Bool)

(assert (=> b!185145 (= res!87601 e!121854)))

(declare-fun res!87596 () Bool)

(assert (=> b!185145 (=> res!87596 e!121854)))

(declare-fun e!121859 () Bool)

(assert (=> b!185145 (= res!87596 (not e!121859))))

(declare-fun res!87599 () Bool)

(assert (=> b!185145 (=> (not res!87599) (not e!121859))))

(assert (=> b!185145 (= res!87599 (bvslt #b00000000000000000000000000000000 (size!4028 (_keys!5709 thiss!1248))))))

(declare-fun b!185146 () Bool)

(declare-fun e!121862 () ListLongMap!2367)

(declare-fun call!18678 () ListLongMap!2367)

(declare-fun +!279 (ListLongMap!2367 tuple2!3436) ListLongMap!2367)

(assert (=> b!185146 (= e!121862 (+!279 call!18678 (tuple2!3437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3615 thiss!1248))))))

(declare-fun b!185147 () Bool)

(declare-fun e!121863 () Unit!5581)

(declare-fun lt!91653 () Unit!5581)

(assert (=> b!185147 (= e!121863 lt!91653)))

(declare-fun lt!91642 () ListLongMap!2367)

(declare-fun getCurrentListMapNoExtraKeys!194 (array!7860 array!7862 (_ BitVec 32) (_ BitVec 32) V!5419 V!5419 (_ BitVec 32) Int) ListLongMap!2367)

(assert (=> b!185147 (= lt!91642 (getCurrentListMapNoExtraKeys!194 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248)))))

(declare-fun lt!91649 () (_ BitVec 64))

(assert (=> b!185147 (= lt!91649 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91646 () (_ BitVec 64))

(assert (=> b!185147 (= lt!91646 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91639 () Unit!5581)

(declare-fun addStillContains!140 (ListLongMap!2367 (_ BitVec 64) V!5419 (_ BitVec 64)) Unit!5581)

(assert (=> b!185147 (= lt!91639 (addStillContains!140 lt!91642 lt!91649 (zeroValue!3615 thiss!1248) lt!91646))))

(assert (=> b!185147 (contains!1287 (+!279 lt!91642 (tuple2!3437 lt!91649 (zeroValue!3615 thiss!1248))) lt!91646)))

(declare-fun lt!91652 () Unit!5581)

(assert (=> b!185147 (= lt!91652 lt!91639)))

(declare-fun lt!91645 () ListLongMap!2367)

(assert (=> b!185147 (= lt!91645 (getCurrentListMapNoExtraKeys!194 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248)))))

(declare-fun lt!91636 () (_ BitVec 64))

(assert (=> b!185147 (= lt!91636 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91634 () (_ BitVec 64))

(assert (=> b!185147 (= lt!91634 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91654 () Unit!5581)

(declare-fun addApplyDifferent!140 (ListLongMap!2367 (_ BitVec 64) V!5419 (_ BitVec 64)) Unit!5581)

(assert (=> b!185147 (= lt!91654 (addApplyDifferent!140 lt!91645 lt!91636 (minValue!3615 thiss!1248) lt!91634))))

(assert (=> b!185147 (= (apply!164 (+!279 lt!91645 (tuple2!3437 lt!91636 (minValue!3615 thiss!1248))) lt!91634) (apply!164 lt!91645 lt!91634))))

(declare-fun lt!91640 () Unit!5581)

(assert (=> b!185147 (= lt!91640 lt!91654)))

(declare-fun lt!91651 () ListLongMap!2367)

(assert (=> b!185147 (= lt!91651 (getCurrentListMapNoExtraKeys!194 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248)))))

(declare-fun lt!91650 () (_ BitVec 64))

(assert (=> b!185147 (= lt!91650 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91635 () (_ BitVec 64))

(assert (=> b!185147 (= lt!91635 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91643 () Unit!5581)

(assert (=> b!185147 (= lt!91643 (addApplyDifferent!140 lt!91651 lt!91650 (zeroValue!3615 thiss!1248) lt!91635))))

(assert (=> b!185147 (= (apply!164 (+!279 lt!91651 (tuple2!3437 lt!91650 (zeroValue!3615 thiss!1248))) lt!91635) (apply!164 lt!91651 lt!91635))))

(declare-fun lt!91644 () Unit!5581)

(assert (=> b!185147 (= lt!91644 lt!91643)))

(declare-fun lt!91633 () ListLongMap!2367)

(assert (=> b!185147 (= lt!91633 (getCurrentListMapNoExtraKeys!194 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248)))))

(declare-fun lt!91641 () (_ BitVec 64))

(assert (=> b!185147 (= lt!91641 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91648 () (_ BitVec 64))

(assert (=> b!185147 (= lt!91648 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185147 (= lt!91653 (addApplyDifferent!140 lt!91633 lt!91641 (minValue!3615 thiss!1248) lt!91648))))

(assert (=> b!185147 (= (apply!164 (+!279 lt!91633 (tuple2!3437 lt!91641 (minValue!3615 thiss!1248))) lt!91648) (apply!164 lt!91633 lt!91648))))

(declare-fun bm!18674 () Bool)

(declare-fun call!18682 () Bool)

(assert (=> bm!18674 (= call!18682 (contains!1287 lt!91637 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!185149 () Bool)

(declare-fun e!121855 () Bool)

(declare-fun call!18681 () Bool)

(assert (=> b!185149 (= e!121855 (not call!18681))))

(declare-fun b!185150 () Bool)

(assert (=> b!185150 (= e!121861 e!121855)))

(declare-fun c!33221 () Bool)

(assert (=> b!185150 (= c!33221 (not (= (bvand (extraKeys!3511 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!185151 () Bool)

(declare-fun e!121860 () ListLongMap!2367)

(declare-fun call!18679 () ListLongMap!2367)

(assert (=> b!185151 (= e!121860 call!18679)))

(declare-fun b!185152 () Bool)

(declare-fun Unit!5584 () Unit!5581)

(assert (=> b!185152 (= e!121863 Unit!5584)))

(declare-fun b!185153 () Bool)

(declare-fun e!121856 () Bool)

(assert (=> b!185153 (= e!121856 (validKeyInArray!0 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!185154 () Bool)

(declare-fun c!33218 () Bool)

(assert (=> b!185154 (= c!33218 (and (not (= (bvand (extraKeys!3511 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3511 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!121857 () ListLongMap!2367)

(assert (=> b!185154 (= e!121857 e!121860)))

(declare-fun bm!18675 () Bool)

(assert (=> bm!18675 (= call!18679 call!18678)))

(declare-fun b!185155 () Bool)

(declare-fun res!87597 () Bool)

(assert (=> b!185155 (=> (not res!87597) (not e!121861))))

(declare-fun e!121865 () Bool)

(assert (=> b!185155 (= res!87597 e!121865)))

(declare-fun c!33217 () Bool)

(assert (=> b!185155 (= c!33217 (not (= (bvand (extraKeys!3511 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!185156 () Bool)

(declare-fun call!18677 () ListLongMap!2367)

(assert (=> b!185156 (= e!121860 call!18677)))

(declare-fun b!185157 () Bool)

(declare-fun e!121864 () Bool)

(declare-fun get!2136 (ValueCell!1821 V!5419) V!5419)

(declare-fun dynLambda!502 (Int (_ BitVec 64)) V!5419)

(assert (=> b!185157 (= e!121864 (= (apply!164 lt!91637 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000)) (get!2136 (select (arr!3713 (_values!3757 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!502 (defaultEntry!3774 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!185157 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4029 (_values!3757 thiss!1248))))))

(assert (=> b!185157 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4028 (_keys!5709 thiss!1248))))))

(declare-fun bm!18676 () Bool)

(declare-fun call!18680 () ListLongMap!2367)

(assert (=> bm!18676 (= call!18677 call!18680)))

(declare-fun b!185158 () Bool)

(assert (=> b!185158 (= e!121859 (validKeyInArray!0 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun call!18683 () ListLongMap!2367)

(declare-fun bm!18677 () Bool)

(declare-fun c!33222 () Bool)

(declare-fun c!33219 () Bool)

(assert (=> bm!18677 (= call!18678 (+!279 (ite c!33222 call!18683 (ite c!33219 call!18680 call!18677)) (ite (or c!33222 c!33219) (tuple2!3437 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3615 thiss!1248)) (tuple2!3437 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3615 thiss!1248)))))))

(declare-fun bm!18678 () Bool)

(assert (=> bm!18678 (= call!18681 (contains!1287 lt!91637 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!55003 () Bool)

(assert (=> d!55003 e!121861))

(declare-fun res!87600 () Bool)

(assert (=> d!55003 (=> (not res!87600) (not e!121861))))

(assert (=> d!55003 (= res!87600 (or (bvsge #b00000000000000000000000000000000 (size!4028 (_keys!5709 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4028 (_keys!5709 thiss!1248))))))))

(declare-fun lt!91638 () ListLongMap!2367)

(assert (=> d!55003 (= lt!91637 lt!91638)))

(declare-fun lt!91647 () Unit!5581)

(assert (=> d!55003 (= lt!91647 e!121863)))

(declare-fun c!33220 () Bool)

(assert (=> d!55003 (= c!33220 e!121856)))

(declare-fun res!87594 () Bool)

(assert (=> d!55003 (=> (not res!87594) (not e!121856))))

(assert (=> d!55003 (= res!87594 (bvslt #b00000000000000000000000000000000 (size!4028 (_keys!5709 thiss!1248))))))

(assert (=> d!55003 (= lt!91638 e!121862)))

(assert (=> d!55003 (= c!33222 (and (not (= (bvand (extraKeys!3511 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3511 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55003 (validMask!0 (mask!8872 thiss!1248))))

(assert (=> d!55003 (= (getCurrentListMap!842 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248)) lt!91637)))

(declare-fun b!185148 () Bool)

(assert (=> b!185148 (= e!121865 (not call!18682))))

(declare-fun b!185159 () Bool)

(declare-fun e!121866 () Bool)

(assert (=> b!185159 (= e!121866 (= (apply!164 lt!91637 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3615 thiss!1248)))))

(declare-fun bm!18679 () Bool)

(assert (=> bm!18679 (= call!18680 call!18683)))

(declare-fun b!185160 () Bool)

(assert (=> b!185160 (= e!121854 e!121864)))

(declare-fun res!87595 () Bool)

(assert (=> b!185160 (=> (not res!87595) (not e!121864))))

(assert (=> b!185160 (= res!87595 (contains!1287 lt!91637 (select (arr!3712 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!185160 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4028 (_keys!5709 thiss!1248))))))

(declare-fun b!185161 () Bool)

(assert (=> b!185161 (= e!121862 e!121857)))

(assert (=> b!185161 (= c!33219 (and (not (= (bvand (extraKeys!3511 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3511 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!185162 () Bool)

(assert (=> b!185162 (= e!121857 call!18679)))

(declare-fun b!185163 () Bool)

(assert (=> b!185163 (= e!121855 e!121858)))

(declare-fun res!87602 () Bool)

(assert (=> b!185163 (= res!87602 call!18681)))

(assert (=> b!185163 (=> (not res!87602) (not e!121858))))

(declare-fun b!185164 () Bool)

(assert (=> b!185164 (= e!121865 e!121866)))

(declare-fun res!87598 () Bool)

(assert (=> b!185164 (= res!87598 call!18682)))

(assert (=> b!185164 (=> (not res!87598) (not e!121866))))

(declare-fun bm!18680 () Bool)

(assert (=> bm!18680 (= call!18683 (getCurrentListMapNoExtraKeys!194 (_keys!5709 thiss!1248) (_values!3757 thiss!1248) (mask!8872 thiss!1248) (extraKeys!3511 thiss!1248) (zeroValue!3615 thiss!1248) (minValue!3615 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3774 thiss!1248)))))

(assert (= (and d!55003 c!33222) b!185146))

(assert (= (and d!55003 (not c!33222)) b!185161))

(assert (= (and b!185161 c!33219) b!185162))

(assert (= (and b!185161 (not c!33219)) b!185154))

(assert (= (and b!185154 c!33218) b!185151))

(assert (= (and b!185154 (not c!33218)) b!185156))

(assert (= (or b!185151 b!185156) bm!18676))

(assert (= (or b!185162 bm!18676) bm!18679))

(assert (= (or b!185162 b!185151) bm!18675))

(assert (= (or b!185146 bm!18679) bm!18680))

(assert (= (or b!185146 bm!18675) bm!18677))

(assert (= (and d!55003 res!87594) b!185153))

(assert (= (and d!55003 c!33220) b!185147))

(assert (= (and d!55003 (not c!33220)) b!185152))

(assert (= (and d!55003 res!87600) b!185145))

(assert (= (and b!185145 res!87599) b!185158))

(assert (= (and b!185145 (not res!87596)) b!185160))

(assert (= (and b!185160 res!87595) b!185157))

(assert (= (and b!185145 res!87601) b!185155))

(assert (= (and b!185155 c!33217) b!185164))

(assert (= (and b!185155 (not c!33217)) b!185148))

(assert (= (and b!185164 res!87598) b!185159))

(assert (= (or b!185164 b!185148) bm!18674))

(assert (= (and b!185155 res!87597) b!185150))

(assert (= (and b!185150 c!33221) b!185163))

(assert (= (and b!185150 (not c!33221)) b!185149))

(assert (= (and b!185163 res!87602) b!185144))

(assert (= (or b!185163 b!185149) bm!18678))

(declare-fun b_lambda!7273 () Bool)

(assert (=> (not b_lambda!7273) (not b!185157)))

(declare-fun t!7261 () Bool)

(declare-fun tb!2847 () Bool)

(assert (=> (and b!185040 (= (defaultEntry!3774 thiss!1248) (defaultEntry!3774 thiss!1248)) t!7261) tb!2847))

(declare-fun result!4803 () Bool)

(assert (=> tb!2847 (= result!4803 tp_is_empty!4329)))

(assert (=> b!185157 t!7261))

(declare-fun b_and!11175 () Bool)

(assert (= b_and!11171 (and (=> t!7261 result!4803) b_and!11175)))

(declare-fun m!212451 () Bool)

(assert (=> bm!18674 m!212451))

(declare-fun m!212453 () Bool)

(assert (=> bm!18678 m!212453))

(declare-fun m!212455 () Bool)

(assert (=> b!185159 m!212455))

(assert (=> b!185157 m!212425))

(declare-fun m!212457 () Bool)

(assert (=> b!185157 m!212457))

(declare-fun m!212459 () Bool)

(assert (=> b!185157 m!212459))

(assert (=> b!185157 m!212457))

(declare-fun m!212461 () Bool)

(assert (=> b!185157 m!212461))

(assert (=> b!185157 m!212425))

(declare-fun m!212463 () Bool)

(assert (=> b!185157 m!212463))

(assert (=> b!185157 m!212459))

(assert (=> b!185153 m!212425))

(assert (=> b!185153 m!212425))

(assert (=> b!185153 m!212435))

(declare-fun m!212465 () Bool)

(assert (=> bm!18677 m!212465))

(declare-fun m!212467 () Bool)

(assert (=> b!185146 m!212467))

(assert (=> b!185158 m!212425))

(assert (=> b!185158 m!212425))

(assert (=> b!185158 m!212435))

(assert (=> b!185147 m!212425))

(declare-fun m!212469 () Bool)

(assert (=> b!185147 m!212469))

(declare-fun m!212471 () Bool)

(assert (=> b!185147 m!212471))

(declare-fun m!212473 () Bool)

(assert (=> b!185147 m!212473))

(declare-fun m!212475 () Bool)

(assert (=> b!185147 m!212475))

(declare-fun m!212477 () Bool)

(assert (=> b!185147 m!212477))

(declare-fun m!212479 () Bool)

(assert (=> b!185147 m!212479))

(declare-fun m!212481 () Bool)

(assert (=> b!185147 m!212481))

(declare-fun m!212483 () Bool)

(assert (=> b!185147 m!212483))

(assert (=> b!185147 m!212469))

(declare-fun m!212485 () Bool)

(assert (=> b!185147 m!212485))

(declare-fun m!212487 () Bool)

(assert (=> b!185147 m!212487))

(declare-fun m!212489 () Bool)

(assert (=> b!185147 m!212489))

(declare-fun m!212491 () Bool)

(assert (=> b!185147 m!212491))

(declare-fun m!212493 () Bool)

(assert (=> b!185147 m!212493))

(declare-fun m!212495 () Bool)

(assert (=> b!185147 m!212495))

(assert (=> b!185147 m!212481))

(assert (=> b!185147 m!212473))

(assert (=> b!185147 m!212487))

(declare-fun m!212497 () Bool)

(assert (=> b!185147 m!212497))

(declare-fun m!212499 () Bool)

(assert (=> b!185147 m!212499))

(declare-fun m!212501 () Bool)

(assert (=> b!185144 m!212501))

(assert (=> bm!18680 m!212491))

(assert (=> b!185160 m!212425))

(assert (=> b!185160 m!212425))

(declare-fun m!212503 () Bool)

(assert (=> b!185160 m!212503))

(assert (=> d!55003 m!212399))

(assert (=> b!185033 d!55003))

(declare-fun b!185179 () Bool)

(declare-fun e!121873 () SeekEntryResult!639)

(assert (=> b!185179 (= e!121873 Undefined!639)))

(declare-fun d!55005 () Bool)

(declare-fun lt!91662 () SeekEntryResult!639)

(assert (=> d!55005 (and (or ((_ is Undefined!639) lt!91662) (not ((_ is Found!639) lt!91662)) (and (bvsge (index!4727 lt!91662) #b00000000000000000000000000000000) (bvslt (index!4727 lt!91662) (size!4028 (_keys!5709 thiss!1248))))) (or ((_ is Undefined!639) lt!91662) ((_ is Found!639) lt!91662) (not ((_ is MissingZero!639) lt!91662)) (and (bvsge (index!4726 lt!91662) #b00000000000000000000000000000000) (bvslt (index!4726 lt!91662) (size!4028 (_keys!5709 thiss!1248))))) (or ((_ is Undefined!639) lt!91662) ((_ is Found!639) lt!91662) ((_ is MissingZero!639) lt!91662) (not ((_ is MissingVacant!639) lt!91662)) (and (bvsge (index!4729 lt!91662) #b00000000000000000000000000000000) (bvslt (index!4729 lt!91662) (size!4028 (_keys!5709 thiss!1248))))) (or ((_ is Undefined!639) lt!91662) (ite ((_ is Found!639) lt!91662) (= (select (arr!3712 (_keys!5709 thiss!1248)) (index!4727 lt!91662)) key!828) (ite ((_ is MissingZero!639) lt!91662) (= (select (arr!3712 (_keys!5709 thiss!1248)) (index!4726 lt!91662)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!639) lt!91662) (= (select (arr!3712 (_keys!5709 thiss!1248)) (index!4729 lt!91662)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55005 (= lt!91662 e!121873)))

(declare-fun c!33230 () Bool)

(declare-fun lt!91661 () SeekEntryResult!639)

(assert (=> d!55005 (= c!33230 (and ((_ is Intermediate!639) lt!91661) (undefined!1451 lt!91661)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7860 (_ BitVec 32)) SeekEntryResult!639)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55005 (= lt!91661 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8872 thiss!1248)) key!828 (_keys!5709 thiss!1248) (mask!8872 thiss!1248)))))

(assert (=> d!55005 (validMask!0 (mask!8872 thiss!1248))))

(assert (=> d!55005 (= (seekEntryOrOpen!0 key!828 (_keys!5709 thiss!1248) (mask!8872 thiss!1248)) lt!91662)))

(declare-fun b!185180 () Bool)

(declare-fun e!121875 () SeekEntryResult!639)

(assert (=> b!185180 (= e!121873 e!121875)))

(declare-fun lt!91663 () (_ BitVec 64))

(assert (=> b!185180 (= lt!91663 (select (arr!3712 (_keys!5709 thiss!1248)) (index!4728 lt!91661)))))

(declare-fun c!33229 () Bool)

(assert (=> b!185180 (= c!33229 (= lt!91663 key!828))))

(declare-fun b!185181 () Bool)

(declare-fun e!121874 () SeekEntryResult!639)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7860 (_ BitVec 32)) SeekEntryResult!639)

(assert (=> b!185181 (= e!121874 (seekKeyOrZeroReturnVacant!0 (x!20115 lt!91661) (index!4728 lt!91661) (index!4728 lt!91661) key!828 (_keys!5709 thiss!1248) (mask!8872 thiss!1248)))))

(declare-fun b!185182 () Bool)

(assert (=> b!185182 (= e!121875 (Found!639 (index!4728 lt!91661)))))

(declare-fun b!185183 () Bool)

(assert (=> b!185183 (= e!121874 (MissingZero!639 (index!4728 lt!91661)))))

(declare-fun b!185184 () Bool)

(declare-fun c!33231 () Bool)

(assert (=> b!185184 (= c!33231 (= lt!91663 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!185184 (= e!121875 e!121874)))

(assert (= (and d!55005 c!33230) b!185179))

(assert (= (and d!55005 (not c!33230)) b!185180))

(assert (= (and b!185180 c!33229) b!185182))

(assert (= (and b!185180 (not c!33229)) b!185184))

(assert (= (and b!185184 c!33231) b!185183))

(assert (= (and b!185184 (not c!33231)) b!185181))

(declare-fun m!212505 () Bool)

(assert (=> d!55005 m!212505))

(assert (=> d!55005 m!212399))

(declare-fun m!212507 () Bool)

(assert (=> d!55005 m!212507))

(declare-fun m!212509 () Bool)

(assert (=> d!55005 m!212509))

(declare-fun m!212511 () Bool)

(assert (=> d!55005 m!212511))

(declare-fun m!212513 () Bool)

(assert (=> d!55005 m!212513))

(assert (=> d!55005 m!212511))

(declare-fun m!212515 () Bool)

(assert (=> b!185180 m!212515))

(declare-fun m!212517 () Bool)

(assert (=> b!185181 m!212517))

(assert (=> b!185032 d!55005))

(declare-fun d!55007 () Bool)

(assert (=> d!55007 (= (array_inv!2391 (_keys!5709 thiss!1248)) (bvsge (size!4028 (_keys!5709 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185040 d!55007))

(declare-fun d!55009 () Bool)

(assert (=> d!55009 (= (array_inv!2392 (_values!3757 thiss!1248)) (bvsge (size!4029 (_values!3757 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185040 d!55009))

(declare-fun mapIsEmpty!7452 () Bool)

(declare-fun mapRes!7452 () Bool)

(assert (=> mapIsEmpty!7452 mapRes!7452))

(declare-fun b!185191 () Bool)

(declare-fun e!121881 () Bool)

(assert (=> b!185191 (= e!121881 tp_is_empty!4329)))

(declare-fun condMapEmpty!7452 () Bool)

(declare-fun mapDefault!7452 () ValueCell!1821)

(assert (=> mapNonEmpty!7446 (= condMapEmpty!7452 (= mapRest!7446 ((as const (Array (_ BitVec 32) ValueCell!1821)) mapDefault!7452)))))

(declare-fun e!121880 () Bool)

(assert (=> mapNonEmpty!7446 (= tp!16461 (and e!121880 mapRes!7452))))

(declare-fun b!185192 () Bool)

(assert (=> b!185192 (= e!121880 tp_is_empty!4329)))

(declare-fun mapNonEmpty!7452 () Bool)

(declare-fun tp!16470 () Bool)

(assert (=> mapNonEmpty!7452 (= mapRes!7452 (and tp!16470 e!121881))))

(declare-fun mapRest!7452 () (Array (_ BitVec 32) ValueCell!1821))

(declare-fun mapValue!7452 () ValueCell!1821)

(declare-fun mapKey!7452 () (_ BitVec 32))

(assert (=> mapNonEmpty!7452 (= mapRest!7446 (store mapRest!7452 mapKey!7452 mapValue!7452))))

(assert (= (and mapNonEmpty!7446 condMapEmpty!7452) mapIsEmpty!7452))

(assert (= (and mapNonEmpty!7446 (not condMapEmpty!7452)) mapNonEmpty!7452))

(assert (= (and mapNonEmpty!7452 ((_ is ValueCellFull!1821) mapValue!7452)) b!185191))

(assert (= (and mapNonEmpty!7446 ((_ is ValueCellFull!1821) mapDefault!7452)) b!185192))

(declare-fun m!212519 () Bool)

(assert (=> mapNonEmpty!7452 m!212519))

(declare-fun b_lambda!7275 () Bool)

(assert (= b_lambda!7273 (or (and b!185040 b_free!4557) b_lambda!7275)))

(check-sat (not d!55003) (not b!185090) (not b!185099) b_and!11175 (not mapNonEmpty!7452) (not b!185181) (not b!185080) (not b!185160) (not bm!18674) (not bm!18680) (not bm!18677) (not b_next!4557) (not b!185146) (not d!54999) (not b!185157) (not b!185147) (not d!55005) (not b!185158) (not b!185091) (not bm!18678) (not b!185144) (not b!185153) (not b_lambda!7275) (not d!55001) (not b!185092) (not b!185101) (not b!185159) tp_is_empty!4329 (not b!185083) (not bm!18659))
(check-sat b_and!11175 (not b_next!4557))

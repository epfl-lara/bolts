; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19274 () Bool)

(assert start!19274)

(declare-fun b!189528 () Bool)

(declare-fun b_free!4653 () Bool)

(declare-fun b_next!4653 () Bool)

(assert (=> b!189528 (= b_free!4653 (not b_next!4653))))

(declare-fun tp!16791 () Bool)

(declare-fun b_and!11309 () Bool)

(assert (=> b!189528 (= tp!16791 b_and!11309)))

(declare-fun mapIsEmpty!7633 () Bool)

(declare-fun mapRes!7633 () Bool)

(assert (=> mapIsEmpty!7633 mapRes!7633))

(declare-fun res!89638 () Bool)

(declare-fun e!124732 () Bool)

(assert (=> start!19274 (=> (not res!89638) (not e!124732))))

(declare-datatypes ((V!5547 0))(
  ( (V!5548 (val!2257 Int)) )
))
(declare-datatypes ((ValueCell!1869 0))(
  ( (ValueCellFull!1869 (v!4174 V!5547)) (EmptyCell!1869) )
))
(declare-datatypes ((array!8078 0))(
  ( (array!8079 (arr!3808 (Array (_ BitVec 32) (_ BitVec 64))) (size!4128 (_ BitVec 32))) )
))
(declare-datatypes ((array!8080 0))(
  ( (array!8081 (arr!3809 (Array (_ BitVec 32) ValueCell!1869)) (size!4129 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2646 0))(
  ( (LongMapFixedSize!2647 (defaultEntry!3867 Int) (mask!9056 (_ BitVec 32)) (extraKeys!3604 (_ BitVec 32)) (zeroValue!3708 V!5547) (minValue!3708 V!5547) (_size!1372 (_ BitVec 32)) (_keys!5834 array!8078) (_values!3850 array!8080) (_vacant!1372 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2646)

(declare-fun valid!1078 (LongMapFixedSize!2646) Bool)

(assert (=> start!19274 (= res!89638 (valid!1078 thiss!1248))))

(assert (=> start!19274 e!124732))

(declare-fun e!124736 () Bool)

(assert (=> start!19274 e!124736))

(assert (=> start!19274 true))

(declare-fun tp_is_empty!4425 () Bool)

(assert (=> start!19274 tp_is_empty!4425))

(declare-fun b!189519 () Bool)

(declare-fun e!124728 () Bool)

(assert (=> b!189519 (= e!124728 tp_is_empty!4425)))

(declare-fun b!189520 () Bool)

(declare-datatypes ((Unit!5719 0))(
  ( (Unit!5720) )
))
(declare-fun e!124734 () Unit!5719)

(declare-fun Unit!5721 () Unit!5719)

(assert (=> b!189520 (= e!124734 Unit!5721)))

(declare-fun lt!93826 () Unit!5719)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!167 (array!8078 array!8080 (_ BitVec 32) (_ BitVec 32) V!5547 V!5547 (_ BitVec 64) Int) Unit!5719)

(assert (=> b!189520 (= lt!93826 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!167 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) key!828 (defaultEntry!3867 thiss!1248)))))

(assert (=> b!189520 false))

(declare-fun b!189521 () Bool)

(declare-datatypes ((SeekEntryResult!676 0))(
  ( (MissingZero!676 (index!4874 (_ BitVec 32))) (Found!676 (index!4875 (_ BitVec 32))) (Intermediate!676 (undefined!1488 Bool) (index!4876 (_ BitVec 32)) (x!20442 (_ BitVec 32))) (Undefined!676) (MissingVacant!676 (index!4877 (_ BitVec 32))) )
))
(declare-fun lt!93831 () SeekEntryResult!676)

(declare-fun e!124729 () Bool)

(assert (=> b!189521 (= e!124729 (= (select (arr!3808 (_keys!5834 thiss!1248)) (index!4875 lt!93831)) key!828))))

(declare-fun b!189522 () Bool)

(declare-fun res!89637 () Bool)

(assert (=> b!189522 (=> (not res!89637) (not e!124732))))

(assert (=> b!189522 (= res!89637 (not (= key!828 (bvneg key!828))))))

(declare-fun b!189523 () Bool)

(declare-fun e!124735 () Bool)

(assert (=> b!189523 (= e!124735 (and e!124728 mapRes!7633))))

(declare-fun condMapEmpty!7633 () Bool)

(declare-fun mapDefault!7633 () ValueCell!1869)

(assert (=> b!189523 (= condMapEmpty!7633 (= (arr!3809 (_values!3850 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1869)) mapDefault!7633)))))

(declare-fun b!189524 () Bool)

(declare-fun e!124730 () Bool)

(assert (=> b!189524 (= e!124730 tp_is_empty!4425)))

(declare-fun b!189525 () Bool)

(declare-fun e!124731 () Bool)

(assert (=> b!189525 (= e!124732 e!124731)))

(declare-fun res!89636 () Bool)

(assert (=> b!189525 (=> (not res!89636) (not e!124731))))

(get-info :version)

(assert (=> b!189525 (= res!89636 (and (not ((_ is Undefined!676) lt!93831)) (not ((_ is MissingVacant!676) lt!93831)) (not ((_ is MissingZero!676) lt!93831)) ((_ is Found!676) lt!93831)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8078 (_ BitVec 32)) SeekEntryResult!676)

(assert (=> b!189525 (= lt!93831 (seekEntryOrOpen!0 key!828 (_keys!5834 thiss!1248) (mask!9056 thiss!1248)))))

(declare-fun b!189526 () Bool)

(declare-fun lt!93827 () Unit!5719)

(assert (=> b!189526 (= e!124734 lt!93827)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!167 (array!8078 array!8080 (_ BitVec 32) (_ BitVec 32) V!5547 V!5547 (_ BitVec 64) Int) Unit!5719)

(assert (=> b!189526 (= lt!93827 (lemmaInListMapThenSeekEntryOrOpenFindsIt!167 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) key!828 (defaultEntry!3867 thiss!1248)))))

(declare-fun res!89635 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!189526 (= res!89635 (inRange!0 (index!4875 lt!93831) (mask!9056 thiss!1248)))))

(assert (=> b!189526 (=> (not res!89635) (not e!124729))))

(assert (=> b!189526 e!124729))

(declare-fun b!189527 () Bool)

(assert (=> b!189527 (= e!124731 (not (and (bvsge (index!4875 lt!93831) #b00000000000000000000000000000000) (bvslt (index!4875 lt!93831) (size!4129 (_values!3850 thiss!1248))))))))

(declare-datatypes ((tuple2!3506 0))(
  ( (tuple2!3507 (_1!1763 (_ BitVec 64)) (_2!1763 V!5547)) )
))
(declare-datatypes ((List!2429 0))(
  ( (Nil!2426) (Cons!2425 (h!3062 tuple2!3506) (t!7341 List!2429)) )
))
(declare-datatypes ((ListLongMap!2437 0))(
  ( (ListLongMap!2438 (toList!1234 List!2429)) )
))
(declare-fun lt!93828 () ListLongMap!2437)

(declare-fun v!309 () V!5547)

(declare-fun +!292 (ListLongMap!2437 tuple2!3506) ListLongMap!2437)

(declare-fun getCurrentListMap!877 (array!8078 array!8080 (_ BitVec 32) (_ BitVec 32) V!5547 V!5547 (_ BitVec 32) Int) ListLongMap!2437)

(assert (=> b!189527 (= (+!292 lt!93828 (tuple2!3507 key!828 v!309)) (getCurrentListMap!877 (_keys!5834 thiss!1248) (array!8081 (store (arr!3809 (_values!3850 thiss!1248)) (index!4875 lt!93831) (ValueCellFull!1869 v!309)) (size!4129 (_values!3850 thiss!1248))) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun lt!93830 () Unit!5719)

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!98 (array!8078 array!8080 (_ BitVec 32) (_ BitVec 32) V!5547 V!5547 (_ BitVec 32) (_ BitVec 64) V!5547 Int) Unit!5719)

(assert (=> b!189527 (= lt!93830 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!98 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) (index!4875 lt!93831) key!828 v!309 (defaultEntry!3867 thiss!1248)))))

(declare-fun lt!93829 () Unit!5719)

(assert (=> b!189527 (= lt!93829 e!124734)))

(declare-fun c!34033 () Bool)

(declare-fun contains!1335 (ListLongMap!2437 (_ BitVec 64)) Bool)

(assert (=> b!189527 (= c!34033 (contains!1335 lt!93828 key!828))))

(assert (=> b!189527 (= lt!93828 (getCurrentListMap!877 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun array_inv!2459 (array!8078) Bool)

(declare-fun array_inv!2460 (array!8080) Bool)

(assert (=> b!189528 (= e!124736 (and tp!16791 tp_is_empty!4425 (array_inv!2459 (_keys!5834 thiss!1248)) (array_inv!2460 (_values!3850 thiss!1248)) e!124735))))

(declare-fun mapNonEmpty!7633 () Bool)

(declare-fun tp!16792 () Bool)

(assert (=> mapNonEmpty!7633 (= mapRes!7633 (and tp!16792 e!124730))))

(declare-fun mapRest!7633 () (Array (_ BitVec 32) ValueCell!1869))

(declare-fun mapValue!7633 () ValueCell!1869)

(declare-fun mapKey!7633 () (_ BitVec 32))

(assert (=> mapNonEmpty!7633 (= (arr!3809 (_values!3850 thiss!1248)) (store mapRest!7633 mapKey!7633 mapValue!7633))))

(assert (= (and start!19274 res!89638) b!189522))

(assert (= (and b!189522 res!89637) b!189525))

(assert (= (and b!189525 res!89636) b!189527))

(assert (= (and b!189527 c!34033) b!189526))

(assert (= (and b!189527 (not c!34033)) b!189520))

(assert (= (and b!189526 res!89635) b!189521))

(assert (= (and b!189523 condMapEmpty!7633) mapIsEmpty!7633))

(assert (= (and b!189523 (not condMapEmpty!7633)) mapNonEmpty!7633))

(assert (= (and mapNonEmpty!7633 ((_ is ValueCellFull!1869) mapValue!7633)) b!189524))

(assert (= (and b!189523 ((_ is ValueCellFull!1869) mapDefault!7633)) b!189519))

(assert (= b!189528 b!189523))

(assert (= start!19274 b!189528))

(declare-fun m!215849 () Bool)

(assert (=> b!189526 m!215849))

(declare-fun m!215851 () Bool)

(assert (=> b!189526 m!215851))

(declare-fun m!215853 () Bool)

(assert (=> b!189520 m!215853))

(declare-fun m!215855 () Bool)

(assert (=> mapNonEmpty!7633 m!215855))

(declare-fun m!215857 () Bool)

(assert (=> b!189521 m!215857))

(declare-fun m!215859 () Bool)

(assert (=> start!19274 m!215859))

(declare-fun m!215861 () Bool)

(assert (=> b!189527 m!215861))

(declare-fun m!215863 () Bool)

(assert (=> b!189527 m!215863))

(declare-fun m!215865 () Bool)

(assert (=> b!189527 m!215865))

(declare-fun m!215867 () Bool)

(assert (=> b!189527 m!215867))

(declare-fun m!215869 () Bool)

(assert (=> b!189527 m!215869))

(declare-fun m!215871 () Bool)

(assert (=> b!189527 m!215871))

(declare-fun m!215873 () Bool)

(assert (=> b!189525 m!215873))

(declare-fun m!215875 () Bool)

(assert (=> b!189528 m!215875))

(declare-fun m!215877 () Bool)

(assert (=> b!189528 m!215877))

(check-sat b_and!11309 (not mapNonEmpty!7633) tp_is_empty!4425 (not b!189526) (not b!189525) (not b!189528) (not b_next!4653) (not start!19274) (not b!189527) (not b!189520))
(check-sat b_and!11309 (not b_next!4653))
(get-model)

(declare-fun d!55633 () Bool)

(declare-fun res!89657 () Bool)

(declare-fun e!124766 () Bool)

(assert (=> d!55633 (=> (not res!89657) (not e!124766))))

(declare-fun simpleValid!192 (LongMapFixedSize!2646) Bool)

(assert (=> d!55633 (= res!89657 (simpleValid!192 thiss!1248))))

(assert (=> d!55633 (= (valid!1078 thiss!1248) e!124766)))

(declare-fun b!189565 () Bool)

(declare-fun res!89658 () Bool)

(assert (=> b!189565 (=> (not res!89658) (not e!124766))))

(declare-fun arrayCountValidKeys!0 (array!8078 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!189565 (= res!89658 (= (arrayCountValidKeys!0 (_keys!5834 thiss!1248) #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))) (_size!1372 thiss!1248)))))

(declare-fun b!189566 () Bool)

(declare-fun res!89659 () Bool)

(assert (=> b!189566 (=> (not res!89659) (not e!124766))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8078 (_ BitVec 32)) Bool)

(assert (=> b!189566 (= res!89659 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5834 thiss!1248) (mask!9056 thiss!1248)))))

(declare-fun b!189567 () Bool)

(declare-datatypes ((List!2431 0))(
  ( (Nil!2428) (Cons!2427 (h!3064 (_ BitVec 64)) (t!7345 List!2431)) )
))
(declare-fun arrayNoDuplicates!0 (array!8078 (_ BitVec 32) List!2431) Bool)

(assert (=> b!189567 (= e!124766 (arrayNoDuplicates!0 (_keys!5834 thiss!1248) #b00000000000000000000000000000000 Nil!2428))))

(assert (= (and d!55633 res!89657) b!189565))

(assert (= (and b!189565 res!89658) b!189566))

(assert (= (and b!189566 res!89659) b!189567))

(declare-fun m!215909 () Bool)

(assert (=> d!55633 m!215909))

(declare-fun m!215911 () Bool)

(assert (=> b!189565 m!215911))

(declare-fun m!215913 () Bool)

(assert (=> b!189566 m!215913))

(declare-fun m!215915 () Bool)

(assert (=> b!189567 m!215915))

(assert (=> start!19274 d!55633))

(declare-fun bm!19102 () Bool)

(declare-fun call!19105 () Bool)

(declare-fun lt!93855 () SeekEntryResult!676)

(declare-fun c!34041 () Bool)

(assert (=> bm!19102 (= call!19105 (inRange!0 (ite c!34041 (index!4874 lt!93855) (index!4877 lt!93855)) (mask!9056 thiss!1248)))))

(declare-fun b!189584 () Bool)

(declare-fun e!124778 () Bool)

(declare-fun call!19106 () Bool)

(assert (=> b!189584 (= e!124778 (not call!19106))))

(declare-fun b!189585 () Bool)

(declare-fun res!89671 () Bool)

(assert (=> b!189585 (=> (not res!89671) (not e!124778))))

(assert (=> b!189585 (= res!89671 call!19105)))

(declare-fun e!124777 () Bool)

(assert (=> b!189585 (= e!124777 e!124778)))

(declare-fun b!189586 () Bool)

(declare-fun e!124775 () Bool)

(assert (=> b!189586 (= e!124775 e!124777)))

(declare-fun c!34042 () Bool)

(assert (=> b!189586 (= c!34042 ((_ is MissingVacant!676) lt!93855))))

(declare-fun b!189587 () Bool)

(declare-fun e!124776 () Bool)

(assert (=> b!189587 (= e!124775 e!124776)))

(declare-fun res!89668 () Bool)

(assert (=> b!189587 (= res!89668 call!19105)))

(assert (=> b!189587 (=> (not res!89668) (not e!124776))))

(declare-fun b!189588 () Bool)

(assert (=> b!189588 (= e!124777 ((_ is Undefined!676) lt!93855))))

(declare-fun b!189589 () Bool)

(declare-fun res!89670 () Bool)

(assert (=> b!189589 (=> (not res!89670) (not e!124778))))

(assert (=> b!189589 (= res!89670 (= (select (arr!3808 (_keys!5834 thiss!1248)) (index!4877 lt!93855)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!189589 (and (bvsge (index!4877 lt!93855) #b00000000000000000000000000000000) (bvslt (index!4877 lt!93855) (size!4128 (_keys!5834 thiss!1248))))))

(declare-fun b!189590 () Bool)

(assert (=> b!189590 (and (bvsge (index!4874 lt!93855) #b00000000000000000000000000000000) (bvslt (index!4874 lt!93855) (size!4128 (_keys!5834 thiss!1248))))))

(declare-fun res!89669 () Bool)

(assert (=> b!189590 (= res!89669 (= (select (arr!3808 (_keys!5834 thiss!1248)) (index!4874 lt!93855)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!189590 (=> (not res!89669) (not e!124776))))

(declare-fun bm!19103 () Bool)

(declare-fun arrayContainsKey!0 (array!8078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19103 (= call!19106 (arrayContainsKey!0 (_keys!5834 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!189591 () Bool)

(assert (=> b!189591 (= e!124776 (not call!19106))))

(declare-fun d!55635 () Bool)

(assert (=> d!55635 e!124775))

(assert (=> d!55635 (= c!34041 ((_ is MissingZero!676) lt!93855))))

(assert (=> d!55635 (= lt!93855 (seekEntryOrOpen!0 key!828 (_keys!5834 thiss!1248) (mask!9056 thiss!1248)))))

(declare-fun lt!93854 () Unit!5719)

(declare-fun choose!1022 (array!8078 array!8080 (_ BitVec 32) (_ BitVec 32) V!5547 V!5547 (_ BitVec 64) Int) Unit!5719)

(assert (=> d!55635 (= lt!93854 (choose!1022 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) key!828 (defaultEntry!3867 thiss!1248)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!55635 (validMask!0 (mask!9056 thiss!1248))))

(assert (=> d!55635 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!167 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) key!828 (defaultEntry!3867 thiss!1248)) lt!93854)))

(assert (= (and d!55635 c!34041) b!189587))

(assert (= (and d!55635 (not c!34041)) b!189586))

(assert (= (and b!189587 res!89668) b!189590))

(assert (= (and b!189590 res!89669) b!189591))

(assert (= (and b!189586 c!34042) b!189585))

(assert (= (and b!189586 (not c!34042)) b!189588))

(assert (= (and b!189585 res!89671) b!189589))

(assert (= (and b!189589 res!89670) b!189584))

(assert (= (or b!189587 b!189585) bm!19102))

(assert (= (or b!189591 b!189584) bm!19103))

(declare-fun m!215917 () Bool)

(assert (=> bm!19102 m!215917))

(declare-fun m!215919 () Bool)

(assert (=> bm!19103 m!215919))

(assert (=> d!55635 m!215873))

(declare-fun m!215921 () Bool)

(assert (=> d!55635 m!215921))

(declare-fun m!215923 () Bool)

(assert (=> d!55635 m!215923))

(declare-fun m!215925 () Bool)

(assert (=> b!189589 m!215925))

(declare-fun m!215927 () Bool)

(assert (=> b!189590 m!215927))

(assert (=> b!189520 d!55635))

(declare-fun lt!93864 () SeekEntryResult!676)

(declare-fun e!124786 () SeekEntryResult!676)

(declare-fun b!189604 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8078 (_ BitVec 32)) SeekEntryResult!676)

(assert (=> b!189604 (= e!124786 (seekKeyOrZeroReturnVacant!0 (x!20442 lt!93864) (index!4876 lt!93864) (index!4876 lt!93864) key!828 (_keys!5834 thiss!1248) (mask!9056 thiss!1248)))))

(declare-fun b!189605 () Bool)

(declare-fun e!124785 () SeekEntryResult!676)

(assert (=> b!189605 (= e!124785 (Found!676 (index!4876 lt!93864)))))

(declare-fun b!189606 () Bool)

(declare-fun c!34050 () Bool)

(declare-fun lt!93863 () (_ BitVec 64))

(assert (=> b!189606 (= c!34050 (= lt!93863 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!189606 (= e!124785 e!124786)))

(declare-fun d!55637 () Bool)

(declare-fun lt!93862 () SeekEntryResult!676)

(assert (=> d!55637 (and (or ((_ is Undefined!676) lt!93862) (not ((_ is Found!676) lt!93862)) (and (bvsge (index!4875 lt!93862) #b00000000000000000000000000000000) (bvslt (index!4875 lt!93862) (size!4128 (_keys!5834 thiss!1248))))) (or ((_ is Undefined!676) lt!93862) ((_ is Found!676) lt!93862) (not ((_ is MissingZero!676) lt!93862)) (and (bvsge (index!4874 lt!93862) #b00000000000000000000000000000000) (bvslt (index!4874 lt!93862) (size!4128 (_keys!5834 thiss!1248))))) (or ((_ is Undefined!676) lt!93862) ((_ is Found!676) lt!93862) ((_ is MissingZero!676) lt!93862) (not ((_ is MissingVacant!676) lt!93862)) (and (bvsge (index!4877 lt!93862) #b00000000000000000000000000000000) (bvslt (index!4877 lt!93862) (size!4128 (_keys!5834 thiss!1248))))) (or ((_ is Undefined!676) lt!93862) (ite ((_ is Found!676) lt!93862) (= (select (arr!3808 (_keys!5834 thiss!1248)) (index!4875 lt!93862)) key!828) (ite ((_ is MissingZero!676) lt!93862) (= (select (arr!3808 (_keys!5834 thiss!1248)) (index!4874 lt!93862)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!676) lt!93862) (= (select (arr!3808 (_keys!5834 thiss!1248)) (index!4877 lt!93862)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!124787 () SeekEntryResult!676)

(assert (=> d!55637 (= lt!93862 e!124787)))

(declare-fun c!34049 () Bool)

(assert (=> d!55637 (= c!34049 (and ((_ is Intermediate!676) lt!93864) (undefined!1488 lt!93864)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8078 (_ BitVec 32)) SeekEntryResult!676)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55637 (= lt!93864 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9056 thiss!1248)) key!828 (_keys!5834 thiss!1248) (mask!9056 thiss!1248)))))

(assert (=> d!55637 (validMask!0 (mask!9056 thiss!1248))))

(assert (=> d!55637 (= (seekEntryOrOpen!0 key!828 (_keys!5834 thiss!1248) (mask!9056 thiss!1248)) lt!93862)))

(declare-fun b!189607 () Bool)

(assert (=> b!189607 (= e!124787 e!124785)))

(assert (=> b!189607 (= lt!93863 (select (arr!3808 (_keys!5834 thiss!1248)) (index!4876 lt!93864)))))

(declare-fun c!34051 () Bool)

(assert (=> b!189607 (= c!34051 (= lt!93863 key!828))))

(declare-fun b!189608 () Bool)

(assert (=> b!189608 (= e!124787 Undefined!676)))

(declare-fun b!189609 () Bool)

(assert (=> b!189609 (= e!124786 (MissingZero!676 (index!4876 lt!93864)))))

(assert (= (and d!55637 c!34049) b!189608))

(assert (= (and d!55637 (not c!34049)) b!189607))

(assert (= (and b!189607 c!34051) b!189605))

(assert (= (and b!189607 (not c!34051)) b!189606))

(assert (= (and b!189606 c!34050) b!189609))

(assert (= (and b!189606 (not c!34050)) b!189604))

(declare-fun m!215929 () Bool)

(assert (=> b!189604 m!215929))

(declare-fun m!215931 () Bool)

(assert (=> d!55637 m!215931))

(declare-fun m!215933 () Bool)

(assert (=> d!55637 m!215933))

(declare-fun m!215935 () Bool)

(assert (=> d!55637 m!215935))

(declare-fun m!215937 () Bool)

(assert (=> d!55637 m!215937))

(declare-fun m!215939 () Bool)

(assert (=> d!55637 m!215939))

(assert (=> d!55637 m!215923))

(assert (=> d!55637 m!215931))

(declare-fun m!215941 () Bool)

(assert (=> b!189607 m!215941))

(assert (=> b!189525 d!55637))

(declare-fun d!55639 () Bool)

(declare-fun e!124790 () Bool)

(assert (=> d!55639 e!124790))

(declare-fun res!89674 () Bool)

(assert (=> d!55639 (=> (not res!89674) (not e!124790))))

(assert (=> d!55639 (= res!89674 (and (bvsge (index!4875 lt!93831) #b00000000000000000000000000000000) (bvslt (index!4875 lt!93831) (size!4129 (_values!3850 thiss!1248)))))))

(declare-fun lt!93867 () Unit!5719)

(declare-fun choose!1023 (array!8078 array!8080 (_ BitVec 32) (_ BitVec 32) V!5547 V!5547 (_ BitVec 32) (_ BitVec 64) V!5547 Int) Unit!5719)

(assert (=> d!55639 (= lt!93867 (choose!1023 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) (index!4875 lt!93831) key!828 v!309 (defaultEntry!3867 thiss!1248)))))

(assert (=> d!55639 (validMask!0 (mask!9056 thiss!1248))))

(assert (=> d!55639 (= (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!98 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) (index!4875 lt!93831) key!828 v!309 (defaultEntry!3867 thiss!1248)) lt!93867)))

(declare-fun b!189612 () Bool)

(assert (=> b!189612 (= e!124790 (= (+!292 (getCurrentListMap!877 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)) (tuple2!3507 key!828 v!309)) (getCurrentListMap!877 (_keys!5834 thiss!1248) (array!8081 (store (arr!3809 (_values!3850 thiss!1248)) (index!4875 lt!93831) (ValueCellFull!1869 v!309)) (size!4129 (_values!3850 thiss!1248))) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248))))))

(assert (= (and d!55639 res!89674) b!189612))

(declare-fun m!215943 () Bool)

(assert (=> d!55639 m!215943))

(assert (=> d!55639 m!215923))

(assert (=> b!189612 m!215865))

(assert (=> b!189612 m!215865))

(declare-fun m!215945 () Bool)

(assert (=> b!189612 m!215945))

(assert (=> b!189612 m!215867))

(assert (=> b!189612 m!215871))

(assert (=> b!189527 d!55639))

(declare-fun b!189655 () Bool)

(declare-fun e!124825 () Bool)

(declare-fun e!124823 () Bool)

(assert (=> b!189655 (= e!124825 e!124823)))

(declare-fun c!34067 () Bool)

(assert (=> b!189655 (= c!34067 (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!189656 () Bool)

(declare-fun e!124817 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!189656 (= e!124817 (validKeyInArray!0 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!189657 () Bool)

(declare-fun e!124828 () Bool)

(declare-fun e!124829 () Bool)

(assert (=> b!189657 (= e!124828 e!124829)))

(declare-fun res!89697 () Bool)

(declare-fun call!19121 () Bool)

(assert (=> b!189657 (= res!89697 call!19121)))

(assert (=> b!189657 (=> (not res!89697) (not e!124829))))

(declare-fun b!189658 () Bool)

(declare-fun e!124827 () Bool)

(declare-fun lt!93922 () ListLongMap!2437)

(declare-fun apply!177 (ListLongMap!2437 (_ BitVec 64)) V!5547)

(assert (=> b!189658 (= e!124827 (= (apply!177 lt!93922 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3708 thiss!1248)))))

(declare-fun b!189659 () Bool)

(declare-fun e!124820 () ListLongMap!2437)

(declare-fun call!19122 () ListLongMap!2437)

(assert (=> b!189659 (= e!124820 call!19122)))

(declare-fun b!189660 () Bool)

(declare-fun e!124826 () ListLongMap!2437)

(declare-fun call!19125 () ListLongMap!2437)

(assert (=> b!189660 (= e!124826 (+!292 call!19125 (tuple2!3507 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3708 thiss!1248))))))

(declare-fun b!189661 () Bool)

(declare-fun c!34069 () Bool)

(assert (=> b!189661 (= c!34069 (and (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!124819 () ListLongMap!2437)

(assert (=> b!189661 (= e!124820 e!124819)))

(declare-fun bm!19119 () Bool)

(declare-fun call!19123 () ListLongMap!2437)

(declare-fun call!19126 () ListLongMap!2437)

(assert (=> bm!19119 (= call!19123 call!19126)))

(declare-fun b!189662 () Bool)

(declare-fun call!19127 () ListLongMap!2437)

(assert (=> b!189662 (= e!124819 call!19127)))

(declare-fun b!189663 () Bool)

(declare-fun res!89701 () Bool)

(assert (=> b!189663 (=> (not res!89701) (not e!124825))))

(assert (=> b!189663 (= res!89701 e!124828)))

(declare-fun c!34068 () Bool)

(assert (=> b!189663 (= c!34068 (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!19120 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!207 (array!8078 array!8080 (_ BitVec 32) (_ BitVec 32) V!5547 V!5547 (_ BitVec 32) Int) ListLongMap!2437)

(assert (=> bm!19120 (= call!19126 (getCurrentListMapNoExtraKeys!207 (_keys!5834 thiss!1248) (array!8081 (store (arr!3809 (_values!3850 thiss!1248)) (index!4875 lt!93831) (ValueCellFull!1869 v!309)) (size!4129 (_values!3850 thiss!1248))) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun bm!19121 () Bool)

(assert (=> bm!19121 (= call!19122 call!19125)))

(declare-fun b!189664 () Bool)

(declare-fun e!124818 () Bool)

(assert (=> b!189664 (= e!124818 (validKeyInArray!0 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19122 () Bool)

(assert (=> bm!19122 (= call!19121 (contains!1335 lt!93922 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!55641 () Bool)

(assert (=> d!55641 e!124825))

(declare-fun res!89700 () Bool)

(assert (=> d!55641 (=> (not res!89700) (not e!124825))))

(assert (=> d!55641 (= res!89700 (or (bvsge #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))))))))

(declare-fun lt!93926 () ListLongMap!2437)

(assert (=> d!55641 (= lt!93922 lt!93926)))

(declare-fun lt!93921 () Unit!5719)

(declare-fun e!124821 () Unit!5719)

(assert (=> d!55641 (= lt!93921 e!124821)))

(declare-fun c!34064 () Bool)

(assert (=> d!55641 (= c!34064 e!124818)))

(declare-fun res!89699 () Bool)

(assert (=> d!55641 (=> (not res!89699) (not e!124818))))

(assert (=> d!55641 (= res!89699 (bvslt #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))))))

(assert (=> d!55641 (= lt!93926 e!124826)))

(declare-fun c!34066 () Bool)

(assert (=> d!55641 (= c!34066 (and (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55641 (validMask!0 (mask!9056 thiss!1248))))

(assert (=> d!55641 (= (getCurrentListMap!877 (_keys!5834 thiss!1248) (array!8081 (store (arr!3809 (_values!3850 thiss!1248)) (index!4875 lt!93831) (ValueCellFull!1869 v!309)) (size!4129 (_values!3850 thiss!1248))) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)) lt!93922)))

(declare-fun bm!19118 () Bool)

(declare-fun c!34065 () Bool)

(assert (=> bm!19118 (= call!19125 (+!292 (ite c!34066 call!19126 (ite c!34065 call!19123 call!19127)) (ite (or c!34066 c!34065) (tuple2!3507 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3708 thiss!1248)) (tuple2!3507 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3708 thiss!1248)))))))

(declare-fun e!124824 () Bool)

(declare-fun b!189665 () Bool)

(declare-fun get!2193 (ValueCell!1869 V!5547) V!5547)

(declare-fun dynLambda!515 (Int (_ BitVec 64)) V!5547)

(assert (=> b!189665 (= e!124824 (= (apply!177 lt!93922 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000)) (get!2193 (select (arr!3809 (array!8081 (store (arr!3809 (_values!3850 thiss!1248)) (index!4875 lt!93831) (ValueCellFull!1869 v!309)) (size!4129 (_values!3850 thiss!1248)))) #b00000000000000000000000000000000) (dynLambda!515 (defaultEntry!3867 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!189665 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4129 (array!8081 (store (arr!3809 (_values!3850 thiss!1248)) (index!4875 lt!93831) (ValueCellFull!1869 v!309)) (size!4129 (_values!3850 thiss!1248))))))))

(assert (=> b!189665 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))))))

(declare-fun bm!19123 () Bool)

(assert (=> bm!19123 (= call!19127 call!19123)))

(declare-fun b!189666 () Bool)

(declare-fun lt!93919 () Unit!5719)

(assert (=> b!189666 (= e!124821 lt!93919)))

(declare-fun lt!93927 () ListLongMap!2437)

(assert (=> b!189666 (= lt!93927 (getCurrentListMapNoExtraKeys!207 (_keys!5834 thiss!1248) (array!8081 (store (arr!3809 (_values!3850 thiss!1248)) (index!4875 lt!93831) (ValueCellFull!1869 v!309)) (size!4129 (_values!3850 thiss!1248))) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun lt!93931 () (_ BitVec 64))

(assert (=> b!189666 (= lt!93931 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93914 () (_ BitVec 64))

(assert (=> b!189666 (= lt!93914 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93930 () Unit!5719)

(declare-fun addStillContains!153 (ListLongMap!2437 (_ BitVec 64) V!5547 (_ BitVec 64)) Unit!5719)

(assert (=> b!189666 (= lt!93930 (addStillContains!153 lt!93927 lt!93931 (zeroValue!3708 thiss!1248) lt!93914))))

(assert (=> b!189666 (contains!1335 (+!292 lt!93927 (tuple2!3507 lt!93931 (zeroValue!3708 thiss!1248))) lt!93914)))

(declare-fun lt!93916 () Unit!5719)

(assert (=> b!189666 (= lt!93916 lt!93930)))

(declare-fun lt!93933 () ListLongMap!2437)

(assert (=> b!189666 (= lt!93933 (getCurrentListMapNoExtraKeys!207 (_keys!5834 thiss!1248) (array!8081 (store (arr!3809 (_values!3850 thiss!1248)) (index!4875 lt!93831) (ValueCellFull!1869 v!309)) (size!4129 (_values!3850 thiss!1248))) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun lt!93932 () (_ BitVec 64))

(assert (=> b!189666 (= lt!93932 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93912 () (_ BitVec 64))

(assert (=> b!189666 (= lt!93912 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93925 () Unit!5719)

(declare-fun addApplyDifferent!153 (ListLongMap!2437 (_ BitVec 64) V!5547 (_ BitVec 64)) Unit!5719)

(assert (=> b!189666 (= lt!93925 (addApplyDifferent!153 lt!93933 lt!93932 (minValue!3708 thiss!1248) lt!93912))))

(assert (=> b!189666 (= (apply!177 (+!292 lt!93933 (tuple2!3507 lt!93932 (minValue!3708 thiss!1248))) lt!93912) (apply!177 lt!93933 lt!93912))))

(declare-fun lt!93918 () Unit!5719)

(assert (=> b!189666 (= lt!93918 lt!93925)))

(declare-fun lt!93923 () ListLongMap!2437)

(assert (=> b!189666 (= lt!93923 (getCurrentListMapNoExtraKeys!207 (_keys!5834 thiss!1248) (array!8081 (store (arr!3809 (_values!3850 thiss!1248)) (index!4875 lt!93831) (ValueCellFull!1869 v!309)) (size!4129 (_values!3850 thiss!1248))) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun lt!93915 () (_ BitVec 64))

(assert (=> b!189666 (= lt!93915 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93929 () (_ BitVec 64))

(assert (=> b!189666 (= lt!93929 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93917 () Unit!5719)

(assert (=> b!189666 (= lt!93917 (addApplyDifferent!153 lt!93923 lt!93915 (zeroValue!3708 thiss!1248) lt!93929))))

(assert (=> b!189666 (= (apply!177 (+!292 lt!93923 (tuple2!3507 lt!93915 (zeroValue!3708 thiss!1248))) lt!93929) (apply!177 lt!93923 lt!93929))))

(declare-fun lt!93920 () Unit!5719)

(assert (=> b!189666 (= lt!93920 lt!93917)))

(declare-fun lt!93913 () ListLongMap!2437)

(assert (=> b!189666 (= lt!93913 (getCurrentListMapNoExtraKeys!207 (_keys!5834 thiss!1248) (array!8081 (store (arr!3809 (_values!3850 thiss!1248)) (index!4875 lt!93831) (ValueCellFull!1869 v!309)) (size!4129 (_values!3850 thiss!1248))) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun lt!93928 () (_ BitVec 64))

(assert (=> b!189666 (= lt!93928 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93924 () (_ BitVec 64))

(assert (=> b!189666 (= lt!93924 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189666 (= lt!93919 (addApplyDifferent!153 lt!93913 lt!93928 (minValue!3708 thiss!1248) lt!93924))))

(assert (=> b!189666 (= (apply!177 (+!292 lt!93913 (tuple2!3507 lt!93928 (minValue!3708 thiss!1248))) lt!93924) (apply!177 lt!93913 lt!93924))))

(declare-fun b!189667 () Bool)

(assert (=> b!189667 (= e!124826 e!124820)))

(assert (=> b!189667 (= c!34065 (and (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!189668 () Bool)

(assert (=> b!189668 (= e!124829 (= (apply!177 lt!93922 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3708 thiss!1248)))))

(declare-fun bm!19124 () Bool)

(declare-fun call!19124 () Bool)

(assert (=> bm!19124 (= call!19124 (contains!1335 lt!93922 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!189669 () Bool)

(assert (=> b!189669 (= e!124823 e!124827)))

(declare-fun res!89693 () Bool)

(assert (=> b!189669 (= res!89693 call!19124)))

(assert (=> b!189669 (=> (not res!89693) (not e!124827))))

(declare-fun b!189670 () Bool)

(declare-fun res!89694 () Bool)

(assert (=> b!189670 (=> (not res!89694) (not e!124825))))

(declare-fun e!124822 () Bool)

(assert (=> b!189670 (= res!89694 e!124822)))

(declare-fun res!89696 () Bool)

(assert (=> b!189670 (=> res!89696 e!124822)))

(assert (=> b!189670 (= res!89696 (not e!124817))))

(declare-fun res!89695 () Bool)

(assert (=> b!189670 (=> (not res!89695) (not e!124817))))

(assert (=> b!189670 (= res!89695 (bvslt #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))))))

(declare-fun b!189671 () Bool)

(assert (=> b!189671 (= e!124819 call!19122)))

(declare-fun b!189672 () Bool)

(assert (=> b!189672 (= e!124822 e!124824)))

(declare-fun res!89698 () Bool)

(assert (=> b!189672 (=> (not res!89698) (not e!124824))))

(assert (=> b!189672 (= res!89698 (contains!1335 lt!93922 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!189672 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))))))

(declare-fun b!189673 () Bool)

(assert (=> b!189673 (= e!124823 (not call!19124))))

(declare-fun b!189674 () Bool)

(assert (=> b!189674 (= e!124828 (not call!19121))))

(declare-fun b!189675 () Bool)

(declare-fun Unit!5725 () Unit!5719)

(assert (=> b!189675 (= e!124821 Unit!5725)))

(assert (= (and d!55641 c!34066) b!189660))

(assert (= (and d!55641 (not c!34066)) b!189667))

(assert (= (and b!189667 c!34065) b!189659))

(assert (= (and b!189667 (not c!34065)) b!189661))

(assert (= (and b!189661 c!34069) b!189671))

(assert (= (and b!189661 (not c!34069)) b!189662))

(assert (= (or b!189671 b!189662) bm!19123))

(assert (= (or b!189659 bm!19123) bm!19119))

(assert (= (or b!189659 b!189671) bm!19121))

(assert (= (or b!189660 bm!19119) bm!19120))

(assert (= (or b!189660 bm!19121) bm!19118))

(assert (= (and d!55641 res!89699) b!189664))

(assert (= (and d!55641 c!34064) b!189666))

(assert (= (and d!55641 (not c!34064)) b!189675))

(assert (= (and d!55641 res!89700) b!189670))

(assert (= (and b!189670 res!89695) b!189656))

(assert (= (and b!189670 (not res!89696)) b!189672))

(assert (= (and b!189672 res!89698) b!189665))

(assert (= (and b!189670 res!89694) b!189663))

(assert (= (and b!189663 c!34068) b!189657))

(assert (= (and b!189663 (not c!34068)) b!189674))

(assert (= (and b!189657 res!89697) b!189668))

(assert (= (or b!189657 b!189674) bm!19122))

(assert (= (and b!189663 res!89701) b!189655))

(assert (= (and b!189655 c!34067) b!189669))

(assert (= (and b!189655 (not c!34067)) b!189673))

(assert (= (and b!189669 res!89693) b!189658))

(assert (= (or b!189669 b!189673) bm!19124))

(declare-fun b_lambda!7357 () Bool)

(assert (=> (not b_lambda!7357) (not b!189665)))

(declare-fun t!7344 () Bool)

(declare-fun tb!2873 () Bool)

(assert (=> (and b!189528 (= (defaultEntry!3867 thiss!1248) (defaultEntry!3867 thiss!1248)) t!7344) tb!2873))

(declare-fun result!4881 () Bool)

(assert (=> tb!2873 (= result!4881 tp_is_empty!4425)))

(assert (=> b!189665 t!7344))

(declare-fun b_and!11313 () Bool)

(assert (= b_and!11309 (and (=> t!7344 result!4881) b_and!11313)))

(declare-fun m!215947 () Bool)

(assert (=> bm!19118 m!215947))

(declare-fun m!215949 () Bool)

(assert (=> bm!19124 m!215949))

(declare-fun m!215951 () Bool)

(assert (=> b!189665 m!215951))

(declare-fun m!215953 () Bool)

(assert (=> b!189665 m!215953))

(declare-fun m!215955 () Bool)

(assert (=> b!189665 m!215955))

(assert (=> b!189665 m!215955))

(declare-fun m!215957 () Bool)

(assert (=> b!189665 m!215957))

(declare-fun m!215959 () Bool)

(assert (=> b!189665 m!215959))

(assert (=> b!189665 m!215957))

(assert (=> b!189665 m!215951))

(declare-fun m!215961 () Bool)

(assert (=> bm!19120 m!215961))

(assert (=> d!55641 m!215923))

(declare-fun m!215963 () Bool)

(assert (=> b!189668 m!215963))

(declare-fun m!215965 () Bool)

(assert (=> b!189660 m!215965))

(assert (=> b!189664 m!215951))

(assert (=> b!189664 m!215951))

(declare-fun m!215967 () Bool)

(assert (=> b!189664 m!215967))

(declare-fun m!215969 () Bool)

(assert (=> b!189666 m!215969))

(assert (=> b!189666 m!215961))

(declare-fun m!215971 () Bool)

(assert (=> b!189666 m!215971))

(declare-fun m!215973 () Bool)

(assert (=> b!189666 m!215973))

(declare-fun m!215975 () Bool)

(assert (=> b!189666 m!215975))

(declare-fun m!215977 () Bool)

(assert (=> b!189666 m!215977))

(assert (=> b!189666 m!215951))

(assert (=> b!189666 m!215973))

(declare-fun m!215979 () Bool)

(assert (=> b!189666 m!215979))

(declare-fun m!215981 () Bool)

(assert (=> b!189666 m!215981))

(declare-fun m!215983 () Bool)

(assert (=> b!189666 m!215983))

(declare-fun m!215985 () Bool)

(assert (=> b!189666 m!215985))

(assert (=> b!189666 m!215985))

(declare-fun m!215987 () Bool)

(assert (=> b!189666 m!215987))

(declare-fun m!215989 () Bool)

(assert (=> b!189666 m!215989))

(declare-fun m!215991 () Bool)

(assert (=> b!189666 m!215991))

(declare-fun m!215993 () Bool)

(assert (=> b!189666 m!215993))

(assert (=> b!189666 m!215981))

(declare-fun m!215995 () Bool)

(assert (=> b!189666 m!215995))

(assert (=> b!189666 m!215991))

(declare-fun m!215997 () Bool)

(assert (=> b!189666 m!215997))

(assert (=> b!189672 m!215951))

(assert (=> b!189672 m!215951))

(declare-fun m!215999 () Bool)

(assert (=> b!189672 m!215999))

(assert (=> b!189656 m!215951))

(assert (=> b!189656 m!215951))

(assert (=> b!189656 m!215967))

(declare-fun m!216001 () Bool)

(assert (=> b!189658 m!216001))

(declare-fun m!216003 () Bool)

(assert (=> bm!19122 m!216003))

(assert (=> b!189527 d!55641))

(declare-fun d!55643 () Bool)

(declare-fun e!124832 () Bool)

(assert (=> d!55643 e!124832))

(declare-fun res!89706 () Bool)

(assert (=> d!55643 (=> (not res!89706) (not e!124832))))

(declare-fun lt!93942 () ListLongMap!2437)

(assert (=> d!55643 (= res!89706 (contains!1335 lt!93942 (_1!1763 (tuple2!3507 key!828 v!309))))))

(declare-fun lt!93944 () List!2429)

(assert (=> d!55643 (= lt!93942 (ListLongMap!2438 lt!93944))))

(declare-fun lt!93945 () Unit!5719)

(declare-fun lt!93943 () Unit!5719)

(assert (=> d!55643 (= lt!93945 lt!93943)))

(declare-datatypes ((Option!239 0))(
  ( (Some!238 (v!4178 V!5547)) (None!237) )
))
(declare-fun getValueByKey!233 (List!2429 (_ BitVec 64)) Option!239)

(assert (=> d!55643 (= (getValueByKey!233 lt!93944 (_1!1763 (tuple2!3507 key!828 v!309))) (Some!238 (_2!1763 (tuple2!3507 key!828 v!309))))))

(declare-fun lemmaContainsTupThenGetReturnValue!122 (List!2429 (_ BitVec 64) V!5547) Unit!5719)

(assert (=> d!55643 (= lt!93943 (lemmaContainsTupThenGetReturnValue!122 lt!93944 (_1!1763 (tuple2!3507 key!828 v!309)) (_2!1763 (tuple2!3507 key!828 v!309))))))

(declare-fun insertStrictlySorted!124 (List!2429 (_ BitVec 64) V!5547) List!2429)

(assert (=> d!55643 (= lt!93944 (insertStrictlySorted!124 (toList!1234 lt!93828) (_1!1763 (tuple2!3507 key!828 v!309)) (_2!1763 (tuple2!3507 key!828 v!309))))))

(assert (=> d!55643 (= (+!292 lt!93828 (tuple2!3507 key!828 v!309)) lt!93942)))

(declare-fun b!189682 () Bool)

(declare-fun res!89707 () Bool)

(assert (=> b!189682 (=> (not res!89707) (not e!124832))))

(assert (=> b!189682 (= res!89707 (= (getValueByKey!233 (toList!1234 lt!93942) (_1!1763 (tuple2!3507 key!828 v!309))) (Some!238 (_2!1763 (tuple2!3507 key!828 v!309)))))))

(declare-fun b!189683 () Bool)

(declare-fun contains!1337 (List!2429 tuple2!3506) Bool)

(assert (=> b!189683 (= e!124832 (contains!1337 (toList!1234 lt!93942) (tuple2!3507 key!828 v!309)))))

(assert (= (and d!55643 res!89706) b!189682))

(assert (= (and b!189682 res!89707) b!189683))

(declare-fun m!216005 () Bool)

(assert (=> d!55643 m!216005))

(declare-fun m!216007 () Bool)

(assert (=> d!55643 m!216007))

(declare-fun m!216009 () Bool)

(assert (=> d!55643 m!216009))

(declare-fun m!216011 () Bool)

(assert (=> d!55643 m!216011))

(declare-fun m!216013 () Bool)

(assert (=> b!189682 m!216013))

(declare-fun m!216015 () Bool)

(assert (=> b!189683 m!216015))

(assert (=> b!189527 d!55643))

(declare-fun d!55645 () Bool)

(declare-fun e!124838 () Bool)

(assert (=> d!55645 e!124838))

(declare-fun res!89710 () Bool)

(assert (=> d!55645 (=> res!89710 e!124838)))

(declare-fun lt!93955 () Bool)

(assert (=> d!55645 (= res!89710 (not lt!93955))))

(declare-fun lt!93956 () Bool)

(assert (=> d!55645 (= lt!93955 lt!93956)))

(declare-fun lt!93954 () Unit!5719)

(declare-fun e!124837 () Unit!5719)

(assert (=> d!55645 (= lt!93954 e!124837)))

(declare-fun c!34072 () Bool)

(assert (=> d!55645 (= c!34072 lt!93956)))

(declare-fun containsKey!237 (List!2429 (_ BitVec 64)) Bool)

(assert (=> d!55645 (= lt!93956 (containsKey!237 (toList!1234 lt!93828) key!828))))

(assert (=> d!55645 (= (contains!1335 lt!93828 key!828) lt!93955)))

(declare-fun b!189690 () Bool)

(declare-fun lt!93957 () Unit!5719)

(assert (=> b!189690 (= e!124837 lt!93957)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!186 (List!2429 (_ BitVec 64)) Unit!5719)

(assert (=> b!189690 (= lt!93957 (lemmaContainsKeyImpliesGetValueByKeyDefined!186 (toList!1234 lt!93828) key!828))))

(declare-fun isDefined!187 (Option!239) Bool)

(assert (=> b!189690 (isDefined!187 (getValueByKey!233 (toList!1234 lt!93828) key!828))))

(declare-fun b!189691 () Bool)

(declare-fun Unit!5726 () Unit!5719)

(assert (=> b!189691 (= e!124837 Unit!5726)))

(declare-fun b!189692 () Bool)

(assert (=> b!189692 (= e!124838 (isDefined!187 (getValueByKey!233 (toList!1234 lt!93828) key!828)))))

(assert (= (and d!55645 c!34072) b!189690))

(assert (= (and d!55645 (not c!34072)) b!189691))

(assert (= (and d!55645 (not res!89710)) b!189692))

(declare-fun m!216017 () Bool)

(assert (=> d!55645 m!216017))

(declare-fun m!216019 () Bool)

(assert (=> b!189690 m!216019))

(declare-fun m!216021 () Bool)

(assert (=> b!189690 m!216021))

(assert (=> b!189690 m!216021))

(declare-fun m!216023 () Bool)

(assert (=> b!189690 m!216023))

(assert (=> b!189692 m!216021))

(assert (=> b!189692 m!216021))

(assert (=> b!189692 m!216023))

(assert (=> b!189527 d!55645))

(declare-fun b!189693 () Bool)

(declare-fun e!124847 () Bool)

(declare-fun e!124845 () Bool)

(assert (=> b!189693 (= e!124847 e!124845)))

(declare-fun c!34076 () Bool)

(assert (=> b!189693 (= c!34076 (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!189694 () Bool)

(declare-fun e!124839 () Bool)

(assert (=> b!189694 (= e!124839 (validKeyInArray!0 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!189695 () Bool)

(declare-fun e!124850 () Bool)

(declare-fun e!124851 () Bool)

(assert (=> b!189695 (= e!124850 e!124851)))

(declare-fun res!89715 () Bool)

(declare-fun call!19128 () Bool)

(assert (=> b!189695 (= res!89715 call!19128)))

(assert (=> b!189695 (=> (not res!89715) (not e!124851))))

(declare-fun b!189696 () Bool)

(declare-fun e!124849 () Bool)

(declare-fun lt!93968 () ListLongMap!2437)

(assert (=> b!189696 (= e!124849 (= (apply!177 lt!93968 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3708 thiss!1248)))))

(declare-fun b!189697 () Bool)

(declare-fun e!124842 () ListLongMap!2437)

(declare-fun call!19129 () ListLongMap!2437)

(assert (=> b!189697 (= e!124842 call!19129)))

(declare-fun b!189698 () Bool)

(declare-fun e!124848 () ListLongMap!2437)

(declare-fun call!19132 () ListLongMap!2437)

(assert (=> b!189698 (= e!124848 (+!292 call!19132 (tuple2!3507 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3708 thiss!1248))))))

(declare-fun b!189699 () Bool)

(declare-fun c!34078 () Bool)

(assert (=> b!189699 (= c!34078 (and (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!124841 () ListLongMap!2437)

(assert (=> b!189699 (= e!124842 e!124841)))

(declare-fun bm!19126 () Bool)

(declare-fun call!19130 () ListLongMap!2437)

(declare-fun call!19133 () ListLongMap!2437)

(assert (=> bm!19126 (= call!19130 call!19133)))

(declare-fun b!189700 () Bool)

(declare-fun call!19134 () ListLongMap!2437)

(assert (=> b!189700 (= e!124841 call!19134)))

(declare-fun b!189701 () Bool)

(declare-fun res!89719 () Bool)

(assert (=> b!189701 (=> (not res!89719) (not e!124847))))

(assert (=> b!189701 (= res!89719 e!124850)))

(declare-fun c!34077 () Bool)

(assert (=> b!189701 (= c!34077 (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!19127 () Bool)

(assert (=> bm!19127 (= call!19133 (getCurrentListMapNoExtraKeys!207 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun bm!19128 () Bool)

(assert (=> bm!19128 (= call!19129 call!19132)))

(declare-fun b!189702 () Bool)

(declare-fun e!124840 () Bool)

(assert (=> b!189702 (= e!124840 (validKeyInArray!0 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19129 () Bool)

(assert (=> bm!19129 (= call!19128 (contains!1335 lt!93968 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!55647 () Bool)

(assert (=> d!55647 e!124847))

(declare-fun res!89718 () Bool)

(assert (=> d!55647 (=> (not res!89718) (not e!124847))))

(assert (=> d!55647 (= res!89718 (or (bvsge #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))))))))

(declare-fun lt!93972 () ListLongMap!2437)

(assert (=> d!55647 (= lt!93968 lt!93972)))

(declare-fun lt!93967 () Unit!5719)

(declare-fun e!124843 () Unit!5719)

(assert (=> d!55647 (= lt!93967 e!124843)))

(declare-fun c!34073 () Bool)

(assert (=> d!55647 (= c!34073 e!124840)))

(declare-fun res!89717 () Bool)

(assert (=> d!55647 (=> (not res!89717) (not e!124840))))

(assert (=> d!55647 (= res!89717 (bvslt #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))))))

(assert (=> d!55647 (= lt!93972 e!124848)))

(declare-fun c!34075 () Bool)

(assert (=> d!55647 (= c!34075 (and (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55647 (validMask!0 (mask!9056 thiss!1248))))

(assert (=> d!55647 (= (getCurrentListMap!877 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)) lt!93968)))

(declare-fun c!34074 () Bool)

(declare-fun bm!19125 () Bool)

(assert (=> bm!19125 (= call!19132 (+!292 (ite c!34075 call!19133 (ite c!34074 call!19130 call!19134)) (ite (or c!34075 c!34074) (tuple2!3507 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3708 thiss!1248)) (tuple2!3507 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3708 thiss!1248)))))))

(declare-fun b!189703 () Bool)

(declare-fun e!124846 () Bool)

(assert (=> b!189703 (= e!124846 (= (apply!177 lt!93968 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000)) (get!2193 (select (arr!3809 (_values!3850 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!515 (defaultEntry!3867 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!189703 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4129 (_values!3850 thiss!1248))))))

(assert (=> b!189703 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))))))

(declare-fun bm!19130 () Bool)

(assert (=> bm!19130 (= call!19134 call!19130)))

(declare-fun b!189704 () Bool)

(declare-fun lt!93965 () Unit!5719)

(assert (=> b!189704 (= e!124843 lt!93965)))

(declare-fun lt!93973 () ListLongMap!2437)

(assert (=> b!189704 (= lt!93973 (getCurrentListMapNoExtraKeys!207 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun lt!93977 () (_ BitVec 64))

(assert (=> b!189704 (= lt!93977 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93960 () (_ BitVec 64))

(assert (=> b!189704 (= lt!93960 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93976 () Unit!5719)

(assert (=> b!189704 (= lt!93976 (addStillContains!153 lt!93973 lt!93977 (zeroValue!3708 thiss!1248) lt!93960))))

(assert (=> b!189704 (contains!1335 (+!292 lt!93973 (tuple2!3507 lt!93977 (zeroValue!3708 thiss!1248))) lt!93960)))

(declare-fun lt!93962 () Unit!5719)

(assert (=> b!189704 (= lt!93962 lt!93976)))

(declare-fun lt!93979 () ListLongMap!2437)

(assert (=> b!189704 (= lt!93979 (getCurrentListMapNoExtraKeys!207 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun lt!93978 () (_ BitVec 64))

(assert (=> b!189704 (= lt!93978 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93958 () (_ BitVec 64))

(assert (=> b!189704 (= lt!93958 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93971 () Unit!5719)

(assert (=> b!189704 (= lt!93971 (addApplyDifferent!153 lt!93979 lt!93978 (minValue!3708 thiss!1248) lt!93958))))

(assert (=> b!189704 (= (apply!177 (+!292 lt!93979 (tuple2!3507 lt!93978 (minValue!3708 thiss!1248))) lt!93958) (apply!177 lt!93979 lt!93958))))

(declare-fun lt!93964 () Unit!5719)

(assert (=> b!189704 (= lt!93964 lt!93971)))

(declare-fun lt!93969 () ListLongMap!2437)

(assert (=> b!189704 (= lt!93969 (getCurrentListMapNoExtraKeys!207 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun lt!93961 () (_ BitVec 64))

(assert (=> b!189704 (= lt!93961 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93975 () (_ BitVec 64))

(assert (=> b!189704 (= lt!93975 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93963 () Unit!5719)

(assert (=> b!189704 (= lt!93963 (addApplyDifferent!153 lt!93969 lt!93961 (zeroValue!3708 thiss!1248) lt!93975))))

(assert (=> b!189704 (= (apply!177 (+!292 lt!93969 (tuple2!3507 lt!93961 (zeroValue!3708 thiss!1248))) lt!93975) (apply!177 lt!93969 lt!93975))))

(declare-fun lt!93966 () Unit!5719)

(assert (=> b!189704 (= lt!93966 lt!93963)))

(declare-fun lt!93959 () ListLongMap!2437)

(assert (=> b!189704 (= lt!93959 (getCurrentListMapNoExtraKeys!207 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3867 thiss!1248)))))

(declare-fun lt!93974 () (_ BitVec 64))

(assert (=> b!189704 (= lt!93974 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93970 () (_ BitVec 64))

(assert (=> b!189704 (= lt!93970 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189704 (= lt!93965 (addApplyDifferent!153 lt!93959 lt!93974 (minValue!3708 thiss!1248) lt!93970))))

(assert (=> b!189704 (= (apply!177 (+!292 lt!93959 (tuple2!3507 lt!93974 (minValue!3708 thiss!1248))) lt!93970) (apply!177 lt!93959 lt!93970))))

(declare-fun b!189705 () Bool)

(assert (=> b!189705 (= e!124848 e!124842)))

(assert (=> b!189705 (= c!34074 (and (not (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3604 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!189706 () Bool)

(assert (=> b!189706 (= e!124851 (= (apply!177 lt!93968 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3708 thiss!1248)))))

(declare-fun bm!19131 () Bool)

(declare-fun call!19131 () Bool)

(assert (=> bm!19131 (= call!19131 (contains!1335 lt!93968 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!189707 () Bool)

(assert (=> b!189707 (= e!124845 e!124849)))

(declare-fun res!89711 () Bool)

(assert (=> b!189707 (= res!89711 call!19131)))

(assert (=> b!189707 (=> (not res!89711) (not e!124849))))

(declare-fun b!189708 () Bool)

(declare-fun res!89712 () Bool)

(assert (=> b!189708 (=> (not res!89712) (not e!124847))))

(declare-fun e!124844 () Bool)

(assert (=> b!189708 (= res!89712 e!124844)))

(declare-fun res!89714 () Bool)

(assert (=> b!189708 (=> res!89714 e!124844)))

(assert (=> b!189708 (= res!89714 (not e!124839))))

(declare-fun res!89713 () Bool)

(assert (=> b!189708 (=> (not res!89713) (not e!124839))))

(assert (=> b!189708 (= res!89713 (bvslt #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))))))

(declare-fun b!189709 () Bool)

(assert (=> b!189709 (= e!124841 call!19129)))

(declare-fun b!189710 () Bool)

(assert (=> b!189710 (= e!124844 e!124846)))

(declare-fun res!89716 () Bool)

(assert (=> b!189710 (=> (not res!89716) (not e!124846))))

(assert (=> b!189710 (= res!89716 (contains!1335 lt!93968 (select (arr!3808 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!189710 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4128 (_keys!5834 thiss!1248))))))

(declare-fun b!189711 () Bool)

(assert (=> b!189711 (= e!124845 (not call!19131))))

(declare-fun b!189712 () Bool)

(assert (=> b!189712 (= e!124850 (not call!19128))))

(declare-fun b!189713 () Bool)

(declare-fun Unit!5727 () Unit!5719)

(assert (=> b!189713 (= e!124843 Unit!5727)))

(assert (= (and d!55647 c!34075) b!189698))

(assert (= (and d!55647 (not c!34075)) b!189705))

(assert (= (and b!189705 c!34074) b!189697))

(assert (= (and b!189705 (not c!34074)) b!189699))

(assert (= (and b!189699 c!34078) b!189709))

(assert (= (and b!189699 (not c!34078)) b!189700))

(assert (= (or b!189709 b!189700) bm!19130))

(assert (= (or b!189697 bm!19130) bm!19126))

(assert (= (or b!189697 b!189709) bm!19128))

(assert (= (or b!189698 bm!19126) bm!19127))

(assert (= (or b!189698 bm!19128) bm!19125))

(assert (= (and d!55647 res!89717) b!189702))

(assert (= (and d!55647 c!34073) b!189704))

(assert (= (and d!55647 (not c!34073)) b!189713))

(assert (= (and d!55647 res!89718) b!189708))

(assert (= (and b!189708 res!89713) b!189694))

(assert (= (and b!189708 (not res!89714)) b!189710))

(assert (= (and b!189710 res!89716) b!189703))

(assert (= (and b!189708 res!89712) b!189701))

(assert (= (and b!189701 c!34077) b!189695))

(assert (= (and b!189701 (not c!34077)) b!189712))

(assert (= (and b!189695 res!89715) b!189706))

(assert (= (or b!189695 b!189712) bm!19129))

(assert (= (and b!189701 res!89719) b!189693))

(assert (= (and b!189693 c!34076) b!189707))

(assert (= (and b!189693 (not c!34076)) b!189711))

(assert (= (and b!189707 res!89711) b!189696))

(assert (= (or b!189707 b!189711) bm!19131))

(declare-fun b_lambda!7359 () Bool)

(assert (=> (not b_lambda!7359) (not b!189703)))

(assert (=> b!189703 t!7344))

(declare-fun b_and!11315 () Bool)

(assert (= b_and!11313 (and (=> t!7344 result!4881) b_and!11315)))

(declare-fun m!216025 () Bool)

(assert (=> bm!19125 m!216025))

(declare-fun m!216027 () Bool)

(assert (=> bm!19131 m!216027))

(assert (=> b!189703 m!215951))

(declare-fun m!216029 () Bool)

(assert (=> b!189703 m!216029))

(declare-fun m!216031 () Bool)

(assert (=> b!189703 m!216031))

(assert (=> b!189703 m!216031))

(assert (=> b!189703 m!215957))

(declare-fun m!216033 () Bool)

(assert (=> b!189703 m!216033))

(assert (=> b!189703 m!215957))

(assert (=> b!189703 m!215951))

(declare-fun m!216035 () Bool)

(assert (=> bm!19127 m!216035))

(assert (=> d!55647 m!215923))

(declare-fun m!216037 () Bool)

(assert (=> b!189706 m!216037))

(declare-fun m!216039 () Bool)

(assert (=> b!189698 m!216039))

(assert (=> b!189702 m!215951))

(assert (=> b!189702 m!215951))

(assert (=> b!189702 m!215967))

(declare-fun m!216041 () Bool)

(assert (=> b!189704 m!216041))

(assert (=> b!189704 m!216035))

(declare-fun m!216043 () Bool)

(assert (=> b!189704 m!216043))

(declare-fun m!216045 () Bool)

(assert (=> b!189704 m!216045))

(declare-fun m!216047 () Bool)

(assert (=> b!189704 m!216047))

(declare-fun m!216049 () Bool)

(assert (=> b!189704 m!216049))

(assert (=> b!189704 m!215951))

(assert (=> b!189704 m!216045))

(declare-fun m!216051 () Bool)

(assert (=> b!189704 m!216051))

(declare-fun m!216053 () Bool)

(assert (=> b!189704 m!216053))

(declare-fun m!216055 () Bool)

(assert (=> b!189704 m!216055))

(declare-fun m!216057 () Bool)

(assert (=> b!189704 m!216057))

(assert (=> b!189704 m!216057))

(declare-fun m!216059 () Bool)

(assert (=> b!189704 m!216059))

(declare-fun m!216061 () Bool)

(assert (=> b!189704 m!216061))

(declare-fun m!216063 () Bool)

(assert (=> b!189704 m!216063))

(declare-fun m!216065 () Bool)

(assert (=> b!189704 m!216065))

(assert (=> b!189704 m!216053))

(declare-fun m!216067 () Bool)

(assert (=> b!189704 m!216067))

(assert (=> b!189704 m!216063))

(declare-fun m!216069 () Bool)

(assert (=> b!189704 m!216069))

(assert (=> b!189710 m!215951))

(assert (=> b!189710 m!215951))

(declare-fun m!216071 () Bool)

(assert (=> b!189710 m!216071))

(assert (=> b!189694 m!215951))

(assert (=> b!189694 m!215951))

(assert (=> b!189694 m!215967))

(declare-fun m!216073 () Bool)

(assert (=> b!189696 m!216073))

(declare-fun m!216075 () Bool)

(assert (=> bm!19129 m!216075))

(assert (=> b!189527 d!55647))

(declare-fun d!55649 () Bool)

(assert (=> d!55649 (= (array_inv!2459 (_keys!5834 thiss!1248)) (bvsge (size!4128 (_keys!5834 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189528 d!55649))

(declare-fun d!55651 () Bool)

(assert (=> d!55651 (= (array_inv!2460 (_values!3850 thiss!1248)) (bvsge (size!4129 (_values!3850 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189528 d!55651))

(declare-fun d!55653 () Bool)

(declare-fun e!124854 () Bool)

(assert (=> d!55653 e!124854))

(declare-fun res!89724 () Bool)

(assert (=> d!55653 (=> (not res!89724) (not e!124854))))

(declare-fun lt!93985 () SeekEntryResult!676)

(assert (=> d!55653 (= res!89724 ((_ is Found!676) lt!93985))))

(assert (=> d!55653 (= lt!93985 (seekEntryOrOpen!0 key!828 (_keys!5834 thiss!1248) (mask!9056 thiss!1248)))))

(declare-fun lt!93984 () Unit!5719)

(declare-fun choose!1024 (array!8078 array!8080 (_ BitVec 32) (_ BitVec 32) V!5547 V!5547 (_ BitVec 64) Int) Unit!5719)

(assert (=> d!55653 (= lt!93984 (choose!1024 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) key!828 (defaultEntry!3867 thiss!1248)))))

(assert (=> d!55653 (validMask!0 (mask!9056 thiss!1248))))

(assert (=> d!55653 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!167 (_keys!5834 thiss!1248) (_values!3850 thiss!1248) (mask!9056 thiss!1248) (extraKeys!3604 thiss!1248) (zeroValue!3708 thiss!1248) (minValue!3708 thiss!1248) key!828 (defaultEntry!3867 thiss!1248)) lt!93984)))

(declare-fun b!189718 () Bool)

(declare-fun res!89725 () Bool)

(assert (=> b!189718 (=> (not res!89725) (not e!124854))))

(assert (=> b!189718 (= res!89725 (inRange!0 (index!4875 lt!93985) (mask!9056 thiss!1248)))))

(declare-fun b!189719 () Bool)

(assert (=> b!189719 (= e!124854 (= (select (arr!3808 (_keys!5834 thiss!1248)) (index!4875 lt!93985)) key!828))))

(assert (=> b!189719 (and (bvsge (index!4875 lt!93985) #b00000000000000000000000000000000) (bvslt (index!4875 lt!93985) (size!4128 (_keys!5834 thiss!1248))))))

(assert (= (and d!55653 res!89724) b!189718))

(assert (= (and b!189718 res!89725) b!189719))

(assert (=> d!55653 m!215873))

(declare-fun m!216077 () Bool)

(assert (=> d!55653 m!216077))

(assert (=> d!55653 m!215923))

(declare-fun m!216079 () Bool)

(assert (=> b!189718 m!216079))

(declare-fun m!216081 () Bool)

(assert (=> b!189719 m!216081))

(assert (=> b!189526 d!55653))

(declare-fun d!55655 () Bool)

(assert (=> d!55655 (= (inRange!0 (index!4875 lt!93831) (mask!9056 thiss!1248)) (and (bvsge (index!4875 lt!93831) #b00000000000000000000000000000000) (bvslt (index!4875 lt!93831) (bvadd (mask!9056 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!189526 d!55655))

(declare-fun b!189726 () Bool)

(declare-fun e!124860 () Bool)

(assert (=> b!189726 (= e!124860 tp_is_empty!4425)))

(declare-fun mapNonEmpty!7639 () Bool)

(declare-fun mapRes!7639 () Bool)

(declare-fun tp!16801 () Bool)

(assert (=> mapNonEmpty!7639 (= mapRes!7639 (and tp!16801 e!124860))))

(declare-fun mapValue!7639 () ValueCell!1869)

(declare-fun mapKey!7639 () (_ BitVec 32))

(declare-fun mapRest!7639 () (Array (_ BitVec 32) ValueCell!1869))

(assert (=> mapNonEmpty!7639 (= mapRest!7633 (store mapRest!7639 mapKey!7639 mapValue!7639))))

(declare-fun mapIsEmpty!7639 () Bool)

(assert (=> mapIsEmpty!7639 mapRes!7639))

(declare-fun condMapEmpty!7639 () Bool)

(declare-fun mapDefault!7639 () ValueCell!1869)

(assert (=> mapNonEmpty!7633 (= condMapEmpty!7639 (= mapRest!7633 ((as const (Array (_ BitVec 32) ValueCell!1869)) mapDefault!7639)))))

(declare-fun e!124859 () Bool)

(assert (=> mapNonEmpty!7633 (= tp!16792 (and e!124859 mapRes!7639))))

(declare-fun b!189727 () Bool)

(assert (=> b!189727 (= e!124859 tp_is_empty!4425)))

(assert (= (and mapNonEmpty!7633 condMapEmpty!7639) mapIsEmpty!7639))

(assert (= (and mapNonEmpty!7633 (not condMapEmpty!7639)) mapNonEmpty!7639))

(assert (= (and mapNonEmpty!7639 ((_ is ValueCellFull!1869) mapValue!7639)) b!189726))

(assert (= (and mapNonEmpty!7633 ((_ is ValueCellFull!1869) mapDefault!7639)) b!189727))

(declare-fun m!216083 () Bool)

(assert (=> mapNonEmpty!7639 m!216083))

(declare-fun b_lambda!7361 () Bool)

(assert (= b_lambda!7359 (or (and b!189528 b_free!4653) b_lambda!7361)))

(declare-fun b_lambda!7363 () Bool)

(assert (= b_lambda!7357 (or (and b!189528 b_free!4653) b_lambda!7363)))

(check-sat (not b!189566) b_and!11315 (not bm!19118) (not b!189704) (not b_next!4653) (not d!55639) (not b!189694) (not b!189706) (not b!189604) (not bm!19124) (not b!189682) (not bm!19131) (not mapNonEmpty!7639) (not b!189660) (not bm!19120) (not b!189703) (not bm!19125) (not bm!19103) (not b!189656) (not b!189665) (not b!189683) (not d!55645) (not b!189672) (not b!189612) (not bm!19129) tp_is_empty!4425 (not b!189702) (not b!189710) (not b!189565) (not b!189666) (not bm!19122) (not b!189668) (not d!55653) (not b!189567) (not bm!19102) (not d!55641) (not b!189692) (not b!189698) (not b!189690) (not b!189718) (not d!55647) (not b_lambda!7361) (not d!55633) (not b_lambda!7363) (not d!55635) (not d!55637) (not bm!19127) (not d!55643) (not b!189664) (not b!189696) (not b!189658))
(check-sat b_and!11315 (not b_next!4653))

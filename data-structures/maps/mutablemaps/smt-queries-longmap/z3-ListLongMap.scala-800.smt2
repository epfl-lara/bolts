; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19236 () Bool)

(assert start!19236)

(declare-fun b!189103 () Bool)

(declare-fun b_free!4641 () Bool)

(declare-fun b_next!4641 () Bool)

(assert (=> b!189103 (= b_free!4641 (not b_next!4641))))

(declare-fun tp!16753 () Bool)

(declare-fun b_and!11295 () Bool)

(assert (=> b!189103 (= tp!16753 b_and!11295)))

(declare-fun mapIsEmpty!7612 () Bool)

(declare-fun mapRes!7612 () Bool)

(assert (=> mapIsEmpty!7612 mapRes!7612))

(declare-fun b!189099 () Bool)

(declare-fun e!124463 () Bool)

(declare-fun tp_is_empty!4413 () Bool)

(assert (=> b!189099 (= e!124463 tp_is_empty!4413)))

(declare-fun b!189100 () Bool)

(declare-fun e!124458 () Bool)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!189100 (= e!124458 (not (validKeyInArray!0 key!828)))))

(declare-fun b!189101 () Bool)

(declare-datatypes ((Unit!5700 0))(
  ( (Unit!5701) )
))
(declare-fun e!124459 () Unit!5700)

(declare-fun lt!93639 () Unit!5700)

(assert (=> b!189101 (= e!124459 lt!93639)))

(declare-datatypes ((V!5531 0))(
  ( (V!5532 (val!2251 Int)) )
))
(declare-datatypes ((ValueCell!1863 0))(
  ( (ValueCellFull!1863 (v!4167 V!5531)) (EmptyCell!1863) )
))
(declare-datatypes ((array!8052 0))(
  ( (array!8053 (arr!3796 (Array (_ BitVec 32) (_ BitVec 64))) (size!4116 (_ BitVec 32))) )
))
(declare-datatypes ((array!8054 0))(
  ( (array!8055 (arr!3797 (Array (_ BitVec 32) ValueCell!1863)) (size!4117 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2634 0))(
  ( (LongMapFixedSize!2635 (defaultEntry!3858 Int) (mask!9039 (_ BitVec 32)) (extraKeys!3595 (_ BitVec 32)) (zeroValue!3699 V!5531) (minValue!3699 V!5531) (_size!1366 (_ BitVec 32)) (_keys!5823 array!8052) (_values!3841 array!8054) (_vacant!1366 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2634)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!162 (array!8052 array!8054 (_ BitVec 32) (_ BitVec 32) V!5531 V!5531 (_ BitVec 64) Int) Unit!5700)

(assert (=> b!189101 (= lt!93639 (lemmaInListMapThenSeekEntryOrOpenFindsIt!162 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) key!828 (defaultEntry!3858 thiss!1248)))))

(declare-fun res!89419 () Bool)

(declare-datatypes ((SeekEntryResult!670 0))(
  ( (MissingZero!670 (index!4850 (_ BitVec 32))) (Found!670 (index!4851 (_ BitVec 32))) (Intermediate!670 (undefined!1482 Bool) (index!4852 (_ BitVec 32)) (x!20410 (_ BitVec 32))) (Undefined!670) (MissingVacant!670 (index!4853 (_ BitVec 32))) )
))
(declare-fun lt!93638 () SeekEntryResult!670)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!189101 (= res!89419 (inRange!0 (index!4851 lt!93638) (mask!9039 thiss!1248)))))

(declare-fun e!124454 () Bool)

(assert (=> b!189101 (=> (not res!89419) (not e!124454))))

(assert (=> b!189101 e!124454))

(declare-fun b!189102 () Bool)

(declare-fun e!124457 () Bool)

(declare-fun e!124461 () Bool)

(assert (=> b!189102 (= e!124457 e!124461)))

(declare-fun res!89418 () Bool)

(assert (=> b!189102 (=> (not res!89418) (not e!124461))))

(get-info :version)

(assert (=> b!189102 (= res!89418 (and (not ((_ is Undefined!670) lt!93638)) (not ((_ is MissingVacant!670) lt!93638)) (not ((_ is MissingZero!670) lt!93638)) ((_ is Found!670) lt!93638)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8052 (_ BitVec 32)) SeekEntryResult!670)

(assert (=> b!189102 (= lt!93638 (seekEntryOrOpen!0 key!828 (_keys!5823 thiss!1248) (mask!9039 thiss!1248)))))

(declare-fun e!124462 () Bool)

(declare-fun e!124460 () Bool)

(declare-fun array_inv!2451 (array!8052) Bool)

(declare-fun array_inv!2452 (array!8054) Bool)

(assert (=> b!189103 (= e!124462 (and tp!16753 tp_is_empty!4413 (array_inv!2451 (_keys!5823 thiss!1248)) (array_inv!2452 (_values!3841 thiss!1248)) e!124460))))

(declare-fun b!189104 () Bool)

(assert (=> b!189104 (= e!124454 (= (select (arr!3796 (_keys!5823 thiss!1248)) (index!4851 lt!93638)) key!828))))

(declare-fun b!189105 () Bool)

(declare-fun res!89425 () Bool)

(assert (=> b!189105 (=> (not res!89425) (not e!124457))))

(assert (=> b!189105 (= res!89425 (not (= key!828 (bvneg key!828))))))

(declare-fun res!89422 () Bool)

(assert (=> start!19236 (=> (not res!89422) (not e!124457))))

(declare-fun valid!1075 (LongMapFixedSize!2634) Bool)

(assert (=> start!19236 (= res!89422 (valid!1075 thiss!1248))))

(assert (=> start!19236 e!124457))

(assert (=> start!19236 e!124462))

(assert (=> start!19236 true))

(declare-fun mapNonEmpty!7612 () Bool)

(declare-fun tp!16752 () Bool)

(declare-fun e!124455 () Bool)

(assert (=> mapNonEmpty!7612 (= mapRes!7612 (and tp!16752 e!124455))))

(declare-fun mapKey!7612 () (_ BitVec 32))

(declare-fun mapValue!7612 () ValueCell!1863)

(declare-fun mapRest!7612 () (Array (_ BitVec 32) ValueCell!1863))

(assert (=> mapNonEmpty!7612 (= (arr!3797 (_values!3841 thiss!1248)) (store mapRest!7612 mapKey!7612 mapValue!7612))))

(declare-fun b!189106 () Bool)

(declare-fun res!89424 () Bool)

(assert (=> b!189106 (=> (not res!89424) (not e!124458))))

(assert (=> b!189106 (= res!89424 (and (= (size!4117 (_values!3841 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9039 thiss!1248))) (= (size!4116 (_keys!5823 thiss!1248)) (size!4117 (_values!3841 thiss!1248))) (bvsge (mask!9039 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3595 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3595 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!189107 () Bool)

(assert (=> b!189107 (= e!124461 e!124458)))

(declare-fun res!89423 () Bool)

(assert (=> b!189107 (=> (not res!89423) (not e!124458))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!189107 (= res!89423 (validMask!0 (mask!9039 thiss!1248)))))

(declare-fun lt!93636 () Unit!5700)

(assert (=> b!189107 (= lt!93636 e!124459)))

(declare-fun c!33973 () Bool)

(declare-datatypes ((tuple2!3500 0))(
  ( (tuple2!3501 (_1!1760 (_ BitVec 64)) (_2!1760 V!5531)) )
))
(declare-datatypes ((List!2423 0))(
  ( (Nil!2420) (Cons!2419 (h!3056 tuple2!3500) (t!7333 List!2423)) )
))
(declare-datatypes ((ListLongMap!2431 0))(
  ( (ListLongMap!2432 (toList!1231 List!2423)) )
))
(declare-fun contains!1331 (ListLongMap!2431 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!874 (array!8052 array!8054 (_ BitVec 32) (_ BitVec 32) V!5531 V!5531 (_ BitVec 32) Int) ListLongMap!2431)

(assert (=> b!189107 (= c!33973 (contains!1331 (getCurrentListMap!874 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248)) key!828))))

(declare-fun b!189108 () Bool)

(assert (=> b!189108 (= e!124455 tp_is_empty!4413)))

(declare-fun b!189109 () Bool)

(declare-fun res!89417 () Bool)

(assert (=> b!189109 (=> (not res!89417) (not e!124458))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8052 (_ BitVec 32)) Bool)

(assert (=> b!189109 (= res!89417 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5823 thiss!1248) (mask!9039 thiss!1248)))))

(declare-fun b!189110 () Bool)

(declare-fun Unit!5702 () Unit!5700)

(assert (=> b!189110 (= e!124459 Unit!5702)))

(declare-fun lt!93637 () Unit!5700)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!162 (array!8052 array!8054 (_ BitVec 32) (_ BitVec 32) V!5531 V!5531 (_ BitVec 64) Int) Unit!5700)

(assert (=> b!189110 (= lt!93637 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!162 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) key!828 (defaultEntry!3858 thiss!1248)))))

(assert (=> b!189110 false))

(declare-fun b!189111 () Bool)

(declare-fun res!89421 () Bool)

(assert (=> b!189111 (=> (not res!89421) (not e!124458))))

(assert (=> b!189111 (= res!89421 (and (bvsge (index!4851 lt!93638) #b00000000000000000000000000000000) (bvslt (index!4851 lt!93638) (size!4116 (_keys!5823 thiss!1248)))))))

(declare-fun b!189112 () Bool)

(declare-fun res!89420 () Bool)

(assert (=> b!189112 (=> (not res!89420) (not e!124458))))

(declare-datatypes ((List!2424 0))(
  ( (Nil!2421) (Cons!2420 (h!3057 (_ BitVec 64)) (t!7334 List!2424)) )
))
(declare-fun arrayNoDuplicates!0 (array!8052 (_ BitVec 32) List!2424) Bool)

(assert (=> b!189112 (= res!89420 (arrayNoDuplicates!0 (_keys!5823 thiss!1248) #b00000000000000000000000000000000 Nil!2421))))

(declare-fun b!189113 () Bool)

(assert (=> b!189113 (= e!124460 (and e!124463 mapRes!7612))))

(declare-fun condMapEmpty!7612 () Bool)

(declare-fun mapDefault!7612 () ValueCell!1863)

(assert (=> b!189113 (= condMapEmpty!7612 (= (arr!3797 (_values!3841 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1863)) mapDefault!7612)))))

(assert (= (and start!19236 res!89422) b!189105))

(assert (= (and b!189105 res!89425) b!189102))

(assert (= (and b!189102 res!89418) b!189107))

(assert (= (and b!189107 c!33973) b!189101))

(assert (= (and b!189107 (not c!33973)) b!189110))

(assert (= (and b!189101 res!89419) b!189104))

(assert (= (and b!189107 res!89423) b!189106))

(assert (= (and b!189106 res!89424) b!189109))

(assert (= (and b!189109 res!89417) b!189112))

(assert (= (and b!189112 res!89420) b!189111))

(assert (= (and b!189111 res!89421) b!189100))

(assert (= (and b!189113 condMapEmpty!7612) mapIsEmpty!7612))

(assert (= (and b!189113 (not condMapEmpty!7612)) mapNonEmpty!7612))

(assert (= (and mapNonEmpty!7612 ((_ is ValueCellFull!1863) mapValue!7612)) b!189108))

(assert (= (and b!189113 ((_ is ValueCellFull!1863) mapDefault!7612)) b!189099))

(assert (= b!189103 b!189113))

(assert (= start!19236 b!189103))

(declare-fun m!215555 () Bool)

(assert (=> b!189101 m!215555))

(declare-fun m!215557 () Bool)

(assert (=> b!189101 m!215557))

(declare-fun m!215559 () Bool)

(assert (=> b!189110 m!215559))

(declare-fun m!215561 () Bool)

(assert (=> b!189100 m!215561))

(declare-fun m!215563 () Bool)

(assert (=> mapNonEmpty!7612 m!215563))

(declare-fun m!215565 () Bool)

(assert (=> b!189104 m!215565))

(declare-fun m!215567 () Bool)

(assert (=> b!189112 m!215567))

(declare-fun m!215569 () Bool)

(assert (=> start!19236 m!215569))

(declare-fun m!215571 () Bool)

(assert (=> b!189102 m!215571))

(declare-fun m!215573 () Bool)

(assert (=> b!189107 m!215573))

(declare-fun m!215575 () Bool)

(assert (=> b!189107 m!215575))

(assert (=> b!189107 m!215575))

(declare-fun m!215577 () Bool)

(assert (=> b!189107 m!215577))

(declare-fun m!215579 () Bool)

(assert (=> b!189103 m!215579))

(declare-fun m!215581 () Bool)

(assert (=> b!189103 m!215581))

(declare-fun m!215583 () Bool)

(assert (=> b!189109 m!215583))

(check-sat (not b_next!4641) (not b!189103) (not b!189101) (not start!19236) tp_is_empty!4413 (not b!189100) (not b!189112) (not b!189109) b_and!11295 (not mapNonEmpty!7612) (not b!189107) (not b!189110) (not b!189102))
(check-sat b_and!11295 (not b_next!4641))
(get-model)

(declare-fun lt!93660 () SeekEntryResult!670)

(declare-fun e!124502 () SeekEntryResult!670)

(declare-fun b!189171 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8052 (_ BitVec 32)) SeekEntryResult!670)

(assert (=> b!189171 (= e!124502 (seekKeyOrZeroReturnVacant!0 (x!20410 lt!93660) (index!4852 lt!93660) (index!4852 lt!93660) key!828 (_keys!5823 thiss!1248) (mask!9039 thiss!1248)))))

(declare-fun b!189172 () Bool)

(declare-fun e!124501 () SeekEntryResult!670)

(assert (=> b!189172 (= e!124501 Undefined!670)))

(declare-fun b!189173 () Bool)

(declare-fun e!124500 () SeekEntryResult!670)

(assert (=> b!189173 (= e!124500 (Found!670 (index!4852 lt!93660)))))

(declare-fun b!189174 () Bool)

(assert (=> b!189174 (= e!124501 e!124500)))

(declare-fun lt!93659 () (_ BitVec 64))

(assert (=> b!189174 (= lt!93659 (select (arr!3796 (_keys!5823 thiss!1248)) (index!4852 lt!93660)))))

(declare-fun c!33985 () Bool)

(assert (=> b!189174 (= c!33985 (= lt!93659 key!828))))

(declare-fun b!189175 () Bool)

(assert (=> b!189175 (= e!124502 (MissingZero!670 (index!4852 lt!93660)))))

(declare-fun d!55603 () Bool)

(declare-fun lt!93658 () SeekEntryResult!670)

(assert (=> d!55603 (and (or ((_ is Undefined!670) lt!93658) (not ((_ is Found!670) lt!93658)) (and (bvsge (index!4851 lt!93658) #b00000000000000000000000000000000) (bvslt (index!4851 lt!93658) (size!4116 (_keys!5823 thiss!1248))))) (or ((_ is Undefined!670) lt!93658) ((_ is Found!670) lt!93658) (not ((_ is MissingZero!670) lt!93658)) (and (bvsge (index!4850 lt!93658) #b00000000000000000000000000000000) (bvslt (index!4850 lt!93658) (size!4116 (_keys!5823 thiss!1248))))) (or ((_ is Undefined!670) lt!93658) ((_ is Found!670) lt!93658) ((_ is MissingZero!670) lt!93658) (not ((_ is MissingVacant!670) lt!93658)) (and (bvsge (index!4853 lt!93658) #b00000000000000000000000000000000) (bvslt (index!4853 lt!93658) (size!4116 (_keys!5823 thiss!1248))))) (or ((_ is Undefined!670) lt!93658) (ite ((_ is Found!670) lt!93658) (= (select (arr!3796 (_keys!5823 thiss!1248)) (index!4851 lt!93658)) key!828) (ite ((_ is MissingZero!670) lt!93658) (= (select (arr!3796 (_keys!5823 thiss!1248)) (index!4850 lt!93658)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!670) lt!93658) (= (select (arr!3796 (_keys!5823 thiss!1248)) (index!4853 lt!93658)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55603 (= lt!93658 e!124501)))

(declare-fun c!33983 () Bool)

(assert (=> d!55603 (= c!33983 (and ((_ is Intermediate!670) lt!93660) (undefined!1482 lt!93660)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8052 (_ BitVec 32)) SeekEntryResult!670)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55603 (= lt!93660 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9039 thiss!1248)) key!828 (_keys!5823 thiss!1248) (mask!9039 thiss!1248)))))

(assert (=> d!55603 (validMask!0 (mask!9039 thiss!1248))))

(assert (=> d!55603 (= (seekEntryOrOpen!0 key!828 (_keys!5823 thiss!1248) (mask!9039 thiss!1248)) lt!93658)))

(declare-fun b!189176 () Bool)

(declare-fun c!33984 () Bool)

(assert (=> b!189176 (= c!33984 (= lt!93659 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!189176 (= e!124500 e!124502)))

(assert (= (and d!55603 c!33983) b!189172))

(assert (= (and d!55603 (not c!33983)) b!189174))

(assert (= (and b!189174 c!33985) b!189173))

(assert (= (and b!189174 (not c!33985)) b!189176))

(assert (= (and b!189176 c!33984) b!189175))

(assert (= (and b!189176 (not c!33984)) b!189171))

(declare-fun m!215615 () Bool)

(assert (=> b!189171 m!215615))

(declare-fun m!215617 () Bool)

(assert (=> b!189174 m!215617))

(declare-fun m!215619 () Bool)

(assert (=> d!55603 m!215619))

(assert (=> d!55603 m!215573))

(declare-fun m!215621 () Bool)

(assert (=> d!55603 m!215621))

(declare-fun m!215623 () Bool)

(assert (=> d!55603 m!215623))

(declare-fun m!215625 () Bool)

(assert (=> d!55603 m!215625))

(assert (=> d!55603 m!215625))

(declare-fun m!215627 () Bool)

(assert (=> d!55603 m!215627))

(assert (=> b!189102 d!55603))

(declare-fun b!189187 () Bool)

(declare-fun e!124511 () Bool)

(declare-fun contains!1332 (List!2424 (_ BitVec 64)) Bool)

(assert (=> b!189187 (= e!124511 (contains!1332 Nil!2421 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19067 () Bool)

(declare-fun call!19070 () Bool)

(declare-fun c!33988 () Bool)

(assert (=> bm!19067 (= call!19070 (arrayNoDuplicates!0 (_keys!5823 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33988 (Cons!2420 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000) Nil!2421) Nil!2421)))))

(declare-fun d!55605 () Bool)

(declare-fun res!89460 () Bool)

(declare-fun e!124512 () Bool)

(assert (=> d!55605 (=> res!89460 e!124512)))

(assert (=> d!55605 (= res!89460 (bvsge #b00000000000000000000000000000000 (size!4116 (_keys!5823 thiss!1248))))))

(assert (=> d!55605 (= (arrayNoDuplicates!0 (_keys!5823 thiss!1248) #b00000000000000000000000000000000 Nil!2421) e!124512)))

(declare-fun b!189188 () Bool)

(declare-fun e!124514 () Bool)

(assert (=> b!189188 (= e!124512 e!124514)))

(declare-fun res!89459 () Bool)

(assert (=> b!189188 (=> (not res!89459) (not e!124514))))

(assert (=> b!189188 (= res!89459 (not e!124511))))

(declare-fun res!89461 () Bool)

(assert (=> b!189188 (=> (not res!89461) (not e!124511))))

(assert (=> b!189188 (= res!89461 (validKeyInArray!0 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!189189 () Bool)

(declare-fun e!124513 () Bool)

(assert (=> b!189189 (= e!124513 call!19070)))

(declare-fun b!189190 () Bool)

(assert (=> b!189190 (= e!124513 call!19070)))

(declare-fun b!189191 () Bool)

(assert (=> b!189191 (= e!124514 e!124513)))

(assert (=> b!189191 (= c!33988 (validKeyInArray!0 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55605 (not res!89460)) b!189188))

(assert (= (and b!189188 res!89461) b!189187))

(assert (= (and b!189188 res!89459) b!189191))

(assert (= (and b!189191 c!33988) b!189190))

(assert (= (and b!189191 (not c!33988)) b!189189))

(assert (= (or b!189190 b!189189) bm!19067))

(declare-fun m!215629 () Bool)

(assert (=> b!189187 m!215629))

(assert (=> b!189187 m!215629))

(declare-fun m!215631 () Bool)

(assert (=> b!189187 m!215631))

(assert (=> bm!19067 m!215629))

(declare-fun m!215633 () Bool)

(assert (=> bm!19067 m!215633))

(assert (=> b!189188 m!215629))

(assert (=> b!189188 m!215629))

(declare-fun m!215635 () Bool)

(assert (=> b!189188 m!215635))

(assert (=> b!189191 m!215629))

(assert (=> b!189191 m!215629))

(assert (=> b!189191 m!215635))

(assert (=> b!189112 d!55605))

(declare-fun d!55607 () Bool)

(assert (=> d!55607 (= (validMask!0 (mask!9039 thiss!1248)) (and (or (= (mask!9039 thiss!1248) #b00000000000000000000000000000111) (= (mask!9039 thiss!1248) #b00000000000000000000000000001111) (= (mask!9039 thiss!1248) #b00000000000000000000000000011111) (= (mask!9039 thiss!1248) #b00000000000000000000000000111111) (= (mask!9039 thiss!1248) #b00000000000000000000000001111111) (= (mask!9039 thiss!1248) #b00000000000000000000000011111111) (= (mask!9039 thiss!1248) #b00000000000000000000000111111111) (= (mask!9039 thiss!1248) #b00000000000000000000001111111111) (= (mask!9039 thiss!1248) #b00000000000000000000011111111111) (= (mask!9039 thiss!1248) #b00000000000000000000111111111111) (= (mask!9039 thiss!1248) #b00000000000000000001111111111111) (= (mask!9039 thiss!1248) #b00000000000000000011111111111111) (= (mask!9039 thiss!1248) #b00000000000000000111111111111111) (= (mask!9039 thiss!1248) #b00000000000000001111111111111111) (= (mask!9039 thiss!1248) #b00000000000000011111111111111111) (= (mask!9039 thiss!1248) #b00000000000000111111111111111111) (= (mask!9039 thiss!1248) #b00000000000001111111111111111111) (= (mask!9039 thiss!1248) #b00000000000011111111111111111111) (= (mask!9039 thiss!1248) #b00000000000111111111111111111111) (= (mask!9039 thiss!1248) #b00000000001111111111111111111111) (= (mask!9039 thiss!1248) #b00000000011111111111111111111111) (= (mask!9039 thiss!1248) #b00000000111111111111111111111111) (= (mask!9039 thiss!1248) #b00000001111111111111111111111111) (= (mask!9039 thiss!1248) #b00000011111111111111111111111111) (= (mask!9039 thiss!1248) #b00000111111111111111111111111111) (= (mask!9039 thiss!1248) #b00001111111111111111111111111111) (= (mask!9039 thiss!1248) #b00011111111111111111111111111111) (= (mask!9039 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9039 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!189107 d!55607))

(declare-fun d!55609 () Bool)

(declare-fun e!124520 () Bool)

(assert (=> d!55609 e!124520))

(declare-fun res!89464 () Bool)

(assert (=> d!55609 (=> res!89464 e!124520)))

(declare-fun lt!93669 () Bool)

(assert (=> d!55609 (= res!89464 (not lt!93669))))

(declare-fun lt!93671 () Bool)

(assert (=> d!55609 (= lt!93669 lt!93671)))

(declare-fun lt!93670 () Unit!5700)

(declare-fun e!124519 () Unit!5700)

(assert (=> d!55609 (= lt!93670 e!124519)))

(declare-fun c!33991 () Bool)

(assert (=> d!55609 (= c!33991 lt!93671)))

(declare-fun containsKey!236 (List!2423 (_ BitVec 64)) Bool)

(assert (=> d!55609 (= lt!93671 (containsKey!236 (toList!1231 (getCurrentListMap!874 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248))) key!828))))

(assert (=> d!55609 (= (contains!1331 (getCurrentListMap!874 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248)) key!828) lt!93669)))

(declare-fun b!189198 () Bool)

(declare-fun lt!93672 () Unit!5700)

(assert (=> b!189198 (= e!124519 lt!93672)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!185 (List!2423 (_ BitVec 64)) Unit!5700)

(assert (=> b!189198 (= lt!93672 (lemmaContainsKeyImpliesGetValueByKeyDefined!185 (toList!1231 (getCurrentListMap!874 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248))) key!828))))

(declare-datatypes ((Option!238 0))(
  ( (Some!237 (v!4169 V!5531)) (None!236) )
))
(declare-fun isDefined!186 (Option!238) Bool)

(declare-fun getValueByKey!232 (List!2423 (_ BitVec 64)) Option!238)

(assert (=> b!189198 (isDefined!186 (getValueByKey!232 (toList!1231 (getCurrentListMap!874 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248))) key!828))))

(declare-fun b!189199 () Bool)

(declare-fun Unit!5706 () Unit!5700)

(assert (=> b!189199 (= e!124519 Unit!5706)))

(declare-fun b!189200 () Bool)

(assert (=> b!189200 (= e!124520 (isDefined!186 (getValueByKey!232 (toList!1231 (getCurrentListMap!874 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248))) key!828)))))

(assert (= (and d!55609 c!33991) b!189198))

(assert (= (and d!55609 (not c!33991)) b!189199))

(assert (= (and d!55609 (not res!89464)) b!189200))

(declare-fun m!215637 () Bool)

(assert (=> d!55609 m!215637))

(declare-fun m!215639 () Bool)

(assert (=> b!189198 m!215639))

(declare-fun m!215641 () Bool)

(assert (=> b!189198 m!215641))

(assert (=> b!189198 m!215641))

(declare-fun m!215643 () Bool)

(assert (=> b!189198 m!215643))

(assert (=> b!189200 m!215641))

(assert (=> b!189200 m!215641))

(assert (=> b!189200 m!215643))

(assert (=> b!189107 d!55609))

(declare-fun b!189243 () Bool)

(declare-fun e!124551 () Bool)

(declare-fun e!124552 () Bool)

(assert (=> b!189243 (= e!124551 e!124552)))

(declare-fun res!89484 () Bool)

(assert (=> b!189243 (=> (not res!89484) (not e!124552))))

(declare-fun lt!93736 () ListLongMap!2431)

(assert (=> b!189243 (= res!89484 (contains!1331 lt!93736 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!189243 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4116 (_keys!5823 thiss!1248))))))

(declare-fun b!189244 () Bool)

(declare-fun e!124547 () Unit!5700)

(declare-fun Unit!5707 () Unit!5700)

(assert (=> b!189244 (= e!124547 Unit!5707)))

(declare-fun b!189245 () Bool)

(declare-fun e!124553 () ListLongMap!2431)

(declare-fun call!19085 () ListLongMap!2431)

(declare-fun +!291 (ListLongMap!2431 tuple2!3500) ListLongMap!2431)

(assert (=> b!189245 (= e!124553 (+!291 call!19085 (tuple2!3501 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3699 thiss!1248))))))

(declare-fun b!189246 () Bool)

(declare-fun e!124558 () Bool)

(declare-fun call!19087 () Bool)

(assert (=> b!189246 (= e!124558 (not call!19087))))

(declare-fun b!189247 () Bool)

(declare-fun e!124555 () Bool)

(assert (=> b!189247 (= e!124555 (validKeyInArray!0 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!189248 () Bool)

(declare-fun lt!93727 () Unit!5700)

(assert (=> b!189248 (= e!124547 lt!93727)))

(declare-fun lt!93719 () ListLongMap!2431)

(declare-fun getCurrentListMapNoExtraKeys!206 (array!8052 array!8054 (_ BitVec 32) (_ BitVec 32) V!5531 V!5531 (_ BitVec 32) Int) ListLongMap!2431)

(assert (=> b!189248 (= lt!93719 (getCurrentListMapNoExtraKeys!206 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248)))))

(declare-fun lt!93731 () (_ BitVec 64))

(assert (=> b!189248 (= lt!93731 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93718 () (_ BitVec 64))

(assert (=> b!189248 (= lt!93718 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93723 () Unit!5700)

(declare-fun addStillContains!152 (ListLongMap!2431 (_ BitVec 64) V!5531 (_ BitVec 64)) Unit!5700)

(assert (=> b!189248 (= lt!93723 (addStillContains!152 lt!93719 lt!93731 (zeroValue!3699 thiss!1248) lt!93718))))

(assert (=> b!189248 (contains!1331 (+!291 lt!93719 (tuple2!3501 lt!93731 (zeroValue!3699 thiss!1248))) lt!93718)))

(declare-fun lt!93724 () Unit!5700)

(assert (=> b!189248 (= lt!93724 lt!93723)))

(declare-fun lt!93734 () ListLongMap!2431)

(assert (=> b!189248 (= lt!93734 (getCurrentListMapNoExtraKeys!206 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248)))))

(declare-fun lt!93733 () (_ BitVec 64))

(assert (=> b!189248 (= lt!93733 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93726 () (_ BitVec 64))

(assert (=> b!189248 (= lt!93726 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93728 () Unit!5700)

(declare-fun addApplyDifferent!152 (ListLongMap!2431 (_ BitVec 64) V!5531 (_ BitVec 64)) Unit!5700)

(assert (=> b!189248 (= lt!93728 (addApplyDifferent!152 lt!93734 lt!93733 (minValue!3699 thiss!1248) lt!93726))))

(declare-fun apply!176 (ListLongMap!2431 (_ BitVec 64)) V!5531)

(assert (=> b!189248 (= (apply!176 (+!291 lt!93734 (tuple2!3501 lt!93733 (minValue!3699 thiss!1248))) lt!93726) (apply!176 lt!93734 lt!93726))))

(declare-fun lt!93735 () Unit!5700)

(assert (=> b!189248 (= lt!93735 lt!93728)))

(declare-fun lt!93722 () ListLongMap!2431)

(assert (=> b!189248 (= lt!93722 (getCurrentListMapNoExtraKeys!206 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248)))))

(declare-fun lt!93732 () (_ BitVec 64))

(assert (=> b!189248 (= lt!93732 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93725 () (_ BitVec 64))

(assert (=> b!189248 (= lt!93725 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93729 () Unit!5700)

(assert (=> b!189248 (= lt!93729 (addApplyDifferent!152 lt!93722 lt!93732 (zeroValue!3699 thiss!1248) lt!93725))))

(assert (=> b!189248 (= (apply!176 (+!291 lt!93722 (tuple2!3501 lt!93732 (zeroValue!3699 thiss!1248))) lt!93725) (apply!176 lt!93722 lt!93725))))

(declare-fun lt!93717 () Unit!5700)

(assert (=> b!189248 (= lt!93717 lt!93729)))

(declare-fun lt!93730 () ListLongMap!2431)

(assert (=> b!189248 (= lt!93730 (getCurrentListMapNoExtraKeys!206 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248)))))

(declare-fun lt!93721 () (_ BitVec 64))

(assert (=> b!189248 (= lt!93721 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93720 () (_ BitVec 64))

(assert (=> b!189248 (= lt!93720 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189248 (= lt!93727 (addApplyDifferent!152 lt!93730 lt!93721 (minValue!3699 thiss!1248) lt!93720))))

(assert (=> b!189248 (= (apply!176 (+!291 lt!93730 (tuple2!3501 lt!93721 (minValue!3699 thiss!1248))) lt!93720) (apply!176 lt!93730 lt!93720))))

(declare-fun b!189249 () Bool)

(declare-fun e!124556 () ListLongMap!2431)

(declare-fun call!19090 () ListLongMap!2431)

(assert (=> b!189249 (= e!124556 call!19090)))

(declare-fun bm!19082 () Bool)

(declare-fun call!19091 () ListLongMap!2431)

(assert (=> bm!19082 (= call!19090 call!19091)))

(declare-fun b!189250 () Bool)

(declare-fun e!124554 () Bool)

(declare-fun e!124550 () Bool)

(assert (=> b!189250 (= e!124554 e!124550)))

(declare-fun res!89485 () Bool)

(declare-fun call!19086 () Bool)

(assert (=> b!189250 (= res!89485 call!19086)))

(assert (=> b!189250 (=> (not res!89485) (not e!124550))))

(declare-fun d!55611 () Bool)

(declare-fun e!124559 () Bool)

(assert (=> d!55611 e!124559))

(declare-fun res!89491 () Bool)

(assert (=> d!55611 (=> (not res!89491) (not e!124559))))

(assert (=> d!55611 (= res!89491 (or (bvsge #b00000000000000000000000000000000 (size!4116 (_keys!5823 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4116 (_keys!5823 thiss!1248))))))))

(declare-fun lt!93737 () ListLongMap!2431)

(assert (=> d!55611 (= lt!93736 lt!93737)))

(declare-fun lt!93738 () Unit!5700)

(assert (=> d!55611 (= lt!93738 e!124547)))

(declare-fun c!34008 () Bool)

(assert (=> d!55611 (= c!34008 e!124555)))

(declare-fun res!89487 () Bool)

(assert (=> d!55611 (=> (not res!89487) (not e!124555))))

(assert (=> d!55611 (= res!89487 (bvslt #b00000000000000000000000000000000 (size!4116 (_keys!5823 thiss!1248))))))

(assert (=> d!55611 (= lt!93737 e!124553)))

(declare-fun c!34005 () Bool)

(assert (=> d!55611 (= c!34005 (and (not (= (bvand (extraKeys!3595 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3595 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55611 (validMask!0 (mask!9039 thiss!1248))))

(assert (=> d!55611 (= (getCurrentListMap!874 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248)) lt!93736)))

(declare-fun b!189251 () Bool)

(declare-fun res!89489 () Bool)

(assert (=> b!189251 (=> (not res!89489) (not e!124559))))

(assert (=> b!189251 (= res!89489 e!124551)))

(declare-fun res!89490 () Bool)

(assert (=> b!189251 (=> res!89490 e!124551)))

(declare-fun e!124557 () Bool)

(assert (=> b!189251 (= res!89490 (not e!124557))))

(declare-fun res!89486 () Bool)

(assert (=> b!189251 (=> (not res!89486) (not e!124557))))

(assert (=> b!189251 (= res!89486 (bvslt #b00000000000000000000000000000000 (size!4116 (_keys!5823 thiss!1248))))))

(declare-fun b!189252 () Bool)

(declare-fun e!124548 () Bool)

(assert (=> b!189252 (= e!124548 (= (apply!176 lt!93736 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3699 thiss!1248)))))

(declare-fun bm!19083 () Bool)

(declare-fun call!19088 () ListLongMap!2431)

(assert (=> bm!19083 (= call!19088 (getCurrentListMapNoExtraKeys!206 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3858 thiss!1248)))))

(declare-fun b!189253 () Bool)

(declare-fun c!34009 () Bool)

(assert (=> b!189253 (= c!34009 (and (not (= (bvand (extraKeys!3595 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3595 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!124549 () ListLongMap!2431)

(assert (=> b!189253 (= e!124549 e!124556)))

(declare-fun bm!19084 () Bool)

(assert (=> bm!19084 (= call!19086 (contains!1331 lt!93736 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!189254 () Bool)

(assert (=> b!189254 (= e!124550 (= (apply!176 lt!93736 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3699 thiss!1248)))))

(declare-fun b!189255 () Bool)

(assert (=> b!189255 (= e!124559 e!124558)))

(declare-fun c!34004 () Bool)

(assert (=> b!189255 (= c!34004 (not (= (bvand (extraKeys!3595 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19085 () Bool)

(declare-fun c!34007 () Bool)

(assert (=> bm!19085 (= call!19085 (+!291 (ite c!34005 call!19088 (ite c!34007 call!19091 call!19090)) (ite (or c!34005 c!34007) (tuple2!3501 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3699 thiss!1248)) (tuple2!3501 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3699 thiss!1248)))))))

(declare-fun b!189256 () Bool)

(declare-fun call!19089 () ListLongMap!2431)

(assert (=> b!189256 (= e!124549 call!19089)))

(declare-fun b!189257 () Bool)

(assert (=> b!189257 (= e!124558 e!124548)))

(declare-fun res!89488 () Bool)

(assert (=> b!189257 (= res!89488 call!19087)))

(assert (=> b!189257 (=> (not res!89488) (not e!124548))))

(declare-fun b!189258 () Bool)

(assert (=> b!189258 (= e!124553 e!124549)))

(assert (=> b!189258 (= c!34007 (and (not (= (bvand (extraKeys!3595 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3595 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!19086 () Bool)

(assert (=> bm!19086 (= call!19087 (contains!1331 lt!93736 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!189259 () Bool)

(assert (=> b!189259 (= e!124554 (not call!19086))))

(declare-fun b!189260 () Bool)

(assert (=> b!189260 (= e!124556 call!19089)))

(declare-fun bm!19087 () Bool)

(assert (=> bm!19087 (= call!19089 call!19085)))

(declare-fun bm!19088 () Bool)

(assert (=> bm!19088 (= call!19091 call!19088)))

(declare-fun b!189261 () Bool)

(declare-fun get!2188 (ValueCell!1863 V!5531) V!5531)

(declare-fun dynLambda!514 (Int (_ BitVec 64)) V!5531)

(assert (=> b!189261 (= e!124552 (= (apply!176 lt!93736 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000)) (get!2188 (select (arr!3797 (_values!3841 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!514 (defaultEntry!3858 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!189261 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4117 (_values!3841 thiss!1248))))))

(assert (=> b!189261 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4116 (_keys!5823 thiss!1248))))))

(declare-fun b!189262 () Bool)

(declare-fun res!89483 () Bool)

(assert (=> b!189262 (=> (not res!89483) (not e!124559))))

(assert (=> b!189262 (= res!89483 e!124554)))

(declare-fun c!34006 () Bool)

(assert (=> b!189262 (= c!34006 (not (= (bvand (extraKeys!3595 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!189263 () Bool)

(assert (=> b!189263 (= e!124557 (validKeyInArray!0 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55611 c!34005) b!189245))

(assert (= (and d!55611 (not c!34005)) b!189258))

(assert (= (and b!189258 c!34007) b!189256))

(assert (= (and b!189258 (not c!34007)) b!189253))

(assert (= (and b!189253 c!34009) b!189260))

(assert (= (and b!189253 (not c!34009)) b!189249))

(assert (= (or b!189260 b!189249) bm!19082))

(assert (= (or b!189256 bm!19082) bm!19088))

(assert (= (or b!189256 b!189260) bm!19087))

(assert (= (or b!189245 bm!19088) bm!19083))

(assert (= (or b!189245 bm!19087) bm!19085))

(assert (= (and d!55611 res!89487) b!189247))

(assert (= (and d!55611 c!34008) b!189248))

(assert (= (and d!55611 (not c!34008)) b!189244))

(assert (= (and d!55611 res!89491) b!189251))

(assert (= (and b!189251 res!89486) b!189263))

(assert (= (and b!189251 (not res!89490)) b!189243))

(assert (= (and b!189243 res!89484) b!189261))

(assert (= (and b!189251 res!89489) b!189262))

(assert (= (and b!189262 c!34006) b!189250))

(assert (= (and b!189262 (not c!34006)) b!189259))

(assert (= (and b!189250 res!89485) b!189254))

(assert (= (or b!189250 b!189259) bm!19084))

(assert (= (and b!189262 res!89483) b!189255))

(assert (= (and b!189255 c!34004) b!189257))

(assert (= (and b!189255 (not c!34004)) b!189246))

(assert (= (and b!189257 res!89488) b!189252))

(assert (= (or b!189257 b!189246) bm!19086))

(declare-fun b_lambda!7353 () Bool)

(assert (=> (not b_lambda!7353) (not b!189261)))

(declare-fun t!7337 () Bool)

(declare-fun tb!2871 () Bool)

(assert (=> (and b!189103 (= (defaultEntry!3858 thiss!1248) (defaultEntry!3858 thiss!1248)) t!7337) tb!2871))

(declare-fun result!4875 () Bool)

(assert (=> tb!2871 (= result!4875 tp_is_empty!4413)))

(assert (=> b!189261 t!7337))

(declare-fun b_and!11299 () Bool)

(assert (= b_and!11295 (and (=> t!7337 result!4875) b_and!11299)))

(assert (=> b!189247 m!215629))

(assert (=> b!189247 m!215629))

(assert (=> b!189247 m!215635))

(declare-fun m!215645 () Bool)

(assert (=> bm!19085 m!215645))

(declare-fun m!215647 () Bool)

(assert (=> bm!19084 m!215647))

(assert (=> d!55611 m!215573))

(declare-fun m!215649 () Bool)

(assert (=> b!189254 m!215649))

(declare-fun m!215651 () Bool)

(assert (=> bm!19083 m!215651))

(declare-fun m!215653 () Bool)

(assert (=> bm!19086 m!215653))

(declare-fun m!215655 () Bool)

(assert (=> b!189252 m!215655))

(declare-fun m!215657 () Bool)

(assert (=> b!189248 m!215657))

(declare-fun m!215659 () Bool)

(assert (=> b!189248 m!215659))

(declare-fun m!215661 () Bool)

(assert (=> b!189248 m!215661))

(declare-fun m!215663 () Bool)

(assert (=> b!189248 m!215663))

(declare-fun m!215665 () Bool)

(assert (=> b!189248 m!215665))

(declare-fun m!215667 () Bool)

(assert (=> b!189248 m!215667))

(declare-fun m!215669 () Bool)

(assert (=> b!189248 m!215669))

(declare-fun m!215671 () Bool)

(assert (=> b!189248 m!215671))

(declare-fun m!215673 () Bool)

(assert (=> b!189248 m!215673))

(declare-fun m!215675 () Bool)

(assert (=> b!189248 m!215675))

(assert (=> b!189248 m!215671))

(declare-fun m!215677 () Bool)

(assert (=> b!189248 m!215677))

(assert (=> b!189248 m!215629))

(assert (=> b!189248 m!215651))

(assert (=> b!189248 m!215667))

(declare-fun m!215679 () Bool)

(assert (=> b!189248 m!215679))

(assert (=> b!189248 m!215657))

(declare-fun m!215681 () Bool)

(assert (=> b!189248 m!215681))

(assert (=> b!189248 m!215681))

(declare-fun m!215683 () Bool)

(assert (=> b!189248 m!215683))

(declare-fun m!215685 () Bool)

(assert (=> b!189248 m!215685))

(assert (=> b!189243 m!215629))

(assert (=> b!189243 m!215629))

(declare-fun m!215687 () Bool)

(assert (=> b!189243 m!215687))

(declare-fun m!215689 () Bool)

(assert (=> b!189245 m!215689))

(assert (=> b!189263 m!215629))

(assert (=> b!189263 m!215629))

(assert (=> b!189263 m!215635))

(declare-fun m!215691 () Bool)

(assert (=> b!189261 m!215691))

(declare-fun m!215693 () Bool)

(assert (=> b!189261 m!215693))

(assert (=> b!189261 m!215629))

(declare-fun m!215695 () Bool)

(assert (=> b!189261 m!215695))

(assert (=> b!189261 m!215629))

(assert (=> b!189261 m!215693))

(assert (=> b!189261 m!215691))

(declare-fun m!215697 () Bool)

(assert (=> b!189261 m!215697))

(assert (=> b!189107 d!55611))

(declare-fun d!55613 () Bool)

(assert (=> d!55613 (= (array_inv!2451 (_keys!5823 thiss!1248)) (bvsge (size!4116 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189103 d!55613))

(declare-fun d!55615 () Bool)

(assert (=> d!55615 (= (array_inv!2452 (_values!3841 thiss!1248)) (bvsge (size!4117 (_values!3841 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189103 d!55615))

(declare-fun d!55617 () Bool)

(declare-fun res!89498 () Bool)

(declare-fun e!124562 () Bool)

(assert (=> d!55617 (=> (not res!89498) (not e!124562))))

(declare-fun simpleValid!191 (LongMapFixedSize!2634) Bool)

(assert (=> d!55617 (= res!89498 (simpleValid!191 thiss!1248))))

(assert (=> d!55617 (= (valid!1075 thiss!1248) e!124562)))

(declare-fun b!189272 () Bool)

(declare-fun res!89499 () Bool)

(assert (=> b!189272 (=> (not res!89499) (not e!124562))))

(declare-fun arrayCountValidKeys!0 (array!8052 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!189272 (= res!89499 (= (arrayCountValidKeys!0 (_keys!5823 thiss!1248) #b00000000000000000000000000000000 (size!4116 (_keys!5823 thiss!1248))) (_size!1366 thiss!1248)))))

(declare-fun b!189273 () Bool)

(declare-fun res!89500 () Bool)

(assert (=> b!189273 (=> (not res!89500) (not e!124562))))

(assert (=> b!189273 (= res!89500 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5823 thiss!1248) (mask!9039 thiss!1248)))))

(declare-fun b!189274 () Bool)

(assert (=> b!189274 (= e!124562 (arrayNoDuplicates!0 (_keys!5823 thiss!1248) #b00000000000000000000000000000000 Nil!2421))))

(assert (= (and d!55617 res!89498) b!189272))

(assert (= (and b!189272 res!89499) b!189273))

(assert (= (and b!189273 res!89500) b!189274))

(declare-fun m!215699 () Bool)

(assert (=> d!55617 m!215699))

(declare-fun m!215701 () Bool)

(assert (=> b!189272 m!215701))

(assert (=> b!189273 m!215583))

(assert (=> b!189274 m!215567))

(assert (=> start!19236 d!55617))

(declare-fun bm!19091 () Bool)

(declare-fun call!19094 () Bool)

(assert (=> bm!19091 (= call!19094 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5823 thiss!1248) (mask!9039 thiss!1248)))))

(declare-fun d!55619 () Bool)

(declare-fun res!89505 () Bool)

(declare-fun e!124570 () Bool)

(assert (=> d!55619 (=> res!89505 e!124570)))

(assert (=> d!55619 (= res!89505 (bvsge #b00000000000000000000000000000000 (size!4116 (_keys!5823 thiss!1248))))))

(assert (=> d!55619 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5823 thiss!1248) (mask!9039 thiss!1248)) e!124570)))

(declare-fun b!189283 () Bool)

(declare-fun e!124571 () Bool)

(assert (=> b!189283 (= e!124570 e!124571)))

(declare-fun c!34012 () Bool)

(assert (=> b!189283 (= c!34012 (validKeyInArray!0 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!189284 () Bool)

(declare-fun e!124569 () Bool)

(assert (=> b!189284 (= e!124569 call!19094)))

(declare-fun b!189285 () Bool)

(assert (=> b!189285 (= e!124571 e!124569)))

(declare-fun lt!93745 () (_ BitVec 64))

(assert (=> b!189285 (= lt!93745 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93747 () Unit!5700)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8052 (_ BitVec 64) (_ BitVec 32)) Unit!5700)

(assert (=> b!189285 (= lt!93747 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5823 thiss!1248) lt!93745 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!8052 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!189285 (arrayContainsKey!0 (_keys!5823 thiss!1248) lt!93745 #b00000000000000000000000000000000)))

(declare-fun lt!93746 () Unit!5700)

(assert (=> b!189285 (= lt!93746 lt!93747)))

(declare-fun res!89506 () Bool)

(assert (=> b!189285 (= res!89506 (= (seekEntryOrOpen!0 (select (arr!3796 (_keys!5823 thiss!1248)) #b00000000000000000000000000000000) (_keys!5823 thiss!1248) (mask!9039 thiss!1248)) (Found!670 #b00000000000000000000000000000000)))))

(assert (=> b!189285 (=> (not res!89506) (not e!124569))))

(declare-fun b!189286 () Bool)

(assert (=> b!189286 (= e!124571 call!19094)))

(assert (= (and d!55619 (not res!89505)) b!189283))

(assert (= (and b!189283 c!34012) b!189285))

(assert (= (and b!189283 (not c!34012)) b!189286))

(assert (= (and b!189285 res!89506) b!189284))

(assert (= (or b!189284 b!189286) bm!19091))

(declare-fun m!215703 () Bool)

(assert (=> bm!19091 m!215703))

(assert (=> b!189283 m!215629))

(assert (=> b!189283 m!215629))

(assert (=> b!189283 m!215635))

(assert (=> b!189285 m!215629))

(declare-fun m!215705 () Bool)

(assert (=> b!189285 m!215705))

(declare-fun m!215707 () Bool)

(assert (=> b!189285 m!215707))

(assert (=> b!189285 m!215629))

(declare-fun m!215709 () Bool)

(assert (=> b!189285 m!215709))

(assert (=> b!189109 d!55619))

(declare-fun d!55621 () Bool)

(assert (=> d!55621 (= (validKeyInArray!0 key!828) (and (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!189100 d!55621))

(declare-fun b!189303 () Bool)

(declare-fun e!124580 () Bool)

(declare-fun call!19100 () Bool)

(assert (=> b!189303 (= e!124580 (not call!19100))))

(declare-fun b!189304 () Bool)

(declare-fun e!124581 () Bool)

(assert (=> b!189304 (= e!124581 e!124580)))

(declare-fun res!89516 () Bool)

(declare-fun call!19099 () Bool)

(assert (=> b!189304 (= res!89516 call!19099)))

(assert (=> b!189304 (=> (not res!89516) (not e!124580))))

(declare-fun d!55623 () Bool)

(assert (=> d!55623 e!124581))

(declare-fun c!34018 () Bool)

(declare-fun lt!93752 () SeekEntryResult!670)

(assert (=> d!55623 (= c!34018 ((_ is MissingZero!670) lt!93752))))

(assert (=> d!55623 (= lt!93752 (seekEntryOrOpen!0 key!828 (_keys!5823 thiss!1248) (mask!9039 thiss!1248)))))

(declare-fun lt!93753 () Unit!5700)

(declare-fun choose!1020 (array!8052 array!8054 (_ BitVec 32) (_ BitVec 32) V!5531 V!5531 (_ BitVec 64) Int) Unit!5700)

(assert (=> d!55623 (= lt!93753 (choose!1020 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) key!828 (defaultEntry!3858 thiss!1248)))))

(assert (=> d!55623 (validMask!0 (mask!9039 thiss!1248))))

(assert (=> d!55623 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!162 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) key!828 (defaultEntry!3858 thiss!1248)) lt!93753)))

(declare-fun b!189305 () Bool)

(declare-fun e!124583 () Bool)

(assert (=> b!189305 (= e!124581 e!124583)))

(declare-fun c!34017 () Bool)

(assert (=> b!189305 (= c!34017 ((_ is MissingVacant!670) lt!93752))))

(declare-fun b!189306 () Bool)

(declare-fun e!124582 () Bool)

(assert (=> b!189306 (= e!124582 (not call!19100))))

(declare-fun b!189307 () Bool)

(declare-fun res!89518 () Bool)

(assert (=> b!189307 (=> (not res!89518) (not e!124582))))

(assert (=> b!189307 (= res!89518 call!19099)))

(assert (=> b!189307 (= e!124583 e!124582)))

(declare-fun bm!19096 () Bool)

(assert (=> bm!19096 (= call!19099 (inRange!0 (ite c!34018 (index!4850 lt!93752) (index!4853 lt!93752)) (mask!9039 thiss!1248)))))

(declare-fun b!189308 () Bool)

(assert (=> b!189308 (= e!124583 ((_ is Undefined!670) lt!93752))))

(declare-fun b!189309 () Bool)

(assert (=> b!189309 (and (bvsge (index!4850 lt!93752) #b00000000000000000000000000000000) (bvslt (index!4850 lt!93752) (size!4116 (_keys!5823 thiss!1248))))))

(declare-fun res!89517 () Bool)

(assert (=> b!189309 (= res!89517 (= (select (arr!3796 (_keys!5823 thiss!1248)) (index!4850 lt!93752)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!189309 (=> (not res!89517) (not e!124580))))

(declare-fun b!189310 () Bool)

(declare-fun res!89515 () Bool)

(assert (=> b!189310 (=> (not res!89515) (not e!124582))))

(assert (=> b!189310 (= res!89515 (= (select (arr!3796 (_keys!5823 thiss!1248)) (index!4853 lt!93752)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!189310 (and (bvsge (index!4853 lt!93752) #b00000000000000000000000000000000) (bvslt (index!4853 lt!93752) (size!4116 (_keys!5823 thiss!1248))))))

(declare-fun bm!19097 () Bool)

(assert (=> bm!19097 (= call!19100 (arrayContainsKey!0 (_keys!5823 thiss!1248) key!828 #b00000000000000000000000000000000))))

(assert (= (and d!55623 c!34018) b!189304))

(assert (= (and d!55623 (not c!34018)) b!189305))

(assert (= (and b!189304 res!89516) b!189309))

(assert (= (and b!189309 res!89517) b!189303))

(assert (= (and b!189305 c!34017) b!189307))

(assert (= (and b!189305 (not c!34017)) b!189308))

(assert (= (and b!189307 res!89518) b!189310))

(assert (= (and b!189310 res!89515) b!189306))

(assert (= (or b!189304 b!189307) bm!19096))

(assert (= (or b!189303 b!189306) bm!19097))

(assert (=> d!55623 m!215571))

(declare-fun m!215711 () Bool)

(assert (=> d!55623 m!215711))

(assert (=> d!55623 m!215573))

(declare-fun m!215713 () Bool)

(assert (=> b!189310 m!215713))

(declare-fun m!215715 () Bool)

(assert (=> b!189309 m!215715))

(declare-fun m!215717 () Bool)

(assert (=> bm!19097 m!215717))

(declare-fun m!215719 () Bool)

(assert (=> bm!19096 m!215719))

(assert (=> b!189110 d!55623))

(declare-fun d!55625 () Bool)

(declare-fun e!124586 () Bool)

(assert (=> d!55625 e!124586))

(declare-fun res!89524 () Bool)

(assert (=> d!55625 (=> (not res!89524) (not e!124586))))

(declare-fun lt!93758 () SeekEntryResult!670)

(assert (=> d!55625 (= res!89524 ((_ is Found!670) lt!93758))))

(assert (=> d!55625 (= lt!93758 (seekEntryOrOpen!0 key!828 (_keys!5823 thiss!1248) (mask!9039 thiss!1248)))))

(declare-fun lt!93759 () Unit!5700)

(declare-fun choose!1021 (array!8052 array!8054 (_ BitVec 32) (_ BitVec 32) V!5531 V!5531 (_ BitVec 64) Int) Unit!5700)

(assert (=> d!55625 (= lt!93759 (choose!1021 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) key!828 (defaultEntry!3858 thiss!1248)))))

(assert (=> d!55625 (validMask!0 (mask!9039 thiss!1248))))

(assert (=> d!55625 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!162 (_keys!5823 thiss!1248) (_values!3841 thiss!1248) (mask!9039 thiss!1248) (extraKeys!3595 thiss!1248) (zeroValue!3699 thiss!1248) (minValue!3699 thiss!1248) key!828 (defaultEntry!3858 thiss!1248)) lt!93759)))

(declare-fun b!189315 () Bool)

(declare-fun res!89523 () Bool)

(assert (=> b!189315 (=> (not res!89523) (not e!124586))))

(assert (=> b!189315 (= res!89523 (inRange!0 (index!4851 lt!93758) (mask!9039 thiss!1248)))))

(declare-fun b!189316 () Bool)

(assert (=> b!189316 (= e!124586 (= (select (arr!3796 (_keys!5823 thiss!1248)) (index!4851 lt!93758)) key!828))))

(assert (=> b!189316 (and (bvsge (index!4851 lt!93758) #b00000000000000000000000000000000) (bvslt (index!4851 lt!93758) (size!4116 (_keys!5823 thiss!1248))))))

(assert (= (and d!55625 res!89524) b!189315))

(assert (= (and b!189315 res!89523) b!189316))

(assert (=> d!55625 m!215571))

(declare-fun m!215721 () Bool)

(assert (=> d!55625 m!215721))

(assert (=> d!55625 m!215573))

(declare-fun m!215723 () Bool)

(assert (=> b!189315 m!215723))

(declare-fun m!215725 () Bool)

(assert (=> b!189316 m!215725))

(assert (=> b!189101 d!55625))

(declare-fun d!55627 () Bool)

(assert (=> d!55627 (= (inRange!0 (index!4851 lt!93638) (mask!9039 thiss!1248)) (and (bvsge (index!4851 lt!93638) #b00000000000000000000000000000000) (bvslt (index!4851 lt!93638) (bvadd (mask!9039 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!189101 d!55627))

(declare-fun mapNonEmpty!7618 () Bool)

(declare-fun mapRes!7618 () Bool)

(declare-fun tp!16762 () Bool)

(declare-fun e!124592 () Bool)

(assert (=> mapNonEmpty!7618 (= mapRes!7618 (and tp!16762 e!124592))))

(declare-fun mapKey!7618 () (_ BitVec 32))

(declare-fun mapValue!7618 () ValueCell!1863)

(declare-fun mapRest!7618 () (Array (_ BitVec 32) ValueCell!1863))

(assert (=> mapNonEmpty!7618 (= mapRest!7612 (store mapRest!7618 mapKey!7618 mapValue!7618))))

(declare-fun condMapEmpty!7618 () Bool)

(declare-fun mapDefault!7618 () ValueCell!1863)

(assert (=> mapNonEmpty!7612 (= condMapEmpty!7618 (= mapRest!7612 ((as const (Array (_ BitVec 32) ValueCell!1863)) mapDefault!7618)))))

(declare-fun e!124591 () Bool)

(assert (=> mapNonEmpty!7612 (= tp!16752 (and e!124591 mapRes!7618))))

(declare-fun b!189324 () Bool)

(assert (=> b!189324 (= e!124591 tp_is_empty!4413)))

(declare-fun b!189323 () Bool)

(assert (=> b!189323 (= e!124592 tp_is_empty!4413)))

(declare-fun mapIsEmpty!7618 () Bool)

(assert (=> mapIsEmpty!7618 mapRes!7618))

(assert (= (and mapNonEmpty!7612 condMapEmpty!7618) mapIsEmpty!7618))

(assert (= (and mapNonEmpty!7612 (not condMapEmpty!7618)) mapNonEmpty!7618))

(assert (= (and mapNonEmpty!7618 ((_ is ValueCellFull!1863) mapValue!7618)) b!189323))

(assert (= (and mapNonEmpty!7612 ((_ is ValueCellFull!1863) mapDefault!7618)) b!189324))

(declare-fun m!215727 () Bool)

(assert (=> mapNonEmpty!7618 m!215727))

(declare-fun b_lambda!7355 () Bool)

(assert (= b_lambda!7353 (or (and b!189103 b_free!4641) b_lambda!7355)))

(check-sat (not b!189283) (not bm!19083) (not b!189188) (not bm!19086) (not b!189243) (not bm!19091) (not d!55603) (not bm!19097) (not b!189261) tp_is_empty!4413 (not bm!19085) (not b!189187) b_and!11299 (not b!189247) (not b!189274) (not b!189273) (not b!189254) (not b!189191) (not d!55617) (not d!55609) (not b_next!4641) (not b_lambda!7355) (not b!189285) (not b!189252) (not d!55625) (not bm!19067) (not b!189171) (not b!189263) (not b!189200) (not bm!19084) (not d!55611) (not d!55623) (not b!189245) (not b!189272) (not bm!19096) (not b!189315) (not b!189248) (not mapNonEmpty!7618) (not b!189198))
(check-sat b_and!11299 (not b_next!4641))

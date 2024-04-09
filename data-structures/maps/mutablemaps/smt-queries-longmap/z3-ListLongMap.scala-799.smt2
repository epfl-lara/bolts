; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!19206 () Bool)

(assert start!19206)

(declare-fun b!188813 () Bool)

(declare-fun b_free!4635 () Bool)

(declare-fun b_next!4635 () Bool)

(assert (=> b!188813 (= b_free!4635 (not b_next!4635))))

(declare-fun tp!16732 () Bool)

(declare-fun b_and!11287 () Bool)

(assert (=> b!188813 (= tp!16732 b_and!11287)))

(declare-fun b!188802 () Bool)

(declare-fun res!89273 () Bool)

(declare-fun e!124266 () Bool)

(assert (=> b!188802 (=> (not res!89273) (not e!124266))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!188802 (= res!89273 (not (= key!828 (bvneg key!828))))))

(declare-fun b!188803 () Bool)

(declare-fun res!89275 () Bool)

(declare-fun e!124272 () Bool)

(assert (=> b!188803 (=> (not res!89275) (not e!124272))))

(declare-datatypes ((V!5523 0))(
  ( (V!5524 (val!2248 Int)) )
))
(declare-datatypes ((ValueCell!1860 0))(
  ( (ValueCellFull!1860 (v!4163 V!5523)) (EmptyCell!1860) )
))
(declare-datatypes ((array!8038 0))(
  ( (array!8039 (arr!3790 (Array (_ BitVec 32) (_ BitVec 64))) (size!4110 (_ BitVec 32))) )
))
(declare-datatypes ((array!8040 0))(
  ( (array!8041 (arr!3791 (Array (_ BitVec 32) ValueCell!1860)) (size!4111 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2628 0))(
  ( (LongMapFixedSize!2629 (defaultEntry!3852 Int) (mask!9027 (_ BitVec 32)) (extraKeys!3589 (_ BitVec 32)) (zeroValue!3693 V!5523) (minValue!3693 V!5523) (_size!1363 (_ BitVec 32)) (_keys!5815 array!8038) (_values!3835 array!8040) (_vacant!1363 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2628)

(assert (=> b!188803 (= res!89275 (and (= (size!4111 (_values!3835 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!9027 thiss!1248))) (= (size!4110 (_keys!5815 thiss!1248)) (size!4111 (_values!3835 thiss!1248))) (bvsge (mask!9027 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3589 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3589 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!188804 () Bool)

(declare-fun e!124273 () Bool)

(declare-fun e!124267 () Bool)

(declare-fun mapRes!7600 () Bool)

(assert (=> b!188804 (= e!124273 (and e!124267 mapRes!7600))))

(declare-fun condMapEmpty!7600 () Bool)

(declare-fun mapDefault!7600 () ValueCell!1860)

(assert (=> b!188804 (= condMapEmpty!7600 (= (arr!3791 (_values!3835 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1860)) mapDefault!7600)))))

(declare-fun res!89271 () Bool)

(assert (=> start!19206 (=> (not res!89271) (not e!124266))))

(declare-fun valid!1073 (LongMapFixedSize!2628) Bool)

(assert (=> start!19206 (= res!89271 (valid!1073 thiss!1248))))

(assert (=> start!19206 e!124266))

(declare-fun e!124271 () Bool)

(assert (=> start!19206 e!124271))

(assert (=> start!19206 true))

(declare-fun b!188805 () Bool)

(declare-fun tp_is_empty!4407 () Bool)

(assert (=> b!188805 (= e!124267 tp_is_empty!4407)))

(declare-fun b!188806 () Bool)

(declare-datatypes ((Unit!5691 0))(
  ( (Unit!5692) )
))
(declare-fun e!124269 () Unit!5691)

(declare-fun Unit!5693 () Unit!5691)

(assert (=> b!188806 (= e!124269 Unit!5693)))

(declare-fun lt!93493 () Unit!5691)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!161 (array!8038 array!8040 (_ BitVec 32) (_ BitVec 32) V!5523 V!5523 (_ BitVec 64) Int) Unit!5691)

(assert (=> b!188806 (= lt!93493 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!161 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) key!828 (defaultEntry!3852 thiss!1248)))))

(assert (=> b!188806 false))

(declare-fun b!188807 () Bool)

(declare-fun res!89272 () Bool)

(assert (=> b!188807 (=> (not res!89272) (not e!124272))))

(declare-datatypes ((List!2417 0))(
  ( (Nil!2414) (Cons!2413 (h!3050 (_ BitVec 64)) (t!7325 List!2417)) )
))
(declare-fun arrayNoDuplicates!0 (array!8038 (_ BitVec 32) List!2417) Bool)

(assert (=> b!188807 (= res!89272 (arrayNoDuplicates!0 (_keys!5815 thiss!1248) #b00000000000000000000000000000000 Nil!2414))))

(declare-fun b!188808 () Bool)

(declare-fun lt!93495 () Unit!5691)

(assert (=> b!188808 (= e!124269 lt!93495)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!160 (array!8038 array!8040 (_ BitVec 32) (_ BitVec 32) V!5523 V!5523 (_ BitVec 64) Int) Unit!5691)

(assert (=> b!188808 (= lt!93495 (lemmaInListMapThenSeekEntryOrOpenFindsIt!160 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) key!828 (defaultEntry!3852 thiss!1248)))))

(declare-fun res!89269 () Bool)

(declare-datatypes ((SeekEntryResult!667 0))(
  ( (MissingZero!667 (index!4838 (_ BitVec 32))) (Found!667 (index!4839 (_ BitVec 32))) (Intermediate!667 (undefined!1479 Bool) (index!4840 (_ BitVec 32)) (x!20389 (_ BitVec 32))) (Undefined!667) (MissingVacant!667 (index!4841 (_ BitVec 32))) )
))
(declare-fun lt!93494 () SeekEntryResult!667)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!188808 (= res!89269 (inRange!0 (index!4839 lt!93494) (mask!9027 thiss!1248)))))

(declare-fun e!124274 () Bool)

(assert (=> b!188808 (=> (not res!89269) (not e!124274))))

(assert (=> b!188808 e!124274))

(declare-fun mapIsEmpty!7600 () Bool)

(assert (=> mapIsEmpty!7600 mapRes!7600))

(declare-fun b!188809 () Bool)

(assert (=> b!188809 (= e!124274 (= (select (arr!3790 (_keys!5815 thiss!1248)) (index!4839 lt!93494)) key!828))))

(declare-fun b!188810 () Bool)

(declare-fun e!124270 () Bool)

(assert (=> b!188810 (= e!124270 tp_is_empty!4407)))

(declare-fun b!188811 () Bool)

(assert (=> b!188811 (= e!124272 (or (bvslt (index!4839 lt!93494) #b00000000000000000000000000000000) (bvsge (index!4839 lt!93494) (size!4110 (_keys!5815 thiss!1248)))))))

(declare-fun b!188812 () Bool)

(declare-fun e!124265 () Bool)

(assert (=> b!188812 (= e!124265 e!124272)))

(declare-fun res!89268 () Bool)

(assert (=> b!188812 (=> (not res!89268) (not e!124272))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!188812 (= res!89268 (validMask!0 (mask!9027 thiss!1248)))))

(declare-fun lt!93492 () Unit!5691)

(assert (=> b!188812 (= lt!93492 e!124269)))

(declare-fun c!33922 () Bool)

(declare-datatypes ((tuple2!3494 0))(
  ( (tuple2!3495 (_1!1757 (_ BitVec 64)) (_2!1757 V!5523)) )
))
(declare-datatypes ((List!2418 0))(
  ( (Nil!2415) (Cons!2414 (h!3051 tuple2!3494) (t!7326 List!2418)) )
))
(declare-datatypes ((ListLongMap!2425 0))(
  ( (ListLongMap!2426 (toList!1228 List!2418)) )
))
(declare-fun contains!1327 (ListLongMap!2425 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!871 (array!8038 array!8040 (_ BitVec 32) (_ BitVec 32) V!5523 V!5523 (_ BitVec 32) Int) ListLongMap!2425)

(assert (=> b!188812 (= c!33922 (contains!1327 (getCurrentListMap!871 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248)) key!828))))

(declare-fun mapNonEmpty!7600 () Bool)

(declare-fun tp!16731 () Bool)

(assert (=> mapNonEmpty!7600 (= mapRes!7600 (and tp!16731 e!124270))))

(declare-fun mapValue!7600 () ValueCell!1860)

(declare-fun mapRest!7600 () (Array (_ BitVec 32) ValueCell!1860))

(declare-fun mapKey!7600 () (_ BitVec 32))

(assert (=> mapNonEmpty!7600 (= (arr!3791 (_values!3835 thiss!1248)) (store mapRest!7600 mapKey!7600 mapValue!7600))))

(declare-fun array_inv!2445 (array!8038) Bool)

(declare-fun array_inv!2446 (array!8040) Bool)

(assert (=> b!188813 (= e!124271 (and tp!16732 tp_is_empty!4407 (array_inv!2445 (_keys!5815 thiss!1248)) (array_inv!2446 (_values!3835 thiss!1248)) e!124273))))

(declare-fun b!188814 () Bool)

(assert (=> b!188814 (= e!124266 e!124265)))

(declare-fun res!89274 () Bool)

(assert (=> b!188814 (=> (not res!89274) (not e!124265))))

(get-info :version)

(assert (=> b!188814 (= res!89274 (and (not ((_ is Undefined!667) lt!93494)) (not ((_ is MissingVacant!667) lt!93494)) (not ((_ is MissingZero!667) lt!93494)) ((_ is Found!667) lt!93494)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!8038 (_ BitVec 32)) SeekEntryResult!667)

(assert (=> b!188814 (= lt!93494 (seekEntryOrOpen!0 key!828 (_keys!5815 thiss!1248) (mask!9027 thiss!1248)))))

(declare-fun b!188815 () Bool)

(declare-fun res!89270 () Bool)

(assert (=> b!188815 (=> (not res!89270) (not e!124272))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!8038 (_ BitVec 32)) Bool)

(assert (=> b!188815 (= res!89270 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5815 thiss!1248) (mask!9027 thiss!1248)))))

(assert (= (and start!19206 res!89271) b!188802))

(assert (= (and b!188802 res!89273) b!188814))

(assert (= (and b!188814 res!89274) b!188812))

(assert (= (and b!188812 c!33922) b!188808))

(assert (= (and b!188812 (not c!33922)) b!188806))

(assert (= (and b!188808 res!89269) b!188809))

(assert (= (and b!188812 res!89268) b!188803))

(assert (= (and b!188803 res!89275) b!188815))

(assert (= (and b!188815 res!89270) b!188807))

(assert (= (and b!188807 res!89272) b!188811))

(assert (= (and b!188804 condMapEmpty!7600) mapIsEmpty!7600))

(assert (= (and b!188804 (not condMapEmpty!7600)) mapNonEmpty!7600))

(assert (= (and mapNonEmpty!7600 ((_ is ValueCellFull!1860) mapValue!7600)) b!188810))

(assert (= (and b!188804 ((_ is ValueCellFull!1860) mapDefault!7600)) b!188805))

(assert (= b!188813 b!188804))

(assert (= start!19206 b!188813))

(declare-fun m!215355 () Bool)

(assert (=> b!188815 m!215355))

(declare-fun m!215357 () Bool)

(assert (=> b!188807 m!215357))

(declare-fun m!215359 () Bool)

(assert (=> mapNonEmpty!7600 m!215359))

(declare-fun m!215361 () Bool)

(assert (=> start!19206 m!215361))

(declare-fun m!215363 () Bool)

(assert (=> b!188813 m!215363))

(declare-fun m!215365 () Bool)

(assert (=> b!188813 m!215365))

(declare-fun m!215367 () Bool)

(assert (=> b!188809 m!215367))

(declare-fun m!215369 () Bool)

(assert (=> b!188812 m!215369))

(declare-fun m!215371 () Bool)

(assert (=> b!188812 m!215371))

(assert (=> b!188812 m!215371))

(declare-fun m!215373 () Bool)

(assert (=> b!188812 m!215373))

(declare-fun m!215375 () Bool)

(assert (=> b!188814 m!215375))

(declare-fun m!215377 () Bool)

(assert (=> b!188808 m!215377))

(declare-fun m!215379 () Bool)

(assert (=> b!188808 m!215379))

(declare-fun m!215381 () Bool)

(assert (=> b!188806 m!215381))

(check-sat tp_is_empty!4407 (not b!188808) (not b!188806) (not b!188813) (not b!188812) (not b_next!4635) b_and!11287 (not b!188814) (not b!188815) (not b!188807) (not mapNonEmpty!7600) (not start!19206))
(check-sat b_and!11287 (not b_next!4635))
(get-model)

(declare-fun d!55577 () Bool)

(assert (=> d!55577 (= (array_inv!2445 (_keys!5815 thiss!1248)) (bvsge (size!4110 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!188813 d!55577))

(declare-fun d!55579 () Bool)

(assert (=> d!55579 (= (array_inv!2446 (_values!3835 thiss!1248)) (bvsge (size!4111 (_values!3835 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!188813 d!55579))

(declare-fun e!124311 () SeekEntryResult!667)

(declare-fun lt!93514 () SeekEntryResult!667)

(declare-fun b!188870 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8038 (_ BitVec 32)) SeekEntryResult!667)

(assert (=> b!188870 (= e!124311 (seekKeyOrZeroReturnVacant!0 (x!20389 lt!93514) (index!4840 lt!93514) (index!4840 lt!93514) key!828 (_keys!5815 thiss!1248) (mask!9027 thiss!1248)))))

(declare-fun b!188871 () Bool)

(declare-fun e!124313 () SeekEntryResult!667)

(assert (=> b!188871 (= e!124313 Undefined!667)))

(declare-fun b!188872 () Bool)

(assert (=> b!188872 (= e!124311 (MissingZero!667 (index!4840 lt!93514)))))

(declare-fun b!188873 () Bool)

(declare-fun e!124312 () SeekEntryResult!667)

(assert (=> b!188873 (= e!124312 (Found!667 (index!4840 lt!93514)))))

(declare-fun b!188875 () Bool)

(assert (=> b!188875 (= e!124313 e!124312)))

(declare-fun lt!93515 () (_ BitVec 64))

(assert (=> b!188875 (= lt!93515 (select (arr!3790 (_keys!5815 thiss!1248)) (index!4840 lt!93514)))))

(declare-fun c!33933 () Bool)

(assert (=> b!188875 (= c!33933 (= lt!93515 key!828))))

(declare-fun b!188874 () Bool)

(declare-fun c!33932 () Bool)

(assert (=> b!188874 (= c!33932 (= lt!93515 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188874 (= e!124312 e!124311)))

(declare-fun d!55581 () Bool)

(declare-fun lt!93516 () SeekEntryResult!667)

(assert (=> d!55581 (and (or ((_ is Undefined!667) lt!93516) (not ((_ is Found!667) lt!93516)) (and (bvsge (index!4839 lt!93516) #b00000000000000000000000000000000) (bvslt (index!4839 lt!93516) (size!4110 (_keys!5815 thiss!1248))))) (or ((_ is Undefined!667) lt!93516) ((_ is Found!667) lt!93516) (not ((_ is MissingZero!667) lt!93516)) (and (bvsge (index!4838 lt!93516) #b00000000000000000000000000000000) (bvslt (index!4838 lt!93516) (size!4110 (_keys!5815 thiss!1248))))) (or ((_ is Undefined!667) lt!93516) ((_ is Found!667) lt!93516) ((_ is MissingZero!667) lt!93516) (not ((_ is MissingVacant!667) lt!93516)) (and (bvsge (index!4841 lt!93516) #b00000000000000000000000000000000) (bvslt (index!4841 lt!93516) (size!4110 (_keys!5815 thiss!1248))))) (or ((_ is Undefined!667) lt!93516) (ite ((_ is Found!667) lt!93516) (= (select (arr!3790 (_keys!5815 thiss!1248)) (index!4839 lt!93516)) key!828) (ite ((_ is MissingZero!667) lt!93516) (= (select (arr!3790 (_keys!5815 thiss!1248)) (index!4838 lt!93516)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!667) lt!93516) (= (select (arr!3790 (_keys!5815 thiss!1248)) (index!4841 lt!93516)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55581 (= lt!93516 e!124313)))

(declare-fun c!33934 () Bool)

(assert (=> d!55581 (= c!33934 (and ((_ is Intermediate!667) lt!93514) (undefined!1479 lt!93514)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!8038 (_ BitVec 32)) SeekEntryResult!667)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55581 (= lt!93514 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!9027 thiss!1248)) key!828 (_keys!5815 thiss!1248) (mask!9027 thiss!1248)))))

(assert (=> d!55581 (validMask!0 (mask!9027 thiss!1248))))

(assert (=> d!55581 (= (seekEntryOrOpen!0 key!828 (_keys!5815 thiss!1248) (mask!9027 thiss!1248)) lt!93516)))

(assert (= (and d!55581 c!33934) b!188871))

(assert (= (and d!55581 (not c!33934)) b!188875))

(assert (= (and b!188875 c!33933) b!188873))

(assert (= (and b!188875 (not c!33933)) b!188874))

(assert (= (and b!188874 c!33932) b!188872))

(assert (= (and b!188874 (not c!33932)) b!188870))

(declare-fun m!215411 () Bool)

(assert (=> b!188870 m!215411))

(declare-fun m!215413 () Bool)

(assert (=> b!188875 m!215413))

(declare-fun m!215415 () Bool)

(assert (=> d!55581 m!215415))

(declare-fun m!215417 () Bool)

(assert (=> d!55581 m!215417))

(assert (=> d!55581 m!215415))

(declare-fun m!215419 () Bool)

(assert (=> d!55581 m!215419))

(declare-fun m!215421 () Bool)

(assert (=> d!55581 m!215421))

(assert (=> d!55581 m!215369))

(declare-fun m!215423 () Bool)

(assert (=> d!55581 m!215423))

(assert (=> b!188814 d!55581))

(declare-fun bm!19036 () Bool)

(declare-fun call!19039 () Bool)

(declare-fun arrayContainsKey!0 (array!8038 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!19036 (= call!19039 (arrayContainsKey!0 (_keys!5815 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!188892 () Bool)

(declare-fun e!124324 () Bool)

(assert (=> b!188892 (= e!124324 (not call!19039))))

(declare-fun b!188893 () Bool)

(declare-fun lt!93521 () SeekEntryResult!667)

(assert (=> b!188893 (and (bvsge (index!4838 lt!93521) #b00000000000000000000000000000000) (bvslt (index!4838 lt!93521) (size!4110 (_keys!5815 thiss!1248))))))

(declare-fun res!89309 () Bool)

(assert (=> b!188893 (= res!89309 (= (select (arr!3790 (_keys!5815 thiss!1248)) (index!4838 lt!93521)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188893 (=> (not res!89309) (not e!124324))))

(declare-fun call!19040 () Bool)

(declare-fun c!33940 () Bool)

(declare-fun bm!19037 () Bool)

(assert (=> bm!19037 (= call!19040 (inRange!0 (ite c!33940 (index!4838 lt!93521) (index!4841 lt!93521)) (mask!9027 thiss!1248)))))

(declare-fun b!188894 () Bool)

(declare-fun res!89308 () Bool)

(declare-fun e!124323 () Bool)

(assert (=> b!188894 (=> (not res!89308) (not e!124323))))

(assert (=> b!188894 (= res!89308 call!19040)))

(declare-fun e!124325 () Bool)

(assert (=> b!188894 (= e!124325 e!124323)))

(declare-fun b!188895 () Bool)

(declare-fun e!124322 () Bool)

(assert (=> b!188895 (= e!124322 e!124324)))

(declare-fun res!89311 () Bool)

(assert (=> b!188895 (= res!89311 call!19040)))

(assert (=> b!188895 (=> (not res!89311) (not e!124324))))

(declare-fun d!55583 () Bool)

(assert (=> d!55583 e!124322))

(assert (=> d!55583 (= c!33940 ((_ is MissingZero!667) lt!93521))))

(assert (=> d!55583 (= lt!93521 (seekEntryOrOpen!0 key!828 (_keys!5815 thiss!1248) (mask!9027 thiss!1248)))))

(declare-fun lt!93522 () Unit!5691)

(declare-fun choose!1018 (array!8038 array!8040 (_ BitVec 32) (_ BitVec 32) V!5523 V!5523 (_ BitVec 64) Int) Unit!5691)

(assert (=> d!55583 (= lt!93522 (choose!1018 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) key!828 (defaultEntry!3852 thiss!1248)))))

(assert (=> d!55583 (validMask!0 (mask!9027 thiss!1248))))

(assert (=> d!55583 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!161 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) key!828 (defaultEntry!3852 thiss!1248)) lt!93522)))

(declare-fun b!188896 () Bool)

(declare-fun res!89310 () Bool)

(assert (=> b!188896 (=> (not res!89310) (not e!124323))))

(assert (=> b!188896 (= res!89310 (= (select (arr!3790 (_keys!5815 thiss!1248)) (index!4841 lt!93521)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!188896 (and (bvsge (index!4841 lt!93521) #b00000000000000000000000000000000) (bvslt (index!4841 lt!93521) (size!4110 (_keys!5815 thiss!1248))))))

(declare-fun b!188897 () Bool)

(assert (=> b!188897 (= e!124322 e!124325)))

(declare-fun c!33939 () Bool)

(assert (=> b!188897 (= c!33939 ((_ is MissingVacant!667) lt!93521))))

(declare-fun b!188898 () Bool)

(assert (=> b!188898 (= e!124325 ((_ is Undefined!667) lt!93521))))

(declare-fun b!188899 () Bool)

(assert (=> b!188899 (= e!124323 (not call!19039))))

(assert (= (and d!55583 c!33940) b!188895))

(assert (= (and d!55583 (not c!33940)) b!188897))

(assert (= (and b!188895 res!89311) b!188893))

(assert (= (and b!188893 res!89309) b!188892))

(assert (= (and b!188897 c!33939) b!188894))

(assert (= (and b!188897 (not c!33939)) b!188898))

(assert (= (and b!188894 res!89308) b!188896))

(assert (= (and b!188896 res!89310) b!188899))

(assert (= (or b!188895 b!188894) bm!19037))

(assert (= (or b!188892 b!188899) bm!19036))

(declare-fun m!215425 () Bool)

(assert (=> b!188893 m!215425))

(declare-fun m!215427 () Bool)

(assert (=> bm!19037 m!215427))

(assert (=> d!55583 m!215375))

(declare-fun m!215429 () Bool)

(assert (=> d!55583 m!215429))

(assert (=> d!55583 m!215369))

(declare-fun m!215431 () Bool)

(assert (=> bm!19036 m!215431))

(declare-fun m!215433 () Bool)

(assert (=> b!188896 m!215433))

(assert (=> b!188806 d!55583))

(declare-fun b!188908 () Bool)

(declare-fun e!124333 () Bool)

(declare-fun e!124334 () Bool)

(assert (=> b!188908 (= e!124333 e!124334)))

(declare-fun lt!93530 () (_ BitVec 64))

(assert (=> b!188908 (= lt!93530 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93529 () Unit!5691)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!8038 (_ BitVec 64) (_ BitVec 32)) Unit!5691)

(assert (=> b!188908 (= lt!93529 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5815 thiss!1248) lt!93530 #b00000000000000000000000000000000))))

(assert (=> b!188908 (arrayContainsKey!0 (_keys!5815 thiss!1248) lt!93530 #b00000000000000000000000000000000)))

(declare-fun lt!93531 () Unit!5691)

(assert (=> b!188908 (= lt!93531 lt!93529)))

(declare-fun res!89316 () Bool)

(assert (=> b!188908 (= res!89316 (= (seekEntryOrOpen!0 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000) (_keys!5815 thiss!1248) (mask!9027 thiss!1248)) (Found!667 #b00000000000000000000000000000000)))))

(assert (=> b!188908 (=> (not res!89316) (not e!124334))))

(declare-fun b!188909 () Bool)

(declare-fun call!19043 () Bool)

(assert (=> b!188909 (= e!124334 call!19043)))

(declare-fun bm!19040 () Bool)

(assert (=> bm!19040 (= call!19043 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5815 thiss!1248) (mask!9027 thiss!1248)))))

(declare-fun d!55585 () Bool)

(declare-fun res!89317 () Bool)

(declare-fun e!124332 () Bool)

(assert (=> d!55585 (=> res!89317 e!124332)))

(assert (=> d!55585 (= res!89317 (bvsge #b00000000000000000000000000000000 (size!4110 (_keys!5815 thiss!1248))))))

(assert (=> d!55585 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5815 thiss!1248) (mask!9027 thiss!1248)) e!124332)))

(declare-fun b!188910 () Bool)

(assert (=> b!188910 (= e!124332 e!124333)))

(declare-fun c!33943 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!188910 (= c!33943 (validKeyInArray!0 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188911 () Bool)

(assert (=> b!188911 (= e!124333 call!19043)))

(assert (= (and d!55585 (not res!89317)) b!188910))

(assert (= (and b!188910 c!33943) b!188908))

(assert (= (and b!188910 (not c!33943)) b!188911))

(assert (= (and b!188908 res!89316) b!188909))

(assert (= (or b!188909 b!188911) bm!19040))

(declare-fun m!215435 () Bool)

(assert (=> b!188908 m!215435))

(declare-fun m!215437 () Bool)

(assert (=> b!188908 m!215437))

(declare-fun m!215439 () Bool)

(assert (=> b!188908 m!215439))

(assert (=> b!188908 m!215435))

(declare-fun m!215441 () Bool)

(assert (=> b!188908 m!215441))

(declare-fun m!215443 () Bool)

(assert (=> bm!19040 m!215443))

(assert (=> b!188910 m!215435))

(assert (=> b!188910 m!215435))

(declare-fun m!215445 () Bool)

(assert (=> b!188910 m!215445))

(assert (=> b!188815 d!55585))

(declare-fun d!55587 () Bool)

(declare-fun res!89324 () Bool)

(declare-fun e!124337 () Bool)

(assert (=> d!55587 (=> (not res!89324) (not e!124337))))

(declare-fun simpleValid!190 (LongMapFixedSize!2628) Bool)

(assert (=> d!55587 (= res!89324 (simpleValid!190 thiss!1248))))

(assert (=> d!55587 (= (valid!1073 thiss!1248) e!124337)))

(declare-fun b!188918 () Bool)

(declare-fun res!89325 () Bool)

(assert (=> b!188918 (=> (not res!89325) (not e!124337))))

(declare-fun arrayCountValidKeys!0 (array!8038 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!188918 (= res!89325 (= (arrayCountValidKeys!0 (_keys!5815 thiss!1248) #b00000000000000000000000000000000 (size!4110 (_keys!5815 thiss!1248))) (_size!1363 thiss!1248)))))

(declare-fun b!188919 () Bool)

(declare-fun res!89326 () Bool)

(assert (=> b!188919 (=> (not res!89326) (not e!124337))))

(assert (=> b!188919 (= res!89326 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5815 thiss!1248) (mask!9027 thiss!1248)))))

(declare-fun b!188920 () Bool)

(assert (=> b!188920 (= e!124337 (arrayNoDuplicates!0 (_keys!5815 thiss!1248) #b00000000000000000000000000000000 Nil!2414))))

(assert (= (and d!55587 res!89324) b!188918))

(assert (= (and b!188918 res!89325) b!188919))

(assert (= (and b!188919 res!89326) b!188920))

(declare-fun m!215447 () Bool)

(assert (=> d!55587 m!215447))

(declare-fun m!215449 () Bool)

(assert (=> b!188918 m!215449))

(assert (=> b!188919 m!215355))

(assert (=> b!188920 m!215357))

(assert (=> start!19206 d!55587))

(declare-fun d!55589 () Bool)

(declare-fun res!89333 () Bool)

(declare-fun e!124349 () Bool)

(assert (=> d!55589 (=> res!89333 e!124349)))

(assert (=> d!55589 (= res!89333 (bvsge #b00000000000000000000000000000000 (size!4110 (_keys!5815 thiss!1248))))))

(assert (=> d!55589 (= (arrayNoDuplicates!0 (_keys!5815 thiss!1248) #b00000000000000000000000000000000 Nil!2414) e!124349)))

(declare-fun b!188931 () Bool)

(declare-fun e!124346 () Bool)

(declare-fun call!19046 () Bool)

(assert (=> b!188931 (= e!124346 call!19046)))

(declare-fun b!188932 () Bool)

(declare-fun e!124347 () Bool)

(assert (=> b!188932 (= e!124349 e!124347)))

(declare-fun res!89334 () Bool)

(assert (=> b!188932 (=> (not res!89334) (not e!124347))))

(declare-fun e!124348 () Bool)

(assert (=> b!188932 (= res!89334 (not e!124348))))

(declare-fun res!89335 () Bool)

(assert (=> b!188932 (=> (not res!89335) (not e!124348))))

(assert (=> b!188932 (= res!89335 (validKeyInArray!0 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188933 () Bool)

(declare-fun contains!1329 (List!2417 (_ BitVec 64)) Bool)

(assert (=> b!188933 (= e!124348 (contains!1329 Nil!2414 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188934 () Bool)

(assert (=> b!188934 (= e!124346 call!19046)))

(declare-fun b!188935 () Bool)

(assert (=> b!188935 (= e!124347 e!124346)))

(declare-fun c!33946 () Bool)

(assert (=> b!188935 (= c!33946 (validKeyInArray!0 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!19043 () Bool)

(assert (=> bm!19043 (= call!19046 (arrayNoDuplicates!0 (_keys!5815 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33946 (Cons!2413 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000) Nil!2414) Nil!2414)))))

(assert (= (and d!55589 (not res!89333)) b!188932))

(assert (= (and b!188932 res!89335) b!188933))

(assert (= (and b!188932 res!89334) b!188935))

(assert (= (and b!188935 c!33946) b!188934))

(assert (= (and b!188935 (not c!33946)) b!188931))

(assert (= (or b!188934 b!188931) bm!19043))

(assert (=> b!188932 m!215435))

(assert (=> b!188932 m!215435))

(assert (=> b!188932 m!215445))

(assert (=> b!188933 m!215435))

(assert (=> b!188933 m!215435))

(declare-fun m!215451 () Bool)

(assert (=> b!188933 m!215451))

(assert (=> b!188935 m!215435))

(assert (=> b!188935 m!215435))

(assert (=> b!188935 m!215445))

(assert (=> bm!19043 m!215435))

(declare-fun m!215453 () Bool)

(assert (=> bm!19043 m!215453))

(assert (=> b!188807 d!55589))

(declare-fun d!55591 () Bool)

(declare-fun e!124352 () Bool)

(assert (=> d!55591 e!124352))

(declare-fun res!89341 () Bool)

(assert (=> d!55591 (=> (not res!89341) (not e!124352))))

(declare-fun lt!93536 () SeekEntryResult!667)

(assert (=> d!55591 (= res!89341 ((_ is Found!667) lt!93536))))

(assert (=> d!55591 (= lt!93536 (seekEntryOrOpen!0 key!828 (_keys!5815 thiss!1248) (mask!9027 thiss!1248)))))

(declare-fun lt!93537 () Unit!5691)

(declare-fun choose!1019 (array!8038 array!8040 (_ BitVec 32) (_ BitVec 32) V!5523 V!5523 (_ BitVec 64) Int) Unit!5691)

(assert (=> d!55591 (= lt!93537 (choose!1019 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) key!828 (defaultEntry!3852 thiss!1248)))))

(assert (=> d!55591 (validMask!0 (mask!9027 thiss!1248))))

(assert (=> d!55591 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!160 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) key!828 (defaultEntry!3852 thiss!1248)) lt!93537)))

(declare-fun b!188940 () Bool)

(declare-fun res!89340 () Bool)

(assert (=> b!188940 (=> (not res!89340) (not e!124352))))

(assert (=> b!188940 (= res!89340 (inRange!0 (index!4839 lt!93536) (mask!9027 thiss!1248)))))

(declare-fun b!188941 () Bool)

(assert (=> b!188941 (= e!124352 (= (select (arr!3790 (_keys!5815 thiss!1248)) (index!4839 lt!93536)) key!828))))

(assert (=> b!188941 (and (bvsge (index!4839 lt!93536) #b00000000000000000000000000000000) (bvslt (index!4839 lt!93536) (size!4110 (_keys!5815 thiss!1248))))))

(assert (= (and d!55591 res!89341) b!188940))

(assert (= (and b!188940 res!89340) b!188941))

(assert (=> d!55591 m!215375))

(declare-fun m!215455 () Bool)

(assert (=> d!55591 m!215455))

(assert (=> d!55591 m!215369))

(declare-fun m!215457 () Bool)

(assert (=> b!188940 m!215457))

(declare-fun m!215459 () Bool)

(assert (=> b!188941 m!215459))

(assert (=> b!188808 d!55591))

(declare-fun d!55593 () Bool)

(assert (=> d!55593 (= (inRange!0 (index!4839 lt!93494) (mask!9027 thiss!1248)) (and (bvsge (index!4839 lt!93494) #b00000000000000000000000000000000) (bvslt (index!4839 lt!93494) (bvadd (mask!9027 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!188808 d!55593))

(declare-fun d!55595 () Bool)

(assert (=> d!55595 (= (validMask!0 (mask!9027 thiss!1248)) (and (or (= (mask!9027 thiss!1248) #b00000000000000000000000000000111) (= (mask!9027 thiss!1248) #b00000000000000000000000000001111) (= (mask!9027 thiss!1248) #b00000000000000000000000000011111) (= (mask!9027 thiss!1248) #b00000000000000000000000000111111) (= (mask!9027 thiss!1248) #b00000000000000000000000001111111) (= (mask!9027 thiss!1248) #b00000000000000000000000011111111) (= (mask!9027 thiss!1248) #b00000000000000000000000111111111) (= (mask!9027 thiss!1248) #b00000000000000000000001111111111) (= (mask!9027 thiss!1248) #b00000000000000000000011111111111) (= (mask!9027 thiss!1248) #b00000000000000000000111111111111) (= (mask!9027 thiss!1248) #b00000000000000000001111111111111) (= (mask!9027 thiss!1248) #b00000000000000000011111111111111) (= (mask!9027 thiss!1248) #b00000000000000000111111111111111) (= (mask!9027 thiss!1248) #b00000000000000001111111111111111) (= (mask!9027 thiss!1248) #b00000000000000011111111111111111) (= (mask!9027 thiss!1248) #b00000000000000111111111111111111) (= (mask!9027 thiss!1248) #b00000000000001111111111111111111) (= (mask!9027 thiss!1248) #b00000000000011111111111111111111) (= (mask!9027 thiss!1248) #b00000000000111111111111111111111) (= (mask!9027 thiss!1248) #b00000000001111111111111111111111) (= (mask!9027 thiss!1248) #b00000000011111111111111111111111) (= (mask!9027 thiss!1248) #b00000000111111111111111111111111) (= (mask!9027 thiss!1248) #b00000001111111111111111111111111) (= (mask!9027 thiss!1248) #b00000011111111111111111111111111) (= (mask!9027 thiss!1248) #b00000111111111111111111111111111) (= (mask!9027 thiss!1248) #b00001111111111111111111111111111) (= (mask!9027 thiss!1248) #b00011111111111111111111111111111) (= (mask!9027 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!9027 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!188812 d!55595))

(declare-fun d!55597 () Bool)

(declare-fun e!124357 () Bool)

(assert (=> d!55597 e!124357))

(declare-fun res!89344 () Bool)

(assert (=> d!55597 (=> res!89344 e!124357)))

(declare-fun lt!93548 () Bool)

(assert (=> d!55597 (= res!89344 (not lt!93548))))

(declare-fun lt!93546 () Bool)

(assert (=> d!55597 (= lt!93548 lt!93546)))

(declare-fun lt!93549 () Unit!5691)

(declare-fun e!124358 () Unit!5691)

(assert (=> d!55597 (= lt!93549 e!124358)))

(declare-fun c!33949 () Bool)

(assert (=> d!55597 (= c!33949 lt!93546)))

(declare-fun containsKey!235 (List!2418 (_ BitVec 64)) Bool)

(assert (=> d!55597 (= lt!93546 (containsKey!235 (toList!1228 (getCurrentListMap!871 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248))) key!828))))

(assert (=> d!55597 (= (contains!1327 (getCurrentListMap!871 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248)) key!828) lt!93548)))

(declare-fun b!188948 () Bool)

(declare-fun lt!93547 () Unit!5691)

(assert (=> b!188948 (= e!124358 lt!93547)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!184 (List!2418 (_ BitVec 64)) Unit!5691)

(assert (=> b!188948 (= lt!93547 (lemmaContainsKeyImpliesGetValueByKeyDefined!184 (toList!1228 (getCurrentListMap!871 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248))) key!828))))

(declare-datatypes ((Option!237 0))(
  ( (Some!236 (v!4165 V!5523)) (None!235) )
))
(declare-fun isDefined!185 (Option!237) Bool)

(declare-fun getValueByKey!231 (List!2418 (_ BitVec 64)) Option!237)

(assert (=> b!188948 (isDefined!185 (getValueByKey!231 (toList!1228 (getCurrentListMap!871 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248))) key!828))))

(declare-fun b!188949 () Bool)

(declare-fun Unit!5696 () Unit!5691)

(assert (=> b!188949 (= e!124358 Unit!5696)))

(declare-fun b!188950 () Bool)

(assert (=> b!188950 (= e!124357 (isDefined!185 (getValueByKey!231 (toList!1228 (getCurrentListMap!871 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248))) key!828)))))

(assert (= (and d!55597 c!33949) b!188948))

(assert (= (and d!55597 (not c!33949)) b!188949))

(assert (= (and d!55597 (not res!89344)) b!188950))

(declare-fun m!215461 () Bool)

(assert (=> d!55597 m!215461))

(declare-fun m!215463 () Bool)

(assert (=> b!188948 m!215463))

(declare-fun m!215465 () Bool)

(assert (=> b!188948 m!215465))

(assert (=> b!188948 m!215465))

(declare-fun m!215467 () Bool)

(assert (=> b!188948 m!215467))

(assert (=> b!188950 m!215465))

(assert (=> b!188950 m!215465))

(assert (=> b!188950 m!215467))

(assert (=> b!188812 d!55597))

(declare-fun b!188993 () Bool)

(declare-fun res!89364 () Bool)

(declare-fun e!124391 () Bool)

(assert (=> b!188993 (=> (not res!89364) (not e!124391))))

(declare-fun e!124397 () Bool)

(assert (=> b!188993 (= res!89364 e!124397)))

(declare-fun c!33965 () Bool)

(assert (=> b!188993 (= c!33965 (not (= (bvand (extraKeys!3589 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!188994 () Bool)

(declare-fun e!124390 () Bool)

(assert (=> b!188994 (= e!124390 (validKeyInArray!0 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!188995 () Bool)

(declare-fun res!89366 () Bool)

(assert (=> b!188995 (=> (not res!89366) (not e!124391))))

(declare-fun e!124394 () Bool)

(assert (=> b!188995 (= res!89366 e!124394)))

(declare-fun res!89371 () Bool)

(assert (=> b!188995 (=> res!89371 e!124394)))

(assert (=> b!188995 (= res!89371 (not e!124390))))

(declare-fun res!89365 () Bool)

(assert (=> b!188995 (=> (not res!89365) (not e!124390))))

(assert (=> b!188995 (= res!89365 (bvslt #b00000000000000000000000000000000 (size!4110 (_keys!5815 thiss!1248))))))

(declare-fun b!188996 () Bool)

(declare-fun e!124385 () ListLongMap!2425)

(declare-fun call!19067 () ListLongMap!2425)

(declare-fun +!290 (ListLongMap!2425 tuple2!3494) ListLongMap!2425)

(assert (=> b!188996 (= e!124385 (+!290 call!19067 (tuple2!3495 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3693 thiss!1248))))))

(declare-fun b!188997 () Bool)

(declare-fun e!124388 () ListLongMap!2425)

(declare-fun call!19065 () ListLongMap!2425)

(assert (=> b!188997 (= e!124388 call!19065)))

(declare-fun bm!19058 () Bool)

(declare-fun call!19064 () ListLongMap!2425)

(assert (=> bm!19058 (= call!19064 call!19067)))

(declare-fun bm!19059 () Bool)

(declare-fun call!19066 () Bool)

(declare-fun lt!93610 () ListLongMap!2425)

(assert (=> bm!19059 (= call!19066 (contains!1327 lt!93610 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!188998 () Bool)

(declare-fun e!124395 () Bool)

(assert (=> b!188998 (= e!124391 e!124395)))

(declare-fun c!33963 () Bool)

(assert (=> b!188998 (= c!33963 (not (= (bvand (extraKeys!3589 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!188999 () Bool)

(declare-fun e!124389 () Bool)

(declare-fun apply!175 (ListLongMap!2425 (_ BitVec 64)) V!5523)

(assert (=> b!188999 (= e!124389 (= (apply!175 lt!93610 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3693 thiss!1248)))))

(declare-fun c!33962 () Bool)

(declare-fun c!33966 () Bool)

(declare-fun call!19062 () ListLongMap!2425)

(declare-fun call!19063 () ListLongMap!2425)

(declare-fun bm!19060 () Bool)

(assert (=> bm!19060 (= call!19067 (+!290 (ite c!33962 call!19062 (ite c!33966 call!19063 call!19065)) (ite (or c!33962 c!33966) (tuple2!3495 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3693 thiss!1248)) (tuple2!3495 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3693 thiss!1248)))))))

(declare-fun b!189000 () Bool)

(declare-fun e!124393 () Bool)

(assert (=> b!189000 (= e!124397 e!124393)))

(declare-fun res!89369 () Bool)

(assert (=> b!189000 (= res!89369 call!19066)))

(assert (=> b!189000 (=> (not res!89369) (not e!124393))))

(declare-fun b!189001 () Bool)

(declare-fun c!33967 () Bool)

(assert (=> b!189001 (= c!33967 (and (not (= (bvand (extraKeys!3589 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3589 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!124387 () ListLongMap!2425)

(assert (=> b!189001 (= e!124387 e!124388)))

(declare-fun b!189002 () Bool)

(declare-fun e!124392 () Unit!5691)

(declare-fun Unit!5697 () Unit!5691)

(assert (=> b!189002 (= e!124392 Unit!5697)))

(declare-fun b!189003 () Bool)

(assert (=> b!189003 (= e!124395 e!124389)))

(declare-fun res!89363 () Bool)

(declare-fun call!19061 () Bool)

(assert (=> b!189003 (= res!89363 call!19061)))

(assert (=> b!189003 (=> (not res!89363) (not e!124389))))

(declare-fun b!189004 () Bool)

(declare-fun e!124396 () Bool)

(assert (=> b!189004 (= e!124394 e!124396)))

(declare-fun res!89368 () Bool)

(assert (=> b!189004 (=> (not res!89368) (not e!124396))))

(assert (=> b!189004 (= res!89368 (contains!1327 lt!93610 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!189004 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4110 (_keys!5815 thiss!1248))))))

(declare-fun bm!19061 () Bool)

(assert (=> bm!19061 (= call!19065 call!19063)))

(declare-fun b!189005 () Bool)

(declare-fun e!124386 () Bool)

(assert (=> b!189005 (= e!124386 (validKeyInArray!0 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!189006 () Bool)

(assert (=> b!189006 (= e!124393 (= (apply!175 lt!93610 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3693 thiss!1248)))))

(declare-fun b!189007 () Bool)

(declare-fun get!2185 (ValueCell!1860 V!5523) V!5523)

(declare-fun dynLambda!513 (Int (_ BitVec 64)) V!5523)

(assert (=> b!189007 (= e!124396 (= (apply!175 lt!93610 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000)) (get!2185 (select (arr!3791 (_values!3835 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!513 (defaultEntry!3852 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!189007 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4111 (_values!3835 thiss!1248))))))

(assert (=> b!189007 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4110 (_keys!5815 thiss!1248))))))

(declare-fun b!189008 () Bool)

(assert (=> b!189008 (= e!124397 (not call!19066))))

(declare-fun bm!19062 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!205 (array!8038 array!8040 (_ BitVec 32) (_ BitVec 32) V!5523 V!5523 (_ BitVec 32) Int) ListLongMap!2425)

(assert (=> bm!19062 (= call!19062 (getCurrentListMapNoExtraKeys!205 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248)))))

(declare-fun b!189009 () Bool)

(assert (=> b!189009 (= e!124385 e!124387)))

(assert (=> b!189009 (= c!33966 (and (not (= (bvand (extraKeys!3589 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3589 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!189010 () Bool)

(assert (=> b!189010 (= e!124387 call!19064)))

(declare-fun bm!19063 () Bool)

(assert (=> bm!19063 (= call!19063 call!19062)))

(declare-fun d!55599 () Bool)

(assert (=> d!55599 e!124391))

(declare-fun res!89367 () Bool)

(assert (=> d!55599 (=> (not res!89367) (not e!124391))))

(assert (=> d!55599 (= res!89367 (or (bvsge #b00000000000000000000000000000000 (size!4110 (_keys!5815 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4110 (_keys!5815 thiss!1248))))))))

(declare-fun lt!93608 () ListLongMap!2425)

(assert (=> d!55599 (= lt!93610 lt!93608)))

(declare-fun lt!93600 () Unit!5691)

(assert (=> d!55599 (= lt!93600 e!124392)))

(declare-fun c!33964 () Bool)

(assert (=> d!55599 (= c!33964 e!124386)))

(declare-fun res!89370 () Bool)

(assert (=> d!55599 (=> (not res!89370) (not e!124386))))

(assert (=> d!55599 (= res!89370 (bvslt #b00000000000000000000000000000000 (size!4110 (_keys!5815 thiss!1248))))))

(assert (=> d!55599 (= lt!93608 e!124385)))

(assert (=> d!55599 (= c!33962 (and (not (= (bvand (extraKeys!3589 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3589 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55599 (validMask!0 (mask!9027 thiss!1248))))

(assert (=> d!55599 (= (getCurrentListMap!871 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248)) lt!93610)))

(declare-fun b!189011 () Bool)

(declare-fun lt!93597 () Unit!5691)

(assert (=> b!189011 (= e!124392 lt!93597)))

(declare-fun lt!93609 () ListLongMap!2425)

(assert (=> b!189011 (= lt!93609 (getCurrentListMapNoExtraKeys!205 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248)))))

(declare-fun lt!93601 () (_ BitVec 64))

(assert (=> b!189011 (= lt!93601 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93607 () (_ BitVec 64))

(assert (=> b!189011 (= lt!93607 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93614 () Unit!5691)

(declare-fun addStillContains!151 (ListLongMap!2425 (_ BitVec 64) V!5523 (_ BitVec 64)) Unit!5691)

(assert (=> b!189011 (= lt!93614 (addStillContains!151 lt!93609 lt!93601 (zeroValue!3693 thiss!1248) lt!93607))))

(assert (=> b!189011 (contains!1327 (+!290 lt!93609 (tuple2!3495 lt!93601 (zeroValue!3693 thiss!1248))) lt!93607)))

(declare-fun lt!93599 () Unit!5691)

(assert (=> b!189011 (= lt!93599 lt!93614)))

(declare-fun lt!93594 () ListLongMap!2425)

(assert (=> b!189011 (= lt!93594 (getCurrentListMapNoExtraKeys!205 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248)))))

(declare-fun lt!93598 () (_ BitVec 64))

(assert (=> b!189011 (= lt!93598 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93611 () (_ BitVec 64))

(assert (=> b!189011 (= lt!93611 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93612 () Unit!5691)

(declare-fun addApplyDifferent!151 (ListLongMap!2425 (_ BitVec 64) V!5523 (_ BitVec 64)) Unit!5691)

(assert (=> b!189011 (= lt!93612 (addApplyDifferent!151 lt!93594 lt!93598 (minValue!3693 thiss!1248) lt!93611))))

(assert (=> b!189011 (= (apply!175 (+!290 lt!93594 (tuple2!3495 lt!93598 (minValue!3693 thiss!1248))) lt!93611) (apply!175 lt!93594 lt!93611))))

(declare-fun lt!93595 () Unit!5691)

(assert (=> b!189011 (= lt!93595 lt!93612)))

(declare-fun lt!93603 () ListLongMap!2425)

(assert (=> b!189011 (= lt!93603 (getCurrentListMapNoExtraKeys!205 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248)))))

(declare-fun lt!93604 () (_ BitVec 64))

(assert (=> b!189011 (= lt!93604 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93605 () (_ BitVec 64))

(assert (=> b!189011 (= lt!93605 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!93596 () Unit!5691)

(assert (=> b!189011 (= lt!93596 (addApplyDifferent!151 lt!93603 lt!93604 (zeroValue!3693 thiss!1248) lt!93605))))

(assert (=> b!189011 (= (apply!175 (+!290 lt!93603 (tuple2!3495 lt!93604 (zeroValue!3693 thiss!1248))) lt!93605) (apply!175 lt!93603 lt!93605))))

(declare-fun lt!93613 () Unit!5691)

(assert (=> b!189011 (= lt!93613 lt!93596)))

(declare-fun lt!93606 () ListLongMap!2425)

(assert (=> b!189011 (= lt!93606 (getCurrentListMapNoExtraKeys!205 (_keys!5815 thiss!1248) (_values!3835 thiss!1248) (mask!9027 thiss!1248) (extraKeys!3589 thiss!1248) (zeroValue!3693 thiss!1248) (minValue!3693 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3852 thiss!1248)))))

(declare-fun lt!93615 () (_ BitVec 64))

(assert (=> b!189011 (= lt!93615 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!93602 () (_ BitVec 64))

(assert (=> b!189011 (= lt!93602 (select (arr!3790 (_keys!5815 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!189011 (= lt!93597 (addApplyDifferent!151 lt!93606 lt!93615 (minValue!3693 thiss!1248) lt!93602))))

(assert (=> b!189011 (= (apply!175 (+!290 lt!93606 (tuple2!3495 lt!93615 (minValue!3693 thiss!1248))) lt!93602) (apply!175 lt!93606 lt!93602))))

(declare-fun b!189012 () Bool)

(assert (=> b!189012 (= e!124388 call!19064)))

(declare-fun bm!19064 () Bool)

(assert (=> bm!19064 (= call!19061 (contains!1327 lt!93610 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!189013 () Bool)

(assert (=> b!189013 (= e!124395 (not call!19061))))

(assert (= (and d!55599 c!33962) b!188996))

(assert (= (and d!55599 (not c!33962)) b!189009))

(assert (= (and b!189009 c!33966) b!189010))

(assert (= (and b!189009 (not c!33966)) b!189001))

(assert (= (and b!189001 c!33967) b!189012))

(assert (= (and b!189001 (not c!33967)) b!188997))

(assert (= (or b!189012 b!188997) bm!19061))

(assert (= (or b!189010 bm!19061) bm!19063))

(assert (= (or b!189010 b!189012) bm!19058))

(assert (= (or b!188996 bm!19063) bm!19062))

(assert (= (or b!188996 bm!19058) bm!19060))

(assert (= (and d!55599 res!89370) b!189005))

(assert (= (and d!55599 c!33964) b!189011))

(assert (= (and d!55599 (not c!33964)) b!189002))

(assert (= (and d!55599 res!89367) b!188995))

(assert (= (and b!188995 res!89365) b!188994))

(assert (= (and b!188995 (not res!89371)) b!189004))

(assert (= (and b!189004 res!89368) b!189007))

(assert (= (and b!188995 res!89366) b!188993))

(assert (= (and b!188993 c!33965) b!189000))

(assert (= (and b!188993 (not c!33965)) b!189008))

(assert (= (and b!189000 res!89369) b!189006))

(assert (= (or b!189000 b!189008) bm!19059))

(assert (= (and b!188993 res!89364) b!188998))

(assert (= (and b!188998 c!33963) b!189003))

(assert (= (and b!188998 (not c!33963)) b!189013))

(assert (= (and b!189003 res!89363) b!188999))

(assert (= (or b!189003 b!189013) bm!19064))

(declare-fun b_lambda!7349 () Bool)

(assert (=> (not b_lambda!7349) (not b!189007)))

(declare-fun t!7330 () Bool)

(declare-fun tb!2869 () Bool)

(assert (=> (and b!188813 (= (defaultEntry!3852 thiss!1248) (defaultEntry!3852 thiss!1248)) t!7330) tb!2869))

(declare-fun result!4869 () Bool)

(assert (=> tb!2869 (= result!4869 tp_is_empty!4407)))

(assert (=> b!189007 t!7330))

(declare-fun b_and!11291 () Bool)

(assert (= b_and!11287 (and (=> t!7330 result!4869) b_and!11291)))

(declare-fun m!215469 () Bool)

(assert (=> bm!19060 m!215469))

(assert (=> b!189005 m!215435))

(assert (=> b!189005 m!215435))

(assert (=> b!189005 m!215445))

(declare-fun m!215471 () Bool)

(assert (=> b!188999 m!215471))

(assert (=> d!55599 m!215369))

(assert (=> b!188994 m!215435))

(assert (=> b!188994 m!215435))

(assert (=> b!188994 m!215445))

(declare-fun m!215473 () Bool)

(assert (=> b!189011 m!215473))

(declare-fun m!215475 () Bool)

(assert (=> b!189011 m!215475))

(declare-fun m!215477 () Bool)

(assert (=> b!189011 m!215477))

(declare-fun m!215479 () Bool)

(assert (=> b!189011 m!215479))

(declare-fun m!215481 () Bool)

(assert (=> b!189011 m!215481))

(assert (=> b!189011 m!215475))

(declare-fun m!215483 () Bool)

(assert (=> b!189011 m!215483))

(declare-fun m!215485 () Bool)

(assert (=> b!189011 m!215485))

(declare-fun m!215487 () Bool)

(assert (=> b!189011 m!215487))

(declare-fun m!215489 () Bool)

(assert (=> b!189011 m!215489))

(declare-fun m!215491 () Bool)

(assert (=> b!189011 m!215491))

(declare-fun m!215493 () Bool)

(assert (=> b!189011 m!215493))

(assert (=> b!189011 m!215491))

(assert (=> b!189011 m!215489))

(declare-fun m!215495 () Bool)

(assert (=> b!189011 m!215495))

(assert (=> b!189011 m!215435))

(declare-fun m!215497 () Bool)

(assert (=> b!189011 m!215497))

(declare-fun m!215499 () Bool)

(assert (=> b!189011 m!215499))

(declare-fun m!215501 () Bool)

(assert (=> b!189011 m!215501))

(assert (=> b!189011 m!215501))

(declare-fun m!215503 () Bool)

(assert (=> b!189011 m!215503))

(declare-fun m!215505 () Bool)

(assert (=> b!188996 m!215505))

(declare-fun m!215507 () Bool)

(assert (=> b!189007 m!215507))

(declare-fun m!215509 () Bool)

(assert (=> b!189007 m!215509))

(declare-fun m!215511 () Bool)

(assert (=> b!189007 m!215511))

(assert (=> b!189007 m!215435))

(assert (=> b!189007 m!215435))

(declare-fun m!215513 () Bool)

(assert (=> b!189007 m!215513))

(assert (=> b!189007 m!215507))

(assert (=> b!189007 m!215509))

(declare-fun m!215515 () Bool)

(assert (=> bm!19059 m!215515))

(declare-fun m!215517 () Bool)

(assert (=> bm!19064 m!215517))

(assert (=> bm!19062 m!215481))

(declare-fun m!215519 () Bool)

(assert (=> b!189006 m!215519))

(assert (=> b!189004 m!215435))

(assert (=> b!189004 m!215435))

(declare-fun m!215521 () Bool)

(assert (=> b!189004 m!215521))

(assert (=> b!188812 d!55599))

(declare-fun mapNonEmpty!7606 () Bool)

(declare-fun mapRes!7606 () Bool)

(declare-fun tp!16741 () Bool)

(declare-fun e!124403 () Bool)

(assert (=> mapNonEmpty!7606 (= mapRes!7606 (and tp!16741 e!124403))))

(declare-fun mapKey!7606 () (_ BitVec 32))

(declare-fun mapValue!7606 () ValueCell!1860)

(declare-fun mapRest!7606 () (Array (_ BitVec 32) ValueCell!1860))

(assert (=> mapNonEmpty!7606 (= mapRest!7600 (store mapRest!7606 mapKey!7606 mapValue!7606))))

(declare-fun b!189022 () Bool)

(assert (=> b!189022 (= e!124403 tp_is_empty!4407)))

(declare-fun b!189023 () Bool)

(declare-fun e!124402 () Bool)

(assert (=> b!189023 (= e!124402 tp_is_empty!4407)))

(declare-fun mapIsEmpty!7606 () Bool)

(assert (=> mapIsEmpty!7606 mapRes!7606))

(declare-fun condMapEmpty!7606 () Bool)

(declare-fun mapDefault!7606 () ValueCell!1860)

(assert (=> mapNonEmpty!7600 (= condMapEmpty!7606 (= mapRest!7600 ((as const (Array (_ BitVec 32) ValueCell!1860)) mapDefault!7606)))))

(assert (=> mapNonEmpty!7600 (= tp!16731 (and e!124402 mapRes!7606))))

(assert (= (and mapNonEmpty!7600 condMapEmpty!7606) mapIsEmpty!7606))

(assert (= (and mapNonEmpty!7600 (not condMapEmpty!7606)) mapNonEmpty!7606))

(assert (= (and mapNonEmpty!7606 ((_ is ValueCellFull!1860) mapValue!7606)) b!189022))

(assert (= (and mapNonEmpty!7600 ((_ is ValueCellFull!1860) mapDefault!7606)) b!189023))

(declare-fun m!215523 () Bool)

(assert (=> mapNonEmpty!7606 m!215523))

(declare-fun b_lambda!7351 () Bool)

(assert (= b_lambda!7349 (or (and b!188813 b_free!4635) b_lambda!7351)))

(check-sat (not b!189005) (not b!189007) (not d!55591) (not b!188910) (not b!188950) (not d!55597) (not b!189006) (not bm!19064) (not d!55599) (not b!188948) (not b!188919) (not b!188999) (not b!189011) (not bm!19060) (not b!189004) (not bm!19059) (not bm!19037) (not b!188932) (not b_lambda!7351) (not b!188920) tp_is_empty!4407 (not bm!19043) (not mapNonEmpty!7606) (not b!188935) (not bm!19040) (not b!188870) (not b!188918) (not b!188994) (not b!188996) (not b_next!4635) (not d!55583) (not d!55581) (not b!188908) b_and!11291 (not d!55587) (not bm!19062) (not b!188933) (not bm!19036) (not b!188940))
(check-sat b_and!11291 (not b_next!4635))

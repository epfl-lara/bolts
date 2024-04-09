; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!16492 () Bool)

(assert start!16492)

(declare-fun b!163888 () Bool)

(declare-fun b_free!3813 () Bool)

(declare-fun b_next!3813 () Bool)

(assert (=> b!163888 (= b_free!3813 (not b_next!3813))))

(declare-fun tp!14034 () Bool)

(declare-fun b_and!10245 () Bool)

(assert (=> b!163888 (= tp!14034 b_and!10245)))

(declare-fun b!163887 () Bool)

(declare-fun res!77557 () Bool)

(declare-fun e!107545 () Bool)

(assert (=> b!163887 (=> (not res!77557) (not e!107545))))

(declare-datatypes ((V!4467 0))(
  ( (V!4468 (val!1852 Int)) )
))
(declare-datatypes ((ValueCell!1464 0))(
  ( (ValueCellFull!1464 (v!3713 V!4467)) (EmptyCell!1464) )
))
(declare-datatypes ((array!6322 0))(
  ( (array!6323 (arr!2998 (Array (_ BitVec 32) (_ BitVec 64))) (size!3286 (_ BitVec 32))) )
))
(declare-datatypes ((array!6324 0))(
  ( (array!6325 (arr!2999 (Array (_ BitVec 32) ValueCell!1464)) (size!3287 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1836 0))(
  ( (LongMapFixedSize!1837 (defaultEntry!3360 Int) (mask!8037 (_ BitVec 32)) (extraKeys!3101 (_ BitVec 32)) (zeroValue!3203 V!4467) (minValue!3203 V!4467) (_size!967 (_ BitVec 32)) (_keys!5181 array!6322) (_values!3343 array!6324) (_vacant!967 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!1836)

(assert (=> b!163887 (= res!77557 (and (= (size!3287 (_values!3343 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8037 thiss!1248))) (= (size!3286 (_keys!5181 thiss!1248)) (size!3287 (_values!3343 thiss!1248))) (bvsge (mask!8037 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3101 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3101 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun mapNonEmpty!6135 () Bool)

(declare-fun mapRes!6135 () Bool)

(declare-fun tp!14033 () Bool)

(declare-fun e!107544 () Bool)

(assert (=> mapNonEmpty!6135 (= mapRes!6135 (and tp!14033 e!107544))))

(declare-fun mapRest!6135 () (Array (_ BitVec 32) ValueCell!1464))

(declare-fun mapKey!6135 () (_ BitVec 32))

(declare-fun mapValue!6135 () ValueCell!1464)

(assert (=> mapNonEmpty!6135 (= (arr!2999 (_values!3343 thiss!1248)) (store mapRest!6135 mapKey!6135 mapValue!6135))))

(declare-fun e!107547 () Bool)

(declare-fun e!107543 () Bool)

(declare-fun tp_is_empty!3615 () Bool)

(declare-fun array_inv!1907 (array!6322) Bool)

(declare-fun array_inv!1908 (array!6324) Bool)

(assert (=> b!163888 (= e!107547 (and tp!14034 tp_is_empty!3615 (array_inv!1907 (_keys!5181 thiss!1248)) (array_inv!1908 (_values!3343 thiss!1248)) e!107543))))

(declare-fun b!163889 () Bool)

(declare-fun res!77559 () Bool)

(declare-fun e!107542 () Bool)

(assert (=> b!163889 (=> (not res!77559) (not e!107542))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!163889 (= res!77559 (not (= key!828 (bvneg key!828))))))

(declare-fun res!77562 () Bool)

(assert (=> start!16492 (=> (not res!77562) (not e!107542))))

(declare-fun valid!811 (LongMapFixedSize!1836) Bool)

(assert (=> start!16492 (= res!77562 (valid!811 thiss!1248))))

(assert (=> start!16492 e!107542))

(assert (=> start!16492 e!107547))

(assert (=> start!16492 true))

(declare-fun b!163890 () Bool)

(declare-fun e!107548 () Bool)

(assert (=> b!163890 (= e!107548 tp_is_empty!3615)))

(declare-fun mapIsEmpty!6135 () Bool)

(assert (=> mapIsEmpty!6135 mapRes!6135))

(declare-fun b!163891 () Bool)

(declare-fun res!77561 () Bool)

(assert (=> b!163891 (=> (not res!77561) (not e!107545))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!163891 (= res!77561 (validMask!0 (mask!8037 thiss!1248)))))

(declare-fun b!163892 () Bool)

(declare-datatypes ((List!2015 0))(
  ( (Nil!2012) (Cons!2011 (h!2628 (_ BitVec 64)) (t!6825 List!2015)) )
))
(declare-fun arrayNoDuplicates!0 (array!6322 (_ BitVec 32) List!2015) Bool)

(assert (=> b!163892 (= e!107545 (not (arrayNoDuplicates!0 (_keys!5181 thiss!1248) #b00000000000000000000000000000000 Nil!2012)))))

(declare-fun b!163893 () Bool)

(assert (=> b!163893 (= e!107542 e!107545)))

(declare-fun res!77558 () Bool)

(assert (=> b!163893 (=> (not res!77558) (not e!107545))))

(declare-datatypes ((SeekEntryResult!417 0))(
  ( (MissingZero!417 (index!3836 (_ BitVec 32))) (Found!417 (index!3837 (_ BitVec 32))) (Intermediate!417 (undefined!1229 Bool) (index!3838 (_ BitVec 32)) (x!18189 (_ BitVec 32))) (Undefined!417) (MissingVacant!417 (index!3839 (_ BitVec 32))) )
))
(declare-fun lt!82817 () SeekEntryResult!417)

(get-info :version)

(assert (=> b!163893 (= res!77558 (and (not ((_ is Undefined!417) lt!82817)) (not ((_ is MissingVacant!417) lt!82817)) (not ((_ is MissingZero!417) lt!82817)) ((_ is Found!417) lt!82817)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!6322 (_ BitVec 32)) SeekEntryResult!417)

(assert (=> b!163893 (= lt!82817 (seekEntryOrOpen!0 key!828 (_keys!5181 thiss!1248) (mask!8037 thiss!1248)))))

(declare-fun b!163894 () Bool)

(assert (=> b!163894 (= e!107543 (and e!107548 mapRes!6135))))

(declare-fun condMapEmpty!6135 () Bool)

(declare-fun mapDefault!6135 () ValueCell!1464)

(assert (=> b!163894 (= condMapEmpty!6135 (= (arr!2999 (_values!3343 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1464)) mapDefault!6135)))))

(declare-fun b!163895 () Bool)

(declare-fun res!77560 () Bool)

(assert (=> b!163895 (=> (not res!77560) (not e!107545))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!6322 (_ BitVec 32)) Bool)

(assert (=> b!163895 (= res!77560 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5181 thiss!1248) (mask!8037 thiss!1248)))))

(declare-fun b!163896 () Bool)

(assert (=> b!163896 (= e!107544 tp_is_empty!3615)))

(assert (= (and start!16492 res!77562) b!163889))

(assert (= (and b!163889 res!77559) b!163893))

(assert (= (and b!163893 res!77558) b!163891))

(assert (= (and b!163891 res!77561) b!163887))

(assert (= (and b!163887 res!77557) b!163895))

(assert (= (and b!163895 res!77560) b!163892))

(assert (= (and b!163894 condMapEmpty!6135) mapIsEmpty!6135))

(assert (= (and b!163894 (not condMapEmpty!6135)) mapNonEmpty!6135))

(assert (= (and mapNonEmpty!6135 ((_ is ValueCellFull!1464) mapValue!6135)) b!163896))

(assert (= (and b!163894 ((_ is ValueCellFull!1464) mapDefault!6135)) b!163890))

(assert (= b!163888 b!163894))

(assert (= start!16492 b!163888))

(declare-fun m!194337 () Bool)

(assert (=> b!163891 m!194337))

(declare-fun m!194339 () Bool)

(assert (=> start!16492 m!194339))

(declare-fun m!194341 () Bool)

(assert (=> mapNonEmpty!6135 m!194341))

(declare-fun m!194343 () Bool)

(assert (=> b!163893 m!194343))

(declare-fun m!194345 () Bool)

(assert (=> b!163888 m!194345))

(declare-fun m!194347 () Bool)

(assert (=> b!163888 m!194347))

(declare-fun m!194349 () Bool)

(assert (=> b!163895 m!194349))

(declare-fun m!194351 () Bool)

(assert (=> b!163892 m!194351))

(check-sat (not b!163895) (not b!163893) b_and!10245 (not start!16492) tp_is_empty!3615 (not mapNonEmpty!6135) (not b!163888) (not b_next!3813) (not b!163892) (not b!163891))
(check-sat b_and!10245 (not b_next!3813))
(get-model)

(declare-fun d!51415 () Bool)

(declare-fun res!77585 () Bool)

(declare-fun e!107578 () Bool)

(assert (=> d!51415 (=> res!77585 e!107578)))

(assert (=> d!51415 (= res!77585 (bvsge #b00000000000000000000000000000000 (size!3286 (_keys!5181 thiss!1248))))))

(assert (=> d!51415 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5181 thiss!1248) (mask!8037 thiss!1248)) e!107578)))

(declare-fun b!163935 () Bool)

(declare-fun e!107577 () Bool)

(declare-fun e!107576 () Bool)

(assert (=> b!163935 (= e!107577 e!107576)))

(declare-fun lt!82829 () (_ BitVec 64))

(assert (=> b!163935 (= lt!82829 (select (arr!2998 (_keys!5181 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5042 0))(
  ( (Unit!5043) )
))
(declare-fun lt!82828 () Unit!5042)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!6322 (_ BitVec 64) (_ BitVec 32)) Unit!5042)

(assert (=> b!163935 (= lt!82828 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5181 thiss!1248) lt!82829 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!6322 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!163935 (arrayContainsKey!0 (_keys!5181 thiss!1248) lt!82829 #b00000000000000000000000000000000)))

(declare-fun lt!82827 () Unit!5042)

(assert (=> b!163935 (= lt!82827 lt!82828)))

(declare-fun res!77586 () Bool)

(assert (=> b!163935 (= res!77586 (= (seekEntryOrOpen!0 (select (arr!2998 (_keys!5181 thiss!1248)) #b00000000000000000000000000000000) (_keys!5181 thiss!1248) (mask!8037 thiss!1248)) (Found!417 #b00000000000000000000000000000000)))))

(assert (=> b!163935 (=> (not res!77586) (not e!107576))))

(declare-fun b!163936 () Bool)

(declare-fun call!17324 () Bool)

(assert (=> b!163936 (= e!107576 call!17324)))

(declare-fun bm!17321 () Bool)

(assert (=> bm!17321 (= call!17324 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5181 thiss!1248) (mask!8037 thiss!1248)))))

(declare-fun b!163937 () Bool)

(assert (=> b!163937 (= e!107578 e!107577)))

(declare-fun c!30147 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!163937 (= c!30147 (validKeyInArray!0 (select (arr!2998 (_keys!5181 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!163938 () Bool)

(assert (=> b!163938 (= e!107577 call!17324)))

(assert (= (and d!51415 (not res!77585)) b!163937))

(assert (= (and b!163937 c!30147) b!163935))

(assert (= (and b!163937 (not c!30147)) b!163938))

(assert (= (and b!163935 res!77586) b!163936))

(assert (= (or b!163936 b!163938) bm!17321))

(declare-fun m!194369 () Bool)

(assert (=> b!163935 m!194369))

(declare-fun m!194371 () Bool)

(assert (=> b!163935 m!194371))

(declare-fun m!194373 () Bool)

(assert (=> b!163935 m!194373))

(assert (=> b!163935 m!194369))

(declare-fun m!194375 () Bool)

(assert (=> b!163935 m!194375))

(declare-fun m!194377 () Bool)

(assert (=> bm!17321 m!194377))

(assert (=> b!163937 m!194369))

(assert (=> b!163937 m!194369))

(declare-fun m!194379 () Bool)

(assert (=> b!163937 m!194379))

(assert (=> b!163895 d!51415))

(declare-fun d!51417 () Bool)

(declare-fun res!77593 () Bool)

(declare-fun e!107581 () Bool)

(assert (=> d!51417 (=> (not res!77593) (not e!107581))))

(declare-fun simpleValid!124 (LongMapFixedSize!1836) Bool)

(assert (=> d!51417 (= res!77593 (simpleValid!124 thiss!1248))))

(assert (=> d!51417 (= (valid!811 thiss!1248) e!107581)))

(declare-fun b!163945 () Bool)

(declare-fun res!77594 () Bool)

(assert (=> b!163945 (=> (not res!77594) (not e!107581))))

(declare-fun arrayCountValidKeys!0 (array!6322 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!163945 (= res!77594 (= (arrayCountValidKeys!0 (_keys!5181 thiss!1248) #b00000000000000000000000000000000 (size!3286 (_keys!5181 thiss!1248))) (_size!967 thiss!1248)))))

(declare-fun b!163946 () Bool)

(declare-fun res!77595 () Bool)

(assert (=> b!163946 (=> (not res!77595) (not e!107581))))

(assert (=> b!163946 (= res!77595 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5181 thiss!1248) (mask!8037 thiss!1248)))))

(declare-fun b!163947 () Bool)

(assert (=> b!163947 (= e!107581 (arrayNoDuplicates!0 (_keys!5181 thiss!1248) #b00000000000000000000000000000000 Nil!2012))))

(assert (= (and d!51417 res!77593) b!163945))

(assert (= (and b!163945 res!77594) b!163946))

(assert (= (and b!163946 res!77595) b!163947))

(declare-fun m!194381 () Bool)

(assert (=> d!51417 m!194381))

(declare-fun m!194383 () Bool)

(assert (=> b!163945 m!194383))

(assert (=> b!163946 m!194349))

(assert (=> b!163947 m!194351))

(assert (=> start!16492 d!51417))

(declare-fun b!163960 () Bool)

(declare-fun e!107588 () SeekEntryResult!417)

(declare-fun e!107590 () SeekEntryResult!417)

(assert (=> b!163960 (= e!107588 e!107590)))

(declare-fun lt!82836 () (_ BitVec 64))

(declare-fun lt!82837 () SeekEntryResult!417)

(assert (=> b!163960 (= lt!82836 (select (arr!2998 (_keys!5181 thiss!1248)) (index!3838 lt!82837)))))

(declare-fun c!30155 () Bool)

(assert (=> b!163960 (= c!30155 (= lt!82836 key!828))))

(declare-fun d!51419 () Bool)

(declare-fun lt!82838 () SeekEntryResult!417)

(assert (=> d!51419 (and (or ((_ is Undefined!417) lt!82838) (not ((_ is Found!417) lt!82838)) (and (bvsge (index!3837 lt!82838) #b00000000000000000000000000000000) (bvslt (index!3837 lt!82838) (size!3286 (_keys!5181 thiss!1248))))) (or ((_ is Undefined!417) lt!82838) ((_ is Found!417) lt!82838) (not ((_ is MissingZero!417) lt!82838)) (and (bvsge (index!3836 lt!82838) #b00000000000000000000000000000000) (bvslt (index!3836 lt!82838) (size!3286 (_keys!5181 thiss!1248))))) (or ((_ is Undefined!417) lt!82838) ((_ is Found!417) lt!82838) ((_ is MissingZero!417) lt!82838) (not ((_ is MissingVacant!417) lt!82838)) (and (bvsge (index!3839 lt!82838) #b00000000000000000000000000000000) (bvslt (index!3839 lt!82838) (size!3286 (_keys!5181 thiss!1248))))) (or ((_ is Undefined!417) lt!82838) (ite ((_ is Found!417) lt!82838) (= (select (arr!2998 (_keys!5181 thiss!1248)) (index!3837 lt!82838)) key!828) (ite ((_ is MissingZero!417) lt!82838) (= (select (arr!2998 (_keys!5181 thiss!1248)) (index!3836 lt!82838)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!417) lt!82838) (= (select (arr!2998 (_keys!5181 thiss!1248)) (index!3839 lt!82838)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!51419 (= lt!82838 e!107588)))

(declare-fun c!30154 () Bool)

(assert (=> d!51419 (= c!30154 (and ((_ is Intermediate!417) lt!82837) (undefined!1229 lt!82837)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6322 (_ BitVec 32)) SeekEntryResult!417)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!51419 (= lt!82837 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8037 thiss!1248)) key!828 (_keys!5181 thiss!1248) (mask!8037 thiss!1248)))))

(assert (=> d!51419 (validMask!0 (mask!8037 thiss!1248))))

(assert (=> d!51419 (= (seekEntryOrOpen!0 key!828 (_keys!5181 thiss!1248) (mask!8037 thiss!1248)) lt!82838)))

(declare-fun e!107589 () SeekEntryResult!417)

(declare-fun b!163961 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!6322 (_ BitVec 32)) SeekEntryResult!417)

(assert (=> b!163961 (= e!107589 (seekKeyOrZeroReturnVacant!0 (x!18189 lt!82837) (index!3838 lt!82837) (index!3838 lt!82837) key!828 (_keys!5181 thiss!1248) (mask!8037 thiss!1248)))))

(declare-fun b!163962 () Bool)

(declare-fun c!30156 () Bool)

(assert (=> b!163962 (= c!30156 (= lt!82836 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!163962 (= e!107590 e!107589)))

(declare-fun b!163963 () Bool)

(assert (=> b!163963 (= e!107589 (MissingZero!417 (index!3838 lt!82837)))))

(declare-fun b!163964 () Bool)

(assert (=> b!163964 (= e!107590 (Found!417 (index!3838 lt!82837)))))

(declare-fun b!163965 () Bool)

(assert (=> b!163965 (= e!107588 Undefined!417)))

(assert (= (and d!51419 c!30154) b!163965))

(assert (= (and d!51419 (not c!30154)) b!163960))

(assert (= (and b!163960 c!30155) b!163964))

(assert (= (and b!163960 (not c!30155)) b!163962))

(assert (= (and b!163962 c!30156) b!163963))

(assert (= (and b!163962 (not c!30156)) b!163961))

(declare-fun m!194385 () Bool)

(assert (=> b!163960 m!194385))

(assert (=> d!51419 m!194337))

(declare-fun m!194387 () Bool)

(assert (=> d!51419 m!194387))

(declare-fun m!194389 () Bool)

(assert (=> d!51419 m!194389))

(declare-fun m!194391 () Bool)

(assert (=> d!51419 m!194391))

(declare-fun m!194393 () Bool)

(assert (=> d!51419 m!194393))

(declare-fun m!194395 () Bool)

(assert (=> d!51419 m!194395))

(assert (=> d!51419 m!194391))

(declare-fun m!194397 () Bool)

(assert (=> b!163961 m!194397))

(assert (=> b!163893 d!51419))

(declare-fun d!51421 () Bool)

(assert (=> d!51421 (= (array_inv!1907 (_keys!5181 thiss!1248)) (bvsge (size!3286 (_keys!5181 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163888 d!51421))

(declare-fun d!51423 () Bool)

(assert (=> d!51423 (= (array_inv!1908 (_values!3343 thiss!1248)) (bvsge (size!3287 (_values!3343 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!163888 d!51423))

(declare-fun bm!17324 () Bool)

(declare-fun call!17327 () Bool)

(declare-fun c!30159 () Bool)

(assert (=> bm!17324 (= call!17327 (arrayNoDuplicates!0 (_keys!5181 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!30159 (Cons!2011 (select (arr!2998 (_keys!5181 thiss!1248)) #b00000000000000000000000000000000) Nil!2012) Nil!2012)))))

(declare-fun b!163976 () Bool)

(declare-fun e!107599 () Bool)

(assert (=> b!163976 (= e!107599 call!17327)))

(declare-fun d!51425 () Bool)

(declare-fun res!77604 () Bool)

(declare-fun e!107602 () Bool)

(assert (=> d!51425 (=> res!77604 e!107602)))

(assert (=> d!51425 (= res!77604 (bvsge #b00000000000000000000000000000000 (size!3286 (_keys!5181 thiss!1248))))))

(assert (=> d!51425 (= (arrayNoDuplicates!0 (_keys!5181 thiss!1248) #b00000000000000000000000000000000 Nil!2012) e!107602)))

(declare-fun b!163977 () Bool)

(declare-fun e!107600 () Bool)

(declare-fun contains!1039 (List!2015 (_ BitVec 64)) Bool)

(assert (=> b!163977 (= e!107600 (contains!1039 Nil!2012 (select (arr!2998 (_keys!5181 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!163978 () Bool)

(declare-fun e!107601 () Bool)

(assert (=> b!163978 (= e!107602 e!107601)))

(declare-fun res!77603 () Bool)

(assert (=> b!163978 (=> (not res!77603) (not e!107601))))

(assert (=> b!163978 (= res!77603 (not e!107600))))

(declare-fun res!77602 () Bool)

(assert (=> b!163978 (=> (not res!77602) (not e!107600))))

(assert (=> b!163978 (= res!77602 (validKeyInArray!0 (select (arr!2998 (_keys!5181 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!163979 () Bool)

(assert (=> b!163979 (= e!107601 e!107599)))

(assert (=> b!163979 (= c!30159 (validKeyInArray!0 (select (arr!2998 (_keys!5181 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!163980 () Bool)

(assert (=> b!163980 (= e!107599 call!17327)))

(assert (= (and d!51425 (not res!77604)) b!163978))

(assert (= (and b!163978 res!77602) b!163977))

(assert (= (and b!163978 res!77603) b!163979))

(assert (= (and b!163979 c!30159) b!163976))

(assert (= (and b!163979 (not c!30159)) b!163980))

(assert (= (or b!163976 b!163980) bm!17324))

(assert (=> bm!17324 m!194369))

(declare-fun m!194399 () Bool)

(assert (=> bm!17324 m!194399))

(assert (=> b!163977 m!194369))

(assert (=> b!163977 m!194369))

(declare-fun m!194401 () Bool)

(assert (=> b!163977 m!194401))

(assert (=> b!163978 m!194369))

(assert (=> b!163978 m!194369))

(assert (=> b!163978 m!194379))

(assert (=> b!163979 m!194369))

(assert (=> b!163979 m!194369))

(assert (=> b!163979 m!194379))

(assert (=> b!163892 d!51425))

(declare-fun d!51427 () Bool)

(assert (=> d!51427 (= (validMask!0 (mask!8037 thiss!1248)) (and (or (= (mask!8037 thiss!1248) #b00000000000000000000000000000111) (= (mask!8037 thiss!1248) #b00000000000000000000000000001111) (= (mask!8037 thiss!1248) #b00000000000000000000000000011111) (= (mask!8037 thiss!1248) #b00000000000000000000000000111111) (= (mask!8037 thiss!1248) #b00000000000000000000000001111111) (= (mask!8037 thiss!1248) #b00000000000000000000000011111111) (= (mask!8037 thiss!1248) #b00000000000000000000000111111111) (= (mask!8037 thiss!1248) #b00000000000000000000001111111111) (= (mask!8037 thiss!1248) #b00000000000000000000011111111111) (= (mask!8037 thiss!1248) #b00000000000000000000111111111111) (= (mask!8037 thiss!1248) #b00000000000000000001111111111111) (= (mask!8037 thiss!1248) #b00000000000000000011111111111111) (= (mask!8037 thiss!1248) #b00000000000000000111111111111111) (= (mask!8037 thiss!1248) #b00000000000000001111111111111111) (= (mask!8037 thiss!1248) #b00000000000000011111111111111111) (= (mask!8037 thiss!1248) #b00000000000000111111111111111111) (= (mask!8037 thiss!1248) #b00000000000001111111111111111111) (= (mask!8037 thiss!1248) #b00000000000011111111111111111111) (= (mask!8037 thiss!1248) #b00000000000111111111111111111111) (= (mask!8037 thiss!1248) #b00000000001111111111111111111111) (= (mask!8037 thiss!1248) #b00000000011111111111111111111111) (= (mask!8037 thiss!1248) #b00000000111111111111111111111111) (= (mask!8037 thiss!1248) #b00000001111111111111111111111111) (= (mask!8037 thiss!1248) #b00000011111111111111111111111111) (= (mask!8037 thiss!1248) #b00000111111111111111111111111111) (= (mask!8037 thiss!1248) #b00001111111111111111111111111111) (= (mask!8037 thiss!1248) #b00011111111111111111111111111111) (= (mask!8037 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8037 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!163891 d!51427))

(declare-fun mapNonEmpty!6141 () Bool)

(declare-fun mapRes!6141 () Bool)

(declare-fun tp!14043 () Bool)

(declare-fun e!107607 () Bool)

(assert (=> mapNonEmpty!6141 (= mapRes!6141 (and tp!14043 e!107607))))

(declare-fun mapKey!6141 () (_ BitVec 32))

(declare-fun mapValue!6141 () ValueCell!1464)

(declare-fun mapRest!6141 () (Array (_ BitVec 32) ValueCell!1464))

(assert (=> mapNonEmpty!6141 (= mapRest!6135 (store mapRest!6141 mapKey!6141 mapValue!6141))))

(declare-fun b!163988 () Bool)

(declare-fun e!107608 () Bool)

(assert (=> b!163988 (= e!107608 tp_is_empty!3615)))

(declare-fun b!163987 () Bool)

(assert (=> b!163987 (= e!107607 tp_is_empty!3615)))

(declare-fun mapIsEmpty!6141 () Bool)

(assert (=> mapIsEmpty!6141 mapRes!6141))

(declare-fun condMapEmpty!6141 () Bool)

(declare-fun mapDefault!6141 () ValueCell!1464)

(assert (=> mapNonEmpty!6135 (= condMapEmpty!6141 (= mapRest!6135 ((as const (Array (_ BitVec 32) ValueCell!1464)) mapDefault!6141)))))

(assert (=> mapNonEmpty!6135 (= tp!14033 (and e!107608 mapRes!6141))))

(assert (= (and mapNonEmpty!6135 condMapEmpty!6141) mapIsEmpty!6141))

(assert (= (and mapNonEmpty!6135 (not condMapEmpty!6141)) mapNonEmpty!6141))

(assert (= (and mapNonEmpty!6141 ((_ is ValueCellFull!1464) mapValue!6141)) b!163987))

(assert (= (and mapNonEmpty!6135 ((_ is ValueCellFull!1464) mapDefault!6141)) b!163988))

(declare-fun m!194403 () Bool)

(assert (=> mapNonEmpty!6141 m!194403))

(check-sat (not b!163979) (not bm!17321) (not b!163978) (not b!163937) (not b!163946) (not b!163947) (not b!163935) tp_is_empty!3615 (not d!51417) (not mapNonEmpty!6141) (not b!163977) (not d!51419) b_and!10245 (not bm!17324) (not b!163961) (not b!163945) (not b_next!3813))
(check-sat b_and!10245 (not b_next!3813))

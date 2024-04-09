; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18496 () Bool)

(assert start!18496)

(declare-fun b!183299 () Bool)

(declare-fun b_free!4527 () Bool)

(declare-fun b_next!4527 () Bool)

(assert (=> b!183299 (= b_free!4527 (not b_next!4527))))

(declare-fun tp!16352 () Bool)

(declare-fun b_and!11115 () Bool)

(assert (=> b!183299 (= tp!16352 b_and!11115)))

(declare-fun b!183293 () Bool)

(declare-fun e!120692 () Bool)

(declare-datatypes ((V!5379 0))(
  ( (V!5380 (val!2194 Int)) )
))
(declare-datatypes ((ValueCell!1806 0))(
  ( (ValueCellFull!1806 (v!4093 V!5379)) (EmptyCell!1806) )
))
(declare-datatypes ((array!7790 0))(
  ( (array!7791 (arr!3682 (Array (_ BitVec 32) (_ BitVec 64))) (size!3994 (_ BitVec 32))) )
))
(declare-datatypes ((array!7792 0))(
  ( (array!7793 (arr!3683 (Array (_ BitVec 32) ValueCell!1806)) (size!3995 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2520 0))(
  ( (LongMapFixedSize!2521 (defaultEntry!3750 Int) (mask!8812 (_ BitVec 32)) (extraKeys!3487 (_ BitVec 32)) (zeroValue!3591 V!5379) (minValue!3591 V!5379) (_size!1309 (_ BitVec 32)) (_keys!5668 array!7790) (_values!3733 array!7792) (_vacant!1309 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2520)

(assert (=> b!183293 (= e!120692 (not (= (size!3995 (_values!3733 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8812 thiss!1248)))))))

(declare-fun b!183294 () Bool)

(declare-fun e!120690 () Bool)

(declare-fun e!120694 () Bool)

(declare-fun mapRes!7382 () Bool)

(assert (=> b!183294 (= e!120690 (and e!120694 mapRes!7382))))

(declare-fun condMapEmpty!7382 () Bool)

(declare-fun mapDefault!7382 () ValueCell!1806)

(assert (=> b!183294 (= condMapEmpty!7382 (= (arr!3683 (_values!3733 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1806)) mapDefault!7382)))))

(declare-fun b!183295 () Bool)

(declare-fun e!120689 () Bool)

(assert (=> b!183295 (= e!120689 e!120692)))

(declare-fun res!86778 () Bool)

(assert (=> b!183295 (=> (not res!86778) (not e!120692))))

(declare-datatypes ((SeekEntryResult!630 0))(
  ( (MissingZero!630 (index!4690 (_ BitVec 32))) (Found!630 (index!4691 (_ BitVec 32))) (Intermediate!630 (undefined!1442 Bool) (index!4692 (_ BitVec 32)) (x!19984 (_ BitVec 32))) (Undefined!630) (MissingVacant!630 (index!4693 (_ BitVec 32))) )
))
(declare-fun lt!90644 () SeekEntryResult!630)

(get-info :version)

(assert (=> b!183295 (= res!86778 (and (not ((_ is Undefined!630) lt!90644)) (not ((_ is MissingVacant!630) lt!90644)) (not ((_ is MissingZero!630) lt!90644)) ((_ is Found!630) lt!90644)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7790 (_ BitVec 32)) SeekEntryResult!630)

(assert (=> b!183295 (= lt!90644 (seekEntryOrOpen!0 key!828 (_keys!5668 thiss!1248) (mask!8812 thiss!1248)))))

(declare-fun b!183296 () Bool)

(declare-fun res!86780 () Bool)

(assert (=> b!183296 (=> (not res!86780) (not e!120689))))

(assert (=> b!183296 (= res!86780 (not (= key!828 (bvneg key!828))))))

(declare-fun b!183297 () Bool)

(declare-fun res!86779 () Bool)

(assert (=> b!183297 (=> (not res!86779) (not e!120692))))

(declare-datatypes ((tuple2!3416 0))(
  ( (tuple2!3417 (_1!1718 (_ BitVec 64)) (_2!1718 V!5379)) )
))
(declare-datatypes ((List!2357 0))(
  ( (Nil!2354) (Cons!2353 (h!2982 tuple2!3416) (t!7233 List!2357)) )
))
(declare-datatypes ((ListLongMap!2347 0))(
  ( (ListLongMap!2348 (toList!1189 List!2357)) )
))
(declare-fun contains!1269 (ListLongMap!2347 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!832 (array!7790 array!7792 (_ BitVec 32) (_ BitVec 32) V!5379 V!5379 (_ BitVec 32) Int) ListLongMap!2347)

(assert (=> b!183297 (= res!86779 (not (contains!1269 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)) key!828)))))

(declare-fun b!183298 () Bool)

(declare-fun e!120688 () Bool)

(declare-fun tp_is_empty!4299 () Bool)

(assert (=> b!183298 (= e!120688 tp_is_empty!4299)))

(declare-fun e!120693 () Bool)

(declare-fun array_inv!2371 (array!7790) Bool)

(declare-fun array_inv!2372 (array!7792) Bool)

(assert (=> b!183299 (= e!120693 (and tp!16352 tp_is_empty!4299 (array_inv!2371 (_keys!5668 thiss!1248)) (array_inv!2372 (_values!3733 thiss!1248)) e!120690))))

(declare-fun mapIsEmpty!7382 () Bool)

(assert (=> mapIsEmpty!7382 mapRes!7382))

(declare-fun res!86777 () Bool)

(assert (=> start!18496 (=> (not res!86777) (not e!120689))))

(declare-fun valid!1034 (LongMapFixedSize!2520) Bool)

(assert (=> start!18496 (= res!86777 (valid!1034 thiss!1248))))

(assert (=> start!18496 e!120689))

(assert (=> start!18496 e!120693))

(assert (=> start!18496 true))

(declare-fun mapNonEmpty!7382 () Bool)

(declare-fun tp!16351 () Bool)

(assert (=> mapNonEmpty!7382 (= mapRes!7382 (and tp!16351 e!120688))))

(declare-fun mapRest!7382 () (Array (_ BitVec 32) ValueCell!1806))

(declare-fun mapValue!7382 () ValueCell!1806)

(declare-fun mapKey!7382 () (_ BitVec 32))

(assert (=> mapNonEmpty!7382 (= (arr!3683 (_values!3733 thiss!1248)) (store mapRest!7382 mapKey!7382 mapValue!7382))))

(declare-fun b!183300 () Bool)

(assert (=> b!183300 (= e!120694 tp_is_empty!4299)))

(declare-fun b!183301 () Bool)

(declare-fun res!86781 () Bool)

(assert (=> b!183301 (=> (not res!86781) (not e!120692))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!183301 (= res!86781 (validMask!0 (mask!8812 thiss!1248)))))

(assert (= (and start!18496 res!86777) b!183296))

(assert (= (and b!183296 res!86780) b!183295))

(assert (= (and b!183295 res!86778) b!183297))

(assert (= (and b!183297 res!86779) b!183301))

(assert (= (and b!183301 res!86781) b!183293))

(assert (= (and b!183294 condMapEmpty!7382) mapIsEmpty!7382))

(assert (= (and b!183294 (not condMapEmpty!7382)) mapNonEmpty!7382))

(assert (= (and mapNonEmpty!7382 ((_ is ValueCellFull!1806) mapValue!7382)) b!183298))

(assert (= (and b!183294 ((_ is ValueCellFull!1806) mapDefault!7382)) b!183300))

(assert (= b!183299 b!183294))

(assert (= start!18496 b!183299))

(declare-fun m!210825 () Bool)

(assert (=> start!18496 m!210825))

(declare-fun m!210827 () Bool)

(assert (=> b!183301 m!210827))

(declare-fun m!210829 () Bool)

(assert (=> b!183299 m!210829))

(declare-fun m!210831 () Bool)

(assert (=> b!183299 m!210831))

(declare-fun m!210833 () Bool)

(assert (=> mapNonEmpty!7382 m!210833))

(declare-fun m!210835 () Bool)

(assert (=> b!183295 m!210835))

(declare-fun m!210837 () Bool)

(assert (=> b!183297 m!210837))

(assert (=> b!183297 m!210837))

(declare-fun m!210839 () Bool)

(assert (=> b!183297 m!210839))

(check-sat b_and!11115 (not b_next!4527) tp_is_empty!4299 (not b!183301) (not start!18496) (not mapNonEmpty!7382) (not b!183299) (not b!183297) (not b!183295))
(check-sat b_and!11115 (not b_next!4527))
(get-model)

(declare-fun d!54619 () Bool)

(assert (=> d!54619 (= (validMask!0 (mask!8812 thiss!1248)) (and (or (= (mask!8812 thiss!1248) #b00000000000000000000000000000111) (= (mask!8812 thiss!1248) #b00000000000000000000000000001111) (= (mask!8812 thiss!1248) #b00000000000000000000000000011111) (= (mask!8812 thiss!1248) #b00000000000000000000000000111111) (= (mask!8812 thiss!1248) #b00000000000000000000000001111111) (= (mask!8812 thiss!1248) #b00000000000000000000000011111111) (= (mask!8812 thiss!1248) #b00000000000000000000000111111111) (= (mask!8812 thiss!1248) #b00000000000000000000001111111111) (= (mask!8812 thiss!1248) #b00000000000000000000011111111111) (= (mask!8812 thiss!1248) #b00000000000000000000111111111111) (= (mask!8812 thiss!1248) #b00000000000000000001111111111111) (= (mask!8812 thiss!1248) #b00000000000000000011111111111111) (= (mask!8812 thiss!1248) #b00000000000000000111111111111111) (= (mask!8812 thiss!1248) #b00000000000000001111111111111111) (= (mask!8812 thiss!1248) #b00000000000000011111111111111111) (= (mask!8812 thiss!1248) #b00000000000000111111111111111111) (= (mask!8812 thiss!1248) #b00000000000001111111111111111111) (= (mask!8812 thiss!1248) #b00000000000011111111111111111111) (= (mask!8812 thiss!1248) #b00000000000111111111111111111111) (= (mask!8812 thiss!1248) #b00000000001111111111111111111111) (= (mask!8812 thiss!1248) #b00000000011111111111111111111111) (= (mask!8812 thiss!1248) #b00000000111111111111111111111111) (= (mask!8812 thiss!1248) #b00000001111111111111111111111111) (= (mask!8812 thiss!1248) #b00000011111111111111111111111111) (= (mask!8812 thiss!1248) #b00000111111111111111111111111111) (= (mask!8812 thiss!1248) #b00001111111111111111111111111111) (= (mask!8812 thiss!1248) #b00011111111111111111111111111111) (= (mask!8812 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8812 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!183301 d!54619))

(declare-fun d!54621 () Bool)

(declare-fun e!120720 () Bool)

(assert (=> d!54621 e!120720))

(declare-fun res!86799 () Bool)

(assert (=> d!54621 (=> res!86799 e!120720)))

(declare-fun lt!90657 () Bool)

(assert (=> d!54621 (= res!86799 (not lt!90657))))

(declare-fun lt!90659 () Bool)

(assert (=> d!54621 (= lt!90657 lt!90659)))

(declare-datatypes ((Unit!5545 0))(
  ( (Unit!5546) )
))
(declare-fun lt!90656 () Unit!5545)

(declare-fun e!120721 () Unit!5545)

(assert (=> d!54621 (= lt!90656 e!120721)))

(declare-fun c!32831 () Bool)

(assert (=> d!54621 (= c!32831 lt!90659)))

(declare-fun containsKey!219 (List!2357 (_ BitVec 64)) Bool)

(assert (=> d!54621 (= lt!90659 (containsKey!219 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828))))

(assert (=> d!54621 (= (contains!1269 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)) key!828) lt!90657)))

(declare-fun b!183335 () Bool)

(declare-fun lt!90658 () Unit!5545)

(assert (=> b!183335 (= e!120721 lt!90658)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!168 (List!2357 (_ BitVec 64)) Unit!5545)

(assert (=> b!183335 (= lt!90658 (lemmaContainsKeyImpliesGetValueByKeyDefined!168 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828))))

(declare-datatypes ((Option!221 0))(
  ( (Some!220 (v!4095 V!5379)) (None!219) )
))
(declare-fun isDefined!169 (Option!221) Bool)

(declare-fun getValueByKey!215 (List!2357 (_ BitVec 64)) Option!221)

(assert (=> b!183335 (isDefined!169 (getValueByKey!215 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828))))

(declare-fun b!183336 () Bool)

(declare-fun Unit!5547 () Unit!5545)

(assert (=> b!183336 (= e!120721 Unit!5547)))

(declare-fun b!183337 () Bool)

(assert (=> b!183337 (= e!120720 (isDefined!169 (getValueByKey!215 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828)))))

(assert (= (and d!54621 c!32831) b!183335))

(assert (= (and d!54621 (not c!32831)) b!183336))

(assert (= (and d!54621 (not res!86799)) b!183337))

(declare-fun m!210857 () Bool)

(assert (=> d!54621 m!210857))

(declare-fun m!210859 () Bool)

(assert (=> b!183335 m!210859))

(declare-fun m!210861 () Bool)

(assert (=> b!183335 m!210861))

(assert (=> b!183335 m!210861))

(declare-fun m!210863 () Bool)

(assert (=> b!183335 m!210863))

(assert (=> b!183337 m!210861))

(assert (=> b!183337 m!210861))

(assert (=> b!183337 m!210863))

(assert (=> b!183297 d!54621))

(declare-fun b!183381 () Bool)

(declare-fun res!86822 () Bool)

(declare-fun e!120751 () Bool)

(assert (=> b!183381 (=> (not res!86822) (not e!120751))))

(declare-fun e!120750 () Bool)

(assert (=> b!183381 (= res!86822 e!120750)))

(declare-fun c!32849 () Bool)

(assert (=> b!183381 (= c!32849 (not (= (bvand (extraKeys!3487 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!18518 () Bool)

(declare-fun call!18521 () ListLongMap!2347)

(declare-fun getCurrentListMapNoExtraKeys!189 (array!7790 array!7792 (_ BitVec 32) (_ BitVec 32) V!5379 V!5379 (_ BitVec 32) Int) ListLongMap!2347)

(assert (=> bm!18518 (= call!18521 (getCurrentListMapNoExtraKeys!189 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))))

(declare-fun b!183382 () Bool)

(declare-fun e!120757 () ListLongMap!2347)

(declare-fun call!18524 () ListLongMap!2347)

(declare-fun +!274 (ListLongMap!2347 tuple2!3416) ListLongMap!2347)

(assert (=> b!183382 (= e!120757 (+!274 call!18524 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))))))

(declare-fun b!183383 () Bool)

(declare-fun e!120749 () Bool)

(declare-fun call!18522 () Bool)

(assert (=> b!183383 (= e!120749 (not call!18522))))

(declare-fun b!183384 () Bool)

(declare-fun c!32845 () Bool)

(assert (=> b!183384 (= c!32845 (and (not (= (bvand (extraKeys!3487 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3487 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!120755 () ListLongMap!2347)

(declare-fun e!120748 () ListLongMap!2347)

(assert (=> b!183384 (= e!120755 e!120748)))

(declare-fun b!183385 () Bool)

(declare-fun e!120753 () Bool)

(declare-fun lt!90716 () ListLongMap!2347)

(declare-fun apply!159 (ListLongMap!2347 (_ BitVec 64)) V!5379)

(declare-fun get!2109 (ValueCell!1806 V!5379) V!5379)

(declare-fun dynLambda!497 (Int (_ BitVec 64)) V!5379)

(assert (=> b!183385 (= e!120753 (= (apply!159 lt!90716 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)) (get!2109 (select (arr!3683 (_values!3733 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!497 (defaultEntry!3750 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!183385 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3995 (_values!3733 thiss!1248))))))

(assert (=> b!183385 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(declare-fun bm!18519 () Bool)

(declare-fun call!18526 () ListLongMap!2347)

(assert (=> bm!18519 (= call!18526 call!18521)))

(declare-fun bm!18520 () Bool)

(declare-fun c!32846 () Bool)

(declare-fun call!18523 () ListLongMap!2347)

(declare-fun c!32847 () Bool)

(assert (=> bm!18520 (= call!18524 (+!274 (ite c!32847 call!18521 (ite c!32846 call!18526 call!18523)) (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))))))

(declare-fun b!183386 () Bool)

(declare-fun e!120752 () Bool)

(assert (=> b!183386 (= e!120750 e!120752)))

(declare-fun res!86821 () Bool)

(declare-fun call!18525 () Bool)

(assert (=> b!183386 (= res!86821 call!18525)))

(assert (=> b!183386 (=> (not res!86821) (not e!120752))))

(declare-fun b!183387 () Bool)

(assert (=> b!183387 (= e!120748 call!18523)))

(declare-fun b!183388 () Bool)

(declare-fun e!120760 () Bool)

(assert (=> b!183388 (= e!120760 (= (apply!159 lt!90716 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3591 thiss!1248)))))

(declare-fun b!183389 () Bool)

(declare-fun call!18527 () ListLongMap!2347)

(assert (=> b!183389 (= e!120748 call!18527)))

(declare-fun b!183390 () Bool)

(declare-fun e!120756 () Unit!5545)

(declare-fun lt!90712 () Unit!5545)

(assert (=> b!183390 (= e!120756 lt!90712)))

(declare-fun lt!90708 () ListLongMap!2347)

(assert (=> b!183390 (= lt!90708 (getCurrentListMapNoExtraKeys!189 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))))

(declare-fun lt!90718 () (_ BitVec 64))

(assert (=> b!183390 (= lt!90718 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90713 () (_ BitVec 64))

(assert (=> b!183390 (= lt!90713 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90706 () Unit!5545)

(declare-fun addStillContains!135 (ListLongMap!2347 (_ BitVec 64) V!5379 (_ BitVec 64)) Unit!5545)

(assert (=> b!183390 (= lt!90706 (addStillContains!135 lt!90708 lt!90718 (zeroValue!3591 thiss!1248) lt!90713))))

(assert (=> b!183390 (contains!1269 (+!274 lt!90708 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248))) lt!90713)))

(declare-fun lt!90705 () Unit!5545)

(assert (=> b!183390 (= lt!90705 lt!90706)))

(declare-fun lt!90709 () ListLongMap!2347)

(assert (=> b!183390 (= lt!90709 (getCurrentListMapNoExtraKeys!189 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))))

(declare-fun lt!90715 () (_ BitVec 64))

(assert (=> b!183390 (= lt!90715 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90704 () (_ BitVec 64))

(assert (=> b!183390 (= lt!90704 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90710 () Unit!5545)

(declare-fun addApplyDifferent!135 (ListLongMap!2347 (_ BitVec 64) V!5379 (_ BitVec 64)) Unit!5545)

(assert (=> b!183390 (= lt!90710 (addApplyDifferent!135 lt!90709 lt!90715 (minValue!3591 thiss!1248) lt!90704))))

(assert (=> b!183390 (= (apply!159 (+!274 lt!90709 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248))) lt!90704) (apply!159 lt!90709 lt!90704))))

(declare-fun lt!90711 () Unit!5545)

(assert (=> b!183390 (= lt!90711 lt!90710)))

(declare-fun lt!90714 () ListLongMap!2347)

(assert (=> b!183390 (= lt!90714 (getCurrentListMapNoExtraKeys!189 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))))

(declare-fun lt!90720 () (_ BitVec 64))

(assert (=> b!183390 (= lt!90720 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90721 () (_ BitVec 64))

(assert (=> b!183390 (= lt!90721 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90717 () Unit!5545)

(assert (=> b!183390 (= lt!90717 (addApplyDifferent!135 lt!90714 lt!90720 (zeroValue!3591 thiss!1248) lt!90721))))

(assert (=> b!183390 (= (apply!159 (+!274 lt!90714 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248))) lt!90721) (apply!159 lt!90714 lt!90721))))

(declare-fun lt!90724 () Unit!5545)

(assert (=> b!183390 (= lt!90724 lt!90717)))

(declare-fun lt!90723 () ListLongMap!2347)

(assert (=> b!183390 (= lt!90723 (getCurrentListMapNoExtraKeys!189 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))))

(declare-fun lt!90722 () (_ BitVec 64))

(assert (=> b!183390 (= lt!90722 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!90707 () (_ BitVec 64))

(assert (=> b!183390 (= lt!90707 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183390 (= lt!90712 (addApplyDifferent!135 lt!90723 lt!90722 (minValue!3591 thiss!1248) lt!90707))))

(assert (=> b!183390 (= (apply!159 (+!274 lt!90723 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248))) lt!90707) (apply!159 lt!90723 lt!90707))))

(declare-fun bm!18521 () Bool)

(assert (=> bm!18521 (= call!18525 (contains!1269 lt!90716 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!183380 () Bool)

(assert (=> b!183380 (= e!120757 e!120755)))

(assert (=> b!183380 (= c!32846 (and (not (= (bvand (extraKeys!3487 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3487 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!54623 () Bool)

(assert (=> d!54623 e!120751))

(declare-fun res!86820 () Bool)

(assert (=> d!54623 (=> (not res!86820) (not e!120751))))

(assert (=> d!54623 (= res!86820 (or (bvsge #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))))

(declare-fun lt!90725 () ListLongMap!2347)

(assert (=> d!54623 (= lt!90716 lt!90725)))

(declare-fun lt!90719 () Unit!5545)

(assert (=> d!54623 (= lt!90719 e!120756)))

(declare-fun c!32844 () Bool)

(declare-fun e!120758 () Bool)

(assert (=> d!54623 (= c!32844 e!120758)))

(declare-fun res!86818 () Bool)

(assert (=> d!54623 (=> (not res!86818) (not e!120758))))

(assert (=> d!54623 (= res!86818 (bvslt #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(assert (=> d!54623 (= lt!90725 e!120757)))

(assert (=> d!54623 (= c!32847 (and (not (= (bvand (extraKeys!3487 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3487 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54623 (validMask!0 (mask!8812 thiss!1248))))

(assert (=> d!54623 (= (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)) lt!90716)))

(declare-fun b!183391 () Bool)

(declare-fun e!120759 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!183391 (= e!120759 (validKeyInArray!0 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183392 () Bool)

(assert (=> b!183392 (= e!120752 (= (apply!159 lt!90716 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3591 thiss!1248)))))

(declare-fun b!183393 () Bool)

(assert (=> b!183393 (= e!120750 (not call!18525))))

(declare-fun b!183394 () Bool)

(declare-fun res!86825 () Bool)

(assert (=> b!183394 (=> (not res!86825) (not e!120751))))

(declare-fun e!120754 () Bool)

(assert (=> b!183394 (= res!86825 e!120754)))

(declare-fun res!86824 () Bool)

(assert (=> b!183394 (=> res!86824 e!120754)))

(assert (=> b!183394 (= res!86824 (not e!120759))))

(declare-fun res!86826 () Bool)

(assert (=> b!183394 (=> (not res!86826) (not e!120759))))

(assert (=> b!183394 (= res!86826 (bvslt #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(declare-fun bm!18522 () Bool)

(assert (=> bm!18522 (= call!18527 call!18524)))

(declare-fun bm!18523 () Bool)

(assert (=> bm!18523 (= call!18522 (contains!1269 lt!90716 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!183395 () Bool)

(assert (=> b!183395 (= e!120755 call!18527)))

(declare-fun b!183396 () Bool)

(assert (=> b!183396 (= e!120751 e!120749)))

(declare-fun c!32848 () Bool)

(assert (=> b!183396 (= c!32848 (not (= (bvand (extraKeys!3487 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!183397 () Bool)

(assert (=> b!183397 (= e!120754 e!120753)))

(declare-fun res!86823 () Bool)

(assert (=> b!183397 (=> (not res!86823) (not e!120753))))

(assert (=> b!183397 (= res!86823 (contains!1269 lt!90716 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!183397 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(declare-fun b!183398 () Bool)

(assert (=> b!183398 (= e!120749 e!120760)))

(declare-fun res!86819 () Bool)

(assert (=> b!183398 (= res!86819 call!18522)))

(assert (=> b!183398 (=> (not res!86819) (not e!120760))))

(declare-fun bm!18524 () Bool)

(assert (=> bm!18524 (= call!18523 call!18526)))

(declare-fun b!183399 () Bool)

(declare-fun Unit!5548 () Unit!5545)

(assert (=> b!183399 (= e!120756 Unit!5548)))

(declare-fun b!183400 () Bool)

(assert (=> b!183400 (= e!120758 (validKeyInArray!0 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!54623 c!32847) b!183382))

(assert (= (and d!54623 (not c!32847)) b!183380))

(assert (= (and b!183380 c!32846) b!183395))

(assert (= (and b!183380 (not c!32846)) b!183384))

(assert (= (and b!183384 c!32845) b!183389))

(assert (= (and b!183384 (not c!32845)) b!183387))

(assert (= (or b!183389 b!183387) bm!18524))

(assert (= (or b!183395 bm!18524) bm!18519))

(assert (= (or b!183395 b!183389) bm!18522))

(assert (= (or b!183382 bm!18519) bm!18518))

(assert (= (or b!183382 bm!18522) bm!18520))

(assert (= (and d!54623 res!86818) b!183400))

(assert (= (and d!54623 c!32844) b!183390))

(assert (= (and d!54623 (not c!32844)) b!183399))

(assert (= (and d!54623 res!86820) b!183394))

(assert (= (and b!183394 res!86826) b!183391))

(assert (= (and b!183394 (not res!86824)) b!183397))

(assert (= (and b!183397 res!86823) b!183385))

(assert (= (and b!183394 res!86825) b!183381))

(assert (= (and b!183381 c!32849) b!183386))

(assert (= (and b!183381 (not c!32849)) b!183393))

(assert (= (and b!183386 res!86821) b!183392))

(assert (= (or b!183386 b!183393) bm!18521))

(assert (= (and b!183381 res!86822) b!183396))

(assert (= (and b!183396 c!32848) b!183398))

(assert (= (and b!183396 (not c!32848)) b!183383))

(assert (= (and b!183398 res!86819) b!183388))

(assert (= (or b!183398 b!183383) bm!18523))

(declare-fun b_lambda!7221 () Bool)

(assert (=> (not b_lambda!7221) (not b!183385)))

(declare-fun t!7236 () Bool)

(declare-fun tb!2837 () Bool)

(assert (=> (and b!183299 (= (defaultEntry!3750 thiss!1248) (defaultEntry!3750 thiss!1248)) t!7236) tb!2837))

(declare-fun result!4773 () Bool)

(assert (=> tb!2837 (= result!4773 tp_is_empty!4299)))

(assert (=> b!183385 t!7236))

(declare-fun b_and!11119 () Bool)

(assert (= b_and!11115 (and (=> t!7236 result!4773) b_and!11119)))

(declare-fun m!210865 () Bool)

(assert (=> b!183397 m!210865))

(assert (=> b!183397 m!210865))

(declare-fun m!210867 () Bool)

(assert (=> b!183397 m!210867))

(assert (=> b!183400 m!210865))

(assert (=> b!183400 m!210865))

(declare-fun m!210869 () Bool)

(assert (=> b!183400 m!210869))

(assert (=> d!54623 m!210827))

(declare-fun m!210871 () Bool)

(assert (=> bm!18523 m!210871))

(declare-fun m!210873 () Bool)

(assert (=> b!183382 m!210873))

(declare-fun m!210875 () Bool)

(assert (=> b!183385 m!210875))

(assert (=> b!183385 m!210865))

(assert (=> b!183385 m!210865))

(declare-fun m!210877 () Bool)

(assert (=> b!183385 m!210877))

(declare-fun m!210879 () Bool)

(assert (=> b!183385 m!210879))

(assert (=> b!183385 m!210875))

(declare-fun m!210881 () Bool)

(assert (=> b!183385 m!210881))

(assert (=> b!183385 m!210879))

(declare-fun m!210883 () Bool)

(assert (=> b!183388 m!210883))

(declare-fun m!210885 () Bool)

(assert (=> bm!18520 m!210885))

(assert (=> b!183391 m!210865))

(assert (=> b!183391 m!210865))

(assert (=> b!183391 m!210869))

(declare-fun m!210887 () Bool)

(assert (=> b!183390 m!210887))

(declare-fun m!210889 () Bool)

(assert (=> b!183390 m!210889))

(assert (=> b!183390 m!210865))

(declare-fun m!210891 () Bool)

(assert (=> b!183390 m!210891))

(declare-fun m!210893 () Bool)

(assert (=> b!183390 m!210893))

(declare-fun m!210895 () Bool)

(assert (=> b!183390 m!210895))

(declare-fun m!210897 () Bool)

(assert (=> b!183390 m!210897))

(declare-fun m!210899 () Bool)

(assert (=> b!183390 m!210899))

(declare-fun m!210901 () Bool)

(assert (=> b!183390 m!210901))

(declare-fun m!210903 () Bool)

(assert (=> b!183390 m!210903))

(declare-fun m!210905 () Bool)

(assert (=> b!183390 m!210905))

(declare-fun m!210907 () Bool)

(assert (=> b!183390 m!210907))

(assert (=> b!183390 m!210887))

(assert (=> b!183390 m!210893))

(declare-fun m!210909 () Bool)

(assert (=> b!183390 m!210909))

(assert (=> b!183390 m!210903))

(declare-fun m!210911 () Bool)

(assert (=> b!183390 m!210911))

(assert (=> b!183390 m!210899))

(declare-fun m!210913 () Bool)

(assert (=> b!183390 m!210913))

(declare-fun m!210915 () Bool)

(assert (=> b!183390 m!210915))

(declare-fun m!210917 () Bool)

(assert (=> b!183390 m!210917))

(declare-fun m!210919 () Bool)

(assert (=> b!183392 m!210919))

(assert (=> bm!18518 m!210917))

(declare-fun m!210921 () Bool)

(assert (=> bm!18521 m!210921))

(assert (=> b!183297 d!54623))

(declare-fun d!54625 () Bool)

(assert (=> d!54625 (= (array_inv!2371 (_keys!5668 thiss!1248)) (bvsge (size!3994 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183299 d!54625))

(declare-fun d!54627 () Bool)

(assert (=> d!54627 (= (array_inv!2372 (_values!3733 thiss!1248)) (bvsge (size!3995 (_values!3733 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183299 d!54627))

(declare-fun b!183415 () Bool)

(declare-fun e!120767 () SeekEntryResult!630)

(declare-fun lt!90733 () SeekEntryResult!630)

(assert (=> b!183415 (= e!120767 (Found!630 (index!4692 lt!90733)))))

(declare-fun b!183416 () Bool)

(declare-fun e!120769 () SeekEntryResult!630)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7790 (_ BitVec 32)) SeekEntryResult!630)

(assert (=> b!183416 (= e!120769 (seekKeyOrZeroReturnVacant!0 (x!19984 lt!90733) (index!4692 lt!90733) (index!4692 lt!90733) key!828 (_keys!5668 thiss!1248) (mask!8812 thiss!1248)))))

(declare-fun b!183417 () Bool)

(declare-fun e!120768 () SeekEntryResult!630)

(assert (=> b!183417 (= e!120768 Undefined!630)))

(declare-fun b!183418 () Bool)

(assert (=> b!183418 (= e!120768 e!120767)))

(declare-fun lt!90734 () (_ BitVec 64))

(assert (=> b!183418 (= lt!90734 (select (arr!3682 (_keys!5668 thiss!1248)) (index!4692 lt!90733)))))

(declare-fun c!32858 () Bool)

(assert (=> b!183418 (= c!32858 (= lt!90734 key!828))))

(declare-fun b!183419 () Bool)

(declare-fun c!32856 () Bool)

(assert (=> b!183419 (= c!32856 (= lt!90734 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!183419 (= e!120767 e!120769)))

(declare-fun b!183420 () Bool)

(assert (=> b!183420 (= e!120769 (MissingZero!630 (index!4692 lt!90733)))))

(declare-fun d!54629 () Bool)

(declare-fun lt!90732 () SeekEntryResult!630)

(assert (=> d!54629 (and (or ((_ is Undefined!630) lt!90732) (not ((_ is Found!630) lt!90732)) (and (bvsge (index!4691 lt!90732) #b00000000000000000000000000000000) (bvslt (index!4691 lt!90732) (size!3994 (_keys!5668 thiss!1248))))) (or ((_ is Undefined!630) lt!90732) ((_ is Found!630) lt!90732) (not ((_ is MissingZero!630) lt!90732)) (and (bvsge (index!4690 lt!90732) #b00000000000000000000000000000000) (bvslt (index!4690 lt!90732) (size!3994 (_keys!5668 thiss!1248))))) (or ((_ is Undefined!630) lt!90732) ((_ is Found!630) lt!90732) ((_ is MissingZero!630) lt!90732) (not ((_ is MissingVacant!630) lt!90732)) (and (bvsge (index!4693 lt!90732) #b00000000000000000000000000000000) (bvslt (index!4693 lt!90732) (size!3994 (_keys!5668 thiss!1248))))) (or ((_ is Undefined!630) lt!90732) (ite ((_ is Found!630) lt!90732) (= (select (arr!3682 (_keys!5668 thiss!1248)) (index!4691 lt!90732)) key!828) (ite ((_ is MissingZero!630) lt!90732) (= (select (arr!3682 (_keys!5668 thiss!1248)) (index!4690 lt!90732)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!630) lt!90732) (= (select (arr!3682 (_keys!5668 thiss!1248)) (index!4693 lt!90732)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54629 (= lt!90732 e!120768)))

(declare-fun c!32857 () Bool)

(assert (=> d!54629 (= c!32857 (and ((_ is Intermediate!630) lt!90733) (undefined!1442 lt!90733)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7790 (_ BitVec 32)) SeekEntryResult!630)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54629 (= lt!90733 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8812 thiss!1248)) key!828 (_keys!5668 thiss!1248) (mask!8812 thiss!1248)))))

(assert (=> d!54629 (validMask!0 (mask!8812 thiss!1248))))

(assert (=> d!54629 (= (seekEntryOrOpen!0 key!828 (_keys!5668 thiss!1248) (mask!8812 thiss!1248)) lt!90732)))

(assert (= (and d!54629 c!32857) b!183417))

(assert (= (and d!54629 (not c!32857)) b!183418))

(assert (= (and b!183418 c!32858) b!183415))

(assert (= (and b!183418 (not c!32858)) b!183419))

(assert (= (and b!183419 c!32856) b!183420))

(assert (= (and b!183419 (not c!32856)) b!183416))

(declare-fun m!210923 () Bool)

(assert (=> b!183416 m!210923))

(declare-fun m!210925 () Bool)

(assert (=> b!183418 m!210925))

(declare-fun m!210927 () Bool)

(assert (=> d!54629 m!210927))

(declare-fun m!210929 () Bool)

(assert (=> d!54629 m!210929))

(declare-fun m!210931 () Bool)

(assert (=> d!54629 m!210931))

(declare-fun m!210933 () Bool)

(assert (=> d!54629 m!210933))

(assert (=> d!54629 m!210927))

(declare-fun m!210935 () Bool)

(assert (=> d!54629 m!210935))

(assert (=> d!54629 m!210827))

(assert (=> b!183295 d!54629))

(declare-fun d!54631 () Bool)

(declare-fun res!86833 () Bool)

(declare-fun e!120772 () Bool)

(assert (=> d!54631 (=> (not res!86833) (not e!120772))))

(declare-fun simpleValid!174 (LongMapFixedSize!2520) Bool)

(assert (=> d!54631 (= res!86833 (simpleValid!174 thiss!1248))))

(assert (=> d!54631 (= (valid!1034 thiss!1248) e!120772)))

(declare-fun b!183427 () Bool)

(declare-fun res!86834 () Bool)

(assert (=> b!183427 (=> (not res!86834) (not e!120772))))

(declare-fun arrayCountValidKeys!0 (array!7790 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!183427 (= res!86834 (= (arrayCountValidKeys!0 (_keys!5668 thiss!1248) #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))) (_size!1309 thiss!1248)))))

(declare-fun b!183428 () Bool)

(declare-fun res!86835 () Bool)

(assert (=> b!183428 (=> (not res!86835) (not e!120772))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7790 (_ BitVec 32)) Bool)

(assert (=> b!183428 (= res!86835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5668 thiss!1248) (mask!8812 thiss!1248)))))

(declare-fun b!183429 () Bool)

(declare-datatypes ((List!2359 0))(
  ( (Nil!2356) (Cons!2355 (h!2984 (_ BitVec 64)) (t!7237 List!2359)) )
))
(declare-fun arrayNoDuplicates!0 (array!7790 (_ BitVec 32) List!2359) Bool)

(assert (=> b!183429 (= e!120772 (arrayNoDuplicates!0 (_keys!5668 thiss!1248) #b00000000000000000000000000000000 Nil!2356))))

(assert (= (and d!54631 res!86833) b!183427))

(assert (= (and b!183427 res!86834) b!183428))

(assert (= (and b!183428 res!86835) b!183429))

(declare-fun m!210937 () Bool)

(assert (=> d!54631 m!210937))

(declare-fun m!210939 () Bool)

(assert (=> b!183427 m!210939))

(declare-fun m!210941 () Bool)

(assert (=> b!183428 m!210941))

(declare-fun m!210943 () Bool)

(assert (=> b!183429 m!210943))

(assert (=> start!18496 d!54631))

(declare-fun mapNonEmpty!7388 () Bool)

(declare-fun mapRes!7388 () Bool)

(declare-fun tp!16361 () Bool)

(declare-fun e!120777 () Bool)

(assert (=> mapNonEmpty!7388 (= mapRes!7388 (and tp!16361 e!120777))))

(declare-fun mapRest!7388 () (Array (_ BitVec 32) ValueCell!1806))

(declare-fun mapValue!7388 () ValueCell!1806)

(declare-fun mapKey!7388 () (_ BitVec 32))

(assert (=> mapNonEmpty!7388 (= mapRest!7382 (store mapRest!7388 mapKey!7388 mapValue!7388))))

(declare-fun condMapEmpty!7388 () Bool)

(declare-fun mapDefault!7388 () ValueCell!1806)

(assert (=> mapNonEmpty!7382 (= condMapEmpty!7388 (= mapRest!7382 ((as const (Array (_ BitVec 32) ValueCell!1806)) mapDefault!7388)))))

(declare-fun e!120778 () Bool)

(assert (=> mapNonEmpty!7382 (= tp!16351 (and e!120778 mapRes!7388))))

(declare-fun b!183436 () Bool)

(assert (=> b!183436 (= e!120777 tp_is_empty!4299)))

(declare-fun mapIsEmpty!7388 () Bool)

(assert (=> mapIsEmpty!7388 mapRes!7388))

(declare-fun b!183437 () Bool)

(assert (=> b!183437 (= e!120778 tp_is_empty!4299)))

(assert (= (and mapNonEmpty!7382 condMapEmpty!7388) mapIsEmpty!7388))

(assert (= (and mapNonEmpty!7382 (not condMapEmpty!7388)) mapNonEmpty!7388))

(assert (= (and mapNonEmpty!7388 ((_ is ValueCellFull!1806) mapValue!7388)) b!183436))

(assert (= (and mapNonEmpty!7382 ((_ is ValueCellFull!1806) mapDefault!7388)) b!183437))

(declare-fun m!210945 () Bool)

(assert (=> mapNonEmpty!7388 m!210945))

(declare-fun b_lambda!7223 () Bool)

(assert (= b_lambda!7221 (or (and b!183299 b_free!4527) b_lambda!7223)))

(check-sat (not b!183429) (not b!183390) (not b_next!4527) tp_is_empty!4299 (not bm!18520) (not b!183337) (not d!54621) (not d!54631) (not b!183388) (not b!183335) (not bm!18523) (not d!54629) (not bm!18518) (not b!183397) (not b!183391) (not b!183416) (not b!183385) (not b!183400) (not bm!18521) (not mapNonEmpty!7388) (not b!183427) (not d!54623) (not b!183392) (not b_lambda!7223) b_and!11119 (not b!183382) (not b!183428))
(check-sat b_and!11119 (not b_next!4527))
(get-model)

(declare-fun d!54633 () Bool)

(assert (=> d!54633 (= (validKeyInArray!0 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!183391 d!54633))

(declare-fun b!183448 () Bool)

(declare-fun e!120787 () Bool)

(declare-fun e!120789 () Bool)

(assert (=> b!183448 (= e!120787 e!120789)))

(declare-fun res!86842 () Bool)

(assert (=> b!183448 (=> (not res!86842) (not e!120789))))

(declare-fun e!120788 () Bool)

(assert (=> b!183448 (= res!86842 (not e!120788))))

(declare-fun res!86844 () Bool)

(assert (=> b!183448 (=> (not res!86844) (not e!120788))))

(assert (=> b!183448 (= res!86844 (validKeyInArray!0 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183449 () Bool)

(declare-fun contains!1271 (List!2359 (_ BitVec 64)) Bool)

(assert (=> b!183449 (= e!120788 (contains!1271 Nil!2356 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18527 () Bool)

(declare-fun call!18530 () Bool)

(declare-fun c!32861 () Bool)

(assert (=> bm!18527 (= call!18530 (arrayNoDuplicates!0 (_keys!5668 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!32861 (Cons!2355 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000) Nil!2356) Nil!2356)))))

(declare-fun b!183450 () Bool)

(declare-fun e!120790 () Bool)

(assert (=> b!183450 (= e!120790 call!18530)))

(declare-fun b!183452 () Bool)

(assert (=> b!183452 (= e!120789 e!120790)))

(assert (=> b!183452 (= c!32861 (validKeyInArray!0 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!54635 () Bool)

(declare-fun res!86843 () Bool)

(assert (=> d!54635 (=> res!86843 e!120787)))

(assert (=> d!54635 (= res!86843 (bvsge #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(assert (=> d!54635 (= (arrayNoDuplicates!0 (_keys!5668 thiss!1248) #b00000000000000000000000000000000 Nil!2356) e!120787)))

(declare-fun b!183451 () Bool)

(assert (=> b!183451 (= e!120790 call!18530)))

(assert (= (and d!54635 (not res!86843)) b!183448))

(assert (= (and b!183448 res!86844) b!183449))

(assert (= (and b!183448 res!86842) b!183452))

(assert (= (and b!183452 c!32861) b!183451))

(assert (= (and b!183452 (not c!32861)) b!183450))

(assert (= (or b!183451 b!183450) bm!18527))

(assert (=> b!183448 m!210865))

(assert (=> b!183448 m!210865))

(assert (=> b!183448 m!210869))

(assert (=> b!183449 m!210865))

(assert (=> b!183449 m!210865))

(declare-fun m!210947 () Bool)

(assert (=> b!183449 m!210947))

(assert (=> bm!18527 m!210865))

(declare-fun m!210949 () Bool)

(assert (=> bm!18527 m!210949))

(assert (=> b!183452 m!210865))

(assert (=> b!183452 m!210865))

(assert (=> b!183452 m!210869))

(assert (=> b!183429 d!54635))

(declare-fun d!54637 () Bool)

(declare-fun e!120791 () Bool)

(assert (=> d!54637 e!120791))

(declare-fun res!86845 () Bool)

(assert (=> d!54637 (=> res!86845 e!120791)))

(declare-fun lt!90736 () Bool)

(assert (=> d!54637 (= res!86845 (not lt!90736))))

(declare-fun lt!90738 () Bool)

(assert (=> d!54637 (= lt!90736 lt!90738)))

(declare-fun lt!90735 () Unit!5545)

(declare-fun e!120792 () Unit!5545)

(assert (=> d!54637 (= lt!90735 e!120792)))

(declare-fun c!32862 () Bool)

(assert (=> d!54637 (= c!32862 lt!90738)))

(assert (=> d!54637 (= lt!90738 (containsKey!219 (toList!1189 lt!90716) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54637 (= (contains!1269 lt!90716 #b0000000000000000000000000000000000000000000000000000000000000000) lt!90736)))

(declare-fun b!183453 () Bool)

(declare-fun lt!90737 () Unit!5545)

(assert (=> b!183453 (= e!120792 lt!90737)))

(assert (=> b!183453 (= lt!90737 (lemmaContainsKeyImpliesGetValueByKeyDefined!168 (toList!1189 lt!90716) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!183453 (isDefined!169 (getValueByKey!215 (toList!1189 lt!90716) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!183454 () Bool)

(declare-fun Unit!5549 () Unit!5545)

(assert (=> b!183454 (= e!120792 Unit!5549)))

(declare-fun b!183455 () Bool)

(assert (=> b!183455 (= e!120791 (isDefined!169 (getValueByKey!215 (toList!1189 lt!90716) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54637 c!32862) b!183453))

(assert (= (and d!54637 (not c!32862)) b!183454))

(assert (= (and d!54637 (not res!86845)) b!183455))

(declare-fun m!210951 () Bool)

(assert (=> d!54637 m!210951))

(declare-fun m!210953 () Bool)

(assert (=> b!183453 m!210953))

(declare-fun m!210955 () Bool)

(assert (=> b!183453 m!210955))

(assert (=> b!183453 m!210955))

(declare-fun m!210957 () Bool)

(assert (=> b!183453 m!210957))

(assert (=> b!183455 m!210955))

(assert (=> b!183455 m!210955))

(assert (=> b!183455 m!210957))

(assert (=> bm!18521 d!54637))

(declare-fun d!54639 () Bool)

(declare-fun e!120795 () Bool)

(assert (=> d!54639 e!120795))

(declare-fun res!86850 () Bool)

(assert (=> d!54639 (=> (not res!86850) (not e!120795))))

(declare-fun lt!90748 () ListLongMap!2347)

(assert (=> d!54639 (= res!86850 (contains!1269 lt!90748 (_1!1718 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))))))

(declare-fun lt!90750 () List!2357)

(assert (=> d!54639 (= lt!90748 (ListLongMap!2348 lt!90750))))

(declare-fun lt!90749 () Unit!5545)

(declare-fun lt!90747 () Unit!5545)

(assert (=> d!54639 (= lt!90749 lt!90747)))

(assert (=> d!54639 (= (getValueByKey!215 lt!90750 (_1!1718 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))) (Some!220 (_2!1718 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!114 (List!2357 (_ BitVec 64) V!5379) Unit!5545)

(assert (=> d!54639 (= lt!90747 (lemmaContainsTupThenGetReturnValue!114 lt!90750 (_1!1718 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))) (_2!1718 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))))))

(declare-fun insertStrictlySorted!116 (List!2357 (_ BitVec 64) V!5379) List!2357)

(assert (=> d!54639 (= lt!90750 (insertStrictlySorted!116 (toList!1189 call!18524) (_1!1718 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))) (_2!1718 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))))))

(assert (=> d!54639 (= (+!274 call!18524 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))) lt!90748)))

(declare-fun b!183460 () Bool)

(declare-fun res!86851 () Bool)

(assert (=> b!183460 (=> (not res!86851) (not e!120795))))

(assert (=> b!183460 (= res!86851 (= (getValueByKey!215 (toList!1189 lt!90748) (_1!1718 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))) (Some!220 (_2!1718 (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))))))))

(declare-fun b!183461 () Bool)

(declare-fun contains!1272 (List!2357 tuple2!3416) Bool)

(assert (=> b!183461 (= e!120795 (contains!1272 (toList!1189 lt!90748) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))))))

(assert (= (and d!54639 res!86850) b!183460))

(assert (= (and b!183460 res!86851) b!183461))

(declare-fun m!210959 () Bool)

(assert (=> d!54639 m!210959))

(declare-fun m!210961 () Bool)

(assert (=> d!54639 m!210961))

(declare-fun m!210963 () Bool)

(assert (=> d!54639 m!210963))

(declare-fun m!210965 () Bool)

(assert (=> d!54639 m!210965))

(declare-fun m!210967 () Bool)

(assert (=> b!183460 m!210967))

(declare-fun m!210969 () Bool)

(assert (=> b!183461 m!210969))

(assert (=> b!183382 d!54639))

(declare-fun b!183470 () Bool)

(declare-fun e!120802 () Bool)

(declare-fun call!18533 () Bool)

(assert (=> b!183470 (= e!120802 call!18533)))

(declare-fun b!183472 () Bool)

(declare-fun e!120804 () Bool)

(assert (=> b!183472 (= e!120804 e!120802)))

(declare-fun lt!90758 () (_ BitVec 64))

(assert (=> b!183472 (= lt!90758 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!90757 () Unit!5545)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7790 (_ BitVec 64) (_ BitVec 32)) Unit!5545)

(assert (=> b!183472 (= lt!90757 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5668 thiss!1248) lt!90758 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7790 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!183472 (arrayContainsKey!0 (_keys!5668 thiss!1248) lt!90758 #b00000000000000000000000000000000)))

(declare-fun lt!90759 () Unit!5545)

(assert (=> b!183472 (= lt!90759 lt!90757)))

(declare-fun res!86857 () Bool)

(assert (=> b!183472 (= res!86857 (= (seekEntryOrOpen!0 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000) (_keys!5668 thiss!1248) (mask!8812 thiss!1248)) (Found!630 #b00000000000000000000000000000000)))))

(assert (=> b!183472 (=> (not res!86857) (not e!120802))))

(declare-fun d!54641 () Bool)

(declare-fun res!86856 () Bool)

(declare-fun e!120803 () Bool)

(assert (=> d!54641 (=> res!86856 e!120803)))

(assert (=> d!54641 (= res!86856 (bvsge #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(assert (=> d!54641 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5668 thiss!1248) (mask!8812 thiss!1248)) e!120803)))

(declare-fun b!183471 () Bool)

(assert (=> b!183471 (= e!120804 call!18533)))

(declare-fun b!183473 () Bool)

(assert (=> b!183473 (= e!120803 e!120804)))

(declare-fun c!32865 () Bool)

(assert (=> b!183473 (= c!32865 (validKeyInArray!0 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18530 () Bool)

(assert (=> bm!18530 (= call!18533 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5668 thiss!1248) (mask!8812 thiss!1248)))))

(assert (= (and d!54641 (not res!86856)) b!183473))

(assert (= (and b!183473 c!32865) b!183472))

(assert (= (and b!183473 (not c!32865)) b!183471))

(assert (= (and b!183472 res!86857) b!183470))

(assert (= (or b!183470 b!183471) bm!18530))

(assert (=> b!183472 m!210865))

(declare-fun m!210971 () Bool)

(assert (=> b!183472 m!210971))

(declare-fun m!210973 () Bool)

(assert (=> b!183472 m!210973))

(assert (=> b!183472 m!210865))

(declare-fun m!210975 () Bool)

(assert (=> b!183472 m!210975))

(assert (=> b!183473 m!210865))

(assert (=> b!183473 m!210865))

(assert (=> b!183473 m!210869))

(declare-fun m!210977 () Bool)

(assert (=> bm!18530 m!210977))

(assert (=> b!183428 d!54641))

(declare-fun d!54643 () Bool)

(declare-fun e!120805 () Bool)

(assert (=> d!54643 e!120805))

(declare-fun res!86858 () Bool)

(assert (=> d!54643 (=> (not res!86858) (not e!120805))))

(declare-fun lt!90761 () ListLongMap!2347)

(assert (=> d!54643 (= res!86858 (contains!1269 lt!90761 (_1!1718 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248)))))))

(declare-fun lt!90763 () List!2357)

(assert (=> d!54643 (= lt!90761 (ListLongMap!2348 lt!90763))))

(declare-fun lt!90762 () Unit!5545)

(declare-fun lt!90760 () Unit!5545)

(assert (=> d!54643 (= lt!90762 lt!90760)))

(assert (=> d!54643 (= (getValueByKey!215 lt!90763 (_1!1718 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248)))) (Some!220 (_2!1718 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248)))))))

(assert (=> d!54643 (= lt!90760 (lemmaContainsTupThenGetReturnValue!114 lt!90763 (_1!1718 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248))) (_2!1718 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248)))))))

(assert (=> d!54643 (= lt!90763 (insertStrictlySorted!116 (toList!1189 lt!90723) (_1!1718 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248))) (_2!1718 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248)))))))

(assert (=> d!54643 (= (+!274 lt!90723 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248))) lt!90761)))

(declare-fun b!183474 () Bool)

(declare-fun res!86859 () Bool)

(assert (=> b!183474 (=> (not res!86859) (not e!120805))))

(assert (=> b!183474 (= res!86859 (= (getValueByKey!215 (toList!1189 lt!90761) (_1!1718 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248)))) (Some!220 (_2!1718 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248))))))))

(declare-fun b!183475 () Bool)

(assert (=> b!183475 (= e!120805 (contains!1272 (toList!1189 lt!90761) (tuple2!3417 lt!90722 (minValue!3591 thiss!1248))))))

(assert (= (and d!54643 res!86858) b!183474))

(assert (= (and b!183474 res!86859) b!183475))

(declare-fun m!210979 () Bool)

(assert (=> d!54643 m!210979))

(declare-fun m!210981 () Bool)

(assert (=> d!54643 m!210981))

(declare-fun m!210983 () Bool)

(assert (=> d!54643 m!210983))

(declare-fun m!210985 () Bool)

(assert (=> d!54643 m!210985))

(declare-fun m!210987 () Bool)

(assert (=> b!183474 m!210987))

(declare-fun m!210989 () Bool)

(assert (=> b!183475 m!210989))

(assert (=> b!183390 d!54643))

(declare-fun d!54645 () Bool)

(declare-fun get!2110 (Option!221) V!5379)

(assert (=> d!54645 (= (apply!159 (+!274 lt!90723 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248))) lt!90707) (get!2110 (getValueByKey!215 (toList!1189 (+!274 lt!90723 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248)))) lt!90707)))))

(declare-fun bs!7455 () Bool)

(assert (= bs!7455 d!54645))

(declare-fun m!210991 () Bool)

(assert (=> bs!7455 m!210991))

(assert (=> bs!7455 m!210991))

(declare-fun m!210993 () Bool)

(assert (=> bs!7455 m!210993))

(assert (=> b!183390 d!54645))

(declare-fun b!183500 () Bool)

(declare-fun e!120820 () ListLongMap!2347)

(declare-fun call!18536 () ListLongMap!2347)

(assert (=> b!183500 (= e!120820 call!18536)))

(declare-fun b!183501 () Bool)

(declare-fun lt!90778 () Unit!5545)

(declare-fun lt!90783 () Unit!5545)

(assert (=> b!183501 (= lt!90778 lt!90783)))

(declare-fun lt!90779 () V!5379)

(declare-fun lt!90784 () (_ BitVec 64))

(declare-fun lt!90782 () ListLongMap!2347)

(declare-fun lt!90780 () (_ BitVec 64))

(assert (=> b!183501 (not (contains!1269 (+!274 lt!90782 (tuple2!3417 lt!90784 lt!90779)) lt!90780))))

(declare-fun addStillNotContains!87 (ListLongMap!2347 (_ BitVec 64) V!5379 (_ BitVec 64)) Unit!5545)

(assert (=> b!183501 (= lt!90783 (addStillNotContains!87 lt!90782 lt!90784 lt!90779 lt!90780))))

(assert (=> b!183501 (= lt!90780 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!183501 (= lt!90779 (get!2109 (select (arr!3683 (_values!3733 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!497 (defaultEntry!3750 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!183501 (= lt!90784 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!183501 (= lt!90782 call!18536)))

(assert (=> b!183501 (= e!120820 (+!274 call!18536 (tuple2!3417 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000) (get!2109 (select (arr!3683 (_values!3733 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!497 (defaultEntry!3750 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!183502 () Bool)

(declare-fun res!86870 () Bool)

(declare-fun e!120821 () Bool)

(assert (=> b!183502 (=> (not res!86870) (not e!120821))))

(declare-fun lt!90781 () ListLongMap!2347)

(assert (=> b!183502 (= res!86870 (not (contains!1269 lt!90781 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!183503 () Bool)

(declare-fun e!120825 () Bool)

(declare-fun e!120826 () Bool)

(assert (=> b!183503 (= e!120825 e!120826)))

(declare-fun c!32876 () Bool)

(assert (=> b!183503 (= c!32876 (bvslt #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(declare-fun b!183504 () Bool)

(declare-fun isEmpty!468 (ListLongMap!2347) Bool)

(assert (=> b!183504 (= e!120826 (isEmpty!468 lt!90781))))

(declare-fun b!183505 () Bool)

(assert (=> b!183505 (= e!120821 e!120825)))

(declare-fun c!32874 () Bool)

(declare-fun e!120822 () Bool)

(assert (=> b!183505 (= c!32874 e!120822)))

(declare-fun res!86871 () Bool)

(assert (=> b!183505 (=> (not res!86871) (not e!120822))))

(assert (=> b!183505 (= res!86871 (bvslt #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(declare-fun b!183506 () Bool)

(declare-fun e!120824 () ListLongMap!2347)

(assert (=> b!183506 (= e!120824 e!120820)))

(declare-fun c!32875 () Bool)

(assert (=> b!183506 (= c!32875 (validKeyInArray!0 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183507 () Bool)

(assert (=> b!183507 (= e!120824 (ListLongMap!2348 Nil!2354))))

(declare-fun b!183508 () Bool)

(assert (=> b!183508 (= e!120822 (validKeyInArray!0 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!183508 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!54647 () Bool)

(assert (=> d!54647 e!120821))

(declare-fun res!86868 () Bool)

(assert (=> d!54647 (=> (not res!86868) (not e!120821))))

(assert (=> d!54647 (= res!86868 (not (contains!1269 lt!90781 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!54647 (= lt!90781 e!120824)))

(declare-fun c!32877 () Bool)

(assert (=> d!54647 (= c!32877 (bvsge #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(assert (=> d!54647 (validMask!0 (mask!8812 thiss!1248))))

(assert (=> d!54647 (= (getCurrentListMapNoExtraKeys!189 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)) lt!90781)))

(declare-fun b!183509 () Bool)

(declare-fun e!120823 () Bool)

(assert (=> b!183509 (= e!120825 e!120823)))

(assert (=> b!183509 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(declare-fun res!86869 () Bool)

(assert (=> b!183509 (= res!86869 (contains!1269 lt!90781 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!183509 (=> (not res!86869) (not e!120823))))

(declare-fun b!183510 () Bool)

(assert (=> b!183510 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(assert (=> b!183510 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3995 (_values!3733 thiss!1248))))))

(assert (=> b!183510 (= e!120823 (= (apply!159 lt!90781 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)) (get!2109 (select (arr!3683 (_values!3733 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!497 (defaultEntry!3750 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!183511 () Bool)

(assert (=> b!183511 (= e!120826 (= lt!90781 (getCurrentListMapNoExtraKeys!189 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3750 thiss!1248))))))

(declare-fun bm!18533 () Bool)

(assert (=> bm!18533 (= call!18536 (getCurrentListMapNoExtraKeys!189 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3750 thiss!1248)))))

(assert (= (and d!54647 c!32877) b!183507))

(assert (= (and d!54647 (not c!32877)) b!183506))

(assert (= (and b!183506 c!32875) b!183501))

(assert (= (and b!183506 (not c!32875)) b!183500))

(assert (= (or b!183501 b!183500) bm!18533))

(assert (= (and d!54647 res!86868) b!183502))

(assert (= (and b!183502 res!86870) b!183505))

(assert (= (and b!183505 res!86871) b!183508))

(assert (= (and b!183505 c!32874) b!183509))

(assert (= (and b!183505 (not c!32874)) b!183503))

(assert (= (and b!183509 res!86869) b!183510))

(assert (= (and b!183503 c!32876) b!183511))

(assert (= (and b!183503 (not c!32876)) b!183504))

(declare-fun b_lambda!7225 () Bool)

(assert (=> (not b_lambda!7225) (not b!183501)))

(assert (=> b!183501 t!7236))

(declare-fun b_and!11121 () Bool)

(assert (= b_and!11119 (and (=> t!7236 result!4773) b_and!11121)))

(declare-fun b_lambda!7227 () Bool)

(assert (=> (not b_lambda!7227) (not b!183510)))

(assert (=> b!183510 t!7236))

(declare-fun b_and!11123 () Bool)

(assert (= b_and!11121 (and (=> t!7236 result!4773) b_and!11123)))

(declare-fun m!210995 () Bool)

(assert (=> bm!18533 m!210995))

(assert (=> b!183511 m!210995))

(declare-fun m!210997 () Bool)

(assert (=> d!54647 m!210997))

(assert (=> d!54647 m!210827))

(assert (=> b!183509 m!210865))

(assert (=> b!183509 m!210865))

(declare-fun m!210999 () Bool)

(assert (=> b!183509 m!210999))

(declare-fun m!211001 () Bool)

(assert (=> b!183501 m!211001))

(declare-fun m!211003 () Bool)

(assert (=> b!183501 m!211003))

(assert (=> b!183501 m!210865))

(assert (=> b!183501 m!210879))

(assert (=> b!183501 m!210875))

(assert (=> b!183501 m!210881))

(declare-fun m!211005 () Bool)

(assert (=> b!183501 m!211005))

(assert (=> b!183501 m!210875))

(assert (=> b!183501 m!210879))

(assert (=> b!183501 m!211001))

(declare-fun m!211007 () Bool)

(assert (=> b!183501 m!211007))

(assert (=> b!183508 m!210865))

(assert (=> b!183508 m!210865))

(assert (=> b!183508 m!210869))

(assert (=> b!183510 m!210865))

(declare-fun m!211009 () Bool)

(assert (=> b!183510 m!211009))

(assert (=> b!183510 m!210865))

(assert (=> b!183510 m!210879))

(assert (=> b!183510 m!210875))

(assert (=> b!183510 m!210881))

(assert (=> b!183510 m!210875))

(assert (=> b!183510 m!210879))

(declare-fun m!211011 () Bool)

(assert (=> b!183504 m!211011))

(declare-fun m!211013 () Bool)

(assert (=> b!183502 m!211013))

(assert (=> b!183506 m!210865))

(assert (=> b!183506 m!210865))

(assert (=> b!183506 m!210869))

(assert (=> b!183390 d!54647))

(declare-fun d!54649 () Bool)

(assert (=> d!54649 (= (apply!159 lt!90709 lt!90704) (get!2110 (getValueByKey!215 (toList!1189 lt!90709) lt!90704)))))

(declare-fun bs!7456 () Bool)

(assert (= bs!7456 d!54649))

(declare-fun m!211015 () Bool)

(assert (=> bs!7456 m!211015))

(assert (=> bs!7456 m!211015))

(declare-fun m!211017 () Bool)

(assert (=> bs!7456 m!211017))

(assert (=> b!183390 d!54649))

(declare-fun d!54651 () Bool)

(assert (=> d!54651 (= (apply!159 (+!274 lt!90723 (tuple2!3417 lt!90722 (minValue!3591 thiss!1248))) lt!90707) (apply!159 lt!90723 lt!90707))))

(declare-fun lt!90787 () Unit!5545)

(declare-fun choose!978 (ListLongMap!2347 (_ BitVec 64) V!5379 (_ BitVec 64)) Unit!5545)

(assert (=> d!54651 (= lt!90787 (choose!978 lt!90723 lt!90722 (minValue!3591 thiss!1248) lt!90707))))

(declare-fun e!120829 () Bool)

(assert (=> d!54651 e!120829))

(declare-fun res!86874 () Bool)

(assert (=> d!54651 (=> (not res!86874) (not e!120829))))

(assert (=> d!54651 (= res!86874 (contains!1269 lt!90723 lt!90707))))

(assert (=> d!54651 (= (addApplyDifferent!135 lt!90723 lt!90722 (minValue!3591 thiss!1248) lt!90707) lt!90787)))

(declare-fun b!183515 () Bool)

(assert (=> b!183515 (= e!120829 (not (= lt!90707 lt!90722)))))

(assert (= (and d!54651 res!86874) b!183515))

(declare-fun m!211019 () Bool)

(assert (=> d!54651 m!211019))

(assert (=> d!54651 m!210903))

(assert (=> d!54651 m!210911))

(assert (=> d!54651 m!210903))

(assert (=> d!54651 m!210895))

(declare-fun m!211021 () Bool)

(assert (=> d!54651 m!211021))

(assert (=> b!183390 d!54651))

(declare-fun d!54653 () Bool)

(declare-fun e!120830 () Bool)

(assert (=> d!54653 e!120830))

(declare-fun res!86875 () Bool)

(assert (=> d!54653 (=> (not res!86875) (not e!120830))))

(declare-fun lt!90789 () ListLongMap!2347)

(assert (=> d!54653 (= res!86875 (contains!1269 lt!90789 (_1!1718 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248)))))))

(declare-fun lt!90791 () List!2357)

(assert (=> d!54653 (= lt!90789 (ListLongMap!2348 lt!90791))))

(declare-fun lt!90790 () Unit!5545)

(declare-fun lt!90788 () Unit!5545)

(assert (=> d!54653 (= lt!90790 lt!90788)))

(assert (=> d!54653 (= (getValueByKey!215 lt!90791 (_1!1718 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248)))) (Some!220 (_2!1718 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248)))))))

(assert (=> d!54653 (= lt!90788 (lemmaContainsTupThenGetReturnValue!114 lt!90791 (_1!1718 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248))) (_2!1718 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248)))))))

(assert (=> d!54653 (= lt!90791 (insertStrictlySorted!116 (toList!1189 lt!90714) (_1!1718 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248))) (_2!1718 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248)))))))

(assert (=> d!54653 (= (+!274 lt!90714 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248))) lt!90789)))

(declare-fun b!183516 () Bool)

(declare-fun res!86876 () Bool)

(assert (=> b!183516 (=> (not res!86876) (not e!120830))))

(assert (=> b!183516 (= res!86876 (= (getValueByKey!215 (toList!1189 lt!90789) (_1!1718 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248)))) (Some!220 (_2!1718 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248))))))))

(declare-fun b!183517 () Bool)

(assert (=> b!183517 (= e!120830 (contains!1272 (toList!1189 lt!90789) (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248))))))

(assert (= (and d!54653 res!86875) b!183516))

(assert (= (and b!183516 res!86876) b!183517))

(declare-fun m!211023 () Bool)

(assert (=> d!54653 m!211023))

(declare-fun m!211025 () Bool)

(assert (=> d!54653 m!211025))

(declare-fun m!211027 () Bool)

(assert (=> d!54653 m!211027))

(declare-fun m!211029 () Bool)

(assert (=> d!54653 m!211029))

(declare-fun m!211031 () Bool)

(assert (=> b!183516 m!211031))

(declare-fun m!211033 () Bool)

(assert (=> b!183517 m!211033))

(assert (=> b!183390 d!54653))

(declare-fun d!54655 () Bool)

(declare-fun e!120831 () Bool)

(assert (=> d!54655 e!120831))

(declare-fun res!86877 () Bool)

(assert (=> d!54655 (=> (not res!86877) (not e!120831))))

(declare-fun lt!90793 () ListLongMap!2347)

(assert (=> d!54655 (= res!86877 (contains!1269 lt!90793 (_1!1718 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248)))))))

(declare-fun lt!90795 () List!2357)

(assert (=> d!54655 (= lt!90793 (ListLongMap!2348 lt!90795))))

(declare-fun lt!90794 () Unit!5545)

(declare-fun lt!90792 () Unit!5545)

(assert (=> d!54655 (= lt!90794 lt!90792)))

(assert (=> d!54655 (= (getValueByKey!215 lt!90795 (_1!1718 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248)))) (Some!220 (_2!1718 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248)))))))

(assert (=> d!54655 (= lt!90792 (lemmaContainsTupThenGetReturnValue!114 lt!90795 (_1!1718 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248))) (_2!1718 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248)))))))

(assert (=> d!54655 (= lt!90795 (insertStrictlySorted!116 (toList!1189 lt!90709) (_1!1718 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248))) (_2!1718 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248)))))))

(assert (=> d!54655 (= (+!274 lt!90709 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248))) lt!90793)))

(declare-fun b!183518 () Bool)

(declare-fun res!86878 () Bool)

(assert (=> b!183518 (=> (not res!86878) (not e!120831))))

(assert (=> b!183518 (= res!86878 (= (getValueByKey!215 (toList!1189 lt!90793) (_1!1718 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248)))) (Some!220 (_2!1718 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248))))))))

(declare-fun b!183519 () Bool)

(assert (=> b!183519 (= e!120831 (contains!1272 (toList!1189 lt!90793) (tuple2!3417 lt!90715 (minValue!3591 thiss!1248))))))

(assert (= (and d!54655 res!86877) b!183518))

(assert (= (and b!183518 res!86878) b!183519))

(declare-fun m!211035 () Bool)

(assert (=> d!54655 m!211035))

(declare-fun m!211037 () Bool)

(assert (=> d!54655 m!211037))

(declare-fun m!211039 () Bool)

(assert (=> d!54655 m!211039))

(declare-fun m!211041 () Bool)

(assert (=> d!54655 m!211041))

(declare-fun m!211043 () Bool)

(assert (=> b!183518 m!211043))

(declare-fun m!211045 () Bool)

(assert (=> b!183519 m!211045))

(assert (=> b!183390 d!54655))

(declare-fun d!54657 () Bool)

(assert (=> d!54657 (= (apply!159 (+!274 lt!90714 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248))) lt!90721) (get!2110 (getValueByKey!215 (toList!1189 (+!274 lt!90714 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248)))) lt!90721)))))

(declare-fun bs!7457 () Bool)

(assert (= bs!7457 d!54657))

(declare-fun m!211047 () Bool)

(assert (=> bs!7457 m!211047))

(assert (=> bs!7457 m!211047))

(declare-fun m!211049 () Bool)

(assert (=> bs!7457 m!211049))

(assert (=> b!183390 d!54657))

(declare-fun d!54659 () Bool)

(assert (=> d!54659 (contains!1269 (+!274 lt!90708 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248))) lt!90713)))

(declare-fun lt!90798 () Unit!5545)

(declare-fun choose!979 (ListLongMap!2347 (_ BitVec 64) V!5379 (_ BitVec 64)) Unit!5545)

(assert (=> d!54659 (= lt!90798 (choose!979 lt!90708 lt!90718 (zeroValue!3591 thiss!1248) lt!90713))))

(assert (=> d!54659 (contains!1269 lt!90708 lt!90713)))

(assert (=> d!54659 (= (addStillContains!135 lt!90708 lt!90718 (zeroValue!3591 thiss!1248) lt!90713) lt!90798)))

(declare-fun bs!7458 () Bool)

(assert (= bs!7458 d!54659))

(assert (=> bs!7458 m!210899))

(assert (=> bs!7458 m!210899))

(assert (=> bs!7458 m!210901))

(declare-fun m!211051 () Bool)

(assert (=> bs!7458 m!211051))

(declare-fun m!211053 () Bool)

(assert (=> bs!7458 m!211053))

(assert (=> b!183390 d!54659))

(declare-fun d!54661 () Bool)

(assert (=> d!54661 (= (apply!159 lt!90714 lt!90721) (get!2110 (getValueByKey!215 (toList!1189 lt!90714) lt!90721)))))

(declare-fun bs!7459 () Bool)

(assert (= bs!7459 d!54661))

(declare-fun m!211055 () Bool)

(assert (=> bs!7459 m!211055))

(assert (=> bs!7459 m!211055))

(declare-fun m!211057 () Bool)

(assert (=> bs!7459 m!211057))

(assert (=> b!183390 d!54661))

(declare-fun d!54663 () Bool)

(assert (=> d!54663 (= (apply!159 lt!90723 lt!90707) (get!2110 (getValueByKey!215 (toList!1189 lt!90723) lt!90707)))))

(declare-fun bs!7460 () Bool)

(assert (= bs!7460 d!54663))

(declare-fun m!211059 () Bool)

(assert (=> bs!7460 m!211059))

(assert (=> bs!7460 m!211059))

(declare-fun m!211061 () Bool)

(assert (=> bs!7460 m!211061))

(assert (=> b!183390 d!54663))

(declare-fun d!54665 () Bool)

(assert (=> d!54665 (= (apply!159 (+!274 lt!90709 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248))) lt!90704) (apply!159 lt!90709 lt!90704))))

(declare-fun lt!90799 () Unit!5545)

(assert (=> d!54665 (= lt!90799 (choose!978 lt!90709 lt!90715 (minValue!3591 thiss!1248) lt!90704))))

(declare-fun e!120832 () Bool)

(assert (=> d!54665 e!120832))

(declare-fun res!86879 () Bool)

(assert (=> d!54665 (=> (not res!86879) (not e!120832))))

(assert (=> d!54665 (= res!86879 (contains!1269 lt!90709 lt!90704))))

(assert (=> d!54665 (= (addApplyDifferent!135 lt!90709 lt!90715 (minValue!3591 thiss!1248) lt!90704) lt!90799)))

(declare-fun b!183521 () Bool)

(assert (=> b!183521 (= e!120832 (not (= lt!90704 lt!90715)))))

(assert (= (and d!54665 res!86879) b!183521))

(declare-fun m!211063 () Bool)

(assert (=> d!54665 m!211063))

(assert (=> d!54665 m!210887))

(assert (=> d!54665 m!210889))

(assert (=> d!54665 m!210887))

(assert (=> d!54665 m!210915))

(declare-fun m!211065 () Bool)

(assert (=> d!54665 m!211065))

(assert (=> b!183390 d!54665))

(declare-fun d!54667 () Bool)

(declare-fun e!120833 () Bool)

(assert (=> d!54667 e!120833))

(declare-fun res!86880 () Bool)

(assert (=> d!54667 (=> (not res!86880) (not e!120833))))

(declare-fun lt!90801 () ListLongMap!2347)

(assert (=> d!54667 (= res!86880 (contains!1269 lt!90801 (_1!1718 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248)))))))

(declare-fun lt!90803 () List!2357)

(assert (=> d!54667 (= lt!90801 (ListLongMap!2348 lt!90803))))

(declare-fun lt!90802 () Unit!5545)

(declare-fun lt!90800 () Unit!5545)

(assert (=> d!54667 (= lt!90802 lt!90800)))

(assert (=> d!54667 (= (getValueByKey!215 lt!90803 (_1!1718 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248)))) (Some!220 (_2!1718 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248)))))))

(assert (=> d!54667 (= lt!90800 (lemmaContainsTupThenGetReturnValue!114 lt!90803 (_1!1718 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248))) (_2!1718 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248)))))))

(assert (=> d!54667 (= lt!90803 (insertStrictlySorted!116 (toList!1189 lt!90708) (_1!1718 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248))) (_2!1718 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248)))))))

(assert (=> d!54667 (= (+!274 lt!90708 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248))) lt!90801)))

(declare-fun b!183522 () Bool)

(declare-fun res!86881 () Bool)

(assert (=> b!183522 (=> (not res!86881) (not e!120833))))

(assert (=> b!183522 (= res!86881 (= (getValueByKey!215 (toList!1189 lt!90801) (_1!1718 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248)))) (Some!220 (_2!1718 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248))))))))

(declare-fun b!183523 () Bool)

(assert (=> b!183523 (= e!120833 (contains!1272 (toList!1189 lt!90801) (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248))))))

(assert (= (and d!54667 res!86880) b!183522))

(assert (= (and b!183522 res!86881) b!183523))

(declare-fun m!211067 () Bool)

(assert (=> d!54667 m!211067))

(declare-fun m!211069 () Bool)

(assert (=> d!54667 m!211069))

(declare-fun m!211071 () Bool)

(assert (=> d!54667 m!211071))

(declare-fun m!211073 () Bool)

(assert (=> d!54667 m!211073))

(declare-fun m!211075 () Bool)

(assert (=> b!183522 m!211075))

(declare-fun m!211077 () Bool)

(assert (=> b!183523 m!211077))

(assert (=> b!183390 d!54667))

(declare-fun d!54669 () Bool)

(declare-fun e!120834 () Bool)

(assert (=> d!54669 e!120834))

(declare-fun res!86882 () Bool)

(assert (=> d!54669 (=> res!86882 e!120834)))

(declare-fun lt!90805 () Bool)

(assert (=> d!54669 (= res!86882 (not lt!90805))))

(declare-fun lt!90807 () Bool)

(assert (=> d!54669 (= lt!90805 lt!90807)))

(declare-fun lt!90804 () Unit!5545)

(declare-fun e!120835 () Unit!5545)

(assert (=> d!54669 (= lt!90804 e!120835)))

(declare-fun c!32878 () Bool)

(assert (=> d!54669 (= c!32878 lt!90807)))

(assert (=> d!54669 (= lt!90807 (containsKey!219 (toList!1189 (+!274 lt!90708 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248)))) lt!90713))))

(assert (=> d!54669 (= (contains!1269 (+!274 lt!90708 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248))) lt!90713) lt!90805)))

(declare-fun b!183524 () Bool)

(declare-fun lt!90806 () Unit!5545)

(assert (=> b!183524 (= e!120835 lt!90806)))

(assert (=> b!183524 (= lt!90806 (lemmaContainsKeyImpliesGetValueByKeyDefined!168 (toList!1189 (+!274 lt!90708 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248)))) lt!90713))))

(assert (=> b!183524 (isDefined!169 (getValueByKey!215 (toList!1189 (+!274 lt!90708 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248)))) lt!90713))))

(declare-fun b!183525 () Bool)

(declare-fun Unit!5550 () Unit!5545)

(assert (=> b!183525 (= e!120835 Unit!5550)))

(declare-fun b!183526 () Bool)

(assert (=> b!183526 (= e!120834 (isDefined!169 (getValueByKey!215 (toList!1189 (+!274 lt!90708 (tuple2!3417 lt!90718 (zeroValue!3591 thiss!1248)))) lt!90713)))))

(assert (= (and d!54669 c!32878) b!183524))

(assert (= (and d!54669 (not c!32878)) b!183525))

(assert (= (and d!54669 (not res!86882)) b!183526))

(declare-fun m!211079 () Bool)

(assert (=> d!54669 m!211079))

(declare-fun m!211081 () Bool)

(assert (=> b!183524 m!211081))

(declare-fun m!211083 () Bool)

(assert (=> b!183524 m!211083))

(assert (=> b!183524 m!211083))

(declare-fun m!211085 () Bool)

(assert (=> b!183524 m!211085))

(assert (=> b!183526 m!211083))

(assert (=> b!183526 m!211083))

(assert (=> b!183526 m!211085))

(assert (=> b!183390 d!54669))

(declare-fun d!54671 () Bool)

(assert (=> d!54671 (= (apply!159 (+!274 lt!90709 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248))) lt!90704) (get!2110 (getValueByKey!215 (toList!1189 (+!274 lt!90709 (tuple2!3417 lt!90715 (minValue!3591 thiss!1248)))) lt!90704)))))

(declare-fun bs!7461 () Bool)

(assert (= bs!7461 d!54671))

(declare-fun m!211087 () Bool)

(assert (=> bs!7461 m!211087))

(assert (=> bs!7461 m!211087))

(declare-fun m!211089 () Bool)

(assert (=> bs!7461 m!211089))

(assert (=> b!183390 d!54671))

(declare-fun d!54673 () Bool)

(assert (=> d!54673 (= (apply!159 (+!274 lt!90714 (tuple2!3417 lt!90720 (zeroValue!3591 thiss!1248))) lt!90721) (apply!159 lt!90714 lt!90721))))

(declare-fun lt!90808 () Unit!5545)

(assert (=> d!54673 (= lt!90808 (choose!978 lt!90714 lt!90720 (zeroValue!3591 thiss!1248) lt!90721))))

(declare-fun e!120836 () Bool)

(assert (=> d!54673 e!120836))

(declare-fun res!86883 () Bool)

(assert (=> d!54673 (=> (not res!86883) (not e!120836))))

(assert (=> d!54673 (= res!86883 (contains!1269 lt!90714 lt!90721))))

(assert (=> d!54673 (= (addApplyDifferent!135 lt!90714 lt!90720 (zeroValue!3591 thiss!1248) lt!90721) lt!90808)))

(declare-fun b!183527 () Bool)

(assert (=> b!183527 (= e!120836 (not (= lt!90721 lt!90720)))))

(assert (= (and d!54673 res!86883) b!183527))

(declare-fun m!211091 () Bool)

(assert (=> d!54673 m!211091))

(assert (=> d!54673 m!210893))

(assert (=> d!54673 m!210909))

(assert (=> d!54673 m!210893))

(assert (=> d!54673 m!210897))

(declare-fun m!211093 () Bool)

(assert (=> d!54673 m!211093))

(assert (=> b!183390 d!54673))

(declare-fun d!54675 () Bool)

(declare-fun lt!90813 () SeekEntryResult!630)

(assert (=> d!54675 (and (or ((_ is Undefined!630) lt!90813) (not ((_ is Found!630) lt!90813)) (and (bvsge (index!4691 lt!90813) #b00000000000000000000000000000000) (bvslt (index!4691 lt!90813) (size!3994 (_keys!5668 thiss!1248))))) (or ((_ is Undefined!630) lt!90813) ((_ is Found!630) lt!90813) (not ((_ is MissingVacant!630) lt!90813)) (not (= (index!4693 lt!90813) (index!4692 lt!90733))) (and (bvsge (index!4693 lt!90813) #b00000000000000000000000000000000) (bvslt (index!4693 lt!90813) (size!3994 (_keys!5668 thiss!1248))))) (or ((_ is Undefined!630) lt!90813) (ite ((_ is Found!630) lt!90813) (= (select (arr!3682 (_keys!5668 thiss!1248)) (index!4691 lt!90813)) key!828) (and ((_ is MissingVacant!630) lt!90813) (= (index!4693 lt!90813) (index!4692 lt!90733)) (= (select (arr!3682 (_keys!5668 thiss!1248)) (index!4693 lt!90813)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!120843 () SeekEntryResult!630)

(assert (=> d!54675 (= lt!90813 e!120843)))

(declare-fun c!32885 () Bool)

(assert (=> d!54675 (= c!32885 (bvsge (x!19984 lt!90733) #b01111111111111111111111111111110))))

(declare-fun lt!90814 () (_ BitVec 64))

(assert (=> d!54675 (= lt!90814 (select (arr!3682 (_keys!5668 thiss!1248)) (index!4692 lt!90733)))))

(assert (=> d!54675 (validMask!0 (mask!8812 thiss!1248))))

(assert (=> d!54675 (= (seekKeyOrZeroReturnVacant!0 (x!19984 lt!90733) (index!4692 lt!90733) (index!4692 lt!90733) key!828 (_keys!5668 thiss!1248) (mask!8812 thiss!1248)) lt!90813)))

(declare-fun b!183540 () Bool)

(declare-fun c!32887 () Bool)

(assert (=> b!183540 (= c!32887 (= lt!90814 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!120844 () SeekEntryResult!630)

(declare-fun e!120845 () SeekEntryResult!630)

(assert (=> b!183540 (= e!120844 e!120845)))

(declare-fun b!183541 () Bool)

(assert (=> b!183541 (= e!120844 (Found!630 (index!4692 lt!90733)))))

(declare-fun b!183542 () Bool)

(assert (=> b!183542 (= e!120845 (MissingVacant!630 (index!4692 lt!90733)))))

(declare-fun b!183543 () Bool)

(assert (=> b!183543 (= e!120843 e!120844)))

(declare-fun c!32886 () Bool)

(assert (=> b!183543 (= c!32886 (= lt!90814 key!828))))

(declare-fun b!183544 () Bool)

(assert (=> b!183544 (= e!120843 Undefined!630)))

(declare-fun b!183545 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!183545 (= e!120845 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19984 lt!90733) #b00000000000000000000000000000001) (nextIndex!0 (index!4692 lt!90733) (x!19984 lt!90733) (mask!8812 thiss!1248)) (index!4692 lt!90733) key!828 (_keys!5668 thiss!1248) (mask!8812 thiss!1248)))))

(assert (= (and d!54675 c!32885) b!183544))

(assert (= (and d!54675 (not c!32885)) b!183543))

(assert (= (and b!183543 c!32886) b!183541))

(assert (= (and b!183543 (not c!32886)) b!183540))

(assert (= (and b!183540 c!32887) b!183542))

(assert (= (and b!183540 (not c!32887)) b!183545))

(declare-fun m!211095 () Bool)

(assert (=> d!54675 m!211095))

(declare-fun m!211097 () Bool)

(assert (=> d!54675 m!211097))

(assert (=> d!54675 m!210925))

(assert (=> d!54675 m!210827))

(declare-fun m!211099 () Bool)

(assert (=> b!183545 m!211099))

(assert (=> b!183545 m!211099))

(declare-fun m!211101 () Bool)

(assert (=> b!183545 m!211101))

(assert (=> b!183416 d!54675))

(assert (=> bm!18518 d!54647))

(declare-fun d!54677 () Bool)

(declare-fun e!120846 () Bool)

(assert (=> d!54677 e!120846))

(declare-fun res!86884 () Bool)

(assert (=> d!54677 (=> res!86884 e!120846)))

(declare-fun lt!90816 () Bool)

(assert (=> d!54677 (= res!86884 (not lt!90816))))

(declare-fun lt!90818 () Bool)

(assert (=> d!54677 (= lt!90816 lt!90818)))

(declare-fun lt!90815 () Unit!5545)

(declare-fun e!120847 () Unit!5545)

(assert (=> d!54677 (= lt!90815 e!120847)))

(declare-fun c!32888 () Bool)

(assert (=> d!54677 (= c!32888 lt!90818)))

(assert (=> d!54677 (= lt!90818 (containsKey!219 (toList!1189 lt!90716) (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54677 (= (contains!1269 lt!90716 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)) lt!90816)))

(declare-fun b!183546 () Bool)

(declare-fun lt!90817 () Unit!5545)

(assert (=> b!183546 (= e!120847 lt!90817)))

(assert (=> b!183546 (= lt!90817 (lemmaContainsKeyImpliesGetValueByKeyDefined!168 (toList!1189 lt!90716) (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!183546 (isDefined!169 (getValueByKey!215 (toList!1189 lt!90716) (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183547 () Bool)

(declare-fun Unit!5551 () Unit!5545)

(assert (=> b!183547 (= e!120847 Unit!5551)))

(declare-fun b!183548 () Bool)

(assert (=> b!183548 (= e!120846 (isDefined!169 (getValueByKey!215 (toList!1189 lt!90716) (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!54677 c!32888) b!183546))

(assert (= (and d!54677 (not c!32888)) b!183547))

(assert (= (and d!54677 (not res!86884)) b!183548))

(assert (=> d!54677 m!210865))

(declare-fun m!211103 () Bool)

(assert (=> d!54677 m!211103))

(assert (=> b!183546 m!210865))

(declare-fun m!211105 () Bool)

(assert (=> b!183546 m!211105))

(assert (=> b!183546 m!210865))

(declare-fun m!211107 () Bool)

(assert (=> b!183546 m!211107))

(assert (=> b!183546 m!211107))

(declare-fun m!211109 () Bool)

(assert (=> b!183546 m!211109))

(assert (=> b!183548 m!210865))

(assert (=> b!183548 m!211107))

(assert (=> b!183548 m!211107))

(assert (=> b!183548 m!211109))

(assert (=> b!183397 d!54677))

(declare-fun b!183557 () Bool)

(declare-fun e!120853 () (_ BitVec 32))

(assert (=> b!183557 (= e!120853 #b00000000000000000000000000000000)))

(declare-fun d!54679 () Bool)

(declare-fun lt!90821 () (_ BitVec 32))

(assert (=> d!54679 (and (bvsge lt!90821 #b00000000000000000000000000000000) (bvsle lt!90821 (bvsub (size!3994 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54679 (= lt!90821 e!120853)))

(declare-fun c!32893 () Bool)

(assert (=> d!54679 (= c!32893 (bvsge #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))))))

(assert (=> d!54679 (and (bvsle #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3994 (_keys!5668 thiss!1248)) (size!3994 (_keys!5668 thiss!1248))))))

(assert (=> d!54679 (= (arrayCountValidKeys!0 (_keys!5668 thiss!1248) #b00000000000000000000000000000000 (size!3994 (_keys!5668 thiss!1248))) lt!90821)))

(declare-fun bm!18536 () Bool)

(declare-fun call!18539 () (_ BitVec 32))

(assert (=> bm!18536 (= call!18539 (arrayCountValidKeys!0 (_keys!5668 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3994 (_keys!5668 thiss!1248))))))

(declare-fun b!183558 () Bool)

(declare-fun e!120852 () (_ BitVec 32))

(assert (=> b!183558 (= e!120852 (bvadd #b00000000000000000000000000000001 call!18539))))

(declare-fun b!183559 () Bool)

(assert (=> b!183559 (= e!120853 e!120852)))

(declare-fun c!32894 () Bool)

(assert (=> b!183559 (= c!32894 (validKeyInArray!0 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!183560 () Bool)

(assert (=> b!183560 (= e!120852 call!18539)))

(assert (= (and d!54679 c!32893) b!183557))

(assert (= (and d!54679 (not c!32893)) b!183559))

(assert (= (and b!183559 c!32894) b!183558))

(assert (= (and b!183559 (not c!32894)) b!183560))

(assert (= (or b!183558 b!183560) bm!18536))

(declare-fun m!211111 () Bool)

(assert (=> bm!18536 m!211111))

(assert (=> b!183559 m!210865))

(assert (=> b!183559 m!210865))

(assert (=> b!183559 m!210869))

(assert (=> b!183427 d!54679))

(declare-fun b!183572 () Bool)

(declare-fun e!120856 () Bool)

(assert (=> b!183572 (= e!120856 (and (bvsge (extraKeys!3487 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3487 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1309 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!183569 () Bool)

(declare-fun res!86895 () Bool)

(assert (=> b!183569 (=> (not res!86895) (not e!120856))))

(assert (=> b!183569 (= res!86895 (and (= (size!3995 (_values!3733 thiss!1248)) (bvadd (mask!8812 thiss!1248) #b00000000000000000000000000000001)) (= (size!3994 (_keys!5668 thiss!1248)) (size!3995 (_values!3733 thiss!1248))) (bvsge (_size!1309 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1309 thiss!1248) (bvadd (mask!8812 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun d!54681 () Bool)

(declare-fun res!86896 () Bool)

(assert (=> d!54681 (=> (not res!86896) (not e!120856))))

(assert (=> d!54681 (= res!86896 (validMask!0 (mask!8812 thiss!1248)))))

(assert (=> d!54681 (= (simpleValid!174 thiss!1248) e!120856)))

(declare-fun b!183570 () Bool)

(declare-fun res!86893 () Bool)

(assert (=> b!183570 (=> (not res!86893) (not e!120856))))

(declare-fun size!3998 (LongMapFixedSize!2520) (_ BitVec 32))

(assert (=> b!183570 (= res!86893 (bvsge (size!3998 thiss!1248) (_size!1309 thiss!1248)))))

(declare-fun b!183571 () Bool)

(declare-fun res!86894 () Bool)

(assert (=> b!183571 (=> (not res!86894) (not e!120856))))

(assert (=> b!183571 (= res!86894 (= (size!3998 thiss!1248) (bvadd (_size!1309 thiss!1248) (bvsdiv (bvadd (extraKeys!3487 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!54681 res!86896) b!183569))

(assert (= (and b!183569 res!86895) b!183570))

(assert (= (and b!183570 res!86893) b!183571))

(assert (= (and b!183571 res!86894) b!183572))

(assert (=> d!54681 m!210827))

(declare-fun m!211113 () Bool)

(assert (=> b!183570 m!211113))

(assert (=> b!183571 m!211113))

(assert (=> d!54631 d!54681))

(declare-fun d!54683 () Bool)

(assert (=> d!54683 (= (apply!159 lt!90716 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2110 (getValueByKey!215 (toList!1189 lt!90716) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7462 () Bool)

(assert (= bs!7462 d!54683))

(declare-fun m!211115 () Bool)

(assert (=> bs!7462 m!211115))

(assert (=> bs!7462 m!211115))

(declare-fun m!211117 () Bool)

(assert (=> bs!7462 m!211117))

(assert (=> b!183388 d!54683))

(declare-fun d!54685 () Bool)

(declare-fun e!120857 () Bool)

(assert (=> d!54685 e!120857))

(declare-fun res!86897 () Bool)

(assert (=> d!54685 (=> res!86897 e!120857)))

(declare-fun lt!90823 () Bool)

(assert (=> d!54685 (= res!86897 (not lt!90823))))

(declare-fun lt!90825 () Bool)

(assert (=> d!54685 (= lt!90823 lt!90825)))

(declare-fun lt!90822 () Unit!5545)

(declare-fun e!120858 () Unit!5545)

(assert (=> d!54685 (= lt!90822 e!120858)))

(declare-fun c!32895 () Bool)

(assert (=> d!54685 (= c!32895 lt!90825)))

(assert (=> d!54685 (= lt!90825 (containsKey!219 (toList!1189 lt!90716) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54685 (= (contains!1269 lt!90716 #b1000000000000000000000000000000000000000000000000000000000000000) lt!90823)))

(declare-fun b!183573 () Bool)

(declare-fun lt!90824 () Unit!5545)

(assert (=> b!183573 (= e!120858 lt!90824)))

(assert (=> b!183573 (= lt!90824 (lemmaContainsKeyImpliesGetValueByKeyDefined!168 (toList!1189 lt!90716) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!183573 (isDefined!169 (getValueByKey!215 (toList!1189 lt!90716) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!183574 () Bool)

(declare-fun Unit!5552 () Unit!5545)

(assert (=> b!183574 (= e!120858 Unit!5552)))

(declare-fun b!183575 () Bool)

(assert (=> b!183575 (= e!120857 (isDefined!169 (getValueByKey!215 (toList!1189 lt!90716) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54685 c!32895) b!183573))

(assert (= (and d!54685 (not c!32895)) b!183574))

(assert (= (and d!54685 (not res!86897)) b!183575))

(declare-fun m!211119 () Bool)

(assert (=> d!54685 m!211119))

(declare-fun m!211121 () Bool)

(assert (=> b!183573 m!211121))

(assert (=> b!183573 m!211115))

(assert (=> b!183573 m!211115))

(declare-fun m!211123 () Bool)

(assert (=> b!183573 m!211123))

(assert (=> b!183575 m!211115))

(assert (=> b!183575 m!211115))

(assert (=> b!183575 m!211123))

(assert (=> bm!18523 d!54685))

(declare-fun d!54687 () Bool)

(declare-fun e!120859 () Bool)

(assert (=> d!54687 e!120859))

(declare-fun res!86898 () Bool)

(assert (=> d!54687 (=> (not res!86898) (not e!120859))))

(declare-fun lt!90827 () ListLongMap!2347)

(assert (=> d!54687 (= res!86898 (contains!1269 lt!90827 (_1!1718 (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))))))))

(declare-fun lt!90829 () List!2357)

(assert (=> d!54687 (= lt!90827 (ListLongMap!2348 lt!90829))))

(declare-fun lt!90828 () Unit!5545)

(declare-fun lt!90826 () Unit!5545)

(assert (=> d!54687 (= lt!90828 lt!90826)))

(assert (=> d!54687 (= (getValueByKey!215 lt!90829 (_1!1718 (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))))) (Some!220 (_2!1718 (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))))))))

(assert (=> d!54687 (= lt!90826 (lemmaContainsTupThenGetReturnValue!114 lt!90829 (_1!1718 (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))) (_2!1718 (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))))))))

(assert (=> d!54687 (= lt!90829 (insertStrictlySorted!116 (toList!1189 (ite c!32847 call!18521 (ite c!32846 call!18526 call!18523))) (_1!1718 (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))) (_2!1718 (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))))))))

(assert (=> d!54687 (= (+!274 (ite c!32847 call!18521 (ite c!32846 call!18526 call!18523)) (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))) lt!90827)))

(declare-fun b!183576 () Bool)

(declare-fun res!86899 () Bool)

(assert (=> b!183576 (=> (not res!86899) (not e!120859))))

(assert (=> b!183576 (= res!86899 (= (getValueByKey!215 (toList!1189 lt!90827) (_1!1718 (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248))))) (Some!220 (_2!1718 (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))))))))

(declare-fun b!183577 () Bool)

(assert (=> b!183577 (= e!120859 (contains!1272 (toList!1189 lt!90827) (ite (or c!32847 c!32846) (tuple2!3417 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3591 thiss!1248)) (tuple2!3417 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3591 thiss!1248)))))))

(assert (= (and d!54687 res!86898) b!183576))

(assert (= (and b!183576 res!86899) b!183577))

(declare-fun m!211125 () Bool)

(assert (=> d!54687 m!211125))

(declare-fun m!211127 () Bool)

(assert (=> d!54687 m!211127))

(declare-fun m!211129 () Bool)

(assert (=> d!54687 m!211129))

(declare-fun m!211131 () Bool)

(assert (=> d!54687 m!211131))

(declare-fun m!211133 () Bool)

(assert (=> b!183576 m!211133))

(declare-fun m!211135 () Bool)

(assert (=> b!183577 m!211135))

(assert (=> bm!18520 d!54687))

(declare-fun d!54689 () Bool)

(declare-fun isEmpty!469 (Option!221) Bool)

(assert (=> d!54689 (= (isDefined!169 (getValueByKey!215 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828)) (not (isEmpty!469 (getValueByKey!215 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828))))))

(declare-fun bs!7463 () Bool)

(assert (= bs!7463 d!54689))

(assert (=> bs!7463 m!210861))

(declare-fun m!211137 () Bool)

(assert (=> bs!7463 m!211137))

(assert (=> b!183337 d!54689))

(declare-fun b!183589 () Bool)

(declare-fun e!120865 () Option!221)

(assert (=> b!183589 (= e!120865 None!219)))

(declare-fun b!183586 () Bool)

(declare-fun e!120864 () Option!221)

(assert (=> b!183586 (= e!120864 (Some!220 (_2!1718 (h!2982 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))))))))

(declare-fun b!183587 () Bool)

(assert (=> b!183587 (= e!120864 e!120865)))

(declare-fun c!32901 () Bool)

(assert (=> b!183587 (= c!32901 (and ((_ is Cons!2353) (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))) (not (= (_1!1718 (h!2982 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))))) key!828))))))

(declare-fun b!183588 () Bool)

(assert (=> b!183588 (= e!120865 (getValueByKey!215 (t!7233 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))) key!828))))

(declare-fun d!54691 () Bool)

(declare-fun c!32900 () Bool)

(assert (=> d!54691 (= c!32900 (and ((_ is Cons!2353) (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))) (= (_1!1718 (h!2982 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))))) key!828)))))

(assert (=> d!54691 (= (getValueByKey!215 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828) e!120864)))

(assert (= (and d!54691 c!32900) b!183586))

(assert (= (and d!54691 (not c!32900)) b!183587))

(assert (= (and b!183587 c!32901) b!183588))

(assert (= (and b!183587 (not c!32901)) b!183589))

(declare-fun m!211139 () Bool)

(assert (=> b!183588 m!211139))

(assert (=> b!183337 d!54691))

(assert (=> d!54623 d!54619))

(declare-fun d!54693 () Bool)

(declare-fun res!86904 () Bool)

(declare-fun e!120870 () Bool)

(assert (=> d!54693 (=> res!86904 e!120870)))

(assert (=> d!54693 (= res!86904 (and ((_ is Cons!2353) (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))) (= (_1!1718 (h!2982 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))))) key!828)))))

(assert (=> d!54693 (= (containsKey!219 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828) e!120870)))

(declare-fun b!183594 () Bool)

(declare-fun e!120871 () Bool)

(assert (=> b!183594 (= e!120870 e!120871)))

(declare-fun res!86905 () Bool)

(assert (=> b!183594 (=> (not res!86905) (not e!120871))))

(assert (=> b!183594 (= res!86905 (and (or (not ((_ is Cons!2353) (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))))) (bvsle (_1!1718 (h!2982 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))))) key!828)) ((_ is Cons!2353) (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))) (bvslt (_1!1718 (h!2982 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))))) key!828)))))

(declare-fun b!183595 () Bool)

(assert (=> b!183595 (= e!120871 (containsKey!219 (t!7233 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))) key!828))))

(assert (= (and d!54693 (not res!86904)) b!183594))

(assert (= (and b!183594 res!86905) b!183595))

(declare-fun m!211141 () Bool)

(assert (=> b!183595 m!211141))

(assert (=> d!54621 d!54693))

(declare-fun b!183614 () Bool)

(declare-fun lt!90834 () SeekEntryResult!630)

(assert (=> b!183614 (and (bvsge (index!4692 lt!90834) #b00000000000000000000000000000000) (bvslt (index!4692 lt!90834) (size!3994 (_keys!5668 thiss!1248))))))

(declare-fun res!86912 () Bool)

(assert (=> b!183614 (= res!86912 (= (select (arr!3682 (_keys!5668 thiss!1248)) (index!4692 lt!90834)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!120882 () Bool)

(assert (=> b!183614 (=> res!86912 e!120882)))

(declare-fun b!183615 () Bool)

(declare-fun e!120884 () Bool)

(assert (=> b!183615 (= e!120884 (bvsge (x!19984 lt!90834) #b01111111111111111111111111111110))))

(declare-fun b!183616 () Bool)

(declare-fun e!120883 () Bool)

(assert (=> b!183616 (= e!120884 e!120883)))

(declare-fun res!86914 () Bool)

(assert (=> b!183616 (= res!86914 (and ((_ is Intermediate!630) lt!90834) (not (undefined!1442 lt!90834)) (bvslt (x!19984 lt!90834) #b01111111111111111111111111111110) (bvsge (x!19984 lt!90834) #b00000000000000000000000000000000) (bvsge (x!19984 lt!90834) #b00000000000000000000000000000000)))))

(assert (=> b!183616 (=> (not res!86914) (not e!120883))))

(declare-fun b!183617 () Bool)

(declare-fun e!120886 () SeekEntryResult!630)

(declare-fun e!120885 () SeekEntryResult!630)

(assert (=> b!183617 (= e!120886 e!120885)))

(declare-fun c!32908 () Bool)

(declare-fun lt!90835 () (_ BitVec 64))

(assert (=> b!183617 (= c!32908 (or (= lt!90835 key!828) (= (bvadd lt!90835 lt!90835) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!183618 () Bool)

(assert (=> b!183618 (= e!120886 (Intermediate!630 true (toIndex!0 key!828 (mask!8812 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!183619 () Bool)

(assert (=> b!183619 (= e!120885 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8812 thiss!1248)) #b00000000000000000000000000000000 (mask!8812 thiss!1248)) key!828 (_keys!5668 thiss!1248) (mask!8812 thiss!1248)))))

(declare-fun b!183621 () Bool)

(assert (=> b!183621 (and (bvsge (index!4692 lt!90834) #b00000000000000000000000000000000) (bvslt (index!4692 lt!90834) (size!3994 (_keys!5668 thiss!1248))))))

(declare-fun res!86913 () Bool)

(assert (=> b!183621 (= res!86913 (= (select (arr!3682 (_keys!5668 thiss!1248)) (index!4692 lt!90834)) key!828))))

(assert (=> b!183621 (=> res!86913 e!120882)))

(assert (=> b!183621 (= e!120883 e!120882)))

(declare-fun b!183622 () Bool)

(assert (=> b!183622 (= e!120885 (Intermediate!630 false (toIndex!0 key!828 (mask!8812 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!183620 () Bool)

(assert (=> b!183620 (and (bvsge (index!4692 lt!90834) #b00000000000000000000000000000000) (bvslt (index!4692 lt!90834) (size!3994 (_keys!5668 thiss!1248))))))

(assert (=> b!183620 (= e!120882 (= (select (arr!3682 (_keys!5668 thiss!1248)) (index!4692 lt!90834)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!54695 () Bool)

(assert (=> d!54695 e!120884))

(declare-fun c!32910 () Bool)

(assert (=> d!54695 (= c!32910 (and ((_ is Intermediate!630) lt!90834) (undefined!1442 lt!90834)))))

(assert (=> d!54695 (= lt!90834 e!120886)))

(declare-fun c!32909 () Bool)

(assert (=> d!54695 (= c!32909 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!54695 (= lt!90835 (select (arr!3682 (_keys!5668 thiss!1248)) (toIndex!0 key!828 (mask!8812 thiss!1248))))))

(assert (=> d!54695 (validMask!0 (mask!8812 thiss!1248))))

(assert (=> d!54695 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8812 thiss!1248)) key!828 (_keys!5668 thiss!1248) (mask!8812 thiss!1248)) lt!90834)))

(assert (= (and d!54695 c!32909) b!183618))

(assert (= (and d!54695 (not c!32909)) b!183617))

(assert (= (and b!183617 c!32908) b!183622))

(assert (= (and b!183617 (not c!32908)) b!183619))

(assert (= (and d!54695 c!32910) b!183615))

(assert (= (and d!54695 (not c!32910)) b!183616))

(assert (= (and b!183616 res!86914) b!183621))

(assert (= (and b!183621 (not res!86913)) b!183614))

(assert (= (and b!183614 (not res!86912)) b!183620))

(declare-fun m!211143 () Bool)

(assert (=> b!183614 m!211143))

(assert (=> d!54695 m!210927))

(declare-fun m!211145 () Bool)

(assert (=> d!54695 m!211145))

(assert (=> d!54695 m!210827))

(assert (=> b!183620 m!211143))

(assert (=> b!183621 m!211143))

(assert (=> b!183619 m!210927))

(declare-fun m!211147 () Bool)

(assert (=> b!183619 m!211147))

(assert (=> b!183619 m!211147))

(declare-fun m!211149 () Bool)

(assert (=> b!183619 m!211149))

(assert (=> d!54629 d!54695))

(declare-fun d!54697 () Bool)

(declare-fun lt!90841 () (_ BitVec 32))

(declare-fun lt!90840 () (_ BitVec 32))

(assert (=> d!54697 (= lt!90841 (bvmul (bvxor lt!90840 (bvlshr lt!90840 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!54697 (= lt!90840 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!54697 (and (bvsge (mask!8812 thiss!1248) #b00000000000000000000000000000000) (let ((res!86915 (let ((h!2985 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20003 (bvmul (bvxor h!2985 (bvlshr h!2985 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20003 (bvlshr x!20003 #b00000000000000000000000000001101)) (mask!8812 thiss!1248)))))) (and (bvslt res!86915 (bvadd (mask!8812 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!86915 #b00000000000000000000000000000000))))))

(assert (=> d!54697 (= (toIndex!0 key!828 (mask!8812 thiss!1248)) (bvand (bvxor lt!90841 (bvlshr lt!90841 #b00000000000000000000000000001101)) (mask!8812 thiss!1248)))))

(assert (=> d!54629 d!54697))

(assert (=> d!54629 d!54619))

(declare-fun d!54699 () Bool)

(assert (=> d!54699 (= (apply!159 lt!90716 (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000)) (get!2110 (getValueByKey!215 (toList!1189 lt!90716) (select (arr!3682 (_keys!5668 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7464 () Bool)

(assert (= bs!7464 d!54699))

(assert (=> bs!7464 m!210865))

(assert (=> bs!7464 m!211107))

(assert (=> bs!7464 m!211107))

(declare-fun m!211151 () Bool)

(assert (=> bs!7464 m!211151))

(assert (=> b!183385 d!54699))

(declare-fun d!54701 () Bool)

(declare-fun c!32913 () Bool)

(assert (=> d!54701 (= c!32913 ((_ is ValueCellFull!1806) (select (arr!3683 (_values!3733 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!120889 () V!5379)

(assert (=> d!54701 (= (get!2109 (select (arr!3683 (_values!3733 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!497 (defaultEntry!3750 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!120889)))

(declare-fun b!183627 () Bool)

(declare-fun get!2111 (ValueCell!1806 V!5379) V!5379)

(assert (=> b!183627 (= e!120889 (get!2111 (select (arr!3683 (_values!3733 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!497 (defaultEntry!3750 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!183628 () Bool)

(declare-fun get!2112 (ValueCell!1806 V!5379) V!5379)

(assert (=> b!183628 (= e!120889 (get!2112 (select (arr!3683 (_values!3733 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!497 (defaultEntry!3750 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54701 c!32913) b!183627))

(assert (= (and d!54701 (not c!32913)) b!183628))

(assert (=> b!183627 m!210879))

(assert (=> b!183627 m!210875))

(declare-fun m!211153 () Bool)

(assert (=> b!183627 m!211153))

(assert (=> b!183628 m!210879))

(assert (=> b!183628 m!210875))

(declare-fun m!211155 () Bool)

(assert (=> b!183628 m!211155))

(assert (=> b!183385 d!54701))

(declare-fun d!54703 () Bool)

(assert (=> d!54703 (isDefined!169 (getValueByKey!215 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828))))

(declare-fun lt!90844 () Unit!5545)

(declare-fun choose!980 (List!2357 (_ BitVec 64)) Unit!5545)

(assert (=> d!54703 (= lt!90844 (choose!980 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828))))

(declare-fun e!120892 () Bool)

(assert (=> d!54703 e!120892))

(declare-fun res!86918 () Bool)

(assert (=> d!54703 (=> (not res!86918) (not e!120892))))

(declare-fun isStrictlySorted!340 (List!2357) Bool)

(assert (=> d!54703 (= res!86918 (isStrictlySorted!340 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248)))))))

(assert (=> d!54703 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!168 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828) lt!90844)))

(declare-fun b!183631 () Bool)

(assert (=> b!183631 (= e!120892 (containsKey!219 (toList!1189 (getCurrentListMap!832 (_keys!5668 thiss!1248) (_values!3733 thiss!1248) (mask!8812 thiss!1248) (extraKeys!3487 thiss!1248) (zeroValue!3591 thiss!1248) (minValue!3591 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3750 thiss!1248))) key!828))))

(assert (= (and d!54703 res!86918) b!183631))

(assert (=> d!54703 m!210861))

(assert (=> d!54703 m!210861))

(assert (=> d!54703 m!210863))

(declare-fun m!211157 () Bool)

(assert (=> d!54703 m!211157))

(declare-fun m!211159 () Bool)

(assert (=> d!54703 m!211159))

(assert (=> b!183631 m!210857))

(assert (=> b!183335 d!54703))

(assert (=> b!183335 d!54689))

(assert (=> b!183335 d!54691))

(assert (=> b!183400 d!54633))

(declare-fun d!54705 () Bool)

(assert (=> d!54705 (= (apply!159 lt!90716 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2110 (getValueByKey!215 (toList!1189 lt!90716) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7465 () Bool)

(assert (= bs!7465 d!54705))

(assert (=> bs!7465 m!210955))

(assert (=> bs!7465 m!210955))

(declare-fun m!211161 () Bool)

(assert (=> bs!7465 m!211161))

(assert (=> b!183392 d!54705))

(declare-fun mapNonEmpty!7389 () Bool)

(declare-fun mapRes!7389 () Bool)

(declare-fun tp!16362 () Bool)

(declare-fun e!120893 () Bool)

(assert (=> mapNonEmpty!7389 (= mapRes!7389 (and tp!16362 e!120893))))

(declare-fun mapKey!7389 () (_ BitVec 32))

(declare-fun mapRest!7389 () (Array (_ BitVec 32) ValueCell!1806))

(declare-fun mapValue!7389 () ValueCell!1806)

(assert (=> mapNonEmpty!7389 (= mapRest!7388 (store mapRest!7389 mapKey!7389 mapValue!7389))))

(declare-fun condMapEmpty!7389 () Bool)

(declare-fun mapDefault!7389 () ValueCell!1806)

(assert (=> mapNonEmpty!7388 (= condMapEmpty!7389 (= mapRest!7388 ((as const (Array (_ BitVec 32) ValueCell!1806)) mapDefault!7389)))))

(declare-fun e!120894 () Bool)

(assert (=> mapNonEmpty!7388 (= tp!16361 (and e!120894 mapRes!7389))))

(declare-fun b!183632 () Bool)

(assert (=> b!183632 (= e!120893 tp_is_empty!4299)))

(declare-fun mapIsEmpty!7389 () Bool)

(assert (=> mapIsEmpty!7389 mapRes!7389))

(declare-fun b!183633 () Bool)

(assert (=> b!183633 (= e!120894 tp_is_empty!4299)))

(assert (= (and mapNonEmpty!7388 condMapEmpty!7389) mapIsEmpty!7389))

(assert (= (and mapNonEmpty!7388 (not condMapEmpty!7389)) mapNonEmpty!7389))

(assert (= (and mapNonEmpty!7389 ((_ is ValueCellFull!1806) mapValue!7389)) b!183632))

(assert (= (and mapNonEmpty!7388 ((_ is ValueCellFull!1806) mapDefault!7389)) b!183633))

(declare-fun m!211163 () Bool)

(assert (=> mapNonEmpty!7389 m!211163))

(declare-fun b_lambda!7229 () Bool)

(assert (= b_lambda!7227 (or (and b!183299 b_free!4527) b_lambda!7229)))

(declare-fun b_lambda!7231 () Bool)

(assert (= b_lambda!7225 (or (and b!183299 b_free!4527) b_lambda!7231)))

(check-sat (not b!183627) (not b!183571) (not d!54689) (not b!183524) (not b!183628) (not d!54671) (not b!183516) (not b!183588) (not b!183519) (not b!183449) (not b_lambda!7231) (not d!54703) (not b!183453) (not b!183546) (not b!183452) (not b!183474) (not b!183509) (not b!183473) (not b_next!4527) (not d!54665) (not b!183448) (not d!54659) tp_is_empty!4299 (not b!183511) (not d!54653) (not d!54647) (not d!54673) (not d!54663) (not b!183523) (not d!54681) (not b!183522) (not b!183455) (not d!54699) (not b!183502) (not d!54667) (not b!183545) (not d!54687) (not d!54655) (not b!183526) (not d!54683) (not bm!18530) (not d!54677) (not b!183577) (not d!54649) (not d!54657) (not d!54645) (not b!183506) (not b!183619) (not b!183576) (not b!183501) (not b!183510) (not bm!18527) (not b!183517) (not b!183595) (not bm!18533) (not d!54651) (not d!54643) (not d!54675) (not d!54695) (not d!54705) (not d!54685) (not d!54669) (not b!183548) (not b!183504) (not b!183575) (not b!183475) (not d!54661) (not b!183461) (not bm!18536) (not b_lambda!7223) (not d!54639) (not b!183573) (not b!183472) (not b!183508) (not b!183559) (not b_lambda!7229) (not b!183518) (not b!183631) (not b!183460) (not d!54637) (not mapNonEmpty!7389) (not b!183570) b_and!11123)
(check-sat b_and!11123 (not b_next!4527))

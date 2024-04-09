; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17818 () Bool)

(assert start!17818)

(declare-fun b!177785 () Bool)

(declare-fun b_free!4395 () Bool)

(declare-fun b_next!4395 () Bool)

(assert (=> b!177785 (= b_free!4395 (not b_next!4395))))

(declare-fun tp!15891 () Bool)

(declare-fun b_and!10921 () Bool)

(assert (=> b!177785 (= tp!15891 b_and!10921)))

(declare-fun b!177784 () Bool)

(declare-fun e!117228 () Bool)

(declare-fun e!117227 () Bool)

(declare-fun mapRes!7120 () Bool)

(assert (=> b!177784 (= e!117228 (and e!117227 mapRes!7120))))

(declare-fun condMapEmpty!7120 () Bool)

(declare-datatypes ((V!5203 0))(
  ( (V!5204 (val!2128 Int)) )
))
(declare-datatypes ((ValueCell!1740 0))(
  ( (ValueCellFull!1740 (v!4006 V!5203)) (EmptyCell!1740) )
))
(declare-datatypes ((array!7488 0))(
  ( (array!7489 (arr!3550 (Array (_ BitVec 32) (_ BitVec 64))) (size!3855 (_ BitVec 32))) )
))
(declare-datatypes ((array!7490 0))(
  ( (array!7491 (arr!3551 (Array (_ BitVec 32) ValueCell!1740)) (size!3856 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2388 0))(
  ( (LongMapFixedSize!2389 (defaultEntry!3660 Int) (mask!8608 (_ BitVec 32)) (extraKeys!3397 (_ BitVec 32)) (zeroValue!3501 V!5203) (minValue!3501 V!5203) (_size!1243 (_ BitVec 32)) (_keys!5532 array!7488) (_values!3643 array!7490) (_vacant!1243 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2388)

(declare-fun mapDefault!7120 () ValueCell!1740)

(assert (=> b!177784 (= condMapEmpty!7120 (= (arr!3551 (_values!3643 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1740)) mapDefault!7120)))))

(declare-fun mapIsEmpty!7120 () Bool)

(assert (=> mapIsEmpty!7120 mapRes!7120))

(declare-fun e!117229 () Bool)

(declare-fun tp_is_empty!4167 () Bool)

(declare-fun array_inv!2269 (array!7488) Bool)

(declare-fun array_inv!2270 (array!7490) Bool)

(assert (=> b!177785 (= e!117229 (and tp!15891 tp_is_empty!4167 (array_inv!2269 (_keys!5532 thiss!1248)) (array_inv!2270 (_values!3643 thiss!1248)) e!117228))))

(declare-fun b!177786 () Bool)

(declare-fun e!117231 () Bool)

(assert (=> b!177786 (= e!117231 (and (= (size!3856 (_values!3643 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8608 thiss!1248))) (not (= (size!3855 (_keys!5532 thiss!1248)) (size!3856 (_values!3643 thiss!1248))))))))

(declare-fun b!177787 () Bool)

(declare-fun res!84271 () Bool)

(assert (=> b!177787 (=> (not res!84271) (not e!117231))))

(declare-fun key!828 () (_ BitVec 64))

(declare-datatypes ((tuple2!3306 0))(
  ( (tuple2!3307 (_1!1663 (_ BitVec 64)) (_2!1663 V!5203)) )
))
(declare-datatypes ((List!2278 0))(
  ( (Nil!2275) (Cons!2274 (h!2896 tuple2!3306) (t!7120 List!2278)) )
))
(declare-datatypes ((ListLongMap!2247 0))(
  ( (ListLongMap!2248 (toList!1139 List!2278)) )
))
(declare-fun contains!1201 (ListLongMap!2247 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!786 (array!7488 array!7490 (_ BitVec 32) (_ BitVec 32) V!5203 V!5203 (_ BitVec 32) Int) ListLongMap!2247)

(assert (=> b!177787 (= res!84271 (not (contains!1201 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)) key!828)))))

(declare-fun res!84269 () Bool)

(assert (=> start!17818 (=> (not res!84269) (not e!117231))))

(declare-fun valid!992 (LongMapFixedSize!2388) Bool)

(assert (=> start!17818 (= res!84269 (valid!992 thiss!1248))))

(assert (=> start!17818 e!117231))

(assert (=> start!17818 e!117229))

(assert (=> start!17818 true))

(declare-fun b!177788 () Bool)

(declare-fun res!84268 () Bool)

(assert (=> b!177788 (=> (not res!84268) (not e!117231))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!580 0))(
  ( (MissingZero!580 (index!4488 (_ BitVec 32))) (Found!580 (index!4489 (_ BitVec 32))) (Intermediate!580 (undefined!1392 Bool) (index!4490 (_ BitVec 32)) (x!19504 (_ BitVec 32))) (Undefined!580) (MissingVacant!580 (index!4491 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7488 (_ BitVec 32)) SeekEntryResult!580)

(assert (=> b!177788 (= res!84268 ((_ is Undefined!580) (seekEntryOrOpen!0 key!828 (_keys!5532 thiss!1248) (mask!8608 thiss!1248))))))

(declare-fun mapNonEmpty!7120 () Bool)

(declare-fun tp!15892 () Bool)

(declare-fun e!117230 () Bool)

(assert (=> mapNonEmpty!7120 (= mapRes!7120 (and tp!15892 e!117230))))

(declare-fun mapRest!7120 () (Array (_ BitVec 32) ValueCell!1740))

(declare-fun mapValue!7120 () ValueCell!1740)

(declare-fun mapKey!7120 () (_ BitVec 32))

(assert (=> mapNonEmpty!7120 (= (arr!3551 (_values!3643 thiss!1248)) (store mapRest!7120 mapKey!7120 mapValue!7120))))

(declare-fun b!177789 () Bool)

(assert (=> b!177789 (= e!117227 tp_is_empty!4167)))

(declare-fun b!177790 () Bool)

(declare-fun res!84270 () Bool)

(assert (=> b!177790 (=> (not res!84270) (not e!117231))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!177790 (= res!84270 (validMask!0 (mask!8608 thiss!1248)))))

(declare-fun b!177791 () Bool)

(assert (=> b!177791 (= e!117230 tp_is_empty!4167)))

(declare-fun b!177792 () Bool)

(declare-fun res!84267 () Bool)

(assert (=> b!177792 (=> (not res!84267) (not e!117231))))

(assert (=> b!177792 (= res!84267 (not (= key!828 (bvneg key!828))))))

(assert (= (and start!17818 res!84269) b!177792))

(assert (= (and b!177792 res!84267) b!177788))

(assert (= (and b!177788 res!84268) b!177787))

(assert (= (and b!177787 res!84271) b!177790))

(assert (= (and b!177790 res!84270) b!177786))

(assert (= (and b!177784 condMapEmpty!7120) mapIsEmpty!7120))

(assert (= (and b!177784 (not condMapEmpty!7120)) mapNonEmpty!7120))

(assert (= (and mapNonEmpty!7120 ((_ is ValueCellFull!1740) mapValue!7120)) b!177791))

(assert (= (and b!177784 ((_ is ValueCellFull!1740) mapDefault!7120)) b!177789))

(assert (= b!177785 b!177784))

(assert (= start!17818 b!177785))

(declare-fun m!206281 () Bool)

(assert (=> b!177785 m!206281))

(declare-fun m!206283 () Bool)

(assert (=> b!177785 m!206283))

(declare-fun m!206285 () Bool)

(assert (=> b!177790 m!206285))

(declare-fun m!206287 () Bool)

(assert (=> mapNonEmpty!7120 m!206287))

(declare-fun m!206289 () Bool)

(assert (=> b!177787 m!206289))

(assert (=> b!177787 m!206289))

(declare-fun m!206291 () Bool)

(assert (=> b!177787 m!206291))

(declare-fun m!206293 () Bool)

(assert (=> b!177788 m!206293))

(declare-fun m!206295 () Bool)

(assert (=> start!17818 m!206295))

(check-sat (not b!177787) tp_is_empty!4167 (not b_next!4395) (not b!177790) b_and!10921 (not mapNonEmpty!7120) (not start!17818) (not b!177788) (not b!177785))
(check-sat b_and!10921 (not b_next!4395))
(get-model)

(declare-fun b!177832 () Bool)

(declare-fun c!31837 () Bool)

(declare-fun lt!87900 () (_ BitVec 64))

(assert (=> b!177832 (= c!31837 (= lt!87900 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!117256 () SeekEntryResult!580)

(declare-fun e!117257 () SeekEntryResult!580)

(assert (=> b!177832 (= e!117256 e!117257)))

(declare-fun b!177833 () Bool)

(declare-fun lt!87899 () SeekEntryResult!580)

(assert (=> b!177833 (= e!117257 (MissingZero!580 (index!4490 lt!87899)))))

(declare-fun b!177834 () Bool)

(declare-fun e!117258 () SeekEntryResult!580)

(assert (=> b!177834 (= e!117258 e!117256)))

(assert (=> b!177834 (= lt!87900 (select (arr!3550 (_keys!5532 thiss!1248)) (index!4490 lt!87899)))))

(declare-fun c!31835 () Bool)

(assert (=> b!177834 (= c!31835 (= lt!87900 key!828))))

(declare-fun b!177835 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7488 (_ BitVec 32)) SeekEntryResult!580)

(assert (=> b!177835 (= e!117257 (seekKeyOrZeroReturnVacant!0 (x!19504 lt!87899) (index!4490 lt!87899) (index!4490 lt!87899) key!828 (_keys!5532 thiss!1248) (mask!8608 thiss!1248)))))

(declare-fun b!177836 () Bool)

(assert (=> b!177836 (= e!117258 Undefined!580)))

(declare-fun b!177837 () Bool)

(assert (=> b!177837 (= e!117256 (Found!580 (index!4490 lt!87899)))))

(declare-fun d!53755 () Bool)

(declare-fun lt!87898 () SeekEntryResult!580)

(assert (=> d!53755 (and (or ((_ is Undefined!580) lt!87898) (not ((_ is Found!580) lt!87898)) (and (bvsge (index!4489 lt!87898) #b00000000000000000000000000000000) (bvslt (index!4489 lt!87898) (size!3855 (_keys!5532 thiss!1248))))) (or ((_ is Undefined!580) lt!87898) ((_ is Found!580) lt!87898) (not ((_ is MissingZero!580) lt!87898)) (and (bvsge (index!4488 lt!87898) #b00000000000000000000000000000000) (bvslt (index!4488 lt!87898) (size!3855 (_keys!5532 thiss!1248))))) (or ((_ is Undefined!580) lt!87898) ((_ is Found!580) lt!87898) ((_ is MissingZero!580) lt!87898) (not ((_ is MissingVacant!580) lt!87898)) (and (bvsge (index!4491 lt!87898) #b00000000000000000000000000000000) (bvslt (index!4491 lt!87898) (size!3855 (_keys!5532 thiss!1248))))) (or ((_ is Undefined!580) lt!87898) (ite ((_ is Found!580) lt!87898) (= (select (arr!3550 (_keys!5532 thiss!1248)) (index!4489 lt!87898)) key!828) (ite ((_ is MissingZero!580) lt!87898) (= (select (arr!3550 (_keys!5532 thiss!1248)) (index!4488 lt!87898)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!580) lt!87898) (= (select (arr!3550 (_keys!5532 thiss!1248)) (index!4491 lt!87898)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53755 (= lt!87898 e!117258)))

(declare-fun c!31836 () Bool)

(assert (=> d!53755 (= c!31836 (and ((_ is Intermediate!580) lt!87899) (undefined!1392 lt!87899)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7488 (_ BitVec 32)) SeekEntryResult!580)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53755 (= lt!87899 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8608 thiss!1248)) key!828 (_keys!5532 thiss!1248) (mask!8608 thiss!1248)))))

(assert (=> d!53755 (validMask!0 (mask!8608 thiss!1248))))

(assert (=> d!53755 (= (seekEntryOrOpen!0 key!828 (_keys!5532 thiss!1248) (mask!8608 thiss!1248)) lt!87898)))

(assert (= (and d!53755 c!31836) b!177836))

(assert (= (and d!53755 (not c!31836)) b!177834))

(assert (= (and b!177834 c!31835) b!177837))

(assert (= (and b!177834 (not c!31835)) b!177832))

(assert (= (and b!177832 c!31837) b!177833))

(assert (= (and b!177832 (not c!31837)) b!177835))

(declare-fun m!206313 () Bool)

(assert (=> b!177834 m!206313))

(declare-fun m!206315 () Bool)

(assert (=> b!177835 m!206315))

(declare-fun m!206317 () Bool)

(assert (=> d!53755 m!206317))

(assert (=> d!53755 m!206317))

(declare-fun m!206319 () Bool)

(assert (=> d!53755 m!206319))

(declare-fun m!206321 () Bool)

(assert (=> d!53755 m!206321))

(assert (=> d!53755 m!206285))

(declare-fun m!206323 () Bool)

(assert (=> d!53755 m!206323))

(declare-fun m!206325 () Bool)

(assert (=> d!53755 m!206325))

(assert (=> b!177788 d!53755))

(declare-fun d!53757 () Bool)

(declare-fun e!117263 () Bool)

(assert (=> d!53757 e!117263))

(declare-fun res!84289 () Bool)

(assert (=> d!53757 (=> res!84289 e!117263)))

(declare-fun lt!87912 () Bool)

(assert (=> d!53757 (= res!84289 (not lt!87912))))

(declare-fun lt!87910 () Bool)

(assert (=> d!53757 (= lt!87912 lt!87910)))

(declare-datatypes ((Unit!5429 0))(
  ( (Unit!5430) )
))
(declare-fun lt!87911 () Unit!5429)

(declare-fun e!117264 () Unit!5429)

(assert (=> d!53757 (= lt!87911 e!117264)))

(declare-fun c!31840 () Bool)

(assert (=> d!53757 (= c!31840 lt!87910)))

(declare-fun containsKey!200 (List!2278 (_ BitVec 64)) Bool)

(assert (=> d!53757 (= lt!87910 (containsKey!200 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828))))

(assert (=> d!53757 (= (contains!1201 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)) key!828) lt!87912)))

(declare-fun b!177844 () Bool)

(declare-fun lt!87909 () Unit!5429)

(assert (=> b!177844 (= e!117264 lt!87909)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!149 (List!2278 (_ BitVec 64)) Unit!5429)

(assert (=> b!177844 (= lt!87909 (lemmaContainsKeyImpliesGetValueByKeyDefined!149 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828))))

(declare-datatypes ((Option!202 0))(
  ( (Some!201 (v!4008 V!5203)) (None!200) )
))
(declare-fun isDefined!150 (Option!202) Bool)

(declare-fun getValueByKey!196 (List!2278 (_ BitVec 64)) Option!202)

(assert (=> b!177844 (isDefined!150 (getValueByKey!196 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828))))

(declare-fun b!177845 () Bool)

(declare-fun Unit!5431 () Unit!5429)

(assert (=> b!177845 (= e!117264 Unit!5431)))

(declare-fun b!177846 () Bool)

(assert (=> b!177846 (= e!117263 (isDefined!150 (getValueByKey!196 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828)))))

(assert (= (and d!53757 c!31840) b!177844))

(assert (= (and d!53757 (not c!31840)) b!177845))

(assert (= (and d!53757 (not res!84289)) b!177846))

(declare-fun m!206327 () Bool)

(assert (=> d!53757 m!206327))

(declare-fun m!206329 () Bool)

(assert (=> b!177844 m!206329))

(declare-fun m!206331 () Bool)

(assert (=> b!177844 m!206331))

(assert (=> b!177844 m!206331))

(declare-fun m!206333 () Bool)

(assert (=> b!177844 m!206333))

(assert (=> b!177846 m!206331))

(assert (=> b!177846 m!206331))

(assert (=> b!177846 m!206333))

(assert (=> b!177787 d!53757))

(declare-fun b!177889 () Bool)

(declare-fun e!117296 () Bool)

(declare-fun lt!87976 () ListLongMap!2247)

(declare-fun apply!142 (ListLongMap!2247 (_ BitVec 64)) V!5203)

(assert (=> b!177889 (= e!117296 (= (apply!142 lt!87976 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3501 thiss!1248)))))

(declare-fun b!177890 () Bool)

(declare-fun e!117292 () ListLongMap!2247)

(declare-fun call!17991 () ListLongMap!2247)

(assert (=> b!177890 (= e!117292 call!17991)))

(declare-fun b!177891 () Bool)

(declare-fun e!117293 () Bool)

(declare-fun e!117302 () Bool)

(assert (=> b!177891 (= e!117293 e!117302)))

(declare-fun res!84314 () Bool)

(assert (=> b!177891 (=> (not res!84314) (not e!117302))))

(assert (=> b!177891 (= res!84314 (contains!1201 lt!87976 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!177891 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(declare-fun b!177892 () Bool)

(declare-fun e!117301 () Bool)

(declare-fun e!117299 () Bool)

(assert (=> b!177892 (= e!117301 e!117299)))

(declare-fun res!84309 () Bool)

(declare-fun call!17992 () Bool)

(assert (=> b!177892 (= res!84309 call!17992)))

(assert (=> b!177892 (=> (not res!84309) (not e!117299))))

(declare-fun b!177893 () Bool)

(declare-fun e!117298 () Unit!5429)

(declare-fun lt!87975 () Unit!5429)

(assert (=> b!177893 (= e!117298 lt!87975)))

(declare-fun lt!87959 () ListLongMap!2247)

(declare-fun getCurrentListMapNoExtraKeys!172 (array!7488 array!7490 (_ BitVec 32) (_ BitVec 32) V!5203 V!5203 (_ BitVec 32) Int) ListLongMap!2247)

(assert (=> b!177893 (= lt!87959 (getCurrentListMapNoExtraKeys!172 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))))

(declare-fun lt!87974 () (_ BitVec 64))

(assert (=> b!177893 (= lt!87974 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87977 () (_ BitVec 64))

(assert (=> b!177893 (= lt!87977 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87961 () Unit!5429)

(declare-fun addStillContains!118 (ListLongMap!2247 (_ BitVec 64) V!5203 (_ BitVec 64)) Unit!5429)

(assert (=> b!177893 (= lt!87961 (addStillContains!118 lt!87959 lt!87974 (zeroValue!3501 thiss!1248) lt!87977))))

(declare-fun +!254 (ListLongMap!2247 tuple2!3306) ListLongMap!2247)

(assert (=> b!177893 (contains!1201 (+!254 lt!87959 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248))) lt!87977)))

(declare-fun lt!87971 () Unit!5429)

(assert (=> b!177893 (= lt!87971 lt!87961)))

(declare-fun lt!87968 () ListLongMap!2247)

(assert (=> b!177893 (= lt!87968 (getCurrentListMapNoExtraKeys!172 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))))

(declare-fun lt!87964 () (_ BitVec 64))

(assert (=> b!177893 (= lt!87964 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87960 () (_ BitVec 64))

(assert (=> b!177893 (= lt!87960 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87963 () Unit!5429)

(declare-fun addApplyDifferent!118 (ListLongMap!2247 (_ BitVec 64) V!5203 (_ BitVec 64)) Unit!5429)

(assert (=> b!177893 (= lt!87963 (addApplyDifferent!118 lt!87968 lt!87964 (minValue!3501 thiss!1248) lt!87960))))

(assert (=> b!177893 (= (apply!142 (+!254 lt!87968 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248))) lt!87960) (apply!142 lt!87968 lt!87960))))

(declare-fun lt!87958 () Unit!5429)

(assert (=> b!177893 (= lt!87958 lt!87963)))

(declare-fun lt!87967 () ListLongMap!2247)

(assert (=> b!177893 (= lt!87967 (getCurrentListMapNoExtraKeys!172 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))))

(declare-fun lt!87957 () (_ BitVec 64))

(assert (=> b!177893 (= lt!87957 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87966 () (_ BitVec 64))

(assert (=> b!177893 (= lt!87966 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87972 () Unit!5429)

(assert (=> b!177893 (= lt!87972 (addApplyDifferent!118 lt!87967 lt!87957 (zeroValue!3501 thiss!1248) lt!87966))))

(assert (=> b!177893 (= (apply!142 (+!254 lt!87967 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248))) lt!87966) (apply!142 lt!87967 lt!87966))))

(declare-fun lt!87965 () Unit!5429)

(assert (=> b!177893 (= lt!87965 lt!87972)))

(declare-fun lt!87969 () ListLongMap!2247)

(assert (=> b!177893 (= lt!87969 (getCurrentListMapNoExtraKeys!172 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))))

(declare-fun lt!87962 () (_ BitVec 64))

(assert (=> b!177893 (= lt!87962 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!87978 () (_ BitVec 64))

(assert (=> b!177893 (= lt!87978 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177893 (= lt!87975 (addApplyDifferent!118 lt!87969 lt!87962 (minValue!3501 thiss!1248) lt!87978))))

(assert (=> b!177893 (= (apply!142 (+!254 lt!87969 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248))) lt!87978) (apply!142 lt!87969 lt!87978))))

(declare-fun b!177894 () Bool)

(declare-fun e!117303 () ListLongMap!2247)

(declare-fun e!117300 () ListLongMap!2247)

(assert (=> b!177894 (= e!117303 e!117300)))

(declare-fun c!31858 () Bool)

(assert (=> b!177894 (= c!31858 (and (not (= (bvand (extraKeys!3397 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3397 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!53759 () Bool)

(declare-fun e!117295 () Bool)

(assert (=> d!53759 e!117295))

(declare-fun res!84313 () Bool)

(assert (=> d!53759 (=> (not res!84313) (not e!117295))))

(assert (=> d!53759 (= res!84313 (or (bvsge #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))))

(declare-fun lt!87970 () ListLongMap!2247)

(assert (=> d!53759 (= lt!87976 lt!87970)))

(declare-fun lt!87973 () Unit!5429)

(assert (=> d!53759 (= lt!87973 e!117298)))

(declare-fun c!31855 () Bool)

(declare-fun e!117297 () Bool)

(assert (=> d!53759 (= c!31855 e!117297)))

(declare-fun res!84315 () Bool)

(assert (=> d!53759 (=> (not res!84315) (not e!117297))))

(assert (=> d!53759 (= res!84315 (bvslt #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(assert (=> d!53759 (= lt!87970 e!117303)))

(declare-fun c!31857 () Bool)

(assert (=> d!53759 (= c!31857 (and (not (= (bvand (extraKeys!3397 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3397 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53759 (validMask!0 (mask!8608 thiss!1248))))

(assert (=> d!53759 (= (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)) lt!87976)))

(declare-fun b!177895 () Bool)

(declare-fun e!117294 () Bool)

(assert (=> b!177895 (= e!117295 e!117294)))

(declare-fun c!31854 () Bool)

(assert (=> b!177895 (= c!31854 (not (= (bvand (extraKeys!3397 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!177896 () Bool)

(assert (=> b!177896 (= e!117301 (not call!17992))))

(declare-fun b!177897 () Bool)

(assert (=> b!177897 (= e!117294 e!117296)))

(declare-fun res!84311 () Bool)

(declare-fun call!17994 () Bool)

(assert (=> b!177897 (= res!84311 call!17994)))

(assert (=> b!177897 (=> (not res!84311) (not e!117296))))

(declare-fun bm!17987 () Bool)

(declare-fun call!17995 () ListLongMap!2247)

(declare-fun call!17990 () ListLongMap!2247)

(assert (=> bm!17987 (= call!17995 call!17990)))

(declare-fun b!177898 () Bool)

(assert (=> b!177898 (= e!117300 call!17995)))

(declare-fun b!177899 () Bool)

(assert (=> b!177899 (= e!117299 (= (apply!142 lt!87976 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3501 thiss!1248)))))

(declare-fun b!177900 () Bool)

(assert (=> b!177900 (= e!117292 call!17995)))

(declare-fun b!177901 () Bool)

(assert (=> b!177901 (= e!117294 (not call!17994))))

(declare-fun b!177902 () Bool)

(declare-fun e!117291 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!177902 (= e!117291 (validKeyInArray!0 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!17988 () Bool)

(declare-fun call!17996 () ListLongMap!2247)

(declare-fun call!17993 () ListLongMap!2247)

(assert (=> bm!17988 (= call!17996 call!17993)))

(declare-fun b!177903 () Bool)

(declare-fun res!84310 () Bool)

(assert (=> b!177903 (=> (not res!84310) (not e!117295))))

(assert (=> b!177903 (= res!84310 e!117301)))

(declare-fun c!31856 () Bool)

(assert (=> b!177903 (= c!31856 (not (= (bvand (extraKeys!3397 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!17989 () Bool)

(assert (=> bm!17989 (= call!17991 call!17996)))

(declare-fun b!177904 () Bool)

(declare-fun res!84316 () Bool)

(assert (=> b!177904 (=> (not res!84316) (not e!117295))))

(assert (=> b!177904 (= res!84316 e!117293)))

(declare-fun res!84312 () Bool)

(assert (=> b!177904 (=> res!84312 e!117293)))

(assert (=> b!177904 (= res!84312 (not e!117291))))

(declare-fun res!84308 () Bool)

(assert (=> b!177904 (=> (not res!84308) (not e!117291))))

(assert (=> b!177904 (= res!84308 (bvslt #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(declare-fun b!177905 () Bool)

(assert (=> b!177905 (= e!117303 (+!254 call!17990 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))))))

(declare-fun b!177906 () Bool)

(assert (=> b!177906 (= e!117297 (validKeyInArray!0 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!177907 () Bool)

(declare-fun Unit!5432 () Unit!5429)

(assert (=> b!177907 (= e!117298 Unit!5432)))

(declare-fun bm!17990 () Bool)

(assert (=> bm!17990 (= call!17994 (contains!1201 lt!87976 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!17991 () Bool)

(assert (=> bm!17991 (= call!17992 (contains!1201 lt!87976 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!17992 () Bool)

(assert (=> bm!17992 (= call!17993 (getCurrentListMapNoExtraKeys!172 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))))

(declare-fun bm!17993 () Bool)

(assert (=> bm!17993 (= call!17990 (+!254 (ite c!31857 call!17993 (ite c!31858 call!17996 call!17991)) (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))))))

(declare-fun b!177908 () Bool)

(declare-fun get!2027 (ValueCell!1740 V!5203) V!5203)

(declare-fun dynLambda!480 (Int (_ BitVec 64)) V!5203)

(assert (=> b!177908 (= e!117302 (= (apply!142 lt!87976 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)) (get!2027 (select (arr!3551 (_values!3643 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!480 (defaultEntry!3660 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!177908 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3856 (_values!3643 thiss!1248))))))

(assert (=> b!177908 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(declare-fun b!177909 () Bool)

(declare-fun c!31853 () Bool)

(assert (=> b!177909 (= c!31853 (and (not (= (bvand (extraKeys!3397 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3397 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!177909 (= e!117300 e!117292)))

(assert (= (and d!53759 c!31857) b!177905))

(assert (= (and d!53759 (not c!31857)) b!177894))

(assert (= (and b!177894 c!31858) b!177898))

(assert (= (and b!177894 (not c!31858)) b!177909))

(assert (= (and b!177909 c!31853) b!177900))

(assert (= (and b!177909 (not c!31853)) b!177890))

(assert (= (or b!177900 b!177890) bm!17989))

(assert (= (or b!177898 bm!17989) bm!17988))

(assert (= (or b!177898 b!177900) bm!17987))

(assert (= (or b!177905 bm!17988) bm!17992))

(assert (= (or b!177905 bm!17987) bm!17993))

(assert (= (and d!53759 res!84315) b!177906))

(assert (= (and d!53759 c!31855) b!177893))

(assert (= (and d!53759 (not c!31855)) b!177907))

(assert (= (and d!53759 res!84313) b!177904))

(assert (= (and b!177904 res!84308) b!177902))

(assert (= (and b!177904 (not res!84312)) b!177891))

(assert (= (and b!177891 res!84314) b!177908))

(assert (= (and b!177904 res!84316) b!177903))

(assert (= (and b!177903 c!31856) b!177892))

(assert (= (and b!177903 (not c!31856)) b!177896))

(assert (= (and b!177892 res!84309) b!177899))

(assert (= (or b!177892 b!177896) bm!17991))

(assert (= (and b!177903 res!84310) b!177895))

(assert (= (and b!177895 c!31854) b!177897))

(assert (= (and b!177895 (not c!31854)) b!177901))

(assert (= (and b!177897 res!84311) b!177889))

(assert (= (or b!177897 b!177901) bm!17990))

(declare-fun b_lambda!7097 () Bool)

(assert (=> (not b_lambda!7097) (not b!177908)))

(declare-fun t!7122 () Bool)

(declare-fun tb!2803 () Bool)

(assert (=> (and b!177785 (= (defaultEntry!3660 thiss!1248) (defaultEntry!3660 thiss!1248)) t!7122) tb!2803))

(declare-fun result!4667 () Bool)

(assert (=> tb!2803 (= result!4667 tp_is_empty!4167)))

(assert (=> b!177908 t!7122))

(declare-fun b_and!10925 () Bool)

(assert (= b_and!10921 (and (=> t!7122 result!4667) b_and!10925)))

(declare-fun m!206335 () Bool)

(assert (=> b!177899 m!206335))

(declare-fun m!206337 () Bool)

(assert (=> bm!17992 m!206337))

(declare-fun m!206339 () Bool)

(assert (=> b!177902 m!206339))

(assert (=> b!177902 m!206339))

(declare-fun m!206341 () Bool)

(assert (=> b!177902 m!206341))

(declare-fun m!206343 () Bool)

(assert (=> b!177889 m!206343))

(declare-fun m!206345 () Bool)

(assert (=> bm!17991 m!206345))

(declare-fun m!206347 () Bool)

(assert (=> bm!17990 m!206347))

(assert (=> b!177906 m!206339))

(assert (=> b!177906 m!206339))

(assert (=> b!177906 m!206341))

(declare-fun m!206349 () Bool)

(assert (=> b!177908 m!206349))

(declare-fun m!206351 () Bool)

(assert (=> b!177908 m!206351))

(assert (=> b!177908 m!206349))

(declare-fun m!206353 () Bool)

(assert (=> b!177908 m!206353))

(assert (=> b!177908 m!206339))

(assert (=> b!177908 m!206339))

(declare-fun m!206355 () Bool)

(assert (=> b!177908 m!206355))

(assert (=> b!177908 m!206351))

(declare-fun m!206357 () Bool)

(assert (=> b!177905 m!206357))

(declare-fun m!206359 () Bool)

(assert (=> b!177893 m!206359))

(declare-fun m!206361 () Bool)

(assert (=> b!177893 m!206361))

(declare-fun m!206363 () Bool)

(assert (=> b!177893 m!206363))

(declare-fun m!206365 () Bool)

(assert (=> b!177893 m!206365))

(declare-fun m!206367 () Bool)

(assert (=> b!177893 m!206367))

(assert (=> b!177893 m!206363))

(declare-fun m!206369 () Bool)

(assert (=> b!177893 m!206369))

(declare-fun m!206371 () Bool)

(assert (=> b!177893 m!206371))

(assert (=> b!177893 m!206339))

(declare-fun m!206373 () Bool)

(assert (=> b!177893 m!206373))

(declare-fun m!206375 () Bool)

(assert (=> b!177893 m!206375))

(declare-fun m!206377 () Bool)

(assert (=> b!177893 m!206377))

(declare-fun m!206379 () Bool)

(assert (=> b!177893 m!206379))

(assert (=> b!177893 m!206359))

(declare-fun m!206381 () Bool)

(assert (=> b!177893 m!206381))

(declare-fun m!206383 () Bool)

(assert (=> b!177893 m!206383))

(assert (=> b!177893 m!206377))

(assert (=> b!177893 m!206373))

(declare-fun m!206385 () Bool)

(assert (=> b!177893 m!206385))

(declare-fun m!206387 () Bool)

(assert (=> b!177893 m!206387))

(assert (=> b!177893 m!206337))

(assert (=> d!53759 m!206285))

(declare-fun m!206389 () Bool)

(assert (=> bm!17993 m!206389))

(assert (=> b!177891 m!206339))

(assert (=> b!177891 m!206339))

(declare-fun m!206391 () Bool)

(assert (=> b!177891 m!206391))

(assert (=> b!177787 d!53759))

(declare-fun d!53761 () Bool)

(declare-fun res!84323 () Bool)

(declare-fun e!117306 () Bool)

(assert (=> d!53761 (=> (not res!84323) (not e!117306))))

(declare-fun simpleValid!155 (LongMapFixedSize!2388) Bool)

(assert (=> d!53761 (= res!84323 (simpleValid!155 thiss!1248))))

(assert (=> d!53761 (= (valid!992 thiss!1248) e!117306)))

(declare-fun b!177918 () Bool)

(declare-fun res!84324 () Bool)

(assert (=> b!177918 (=> (not res!84324) (not e!117306))))

(declare-fun arrayCountValidKeys!0 (array!7488 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!177918 (= res!84324 (= (arrayCountValidKeys!0 (_keys!5532 thiss!1248) #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))) (_size!1243 thiss!1248)))))

(declare-fun b!177919 () Bool)

(declare-fun res!84325 () Bool)

(assert (=> b!177919 (=> (not res!84325) (not e!117306))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7488 (_ BitVec 32)) Bool)

(assert (=> b!177919 (= res!84325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5532 thiss!1248) (mask!8608 thiss!1248)))))

(declare-fun b!177920 () Bool)

(declare-datatypes ((List!2279 0))(
  ( (Nil!2276) (Cons!2275 (h!2897 (_ BitVec 64)) (t!7123 List!2279)) )
))
(declare-fun arrayNoDuplicates!0 (array!7488 (_ BitVec 32) List!2279) Bool)

(assert (=> b!177920 (= e!117306 (arrayNoDuplicates!0 (_keys!5532 thiss!1248) #b00000000000000000000000000000000 Nil!2276))))

(assert (= (and d!53761 res!84323) b!177918))

(assert (= (and b!177918 res!84324) b!177919))

(assert (= (and b!177919 res!84325) b!177920))

(declare-fun m!206393 () Bool)

(assert (=> d!53761 m!206393))

(declare-fun m!206395 () Bool)

(assert (=> b!177918 m!206395))

(declare-fun m!206397 () Bool)

(assert (=> b!177919 m!206397))

(declare-fun m!206399 () Bool)

(assert (=> b!177920 m!206399))

(assert (=> start!17818 d!53761))

(declare-fun d!53763 () Bool)

(assert (=> d!53763 (= (validMask!0 (mask!8608 thiss!1248)) (and (or (= (mask!8608 thiss!1248) #b00000000000000000000000000000111) (= (mask!8608 thiss!1248) #b00000000000000000000000000001111) (= (mask!8608 thiss!1248) #b00000000000000000000000000011111) (= (mask!8608 thiss!1248) #b00000000000000000000000000111111) (= (mask!8608 thiss!1248) #b00000000000000000000000001111111) (= (mask!8608 thiss!1248) #b00000000000000000000000011111111) (= (mask!8608 thiss!1248) #b00000000000000000000000111111111) (= (mask!8608 thiss!1248) #b00000000000000000000001111111111) (= (mask!8608 thiss!1248) #b00000000000000000000011111111111) (= (mask!8608 thiss!1248) #b00000000000000000000111111111111) (= (mask!8608 thiss!1248) #b00000000000000000001111111111111) (= (mask!8608 thiss!1248) #b00000000000000000011111111111111) (= (mask!8608 thiss!1248) #b00000000000000000111111111111111) (= (mask!8608 thiss!1248) #b00000000000000001111111111111111) (= (mask!8608 thiss!1248) #b00000000000000011111111111111111) (= (mask!8608 thiss!1248) #b00000000000000111111111111111111) (= (mask!8608 thiss!1248) #b00000000000001111111111111111111) (= (mask!8608 thiss!1248) #b00000000000011111111111111111111) (= (mask!8608 thiss!1248) #b00000000000111111111111111111111) (= (mask!8608 thiss!1248) #b00000000001111111111111111111111) (= (mask!8608 thiss!1248) #b00000000011111111111111111111111) (= (mask!8608 thiss!1248) #b00000000111111111111111111111111) (= (mask!8608 thiss!1248) #b00000001111111111111111111111111) (= (mask!8608 thiss!1248) #b00000011111111111111111111111111) (= (mask!8608 thiss!1248) #b00000111111111111111111111111111) (= (mask!8608 thiss!1248) #b00001111111111111111111111111111) (= (mask!8608 thiss!1248) #b00011111111111111111111111111111) (= (mask!8608 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8608 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!177790 d!53763))

(declare-fun d!53765 () Bool)

(assert (=> d!53765 (= (array_inv!2269 (_keys!5532 thiss!1248)) (bvsge (size!3855 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177785 d!53765))

(declare-fun d!53767 () Bool)

(assert (=> d!53767 (= (array_inv!2270 (_values!3643 thiss!1248)) (bvsge (size!3856 (_values!3643 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!177785 d!53767))

(declare-fun mapIsEmpty!7126 () Bool)

(declare-fun mapRes!7126 () Bool)

(assert (=> mapIsEmpty!7126 mapRes!7126))

(declare-fun mapNonEmpty!7126 () Bool)

(declare-fun tp!15901 () Bool)

(declare-fun e!117312 () Bool)

(assert (=> mapNonEmpty!7126 (= mapRes!7126 (and tp!15901 e!117312))))

(declare-fun mapRest!7126 () (Array (_ BitVec 32) ValueCell!1740))

(declare-fun mapValue!7126 () ValueCell!1740)

(declare-fun mapKey!7126 () (_ BitVec 32))

(assert (=> mapNonEmpty!7126 (= mapRest!7120 (store mapRest!7126 mapKey!7126 mapValue!7126))))

(declare-fun b!177928 () Bool)

(declare-fun e!117311 () Bool)

(assert (=> b!177928 (= e!117311 tp_is_empty!4167)))

(declare-fun condMapEmpty!7126 () Bool)

(declare-fun mapDefault!7126 () ValueCell!1740)

(assert (=> mapNonEmpty!7120 (= condMapEmpty!7126 (= mapRest!7120 ((as const (Array (_ BitVec 32) ValueCell!1740)) mapDefault!7126)))))

(assert (=> mapNonEmpty!7120 (= tp!15892 (and e!117311 mapRes!7126))))

(declare-fun b!177927 () Bool)

(assert (=> b!177927 (= e!117312 tp_is_empty!4167)))

(assert (= (and mapNonEmpty!7120 condMapEmpty!7126) mapIsEmpty!7126))

(assert (= (and mapNonEmpty!7120 (not condMapEmpty!7126)) mapNonEmpty!7126))

(assert (= (and mapNonEmpty!7126 ((_ is ValueCellFull!1740) mapValue!7126)) b!177927))

(assert (= (and mapNonEmpty!7120 ((_ is ValueCellFull!1740) mapDefault!7126)) b!177928))

(declare-fun m!206401 () Bool)

(assert (=> mapNonEmpty!7126 m!206401))

(declare-fun b_lambda!7099 () Bool)

(assert (= b_lambda!7097 (or (and b!177785 b_free!4395) b_lambda!7099)))

(check-sat (not b!177889) (not b!177908) (not bm!17993) (not b_next!4395) (not mapNonEmpty!7126) (not bm!17991) (not b!177844) (not b!177891) (not d!53759) (not b!177899) (not b!177902) (not b!177919) (not b!177906) (not b!177835) tp_is_empty!4167 (not d!53755) (not d!53761) (not b!177905) (not b!177846) (not bm!17992) (not b!177920) (not b_lambda!7099) (not b!177893) (not d!53757) (not b!177918) b_and!10925 (not bm!17990))
(check-sat b_and!10925 (not b_next!4395))
(get-model)

(declare-fun b!177939 () Bool)

(declare-fun e!117323 () Bool)

(declare-fun contains!1202 (List!2279 (_ BitVec 64)) Bool)

(assert (=> b!177939 (= e!117323 (contains!1202 Nil!2276 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!177940 () Bool)

(declare-fun e!117321 () Bool)

(declare-fun call!17999 () Bool)

(assert (=> b!177940 (= e!117321 call!17999)))

(declare-fun bm!17996 () Bool)

(declare-fun c!31861 () Bool)

(assert (=> bm!17996 (= call!17999 (arrayNoDuplicates!0 (_keys!5532 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!31861 (Cons!2275 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000) Nil!2276) Nil!2276)))))

(declare-fun b!177941 () Bool)

(assert (=> b!177941 (= e!117321 call!17999)))

(declare-fun d!53769 () Bool)

(declare-fun res!84332 () Bool)

(declare-fun e!117322 () Bool)

(assert (=> d!53769 (=> res!84332 e!117322)))

(assert (=> d!53769 (= res!84332 (bvsge #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(assert (=> d!53769 (= (arrayNoDuplicates!0 (_keys!5532 thiss!1248) #b00000000000000000000000000000000 Nil!2276) e!117322)))

(declare-fun b!177942 () Bool)

(declare-fun e!117324 () Bool)

(assert (=> b!177942 (= e!117324 e!117321)))

(assert (=> b!177942 (= c!31861 (validKeyInArray!0 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!177943 () Bool)

(assert (=> b!177943 (= e!117322 e!117324)))

(declare-fun res!84334 () Bool)

(assert (=> b!177943 (=> (not res!84334) (not e!117324))))

(assert (=> b!177943 (= res!84334 (not e!117323))))

(declare-fun res!84333 () Bool)

(assert (=> b!177943 (=> (not res!84333) (not e!117323))))

(assert (=> b!177943 (= res!84333 (validKeyInArray!0 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53769 (not res!84332)) b!177943))

(assert (= (and b!177943 res!84333) b!177939))

(assert (= (and b!177943 res!84334) b!177942))

(assert (= (and b!177942 c!31861) b!177941))

(assert (= (and b!177942 (not c!31861)) b!177940))

(assert (= (or b!177941 b!177940) bm!17996))

(assert (=> b!177939 m!206339))

(assert (=> b!177939 m!206339))

(declare-fun m!206403 () Bool)

(assert (=> b!177939 m!206403))

(assert (=> bm!17996 m!206339))

(declare-fun m!206405 () Bool)

(assert (=> bm!17996 m!206405))

(assert (=> b!177942 m!206339))

(assert (=> b!177942 m!206339))

(assert (=> b!177942 m!206341))

(assert (=> b!177943 m!206339))

(assert (=> b!177943 m!206339))

(assert (=> b!177943 m!206341))

(assert (=> b!177920 d!53769))

(declare-fun d!53771 () Bool)

(assert (=> d!53771 (= (validKeyInArray!0 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!177906 d!53771))

(declare-fun bm!17999 () Bool)

(declare-fun call!18002 () Bool)

(assert (=> bm!17999 (= call!18002 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5532 thiss!1248) (mask!8608 thiss!1248)))))

(declare-fun b!177952 () Bool)

(declare-fun e!117331 () Bool)

(declare-fun e!117333 () Bool)

(assert (=> b!177952 (= e!117331 e!117333)))

(declare-fun lt!87986 () (_ BitVec 64))

(assert (=> b!177952 (= lt!87986 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!87985 () Unit!5429)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7488 (_ BitVec 64) (_ BitVec 32)) Unit!5429)

(assert (=> b!177952 (= lt!87985 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5532 thiss!1248) lt!87986 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7488 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!177952 (arrayContainsKey!0 (_keys!5532 thiss!1248) lt!87986 #b00000000000000000000000000000000)))

(declare-fun lt!87987 () Unit!5429)

(assert (=> b!177952 (= lt!87987 lt!87985)))

(declare-fun res!84340 () Bool)

(assert (=> b!177952 (= res!84340 (= (seekEntryOrOpen!0 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000) (_keys!5532 thiss!1248) (mask!8608 thiss!1248)) (Found!580 #b00000000000000000000000000000000)))))

(assert (=> b!177952 (=> (not res!84340) (not e!117333))))

(declare-fun b!177953 () Bool)

(declare-fun e!117332 () Bool)

(assert (=> b!177953 (= e!117332 e!117331)))

(declare-fun c!31864 () Bool)

(assert (=> b!177953 (= c!31864 (validKeyInArray!0 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!177954 () Bool)

(assert (=> b!177954 (= e!117333 call!18002)))

(declare-fun b!177955 () Bool)

(assert (=> b!177955 (= e!117331 call!18002)))

(declare-fun d!53773 () Bool)

(declare-fun res!84339 () Bool)

(assert (=> d!53773 (=> res!84339 e!117332)))

(assert (=> d!53773 (= res!84339 (bvsge #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(assert (=> d!53773 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5532 thiss!1248) (mask!8608 thiss!1248)) e!117332)))

(assert (= (and d!53773 (not res!84339)) b!177953))

(assert (= (and b!177953 c!31864) b!177952))

(assert (= (and b!177953 (not c!31864)) b!177955))

(assert (= (and b!177952 res!84340) b!177954))

(assert (= (or b!177954 b!177955) bm!17999))

(declare-fun m!206407 () Bool)

(assert (=> bm!17999 m!206407))

(assert (=> b!177952 m!206339))

(declare-fun m!206409 () Bool)

(assert (=> b!177952 m!206409))

(declare-fun m!206411 () Bool)

(assert (=> b!177952 m!206411))

(assert (=> b!177952 m!206339))

(declare-fun m!206413 () Bool)

(assert (=> b!177952 m!206413))

(assert (=> b!177953 m!206339))

(assert (=> b!177953 m!206339))

(assert (=> b!177953 m!206341))

(assert (=> b!177919 d!53773))

(declare-fun b!177974 () Bool)

(declare-fun e!117347 () SeekEntryResult!580)

(assert (=> b!177974 (= e!117347 (Intermediate!580 false (toIndex!0 key!828 (mask!8608 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!177975 () Bool)

(declare-fun e!117348 () Bool)

(declare-fun lt!87993 () SeekEntryResult!580)

(assert (=> b!177975 (= e!117348 (bvsge (x!19504 lt!87993) #b01111111111111111111111111111110))))

(declare-fun b!177976 () Bool)

(assert (=> b!177976 (and (bvsge (index!4490 lt!87993) #b00000000000000000000000000000000) (bvslt (index!4490 lt!87993) (size!3855 (_keys!5532 thiss!1248))))))

(declare-fun res!84347 () Bool)

(assert (=> b!177976 (= res!84347 (= (select (arr!3550 (_keys!5532 thiss!1248)) (index!4490 lt!87993)) key!828))))

(declare-fun e!117344 () Bool)

(assert (=> b!177976 (=> res!84347 e!117344)))

(declare-fun e!117346 () Bool)

(assert (=> b!177976 (= e!117346 e!117344)))

(declare-fun b!177977 () Bool)

(declare-fun e!117345 () SeekEntryResult!580)

(assert (=> b!177977 (= e!117345 (Intermediate!580 true (toIndex!0 key!828 (mask!8608 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!177978 () Bool)

(assert (=> b!177978 (and (bvsge (index!4490 lt!87993) #b00000000000000000000000000000000) (bvslt (index!4490 lt!87993) (size!3855 (_keys!5532 thiss!1248))))))

(declare-fun res!84348 () Bool)

(assert (=> b!177978 (= res!84348 (= (select (arr!3550 (_keys!5532 thiss!1248)) (index!4490 lt!87993)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!177978 (=> res!84348 e!117344)))

(declare-fun b!177980 () Bool)

(assert (=> b!177980 (and (bvsge (index!4490 lt!87993) #b00000000000000000000000000000000) (bvslt (index!4490 lt!87993) (size!3855 (_keys!5532 thiss!1248))))))

(assert (=> b!177980 (= e!117344 (= (select (arr!3550 (_keys!5532 thiss!1248)) (index!4490 lt!87993)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!177981 () Bool)

(assert (=> b!177981 (= e!117348 e!117346)))

(declare-fun res!84349 () Bool)

(assert (=> b!177981 (= res!84349 (and ((_ is Intermediate!580) lt!87993) (not (undefined!1392 lt!87993)) (bvslt (x!19504 lt!87993) #b01111111111111111111111111111110) (bvsge (x!19504 lt!87993) #b00000000000000000000000000000000) (bvsge (x!19504 lt!87993) #b00000000000000000000000000000000)))))

(assert (=> b!177981 (=> (not res!84349) (not e!117346))))

(declare-fun b!177982 () Bool)

(assert (=> b!177982 (= e!117345 e!117347)))

(declare-fun c!31873 () Bool)

(declare-fun lt!87992 () (_ BitVec 64))

(assert (=> b!177982 (= c!31873 (or (= lt!87992 key!828) (= (bvadd lt!87992 lt!87992) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!177979 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!177979 (= e!117347 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8608 thiss!1248)) #b00000000000000000000000000000000 (mask!8608 thiss!1248)) key!828 (_keys!5532 thiss!1248) (mask!8608 thiss!1248)))))

(declare-fun d!53775 () Bool)

(assert (=> d!53775 e!117348))

(declare-fun c!31872 () Bool)

(assert (=> d!53775 (= c!31872 (and ((_ is Intermediate!580) lt!87993) (undefined!1392 lt!87993)))))

(assert (=> d!53775 (= lt!87993 e!117345)))

(declare-fun c!31871 () Bool)

(assert (=> d!53775 (= c!31871 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!53775 (= lt!87992 (select (arr!3550 (_keys!5532 thiss!1248)) (toIndex!0 key!828 (mask!8608 thiss!1248))))))

(assert (=> d!53775 (validMask!0 (mask!8608 thiss!1248))))

(assert (=> d!53775 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8608 thiss!1248)) key!828 (_keys!5532 thiss!1248) (mask!8608 thiss!1248)) lt!87993)))

(assert (= (and d!53775 c!31871) b!177977))

(assert (= (and d!53775 (not c!31871)) b!177982))

(assert (= (and b!177982 c!31873) b!177974))

(assert (= (and b!177982 (not c!31873)) b!177979))

(assert (= (and d!53775 c!31872) b!177975))

(assert (= (and d!53775 (not c!31872)) b!177981))

(assert (= (and b!177981 res!84349) b!177976))

(assert (= (and b!177976 (not res!84347)) b!177978))

(assert (= (and b!177978 (not res!84348)) b!177980))

(declare-fun m!206415 () Bool)

(assert (=> b!177980 m!206415))

(assert (=> d!53775 m!206317))

(declare-fun m!206417 () Bool)

(assert (=> d!53775 m!206417))

(assert (=> d!53775 m!206285))

(assert (=> b!177978 m!206415))

(assert (=> b!177976 m!206415))

(assert (=> b!177979 m!206317))

(declare-fun m!206419 () Bool)

(assert (=> b!177979 m!206419))

(assert (=> b!177979 m!206419))

(declare-fun m!206421 () Bool)

(assert (=> b!177979 m!206421))

(assert (=> d!53755 d!53775))

(declare-fun d!53777 () Bool)

(declare-fun lt!87999 () (_ BitVec 32))

(declare-fun lt!87998 () (_ BitVec 32))

(assert (=> d!53777 (= lt!87999 (bvmul (bvxor lt!87998 (bvlshr lt!87998 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!53777 (= lt!87998 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!53777 (and (bvsge (mask!8608 thiss!1248) #b00000000000000000000000000000000) (let ((res!84350 (let ((h!2898 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!19521 (bvmul (bvxor h!2898 (bvlshr h!2898 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!19521 (bvlshr x!19521 #b00000000000000000000000000001101)) (mask!8608 thiss!1248)))))) (and (bvslt res!84350 (bvadd (mask!8608 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!84350 #b00000000000000000000000000000000))))))

(assert (=> d!53777 (= (toIndex!0 key!828 (mask!8608 thiss!1248)) (bvand (bvxor lt!87999 (bvlshr lt!87999 #b00000000000000000000000000001101)) (mask!8608 thiss!1248)))))

(assert (=> d!53755 d!53777))

(assert (=> d!53755 d!53763))

(declare-fun d!53779 () Bool)

(declare-fun e!117351 () Bool)

(assert (=> d!53779 e!117351))

(declare-fun res!84356 () Bool)

(assert (=> d!53779 (=> (not res!84356) (not e!117351))))

(declare-fun lt!88010 () ListLongMap!2247)

(assert (=> d!53779 (= res!84356 (contains!1201 lt!88010 (_1!1663 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))))))

(declare-fun lt!88011 () List!2278)

(assert (=> d!53779 (= lt!88010 (ListLongMap!2248 lt!88011))))

(declare-fun lt!88008 () Unit!5429)

(declare-fun lt!88009 () Unit!5429)

(assert (=> d!53779 (= lt!88008 lt!88009)))

(assert (=> d!53779 (= (getValueByKey!196 lt!88011 (_1!1663 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))) (Some!201 (_2!1663 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!105 (List!2278 (_ BitVec 64) V!5203) Unit!5429)

(assert (=> d!53779 (= lt!88009 (lemmaContainsTupThenGetReturnValue!105 lt!88011 (_1!1663 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))) (_2!1663 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))))))

(declare-fun insertStrictlySorted!107 (List!2278 (_ BitVec 64) V!5203) List!2278)

(assert (=> d!53779 (= lt!88011 (insertStrictlySorted!107 (toList!1139 call!17990) (_1!1663 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))) (_2!1663 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))))))

(assert (=> d!53779 (= (+!254 call!17990 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))) lt!88010)))

(declare-fun b!177987 () Bool)

(declare-fun res!84355 () Bool)

(assert (=> b!177987 (=> (not res!84355) (not e!117351))))

(assert (=> b!177987 (= res!84355 (= (getValueByKey!196 (toList!1139 lt!88010) (_1!1663 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))) (Some!201 (_2!1663 (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))))))))

(declare-fun b!177988 () Bool)

(declare-fun contains!1203 (List!2278 tuple2!3306) Bool)

(assert (=> b!177988 (= e!117351 (contains!1203 (toList!1139 lt!88010) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))))))

(assert (= (and d!53779 res!84356) b!177987))

(assert (= (and b!177987 res!84355) b!177988))

(declare-fun m!206423 () Bool)

(assert (=> d!53779 m!206423))

(declare-fun m!206425 () Bool)

(assert (=> d!53779 m!206425))

(declare-fun m!206427 () Bool)

(assert (=> d!53779 m!206427))

(declare-fun m!206429 () Bool)

(assert (=> d!53779 m!206429))

(declare-fun m!206431 () Bool)

(assert (=> b!177987 m!206431))

(declare-fun m!206433 () Bool)

(assert (=> b!177988 m!206433))

(assert (=> b!177905 d!53779))

(declare-fun d!53781 () Bool)

(declare-fun isEmpty!454 (Option!202) Bool)

(assert (=> d!53781 (= (isDefined!150 (getValueByKey!196 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828)) (not (isEmpty!454 (getValueByKey!196 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828))))))

(declare-fun bs!7308 () Bool)

(assert (= bs!7308 d!53781))

(assert (=> bs!7308 m!206331))

(declare-fun m!206435 () Bool)

(assert (=> bs!7308 m!206435))

(assert (=> b!177846 d!53781))

(declare-fun b!178000 () Bool)

(declare-fun e!117357 () Option!202)

(assert (=> b!178000 (= e!117357 None!200)))

(declare-fun b!177998 () Bool)

(declare-fun e!117356 () Option!202)

(assert (=> b!177998 (= e!117356 e!117357)))

(declare-fun c!31879 () Bool)

(assert (=> b!177998 (= c!31879 (and ((_ is Cons!2274) (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))) (not (= (_1!1663 (h!2896 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))))) key!828))))))

(declare-fun b!177999 () Bool)

(assert (=> b!177999 (= e!117357 (getValueByKey!196 (t!7120 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))) key!828))))

(declare-fun d!53783 () Bool)

(declare-fun c!31878 () Bool)

(assert (=> d!53783 (= c!31878 (and ((_ is Cons!2274) (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))) (= (_1!1663 (h!2896 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))))) key!828)))))

(assert (=> d!53783 (= (getValueByKey!196 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828) e!117356)))

(declare-fun b!177997 () Bool)

(assert (=> b!177997 (= e!117356 (Some!201 (_2!1663 (h!2896 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))))))))

(assert (= (and d!53783 c!31878) b!177997))

(assert (= (and d!53783 (not c!31878)) b!177998))

(assert (= (and b!177998 c!31879) b!177999))

(assert (= (and b!177998 (not c!31879)) b!178000))

(declare-fun m!206437 () Bool)

(assert (=> b!177999 m!206437))

(assert (=> b!177846 d!53783))

(declare-fun d!53785 () Bool)

(declare-fun lt!88014 () (_ BitVec 32))

(assert (=> d!53785 (and (bvsge lt!88014 #b00000000000000000000000000000000) (bvsle lt!88014 (bvsub (size!3855 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!117362 () (_ BitVec 32))

(assert (=> d!53785 (= lt!88014 e!117362)))

(declare-fun c!31884 () Bool)

(assert (=> d!53785 (= c!31884 (bvsge #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(assert (=> d!53785 (and (bvsle #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!3855 (_keys!5532 thiss!1248)) (size!3855 (_keys!5532 thiss!1248))))))

(assert (=> d!53785 (= (arrayCountValidKeys!0 (_keys!5532 thiss!1248) #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))) lt!88014)))

(declare-fun b!178009 () Bool)

(declare-fun e!117363 () (_ BitVec 32))

(declare-fun call!18005 () (_ BitVec 32))

(assert (=> b!178009 (= e!117363 (bvadd #b00000000000000000000000000000001 call!18005))))

(declare-fun b!178010 () Bool)

(assert (=> b!178010 (= e!117362 #b00000000000000000000000000000000)))

(declare-fun b!178011 () Bool)

(assert (=> b!178011 (= e!117363 call!18005)))

(declare-fun bm!18002 () Bool)

(assert (=> bm!18002 (= call!18005 (arrayCountValidKeys!0 (_keys!5532 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!3855 (_keys!5532 thiss!1248))))))

(declare-fun b!178012 () Bool)

(assert (=> b!178012 (= e!117362 e!117363)))

(declare-fun c!31885 () Bool)

(assert (=> b!178012 (= c!31885 (validKeyInArray!0 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!53785 c!31884) b!178010))

(assert (= (and d!53785 (not c!31884)) b!178012))

(assert (= (and b!178012 c!31885) b!178009))

(assert (= (and b!178012 (not c!31885)) b!178011))

(assert (= (or b!178009 b!178011) bm!18002))

(declare-fun m!206439 () Bool)

(assert (=> bm!18002 m!206439))

(assert (=> b!178012 m!206339))

(assert (=> b!178012 m!206339))

(assert (=> b!178012 m!206341))

(assert (=> b!177918 d!53785))

(assert (=> d!53759 d!53763))

(declare-fun b!178023 () Bool)

(declare-fun res!84367 () Bool)

(declare-fun e!117366 () Bool)

(assert (=> b!178023 (=> (not res!84367) (not e!117366))))

(declare-fun size!3859 (LongMapFixedSize!2388) (_ BitVec 32))

(assert (=> b!178023 (= res!84367 (= (size!3859 thiss!1248) (bvadd (_size!1243 thiss!1248) (bvsdiv (bvadd (extraKeys!3397 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!178024 () Bool)

(assert (=> b!178024 (= e!117366 (and (bvsge (extraKeys!3397 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3397 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1243 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!178022 () Bool)

(declare-fun res!84366 () Bool)

(assert (=> b!178022 (=> (not res!84366) (not e!117366))))

(assert (=> b!178022 (= res!84366 (bvsge (size!3859 thiss!1248) (_size!1243 thiss!1248)))))

(declare-fun b!178021 () Bool)

(declare-fun res!84368 () Bool)

(assert (=> b!178021 (=> (not res!84368) (not e!117366))))

(assert (=> b!178021 (= res!84368 (and (= (size!3856 (_values!3643 thiss!1248)) (bvadd (mask!8608 thiss!1248) #b00000000000000000000000000000001)) (= (size!3855 (_keys!5532 thiss!1248)) (size!3856 (_values!3643 thiss!1248))) (bvsge (_size!1243 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1243 thiss!1248) (bvadd (mask!8608 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun d!53787 () Bool)

(declare-fun res!84365 () Bool)

(assert (=> d!53787 (=> (not res!84365) (not e!117366))))

(assert (=> d!53787 (= res!84365 (validMask!0 (mask!8608 thiss!1248)))))

(assert (=> d!53787 (= (simpleValid!155 thiss!1248) e!117366)))

(assert (= (and d!53787 res!84365) b!178021))

(assert (= (and b!178021 res!84368) b!178022))

(assert (= (and b!178022 res!84366) b!178023))

(assert (= (and b!178023 res!84367) b!178024))

(declare-fun m!206441 () Bool)

(assert (=> b!178023 m!206441))

(assert (=> b!178022 m!206441))

(assert (=> d!53787 m!206285))

(assert (=> d!53761 d!53787))

(declare-fun e!117374 () SeekEntryResult!580)

(declare-fun b!178037 () Bool)

(assert (=> b!178037 (= e!117374 (seekKeyOrZeroReturnVacant!0 (bvadd (x!19504 lt!87899) #b00000000000000000000000000000001) (nextIndex!0 (index!4490 lt!87899) (x!19504 lt!87899) (mask!8608 thiss!1248)) (index!4490 lt!87899) key!828 (_keys!5532 thiss!1248) (mask!8608 thiss!1248)))))

(declare-fun b!178038 () Bool)

(declare-fun e!117373 () SeekEntryResult!580)

(assert (=> b!178038 (= e!117373 Undefined!580)))

(declare-fun d!53789 () Bool)

(declare-fun lt!88020 () SeekEntryResult!580)

(assert (=> d!53789 (and (or ((_ is Undefined!580) lt!88020) (not ((_ is Found!580) lt!88020)) (and (bvsge (index!4489 lt!88020) #b00000000000000000000000000000000) (bvslt (index!4489 lt!88020) (size!3855 (_keys!5532 thiss!1248))))) (or ((_ is Undefined!580) lt!88020) ((_ is Found!580) lt!88020) (not ((_ is MissingVacant!580) lt!88020)) (not (= (index!4491 lt!88020) (index!4490 lt!87899))) (and (bvsge (index!4491 lt!88020) #b00000000000000000000000000000000) (bvslt (index!4491 lt!88020) (size!3855 (_keys!5532 thiss!1248))))) (or ((_ is Undefined!580) lt!88020) (ite ((_ is Found!580) lt!88020) (= (select (arr!3550 (_keys!5532 thiss!1248)) (index!4489 lt!88020)) key!828) (and ((_ is MissingVacant!580) lt!88020) (= (index!4491 lt!88020) (index!4490 lt!87899)) (= (select (arr!3550 (_keys!5532 thiss!1248)) (index!4491 lt!88020)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!53789 (= lt!88020 e!117373)))

(declare-fun c!31893 () Bool)

(assert (=> d!53789 (= c!31893 (bvsge (x!19504 lt!87899) #b01111111111111111111111111111110))))

(declare-fun lt!88019 () (_ BitVec 64))

(assert (=> d!53789 (= lt!88019 (select (arr!3550 (_keys!5532 thiss!1248)) (index!4490 lt!87899)))))

(assert (=> d!53789 (validMask!0 (mask!8608 thiss!1248))))

(assert (=> d!53789 (= (seekKeyOrZeroReturnVacant!0 (x!19504 lt!87899) (index!4490 lt!87899) (index!4490 lt!87899) key!828 (_keys!5532 thiss!1248) (mask!8608 thiss!1248)) lt!88020)))

(declare-fun b!178039 () Bool)

(declare-fun e!117375 () SeekEntryResult!580)

(assert (=> b!178039 (= e!117373 e!117375)))

(declare-fun c!31892 () Bool)

(assert (=> b!178039 (= c!31892 (= lt!88019 key!828))))

(declare-fun b!178040 () Bool)

(declare-fun c!31894 () Bool)

(assert (=> b!178040 (= c!31894 (= lt!88019 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178040 (= e!117375 e!117374)))

(declare-fun b!178041 () Bool)

(assert (=> b!178041 (= e!117374 (MissingVacant!580 (index!4490 lt!87899)))))

(declare-fun b!178042 () Bool)

(assert (=> b!178042 (= e!117375 (Found!580 (index!4490 lt!87899)))))

(assert (= (and d!53789 c!31893) b!178038))

(assert (= (and d!53789 (not c!31893)) b!178039))

(assert (= (and b!178039 c!31892) b!178042))

(assert (= (and b!178039 (not c!31892)) b!178040))

(assert (= (and b!178040 c!31894) b!178041))

(assert (= (and b!178040 (not c!31894)) b!178037))

(declare-fun m!206443 () Bool)

(assert (=> b!178037 m!206443))

(assert (=> b!178037 m!206443))

(declare-fun m!206445 () Bool)

(assert (=> b!178037 m!206445))

(declare-fun m!206447 () Bool)

(assert (=> d!53789 m!206447))

(declare-fun m!206449 () Bool)

(assert (=> d!53789 m!206449))

(assert (=> d!53789 m!206313))

(assert (=> d!53789 m!206285))

(assert (=> b!177835 d!53789))

(declare-fun d!53791 () Bool)

(assert (=> d!53791 (isDefined!150 (getValueByKey!196 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828))))

(declare-fun lt!88023 () Unit!5429)

(declare-fun choose!957 (List!2278 (_ BitVec 64)) Unit!5429)

(assert (=> d!53791 (= lt!88023 (choose!957 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828))))

(declare-fun e!117378 () Bool)

(assert (=> d!53791 e!117378))

(declare-fun res!84371 () Bool)

(assert (=> d!53791 (=> (not res!84371) (not e!117378))))

(declare-fun isStrictlySorted!333 (List!2278) Bool)

(assert (=> d!53791 (= res!84371 (isStrictlySorted!333 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))))))

(assert (=> d!53791 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!149 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828) lt!88023)))

(declare-fun b!178045 () Bool)

(assert (=> b!178045 (= e!117378 (containsKey!200 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828))))

(assert (= (and d!53791 res!84371) b!178045))

(assert (=> d!53791 m!206331))

(assert (=> d!53791 m!206331))

(assert (=> d!53791 m!206333))

(declare-fun m!206451 () Bool)

(assert (=> d!53791 m!206451))

(declare-fun m!206453 () Bool)

(assert (=> d!53791 m!206453))

(assert (=> b!178045 m!206327))

(assert (=> b!177844 d!53791))

(assert (=> b!177844 d!53781))

(assert (=> b!177844 d!53783))

(declare-fun d!53793 () Bool)

(declare-fun get!2028 (Option!202) V!5203)

(assert (=> d!53793 (= (apply!142 lt!87976 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)) (get!2028 (getValueByKey!196 (toList!1139 lt!87976) (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7309 () Bool)

(assert (= bs!7309 d!53793))

(assert (=> bs!7309 m!206339))

(declare-fun m!206455 () Bool)

(assert (=> bs!7309 m!206455))

(assert (=> bs!7309 m!206455))

(declare-fun m!206457 () Bool)

(assert (=> bs!7309 m!206457))

(assert (=> b!177908 d!53793))

(declare-fun d!53795 () Bool)

(declare-fun c!31897 () Bool)

(assert (=> d!53795 (= c!31897 ((_ is ValueCellFull!1740) (select (arr!3551 (_values!3643 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!117381 () V!5203)

(assert (=> d!53795 (= (get!2027 (select (arr!3551 (_values!3643 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!480 (defaultEntry!3660 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!117381)))

(declare-fun b!178050 () Bool)

(declare-fun get!2029 (ValueCell!1740 V!5203) V!5203)

(assert (=> b!178050 (= e!117381 (get!2029 (select (arr!3551 (_values!3643 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!480 (defaultEntry!3660 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!178051 () Bool)

(declare-fun get!2030 (ValueCell!1740 V!5203) V!5203)

(assert (=> b!178051 (= e!117381 (get!2030 (select (arr!3551 (_values!3643 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!480 (defaultEntry!3660 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53795 c!31897) b!178050))

(assert (= (and d!53795 (not c!31897)) b!178051))

(assert (=> b!178050 m!206351))

(assert (=> b!178050 m!206349))

(declare-fun m!206459 () Bool)

(assert (=> b!178050 m!206459))

(assert (=> b!178051 m!206351))

(assert (=> b!178051 m!206349))

(declare-fun m!206461 () Bool)

(assert (=> b!178051 m!206461))

(assert (=> b!177908 d!53795))

(declare-fun d!53797 () Bool)

(assert (=> d!53797 (= (apply!142 (+!254 lt!87969 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248))) lt!87978) (get!2028 (getValueByKey!196 (toList!1139 (+!254 lt!87969 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248)))) lt!87978)))))

(declare-fun bs!7310 () Bool)

(assert (= bs!7310 d!53797))

(declare-fun m!206463 () Bool)

(assert (=> bs!7310 m!206463))

(assert (=> bs!7310 m!206463))

(declare-fun m!206465 () Bool)

(assert (=> bs!7310 m!206465))

(assert (=> b!177893 d!53797))

(declare-fun b!178076 () Bool)

(declare-fun lt!88040 () Unit!5429)

(declare-fun lt!88044 () Unit!5429)

(assert (=> b!178076 (= lt!88040 lt!88044)))

(declare-fun lt!88042 () (_ BitVec 64))

(declare-fun lt!88038 () (_ BitVec 64))

(declare-fun lt!88041 () V!5203)

(declare-fun lt!88043 () ListLongMap!2247)

(assert (=> b!178076 (not (contains!1201 (+!254 lt!88043 (tuple2!3307 lt!88042 lt!88041)) lt!88038))))

(declare-fun addStillNotContains!80 (ListLongMap!2247 (_ BitVec 64) V!5203 (_ BitVec 64)) Unit!5429)

(assert (=> b!178076 (= lt!88044 (addStillNotContains!80 lt!88043 lt!88042 lt!88041 lt!88038))))

(assert (=> b!178076 (= lt!88038 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!178076 (= lt!88041 (get!2027 (select (arr!3551 (_values!3643 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!480 (defaultEntry!3660 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!178076 (= lt!88042 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun call!18008 () ListLongMap!2247)

(assert (=> b!178076 (= lt!88043 call!18008)))

(declare-fun e!117398 () ListLongMap!2247)

(assert (=> b!178076 (= e!117398 (+!254 call!18008 (tuple2!3307 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000) (get!2027 (select (arr!3551 (_values!3643 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!480 (defaultEntry!3660 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!178077 () Bool)

(declare-fun e!117400 () Bool)

(declare-fun lt!88039 () ListLongMap!2247)

(assert (=> b!178077 (= e!117400 (= lt!88039 (getCurrentListMapNoExtraKeys!172 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3660 thiss!1248))))))

(declare-fun b!178078 () Bool)

(declare-fun e!117402 () ListLongMap!2247)

(assert (=> b!178078 (= e!117402 (ListLongMap!2248 Nil!2275))))

(declare-fun d!53799 () Bool)

(declare-fun e!117399 () Bool)

(assert (=> d!53799 e!117399))

(declare-fun res!84382 () Bool)

(assert (=> d!53799 (=> (not res!84382) (not e!117399))))

(assert (=> d!53799 (= res!84382 (not (contains!1201 lt!88039 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!53799 (= lt!88039 e!117402)))

(declare-fun c!31909 () Bool)

(assert (=> d!53799 (= c!31909 (bvsge #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(assert (=> d!53799 (validMask!0 (mask!8608 thiss!1248))))

(assert (=> d!53799 (= (getCurrentListMapNoExtraKeys!172 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)) lt!88039)))

(declare-fun b!178079 () Bool)

(declare-fun e!117397 () Bool)

(assert (=> b!178079 (= e!117397 e!117400)))

(declare-fun c!31908 () Bool)

(assert (=> b!178079 (= c!31908 (bvslt #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(declare-fun b!178080 () Bool)

(declare-fun e!117396 () Bool)

(assert (=> b!178080 (= e!117397 e!117396)))

(assert (=> b!178080 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(declare-fun res!84383 () Bool)

(assert (=> b!178080 (= res!84383 (contains!1201 lt!88039 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!178080 (=> (not res!84383) (not e!117396))))

(declare-fun b!178081 () Bool)

(declare-fun isEmpty!455 (ListLongMap!2247) Bool)

(assert (=> b!178081 (= e!117400 (isEmpty!455 lt!88039))))

(declare-fun bm!18005 () Bool)

(assert (=> bm!18005 (= call!18008 (getCurrentListMapNoExtraKeys!172 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3660 thiss!1248)))))

(declare-fun b!178082 () Bool)

(assert (=> b!178082 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(assert (=> b!178082 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3856 (_values!3643 thiss!1248))))))

(assert (=> b!178082 (= e!117396 (= (apply!142 lt!88039 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)) (get!2027 (select (arr!3551 (_values!3643 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!480 (defaultEntry!3660 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!178083 () Bool)

(assert (=> b!178083 (= e!117402 e!117398)))

(declare-fun c!31906 () Bool)

(assert (=> b!178083 (= c!31906 (validKeyInArray!0 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178084 () Bool)

(assert (=> b!178084 (= e!117399 e!117397)))

(declare-fun c!31907 () Bool)

(declare-fun e!117401 () Bool)

(assert (=> b!178084 (= c!31907 e!117401)))

(declare-fun res!84380 () Bool)

(assert (=> b!178084 (=> (not res!84380) (not e!117401))))

(assert (=> b!178084 (= res!84380 (bvslt #b00000000000000000000000000000000 (size!3855 (_keys!5532 thiss!1248))))))

(declare-fun b!178085 () Bool)

(assert (=> b!178085 (= e!117398 call!18008)))

(declare-fun b!178086 () Bool)

(assert (=> b!178086 (= e!117401 (validKeyInArray!0 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!178086 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!178087 () Bool)

(declare-fun res!84381 () Bool)

(assert (=> b!178087 (=> (not res!84381) (not e!117399))))

(assert (=> b!178087 (= res!84381 (not (contains!1201 lt!88039 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53799 c!31909) b!178078))

(assert (= (and d!53799 (not c!31909)) b!178083))

(assert (= (and b!178083 c!31906) b!178076))

(assert (= (and b!178083 (not c!31906)) b!178085))

(assert (= (or b!178076 b!178085) bm!18005))

(assert (= (and d!53799 res!84382) b!178087))

(assert (= (and b!178087 res!84381) b!178084))

(assert (= (and b!178084 res!84380) b!178086))

(assert (= (and b!178084 c!31907) b!178080))

(assert (= (and b!178084 (not c!31907)) b!178079))

(assert (= (and b!178080 res!84383) b!178082))

(assert (= (and b!178079 c!31908) b!178077))

(assert (= (and b!178079 (not c!31908)) b!178081))

(declare-fun b_lambda!7101 () Bool)

(assert (=> (not b_lambda!7101) (not b!178076)))

(assert (=> b!178076 t!7122))

(declare-fun b_and!10927 () Bool)

(assert (= b_and!10925 (and (=> t!7122 result!4667) b_and!10927)))

(declare-fun b_lambda!7103 () Bool)

(assert (=> (not b_lambda!7103) (not b!178082)))

(assert (=> b!178082 t!7122))

(declare-fun b_and!10929 () Bool)

(assert (= b_and!10927 (and (=> t!7122 result!4667) b_and!10929)))

(assert (=> b!178082 m!206339))

(declare-fun m!206467 () Bool)

(assert (=> b!178082 m!206467))

(assert (=> b!178082 m!206339))

(assert (=> b!178082 m!206351))

(assert (=> b!178082 m!206351))

(assert (=> b!178082 m!206349))

(assert (=> b!178082 m!206353))

(assert (=> b!178082 m!206349))

(declare-fun m!206469 () Bool)

(assert (=> b!178077 m!206469))

(assert (=> b!178086 m!206339))

(assert (=> b!178086 m!206339))

(assert (=> b!178086 m!206341))

(declare-fun m!206471 () Bool)

(assert (=> d!53799 m!206471))

(assert (=> d!53799 m!206285))

(declare-fun m!206473 () Bool)

(assert (=> b!178081 m!206473))

(declare-fun m!206475 () Bool)

(assert (=> b!178087 m!206475))

(assert (=> b!178080 m!206339))

(assert (=> b!178080 m!206339))

(declare-fun m!206477 () Bool)

(assert (=> b!178080 m!206477))

(assert (=> b!178083 m!206339))

(assert (=> b!178083 m!206339))

(assert (=> b!178083 m!206341))

(assert (=> bm!18005 m!206469))

(declare-fun m!206479 () Bool)

(assert (=> b!178076 m!206479))

(declare-fun m!206481 () Bool)

(assert (=> b!178076 m!206481))

(assert (=> b!178076 m!206339))

(declare-fun m!206483 () Bool)

(assert (=> b!178076 m!206483))

(assert (=> b!178076 m!206351))

(assert (=> b!178076 m!206479))

(assert (=> b!178076 m!206351))

(assert (=> b!178076 m!206349))

(assert (=> b!178076 m!206353))

(assert (=> b!178076 m!206349))

(declare-fun m!206485 () Bool)

(assert (=> b!178076 m!206485))

(assert (=> b!177893 d!53799))

(declare-fun d!53801 () Bool)

(declare-fun e!117403 () Bool)

(assert (=> d!53801 e!117403))

(declare-fun res!84385 () Bool)

(assert (=> d!53801 (=> (not res!84385) (not e!117403))))

(declare-fun lt!88047 () ListLongMap!2247)

(assert (=> d!53801 (= res!84385 (contains!1201 lt!88047 (_1!1663 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248)))))))

(declare-fun lt!88048 () List!2278)

(assert (=> d!53801 (= lt!88047 (ListLongMap!2248 lt!88048))))

(declare-fun lt!88045 () Unit!5429)

(declare-fun lt!88046 () Unit!5429)

(assert (=> d!53801 (= lt!88045 lt!88046)))

(assert (=> d!53801 (= (getValueByKey!196 lt!88048 (_1!1663 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248)))) (Some!201 (_2!1663 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248)))))))

(assert (=> d!53801 (= lt!88046 (lemmaContainsTupThenGetReturnValue!105 lt!88048 (_1!1663 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248))) (_2!1663 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248)))))))

(assert (=> d!53801 (= lt!88048 (insertStrictlySorted!107 (toList!1139 lt!87959) (_1!1663 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248))) (_2!1663 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248)))))))

(assert (=> d!53801 (= (+!254 lt!87959 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248))) lt!88047)))

(declare-fun b!178088 () Bool)

(declare-fun res!84384 () Bool)

(assert (=> b!178088 (=> (not res!84384) (not e!117403))))

(assert (=> b!178088 (= res!84384 (= (getValueByKey!196 (toList!1139 lt!88047) (_1!1663 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248)))) (Some!201 (_2!1663 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248))))))))

(declare-fun b!178089 () Bool)

(assert (=> b!178089 (= e!117403 (contains!1203 (toList!1139 lt!88047) (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248))))))

(assert (= (and d!53801 res!84385) b!178088))

(assert (= (and b!178088 res!84384) b!178089))

(declare-fun m!206487 () Bool)

(assert (=> d!53801 m!206487))

(declare-fun m!206489 () Bool)

(assert (=> d!53801 m!206489))

(declare-fun m!206491 () Bool)

(assert (=> d!53801 m!206491))

(declare-fun m!206493 () Bool)

(assert (=> d!53801 m!206493))

(declare-fun m!206495 () Bool)

(assert (=> b!178088 m!206495))

(declare-fun m!206497 () Bool)

(assert (=> b!178089 m!206497))

(assert (=> b!177893 d!53801))

(declare-fun d!53803 () Bool)

(assert (=> d!53803 (= (apply!142 (+!254 lt!87967 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248))) lt!87966) (get!2028 (getValueByKey!196 (toList!1139 (+!254 lt!87967 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248)))) lt!87966)))))

(declare-fun bs!7311 () Bool)

(assert (= bs!7311 d!53803))

(declare-fun m!206499 () Bool)

(assert (=> bs!7311 m!206499))

(assert (=> bs!7311 m!206499))

(declare-fun m!206501 () Bool)

(assert (=> bs!7311 m!206501))

(assert (=> b!177893 d!53803))

(declare-fun d!53805 () Bool)

(assert (=> d!53805 (= (apply!142 (+!254 lt!87969 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248))) lt!87978) (apply!142 lt!87969 lt!87978))))

(declare-fun lt!88051 () Unit!5429)

(declare-fun choose!958 (ListLongMap!2247 (_ BitVec 64) V!5203 (_ BitVec 64)) Unit!5429)

(assert (=> d!53805 (= lt!88051 (choose!958 lt!87969 lt!87962 (minValue!3501 thiss!1248) lt!87978))))

(declare-fun e!117406 () Bool)

(assert (=> d!53805 e!117406))

(declare-fun res!84388 () Bool)

(assert (=> d!53805 (=> (not res!84388) (not e!117406))))

(assert (=> d!53805 (= res!84388 (contains!1201 lt!87969 lt!87978))))

(assert (=> d!53805 (= (addApplyDifferent!118 lt!87969 lt!87962 (minValue!3501 thiss!1248) lt!87978) lt!88051)))

(declare-fun b!178093 () Bool)

(assert (=> b!178093 (= e!117406 (not (= lt!87978 lt!87962)))))

(assert (= (and d!53805 res!84388) b!178093))

(assert (=> d!53805 m!206383))

(declare-fun m!206503 () Bool)

(assert (=> d!53805 m!206503))

(assert (=> d!53805 m!206359))

(assert (=> d!53805 m!206381))

(declare-fun m!206505 () Bool)

(assert (=> d!53805 m!206505))

(assert (=> d!53805 m!206359))

(assert (=> b!177893 d!53805))

(declare-fun d!53807 () Bool)

(assert (=> d!53807 (= (apply!142 (+!254 lt!87967 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248))) lt!87966) (apply!142 lt!87967 lt!87966))))

(declare-fun lt!88052 () Unit!5429)

(assert (=> d!53807 (= lt!88052 (choose!958 lt!87967 lt!87957 (zeroValue!3501 thiss!1248) lt!87966))))

(declare-fun e!117407 () Bool)

(assert (=> d!53807 e!117407))

(declare-fun res!84389 () Bool)

(assert (=> d!53807 (=> (not res!84389) (not e!117407))))

(assert (=> d!53807 (= res!84389 (contains!1201 lt!87967 lt!87966))))

(assert (=> d!53807 (= (addApplyDifferent!118 lt!87967 lt!87957 (zeroValue!3501 thiss!1248) lt!87966) lt!88052)))

(declare-fun b!178094 () Bool)

(assert (=> b!178094 (= e!117407 (not (= lt!87966 lt!87957)))))

(assert (= (and d!53807 res!84389) b!178094))

(assert (=> d!53807 m!206371))

(declare-fun m!206507 () Bool)

(assert (=> d!53807 m!206507))

(assert (=> d!53807 m!206363))

(assert (=> d!53807 m!206369))

(declare-fun m!206509 () Bool)

(assert (=> d!53807 m!206509))

(assert (=> d!53807 m!206363))

(assert (=> b!177893 d!53807))

(declare-fun d!53809 () Bool)

(declare-fun e!117408 () Bool)

(assert (=> d!53809 e!117408))

(declare-fun res!84391 () Bool)

(assert (=> d!53809 (=> (not res!84391) (not e!117408))))

(declare-fun lt!88055 () ListLongMap!2247)

(assert (=> d!53809 (= res!84391 (contains!1201 lt!88055 (_1!1663 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248)))))))

(declare-fun lt!88056 () List!2278)

(assert (=> d!53809 (= lt!88055 (ListLongMap!2248 lt!88056))))

(declare-fun lt!88053 () Unit!5429)

(declare-fun lt!88054 () Unit!5429)

(assert (=> d!53809 (= lt!88053 lt!88054)))

(assert (=> d!53809 (= (getValueByKey!196 lt!88056 (_1!1663 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248)))) (Some!201 (_2!1663 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248)))))))

(assert (=> d!53809 (= lt!88054 (lemmaContainsTupThenGetReturnValue!105 lt!88056 (_1!1663 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248))) (_2!1663 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248)))))))

(assert (=> d!53809 (= lt!88056 (insertStrictlySorted!107 (toList!1139 lt!87968) (_1!1663 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248))) (_2!1663 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248)))))))

(assert (=> d!53809 (= (+!254 lt!87968 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248))) lt!88055)))

(declare-fun b!178095 () Bool)

(declare-fun res!84390 () Bool)

(assert (=> b!178095 (=> (not res!84390) (not e!117408))))

(assert (=> b!178095 (= res!84390 (= (getValueByKey!196 (toList!1139 lt!88055) (_1!1663 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248)))) (Some!201 (_2!1663 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248))))))))

(declare-fun b!178096 () Bool)

(assert (=> b!178096 (= e!117408 (contains!1203 (toList!1139 lt!88055) (tuple2!3307 lt!87964 (minValue!3501 thiss!1248))))))

(assert (= (and d!53809 res!84391) b!178095))

(assert (= (and b!178095 res!84390) b!178096))

(declare-fun m!206511 () Bool)

(assert (=> d!53809 m!206511))

(declare-fun m!206513 () Bool)

(assert (=> d!53809 m!206513))

(declare-fun m!206515 () Bool)

(assert (=> d!53809 m!206515))

(declare-fun m!206517 () Bool)

(assert (=> d!53809 m!206517))

(declare-fun m!206519 () Bool)

(assert (=> b!178095 m!206519))

(declare-fun m!206521 () Bool)

(assert (=> b!178096 m!206521))

(assert (=> b!177893 d!53809))

(declare-fun d!53811 () Bool)

(assert (=> d!53811 (= (apply!142 lt!87969 lt!87978) (get!2028 (getValueByKey!196 (toList!1139 lt!87969) lt!87978)))))

(declare-fun bs!7312 () Bool)

(assert (= bs!7312 d!53811))

(declare-fun m!206523 () Bool)

(assert (=> bs!7312 m!206523))

(assert (=> bs!7312 m!206523))

(declare-fun m!206525 () Bool)

(assert (=> bs!7312 m!206525))

(assert (=> b!177893 d!53811))

(declare-fun d!53813 () Bool)

(assert (=> d!53813 (= (apply!142 lt!87968 lt!87960) (get!2028 (getValueByKey!196 (toList!1139 lt!87968) lt!87960)))))

(declare-fun bs!7313 () Bool)

(assert (= bs!7313 d!53813))

(declare-fun m!206527 () Bool)

(assert (=> bs!7313 m!206527))

(assert (=> bs!7313 m!206527))

(declare-fun m!206529 () Bool)

(assert (=> bs!7313 m!206529))

(assert (=> b!177893 d!53813))

(declare-fun d!53815 () Bool)

(assert (=> d!53815 (= (apply!142 (+!254 lt!87968 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248))) lt!87960) (apply!142 lt!87968 lt!87960))))

(declare-fun lt!88057 () Unit!5429)

(assert (=> d!53815 (= lt!88057 (choose!958 lt!87968 lt!87964 (minValue!3501 thiss!1248) lt!87960))))

(declare-fun e!117409 () Bool)

(assert (=> d!53815 e!117409))

(declare-fun res!84392 () Bool)

(assert (=> d!53815 (=> (not res!84392) (not e!117409))))

(assert (=> d!53815 (= res!84392 (contains!1201 lt!87968 lt!87960))))

(assert (=> d!53815 (= (addApplyDifferent!118 lt!87968 lt!87964 (minValue!3501 thiss!1248) lt!87960) lt!88057)))

(declare-fun b!178097 () Bool)

(assert (=> b!178097 (= e!117409 (not (= lt!87960 lt!87964)))))

(assert (= (and d!53815 res!84392) b!178097))

(assert (=> d!53815 m!206361))

(declare-fun m!206531 () Bool)

(assert (=> d!53815 m!206531))

(assert (=> d!53815 m!206377))

(assert (=> d!53815 m!206379))

(declare-fun m!206533 () Bool)

(assert (=> d!53815 m!206533))

(assert (=> d!53815 m!206377))

(assert (=> b!177893 d!53815))

(declare-fun d!53817 () Bool)

(assert (=> d!53817 (= (apply!142 lt!87967 lt!87966) (get!2028 (getValueByKey!196 (toList!1139 lt!87967) lt!87966)))))

(declare-fun bs!7314 () Bool)

(assert (= bs!7314 d!53817))

(declare-fun m!206535 () Bool)

(assert (=> bs!7314 m!206535))

(assert (=> bs!7314 m!206535))

(declare-fun m!206537 () Bool)

(assert (=> bs!7314 m!206537))

(assert (=> b!177893 d!53817))

(declare-fun d!53819 () Bool)

(assert (=> d!53819 (contains!1201 (+!254 lt!87959 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248))) lt!87977)))

(declare-fun lt!88060 () Unit!5429)

(declare-fun choose!959 (ListLongMap!2247 (_ BitVec 64) V!5203 (_ BitVec 64)) Unit!5429)

(assert (=> d!53819 (= lt!88060 (choose!959 lt!87959 lt!87974 (zeroValue!3501 thiss!1248) lt!87977))))

(assert (=> d!53819 (contains!1201 lt!87959 lt!87977)))

(assert (=> d!53819 (= (addStillContains!118 lt!87959 lt!87974 (zeroValue!3501 thiss!1248) lt!87977) lt!88060)))

(declare-fun bs!7315 () Bool)

(assert (= bs!7315 d!53819))

(assert (=> bs!7315 m!206373))

(assert (=> bs!7315 m!206373))

(assert (=> bs!7315 m!206385))

(declare-fun m!206539 () Bool)

(assert (=> bs!7315 m!206539))

(declare-fun m!206541 () Bool)

(assert (=> bs!7315 m!206541))

(assert (=> b!177893 d!53819))

(declare-fun d!53821 () Bool)

(assert (=> d!53821 (= (apply!142 (+!254 lt!87968 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248))) lt!87960) (get!2028 (getValueByKey!196 (toList!1139 (+!254 lt!87968 (tuple2!3307 lt!87964 (minValue!3501 thiss!1248)))) lt!87960)))))

(declare-fun bs!7316 () Bool)

(assert (= bs!7316 d!53821))

(declare-fun m!206543 () Bool)

(assert (=> bs!7316 m!206543))

(assert (=> bs!7316 m!206543))

(declare-fun m!206545 () Bool)

(assert (=> bs!7316 m!206545))

(assert (=> b!177893 d!53821))

(declare-fun d!53823 () Bool)

(declare-fun e!117410 () Bool)

(assert (=> d!53823 e!117410))

(declare-fun res!84394 () Bool)

(assert (=> d!53823 (=> (not res!84394) (not e!117410))))

(declare-fun lt!88063 () ListLongMap!2247)

(assert (=> d!53823 (= res!84394 (contains!1201 lt!88063 (_1!1663 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248)))))))

(declare-fun lt!88064 () List!2278)

(assert (=> d!53823 (= lt!88063 (ListLongMap!2248 lt!88064))))

(declare-fun lt!88061 () Unit!5429)

(declare-fun lt!88062 () Unit!5429)

(assert (=> d!53823 (= lt!88061 lt!88062)))

(assert (=> d!53823 (= (getValueByKey!196 lt!88064 (_1!1663 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248)))) (Some!201 (_2!1663 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248)))))))

(assert (=> d!53823 (= lt!88062 (lemmaContainsTupThenGetReturnValue!105 lt!88064 (_1!1663 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248))) (_2!1663 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248)))))))

(assert (=> d!53823 (= lt!88064 (insertStrictlySorted!107 (toList!1139 lt!87967) (_1!1663 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248))) (_2!1663 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248)))))))

(assert (=> d!53823 (= (+!254 lt!87967 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248))) lt!88063)))

(declare-fun b!178099 () Bool)

(declare-fun res!84393 () Bool)

(assert (=> b!178099 (=> (not res!84393) (not e!117410))))

(assert (=> b!178099 (= res!84393 (= (getValueByKey!196 (toList!1139 lt!88063) (_1!1663 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248)))) (Some!201 (_2!1663 (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248))))))))

(declare-fun b!178100 () Bool)

(assert (=> b!178100 (= e!117410 (contains!1203 (toList!1139 lt!88063) (tuple2!3307 lt!87957 (zeroValue!3501 thiss!1248))))))

(assert (= (and d!53823 res!84394) b!178099))

(assert (= (and b!178099 res!84393) b!178100))

(declare-fun m!206547 () Bool)

(assert (=> d!53823 m!206547))

(declare-fun m!206549 () Bool)

(assert (=> d!53823 m!206549))

(declare-fun m!206551 () Bool)

(assert (=> d!53823 m!206551))

(declare-fun m!206553 () Bool)

(assert (=> d!53823 m!206553))

(declare-fun m!206555 () Bool)

(assert (=> b!178099 m!206555))

(declare-fun m!206557 () Bool)

(assert (=> b!178100 m!206557))

(assert (=> b!177893 d!53823))

(declare-fun d!53825 () Bool)

(declare-fun e!117411 () Bool)

(assert (=> d!53825 e!117411))

(declare-fun res!84396 () Bool)

(assert (=> d!53825 (=> (not res!84396) (not e!117411))))

(declare-fun lt!88067 () ListLongMap!2247)

(assert (=> d!53825 (= res!84396 (contains!1201 lt!88067 (_1!1663 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248)))))))

(declare-fun lt!88068 () List!2278)

(assert (=> d!53825 (= lt!88067 (ListLongMap!2248 lt!88068))))

(declare-fun lt!88065 () Unit!5429)

(declare-fun lt!88066 () Unit!5429)

(assert (=> d!53825 (= lt!88065 lt!88066)))

(assert (=> d!53825 (= (getValueByKey!196 lt!88068 (_1!1663 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248)))) (Some!201 (_2!1663 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248)))))))

(assert (=> d!53825 (= lt!88066 (lemmaContainsTupThenGetReturnValue!105 lt!88068 (_1!1663 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248))) (_2!1663 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248)))))))

(assert (=> d!53825 (= lt!88068 (insertStrictlySorted!107 (toList!1139 lt!87969) (_1!1663 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248))) (_2!1663 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248)))))))

(assert (=> d!53825 (= (+!254 lt!87969 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248))) lt!88067)))

(declare-fun b!178101 () Bool)

(declare-fun res!84395 () Bool)

(assert (=> b!178101 (=> (not res!84395) (not e!117411))))

(assert (=> b!178101 (= res!84395 (= (getValueByKey!196 (toList!1139 lt!88067) (_1!1663 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248)))) (Some!201 (_2!1663 (tuple2!3307 lt!87962 (minValue!3501 thiss!1248))))))))

(declare-fun b!178102 () Bool)

(assert (=> b!178102 (= e!117411 (contains!1203 (toList!1139 lt!88067) (tuple2!3307 lt!87962 (minValue!3501 thiss!1248))))))

(assert (= (and d!53825 res!84396) b!178101))

(assert (= (and b!178101 res!84395) b!178102))

(declare-fun m!206559 () Bool)

(assert (=> d!53825 m!206559))

(declare-fun m!206561 () Bool)

(assert (=> d!53825 m!206561))

(declare-fun m!206563 () Bool)

(assert (=> d!53825 m!206563))

(declare-fun m!206565 () Bool)

(assert (=> d!53825 m!206565))

(declare-fun m!206567 () Bool)

(assert (=> b!178101 m!206567))

(declare-fun m!206569 () Bool)

(assert (=> b!178102 m!206569))

(assert (=> b!177893 d!53825))

(declare-fun d!53827 () Bool)

(declare-fun e!117412 () Bool)

(assert (=> d!53827 e!117412))

(declare-fun res!84397 () Bool)

(assert (=> d!53827 (=> res!84397 e!117412)))

(declare-fun lt!88072 () Bool)

(assert (=> d!53827 (= res!84397 (not lt!88072))))

(declare-fun lt!88070 () Bool)

(assert (=> d!53827 (= lt!88072 lt!88070)))

(declare-fun lt!88071 () Unit!5429)

(declare-fun e!117413 () Unit!5429)

(assert (=> d!53827 (= lt!88071 e!117413)))

(declare-fun c!31910 () Bool)

(assert (=> d!53827 (= c!31910 lt!88070)))

(assert (=> d!53827 (= lt!88070 (containsKey!200 (toList!1139 (+!254 lt!87959 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248)))) lt!87977))))

(assert (=> d!53827 (= (contains!1201 (+!254 lt!87959 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248))) lt!87977) lt!88072)))

(declare-fun b!178103 () Bool)

(declare-fun lt!88069 () Unit!5429)

(assert (=> b!178103 (= e!117413 lt!88069)))

(assert (=> b!178103 (= lt!88069 (lemmaContainsKeyImpliesGetValueByKeyDefined!149 (toList!1139 (+!254 lt!87959 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248)))) lt!87977))))

(assert (=> b!178103 (isDefined!150 (getValueByKey!196 (toList!1139 (+!254 lt!87959 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248)))) lt!87977))))

(declare-fun b!178104 () Bool)

(declare-fun Unit!5433 () Unit!5429)

(assert (=> b!178104 (= e!117413 Unit!5433)))

(declare-fun b!178105 () Bool)

(assert (=> b!178105 (= e!117412 (isDefined!150 (getValueByKey!196 (toList!1139 (+!254 lt!87959 (tuple2!3307 lt!87974 (zeroValue!3501 thiss!1248)))) lt!87977)))))

(assert (= (and d!53827 c!31910) b!178103))

(assert (= (and d!53827 (not c!31910)) b!178104))

(assert (= (and d!53827 (not res!84397)) b!178105))

(declare-fun m!206571 () Bool)

(assert (=> d!53827 m!206571))

(declare-fun m!206573 () Bool)

(assert (=> b!178103 m!206573))

(declare-fun m!206575 () Bool)

(assert (=> b!178103 m!206575))

(assert (=> b!178103 m!206575))

(declare-fun m!206577 () Bool)

(assert (=> b!178103 m!206577))

(assert (=> b!178105 m!206575))

(assert (=> b!178105 m!206575))

(assert (=> b!178105 m!206577))

(assert (=> b!177893 d!53827))

(declare-fun d!53829 () Bool)

(declare-fun e!117414 () Bool)

(assert (=> d!53829 e!117414))

(declare-fun res!84399 () Bool)

(assert (=> d!53829 (=> (not res!84399) (not e!117414))))

(declare-fun lt!88075 () ListLongMap!2247)

(assert (=> d!53829 (= res!84399 (contains!1201 lt!88075 (_1!1663 (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))))))))

(declare-fun lt!88076 () List!2278)

(assert (=> d!53829 (= lt!88075 (ListLongMap!2248 lt!88076))))

(declare-fun lt!88073 () Unit!5429)

(declare-fun lt!88074 () Unit!5429)

(assert (=> d!53829 (= lt!88073 lt!88074)))

(assert (=> d!53829 (= (getValueByKey!196 lt!88076 (_1!1663 (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))))) (Some!201 (_2!1663 (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))))))))

(assert (=> d!53829 (= lt!88074 (lemmaContainsTupThenGetReturnValue!105 lt!88076 (_1!1663 (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))) (_2!1663 (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))))))))

(assert (=> d!53829 (= lt!88076 (insertStrictlySorted!107 (toList!1139 (ite c!31857 call!17993 (ite c!31858 call!17996 call!17991))) (_1!1663 (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))) (_2!1663 (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))))))))

(assert (=> d!53829 (= (+!254 (ite c!31857 call!17993 (ite c!31858 call!17996 call!17991)) (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))) lt!88075)))

(declare-fun b!178106 () Bool)

(declare-fun res!84398 () Bool)

(assert (=> b!178106 (=> (not res!84398) (not e!117414))))

(assert (=> b!178106 (= res!84398 (= (getValueByKey!196 (toList!1139 lt!88075) (_1!1663 (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248))))) (Some!201 (_2!1663 (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))))))))

(declare-fun b!178107 () Bool)

(assert (=> b!178107 (= e!117414 (contains!1203 (toList!1139 lt!88075) (ite (or c!31857 c!31858) (tuple2!3307 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3501 thiss!1248)) (tuple2!3307 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3501 thiss!1248)))))))

(assert (= (and d!53829 res!84399) b!178106))

(assert (= (and b!178106 res!84398) b!178107))

(declare-fun m!206579 () Bool)

(assert (=> d!53829 m!206579))

(declare-fun m!206581 () Bool)

(assert (=> d!53829 m!206581))

(declare-fun m!206583 () Bool)

(assert (=> d!53829 m!206583))

(declare-fun m!206585 () Bool)

(assert (=> d!53829 m!206585))

(declare-fun m!206587 () Bool)

(assert (=> b!178106 m!206587))

(declare-fun m!206589 () Bool)

(assert (=> b!178107 m!206589))

(assert (=> bm!17993 d!53829))

(assert (=> b!177902 d!53771))

(declare-fun d!53831 () Bool)

(declare-fun res!84404 () Bool)

(declare-fun e!117419 () Bool)

(assert (=> d!53831 (=> res!84404 e!117419)))

(assert (=> d!53831 (= res!84404 (and ((_ is Cons!2274) (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))) (= (_1!1663 (h!2896 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))))) key!828)))))

(assert (=> d!53831 (= (containsKey!200 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))) key!828) e!117419)))

(declare-fun b!178112 () Bool)

(declare-fun e!117420 () Bool)

(assert (=> b!178112 (= e!117419 e!117420)))

(declare-fun res!84405 () Bool)

(assert (=> b!178112 (=> (not res!84405) (not e!117420))))

(assert (=> b!178112 (= res!84405 (and (or (not ((_ is Cons!2274) (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))))) (bvsle (_1!1663 (h!2896 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))))) key!828)) ((_ is Cons!2274) (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))) (bvslt (_1!1663 (h!2896 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248))))) key!828)))))

(declare-fun b!178113 () Bool)

(assert (=> b!178113 (= e!117420 (containsKey!200 (t!7120 (toList!1139 (getCurrentListMap!786 (_keys!5532 thiss!1248) (_values!3643 thiss!1248) (mask!8608 thiss!1248) (extraKeys!3397 thiss!1248) (zeroValue!3501 thiss!1248) (minValue!3501 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3660 thiss!1248)))) key!828))))

(assert (= (and d!53831 (not res!84404)) b!178112))

(assert (= (and b!178112 res!84405) b!178113))

(declare-fun m!206591 () Bool)

(assert (=> b!178113 m!206591))

(assert (=> d!53757 d!53831))

(assert (=> bm!17992 d!53799))

(declare-fun d!53833 () Bool)

(declare-fun e!117421 () Bool)

(assert (=> d!53833 e!117421))

(declare-fun res!84406 () Bool)

(assert (=> d!53833 (=> res!84406 e!117421)))

(declare-fun lt!88080 () Bool)

(assert (=> d!53833 (= res!84406 (not lt!88080))))

(declare-fun lt!88078 () Bool)

(assert (=> d!53833 (= lt!88080 lt!88078)))

(declare-fun lt!88079 () Unit!5429)

(declare-fun e!117422 () Unit!5429)

(assert (=> d!53833 (= lt!88079 e!117422)))

(declare-fun c!31911 () Bool)

(assert (=> d!53833 (= c!31911 lt!88078)))

(assert (=> d!53833 (= lt!88078 (containsKey!200 (toList!1139 lt!87976) (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!53833 (= (contains!1201 lt!87976 (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)) lt!88080)))

(declare-fun b!178114 () Bool)

(declare-fun lt!88077 () Unit!5429)

(assert (=> b!178114 (= e!117422 lt!88077)))

(assert (=> b!178114 (= lt!88077 (lemmaContainsKeyImpliesGetValueByKeyDefined!149 (toList!1139 lt!87976) (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!178114 (isDefined!150 (getValueByKey!196 (toList!1139 lt!87976) (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178115 () Bool)

(declare-fun Unit!5434 () Unit!5429)

(assert (=> b!178115 (= e!117422 Unit!5434)))

(declare-fun b!178116 () Bool)

(assert (=> b!178116 (= e!117421 (isDefined!150 (getValueByKey!196 (toList!1139 lt!87976) (select (arr!3550 (_keys!5532 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!53833 c!31911) b!178114))

(assert (= (and d!53833 (not c!31911)) b!178115))

(assert (= (and d!53833 (not res!84406)) b!178116))

(assert (=> d!53833 m!206339))

(declare-fun m!206593 () Bool)

(assert (=> d!53833 m!206593))

(assert (=> b!178114 m!206339))

(declare-fun m!206595 () Bool)

(assert (=> b!178114 m!206595))

(assert (=> b!178114 m!206339))

(assert (=> b!178114 m!206455))

(assert (=> b!178114 m!206455))

(declare-fun m!206597 () Bool)

(assert (=> b!178114 m!206597))

(assert (=> b!178116 m!206339))

(assert (=> b!178116 m!206455))

(assert (=> b!178116 m!206455))

(assert (=> b!178116 m!206597))

(assert (=> b!177891 d!53833))

(declare-fun d!53835 () Bool)

(declare-fun e!117423 () Bool)

(assert (=> d!53835 e!117423))

(declare-fun res!84407 () Bool)

(assert (=> d!53835 (=> res!84407 e!117423)))

(declare-fun lt!88084 () Bool)

(assert (=> d!53835 (= res!84407 (not lt!88084))))

(declare-fun lt!88082 () Bool)

(assert (=> d!53835 (= lt!88084 lt!88082)))

(declare-fun lt!88083 () Unit!5429)

(declare-fun e!117424 () Unit!5429)

(assert (=> d!53835 (= lt!88083 e!117424)))

(declare-fun c!31912 () Bool)

(assert (=> d!53835 (= c!31912 lt!88082)))

(assert (=> d!53835 (= lt!88082 (containsKey!200 (toList!1139 lt!87976) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53835 (= (contains!1201 lt!87976 #b0000000000000000000000000000000000000000000000000000000000000000) lt!88084)))

(declare-fun b!178117 () Bool)

(declare-fun lt!88081 () Unit!5429)

(assert (=> b!178117 (= e!117424 lt!88081)))

(assert (=> b!178117 (= lt!88081 (lemmaContainsKeyImpliesGetValueByKeyDefined!149 (toList!1139 lt!87976) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178117 (isDefined!150 (getValueByKey!196 (toList!1139 lt!87976) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!178118 () Bool)

(declare-fun Unit!5435 () Unit!5429)

(assert (=> b!178118 (= e!117424 Unit!5435)))

(declare-fun b!178119 () Bool)

(assert (=> b!178119 (= e!117423 (isDefined!150 (getValueByKey!196 (toList!1139 lt!87976) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53835 c!31912) b!178117))

(assert (= (and d!53835 (not c!31912)) b!178118))

(assert (= (and d!53835 (not res!84407)) b!178119))

(declare-fun m!206599 () Bool)

(assert (=> d!53835 m!206599))

(declare-fun m!206601 () Bool)

(assert (=> b!178117 m!206601))

(declare-fun m!206603 () Bool)

(assert (=> b!178117 m!206603))

(assert (=> b!178117 m!206603))

(declare-fun m!206605 () Bool)

(assert (=> b!178117 m!206605))

(assert (=> b!178119 m!206603))

(assert (=> b!178119 m!206603))

(assert (=> b!178119 m!206605))

(assert (=> bm!17991 d!53835))

(declare-fun d!53837 () Bool)

(declare-fun e!117425 () Bool)

(assert (=> d!53837 e!117425))

(declare-fun res!84408 () Bool)

(assert (=> d!53837 (=> res!84408 e!117425)))

(declare-fun lt!88088 () Bool)

(assert (=> d!53837 (= res!84408 (not lt!88088))))

(declare-fun lt!88086 () Bool)

(assert (=> d!53837 (= lt!88088 lt!88086)))

(declare-fun lt!88087 () Unit!5429)

(declare-fun e!117426 () Unit!5429)

(assert (=> d!53837 (= lt!88087 e!117426)))

(declare-fun c!31913 () Bool)

(assert (=> d!53837 (= c!31913 lt!88086)))

(assert (=> d!53837 (= lt!88086 (containsKey!200 (toList!1139 lt!87976) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!53837 (= (contains!1201 lt!87976 #b1000000000000000000000000000000000000000000000000000000000000000) lt!88088)))

(declare-fun b!178120 () Bool)

(declare-fun lt!88085 () Unit!5429)

(assert (=> b!178120 (= e!117426 lt!88085)))

(assert (=> b!178120 (= lt!88085 (lemmaContainsKeyImpliesGetValueByKeyDefined!149 (toList!1139 lt!87976) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178120 (isDefined!150 (getValueByKey!196 (toList!1139 lt!87976) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!178121 () Bool)

(declare-fun Unit!5436 () Unit!5429)

(assert (=> b!178121 (= e!117426 Unit!5436)))

(declare-fun b!178122 () Bool)

(assert (=> b!178122 (= e!117425 (isDefined!150 (getValueByKey!196 (toList!1139 lt!87976) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!53837 c!31913) b!178120))

(assert (= (and d!53837 (not c!31913)) b!178121))

(assert (= (and d!53837 (not res!84408)) b!178122))

(declare-fun m!206607 () Bool)

(assert (=> d!53837 m!206607))

(declare-fun m!206609 () Bool)

(assert (=> b!178120 m!206609))

(declare-fun m!206611 () Bool)

(assert (=> b!178120 m!206611))

(assert (=> b!178120 m!206611))

(declare-fun m!206613 () Bool)

(assert (=> b!178120 m!206613))

(assert (=> b!178122 m!206611))

(assert (=> b!178122 m!206611))

(assert (=> b!178122 m!206613))

(assert (=> bm!17990 d!53837))

(declare-fun d!53839 () Bool)

(assert (=> d!53839 (= (apply!142 lt!87976 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2028 (getValueByKey!196 (toList!1139 lt!87976) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7317 () Bool)

(assert (= bs!7317 d!53839))

(assert (=> bs!7317 m!206603))

(assert (=> bs!7317 m!206603))

(declare-fun m!206615 () Bool)

(assert (=> bs!7317 m!206615))

(assert (=> b!177899 d!53839))

(declare-fun d!53841 () Bool)

(assert (=> d!53841 (= (apply!142 lt!87976 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2028 (getValueByKey!196 (toList!1139 lt!87976) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7318 () Bool)

(assert (= bs!7318 d!53841))

(assert (=> bs!7318 m!206611))

(assert (=> bs!7318 m!206611))

(declare-fun m!206617 () Bool)

(assert (=> bs!7318 m!206617))

(assert (=> b!177889 d!53841))

(declare-fun mapIsEmpty!7127 () Bool)

(declare-fun mapRes!7127 () Bool)

(assert (=> mapIsEmpty!7127 mapRes!7127))

(declare-fun mapNonEmpty!7127 () Bool)

(declare-fun tp!15902 () Bool)

(declare-fun e!117428 () Bool)

(assert (=> mapNonEmpty!7127 (= mapRes!7127 (and tp!15902 e!117428))))

(declare-fun mapValue!7127 () ValueCell!1740)

(declare-fun mapRest!7127 () (Array (_ BitVec 32) ValueCell!1740))

(declare-fun mapKey!7127 () (_ BitVec 32))

(assert (=> mapNonEmpty!7127 (= mapRest!7126 (store mapRest!7127 mapKey!7127 mapValue!7127))))

(declare-fun b!178124 () Bool)

(declare-fun e!117427 () Bool)

(assert (=> b!178124 (= e!117427 tp_is_empty!4167)))

(declare-fun condMapEmpty!7127 () Bool)

(declare-fun mapDefault!7127 () ValueCell!1740)

(assert (=> mapNonEmpty!7126 (= condMapEmpty!7127 (= mapRest!7126 ((as const (Array (_ BitVec 32) ValueCell!1740)) mapDefault!7127)))))

(assert (=> mapNonEmpty!7126 (= tp!15901 (and e!117427 mapRes!7127))))

(declare-fun b!178123 () Bool)

(assert (=> b!178123 (= e!117428 tp_is_empty!4167)))

(assert (= (and mapNonEmpty!7126 condMapEmpty!7127) mapIsEmpty!7127))

(assert (= (and mapNonEmpty!7126 (not condMapEmpty!7127)) mapNonEmpty!7127))

(assert (= (and mapNonEmpty!7127 ((_ is ValueCellFull!1740) mapValue!7127)) b!178123))

(assert (= (and mapNonEmpty!7126 ((_ is ValueCellFull!1740) mapDefault!7127)) b!178124))

(declare-fun m!206619 () Bool)

(assert (=> mapNonEmpty!7127 m!206619))

(declare-fun b_lambda!7105 () Bool)

(assert (= b_lambda!7101 (or (and b!177785 b_free!4395) b_lambda!7105)))

(declare-fun b_lambda!7107 () Bool)

(assert (= b_lambda!7103 (or (and b!177785 b_free!4395) b_lambda!7107)))

(check-sat (not d!53779) (not b!178105) (not d!53799) (not d!53811) (not b!178077) (not bm!17999) (not d!53789) (not b!178012) (not d!53835) (not d!53809) (not b!178116) (not b!178082) (not b!178045) (not b!178095) (not d!53805) (not d!53797) (not d!53839) (not mapNonEmpty!7127) (not b!177988) (not d!53803) (not b!177943) (not b!178100) (not b!177952) (not b!177979) (not b!177987) (not d!53821) (not b!178081) (not b!178037) (not d!53781) (not b!178120) (not d!53833) (not b!177999) tp_is_empty!4167 (not b!177942) (not b!178114) (not b!178107) (not b!178099) (not d!53841) (not d!53823) (not b!178086) (not b!178103) (not d!53787) (not b!177939) (not d!53829) (not d!53837) (not b!178051) (not b_lambda!7107) (not b!178119) (not b!178089) (not d!53801) (not d!53813) (not b_next!4395) (not b!178023) (not b!178087) (not b!178022) (not b!178106) (not bm!17996) (not d!53827) (not b_lambda!7105) (not b!178076) (not d!53791) (not b_lambda!7099) (not b!178117) (not d!53815) (not b!177953) (not b!178122) b_and!10929 (not b!178080) (not d!53825) (not b!178050) (not b!178113) (not b!178096) (not d!53807) (not d!53775) (not bm!18005) (not b!178101) (not d!53819) (not b!178083) (not bm!18002) (not d!53817) (not b!178088) (not b!178102) (not d!53793))
(check-sat b_and!10929 (not b_next!4395))

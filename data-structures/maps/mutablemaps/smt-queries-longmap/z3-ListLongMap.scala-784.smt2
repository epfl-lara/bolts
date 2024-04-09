; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18628 () Bool)

(assert start!18628)

(declare-fun b!184263 () Bool)

(declare-fun b_free!4545 () Bool)

(declare-fun b_next!4545 () Bool)

(assert (=> b!184263 (= b_free!4545 (not b_next!4545))))

(declare-fun tp!16417 () Bool)

(declare-fun b_and!11147 () Bool)

(assert (=> b!184263 (= tp!16417 b_and!11147)))

(declare-fun b!184255 () Bool)

(declare-fun e!121303 () Bool)

(declare-datatypes ((V!5403 0))(
  ( (V!5404 (val!2203 Int)) )
))
(declare-datatypes ((ValueCell!1815 0))(
  ( (ValueCellFull!1815 (v!4105 V!5403)) (EmptyCell!1815) )
))
(declare-datatypes ((array!7832 0))(
  ( (array!7833 (arr!3700 (Array (_ BitVec 32) (_ BitVec 64))) (size!4014 (_ BitVec 32))) )
))
(declare-datatypes ((array!7834 0))(
  ( (array!7835 (arr!3701 (Array (_ BitVec 32) ValueCell!1815)) (size!4015 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2538 0))(
  ( (LongMapFixedSize!2539 (defaultEntry!3764 Int) (mask!8846 (_ BitVec 32)) (extraKeys!3501 (_ BitVec 32)) (zeroValue!3605 V!5403) (minValue!3605 V!5403) (_size!1318 (_ BitVec 32)) (_keys!5691 array!7832) (_values!3747 array!7834) (_vacant!1318 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2538)

(assert (=> b!184255 (= e!121303 (and (= (size!4015 (_values!3747 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8846 thiss!1248))) (= (size!4014 (_keys!5691 thiss!1248)) (size!4015 (_values!3747 thiss!1248))) (bvsge (mask!8846 thiss!1248) #b00000000000000000000000000000000) (bvslt (extraKeys!3501 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!184256 () Bool)

(declare-fun res!87196 () Bool)

(declare-fun e!121300 () Bool)

(assert (=> b!184256 (=> (not res!87196) (not e!121300))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!184256 (= res!87196 (not (= key!828 (bvneg key!828))))))

(declare-fun b!184257 () Bool)

(declare-fun e!121301 () Bool)

(declare-fun tp_is_empty!4317 () Bool)

(assert (=> b!184257 (= e!121301 tp_is_empty!4317)))

(declare-fun b!184258 () Bool)

(declare-fun res!87195 () Bool)

(assert (=> b!184258 (=> (not res!87195) (not e!121303))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!184258 (= res!87195 (validMask!0 (mask!8846 thiss!1248)))))

(declare-fun mapNonEmpty!7420 () Bool)

(declare-fun mapRes!7420 () Bool)

(declare-fun tp!16416 () Bool)

(assert (=> mapNonEmpty!7420 (= mapRes!7420 (and tp!16416 e!121301))))

(declare-fun mapRest!7420 () (Array (_ BitVec 32) ValueCell!1815))

(declare-fun mapKey!7420 () (_ BitVec 32))

(declare-fun mapValue!7420 () ValueCell!1815)

(assert (=> mapNonEmpty!7420 (= (arr!3701 (_values!3747 thiss!1248)) (store mapRest!7420 mapKey!7420 mapValue!7420))))

(declare-fun b!184260 () Bool)

(assert (=> b!184260 (= e!121300 e!121303)))

(declare-fun res!87198 () Bool)

(assert (=> b!184260 (=> (not res!87198) (not e!121303))))

(declare-datatypes ((SeekEntryResult!637 0))(
  ( (MissingZero!637 (index!4718 (_ BitVec 32))) (Found!637 (index!4719 (_ BitVec 32))) (Intermediate!637 (undefined!1449 Bool) (index!4720 (_ BitVec 32)) (x!20061 (_ BitVec 32))) (Undefined!637) (MissingVacant!637 (index!4721 (_ BitVec 32))) )
))
(declare-fun lt!91152 () SeekEntryResult!637)

(get-info :version)

(assert (=> b!184260 (= res!87198 (and (not ((_ is Undefined!637) lt!91152)) (not ((_ is MissingVacant!637) lt!91152)) (not ((_ is MissingZero!637) lt!91152)) ((_ is Found!637) lt!91152)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7832 (_ BitVec 32)) SeekEntryResult!637)

(assert (=> b!184260 (= lt!91152 (seekEntryOrOpen!0 key!828 (_keys!5691 thiss!1248) (mask!8846 thiss!1248)))))

(declare-fun mapIsEmpty!7420 () Bool)

(assert (=> mapIsEmpty!7420 mapRes!7420))

(declare-fun b!184259 () Bool)

(declare-fun e!121302 () Bool)

(assert (=> b!184259 (= e!121302 tp_is_empty!4317)))

(declare-fun res!87199 () Bool)

(assert (=> start!18628 (=> (not res!87199) (not e!121300))))

(declare-fun valid!1041 (LongMapFixedSize!2538) Bool)

(assert (=> start!18628 (= res!87199 (valid!1041 thiss!1248))))

(assert (=> start!18628 e!121300))

(declare-fun e!121298 () Bool)

(assert (=> start!18628 e!121298))

(assert (=> start!18628 true))

(declare-fun b!184261 () Bool)

(declare-fun res!87197 () Bool)

(assert (=> b!184261 (=> (not res!87197) (not e!121303))))

(declare-datatypes ((tuple2!3426 0))(
  ( (tuple2!3427 (_1!1723 (_ BitVec 64)) (_2!1723 V!5403)) )
))
(declare-datatypes ((List!2365 0))(
  ( (Nil!2362) (Cons!2361 (h!2992 tuple2!3426) (t!7247 List!2365)) )
))
(declare-datatypes ((ListLongMap!2357 0))(
  ( (ListLongMap!2358 (toList!1194 List!2365)) )
))
(declare-fun contains!1278 (ListLongMap!2357 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!837 (array!7832 array!7834 (_ BitVec 32) (_ BitVec 32) V!5403 V!5403 (_ BitVec 32) Int) ListLongMap!2357)

(assert (=> b!184261 (= res!87197 (not (contains!1278 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)) key!828)))))

(declare-fun b!184262 () Bool)

(declare-fun e!121304 () Bool)

(assert (=> b!184262 (= e!121304 (and e!121302 mapRes!7420))))

(declare-fun condMapEmpty!7420 () Bool)

(declare-fun mapDefault!7420 () ValueCell!1815)

(assert (=> b!184262 (= condMapEmpty!7420 (= (arr!3701 (_values!3747 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1815)) mapDefault!7420)))))

(declare-fun array_inv!2385 (array!7832) Bool)

(declare-fun array_inv!2386 (array!7834) Bool)

(assert (=> b!184263 (= e!121298 (and tp!16417 tp_is_empty!4317 (array_inv!2385 (_keys!5691 thiss!1248)) (array_inv!2386 (_values!3747 thiss!1248)) e!121304))))

(assert (= (and start!18628 res!87199) b!184256))

(assert (= (and b!184256 res!87196) b!184260))

(assert (= (and b!184260 res!87198) b!184261))

(assert (= (and b!184261 res!87197) b!184258))

(assert (= (and b!184258 res!87195) b!184255))

(assert (= (and b!184262 condMapEmpty!7420) mapIsEmpty!7420))

(assert (= (and b!184262 (not condMapEmpty!7420)) mapNonEmpty!7420))

(assert (= (and mapNonEmpty!7420 ((_ is ValueCellFull!1815) mapValue!7420)) b!184257))

(assert (= (and b!184262 ((_ is ValueCellFull!1815) mapDefault!7420)) b!184259))

(assert (= b!184263 b!184262))

(assert (= start!18628 b!184263))

(declare-fun m!211675 () Bool)

(assert (=> b!184260 m!211675))

(declare-fun m!211677 () Bool)

(assert (=> start!18628 m!211677))

(declare-fun m!211679 () Bool)

(assert (=> b!184258 m!211679))

(declare-fun m!211681 () Bool)

(assert (=> b!184263 m!211681))

(declare-fun m!211683 () Bool)

(assert (=> b!184263 m!211683))

(declare-fun m!211685 () Bool)

(assert (=> mapNonEmpty!7420 m!211685))

(declare-fun m!211687 () Bool)

(assert (=> b!184261 m!211687))

(assert (=> b!184261 m!211687))

(declare-fun m!211689 () Bool)

(assert (=> b!184261 m!211689))

(check-sat (not b!184258) (not b!184261) (not b!184260) (not b!184263) (not start!18628) (not b_next!4545) b_and!11147 tp_is_empty!4317 (not mapNonEmpty!7420))
(check-sat b_and!11147 (not b_next!4545))
(get-model)

(declare-fun d!54815 () Bool)

(assert (=> d!54815 (= (validMask!0 (mask!8846 thiss!1248)) (and (or (= (mask!8846 thiss!1248) #b00000000000000000000000000000111) (= (mask!8846 thiss!1248) #b00000000000000000000000000001111) (= (mask!8846 thiss!1248) #b00000000000000000000000000011111) (= (mask!8846 thiss!1248) #b00000000000000000000000000111111) (= (mask!8846 thiss!1248) #b00000000000000000000000001111111) (= (mask!8846 thiss!1248) #b00000000000000000000000011111111) (= (mask!8846 thiss!1248) #b00000000000000000000000111111111) (= (mask!8846 thiss!1248) #b00000000000000000000001111111111) (= (mask!8846 thiss!1248) #b00000000000000000000011111111111) (= (mask!8846 thiss!1248) #b00000000000000000000111111111111) (= (mask!8846 thiss!1248) #b00000000000000000001111111111111) (= (mask!8846 thiss!1248) #b00000000000000000011111111111111) (= (mask!8846 thiss!1248) #b00000000000000000111111111111111) (= (mask!8846 thiss!1248) #b00000000000000001111111111111111) (= (mask!8846 thiss!1248) #b00000000000000011111111111111111) (= (mask!8846 thiss!1248) #b00000000000000111111111111111111) (= (mask!8846 thiss!1248) #b00000000000001111111111111111111) (= (mask!8846 thiss!1248) #b00000000000011111111111111111111) (= (mask!8846 thiss!1248) #b00000000000111111111111111111111) (= (mask!8846 thiss!1248) #b00000000001111111111111111111111) (= (mask!8846 thiss!1248) #b00000000011111111111111111111111) (= (mask!8846 thiss!1248) #b00000000111111111111111111111111) (= (mask!8846 thiss!1248) #b00000001111111111111111111111111) (= (mask!8846 thiss!1248) #b00000011111111111111111111111111) (= (mask!8846 thiss!1248) #b00000111111111111111111111111111) (= (mask!8846 thiss!1248) #b00001111111111111111111111111111) (= (mask!8846 thiss!1248) #b00011111111111111111111111111111) (= (mask!8846 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8846 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!184258 d!54815))

(declare-fun d!54817 () Bool)

(declare-fun res!87221 () Bool)

(declare-fun e!121328 () Bool)

(assert (=> d!54817 (=> (not res!87221) (not e!121328))))

(declare-fun simpleValid!177 (LongMapFixedSize!2538) Bool)

(assert (=> d!54817 (= res!87221 (simpleValid!177 thiss!1248))))

(assert (=> d!54817 (= (valid!1041 thiss!1248) e!121328)))

(declare-fun b!184297 () Bool)

(declare-fun res!87222 () Bool)

(assert (=> b!184297 (=> (not res!87222) (not e!121328))))

(declare-fun arrayCountValidKeys!0 (array!7832 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!184297 (= res!87222 (= (arrayCountValidKeys!0 (_keys!5691 thiss!1248) #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))) (_size!1318 thiss!1248)))))

(declare-fun b!184298 () Bool)

(declare-fun res!87223 () Bool)

(assert (=> b!184298 (=> (not res!87223) (not e!121328))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7832 (_ BitVec 32)) Bool)

(assert (=> b!184298 (= res!87223 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5691 thiss!1248) (mask!8846 thiss!1248)))))

(declare-fun b!184299 () Bool)

(declare-datatypes ((List!2367 0))(
  ( (Nil!2364) (Cons!2363 (h!2994 (_ BitVec 64)) (t!7251 List!2367)) )
))
(declare-fun arrayNoDuplicates!0 (array!7832 (_ BitVec 32) List!2367) Bool)

(assert (=> b!184299 (= e!121328 (arrayNoDuplicates!0 (_keys!5691 thiss!1248) #b00000000000000000000000000000000 Nil!2364))))

(assert (= (and d!54817 res!87221) b!184297))

(assert (= (and b!184297 res!87222) b!184298))

(assert (= (and b!184298 res!87223) b!184299))

(declare-fun m!211707 () Bool)

(assert (=> d!54817 m!211707))

(declare-fun m!211709 () Bool)

(assert (=> b!184297 m!211709))

(declare-fun m!211711 () Bool)

(assert (=> b!184298 m!211711))

(declare-fun m!211713 () Bool)

(assert (=> b!184299 m!211713))

(assert (=> start!18628 d!54817))

(declare-fun d!54819 () Bool)

(declare-fun e!121333 () Bool)

(assert (=> d!54819 e!121333))

(declare-fun res!87226 () Bool)

(assert (=> d!54819 (=> res!87226 e!121333)))

(declare-fun lt!91164 () Bool)

(assert (=> d!54819 (= res!87226 (not lt!91164))))

(declare-fun lt!91165 () Bool)

(assert (=> d!54819 (= lt!91164 lt!91165)))

(declare-datatypes ((Unit!5565 0))(
  ( (Unit!5566) )
))
(declare-fun lt!91166 () Unit!5565)

(declare-fun e!121334 () Unit!5565)

(assert (=> d!54819 (= lt!91166 e!121334)))

(declare-fun c!33031 () Bool)

(assert (=> d!54819 (= c!33031 lt!91165)))

(declare-fun containsKey!222 (List!2365 (_ BitVec 64)) Bool)

(assert (=> d!54819 (= lt!91165 (containsKey!222 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828))))

(assert (=> d!54819 (= (contains!1278 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)) key!828) lt!91164)))

(declare-fun b!184306 () Bool)

(declare-fun lt!91167 () Unit!5565)

(assert (=> b!184306 (= e!121334 lt!91167)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!171 (List!2365 (_ BitVec 64)) Unit!5565)

(assert (=> b!184306 (= lt!91167 (lemmaContainsKeyImpliesGetValueByKeyDefined!171 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828))))

(declare-datatypes ((Option!224 0))(
  ( (Some!223 (v!4107 V!5403)) (None!222) )
))
(declare-fun isDefined!172 (Option!224) Bool)

(declare-fun getValueByKey!218 (List!2365 (_ BitVec 64)) Option!224)

(assert (=> b!184306 (isDefined!172 (getValueByKey!218 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828))))

(declare-fun b!184307 () Bool)

(declare-fun Unit!5567 () Unit!5565)

(assert (=> b!184307 (= e!121334 Unit!5567)))

(declare-fun b!184308 () Bool)

(assert (=> b!184308 (= e!121333 (isDefined!172 (getValueByKey!218 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828)))))

(assert (= (and d!54819 c!33031) b!184306))

(assert (= (and d!54819 (not c!33031)) b!184307))

(assert (= (and d!54819 (not res!87226)) b!184308))

(declare-fun m!211715 () Bool)

(assert (=> d!54819 m!211715))

(declare-fun m!211717 () Bool)

(assert (=> b!184306 m!211717))

(declare-fun m!211719 () Bool)

(assert (=> b!184306 m!211719))

(assert (=> b!184306 m!211719))

(declare-fun m!211721 () Bool)

(assert (=> b!184306 m!211721))

(assert (=> b!184308 m!211719))

(assert (=> b!184308 m!211719))

(assert (=> b!184308 m!211721))

(assert (=> b!184261 d!54819))

(declare-fun b!184351 () Bool)

(declare-fun e!121371 () Unit!5565)

(declare-fun lt!91216 () Unit!5565)

(assert (=> b!184351 (= e!121371 lt!91216)))

(declare-fun lt!91221 () ListLongMap!2357)

(declare-fun getCurrentListMapNoExtraKeys!192 (array!7832 array!7834 (_ BitVec 32) (_ BitVec 32) V!5403 V!5403 (_ BitVec 32) Int) ListLongMap!2357)

(assert (=> b!184351 (= lt!91221 (getCurrentListMapNoExtraKeys!192 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))))

(declare-fun lt!91222 () (_ BitVec 64))

(assert (=> b!184351 (= lt!91222 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91233 () (_ BitVec 64))

(assert (=> b!184351 (= lt!91233 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91218 () Unit!5565)

(declare-fun addStillContains!138 (ListLongMap!2357 (_ BitVec 64) V!5403 (_ BitVec 64)) Unit!5565)

(assert (=> b!184351 (= lt!91218 (addStillContains!138 lt!91221 lt!91222 (zeroValue!3605 thiss!1248) lt!91233))))

(declare-fun +!277 (ListLongMap!2357 tuple2!3426) ListLongMap!2357)

(assert (=> b!184351 (contains!1278 (+!277 lt!91221 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248))) lt!91233)))

(declare-fun lt!91215 () Unit!5565)

(assert (=> b!184351 (= lt!91215 lt!91218)))

(declare-fun lt!91225 () ListLongMap!2357)

(assert (=> b!184351 (= lt!91225 (getCurrentListMapNoExtraKeys!192 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))))

(declare-fun lt!91232 () (_ BitVec 64))

(assert (=> b!184351 (= lt!91232 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91228 () (_ BitVec 64))

(assert (=> b!184351 (= lt!91228 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91229 () Unit!5565)

(declare-fun addApplyDifferent!138 (ListLongMap!2357 (_ BitVec 64) V!5403 (_ BitVec 64)) Unit!5565)

(assert (=> b!184351 (= lt!91229 (addApplyDifferent!138 lt!91225 lt!91232 (minValue!3605 thiss!1248) lt!91228))))

(declare-fun apply!162 (ListLongMap!2357 (_ BitVec 64)) V!5403)

(assert (=> b!184351 (= (apply!162 (+!277 lt!91225 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248))) lt!91228) (apply!162 lt!91225 lt!91228))))

(declare-fun lt!91220 () Unit!5565)

(assert (=> b!184351 (= lt!91220 lt!91229)))

(declare-fun lt!91213 () ListLongMap!2357)

(assert (=> b!184351 (= lt!91213 (getCurrentListMapNoExtraKeys!192 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))))

(declare-fun lt!91230 () (_ BitVec 64))

(assert (=> b!184351 (= lt!91230 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91214 () (_ BitVec 64))

(assert (=> b!184351 (= lt!91214 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91231 () Unit!5565)

(assert (=> b!184351 (= lt!91231 (addApplyDifferent!138 lt!91213 lt!91230 (zeroValue!3605 thiss!1248) lt!91214))))

(assert (=> b!184351 (= (apply!162 (+!277 lt!91213 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248))) lt!91214) (apply!162 lt!91213 lt!91214))))

(declare-fun lt!91226 () Unit!5565)

(assert (=> b!184351 (= lt!91226 lt!91231)))

(declare-fun lt!91212 () ListLongMap!2357)

(assert (=> b!184351 (= lt!91212 (getCurrentListMapNoExtraKeys!192 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))))

(declare-fun lt!91223 () (_ BitVec 64))

(assert (=> b!184351 (= lt!91223 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91227 () (_ BitVec 64))

(assert (=> b!184351 (= lt!91227 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184351 (= lt!91216 (addApplyDifferent!138 lt!91212 lt!91223 (minValue!3605 thiss!1248) lt!91227))))

(assert (=> b!184351 (= (apply!162 (+!277 lt!91212 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248))) lt!91227) (apply!162 lt!91212 lt!91227))))

(declare-fun b!184352 () Bool)

(declare-fun Unit!5568 () Unit!5565)

(assert (=> b!184352 (= e!121371 Unit!5568)))

(declare-fun b!184353 () Bool)

(declare-fun e!121370 () ListLongMap!2357)

(declare-fun e!121369 () ListLongMap!2357)

(assert (=> b!184353 (= e!121370 e!121369)))

(declare-fun c!33047 () Bool)

(assert (=> b!184353 (= c!33047 (and (not (= (bvand (extraKeys!3501 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3501 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!184354 () Bool)

(declare-fun call!18613 () ListLongMap!2357)

(assert (=> b!184354 (= e!121369 call!18613)))

(declare-fun b!184355 () Bool)

(declare-fun e!121367 () ListLongMap!2357)

(declare-fun call!18612 () ListLongMap!2357)

(assert (=> b!184355 (= e!121367 call!18612)))

(declare-fun call!18611 () ListLongMap!2357)

(declare-fun bm!18605 () Bool)

(declare-fun call!18608 () ListLongMap!2357)

(declare-fun c!33045 () Bool)

(declare-fun call!18614 () ListLongMap!2357)

(assert (=> bm!18605 (= call!18608 (+!277 (ite c!33045 call!18611 (ite c!33047 call!18614 call!18612)) (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))))))

(declare-fun b!184356 () Bool)

(declare-fun e!121362 () Bool)

(declare-fun lt!91217 () ListLongMap!2357)

(assert (=> b!184356 (= e!121362 (= (apply!162 lt!91217 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3605 thiss!1248)))))

(declare-fun b!184357 () Bool)

(declare-fun e!121361 () Bool)

(declare-fun get!2124 (ValueCell!1815 V!5403) V!5403)

(declare-fun dynLambda!500 (Int (_ BitVec 64)) V!5403)

(assert (=> b!184357 (= e!121361 (= (apply!162 lt!91217 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)) (get!2124 (select (arr!3701 (_values!3747 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!500 (defaultEntry!3764 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!184357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4015 (_values!3747 thiss!1248))))))

(assert (=> b!184357 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(declare-fun bm!18606 () Bool)

(declare-fun call!18610 () Bool)

(assert (=> bm!18606 (= call!18610 (contains!1278 lt!91217 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!18607 () Bool)

(assert (=> bm!18607 (= call!18611 (getCurrentListMapNoExtraKeys!192 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))))

(declare-fun b!184358 () Bool)

(declare-fun e!121373 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!184358 (= e!121373 (validKeyInArray!0 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184359 () Bool)

(declare-fun res!87249 () Bool)

(declare-fun e!121365 () Bool)

(assert (=> b!184359 (=> (not res!87249) (not e!121365))))

(declare-fun e!121368 () Bool)

(assert (=> b!184359 (= res!87249 e!121368)))

(declare-fun res!87251 () Bool)

(assert (=> b!184359 (=> res!87251 e!121368)))

(assert (=> b!184359 (= res!87251 (not e!121373))))

(declare-fun res!87252 () Bool)

(assert (=> b!184359 (=> (not res!87252) (not e!121373))))

(assert (=> b!184359 (= res!87252 (bvslt #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(declare-fun b!184360 () Bool)

(declare-fun e!121372 () Bool)

(declare-fun e!121364 () Bool)

(assert (=> b!184360 (= e!121372 e!121364)))

(declare-fun res!87246 () Bool)

(assert (=> b!184360 (= res!87246 call!18610)))

(assert (=> b!184360 (=> (not res!87246) (not e!121364))))

(declare-fun b!184361 () Bool)

(declare-fun res!87248 () Bool)

(assert (=> b!184361 (=> (not res!87248) (not e!121365))))

(declare-fun e!121366 () Bool)

(assert (=> b!184361 (= res!87248 e!121366)))

(declare-fun c!33049 () Bool)

(assert (=> b!184361 (= c!33049 (not (= (bvand (extraKeys!3501 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!18608 () Bool)

(assert (=> bm!18608 (= call!18613 call!18608)))

(declare-fun b!184362 () Bool)

(assert (=> b!184362 (= e!121365 e!121372)))

(declare-fun c!33044 () Bool)

(assert (=> b!184362 (= c!33044 (not (= (bvand (extraKeys!3501 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!184363 () Bool)

(assert (=> b!184363 (= e!121364 (= (apply!162 lt!91217 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3605 thiss!1248)))))

(declare-fun b!184364 () Bool)

(assert (=> b!184364 (= e!121366 e!121362)))

(declare-fun res!87253 () Bool)

(declare-fun call!18609 () Bool)

(assert (=> b!184364 (= res!87253 call!18609)))

(assert (=> b!184364 (=> (not res!87253) (not e!121362))))

(declare-fun b!184365 () Bool)

(assert (=> b!184365 (= e!121372 (not call!18610))))

(declare-fun b!184366 () Bool)

(assert (=> b!184366 (= e!121368 e!121361)))

(declare-fun res!87250 () Bool)

(assert (=> b!184366 (=> (not res!87250) (not e!121361))))

(assert (=> b!184366 (= res!87250 (contains!1278 lt!91217 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!184366 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(declare-fun d!54821 () Bool)

(assert (=> d!54821 e!121365))

(declare-fun res!87245 () Bool)

(assert (=> d!54821 (=> (not res!87245) (not e!121365))))

(assert (=> d!54821 (= res!87245 (or (bvsge #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))))

(declare-fun lt!91219 () ListLongMap!2357)

(assert (=> d!54821 (= lt!91217 lt!91219)))

(declare-fun lt!91224 () Unit!5565)

(assert (=> d!54821 (= lt!91224 e!121371)))

(declare-fun c!33046 () Bool)

(declare-fun e!121363 () Bool)

(assert (=> d!54821 (= c!33046 e!121363)))

(declare-fun res!87247 () Bool)

(assert (=> d!54821 (=> (not res!87247) (not e!121363))))

(assert (=> d!54821 (= res!87247 (bvslt #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(assert (=> d!54821 (= lt!91219 e!121370)))

(assert (=> d!54821 (= c!33045 (and (not (= (bvand (extraKeys!3501 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3501 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!54821 (validMask!0 (mask!8846 thiss!1248))))

(assert (=> d!54821 (= (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)) lt!91217)))

(declare-fun b!184367 () Bool)

(assert (=> b!184367 (= e!121363 (validKeyInArray!0 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18609 () Bool)

(assert (=> bm!18609 (= call!18612 call!18614)))

(declare-fun bm!18610 () Bool)

(assert (=> bm!18610 (= call!18609 (contains!1278 lt!91217 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!184368 () Bool)

(assert (=> b!184368 (= e!121366 (not call!18609))))

(declare-fun b!184369 () Bool)

(declare-fun c!33048 () Bool)

(assert (=> b!184369 (= c!33048 (and (not (= (bvand (extraKeys!3501 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3501 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!184369 (= e!121369 e!121367)))

(declare-fun b!184370 () Bool)

(assert (=> b!184370 (= e!121370 (+!277 call!18608 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))))))

(declare-fun b!184371 () Bool)

(assert (=> b!184371 (= e!121367 call!18613)))

(declare-fun bm!18611 () Bool)

(assert (=> bm!18611 (= call!18614 call!18611)))

(assert (= (and d!54821 c!33045) b!184370))

(assert (= (and d!54821 (not c!33045)) b!184353))

(assert (= (and b!184353 c!33047) b!184354))

(assert (= (and b!184353 (not c!33047)) b!184369))

(assert (= (and b!184369 c!33048) b!184371))

(assert (= (and b!184369 (not c!33048)) b!184355))

(assert (= (or b!184371 b!184355) bm!18609))

(assert (= (or b!184354 bm!18609) bm!18611))

(assert (= (or b!184354 b!184371) bm!18608))

(assert (= (or b!184370 bm!18611) bm!18607))

(assert (= (or b!184370 bm!18608) bm!18605))

(assert (= (and d!54821 res!87247) b!184367))

(assert (= (and d!54821 c!33046) b!184351))

(assert (= (and d!54821 (not c!33046)) b!184352))

(assert (= (and d!54821 res!87245) b!184359))

(assert (= (and b!184359 res!87252) b!184358))

(assert (= (and b!184359 (not res!87251)) b!184366))

(assert (= (and b!184366 res!87250) b!184357))

(assert (= (and b!184359 res!87249) b!184361))

(assert (= (and b!184361 c!33049) b!184364))

(assert (= (and b!184361 (not c!33049)) b!184368))

(assert (= (and b!184364 res!87253) b!184356))

(assert (= (or b!184364 b!184368) bm!18610))

(assert (= (and b!184361 res!87248) b!184362))

(assert (= (and b!184362 c!33044) b!184360))

(assert (= (and b!184362 (not c!33044)) b!184365))

(assert (= (and b!184360 res!87246) b!184363))

(assert (= (or b!184360 b!184365) bm!18606))

(declare-fun b_lambda!7249 () Bool)

(assert (=> (not b_lambda!7249) (not b!184357)))

(declare-fun t!7250 () Bool)

(declare-fun tb!2843 () Bool)

(assert (=> (and b!184263 (= (defaultEntry!3764 thiss!1248) (defaultEntry!3764 thiss!1248)) t!7250) tb!2843))

(declare-fun result!4791 () Bool)

(assert (=> tb!2843 (= result!4791 tp_is_empty!4317)))

(assert (=> b!184357 t!7250))

(declare-fun b_and!11151 () Bool)

(assert (= b_and!11147 (and (=> t!7250 result!4791) b_and!11151)))

(declare-fun m!211723 () Bool)

(assert (=> b!184357 m!211723))

(declare-fun m!211725 () Bool)

(assert (=> b!184357 m!211725))

(declare-fun m!211727 () Bool)

(assert (=> b!184357 m!211727))

(declare-fun m!211729 () Bool)

(assert (=> b!184357 m!211729))

(declare-fun m!211731 () Bool)

(assert (=> b!184357 m!211731))

(assert (=> b!184357 m!211723))

(assert (=> b!184357 m!211725))

(assert (=> b!184357 m!211729))

(declare-fun m!211733 () Bool)

(assert (=> bm!18610 m!211733))

(declare-fun m!211735 () Bool)

(assert (=> bm!18607 m!211735))

(assert (=> b!184366 m!211729))

(assert (=> b!184366 m!211729))

(declare-fun m!211737 () Bool)

(assert (=> b!184366 m!211737))

(declare-fun m!211739 () Bool)

(assert (=> b!184370 m!211739))

(assert (=> b!184367 m!211729))

(assert (=> b!184367 m!211729))

(declare-fun m!211741 () Bool)

(assert (=> b!184367 m!211741))

(assert (=> d!54821 m!211679))

(assert (=> b!184358 m!211729))

(assert (=> b!184358 m!211729))

(assert (=> b!184358 m!211741))

(declare-fun m!211743 () Bool)

(assert (=> b!184356 m!211743))

(declare-fun m!211745 () Bool)

(assert (=> bm!18606 m!211745))

(declare-fun m!211747 () Bool)

(assert (=> bm!18605 m!211747))

(declare-fun m!211749 () Bool)

(assert (=> b!184363 m!211749))

(assert (=> b!184351 m!211735))

(declare-fun m!211751 () Bool)

(assert (=> b!184351 m!211751))

(declare-fun m!211753 () Bool)

(assert (=> b!184351 m!211753))

(declare-fun m!211755 () Bool)

(assert (=> b!184351 m!211755))

(declare-fun m!211757 () Bool)

(assert (=> b!184351 m!211757))

(declare-fun m!211759 () Bool)

(assert (=> b!184351 m!211759))

(declare-fun m!211761 () Bool)

(assert (=> b!184351 m!211761))

(declare-fun m!211763 () Bool)

(assert (=> b!184351 m!211763))

(assert (=> b!184351 m!211755))

(declare-fun m!211765 () Bool)

(assert (=> b!184351 m!211765))

(declare-fun m!211767 () Bool)

(assert (=> b!184351 m!211767))

(declare-fun m!211769 () Bool)

(assert (=> b!184351 m!211769))

(declare-fun m!211771 () Bool)

(assert (=> b!184351 m!211771))

(declare-fun m!211773 () Bool)

(assert (=> b!184351 m!211773))

(assert (=> b!184351 m!211763))

(declare-fun m!211775 () Bool)

(assert (=> b!184351 m!211775))

(assert (=> b!184351 m!211729))

(assert (=> b!184351 m!211761))

(declare-fun m!211777 () Bool)

(assert (=> b!184351 m!211777))

(assert (=> b!184351 m!211759))

(declare-fun m!211779 () Bool)

(assert (=> b!184351 m!211779))

(assert (=> b!184261 d!54821))

(declare-fun d!54823 () Bool)

(assert (=> d!54823 (= (array_inv!2385 (_keys!5691 thiss!1248)) (bvsge (size!4014 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184263 d!54823))

(declare-fun d!54825 () Bool)

(assert (=> d!54825 (= (array_inv!2386 (_values!3747 thiss!1248)) (bvsge (size!4015 (_values!3747 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184263 d!54825))

(declare-fun b!184386 () Bool)

(declare-fun lt!91242 () SeekEntryResult!637)

(declare-fun e!121381 () SeekEntryResult!637)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7832 (_ BitVec 32)) SeekEntryResult!637)

(assert (=> b!184386 (= e!121381 (seekKeyOrZeroReturnVacant!0 (x!20061 lt!91242) (index!4720 lt!91242) (index!4720 lt!91242) key!828 (_keys!5691 thiss!1248) (mask!8846 thiss!1248)))))

(declare-fun b!184387 () Bool)

(declare-fun c!33058 () Bool)

(declare-fun lt!91241 () (_ BitVec 64))

(assert (=> b!184387 (= c!33058 (= lt!91241 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!121380 () SeekEntryResult!637)

(assert (=> b!184387 (= e!121380 e!121381)))

(declare-fun b!184388 () Bool)

(assert (=> b!184388 (= e!121381 (MissingZero!637 (index!4720 lt!91242)))))

(declare-fun b!184389 () Bool)

(declare-fun e!121382 () SeekEntryResult!637)

(assert (=> b!184389 (= e!121382 e!121380)))

(assert (=> b!184389 (= lt!91241 (select (arr!3700 (_keys!5691 thiss!1248)) (index!4720 lt!91242)))))

(declare-fun c!33056 () Bool)

(assert (=> b!184389 (= c!33056 (= lt!91241 key!828))))

(declare-fun b!184390 () Bool)

(assert (=> b!184390 (= e!121382 Undefined!637)))

(declare-fun d!54827 () Bool)

(declare-fun lt!91240 () SeekEntryResult!637)

(assert (=> d!54827 (and (or ((_ is Undefined!637) lt!91240) (not ((_ is Found!637) lt!91240)) (and (bvsge (index!4719 lt!91240) #b00000000000000000000000000000000) (bvslt (index!4719 lt!91240) (size!4014 (_keys!5691 thiss!1248))))) (or ((_ is Undefined!637) lt!91240) ((_ is Found!637) lt!91240) (not ((_ is MissingZero!637) lt!91240)) (and (bvsge (index!4718 lt!91240) #b00000000000000000000000000000000) (bvslt (index!4718 lt!91240) (size!4014 (_keys!5691 thiss!1248))))) (or ((_ is Undefined!637) lt!91240) ((_ is Found!637) lt!91240) ((_ is MissingZero!637) lt!91240) (not ((_ is MissingVacant!637) lt!91240)) (and (bvsge (index!4721 lt!91240) #b00000000000000000000000000000000) (bvslt (index!4721 lt!91240) (size!4014 (_keys!5691 thiss!1248))))) (or ((_ is Undefined!637) lt!91240) (ite ((_ is Found!637) lt!91240) (= (select (arr!3700 (_keys!5691 thiss!1248)) (index!4719 lt!91240)) key!828) (ite ((_ is MissingZero!637) lt!91240) (= (select (arr!3700 (_keys!5691 thiss!1248)) (index!4718 lt!91240)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!637) lt!91240) (= (select (arr!3700 (_keys!5691 thiss!1248)) (index!4721 lt!91240)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!54827 (= lt!91240 e!121382)))

(declare-fun c!33057 () Bool)

(assert (=> d!54827 (= c!33057 (and ((_ is Intermediate!637) lt!91242) (undefined!1449 lt!91242)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7832 (_ BitVec 32)) SeekEntryResult!637)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!54827 (= lt!91242 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8846 thiss!1248)) key!828 (_keys!5691 thiss!1248) (mask!8846 thiss!1248)))))

(assert (=> d!54827 (validMask!0 (mask!8846 thiss!1248))))

(assert (=> d!54827 (= (seekEntryOrOpen!0 key!828 (_keys!5691 thiss!1248) (mask!8846 thiss!1248)) lt!91240)))

(declare-fun b!184391 () Bool)

(assert (=> b!184391 (= e!121380 (Found!637 (index!4720 lt!91242)))))

(assert (= (and d!54827 c!33057) b!184390))

(assert (= (and d!54827 (not c!33057)) b!184389))

(assert (= (and b!184389 c!33056) b!184391))

(assert (= (and b!184389 (not c!33056)) b!184387))

(assert (= (and b!184387 c!33058) b!184388))

(assert (= (and b!184387 (not c!33058)) b!184386))

(declare-fun m!211781 () Bool)

(assert (=> b!184386 m!211781))

(declare-fun m!211783 () Bool)

(assert (=> b!184389 m!211783))

(declare-fun m!211785 () Bool)

(assert (=> d!54827 m!211785))

(declare-fun m!211787 () Bool)

(assert (=> d!54827 m!211787))

(declare-fun m!211789 () Bool)

(assert (=> d!54827 m!211789))

(declare-fun m!211791 () Bool)

(assert (=> d!54827 m!211791))

(assert (=> d!54827 m!211787))

(declare-fun m!211793 () Bool)

(assert (=> d!54827 m!211793))

(assert (=> d!54827 m!211679))

(assert (=> b!184260 d!54827))

(declare-fun condMapEmpty!7426 () Bool)

(declare-fun mapDefault!7426 () ValueCell!1815)

(assert (=> mapNonEmpty!7420 (= condMapEmpty!7426 (= mapRest!7420 ((as const (Array (_ BitVec 32) ValueCell!1815)) mapDefault!7426)))))

(declare-fun e!121387 () Bool)

(declare-fun mapRes!7426 () Bool)

(assert (=> mapNonEmpty!7420 (= tp!16416 (and e!121387 mapRes!7426))))

(declare-fun mapNonEmpty!7426 () Bool)

(declare-fun tp!16426 () Bool)

(declare-fun e!121388 () Bool)

(assert (=> mapNonEmpty!7426 (= mapRes!7426 (and tp!16426 e!121388))))

(declare-fun mapRest!7426 () (Array (_ BitVec 32) ValueCell!1815))

(declare-fun mapValue!7426 () ValueCell!1815)

(declare-fun mapKey!7426 () (_ BitVec 32))

(assert (=> mapNonEmpty!7426 (= mapRest!7420 (store mapRest!7426 mapKey!7426 mapValue!7426))))

(declare-fun b!184398 () Bool)

(assert (=> b!184398 (= e!121388 tp_is_empty!4317)))

(declare-fun mapIsEmpty!7426 () Bool)

(assert (=> mapIsEmpty!7426 mapRes!7426))

(declare-fun b!184399 () Bool)

(assert (=> b!184399 (= e!121387 tp_is_empty!4317)))

(assert (= (and mapNonEmpty!7420 condMapEmpty!7426) mapIsEmpty!7426))

(assert (= (and mapNonEmpty!7420 (not condMapEmpty!7426)) mapNonEmpty!7426))

(assert (= (and mapNonEmpty!7426 ((_ is ValueCellFull!1815) mapValue!7426)) b!184398))

(assert (= (and mapNonEmpty!7420 ((_ is ValueCellFull!1815) mapDefault!7426)) b!184399))

(declare-fun m!211795 () Bool)

(assert (=> mapNonEmpty!7426 m!211795))

(declare-fun b_lambda!7251 () Bool)

(assert (= b_lambda!7249 (or (and b!184263 b_free!4545) b_lambda!7251)))

(check-sat b_and!11151 (not b!184308) (not d!54821) (not bm!18605) tp_is_empty!4317 (not b!184357) (not d!54817) (not b!184299) (not b!184356) (not b!184386) (not b!184306) (not d!54819) (not b!184297) (not b!184367) (not b!184366) (not bm!18606) (not bm!18607) (not b!184351) (not bm!18610) (not b_lambda!7251) (not b!184363) (not b!184358) (not b!184370) (not b_next!4545) (not d!54827) (not mapNonEmpty!7426) (not b!184298))
(check-sat b_and!11151 (not b_next!4545))
(get-model)

(declare-fun d!54829 () Bool)

(assert (=> d!54829 (= (apply!162 (+!277 lt!91213 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248))) lt!91214) (apply!162 lt!91213 lt!91214))))

(declare-fun lt!91245 () Unit!5565)

(declare-fun choose!984 (ListLongMap!2357 (_ BitVec 64) V!5403 (_ BitVec 64)) Unit!5565)

(assert (=> d!54829 (= lt!91245 (choose!984 lt!91213 lt!91230 (zeroValue!3605 thiss!1248) lt!91214))))

(declare-fun e!121391 () Bool)

(assert (=> d!54829 e!121391))

(declare-fun res!87256 () Bool)

(assert (=> d!54829 (=> (not res!87256) (not e!121391))))

(assert (=> d!54829 (= res!87256 (contains!1278 lt!91213 lt!91214))))

(assert (=> d!54829 (= (addApplyDifferent!138 lt!91213 lt!91230 (zeroValue!3605 thiss!1248) lt!91214) lt!91245)))

(declare-fun b!184403 () Bool)

(assert (=> b!184403 (= e!121391 (not (= lt!91214 lt!91230)))))

(assert (= (and d!54829 res!87256) b!184403))

(assert (=> d!54829 m!211769))

(declare-fun m!211797 () Bool)

(assert (=> d!54829 m!211797))

(assert (=> d!54829 m!211755))

(assert (=> d!54829 m!211757))

(assert (=> d!54829 m!211755))

(declare-fun m!211799 () Bool)

(assert (=> d!54829 m!211799))

(assert (=> b!184351 d!54829))

(declare-fun b!184428 () Bool)

(declare-fun e!121412 () Bool)

(declare-fun e!121407 () Bool)

(assert (=> b!184428 (= e!121412 e!121407)))

(declare-fun c!33069 () Bool)

(declare-fun e!121408 () Bool)

(assert (=> b!184428 (= c!33069 e!121408)))

(declare-fun res!87265 () Bool)

(assert (=> b!184428 (=> (not res!87265) (not e!121408))))

(assert (=> b!184428 (= res!87265 (bvslt #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(declare-fun b!184429 () Bool)

(declare-fun e!121410 () ListLongMap!2357)

(declare-fun e!121406 () ListLongMap!2357)

(assert (=> b!184429 (= e!121410 e!121406)))

(declare-fun c!33068 () Bool)

(assert (=> b!184429 (= c!33068 (validKeyInArray!0 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184430 () Bool)

(assert (=> b!184430 (= e!121410 (ListLongMap!2358 Nil!2362))))

(declare-fun b!184431 () Bool)

(declare-fun call!18617 () ListLongMap!2357)

(assert (=> b!184431 (= e!121406 call!18617)))

(declare-fun b!184432 () Bool)

(declare-fun e!121411 () Bool)

(assert (=> b!184432 (= e!121407 e!121411)))

(assert (=> b!184432 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(declare-fun res!87267 () Bool)

(declare-fun lt!91266 () ListLongMap!2357)

(assert (=> b!184432 (= res!87267 (contains!1278 lt!91266 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!184432 (=> (not res!87267) (not e!121411))))

(declare-fun b!184433 () Bool)

(assert (=> b!184433 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(assert (=> b!184433 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4015 (_values!3747 thiss!1248))))))

(assert (=> b!184433 (= e!121411 (= (apply!162 lt!91266 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)) (get!2124 (select (arr!3701 (_values!3747 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!500 (defaultEntry!3764 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!184434 () Bool)

(declare-fun e!121409 () Bool)

(declare-fun isEmpty!472 (ListLongMap!2357) Bool)

(assert (=> b!184434 (= e!121409 (isEmpty!472 lt!91266))))

(declare-fun b!184435 () Bool)

(declare-fun lt!91260 () Unit!5565)

(declare-fun lt!91261 () Unit!5565)

(assert (=> b!184435 (= lt!91260 lt!91261)))

(declare-fun lt!91262 () V!5403)

(declare-fun lt!91265 () ListLongMap!2357)

(declare-fun lt!91264 () (_ BitVec 64))

(declare-fun lt!91263 () (_ BitVec 64))

(assert (=> b!184435 (not (contains!1278 (+!277 lt!91265 (tuple2!3427 lt!91264 lt!91262)) lt!91263))))

(declare-fun addStillNotContains!89 (ListLongMap!2357 (_ BitVec 64) V!5403 (_ BitVec 64)) Unit!5565)

(assert (=> b!184435 (= lt!91261 (addStillNotContains!89 lt!91265 lt!91264 lt!91262 lt!91263))))

(assert (=> b!184435 (= lt!91263 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!184435 (= lt!91262 (get!2124 (select (arr!3701 (_values!3747 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!500 (defaultEntry!3764 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!184435 (= lt!91264 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!184435 (= lt!91265 call!18617)))

(assert (=> b!184435 (= e!121406 (+!277 call!18617 (tuple2!3427 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000) (get!2124 (select (arr!3701 (_values!3747 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!500 (defaultEntry!3764 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!184436 () Bool)

(assert (=> b!184436 (= e!121409 (= lt!91266 (getCurrentListMapNoExtraKeys!192 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3764 thiss!1248))))))

(declare-fun b!184437 () Bool)

(declare-fun res!87266 () Bool)

(assert (=> b!184437 (=> (not res!87266) (not e!121412))))

(assert (=> b!184437 (= res!87266 (not (contains!1278 lt!91266 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!184438 () Bool)

(assert (=> b!184438 (= e!121408 (validKeyInArray!0 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!184438 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun d!54831 () Bool)

(assert (=> d!54831 e!121412))

(declare-fun res!87268 () Bool)

(assert (=> d!54831 (=> (not res!87268) (not e!121412))))

(assert (=> d!54831 (= res!87268 (not (contains!1278 lt!91266 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!54831 (= lt!91266 e!121410)))

(declare-fun c!33070 () Bool)

(assert (=> d!54831 (= c!33070 (bvsge #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(assert (=> d!54831 (validMask!0 (mask!8846 thiss!1248))))

(assert (=> d!54831 (= (getCurrentListMapNoExtraKeys!192 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)) lt!91266)))

(declare-fun bm!18614 () Bool)

(assert (=> bm!18614 (= call!18617 (getCurrentListMapNoExtraKeys!192 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!3764 thiss!1248)))))

(declare-fun b!184439 () Bool)

(assert (=> b!184439 (= e!121407 e!121409)))

(declare-fun c!33067 () Bool)

(assert (=> b!184439 (= c!33067 (bvslt #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(assert (= (and d!54831 c!33070) b!184430))

(assert (= (and d!54831 (not c!33070)) b!184429))

(assert (= (and b!184429 c!33068) b!184435))

(assert (= (and b!184429 (not c!33068)) b!184431))

(assert (= (or b!184435 b!184431) bm!18614))

(assert (= (and d!54831 res!87268) b!184437))

(assert (= (and b!184437 res!87266) b!184428))

(assert (= (and b!184428 res!87265) b!184438))

(assert (= (and b!184428 c!33069) b!184432))

(assert (= (and b!184428 (not c!33069)) b!184439))

(assert (= (and b!184432 res!87267) b!184433))

(assert (= (and b!184439 c!33067) b!184436))

(assert (= (and b!184439 (not c!33067)) b!184434))

(declare-fun b_lambda!7253 () Bool)

(assert (=> (not b_lambda!7253) (not b!184433)))

(assert (=> b!184433 t!7250))

(declare-fun b_and!11153 () Bool)

(assert (= b_and!11151 (and (=> t!7250 result!4791) b_and!11153)))

(declare-fun b_lambda!7255 () Bool)

(assert (=> (not b_lambda!7255) (not b!184435)))

(assert (=> b!184435 t!7250))

(declare-fun b_and!11155 () Bool)

(assert (= b_and!11153 (and (=> t!7250 result!4791) b_and!11155)))

(assert (=> b!184438 m!211729))

(assert (=> b!184438 m!211729))

(assert (=> b!184438 m!211741))

(assert (=> b!184432 m!211729))

(assert (=> b!184432 m!211729))

(declare-fun m!211801 () Bool)

(assert (=> b!184432 m!211801))

(declare-fun m!211803 () Bool)

(assert (=> d!54831 m!211803))

(assert (=> d!54831 m!211679))

(declare-fun m!211805 () Bool)

(assert (=> b!184437 m!211805))

(declare-fun m!211807 () Bool)

(assert (=> b!184434 m!211807))

(declare-fun m!211809 () Bool)

(assert (=> bm!18614 m!211809))

(assert (=> b!184436 m!211809))

(assert (=> b!184435 m!211723))

(assert (=> b!184435 m!211725))

(assert (=> b!184435 m!211727))

(declare-fun m!211811 () Bool)

(assert (=> b!184435 m!211811))

(declare-fun m!211813 () Bool)

(assert (=> b!184435 m!211813))

(assert (=> b!184435 m!211723))

(assert (=> b!184435 m!211811))

(declare-fun m!211815 () Bool)

(assert (=> b!184435 m!211815))

(assert (=> b!184435 m!211725))

(assert (=> b!184435 m!211729))

(declare-fun m!211817 () Bool)

(assert (=> b!184435 m!211817))

(assert (=> b!184433 m!211723))

(assert (=> b!184433 m!211725))

(assert (=> b!184433 m!211727))

(assert (=> b!184433 m!211729))

(assert (=> b!184433 m!211729))

(declare-fun m!211819 () Bool)

(assert (=> b!184433 m!211819))

(assert (=> b!184433 m!211723))

(assert (=> b!184433 m!211725))

(assert (=> b!184429 m!211729))

(assert (=> b!184429 m!211729))

(assert (=> b!184429 m!211741))

(assert (=> b!184351 d!54831))

(declare-fun d!54833 () Bool)

(declare-fun get!2125 (Option!224) V!5403)

(assert (=> d!54833 (= (apply!162 lt!91213 lt!91214) (get!2125 (getValueByKey!218 (toList!1194 lt!91213) lt!91214)))))

(declare-fun bs!7486 () Bool)

(assert (= bs!7486 d!54833))

(declare-fun m!211821 () Bool)

(assert (=> bs!7486 m!211821))

(assert (=> bs!7486 m!211821))

(declare-fun m!211823 () Bool)

(assert (=> bs!7486 m!211823))

(assert (=> b!184351 d!54833))

(declare-fun d!54835 () Bool)

(declare-fun e!121415 () Bool)

(assert (=> d!54835 e!121415))

(declare-fun res!87274 () Bool)

(assert (=> d!54835 (=> (not res!87274) (not e!121415))))

(declare-fun lt!91275 () ListLongMap!2357)

(assert (=> d!54835 (= res!87274 (contains!1278 lt!91275 (_1!1723 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248)))))))

(declare-fun lt!91278 () List!2365)

(assert (=> d!54835 (= lt!91275 (ListLongMap!2358 lt!91278))))

(declare-fun lt!91277 () Unit!5565)

(declare-fun lt!91276 () Unit!5565)

(assert (=> d!54835 (= lt!91277 lt!91276)))

(assert (=> d!54835 (= (getValueByKey!218 lt!91278 (_1!1723 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248)))) (Some!223 (_2!1723 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!116 (List!2365 (_ BitVec 64) V!5403) Unit!5565)

(assert (=> d!54835 (= lt!91276 (lemmaContainsTupThenGetReturnValue!116 lt!91278 (_1!1723 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248))) (_2!1723 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248)))))))

(declare-fun insertStrictlySorted!118 (List!2365 (_ BitVec 64) V!5403) List!2365)

(assert (=> d!54835 (= lt!91278 (insertStrictlySorted!118 (toList!1194 lt!91213) (_1!1723 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248))) (_2!1723 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248)))))))

(assert (=> d!54835 (= (+!277 lt!91213 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248))) lt!91275)))

(declare-fun b!184444 () Bool)

(declare-fun res!87273 () Bool)

(assert (=> b!184444 (=> (not res!87273) (not e!121415))))

(assert (=> b!184444 (= res!87273 (= (getValueByKey!218 (toList!1194 lt!91275) (_1!1723 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248)))) (Some!223 (_2!1723 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248))))))))

(declare-fun b!184445 () Bool)

(declare-fun contains!1280 (List!2365 tuple2!3426) Bool)

(assert (=> b!184445 (= e!121415 (contains!1280 (toList!1194 lt!91275) (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248))))))

(assert (= (and d!54835 res!87274) b!184444))

(assert (= (and b!184444 res!87273) b!184445))

(declare-fun m!211825 () Bool)

(assert (=> d!54835 m!211825))

(declare-fun m!211827 () Bool)

(assert (=> d!54835 m!211827))

(declare-fun m!211829 () Bool)

(assert (=> d!54835 m!211829))

(declare-fun m!211831 () Bool)

(assert (=> d!54835 m!211831))

(declare-fun m!211833 () Bool)

(assert (=> b!184444 m!211833))

(declare-fun m!211835 () Bool)

(assert (=> b!184445 m!211835))

(assert (=> b!184351 d!54835))

(declare-fun d!54837 () Bool)

(declare-fun e!121416 () Bool)

(assert (=> d!54837 e!121416))

(declare-fun res!87275 () Bool)

(assert (=> d!54837 (=> res!87275 e!121416)))

(declare-fun lt!91279 () Bool)

(assert (=> d!54837 (= res!87275 (not lt!91279))))

(declare-fun lt!91280 () Bool)

(assert (=> d!54837 (= lt!91279 lt!91280)))

(declare-fun lt!91281 () Unit!5565)

(declare-fun e!121417 () Unit!5565)

(assert (=> d!54837 (= lt!91281 e!121417)))

(declare-fun c!33071 () Bool)

(assert (=> d!54837 (= c!33071 lt!91280)))

(assert (=> d!54837 (= lt!91280 (containsKey!222 (toList!1194 (+!277 lt!91221 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248)))) lt!91233))))

(assert (=> d!54837 (= (contains!1278 (+!277 lt!91221 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248))) lt!91233) lt!91279)))

(declare-fun b!184446 () Bool)

(declare-fun lt!91282 () Unit!5565)

(assert (=> b!184446 (= e!121417 lt!91282)))

(assert (=> b!184446 (= lt!91282 (lemmaContainsKeyImpliesGetValueByKeyDefined!171 (toList!1194 (+!277 lt!91221 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248)))) lt!91233))))

(assert (=> b!184446 (isDefined!172 (getValueByKey!218 (toList!1194 (+!277 lt!91221 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248)))) lt!91233))))

(declare-fun b!184447 () Bool)

(declare-fun Unit!5569 () Unit!5565)

(assert (=> b!184447 (= e!121417 Unit!5569)))

(declare-fun b!184448 () Bool)

(assert (=> b!184448 (= e!121416 (isDefined!172 (getValueByKey!218 (toList!1194 (+!277 lt!91221 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248)))) lt!91233)))))

(assert (= (and d!54837 c!33071) b!184446))

(assert (= (and d!54837 (not c!33071)) b!184447))

(assert (= (and d!54837 (not res!87275)) b!184448))

(declare-fun m!211837 () Bool)

(assert (=> d!54837 m!211837))

(declare-fun m!211839 () Bool)

(assert (=> b!184446 m!211839))

(declare-fun m!211841 () Bool)

(assert (=> b!184446 m!211841))

(assert (=> b!184446 m!211841))

(declare-fun m!211843 () Bool)

(assert (=> b!184446 m!211843))

(assert (=> b!184448 m!211841))

(assert (=> b!184448 m!211841))

(assert (=> b!184448 m!211843))

(assert (=> b!184351 d!54837))

(declare-fun d!54839 () Bool)

(assert (=> d!54839 (= (apply!162 (+!277 lt!91212 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248))) lt!91227) (get!2125 (getValueByKey!218 (toList!1194 (+!277 lt!91212 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248)))) lt!91227)))))

(declare-fun bs!7487 () Bool)

(assert (= bs!7487 d!54839))

(declare-fun m!211845 () Bool)

(assert (=> bs!7487 m!211845))

(assert (=> bs!7487 m!211845))

(declare-fun m!211847 () Bool)

(assert (=> bs!7487 m!211847))

(assert (=> b!184351 d!54839))

(declare-fun d!54841 () Bool)

(declare-fun e!121418 () Bool)

(assert (=> d!54841 e!121418))

(declare-fun res!87277 () Bool)

(assert (=> d!54841 (=> (not res!87277) (not e!121418))))

(declare-fun lt!91283 () ListLongMap!2357)

(assert (=> d!54841 (= res!87277 (contains!1278 lt!91283 (_1!1723 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248)))))))

(declare-fun lt!91286 () List!2365)

(assert (=> d!54841 (= lt!91283 (ListLongMap!2358 lt!91286))))

(declare-fun lt!91285 () Unit!5565)

(declare-fun lt!91284 () Unit!5565)

(assert (=> d!54841 (= lt!91285 lt!91284)))

(assert (=> d!54841 (= (getValueByKey!218 lt!91286 (_1!1723 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248)))) (Some!223 (_2!1723 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248)))))))

(assert (=> d!54841 (= lt!91284 (lemmaContainsTupThenGetReturnValue!116 lt!91286 (_1!1723 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248))) (_2!1723 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248)))))))

(assert (=> d!54841 (= lt!91286 (insertStrictlySorted!118 (toList!1194 lt!91221) (_1!1723 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248))) (_2!1723 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248)))))))

(assert (=> d!54841 (= (+!277 lt!91221 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248))) lt!91283)))

(declare-fun b!184449 () Bool)

(declare-fun res!87276 () Bool)

(assert (=> b!184449 (=> (not res!87276) (not e!121418))))

(assert (=> b!184449 (= res!87276 (= (getValueByKey!218 (toList!1194 lt!91283) (_1!1723 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248)))) (Some!223 (_2!1723 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248))))))))

(declare-fun b!184450 () Bool)

(assert (=> b!184450 (= e!121418 (contains!1280 (toList!1194 lt!91283) (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248))))))

(assert (= (and d!54841 res!87277) b!184449))

(assert (= (and b!184449 res!87276) b!184450))

(declare-fun m!211849 () Bool)

(assert (=> d!54841 m!211849))

(declare-fun m!211851 () Bool)

(assert (=> d!54841 m!211851))

(declare-fun m!211853 () Bool)

(assert (=> d!54841 m!211853))

(declare-fun m!211855 () Bool)

(assert (=> d!54841 m!211855))

(declare-fun m!211857 () Bool)

(assert (=> b!184449 m!211857))

(declare-fun m!211859 () Bool)

(assert (=> b!184450 m!211859))

(assert (=> b!184351 d!54841))

(declare-fun d!54843 () Bool)

(assert (=> d!54843 (= (apply!162 (+!277 lt!91213 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248))) lt!91214) (get!2125 (getValueByKey!218 (toList!1194 (+!277 lt!91213 (tuple2!3427 lt!91230 (zeroValue!3605 thiss!1248)))) lt!91214)))))

(declare-fun bs!7488 () Bool)

(assert (= bs!7488 d!54843))

(declare-fun m!211861 () Bool)

(assert (=> bs!7488 m!211861))

(assert (=> bs!7488 m!211861))

(declare-fun m!211863 () Bool)

(assert (=> bs!7488 m!211863))

(assert (=> b!184351 d!54843))

(declare-fun d!54845 () Bool)

(assert (=> d!54845 (contains!1278 (+!277 lt!91221 (tuple2!3427 lt!91222 (zeroValue!3605 thiss!1248))) lt!91233)))

(declare-fun lt!91289 () Unit!5565)

(declare-fun choose!985 (ListLongMap!2357 (_ BitVec 64) V!5403 (_ BitVec 64)) Unit!5565)

(assert (=> d!54845 (= lt!91289 (choose!985 lt!91221 lt!91222 (zeroValue!3605 thiss!1248) lt!91233))))

(assert (=> d!54845 (contains!1278 lt!91221 lt!91233)))

(assert (=> d!54845 (= (addStillContains!138 lt!91221 lt!91222 (zeroValue!3605 thiss!1248) lt!91233) lt!91289)))

(declare-fun bs!7489 () Bool)

(assert (= bs!7489 d!54845))

(assert (=> bs!7489 m!211761))

(assert (=> bs!7489 m!211761))

(assert (=> bs!7489 m!211777))

(declare-fun m!211865 () Bool)

(assert (=> bs!7489 m!211865))

(declare-fun m!211867 () Bool)

(assert (=> bs!7489 m!211867))

(assert (=> b!184351 d!54845))

(declare-fun d!54847 () Bool)

(assert (=> d!54847 (= (apply!162 (+!277 lt!91212 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248))) lt!91227) (apply!162 lt!91212 lt!91227))))

(declare-fun lt!91290 () Unit!5565)

(assert (=> d!54847 (= lt!91290 (choose!984 lt!91212 lt!91223 (minValue!3605 thiss!1248) lt!91227))))

(declare-fun e!121419 () Bool)

(assert (=> d!54847 e!121419))

(declare-fun res!87278 () Bool)

(assert (=> d!54847 (=> (not res!87278) (not e!121419))))

(assert (=> d!54847 (= res!87278 (contains!1278 lt!91212 lt!91227))))

(assert (=> d!54847 (= (addApplyDifferent!138 lt!91212 lt!91223 (minValue!3605 thiss!1248) lt!91227) lt!91290)))

(declare-fun b!184452 () Bool)

(assert (=> b!184452 (= e!121419 (not (= lt!91227 lt!91223)))))

(assert (= (and d!54847 res!87278) b!184452))

(assert (=> d!54847 m!211767))

(declare-fun m!211869 () Bool)

(assert (=> d!54847 m!211869))

(assert (=> d!54847 m!211759))

(assert (=> d!54847 m!211779))

(assert (=> d!54847 m!211759))

(declare-fun m!211871 () Bool)

(assert (=> d!54847 m!211871))

(assert (=> b!184351 d!54847))

(declare-fun d!54849 () Bool)

(assert (=> d!54849 (= (apply!162 (+!277 lt!91225 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248))) lt!91228) (apply!162 lt!91225 lt!91228))))

(declare-fun lt!91291 () Unit!5565)

(assert (=> d!54849 (= lt!91291 (choose!984 lt!91225 lt!91232 (minValue!3605 thiss!1248) lt!91228))))

(declare-fun e!121420 () Bool)

(assert (=> d!54849 e!121420))

(declare-fun res!87279 () Bool)

(assert (=> d!54849 (=> (not res!87279) (not e!121420))))

(assert (=> d!54849 (= res!87279 (contains!1278 lt!91225 lt!91228))))

(assert (=> d!54849 (= (addApplyDifferent!138 lt!91225 lt!91232 (minValue!3605 thiss!1248) lt!91228) lt!91291)))

(declare-fun b!184453 () Bool)

(assert (=> b!184453 (= e!121420 (not (= lt!91228 lt!91232)))))

(assert (= (and d!54849 res!87279) b!184453))

(assert (=> d!54849 m!211771))

(declare-fun m!211873 () Bool)

(assert (=> d!54849 m!211873))

(assert (=> d!54849 m!211763))

(assert (=> d!54849 m!211775))

(assert (=> d!54849 m!211763))

(declare-fun m!211875 () Bool)

(assert (=> d!54849 m!211875))

(assert (=> b!184351 d!54849))

(declare-fun d!54851 () Bool)

(assert (=> d!54851 (= (apply!162 lt!91212 lt!91227) (get!2125 (getValueByKey!218 (toList!1194 lt!91212) lt!91227)))))

(declare-fun bs!7490 () Bool)

(assert (= bs!7490 d!54851))

(declare-fun m!211877 () Bool)

(assert (=> bs!7490 m!211877))

(assert (=> bs!7490 m!211877))

(declare-fun m!211879 () Bool)

(assert (=> bs!7490 m!211879))

(assert (=> b!184351 d!54851))

(declare-fun d!54853 () Bool)

(declare-fun e!121421 () Bool)

(assert (=> d!54853 e!121421))

(declare-fun res!87281 () Bool)

(assert (=> d!54853 (=> (not res!87281) (not e!121421))))

(declare-fun lt!91292 () ListLongMap!2357)

(assert (=> d!54853 (= res!87281 (contains!1278 lt!91292 (_1!1723 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248)))))))

(declare-fun lt!91295 () List!2365)

(assert (=> d!54853 (= lt!91292 (ListLongMap!2358 lt!91295))))

(declare-fun lt!91294 () Unit!5565)

(declare-fun lt!91293 () Unit!5565)

(assert (=> d!54853 (= lt!91294 lt!91293)))

(assert (=> d!54853 (= (getValueByKey!218 lt!91295 (_1!1723 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248)))) (Some!223 (_2!1723 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248)))))))

(assert (=> d!54853 (= lt!91293 (lemmaContainsTupThenGetReturnValue!116 lt!91295 (_1!1723 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248))) (_2!1723 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248)))))))

(assert (=> d!54853 (= lt!91295 (insertStrictlySorted!118 (toList!1194 lt!91225) (_1!1723 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248))) (_2!1723 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248)))))))

(assert (=> d!54853 (= (+!277 lt!91225 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248))) lt!91292)))

(declare-fun b!184454 () Bool)

(declare-fun res!87280 () Bool)

(assert (=> b!184454 (=> (not res!87280) (not e!121421))))

(assert (=> b!184454 (= res!87280 (= (getValueByKey!218 (toList!1194 lt!91292) (_1!1723 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248)))) (Some!223 (_2!1723 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248))))))))

(declare-fun b!184455 () Bool)

(assert (=> b!184455 (= e!121421 (contains!1280 (toList!1194 lt!91292) (tuple2!3427 lt!91232 (minValue!3605 thiss!1248))))))

(assert (= (and d!54853 res!87281) b!184454))

(assert (= (and b!184454 res!87280) b!184455))

(declare-fun m!211881 () Bool)

(assert (=> d!54853 m!211881))

(declare-fun m!211883 () Bool)

(assert (=> d!54853 m!211883))

(declare-fun m!211885 () Bool)

(assert (=> d!54853 m!211885))

(declare-fun m!211887 () Bool)

(assert (=> d!54853 m!211887))

(declare-fun m!211889 () Bool)

(assert (=> b!184454 m!211889))

(declare-fun m!211891 () Bool)

(assert (=> b!184455 m!211891))

(assert (=> b!184351 d!54853))

(declare-fun d!54855 () Bool)

(assert (=> d!54855 (= (apply!162 lt!91225 lt!91228) (get!2125 (getValueByKey!218 (toList!1194 lt!91225) lt!91228)))))

(declare-fun bs!7491 () Bool)

(assert (= bs!7491 d!54855))

(declare-fun m!211893 () Bool)

(assert (=> bs!7491 m!211893))

(assert (=> bs!7491 m!211893))

(declare-fun m!211895 () Bool)

(assert (=> bs!7491 m!211895))

(assert (=> b!184351 d!54855))

(declare-fun d!54857 () Bool)

(declare-fun e!121422 () Bool)

(assert (=> d!54857 e!121422))

(declare-fun res!87283 () Bool)

(assert (=> d!54857 (=> (not res!87283) (not e!121422))))

(declare-fun lt!91296 () ListLongMap!2357)

(assert (=> d!54857 (= res!87283 (contains!1278 lt!91296 (_1!1723 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248)))))))

(declare-fun lt!91299 () List!2365)

(assert (=> d!54857 (= lt!91296 (ListLongMap!2358 lt!91299))))

(declare-fun lt!91298 () Unit!5565)

(declare-fun lt!91297 () Unit!5565)

(assert (=> d!54857 (= lt!91298 lt!91297)))

(assert (=> d!54857 (= (getValueByKey!218 lt!91299 (_1!1723 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248)))) (Some!223 (_2!1723 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248)))))))

(assert (=> d!54857 (= lt!91297 (lemmaContainsTupThenGetReturnValue!116 lt!91299 (_1!1723 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248))) (_2!1723 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248)))))))

(assert (=> d!54857 (= lt!91299 (insertStrictlySorted!118 (toList!1194 lt!91212) (_1!1723 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248))) (_2!1723 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248)))))))

(assert (=> d!54857 (= (+!277 lt!91212 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248))) lt!91296)))

(declare-fun b!184456 () Bool)

(declare-fun res!87282 () Bool)

(assert (=> b!184456 (=> (not res!87282) (not e!121422))))

(assert (=> b!184456 (= res!87282 (= (getValueByKey!218 (toList!1194 lt!91296) (_1!1723 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248)))) (Some!223 (_2!1723 (tuple2!3427 lt!91223 (minValue!3605 thiss!1248))))))))

(declare-fun b!184457 () Bool)

(assert (=> b!184457 (= e!121422 (contains!1280 (toList!1194 lt!91296) (tuple2!3427 lt!91223 (minValue!3605 thiss!1248))))))

(assert (= (and d!54857 res!87283) b!184456))

(assert (= (and b!184456 res!87282) b!184457))

(declare-fun m!211897 () Bool)

(assert (=> d!54857 m!211897))

(declare-fun m!211899 () Bool)

(assert (=> d!54857 m!211899))

(declare-fun m!211901 () Bool)

(assert (=> d!54857 m!211901))

(declare-fun m!211903 () Bool)

(assert (=> d!54857 m!211903))

(declare-fun m!211905 () Bool)

(assert (=> b!184456 m!211905))

(declare-fun m!211907 () Bool)

(assert (=> b!184457 m!211907))

(assert (=> b!184351 d!54857))

(declare-fun d!54859 () Bool)

(assert (=> d!54859 (= (apply!162 (+!277 lt!91225 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248))) lt!91228) (get!2125 (getValueByKey!218 (toList!1194 (+!277 lt!91225 (tuple2!3427 lt!91232 (minValue!3605 thiss!1248)))) lt!91228)))))

(declare-fun bs!7492 () Bool)

(assert (= bs!7492 d!54859))

(declare-fun m!211909 () Bool)

(assert (=> bs!7492 m!211909))

(assert (=> bs!7492 m!211909))

(declare-fun m!211911 () Bool)

(assert (=> bs!7492 m!211911))

(assert (=> b!184351 d!54859))

(declare-fun d!54861 () Bool)

(assert (=> d!54861 (= (validKeyInArray!0 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)) (and (not (= (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!184358 d!54861))

(declare-fun d!54863 () Bool)

(declare-fun lt!91302 () (_ BitVec 32))

(assert (=> d!54863 (and (bvsge lt!91302 #b00000000000000000000000000000000) (bvsle lt!91302 (bvsub (size!4014 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!121427 () (_ BitVec 32))

(assert (=> d!54863 (= lt!91302 e!121427)))

(declare-fun c!33077 () Bool)

(assert (=> d!54863 (= c!33077 (bvsge #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(assert (=> d!54863 (and (bvsle #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!4014 (_keys!5691 thiss!1248)) (size!4014 (_keys!5691 thiss!1248))))))

(assert (=> d!54863 (= (arrayCountValidKeys!0 (_keys!5691 thiss!1248) #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))) lt!91302)))

(declare-fun b!184466 () Bool)

(declare-fun e!121428 () (_ BitVec 32))

(declare-fun call!18620 () (_ BitVec 32))

(assert (=> b!184466 (= e!121428 (bvadd #b00000000000000000000000000000001 call!18620))))

(declare-fun b!184467 () Bool)

(assert (=> b!184467 (= e!121427 e!121428)))

(declare-fun c!33076 () Bool)

(assert (=> b!184467 (= c!33076 (validKeyInArray!0 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184468 () Bool)

(assert (=> b!184468 (= e!121428 call!18620)))

(declare-fun bm!18617 () Bool)

(assert (=> bm!18617 (= call!18620 (arrayCountValidKeys!0 (_keys!5691 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!4014 (_keys!5691 thiss!1248))))))

(declare-fun b!184469 () Bool)

(assert (=> b!184469 (= e!121427 #b00000000000000000000000000000000)))

(assert (= (and d!54863 c!33077) b!184469))

(assert (= (and d!54863 (not c!33077)) b!184467))

(assert (= (and b!184467 c!33076) b!184466))

(assert (= (and b!184467 (not c!33076)) b!184468))

(assert (= (or b!184466 b!184468) bm!18617))

(assert (=> b!184467 m!211729))

(assert (=> b!184467 m!211729))

(assert (=> b!184467 m!211741))

(declare-fun m!211913 () Bool)

(assert (=> bm!18617 m!211913))

(assert (=> b!184297 d!54863))

(declare-fun d!54865 () Bool)

(declare-fun e!121429 () Bool)

(assert (=> d!54865 e!121429))

(declare-fun res!87284 () Bool)

(assert (=> d!54865 (=> res!87284 e!121429)))

(declare-fun lt!91303 () Bool)

(assert (=> d!54865 (= res!87284 (not lt!91303))))

(declare-fun lt!91304 () Bool)

(assert (=> d!54865 (= lt!91303 lt!91304)))

(declare-fun lt!91305 () Unit!5565)

(declare-fun e!121430 () Unit!5565)

(assert (=> d!54865 (= lt!91305 e!121430)))

(declare-fun c!33078 () Bool)

(assert (=> d!54865 (= c!33078 lt!91304)))

(assert (=> d!54865 (= lt!91304 (containsKey!222 (toList!1194 lt!91217) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54865 (= (contains!1278 lt!91217 #b0000000000000000000000000000000000000000000000000000000000000000) lt!91303)))

(declare-fun b!184470 () Bool)

(declare-fun lt!91306 () Unit!5565)

(assert (=> b!184470 (= e!121430 lt!91306)))

(assert (=> b!184470 (= lt!91306 (lemmaContainsKeyImpliesGetValueByKeyDefined!171 (toList!1194 lt!91217) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!184470 (isDefined!172 (getValueByKey!218 (toList!1194 lt!91217) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!184471 () Bool)

(declare-fun Unit!5570 () Unit!5565)

(assert (=> b!184471 (= e!121430 Unit!5570)))

(declare-fun b!184472 () Bool)

(assert (=> b!184472 (= e!121429 (isDefined!172 (getValueByKey!218 (toList!1194 lt!91217) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54865 c!33078) b!184470))

(assert (= (and d!54865 (not c!33078)) b!184471))

(assert (= (and d!54865 (not res!87284)) b!184472))

(declare-fun m!211915 () Bool)

(assert (=> d!54865 m!211915))

(declare-fun m!211917 () Bool)

(assert (=> b!184470 m!211917))

(declare-fun m!211919 () Bool)

(assert (=> b!184470 m!211919))

(assert (=> b!184470 m!211919))

(declare-fun m!211921 () Bool)

(assert (=> b!184470 m!211921))

(assert (=> b!184472 m!211919))

(assert (=> b!184472 m!211919))

(assert (=> b!184472 m!211921))

(assert (=> bm!18610 d!54865))

(declare-fun e!121438 () SeekEntryResult!637)

(declare-fun b!184485 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!184485 (= e!121438 (seekKeyOrZeroReturnVacant!0 (bvadd (x!20061 lt!91242) #b00000000000000000000000000000001) (nextIndex!0 (index!4720 lt!91242) (x!20061 lt!91242) (mask!8846 thiss!1248)) (index!4720 lt!91242) key!828 (_keys!5691 thiss!1248) (mask!8846 thiss!1248)))))

(declare-fun lt!91312 () SeekEntryResult!637)

(declare-fun d!54867 () Bool)

(assert (=> d!54867 (and (or ((_ is Undefined!637) lt!91312) (not ((_ is Found!637) lt!91312)) (and (bvsge (index!4719 lt!91312) #b00000000000000000000000000000000) (bvslt (index!4719 lt!91312) (size!4014 (_keys!5691 thiss!1248))))) (or ((_ is Undefined!637) lt!91312) ((_ is Found!637) lt!91312) (not ((_ is MissingVacant!637) lt!91312)) (not (= (index!4721 lt!91312) (index!4720 lt!91242))) (and (bvsge (index!4721 lt!91312) #b00000000000000000000000000000000) (bvslt (index!4721 lt!91312) (size!4014 (_keys!5691 thiss!1248))))) (or ((_ is Undefined!637) lt!91312) (ite ((_ is Found!637) lt!91312) (= (select (arr!3700 (_keys!5691 thiss!1248)) (index!4719 lt!91312)) key!828) (and ((_ is MissingVacant!637) lt!91312) (= (index!4721 lt!91312) (index!4720 lt!91242)) (= (select (arr!3700 (_keys!5691 thiss!1248)) (index!4721 lt!91312)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!121439 () SeekEntryResult!637)

(assert (=> d!54867 (= lt!91312 e!121439)))

(declare-fun c!33085 () Bool)

(assert (=> d!54867 (= c!33085 (bvsge (x!20061 lt!91242) #b01111111111111111111111111111110))))

(declare-fun lt!91311 () (_ BitVec 64))

(assert (=> d!54867 (= lt!91311 (select (arr!3700 (_keys!5691 thiss!1248)) (index!4720 lt!91242)))))

(assert (=> d!54867 (validMask!0 (mask!8846 thiss!1248))))

(assert (=> d!54867 (= (seekKeyOrZeroReturnVacant!0 (x!20061 lt!91242) (index!4720 lt!91242) (index!4720 lt!91242) key!828 (_keys!5691 thiss!1248) (mask!8846 thiss!1248)) lt!91312)))

(declare-fun b!184486 () Bool)

(declare-fun c!33087 () Bool)

(assert (=> b!184486 (= c!33087 (= lt!91311 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!121437 () SeekEntryResult!637)

(assert (=> b!184486 (= e!121437 e!121438)))

(declare-fun b!184487 () Bool)

(assert (=> b!184487 (= e!121438 (MissingVacant!637 (index!4720 lt!91242)))))

(declare-fun b!184488 () Bool)

(assert (=> b!184488 (= e!121439 e!121437)))

(declare-fun c!33086 () Bool)

(assert (=> b!184488 (= c!33086 (= lt!91311 key!828))))

(declare-fun b!184489 () Bool)

(assert (=> b!184489 (= e!121439 Undefined!637)))

(declare-fun b!184490 () Bool)

(assert (=> b!184490 (= e!121437 (Found!637 (index!4720 lt!91242)))))

(assert (= (and d!54867 c!33085) b!184489))

(assert (= (and d!54867 (not c!33085)) b!184488))

(assert (= (and b!184488 c!33086) b!184490))

(assert (= (and b!184488 (not c!33086)) b!184486))

(assert (= (and b!184486 c!33087) b!184487))

(assert (= (and b!184486 (not c!33087)) b!184485))

(declare-fun m!211923 () Bool)

(assert (=> b!184485 m!211923))

(assert (=> b!184485 m!211923))

(declare-fun m!211925 () Bool)

(assert (=> b!184485 m!211925))

(declare-fun m!211927 () Bool)

(assert (=> d!54867 m!211927))

(declare-fun m!211929 () Bool)

(assert (=> d!54867 m!211929))

(assert (=> d!54867 m!211783))

(assert (=> d!54867 m!211679))

(assert (=> b!184386 d!54867))

(declare-fun b!184499 () Bool)

(declare-fun res!87293 () Bool)

(declare-fun e!121442 () Bool)

(assert (=> b!184499 (=> (not res!87293) (not e!121442))))

(assert (=> b!184499 (= res!87293 (and (= (size!4015 (_values!3747 thiss!1248)) (bvadd (mask!8846 thiss!1248) #b00000000000000000000000000000001)) (= (size!4014 (_keys!5691 thiss!1248)) (size!4015 (_values!3747 thiss!1248))) (bvsge (_size!1318 thiss!1248) #b00000000000000000000000000000000) (bvsle (_size!1318 thiss!1248) (bvadd (mask!8846 thiss!1248) #b00000000000000000000000000000001))))))

(declare-fun b!184501 () Bool)

(declare-fun res!87294 () Bool)

(assert (=> b!184501 (=> (not res!87294) (not e!121442))))

(declare-fun size!4018 (LongMapFixedSize!2538) (_ BitVec 32))

(assert (=> b!184501 (= res!87294 (= (size!4018 thiss!1248) (bvadd (_size!1318 thiss!1248) (bvsdiv (bvadd (extraKeys!3501 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!184502 () Bool)

(assert (=> b!184502 (= e!121442 (and (bvsge (extraKeys!3501 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3501 thiss!1248) #b00000000000000000000000000000011) (bvsge (_vacant!1318 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun d!54869 () Bool)

(declare-fun res!87295 () Bool)

(assert (=> d!54869 (=> (not res!87295) (not e!121442))))

(assert (=> d!54869 (= res!87295 (validMask!0 (mask!8846 thiss!1248)))))

(assert (=> d!54869 (= (simpleValid!177 thiss!1248) e!121442)))

(declare-fun b!184500 () Bool)

(declare-fun res!87296 () Bool)

(assert (=> b!184500 (=> (not res!87296) (not e!121442))))

(assert (=> b!184500 (= res!87296 (bvsge (size!4018 thiss!1248) (_size!1318 thiss!1248)))))

(assert (= (and d!54869 res!87295) b!184499))

(assert (= (and b!184499 res!87293) b!184500))

(assert (= (and b!184500 res!87296) b!184501))

(assert (= (and b!184501 res!87294) b!184502))

(declare-fun m!211931 () Bool)

(assert (=> b!184501 m!211931))

(assert (=> d!54869 m!211679))

(assert (=> b!184500 m!211931))

(assert (=> d!54817 d!54869))

(declare-fun d!54871 () Bool)

(declare-fun e!121443 () Bool)

(assert (=> d!54871 e!121443))

(declare-fun res!87297 () Bool)

(assert (=> d!54871 (=> res!87297 e!121443)))

(declare-fun lt!91313 () Bool)

(assert (=> d!54871 (= res!87297 (not lt!91313))))

(declare-fun lt!91314 () Bool)

(assert (=> d!54871 (= lt!91313 lt!91314)))

(declare-fun lt!91315 () Unit!5565)

(declare-fun e!121444 () Unit!5565)

(assert (=> d!54871 (= lt!91315 e!121444)))

(declare-fun c!33088 () Bool)

(assert (=> d!54871 (= c!33088 lt!91314)))

(assert (=> d!54871 (= lt!91314 (containsKey!222 (toList!1194 lt!91217) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!54871 (= (contains!1278 lt!91217 #b1000000000000000000000000000000000000000000000000000000000000000) lt!91313)))

(declare-fun b!184503 () Bool)

(declare-fun lt!91316 () Unit!5565)

(assert (=> b!184503 (= e!121444 lt!91316)))

(assert (=> b!184503 (= lt!91316 (lemmaContainsKeyImpliesGetValueByKeyDefined!171 (toList!1194 lt!91217) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!184503 (isDefined!172 (getValueByKey!218 (toList!1194 lt!91217) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!184504 () Bool)

(declare-fun Unit!5571 () Unit!5565)

(assert (=> b!184504 (= e!121444 Unit!5571)))

(declare-fun b!184505 () Bool)

(assert (=> b!184505 (= e!121443 (isDefined!172 (getValueByKey!218 (toList!1194 lt!91217) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54871 c!33088) b!184503))

(assert (= (and d!54871 (not c!33088)) b!184504))

(assert (= (and d!54871 (not res!87297)) b!184505))

(declare-fun m!211933 () Bool)

(assert (=> d!54871 m!211933))

(declare-fun m!211935 () Bool)

(assert (=> b!184503 m!211935))

(declare-fun m!211937 () Bool)

(assert (=> b!184503 m!211937))

(assert (=> b!184503 m!211937))

(declare-fun m!211939 () Bool)

(assert (=> b!184503 m!211939))

(assert (=> b!184505 m!211937))

(assert (=> b!184505 m!211937))

(assert (=> b!184505 m!211939))

(assert (=> bm!18606 d!54871))

(declare-fun d!54873 () Bool)

(declare-fun isEmpty!473 (Option!224) Bool)

(assert (=> d!54873 (= (isDefined!172 (getValueByKey!218 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828)) (not (isEmpty!473 (getValueByKey!218 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828))))))

(declare-fun bs!7493 () Bool)

(assert (= bs!7493 d!54873))

(assert (=> bs!7493 m!211719))

(declare-fun m!211941 () Bool)

(assert (=> bs!7493 m!211941))

(assert (=> b!184308 d!54873))

(declare-fun b!184515 () Bool)

(declare-fun e!121449 () Option!224)

(declare-fun e!121450 () Option!224)

(assert (=> b!184515 (= e!121449 e!121450)))

(declare-fun c!33094 () Bool)

(assert (=> b!184515 (= c!33094 (and ((_ is Cons!2361) (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))) (not (= (_1!1723 (h!2992 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))))) key!828))))))

(declare-fun d!54875 () Bool)

(declare-fun c!33093 () Bool)

(assert (=> d!54875 (= c!33093 (and ((_ is Cons!2361) (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))) (= (_1!1723 (h!2992 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))))) key!828)))))

(assert (=> d!54875 (= (getValueByKey!218 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828) e!121449)))

(declare-fun b!184514 () Bool)

(assert (=> b!184514 (= e!121449 (Some!223 (_2!1723 (h!2992 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))))))))

(declare-fun b!184516 () Bool)

(assert (=> b!184516 (= e!121450 (getValueByKey!218 (t!7247 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))) key!828))))

(declare-fun b!184517 () Bool)

(assert (=> b!184517 (= e!121450 None!222)))

(assert (= (and d!54875 c!33093) b!184514))

(assert (= (and d!54875 (not c!33093)) b!184515))

(assert (= (and b!184515 c!33094) b!184516))

(assert (= (and b!184515 (not c!33094)) b!184517))

(declare-fun m!211943 () Bool)

(assert (=> b!184516 m!211943))

(assert (=> b!184308 d!54875))

(declare-fun d!54877 () Bool)

(declare-fun e!121451 () Bool)

(assert (=> d!54877 e!121451))

(declare-fun res!87298 () Bool)

(assert (=> d!54877 (=> res!87298 e!121451)))

(declare-fun lt!91317 () Bool)

(assert (=> d!54877 (= res!87298 (not lt!91317))))

(declare-fun lt!91318 () Bool)

(assert (=> d!54877 (= lt!91317 lt!91318)))

(declare-fun lt!91319 () Unit!5565)

(declare-fun e!121452 () Unit!5565)

(assert (=> d!54877 (= lt!91319 e!121452)))

(declare-fun c!33095 () Bool)

(assert (=> d!54877 (= c!33095 lt!91318)))

(assert (=> d!54877 (= lt!91318 (containsKey!222 (toList!1194 lt!91217) (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> d!54877 (= (contains!1278 lt!91217 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)) lt!91317)))

(declare-fun b!184518 () Bool)

(declare-fun lt!91320 () Unit!5565)

(assert (=> b!184518 (= e!121452 lt!91320)))

(assert (=> b!184518 (= lt!91320 (lemmaContainsKeyImpliesGetValueByKeyDefined!171 (toList!1194 lt!91217) (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!184518 (isDefined!172 (getValueByKey!218 (toList!1194 lt!91217) (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184519 () Bool)

(declare-fun Unit!5572 () Unit!5565)

(assert (=> b!184519 (= e!121452 Unit!5572)))

(declare-fun b!184520 () Bool)

(assert (=> b!184520 (= e!121451 (isDefined!172 (getValueByKey!218 (toList!1194 lt!91217) (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000))))))

(assert (= (and d!54877 c!33095) b!184518))

(assert (= (and d!54877 (not c!33095)) b!184519))

(assert (= (and d!54877 (not res!87298)) b!184520))

(assert (=> d!54877 m!211729))

(declare-fun m!211945 () Bool)

(assert (=> d!54877 m!211945))

(assert (=> b!184518 m!211729))

(declare-fun m!211947 () Bool)

(assert (=> b!184518 m!211947))

(assert (=> b!184518 m!211729))

(declare-fun m!211949 () Bool)

(assert (=> b!184518 m!211949))

(assert (=> b!184518 m!211949))

(declare-fun m!211951 () Bool)

(assert (=> b!184518 m!211951))

(assert (=> b!184520 m!211729))

(assert (=> b!184520 m!211949))

(assert (=> b!184520 m!211949))

(assert (=> b!184520 m!211951))

(assert (=> b!184366 d!54877))

(assert (=> d!54821 d!54815))

(assert (=> b!184367 d!54861))

(assert (=> bm!18607 d!54831))

(declare-fun d!54879 () Bool)

(assert (=> d!54879 (= (apply!162 lt!91217 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2125 (getValueByKey!218 (toList!1194 lt!91217) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7494 () Bool)

(assert (= bs!7494 d!54879))

(assert (=> bs!7494 m!211937))

(assert (=> bs!7494 m!211937))

(declare-fun m!211953 () Bool)

(assert (=> bs!7494 m!211953))

(assert (=> b!184363 d!54879))

(declare-fun d!54881 () Bool)

(declare-fun e!121453 () Bool)

(assert (=> d!54881 e!121453))

(declare-fun res!87300 () Bool)

(assert (=> d!54881 (=> (not res!87300) (not e!121453))))

(declare-fun lt!91321 () ListLongMap!2357)

(assert (=> d!54881 (= res!87300 (contains!1278 lt!91321 (_1!1723 (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))))))))

(declare-fun lt!91324 () List!2365)

(assert (=> d!54881 (= lt!91321 (ListLongMap!2358 lt!91324))))

(declare-fun lt!91323 () Unit!5565)

(declare-fun lt!91322 () Unit!5565)

(assert (=> d!54881 (= lt!91323 lt!91322)))

(assert (=> d!54881 (= (getValueByKey!218 lt!91324 (_1!1723 (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))))) (Some!223 (_2!1723 (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))))))))

(assert (=> d!54881 (= lt!91322 (lemmaContainsTupThenGetReturnValue!116 lt!91324 (_1!1723 (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))) (_2!1723 (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))))))))

(assert (=> d!54881 (= lt!91324 (insertStrictlySorted!118 (toList!1194 (ite c!33045 call!18611 (ite c!33047 call!18614 call!18612))) (_1!1723 (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))) (_2!1723 (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))))))))

(assert (=> d!54881 (= (+!277 (ite c!33045 call!18611 (ite c!33047 call!18614 call!18612)) (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))) lt!91321)))

(declare-fun b!184521 () Bool)

(declare-fun res!87299 () Bool)

(assert (=> b!184521 (=> (not res!87299) (not e!121453))))

(assert (=> b!184521 (= res!87299 (= (getValueByKey!218 (toList!1194 lt!91321) (_1!1723 (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))))) (Some!223 (_2!1723 (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))))))))

(declare-fun b!184522 () Bool)

(assert (=> b!184522 (= e!121453 (contains!1280 (toList!1194 lt!91321) (ite (or c!33045 c!33047) (tuple2!3427 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3605 thiss!1248)) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))))))

(assert (= (and d!54881 res!87300) b!184521))

(assert (= (and b!184521 res!87299) b!184522))

(declare-fun m!211955 () Bool)

(assert (=> d!54881 m!211955))

(declare-fun m!211957 () Bool)

(assert (=> d!54881 m!211957))

(declare-fun m!211959 () Bool)

(assert (=> d!54881 m!211959))

(declare-fun m!211961 () Bool)

(assert (=> d!54881 m!211961))

(declare-fun m!211963 () Bool)

(assert (=> b!184521 m!211963))

(declare-fun m!211965 () Bool)

(assert (=> b!184522 m!211965))

(assert (=> bm!18605 d!54881))

(declare-fun d!54883 () Bool)

(assert (=> d!54883 (= (apply!162 lt!91217 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)) (get!2125 (getValueByKey!218 (toList!1194 lt!91217) (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000))))))

(declare-fun bs!7495 () Bool)

(assert (= bs!7495 d!54883))

(assert (=> bs!7495 m!211729))

(assert (=> bs!7495 m!211949))

(assert (=> bs!7495 m!211949))

(declare-fun m!211967 () Bool)

(assert (=> bs!7495 m!211967))

(assert (=> b!184357 d!54883))

(declare-fun d!54885 () Bool)

(declare-fun c!33098 () Bool)

(assert (=> d!54885 (= c!33098 ((_ is ValueCellFull!1815) (select (arr!3701 (_values!3747 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun e!121456 () V!5403)

(assert (=> d!54885 (= (get!2124 (select (arr!3701 (_values!3747 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!500 (defaultEntry!3764 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)) e!121456)))

(declare-fun b!184527 () Bool)

(declare-fun get!2126 (ValueCell!1815 V!5403) V!5403)

(assert (=> b!184527 (= e!121456 (get!2126 (select (arr!3701 (_values!3747 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!500 (defaultEntry!3764 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!184528 () Bool)

(declare-fun get!2127 (ValueCell!1815 V!5403) V!5403)

(assert (=> b!184528 (= e!121456 (get!2127 (select (arr!3701 (_values!3747 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!500 (defaultEntry!3764 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54885 c!33098) b!184527))

(assert (= (and d!54885 (not c!33098)) b!184528))

(assert (=> b!184527 m!211723))

(assert (=> b!184527 m!211725))

(declare-fun m!211969 () Bool)

(assert (=> b!184527 m!211969))

(assert (=> b!184528 m!211723))

(assert (=> b!184528 m!211725))

(declare-fun m!211971 () Bool)

(assert (=> b!184528 m!211971))

(assert (=> b!184357 d!54885))

(declare-fun d!54887 () Bool)

(assert (=> d!54887 (= (apply!162 lt!91217 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2125 (getValueByKey!218 (toList!1194 lt!91217) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!7496 () Bool)

(assert (= bs!7496 d!54887))

(assert (=> bs!7496 m!211919))

(assert (=> bs!7496 m!211919))

(declare-fun m!211973 () Bool)

(assert (=> bs!7496 m!211973))

(assert (=> b!184356 d!54887))

(declare-fun d!54889 () Bool)

(assert (=> d!54889 (isDefined!172 (getValueByKey!218 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828))))

(declare-fun lt!91327 () Unit!5565)

(declare-fun choose!986 (List!2365 (_ BitVec 64)) Unit!5565)

(assert (=> d!54889 (= lt!91327 (choose!986 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828))))

(declare-fun e!121459 () Bool)

(assert (=> d!54889 e!121459))

(declare-fun res!87303 () Bool)

(assert (=> d!54889 (=> (not res!87303) (not e!121459))))

(declare-fun isStrictlySorted!342 (List!2365) Bool)

(assert (=> d!54889 (= res!87303 (isStrictlySorted!342 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))))))

(assert (=> d!54889 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!171 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828) lt!91327)))

(declare-fun b!184531 () Bool)

(assert (=> b!184531 (= e!121459 (containsKey!222 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828))))

(assert (= (and d!54889 res!87303) b!184531))

(assert (=> d!54889 m!211719))

(assert (=> d!54889 m!211719))

(assert (=> d!54889 m!211721))

(declare-fun m!211975 () Bool)

(assert (=> d!54889 m!211975))

(declare-fun m!211977 () Bool)

(assert (=> d!54889 m!211977))

(assert (=> b!184531 m!211715))

(assert (=> b!184306 d!54889))

(assert (=> b!184306 d!54873))

(assert (=> b!184306 d!54875))

(declare-fun b!184550 () Bool)

(declare-fun e!121470 () SeekEntryResult!637)

(assert (=> b!184550 (= e!121470 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!828 (mask!8846 thiss!1248)) #b00000000000000000000000000000000 (mask!8846 thiss!1248)) key!828 (_keys!5691 thiss!1248) (mask!8846 thiss!1248)))))

(declare-fun b!184551 () Bool)

(declare-fun lt!91332 () SeekEntryResult!637)

(assert (=> b!184551 (and (bvsge (index!4720 lt!91332) #b00000000000000000000000000000000) (bvslt (index!4720 lt!91332) (size!4014 (_keys!5691 thiss!1248))))))

(declare-fun res!87310 () Bool)

(assert (=> b!184551 (= res!87310 (= (select (arr!3700 (_keys!5691 thiss!1248)) (index!4720 lt!91332)) key!828))))

(declare-fun e!121471 () Bool)

(assert (=> b!184551 (=> res!87310 e!121471)))

(declare-fun e!121473 () Bool)

(assert (=> b!184551 (= e!121473 e!121471)))

(declare-fun b!184552 () Bool)

(declare-fun e!121472 () Bool)

(assert (=> b!184552 (= e!121472 (bvsge (x!20061 lt!91332) #b01111111111111111111111111111110))))

(declare-fun b!184553 () Bool)

(assert (=> b!184553 (= e!121472 e!121473)))

(declare-fun res!87311 () Bool)

(assert (=> b!184553 (= res!87311 (and ((_ is Intermediate!637) lt!91332) (not (undefined!1449 lt!91332)) (bvslt (x!20061 lt!91332) #b01111111111111111111111111111110) (bvsge (x!20061 lt!91332) #b00000000000000000000000000000000) (bvsge (x!20061 lt!91332) #b00000000000000000000000000000000)))))

(assert (=> b!184553 (=> (not res!87311) (not e!121473))))

(declare-fun b!184554 () Bool)

(declare-fun e!121474 () SeekEntryResult!637)

(assert (=> b!184554 (= e!121474 (Intermediate!637 true (toIndex!0 key!828 (mask!8846 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun d!54891 () Bool)

(assert (=> d!54891 e!121472))

(declare-fun c!33105 () Bool)

(assert (=> d!54891 (= c!33105 (and ((_ is Intermediate!637) lt!91332) (undefined!1449 lt!91332)))))

(assert (=> d!54891 (= lt!91332 e!121474)))

(declare-fun c!33106 () Bool)

(assert (=> d!54891 (= c!33106 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!91333 () (_ BitVec 64))

(assert (=> d!54891 (= lt!91333 (select (arr!3700 (_keys!5691 thiss!1248)) (toIndex!0 key!828 (mask!8846 thiss!1248))))))

(assert (=> d!54891 (validMask!0 (mask!8846 thiss!1248))))

(assert (=> d!54891 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8846 thiss!1248)) key!828 (_keys!5691 thiss!1248) (mask!8846 thiss!1248)) lt!91332)))

(declare-fun b!184555 () Bool)

(assert (=> b!184555 (and (bvsge (index!4720 lt!91332) #b00000000000000000000000000000000) (bvslt (index!4720 lt!91332) (size!4014 (_keys!5691 thiss!1248))))))

(declare-fun res!87312 () Bool)

(assert (=> b!184555 (= res!87312 (= (select (arr!3700 (_keys!5691 thiss!1248)) (index!4720 lt!91332)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!184555 (=> res!87312 e!121471)))

(declare-fun b!184556 () Bool)

(assert (=> b!184556 (and (bvsge (index!4720 lt!91332) #b00000000000000000000000000000000) (bvslt (index!4720 lt!91332) (size!4014 (_keys!5691 thiss!1248))))))

(assert (=> b!184556 (= e!121471 (= (select (arr!3700 (_keys!5691 thiss!1248)) (index!4720 lt!91332)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!184557 () Bool)

(assert (=> b!184557 (= e!121470 (Intermediate!637 false (toIndex!0 key!828 (mask!8846 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun b!184558 () Bool)

(assert (=> b!184558 (= e!121474 e!121470)))

(declare-fun c!33107 () Bool)

(assert (=> b!184558 (= c!33107 (or (= lt!91333 key!828) (= (bvadd lt!91333 lt!91333) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!54891 c!33106) b!184554))

(assert (= (and d!54891 (not c!33106)) b!184558))

(assert (= (and b!184558 c!33107) b!184557))

(assert (= (and b!184558 (not c!33107)) b!184550))

(assert (= (and d!54891 c!33105) b!184552))

(assert (= (and d!54891 (not c!33105)) b!184553))

(assert (= (and b!184553 res!87311) b!184551))

(assert (= (and b!184551 (not res!87310)) b!184555))

(assert (= (and b!184555 (not res!87312)) b!184556))

(declare-fun m!211979 () Bool)

(assert (=> b!184556 m!211979))

(assert (=> b!184555 m!211979))

(assert (=> b!184551 m!211979))

(assert (=> b!184550 m!211787))

(declare-fun m!211981 () Bool)

(assert (=> b!184550 m!211981))

(assert (=> b!184550 m!211981))

(declare-fun m!211983 () Bool)

(assert (=> b!184550 m!211983))

(assert (=> d!54891 m!211787))

(declare-fun m!211985 () Bool)

(assert (=> d!54891 m!211985))

(assert (=> d!54891 m!211679))

(assert (=> d!54827 d!54891))

(declare-fun d!54893 () Bool)

(declare-fun lt!91339 () (_ BitVec 32))

(declare-fun lt!91338 () (_ BitVec 32))

(assert (=> d!54893 (= lt!91339 (bvmul (bvxor lt!91338 (bvlshr lt!91338 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!54893 (= lt!91338 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!54893 (and (bvsge (mask!8846 thiss!1248) #b00000000000000000000000000000000) (let ((res!87313 (let ((h!2995 ((_ extract 31 0) (bvand (bvxor key!828 (bvlshr key!828 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!20079 (bvmul (bvxor h!2995 (bvlshr h!2995 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!20079 (bvlshr x!20079 #b00000000000000000000000000001101)) (mask!8846 thiss!1248)))))) (and (bvslt res!87313 (bvadd (mask!8846 thiss!1248) #b00000000000000000000000000000001)) (bvsge res!87313 #b00000000000000000000000000000000))))))

(assert (=> d!54893 (= (toIndex!0 key!828 (mask!8846 thiss!1248)) (bvand (bvxor lt!91339 (bvlshr lt!91339 #b00000000000000000000000000001101)) (mask!8846 thiss!1248)))))

(assert (=> d!54827 d!54893))

(assert (=> d!54827 d!54815))

(declare-fun bm!18620 () Bool)

(declare-fun call!18623 () Bool)

(assert (=> bm!18620 (= call!18623 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5691 thiss!1248) (mask!8846 thiss!1248)))))

(declare-fun b!184567 () Bool)

(declare-fun e!121481 () Bool)

(declare-fun e!121483 () Bool)

(assert (=> b!184567 (= e!121481 e!121483)))

(declare-fun lt!91346 () (_ BitVec 64))

(assert (=> b!184567 (= lt!91346 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91347 () Unit!5565)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7832 (_ BitVec 64) (_ BitVec 32)) Unit!5565)

(assert (=> b!184567 (= lt!91347 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5691 thiss!1248) lt!91346 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7832 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!184567 (arrayContainsKey!0 (_keys!5691 thiss!1248) lt!91346 #b00000000000000000000000000000000)))

(declare-fun lt!91348 () Unit!5565)

(assert (=> b!184567 (= lt!91348 lt!91347)))

(declare-fun res!87319 () Bool)

(assert (=> b!184567 (= res!87319 (= (seekEntryOrOpen!0 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000) (_keys!5691 thiss!1248) (mask!8846 thiss!1248)) (Found!637 #b00000000000000000000000000000000)))))

(assert (=> b!184567 (=> (not res!87319) (not e!121483))))

(declare-fun b!184568 () Bool)

(assert (=> b!184568 (= e!121483 call!18623)))

(declare-fun d!54895 () Bool)

(declare-fun res!87318 () Bool)

(declare-fun e!121482 () Bool)

(assert (=> d!54895 (=> res!87318 e!121482)))

(assert (=> d!54895 (= res!87318 (bvsge #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(assert (=> d!54895 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5691 thiss!1248) (mask!8846 thiss!1248)) e!121482)))

(declare-fun b!184569 () Bool)

(assert (=> b!184569 (= e!121482 e!121481)))

(declare-fun c!33110 () Bool)

(assert (=> b!184569 (= c!33110 (validKeyInArray!0 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184570 () Bool)

(assert (=> b!184570 (= e!121481 call!18623)))

(assert (= (and d!54895 (not res!87318)) b!184569))

(assert (= (and b!184569 c!33110) b!184567))

(assert (= (and b!184569 (not c!33110)) b!184570))

(assert (= (and b!184567 res!87319) b!184568))

(assert (= (or b!184568 b!184570) bm!18620))

(declare-fun m!211987 () Bool)

(assert (=> bm!18620 m!211987))

(assert (=> b!184567 m!211729))

(declare-fun m!211989 () Bool)

(assert (=> b!184567 m!211989))

(declare-fun m!211991 () Bool)

(assert (=> b!184567 m!211991))

(assert (=> b!184567 m!211729))

(declare-fun m!211993 () Bool)

(assert (=> b!184567 m!211993))

(assert (=> b!184569 m!211729))

(assert (=> b!184569 m!211729))

(assert (=> b!184569 m!211741))

(assert (=> b!184298 d!54895))

(declare-fun d!54897 () Bool)

(declare-fun res!87324 () Bool)

(declare-fun e!121488 () Bool)

(assert (=> d!54897 (=> res!87324 e!121488)))

(assert (=> d!54897 (= res!87324 (and ((_ is Cons!2361) (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))) (= (_1!1723 (h!2992 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))))) key!828)))))

(assert (=> d!54897 (= (containsKey!222 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))) key!828) e!121488)))

(declare-fun b!184575 () Bool)

(declare-fun e!121489 () Bool)

(assert (=> b!184575 (= e!121488 e!121489)))

(declare-fun res!87325 () Bool)

(assert (=> b!184575 (=> (not res!87325) (not e!121489))))

(assert (=> b!184575 (= res!87325 (and (or (not ((_ is Cons!2361) (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))))) (bvsle (_1!1723 (h!2992 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))))) key!828)) ((_ is Cons!2361) (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))) (bvslt (_1!1723 (h!2992 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248))))) key!828)))))

(declare-fun b!184576 () Bool)

(assert (=> b!184576 (= e!121489 (containsKey!222 (t!7247 (toList!1194 (getCurrentListMap!837 (_keys!5691 thiss!1248) (_values!3747 thiss!1248) (mask!8846 thiss!1248) (extraKeys!3501 thiss!1248) (zeroValue!3605 thiss!1248) (minValue!3605 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3764 thiss!1248)))) key!828))))

(assert (= (and d!54897 (not res!87324)) b!184575))

(assert (= (and b!184575 res!87325) b!184576))

(declare-fun m!211995 () Bool)

(assert (=> b!184576 m!211995))

(assert (=> d!54819 d!54897))

(declare-fun d!54899 () Bool)

(declare-fun e!121490 () Bool)

(assert (=> d!54899 e!121490))

(declare-fun res!87327 () Bool)

(assert (=> d!54899 (=> (not res!87327) (not e!121490))))

(declare-fun lt!91349 () ListLongMap!2357)

(assert (=> d!54899 (= res!87327 (contains!1278 lt!91349 (_1!1723 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))))))

(declare-fun lt!91352 () List!2365)

(assert (=> d!54899 (= lt!91349 (ListLongMap!2358 lt!91352))))

(declare-fun lt!91351 () Unit!5565)

(declare-fun lt!91350 () Unit!5565)

(assert (=> d!54899 (= lt!91351 lt!91350)))

(assert (=> d!54899 (= (getValueByKey!218 lt!91352 (_1!1723 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))) (Some!223 (_2!1723 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))))))

(assert (=> d!54899 (= lt!91350 (lemmaContainsTupThenGetReturnValue!116 lt!91352 (_1!1723 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))) (_2!1723 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))))))

(assert (=> d!54899 (= lt!91352 (insertStrictlySorted!118 (toList!1194 call!18608) (_1!1723 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))) (_2!1723 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))))))

(assert (=> d!54899 (= (+!277 call!18608 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))) lt!91349)))

(declare-fun b!184577 () Bool)

(declare-fun res!87326 () Bool)

(assert (=> b!184577 (=> (not res!87326) (not e!121490))))

(assert (=> b!184577 (= res!87326 (= (getValueByKey!218 (toList!1194 lt!91349) (_1!1723 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248)))) (Some!223 (_2!1723 (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))))))))

(declare-fun b!184578 () Bool)

(assert (=> b!184578 (= e!121490 (contains!1280 (toList!1194 lt!91349) (tuple2!3427 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3605 thiss!1248))))))

(assert (= (and d!54899 res!87327) b!184577))

(assert (= (and b!184577 res!87326) b!184578))

(declare-fun m!211997 () Bool)

(assert (=> d!54899 m!211997))

(declare-fun m!211999 () Bool)

(assert (=> d!54899 m!211999))

(declare-fun m!212001 () Bool)

(assert (=> d!54899 m!212001))

(declare-fun m!212003 () Bool)

(assert (=> d!54899 m!212003))

(declare-fun m!212005 () Bool)

(assert (=> b!184577 m!212005))

(declare-fun m!212007 () Bool)

(assert (=> b!184578 m!212007))

(assert (=> b!184370 d!54899))

(declare-fun b!184589 () Bool)

(declare-fun e!121502 () Bool)

(declare-fun call!18626 () Bool)

(assert (=> b!184589 (= e!121502 call!18626)))

(declare-fun b!184590 () Bool)

(assert (=> b!184590 (= e!121502 call!18626)))

(declare-fun b!184591 () Bool)

(declare-fun e!121501 () Bool)

(assert (=> b!184591 (= e!121501 e!121502)))

(declare-fun c!33113 () Bool)

(assert (=> b!184591 (= c!33113 (validKeyInArray!0 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184592 () Bool)

(declare-fun e!121500 () Bool)

(declare-fun contains!1281 (List!2367 (_ BitVec 64)) Bool)

(assert (=> b!184592 (= e!121500 (contains!1281 Nil!2364 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!184593 () Bool)

(declare-fun e!121499 () Bool)

(assert (=> b!184593 (= e!121499 e!121501)))

(declare-fun res!87335 () Bool)

(assert (=> b!184593 (=> (not res!87335) (not e!121501))))

(assert (=> b!184593 (= res!87335 (not e!121500))))

(declare-fun res!87334 () Bool)

(assert (=> b!184593 (=> (not res!87334) (not e!121500))))

(assert (=> b!184593 (= res!87334 (validKeyInArray!0 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18623 () Bool)

(assert (=> bm!18623 (= call!18626 (arrayNoDuplicates!0 (_keys!5691 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33113 (Cons!2363 (select (arr!3700 (_keys!5691 thiss!1248)) #b00000000000000000000000000000000) Nil!2364) Nil!2364)))))

(declare-fun d!54901 () Bool)

(declare-fun res!87336 () Bool)

(assert (=> d!54901 (=> res!87336 e!121499)))

(assert (=> d!54901 (= res!87336 (bvsge #b00000000000000000000000000000000 (size!4014 (_keys!5691 thiss!1248))))))

(assert (=> d!54901 (= (arrayNoDuplicates!0 (_keys!5691 thiss!1248) #b00000000000000000000000000000000 Nil!2364) e!121499)))

(assert (= (and d!54901 (not res!87336)) b!184593))

(assert (= (and b!184593 res!87334) b!184592))

(assert (= (and b!184593 res!87335) b!184591))

(assert (= (and b!184591 c!33113) b!184590))

(assert (= (and b!184591 (not c!33113)) b!184589))

(assert (= (or b!184590 b!184589) bm!18623))

(assert (=> b!184591 m!211729))

(assert (=> b!184591 m!211729))

(assert (=> b!184591 m!211741))

(assert (=> b!184592 m!211729))

(assert (=> b!184592 m!211729))

(declare-fun m!212009 () Bool)

(assert (=> b!184592 m!212009))

(assert (=> b!184593 m!211729))

(assert (=> b!184593 m!211729))

(assert (=> b!184593 m!211741))

(assert (=> bm!18623 m!211729))

(declare-fun m!212011 () Bool)

(assert (=> bm!18623 m!212011))

(assert (=> b!184299 d!54901))

(declare-fun condMapEmpty!7427 () Bool)

(declare-fun mapDefault!7427 () ValueCell!1815)

(assert (=> mapNonEmpty!7426 (= condMapEmpty!7427 (= mapRest!7426 ((as const (Array (_ BitVec 32) ValueCell!1815)) mapDefault!7427)))))

(declare-fun e!121503 () Bool)

(declare-fun mapRes!7427 () Bool)

(assert (=> mapNonEmpty!7426 (= tp!16426 (and e!121503 mapRes!7427))))

(declare-fun mapNonEmpty!7427 () Bool)

(declare-fun tp!16427 () Bool)

(declare-fun e!121504 () Bool)

(assert (=> mapNonEmpty!7427 (= mapRes!7427 (and tp!16427 e!121504))))

(declare-fun mapValue!7427 () ValueCell!1815)

(declare-fun mapKey!7427 () (_ BitVec 32))

(declare-fun mapRest!7427 () (Array (_ BitVec 32) ValueCell!1815))

(assert (=> mapNonEmpty!7427 (= mapRest!7426 (store mapRest!7427 mapKey!7427 mapValue!7427))))

(declare-fun b!184594 () Bool)

(assert (=> b!184594 (= e!121504 tp_is_empty!4317)))

(declare-fun mapIsEmpty!7427 () Bool)

(assert (=> mapIsEmpty!7427 mapRes!7427))

(declare-fun b!184595 () Bool)

(assert (=> b!184595 (= e!121503 tp_is_empty!4317)))

(assert (= (and mapNonEmpty!7426 condMapEmpty!7427) mapIsEmpty!7427))

(assert (= (and mapNonEmpty!7426 (not condMapEmpty!7427)) mapNonEmpty!7427))

(assert (= (and mapNonEmpty!7427 ((_ is ValueCellFull!1815) mapValue!7427)) b!184594))

(assert (= (and mapNonEmpty!7426 ((_ is ValueCellFull!1815) mapDefault!7427)) b!184595))

(declare-fun m!212013 () Bool)

(assert (=> mapNonEmpty!7427 m!212013))

(declare-fun b_lambda!7257 () Bool)

(assert (= b_lambda!7253 (or (and b!184263 b_free!4545) b_lambda!7257)))

(declare-fun b_lambda!7259 () Bool)

(assert (= b_lambda!7255 (or (and b!184263 b_free!4545) b_lambda!7259)))

(check-sat (not b!184578) (not b!184528) (not b!184520) (not bm!18623) (not b!184455) (not b!184432) (not b!184516) (not d!54843) (not bm!18614) (not b!184500) (not d!54887) (not d!54847) (not d!54865) (not mapNonEmpty!7427) (not b!184576) tp_is_empty!4317 (not b!184456) (not d!54853) (not d!54833) (not b!184577) (not b!184531) (not b!184438) (not b!184454) (not d!54881) (not b!184503) (not d!54837) (not d!54899) (not d!54883) (not d!54849) (not b_lambda!7251) (not b!184436) (not d!54859) (not b!184444) (not b!184434) (not b!184467) (not b!184522) (not d!54831) (not d!54839) (not d!54871) (not d!54851) (not d!54841) (not d!54873) (not bm!18620) (not d!54869) (not b!184472) (not b!184569) (not d!54855) (not d!54845) (not b!184593) (not b_next!4545) (not b!184485) (not b!184501) (not b!184505) (not b!184521) (not d!54867) (not b!184591) b_and!11155 (not b!184592) (not b!184429) (not d!54835) (not b!184435) (not bm!18617) (not d!54879) (not b!184518) (not b!184448) (not b!184433) (not d!54877) (not b_lambda!7259) (not b!184437) (not b!184527) (not d!54889) (not b!184470) (not d!54857) (not d!54829) (not b!184446) (not b_lambda!7257) (not b!184550) (not b!184450) (not b!184449) (not b!184457) (not b!184567) (not d!54891) (not b!184445))
(check-sat b_and!11155 (not b_next!4545))

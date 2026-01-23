; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!497234 () Bool)

(assert start!497234)

(declare-fun b!4810231 () Bool)

(declare-fun b_free!130123 () Bool)

(declare-fun b_next!130913 () Bool)

(assert (=> b!4810231 (= b_free!130123 (not b_next!130913))))

(declare-fun tp!1360436 () Bool)

(declare-fun b_and!341905 () Bool)

(assert (=> b!4810231 (= tp!1360436 b_and!341905)))

(declare-fun b!4810227 () Bool)

(declare-fun b_free!130125 () Bool)

(declare-fun b_next!130915 () Bool)

(assert (=> b!4810227 (= b_free!130125 (not b_next!130915))))

(declare-fun tp!1360433 () Bool)

(declare-fun b_and!341907 () Bool)

(assert (=> b!4810227 (= tp!1360433 b_and!341907)))

(declare-fun b!4810217 () Bool)

(declare-fun e!3004813 () Bool)

(declare-fun call!335739 () Bool)

(assert (=> b!4810217 (= e!3004813 call!335739)))

(declare-fun b!4810218 () Bool)

(declare-fun e!3004816 () Bool)

(declare-fun tp!1360430 () Bool)

(declare-fun mapRes!22301 () Bool)

(assert (=> b!4810218 (= e!3004816 (and tp!1360430 mapRes!22301))))

(declare-fun condMapEmpty!22301 () Bool)

(declare-datatypes ((K!16129 0))(
  ( (K!16130 (val!21209 Int)) )
))
(declare-datatypes ((array!18552 0))(
  ( (array!18553 (arr!8275 (Array (_ BitVec 32) (_ BitVec 64))) (size!36521 (_ BitVec 32))) )
))
(declare-datatypes ((V!16375 0))(
  ( (V!16376 (val!21210 Int)) )
))
(declare-datatypes ((tuple2!57368 0))(
  ( (tuple2!57369 (_1!31978 K!16129) (_2!31978 V!16375)) )
))
(declare-datatypes ((List!54644 0))(
  ( (Nil!54520) (Cons!54520 (h!60952 tuple2!57368) (t!362122 List!54644)) )
))
(declare-datatypes ((array!18554 0))(
  ( (array!18555 (arr!8276 (Array (_ BitVec 32) List!54644)) (size!36522 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!10090 0))(
  ( (LongMapFixedSize!10091 (defaultEntry!5463 Int) (mask!15038 (_ BitVec 32)) (extraKeys!5320 (_ BitVec 32)) (zeroValue!5333 List!54644) (minValue!5333 List!54644) (_size!10115 (_ BitVec 32)) (_keys!5387 array!18552) (_values!5358 array!18554) (_vacant!5110 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!19945 0))(
  ( (Cell!19946 (v!48823 LongMapFixedSize!10090)) )
))
(declare-datatypes ((MutLongMap!5045 0))(
  ( (LongMap!5045 (underlying!10297 Cell!19945)) (MutLongMapExt!5044 (__x!33233 Int)) )
))
(declare-datatypes ((Hashable!7056 0))(
  ( (HashableExt!7055 (__x!33234 Int)) )
))
(declare-datatypes ((Cell!19947 0))(
  ( (Cell!19948 (v!48824 MutLongMap!5045)) )
))
(declare-datatypes ((MutableMap!4929 0))(
  ( (MutableMapExt!4928 (__x!33235 Int)) (HashMap!4929 (underlying!10298 Cell!19947) (hashF!13328 Hashable!7056) (_size!10116 (_ BitVec 32)) (defaultValue!5100 Int)) )
))
(declare-fun thiss!41921 () MutableMap!4929)

(declare-fun mapDefault!22301 () List!54644)

(assert (=> b!4810218 (= condMapEmpty!22301 (= (arr!8276 (_values!5358 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))))) ((as const (Array (_ BitVec 32) List!54644)) mapDefault!22301)))))

(declare-fun b!4810219 () Bool)

(declare-fun e!3004825 () Bool)

(declare-fun e!3004826 () Bool)

(declare-fun lt!1962442 () MutLongMap!5045)

(get-info :version)

(assert (=> b!4810219 (= e!3004825 (and e!3004826 ((_ is LongMap!5045) lt!1962442)))))

(assert (=> b!4810219 (= lt!1962442 (v!48824 (underlying!10298 thiss!41921)))))

(declare-fun b!4810220 () Bool)

(declare-datatypes ((Unit!141533 0))(
  ( (Unit!141534) )
))
(declare-fun e!3004819 () Unit!141533)

(declare-fun lt!1962429 () Unit!141533)

(assert (=> b!4810220 (= e!3004819 lt!1962429)))

(declare-datatypes ((tuple2!57370 0))(
  ( (tuple2!57371 (_1!31979 (_ BitVec 64)) (_2!31979 List!54644)) )
))
(declare-datatypes ((List!54645 0))(
  ( (Nil!54521) (Cons!54521 (h!60953 tuple2!57370) (t!362123 List!54645)) )
))
(declare-datatypes ((ListLongMap!5589 0))(
  ( (ListLongMap!5590 (toList!7134 List!54645)) )
))
(declare-fun lt!1962434 () ListLongMap!5589)

(declare-fun key!1652 () K!16129)

(declare-fun lemmaInGenericMapThenInLongMap!390 (ListLongMap!5589 K!16129 Hashable!7056) Unit!141533)

(assert (=> b!4810220 (= lt!1962429 (lemmaInGenericMapThenInLongMap!390 lt!1962434 key!1652 (hashF!13328 thiss!41921)))))

(declare-fun res!2046152 () Bool)

(declare-fun call!335738 () Bool)

(assert (=> b!4810220 (= res!2046152 call!335738)))

(assert (=> b!4810220 (=> (not res!2046152) (not e!3004813))))

(assert (=> b!4810220 e!3004813))

(declare-fun b!4810221 () Bool)

(declare-fun e!3004827 () Unit!141533)

(declare-fun Unit!141535 () Unit!141533)

(assert (=> b!4810221 (= e!3004827 Unit!141535)))

(declare-fun res!2046153 () Bool)

(declare-fun e!3004818 () Bool)

(assert (=> start!497234 (=> (not res!2046153) (not e!3004818))))

(assert (=> start!497234 (= res!2046153 ((_ is HashMap!4929) thiss!41921))))

(assert (=> start!497234 e!3004818))

(declare-fun e!3004814 () Bool)

(assert (=> start!497234 e!3004814))

(declare-fun tp_is_empty!33963 () Bool)

(assert (=> start!497234 tp_is_empty!33963))

(declare-fun mapIsEmpty!22301 () Bool)

(assert (=> mapIsEmpty!22301 mapRes!22301))

(declare-fun b!4810222 () Bool)

(declare-fun e!3004822 () Bool)

(declare-fun lt!1962441 () (_ BitVec 64))

(declare-fun noDuplicateKeys!2388 (List!54644) Bool)

(declare-fun apply!13145 (MutLongMap!5045 (_ BitVec 64)) List!54644)

(assert (=> b!4810222 (= e!3004822 (not (noDuplicateKeys!2388 (apply!13145 (v!48824 (underlying!10298 thiss!41921)) lt!1962441))))))

(declare-fun b!4810223 () Bool)

(assert (=> b!4810223 (= e!3004819 e!3004827)))

(declare-fun res!2046151 () Bool)

(assert (=> b!4810223 (= res!2046151 call!335738)))

(declare-fun e!3004815 () Bool)

(assert (=> b!4810223 (=> (not res!2046151) (not e!3004815))))

(declare-fun c!819862 () Bool)

(assert (=> b!4810223 (= c!819862 e!3004815)))

(declare-fun b!4810224 () Bool)

(assert (=> b!4810224 (= e!3004818 e!3004822)))

(declare-fun res!2046154 () Bool)

(assert (=> b!4810224 (=> (not res!2046154) (not e!3004822))))

(declare-fun lt!1962428 () Bool)

(assert (=> b!4810224 (= res!2046154 lt!1962428)))

(declare-fun lt!1962435 () Unit!141533)

(assert (=> b!4810224 (= lt!1962435 e!3004819)))

(declare-fun c!819864 () Bool)

(declare-datatypes ((ListMap!6573 0))(
  ( (ListMap!6574 (toList!7135 List!54644)) )
))
(declare-fun contains!18244 (ListMap!6573 K!16129) Bool)

(declare-fun extractMap!2538 (List!54645) ListMap!6573)

(assert (=> b!4810224 (= c!819864 (contains!18244 (extractMap!2538 (toList!7134 lt!1962434)) key!1652))))

(declare-fun map!12406 (MutLongMap!5045) ListLongMap!5589)

(assert (=> b!4810224 (= lt!1962434 (map!12406 (v!48824 (underlying!10298 thiss!41921))))))

(declare-fun lt!1962432 () Unit!141533)

(declare-fun e!3004817 () Unit!141533)

(assert (=> b!4810224 (= lt!1962432 e!3004817)))

(declare-fun c!819861 () Bool)

(assert (=> b!4810224 (= c!819861 lt!1962428)))

(declare-fun contains!18245 (MutLongMap!5045 (_ BitVec 64)) Bool)

(assert (=> b!4810224 (= lt!1962428 (contains!18245 (v!48824 (underlying!10298 thiss!41921)) lt!1962441))))

(declare-fun hash!5126 (Hashable!7056 K!16129) (_ BitVec 64))

(assert (=> b!4810224 (= lt!1962441 (hash!5126 (hashF!13328 thiss!41921) key!1652))))

(declare-fun mapNonEmpty!22301 () Bool)

(declare-fun tp!1360432 () Bool)

(declare-fun tp!1360435 () Bool)

(assert (=> mapNonEmpty!22301 (= mapRes!22301 (and tp!1360432 tp!1360435))))

(declare-fun mapKey!22301 () (_ BitVec 32))

(declare-fun mapValue!22301 () List!54644)

(declare-fun mapRest!22301 () (Array (_ BitVec 32) List!54644))

(assert (=> mapNonEmpty!22301 (= (arr!8276 (_values!5358 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))))) (store mapRest!22301 mapKey!22301 mapValue!22301))))

(declare-fun b!4810225 () Bool)

(declare-fun e!3004823 () Unit!141533)

(declare-fun Unit!141536 () Unit!141533)

(assert (=> b!4810225 (= e!3004823 Unit!141536)))

(declare-fun bm!335731 () Bool)

(declare-fun contains!18246 (ListLongMap!5589 (_ BitVec 64)) Bool)

(assert (=> bm!335731 (= call!335738 (contains!18246 lt!1962434 lt!1962441))))

(declare-fun b!4810226 () Bool)

(declare-fun e!3004824 () Bool)

(declare-fun e!3004820 () Bool)

(assert (=> b!4810226 (= e!3004824 e!3004820)))

(assert (=> b!4810227 (= e!3004814 (and e!3004825 tp!1360433))))

(declare-fun b!4810228 () Bool)

(assert (=> b!4810228 (= e!3004815 call!335739)))

(declare-fun b!4810229 () Bool)

(declare-fun res!2046155 () Bool)

(assert (=> b!4810229 (=> (not res!2046155) (not e!3004818))))

(declare-fun valid!4070 (MutableMap!4929) Bool)

(assert (=> b!4810229 (= res!2046155 (valid!4070 thiss!41921))))

(declare-fun bm!335732 () Bool)

(declare-fun call!335736 () List!54644)

(declare-fun apply!13146 (ListLongMap!5589 (_ BitVec 64)) List!54644)

(assert (=> bm!335732 (= call!335736 (apply!13146 lt!1962434 lt!1962441))))

(declare-fun b!4810230 () Bool)

(assert (=> b!4810230 (= e!3004826 e!3004824)))

(declare-fun bm!335733 () Bool)

(declare-datatypes ((Option!13304 0))(
  ( (None!13303) (Some!13303 (v!48825 tuple2!57368)) )
))
(declare-fun call!335737 () Option!13304)

(declare-fun getPair!966 (List!54644 K!16129) Option!13304)

(assert (=> bm!335733 (= call!335737 (getPair!966 call!335736 key!1652))))

(declare-fun tp!1360434 () Bool)

(declare-fun tp!1360431 () Bool)

(declare-fun array_inv!5975 (array!18552) Bool)

(declare-fun array_inv!5976 (array!18554) Bool)

(assert (=> b!4810231 (= e!3004820 (and tp!1360436 tp!1360431 tp!1360434 (array_inv!5975 (_keys!5387 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))))) (array_inv!5976 (_values!5358 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))))) e!3004816))))

(declare-fun b!4810232 () Bool)

(assert (=> b!4810232 false))

(declare-fun lt!1962436 () ListLongMap!5589)

(declare-fun lt!1962439 () List!54644)

(declare-fun lt!1962430 () Unit!141533)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!998 (List!54645 (_ BitVec 64) List!54644) Unit!141533)

(assert (=> b!4810232 (= lt!1962430 (lemmaGetValueByKeyImpliesContainsTuple!998 (toList!7134 lt!1962436) lt!1962441 lt!1962439))))

(declare-datatypes ((Option!13305 0))(
  ( (None!13304) (Some!13304 (v!48826 List!54644)) )
))
(declare-fun isDefined!10442 (Option!13305) Bool)

(declare-fun getValueByKey!2486 (List!54645 (_ BitVec 64)) Option!13305)

(assert (=> b!4810232 (isDefined!10442 (getValueByKey!2486 (toList!7134 lt!1962436) lt!1962441))))

(declare-fun lt!1962437 () Unit!141533)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2274 (List!54645 (_ BitVec 64)) Unit!141533)

(assert (=> b!4810232 (= lt!1962437 (lemmaContainsKeyImpliesGetValueByKeyDefined!2274 (toList!7134 lt!1962436) lt!1962441))))

(declare-fun containsKey!4145 (List!54645 (_ BitVec 64)) Bool)

(assert (=> b!4810232 (containsKey!4145 (toList!7134 lt!1962436) lt!1962441)))

(declare-fun lt!1962431 () Unit!141533)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!269 (List!54645 (_ BitVec 64)) Unit!141533)

(assert (=> b!4810232 (= lt!1962431 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!269 (toList!7134 lt!1962436) lt!1962441))))

(declare-fun Unit!141537 () Unit!141533)

(assert (=> b!4810232 (= e!3004823 Unit!141537)))

(declare-fun b!4810233 () Bool)

(declare-fun Unit!141538 () Unit!141533)

(assert (=> b!4810233 (= e!3004817 Unit!141538)))

(declare-fun b!4810234 () Bool)

(declare-fun lambda!233742 () Int)

(declare-fun lt!1962433 () tuple2!57370)

(declare-fun forallContained!4267 (List!54645 Int tuple2!57370) Unit!141533)

(assert (=> b!4810234 (= e!3004817 (forallContained!4267 (toList!7134 lt!1962436) lambda!233742 lt!1962433))))

(assert (=> b!4810234 (= lt!1962436 (map!12406 (v!48824 (underlying!10298 thiss!41921))))))

(assert (=> b!4810234 (= lt!1962439 (apply!13145 (v!48824 (underlying!10298 thiss!41921)) lt!1962441))))

(assert (=> b!4810234 (= lt!1962433 (tuple2!57371 lt!1962441 lt!1962439))))

(declare-fun c!819863 () Bool)

(declare-fun contains!18247 (List!54645 tuple2!57370) Bool)

(assert (=> b!4810234 (= c!819863 (not (contains!18247 (toList!7134 lt!1962436) lt!1962433)))))

(declare-fun lt!1962438 () Unit!141533)

(assert (=> b!4810234 (= lt!1962438 e!3004823)))

(declare-fun bm!335734 () Bool)

(declare-fun isDefined!10443 (Option!13304) Bool)

(assert (=> bm!335734 (= call!335739 (isDefined!10443 call!335737))))

(declare-fun b!4810235 () Bool)

(assert (=> b!4810235 false))

(declare-fun lt!1962440 () Unit!141533)

(declare-fun lemmaInLongMapThenInGenericMap!220 (ListLongMap!5589 K!16129 Hashable!7056) Unit!141533)

(assert (=> b!4810235 (= lt!1962440 (lemmaInLongMapThenInGenericMap!220 lt!1962434 key!1652 (hashF!13328 thiss!41921)))))

(declare-fun Unit!141539 () Unit!141533)

(assert (=> b!4810235 (= e!3004827 Unit!141539)))

(assert (= (and start!497234 res!2046153) b!4810229))

(assert (= (and b!4810229 res!2046155) b!4810224))

(assert (= (and b!4810224 c!819861) b!4810234))

(assert (= (and b!4810224 (not c!819861)) b!4810233))

(assert (= (and b!4810234 c!819863) b!4810232))

(assert (= (and b!4810234 (not c!819863)) b!4810225))

(assert (= (and b!4810224 c!819864) b!4810220))

(assert (= (and b!4810224 (not c!819864)) b!4810223))

(assert (= (and b!4810220 res!2046152) b!4810217))

(assert (= (and b!4810223 res!2046151) b!4810228))

(assert (= (and b!4810223 c!819862) b!4810235))

(assert (= (and b!4810223 (not c!819862)) b!4810221))

(assert (= (or b!4810217 b!4810228) bm!335732))

(assert (= (or b!4810220 b!4810223) bm!335731))

(assert (= (or b!4810217 b!4810228) bm!335733))

(assert (= (or b!4810217 b!4810228) bm!335734))

(assert (= (and b!4810224 res!2046154) b!4810222))

(assert (= (and b!4810218 condMapEmpty!22301) mapIsEmpty!22301))

(assert (= (and b!4810218 (not condMapEmpty!22301)) mapNonEmpty!22301))

(assert (= b!4810231 b!4810218))

(assert (= b!4810226 b!4810231))

(assert (= b!4810230 b!4810226))

(assert (= (and b!4810219 ((_ is LongMap!5045) (v!48824 (underlying!10298 thiss!41921)))) b!4810230))

(assert (= b!4810227 b!4810219))

(assert (= (and start!497234 ((_ is HashMap!4929) thiss!41921)) b!4810227))

(declare-fun m!5796168 () Bool)

(assert (=> b!4810232 m!5796168))

(declare-fun m!5796170 () Bool)

(assert (=> b!4810232 m!5796170))

(declare-fun m!5796172 () Bool)

(assert (=> b!4810232 m!5796172))

(declare-fun m!5796174 () Bool)

(assert (=> b!4810232 m!5796174))

(declare-fun m!5796176 () Bool)

(assert (=> b!4810232 m!5796176))

(declare-fun m!5796178 () Bool)

(assert (=> b!4810232 m!5796178))

(assert (=> b!4810232 m!5796174))

(declare-fun m!5796180 () Bool)

(assert (=> bm!335731 m!5796180))

(declare-fun m!5796182 () Bool)

(assert (=> b!4810231 m!5796182))

(declare-fun m!5796184 () Bool)

(assert (=> b!4810231 m!5796184))

(declare-fun m!5796186 () Bool)

(assert (=> b!4810229 m!5796186))

(declare-fun m!5796188 () Bool)

(assert (=> mapNonEmpty!22301 m!5796188))

(declare-fun m!5796190 () Bool)

(assert (=> bm!335732 m!5796190))

(declare-fun m!5796192 () Bool)

(assert (=> b!4810220 m!5796192))

(declare-fun m!5796194 () Bool)

(assert (=> b!4810224 m!5796194))

(declare-fun m!5796196 () Bool)

(assert (=> b!4810224 m!5796196))

(declare-fun m!5796198 () Bool)

(assert (=> b!4810224 m!5796198))

(declare-fun m!5796200 () Bool)

(assert (=> b!4810224 m!5796200))

(assert (=> b!4810224 m!5796194))

(declare-fun m!5796202 () Bool)

(assert (=> b!4810224 m!5796202))

(declare-fun m!5796204 () Bool)

(assert (=> b!4810222 m!5796204))

(assert (=> b!4810222 m!5796204))

(declare-fun m!5796206 () Bool)

(assert (=> b!4810222 m!5796206))

(declare-fun m!5796208 () Bool)

(assert (=> bm!335733 m!5796208))

(declare-fun m!5796210 () Bool)

(assert (=> bm!335734 m!5796210))

(declare-fun m!5796212 () Bool)

(assert (=> b!4810234 m!5796212))

(assert (=> b!4810234 m!5796200))

(assert (=> b!4810234 m!5796204))

(declare-fun m!5796214 () Bool)

(assert (=> b!4810234 m!5796214))

(declare-fun m!5796216 () Bool)

(assert (=> b!4810235 m!5796216))

(check-sat (not bm!335733) (not bm!335732) (not b!4810218) (not b!4810220) (not b!4810222) (not b!4810235) b_and!341907 (not b!4810231) (not bm!335734) (not bm!335731) (not b!4810229) (not b_next!130915) (not mapNonEmpty!22301) (not b!4810234) (not b_next!130913) (not b!4810232) tp_is_empty!33963 (not b!4810224) b_and!341905)
(check-sat b_and!341905 b_and!341907 (not b_next!130913) (not b_next!130915))
(get-model)

(declare-fun d!1540275 () Bool)

(declare-fun isEmpty!29549 (Option!13304) Bool)

(assert (=> d!1540275 (= (isDefined!10443 call!335737) (not (isEmpty!29549 call!335737)))))

(declare-fun bs!1160069 () Bool)

(assert (= bs!1160069 d!1540275))

(declare-fun m!5796218 () Bool)

(assert (=> bs!1160069 m!5796218))

(assert (=> bm!335734 d!1540275))

(declare-fun d!1540277 () Bool)

(declare-fun e!3004833 () Bool)

(assert (=> d!1540277 e!3004833))

(declare-fun res!2046158 () Bool)

(assert (=> d!1540277 (=> res!2046158 e!3004833)))

(declare-fun lt!1962453 () Bool)

(assert (=> d!1540277 (= res!2046158 (not lt!1962453))))

(declare-fun lt!1962451 () Bool)

(assert (=> d!1540277 (= lt!1962453 lt!1962451)))

(declare-fun lt!1962454 () Unit!141533)

(declare-fun e!3004832 () Unit!141533)

(assert (=> d!1540277 (= lt!1962454 e!3004832)))

(declare-fun c!819867 () Bool)

(assert (=> d!1540277 (= c!819867 lt!1962451)))

(assert (=> d!1540277 (= lt!1962451 (containsKey!4145 (toList!7134 lt!1962434) lt!1962441))))

(assert (=> d!1540277 (= (contains!18246 lt!1962434 lt!1962441) lt!1962453)))

(declare-fun b!4810242 () Bool)

(declare-fun lt!1962452 () Unit!141533)

(assert (=> b!4810242 (= e!3004832 lt!1962452)))

(assert (=> b!4810242 (= lt!1962452 (lemmaContainsKeyImpliesGetValueByKeyDefined!2274 (toList!7134 lt!1962434) lt!1962441))))

(assert (=> b!4810242 (isDefined!10442 (getValueByKey!2486 (toList!7134 lt!1962434) lt!1962441))))

(declare-fun b!4810243 () Bool)

(declare-fun Unit!141540 () Unit!141533)

(assert (=> b!4810243 (= e!3004832 Unit!141540)))

(declare-fun b!4810244 () Bool)

(assert (=> b!4810244 (= e!3004833 (isDefined!10442 (getValueByKey!2486 (toList!7134 lt!1962434) lt!1962441)))))

(assert (= (and d!1540277 c!819867) b!4810242))

(assert (= (and d!1540277 (not c!819867)) b!4810243))

(assert (= (and d!1540277 (not res!2046158)) b!4810244))

(declare-fun m!5796220 () Bool)

(assert (=> d!1540277 m!5796220))

(declare-fun m!5796222 () Bool)

(assert (=> b!4810242 m!5796222))

(declare-fun m!5796224 () Bool)

(assert (=> b!4810242 m!5796224))

(assert (=> b!4810242 m!5796224))

(declare-fun m!5796226 () Bool)

(assert (=> b!4810242 m!5796226))

(assert (=> b!4810244 m!5796224))

(assert (=> b!4810244 m!5796224))

(assert (=> b!4810244 m!5796226))

(assert (=> bm!335731 d!1540277))

(declare-fun d!1540279 () Bool)

(declare-fun dynLambda!22134 (Int tuple2!57370) Bool)

(assert (=> d!1540279 (dynLambda!22134 lambda!233742 lt!1962433)))

(declare-fun lt!1962457 () Unit!141533)

(declare-fun choose!34848 (List!54645 Int tuple2!57370) Unit!141533)

(assert (=> d!1540279 (= lt!1962457 (choose!34848 (toList!7134 lt!1962436) lambda!233742 lt!1962433))))

(declare-fun e!3004836 () Bool)

(assert (=> d!1540279 e!3004836))

(declare-fun res!2046161 () Bool)

(assert (=> d!1540279 (=> (not res!2046161) (not e!3004836))))

(declare-fun forall!12393 (List!54645 Int) Bool)

(assert (=> d!1540279 (= res!2046161 (forall!12393 (toList!7134 lt!1962436) lambda!233742))))

(assert (=> d!1540279 (= (forallContained!4267 (toList!7134 lt!1962436) lambda!233742 lt!1962433) lt!1962457)))

(declare-fun b!4810247 () Bool)

(assert (=> b!4810247 (= e!3004836 (contains!18247 (toList!7134 lt!1962436) lt!1962433))))

(assert (= (and d!1540279 res!2046161) b!4810247))

(declare-fun b_lambda!188205 () Bool)

(assert (=> (not b_lambda!188205) (not d!1540279)))

(declare-fun m!5796228 () Bool)

(assert (=> d!1540279 m!5796228))

(declare-fun m!5796230 () Bool)

(assert (=> d!1540279 m!5796230))

(declare-fun m!5796232 () Bool)

(assert (=> d!1540279 m!5796232))

(assert (=> b!4810247 m!5796214))

(assert (=> b!4810234 d!1540279))

(declare-fun d!1540281 () Bool)

(declare-fun map!12407 (LongMapFixedSize!10090) ListLongMap!5589)

(assert (=> d!1540281 (= (map!12406 (v!48824 (underlying!10298 thiss!41921))) (map!12407 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921))))))))

(declare-fun bs!1160070 () Bool)

(assert (= bs!1160070 d!1540281))

(declare-fun m!5796234 () Bool)

(assert (=> bs!1160070 m!5796234))

(assert (=> b!4810234 d!1540281))

(declare-fun d!1540283 () Bool)

(declare-fun e!3004839 () Bool)

(assert (=> d!1540283 e!3004839))

(declare-fun c!819870 () Bool)

(assert (=> d!1540283 (= c!819870 (contains!18245 (v!48824 (underlying!10298 thiss!41921)) lt!1962441))))

(declare-fun lt!1962460 () List!54644)

(declare-fun apply!13147 (LongMapFixedSize!10090 (_ BitVec 64)) List!54644)

(assert (=> d!1540283 (= lt!1962460 (apply!13147 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))) lt!1962441))))

(declare-fun valid!4071 (MutLongMap!5045) Bool)

(assert (=> d!1540283 (valid!4071 (v!48824 (underlying!10298 thiss!41921)))))

(assert (=> d!1540283 (= (apply!13145 (v!48824 (underlying!10298 thiss!41921)) lt!1962441) lt!1962460)))

(declare-fun b!4810252 () Bool)

(declare-fun get!18652 (Option!13305) List!54644)

(assert (=> b!4810252 (= e!3004839 (= lt!1962460 (get!18652 (getValueByKey!2486 (toList!7134 (map!12406 (v!48824 (underlying!10298 thiss!41921)))) lt!1962441))))))

(declare-fun b!4810253 () Bool)

(declare-fun dynLambda!22135 (Int (_ BitVec 64)) List!54644)

(assert (=> b!4810253 (= e!3004839 (= lt!1962460 (dynLambda!22135 (defaultEntry!5463 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921))))) lt!1962441)))))

(assert (=> b!4810253 ((_ is LongMap!5045) (v!48824 (underlying!10298 thiss!41921)))))

(assert (= (and d!1540283 c!819870) b!4810252))

(assert (= (and d!1540283 (not c!819870)) b!4810253))

(declare-fun b_lambda!188207 () Bool)

(assert (=> (not b_lambda!188207) (not b!4810253)))

(declare-fun t!362125 () Bool)

(declare-fun tb!257531 () Bool)

(assert (=> (and b!4810231 (= (defaultEntry!5463 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921))))) (defaultEntry!5463 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))))) t!362125) tb!257531))

(assert (=> b!4810253 t!362125))

(declare-fun result!319606 () Bool)

(declare-fun b_and!341909 () Bool)

(assert (= b_and!341905 (and (=> t!362125 result!319606) b_and!341909)))

(assert (=> d!1540283 m!5796202))

(declare-fun m!5796236 () Bool)

(assert (=> d!1540283 m!5796236))

(declare-fun m!5796238 () Bool)

(assert (=> d!1540283 m!5796238))

(assert (=> b!4810252 m!5796200))

(declare-fun m!5796240 () Bool)

(assert (=> b!4810252 m!5796240))

(assert (=> b!4810252 m!5796240))

(declare-fun m!5796242 () Bool)

(assert (=> b!4810252 m!5796242))

(declare-fun m!5796244 () Bool)

(assert (=> b!4810253 m!5796244))

(assert (=> b!4810234 d!1540283))

(declare-fun d!1540285 () Bool)

(declare-fun lt!1962463 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9775 (List!54645) (InoxSet tuple2!57370))

(assert (=> d!1540285 (= lt!1962463 (select (content!9775 (toList!7134 lt!1962436)) lt!1962433))))

(declare-fun e!3004844 () Bool)

(assert (=> d!1540285 (= lt!1962463 e!3004844)))

(declare-fun res!2046167 () Bool)

(assert (=> d!1540285 (=> (not res!2046167) (not e!3004844))))

(assert (=> d!1540285 (= res!2046167 ((_ is Cons!54521) (toList!7134 lt!1962436)))))

(assert (=> d!1540285 (= (contains!18247 (toList!7134 lt!1962436) lt!1962433) lt!1962463)))

(declare-fun b!4810258 () Bool)

(declare-fun e!3004845 () Bool)

(assert (=> b!4810258 (= e!3004844 e!3004845)))

(declare-fun res!2046166 () Bool)

(assert (=> b!4810258 (=> res!2046166 e!3004845)))

(assert (=> b!4810258 (= res!2046166 (= (h!60953 (toList!7134 lt!1962436)) lt!1962433))))

(declare-fun b!4810259 () Bool)

(assert (=> b!4810259 (= e!3004845 (contains!18247 (t!362123 (toList!7134 lt!1962436)) lt!1962433))))

(assert (= (and d!1540285 res!2046167) b!4810258))

(assert (= (and b!4810258 (not res!2046166)) b!4810259))

(declare-fun m!5796246 () Bool)

(assert (=> d!1540285 m!5796246))

(declare-fun m!5796248 () Bool)

(assert (=> d!1540285 m!5796248))

(declare-fun m!5796250 () Bool)

(assert (=> b!4810259 m!5796250))

(assert (=> b!4810234 d!1540285))

(declare-fun d!1540287 () Bool)

(declare-fun res!2046172 () Bool)

(declare-fun e!3004850 () Bool)

(assert (=> d!1540287 (=> res!2046172 e!3004850)))

(assert (=> d!1540287 (= res!2046172 (and ((_ is Cons!54521) (toList!7134 lt!1962436)) (= (_1!31979 (h!60953 (toList!7134 lt!1962436))) lt!1962441)))))

(assert (=> d!1540287 (= (containsKey!4145 (toList!7134 lt!1962436) lt!1962441) e!3004850)))

(declare-fun b!4810264 () Bool)

(declare-fun e!3004851 () Bool)

(assert (=> b!4810264 (= e!3004850 e!3004851)))

(declare-fun res!2046173 () Bool)

(assert (=> b!4810264 (=> (not res!2046173) (not e!3004851))))

(assert (=> b!4810264 (= res!2046173 (and (or (not ((_ is Cons!54521) (toList!7134 lt!1962436))) (bvsle (_1!31979 (h!60953 (toList!7134 lt!1962436))) lt!1962441)) ((_ is Cons!54521) (toList!7134 lt!1962436)) (bvslt (_1!31979 (h!60953 (toList!7134 lt!1962436))) lt!1962441)))))

(declare-fun b!4810265 () Bool)

(assert (=> b!4810265 (= e!3004851 (containsKey!4145 (t!362123 (toList!7134 lt!1962436)) lt!1962441))))

(assert (= (and d!1540287 (not res!2046172)) b!4810264))

(assert (= (and b!4810264 res!2046173) b!4810265))

(declare-fun m!5796252 () Bool)

(assert (=> b!4810265 m!5796252))

(assert (=> b!4810232 d!1540287))

(declare-fun d!1540289 () Bool)

(declare-fun isEmpty!29550 (Option!13305) Bool)

(assert (=> d!1540289 (= (isDefined!10442 (getValueByKey!2486 (toList!7134 lt!1962436) lt!1962441)) (not (isEmpty!29550 (getValueByKey!2486 (toList!7134 lt!1962436) lt!1962441))))))

(declare-fun bs!1160071 () Bool)

(assert (= bs!1160071 d!1540289))

(assert (=> bs!1160071 m!5796174))

(declare-fun m!5796254 () Bool)

(assert (=> bs!1160071 m!5796254))

(assert (=> b!4810232 d!1540289))

(declare-fun d!1540291 () Bool)

(assert (=> d!1540291 (isDefined!10442 (getValueByKey!2486 (toList!7134 lt!1962436) lt!1962441))))

(declare-fun lt!1962466 () Unit!141533)

(declare-fun choose!34849 (List!54645 (_ BitVec 64)) Unit!141533)

(assert (=> d!1540291 (= lt!1962466 (choose!34849 (toList!7134 lt!1962436) lt!1962441))))

(declare-fun e!3004854 () Bool)

(assert (=> d!1540291 e!3004854))

(declare-fun res!2046176 () Bool)

(assert (=> d!1540291 (=> (not res!2046176) (not e!3004854))))

(declare-fun isStrictlySorted!928 (List!54645) Bool)

(assert (=> d!1540291 (= res!2046176 (isStrictlySorted!928 (toList!7134 lt!1962436)))))

(assert (=> d!1540291 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2274 (toList!7134 lt!1962436) lt!1962441) lt!1962466)))

(declare-fun b!4810268 () Bool)

(assert (=> b!4810268 (= e!3004854 (containsKey!4145 (toList!7134 lt!1962436) lt!1962441))))

(assert (= (and d!1540291 res!2046176) b!4810268))

(assert (=> d!1540291 m!5796174))

(assert (=> d!1540291 m!5796174))

(assert (=> d!1540291 m!5796176))

(declare-fun m!5796256 () Bool)

(assert (=> d!1540291 m!5796256))

(declare-fun m!5796258 () Bool)

(assert (=> d!1540291 m!5796258))

(assert (=> b!4810268 m!5796178))

(assert (=> b!4810232 d!1540291))

(declare-fun b!4810277 () Bool)

(declare-fun e!3004859 () Option!13305)

(assert (=> b!4810277 (= e!3004859 (Some!13304 (_2!31979 (h!60953 (toList!7134 lt!1962436)))))))

(declare-fun b!4810279 () Bool)

(declare-fun e!3004860 () Option!13305)

(assert (=> b!4810279 (= e!3004860 (getValueByKey!2486 (t!362123 (toList!7134 lt!1962436)) lt!1962441))))

(declare-fun d!1540293 () Bool)

(declare-fun c!819875 () Bool)

(assert (=> d!1540293 (= c!819875 (and ((_ is Cons!54521) (toList!7134 lt!1962436)) (= (_1!31979 (h!60953 (toList!7134 lt!1962436))) lt!1962441)))))

(assert (=> d!1540293 (= (getValueByKey!2486 (toList!7134 lt!1962436) lt!1962441) e!3004859)))

(declare-fun b!4810278 () Bool)

(assert (=> b!4810278 (= e!3004859 e!3004860)))

(declare-fun c!819876 () Bool)

(assert (=> b!4810278 (= c!819876 (and ((_ is Cons!54521) (toList!7134 lt!1962436)) (not (= (_1!31979 (h!60953 (toList!7134 lt!1962436))) lt!1962441))))))

(declare-fun b!4810280 () Bool)

(assert (=> b!4810280 (= e!3004860 None!13304)))

(assert (= (and d!1540293 c!819875) b!4810277))

(assert (= (and d!1540293 (not c!819875)) b!4810278))

(assert (= (and b!4810278 c!819876) b!4810279))

(assert (= (and b!4810278 (not c!819876)) b!4810280))

(declare-fun m!5796260 () Bool)

(assert (=> b!4810279 m!5796260))

(assert (=> b!4810232 d!1540293))

(declare-fun d!1540295 () Bool)

(assert (=> d!1540295 (contains!18247 (toList!7134 lt!1962436) (tuple2!57371 lt!1962441 lt!1962439))))

(declare-fun lt!1962469 () Unit!141533)

(declare-fun choose!34850 (List!54645 (_ BitVec 64) List!54644) Unit!141533)

(assert (=> d!1540295 (= lt!1962469 (choose!34850 (toList!7134 lt!1962436) lt!1962441 lt!1962439))))

(declare-fun e!3004863 () Bool)

(assert (=> d!1540295 e!3004863))

(declare-fun res!2046179 () Bool)

(assert (=> d!1540295 (=> (not res!2046179) (not e!3004863))))

(assert (=> d!1540295 (= res!2046179 (isStrictlySorted!928 (toList!7134 lt!1962436)))))

(assert (=> d!1540295 (= (lemmaGetValueByKeyImpliesContainsTuple!998 (toList!7134 lt!1962436) lt!1962441 lt!1962439) lt!1962469)))

(declare-fun b!4810283 () Bool)

(assert (=> b!4810283 (= e!3004863 (= (getValueByKey!2486 (toList!7134 lt!1962436) lt!1962441) (Some!13304 lt!1962439)))))

(assert (= (and d!1540295 res!2046179) b!4810283))

(declare-fun m!5796262 () Bool)

(assert (=> d!1540295 m!5796262))

(declare-fun m!5796264 () Bool)

(assert (=> d!1540295 m!5796264))

(assert (=> d!1540295 m!5796258))

(assert (=> b!4810283 m!5796174))

(assert (=> b!4810232 d!1540295))

(declare-fun d!1540297 () Bool)

(assert (=> d!1540297 (containsKey!4145 (toList!7134 lt!1962436) lt!1962441)))

(declare-fun lt!1962472 () Unit!141533)

(declare-fun choose!34851 (List!54645 (_ BitVec 64)) Unit!141533)

(assert (=> d!1540297 (= lt!1962472 (choose!34851 (toList!7134 lt!1962436) lt!1962441))))

(declare-fun e!3004866 () Bool)

(assert (=> d!1540297 e!3004866))

(declare-fun res!2046182 () Bool)

(assert (=> d!1540297 (=> (not res!2046182) (not e!3004866))))

(assert (=> d!1540297 (= res!2046182 (isStrictlySorted!928 (toList!7134 lt!1962436)))))

(assert (=> d!1540297 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!269 (toList!7134 lt!1962436) lt!1962441) lt!1962472)))

(declare-fun b!4810286 () Bool)

(assert (=> b!4810286 (= e!3004866 (isDefined!10442 (getValueByKey!2486 (toList!7134 lt!1962436) lt!1962441)))))

(assert (= (and d!1540297 res!2046182) b!4810286))

(assert (=> d!1540297 m!5796178))

(declare-fun m!5796266 () Bool)

(assert (=> d!1540297 m!5796266))

(assert (=> d!1540297 m!5796258))

(assert (=> b!4810286 m!5796174))

(assert (=> b!4810286 m!5796174))

(assert (=> b!4810286 m!5796176))

(assert (=> b!4810232 d!1540297))

(declare-fun d!1540299 () Bool)

(assert (=> d!1540299 (= (array_inv!5975 (_keys!5387 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))))) (bvsge (size!36521 (_keys!5387 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4810231 d!1540299))

(declare-fun d!1540301 () Bool)

(assert (=> d!1540301 (= (array_inv!5976 (_values!5358 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))))) (bvsge (size!36522 (_values!5358 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))))) #b00000000000000000000000000000000))))

(assert (=> b!4810231 d!1540301))

(declare-fun bs!1160072 () Bool)

(declare-fun d!1540303 () Bool)

(assert (= bs!1160072 (and d!1540303 b!4810234)))

(declare-fun lambda!233745 () Int)

(assert (=> bs!1160072 (= lambda!233745 lambda!233742)))

(declare-fun lt!1962475 () ListMap!6573)

(declare-fun invariantList!1775 (List!54644) Bool)

(assert (=> d!1540303 (invariantList!1775 (toList!7135 lt!1962475))))

(declare-fun e!3004869 () ListMap!6573)

(assert (=> d!1540303 (= lt!1962475 e!3004869)))

(declare-fun c!819879 () Bool)

(assert (=> d!1540303 (= c!819879 ((_ is Cons!54521) (toList!7134 lt!1962434)))))

(assert (=> d!1540303 (forall!12393 (toList!7134 lt!1962434) lambda!233745)))

(assert (=> d!1540303 (= (extractMap!2538 (toList!7134 lt!1962434)) lt!1962475)))

(declare-fun b!4810291 () Bool)

(declare-fun addToMapMapFromBucket!1752 (List!54644 ListMap!6573) ListMap!6573)

(assert (=> b!4810291 (= e!3004869 (addToMapMapFromBucket!1752 (_2!31979 (h!60953 (toList!7134 lt!1962434))) (extractMap!2538 (t!362123 (toList!7134 lt!1962434)))))))

(declare-fun b!4810292 () Bool)

(assert (=> b!4810292 (= e!3004869 (ListMap!6574 Nil!54520))))

(assert (= (and d!1540303 c!819879) b!4810291))

(assert (= (and d!1540303 (not c!819879)) b!4810292))

(declare-fun m!5796268 () Bool)

(assert (=> d!1540303 m!5796268))

(declare-fun m!5796270 () Bool)

(assert (=> d!1540303 m!5796270))

(declare-fun m!5796272 () Bool)

(assert (=> b!4810291 m!5796272))

(assert (=> b!4810291 m!5796272))

(declare-fun m!5796274 () Bool)

(assert (=> b!4810291 m!5796274))

(assert (=> b!4810224 d!1540303))

(declare-fun d!1540305 () Bool)

(declare-fun hash!5127 (Hashable!7056 K!16129) (_ BitVec 64))

(assert (=> d!1540305 (= (hash!5126 (hashF!13328 thiss!41921) key!1652) (hash!5127 (hashF!13328 thiss!41921) key!1652))))

(declare-fun bs!1160073 () Bool)

(assert (= bs!1160073 d!1540305))

(declare-fun m!5796276 () Bool)

(assert (=> bs!1160073 m!5796276))

(assert (=> b!4810224 d!1540305))

(assert (=> b!4810224 d!1540281))

(declare-fun b!4810311 () Bool)

(declare-fun e!3004886 () Unit!141533)

(declare-fun e!3004883 () Unit!141533)

(assert (=> b!4810311 (= e!3004886 e!3004883)))

(declare-fun c!819886 () Bool)

(declare-fun call!335742 () Bool)

(assert (=> b!4810311 (= c!819886 call!335742)))

(declare-fun d!1540307 () Bool)

(declare-fun e!3004882 () Bool)

(assert (=> d!1540307 e!3004882))

(declare-fun res!2046191 () Bool)

(assert (=> d!1540307 (=> res!2046191 e!3004882)))

(declare-fun e!3004887 () Bool)

(assert (=> d!1540307 (= res!2046191 e!3004887)))

(declare-fun res!2046189 () Bool)

(assert (=> d!1540307 (=> (not res!2046189) (not e!3004887))))

(declare-fun lt!1962494 () Bool)

(assert (=> d!1540307 (= res!2046189 (not lt!1962494))))

(declare-fun lt!1962498 () Bool)

(assert (=> d!1540307 (= lt!1962494 lt!1962498)))

(declare-fun lt!1962499 () Unit!141533)

(assert (=> d!1540307 (= lt!1962499 e!3004886)))

(declare-fun c!819888 () Bool)

(assert (=> d!1540307 (= c!819888 lt!1962498)))

(declare-fun containsKey!4146 (List!54644 K!16129) Bool)

(assert (=> d!1540307 (= lt!1962498 (containsKey!4146 (toList!7135 (extractMap!2538 (toList!7134 lt!1962434))) key!1652))))

(assert (=> d!1540307 (= (contains!18244 (extractMap!2538 (toList!7134 lt!1962434)) key!1652) lt!1962494)))

(declare-fun bm!335737 () Bool)

(declare-datatypes ((List!54646 0))(
  ( (Nil!54522) (Cons!54522 (h!60954 K!16129) (t!362126 List!54646)) )
))
(declare-fun e!3004884 () List!54646)

(declare-fun contains!18248 (List!54646 K!16129) Bool)

(assert (=> bm!335737 (= call!335742 (contains!18248 e!3004884 key!1652))))

(declare-fun c!819887 () Bool)

(assert (=> bm!335737 (= c!819887 c!819888)))

(declare-fun b!4810312 () Bool)

(declare-fun keys!19976 (ListMap!6573) List!54646)

(assert (=> b!4810312 (= e!3004884 (keys!19976 (extractMap!2538 (toList!7134 lt!1962434))))))

(declare-fun b!4810313 () Bool)

(declare-fun getKeysList!1121 (List!54644) List!54646)

(assert (=> b!4810313 (= e!3004884 (getKeysList!1121 (toList!7135 (extractMap!2538 (toList!7134 lt!1962434)))))))

(declare-fun b!4810314 () Bool)

(declare-fun e!3004885 () Bool)

(assert (=> b!4810314 (= e!3004882 e!3004885)))

(declare-fun res!2046190 () Bool)

(assert (=> b!4810314 (=> (not res!2046190) (not e!3004885))))

(declare-datatypes ((Option!13306 0))(
  ( (None!13305) (Some!13305 (v!48829 V!16375)) )
))
(declare-fun isDefined!10444 (Option!13306) Bool)

(declare-fun getValueByKey!2487 (List!54644 K!16129) Option!13306)

(assert (=> b!4810314 (= res!2046190 (isDefined!10444 (getValueByKey!2487 (toList!7135 (extractMap!2538 (toList!7134 lt!1962434))) key!1652)))))

(declare-fun b!4810315 () Bool)

(assert (=> b!4810315 (= e!3004885 (contains!18248 (keys!19976 (extractMap!2538 (toList!7134 lt!1962434))) key!1652))))

(declare-fun b!4810316 () Bool)

(declare-fun Unit!141541 () Unit!141533)

(assert (=> b!4810316 (= e!3004883 Unit!141541)))

(declare-fun b!4810317 () Bool)

(assert (=> b!4810317 (= e!3004887 (not (contains!18248 (keys!19976 (extractMap!2538 (toList!7134 lt!1962434))) key!1652)))))

(declare-fun b!4810318 () Bool)

(declare-fun lt!1962492 () Unit!141533)

(assert (=> b!4810318 (= e!3004886 lt!1962492)))

(declare-fun lt!1962497 () Unit!141533)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2275 (List!54644 K!16129) Unit!141533)

(assert (=> b!4810318 (= lt!1962497 (lemmaContainsKeyImpliesGetValueByKeyDefined!2275 (toList!7135 (extractMap!2538 (toList!7134 lt!1962434))) key!1652))))

(assert (=> b!4810318 (isDefined!10444 (getValueByKey!2487 (toList!7135 (extractMap!2538 (toList!7134 lt!1962434))) key!1652))))

(declare-fun lt!1962493 () Unit!141533)

(assert (=> b!4810318 (= lt!1962493 lt!1962497)))

(declare-fun lemmaInListThenGetKeysListContains!1116 (List!54644 K!16129) Unit!141533)

(assert (=> b!4810318 (= lt!1962492 (lemmaInListThenGetKeysListContains!1116 (toList!7135 (extractMap!2538 (toList!7134 lt!1962434))) key!1652))))

(assert (=> b!4810318 call!335742))

(declare-fun b!4810319 () Bool)

(assert (=> b!4810319 false))

(declare-fun lt!1962496 () Unit!141533)

(declare-fun lt!1962495 () Unit!141533)

(assert (=> b!4810319 (= lt!1962496 lt!1962495)))

(assert (=> b!4810319 (containsKey!4146 (toList!7135 (extractMap!2538 (toList!7134 lt!1962434))) key!1652)))

(declare-fun lemmaInGetKeysListThenContainsKey!1121 (List!54644 K!16129) Unit!141533)

(assert (=> b!4810319 (= lt!1962495 (lemmaInGetKeysListThenContainsKey!1121 (toList!7135 (extractMap!2538 (toList!7134 lt!1962434))) key!1652))))

(declare-fun Unit!141542 () Unit!141533)

(assert (=> b!4810319 (= e!3004883 Unit!141542)))

(assert (= (and d!1540307 c!819888) b!4810318))

(assert (= (and d!1540307 (not c!819888)) b!4810311))

(assert (= (and b!4810311 c!819886) b!4810319))

(assert (= (and b!4810311 (not c!819886)) b!4810316))

(assert (= (or b!4810318 b!4810311) bm!335737))

(assert (= (and bm!335737 c!819887) b!4810313))

(assert (= (and bm!335737 (not c!819887)) b!4810312))

(assert (= (and d!1540307 res!2046189) b!4810317))

(assert (= (and d!1540307 (not res!2046191)) b!4810314))

(assert (= (and b!4810314 res!2046190) b!4810315))

(declare-fun m!5796278 () Bool)

(assert (=> b!4810318 m!5796278))

(declare-fun m!5796280 () Bool)

(assert (=> b!4810318 m!5796280))

(assert (=> b!4810318 m!5796280))

(declare-fun m!5796282 () Bool)

(assert (=> b!4810318 m!5796282))

(declare-fun m!5796284 () Bool)

(assert (=> b!4810318 m!5796284))

(declare-fun m!5796286 () Bool)

(assert (=> d!1540307 m!5796286))

(assert (=> b!4810312 m!5796194))

(declare-fun m!5796288 () Bool)

(assert (=> b!4810312 m!5796288))

(declare-fun m!5796290 () Bool)

(assert (=> bm!335737 m!5796290))

(assert (=> b!4810317 m!5796194))

(assert (=> b!4810317 m!5796288))

(assert (=> b!4810317 m!5796288))

(declare-fun m!5796292 () Bool)

(assert (=> b!4810317 m!5796292))

(assert (=> b!4810315 m!5796194))

(assert (=> b!4810315 m!5796288))

(assert (=> b!4810315 m!5796288))

(assert (=> b!4810315 m!5796292))

(declare-fun m!5796294 () Bool)

(assert (=> b!4810313 m!5796294))

(assert (=> b!4810314 m!5796280))

(assert (=> b!4810314 m!5796280))

(assert (=> b!4810314 m!5796282))

(assert (=> b!4810319 m!5796286))

(declare-fun m!5796296 () Bool)

(assert (=> b!4810319 m!5796296))

(assert (=> b!4810224 d!1540307))

(declare-fun d!1540309 () Bool)

(declare-fun lt!1962502 () Bool)

(assert (=> d!1540309 (= lt!1962502 (contains!18246 (map!12406 (v!48824 (underlying!10298 thiss!41921))) lt!1962441))))

(declare-fun contains!18249 (LongMapFixedSize!10090 (_ BitVec 64)) Bool)

(assert (=> d!1540309 (= lt!1962502 (contains!18249 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921)))) lt!1962441))))

(assert (=> d!1540309 (valid!4071 (v!48824 (underlying!10298 thiss!41921)))))

(assert (=> d!1540309 (= (contains!18245 (v!48824 (underlying!10298 thiss!41921)) lt!1962441) lt!1962502)))

(declare-fun bs!1160074 () Bool)

(assert (= bs!1160074 d!1540309))

(assert (=> bs!1160074 m!5796200))

(assert (=> bs!1160074 m!5796200))

(declare-fun m!5796298 () Bool)

(assert (=> bs!1160074 m!5796298))

(declare-fun m!5796300 () Bool)

(assert (=> bs!1160074 m!5796300))

(assert (=> bs!1160074 m!5796238))

(assert (=> b!4810224 d!1540309))

(declare-fun b!4810336 () Bool)

(declare-fun e!3004899 () Option!13304)

(assert (=> b!4810336 (= e!3004899 (getPair!966 (t!362122 call!335736) key!1652))))

(declare-fun b!4810337 () Bool)

(declare-fun e!3004898 () Bool)

(declare-fun containsKey!4147 (List!54644 K!16129) Bool)

(assert (=> b!4810337 (= e!3004898 (not (containsKey!4147 call!335736 key!1652)))))

(declare-fun d!1540311 () Bool)

(declare-fun e!3004901 () Bool)

(assert (=> d!1540311 e!3004901))

(declare-fun res!2046203 () Bool)

(assert (=> d!1540311 (=> res!2046203 e!3004901)))

(assert (=> d!1540311 (= res!2046203 e!3004898)))

(declare-fun res!2046200 () Bool)

(assert (=> d!1540311 (=> (not res!2046200) (not e!3004898))))

(declare-fun lt!1962505 () Option!13304)

(assert (=> d!1540311 (= res!2046200 (isEmpty!29549 lt!1962505))))

(declare-fun e!3004900 () Option!13304)

(assert (=> d!1540311 (= lt!1962505 e!3004900)))

(declare-fun c!819894 () Bool)

(assert (=> d!1540311 (= c!819894 (and ((_ is Cons!54520) call!335736) (= (_1!31978 (h!60952 call!335736)) key!1652)))))

(assert (=> d!1540311 (noDuplicateKeys!2388 call!335736)))

(assert (=> d!1540311 (= (getPair!966 call!335736 key!1652) lt!1962505)))

(declare-fun b!4810338 () Bool)

(declare-fun res!2046201 () Bool)

(declare-fun e!3004902 () Bool)

(assert (=> b!4810338 (=> (not res!2046201) (not e!3004902))))

(declare-fun get!18653 (Option!13304) tuple2!57368)

(assert (=> b!4810338 (= res!2046201 (= (_1!31978 (get!18653 lt!1962505)) key!1652))))

(declare-fun b!4810339 () Bool)

(assert (=> b!4810339 (= e!3004900 e!3004899)))

(declare-fun c!819893 () Bool)

(assert (=> b!4810339 (= c!819893 ((_ is Cons!54520) call!335736))))

(declare-fun b!4810340 () Bool)

(declare-fun contains!18250 (List!54644 tuple2!57368) Bool)

(assert (=> b!4810340 (= e!3004902 (contains!18250 call!335736 (get!18653 lt!1962505)))))

(declare-fun b!4810341 () Bool)

(assert (=> b!4810341 (= e!3004900 (Some!13303 (h!60952 call!335736)))))

(declare-fun b!4810342 () Bool)

(assert (=> b!4810342 (= e!3004899 None!13303)))

(declare-fun b!4810343 () Bool)

(assert (=> b!4810343 (= e!3004901 e!3004902)))

(declare-fun res!2046202 () Bool)

(assert (=> b!4810343 (=> (not res!2046202) (not e!3004902))))

(assert (=> b!4810343 (= res!2046202 (isDefined!10443 lt!1962505))))

(assert (= (and d!1540311 c!819894) b!4810341))

(assert (= (and d!1540311 (not c!819894)) b!4810339))

(assert (= (and b!4810339 c!819893) b!4810336))

(assert (= (and b!4810339 (not c!819893)) b!4810342))

(assert (= (and d!1540311 res!2046200) b!4810337))

(assert (= (and d!1540311 (not res!2046203)) b!4810343))

(assert (= (and b!4810343 res!2046202) b!4810338))

(assert (= (and b!4810338 res!2046201) b!4810340))

(declare-fun m!5796302 () Bool)

(assert (=> d!1540311 m!5796302))

(declare-fun m!5796304 () Bool)

(assert (=> d!1540311 m!5796304))

(declare-fun m!5796306 () Bool)

(assert (=> b!4810338 m!5796306))

(declare-fun m!5796308 () Bool)

(assert (=> b!4810336 m!5796308))

(assert (=> b!4810340 m!5796306))

(assert (=> b!4810340 m!5796306))

(declare-fun m!5796310 () Bool)

(assert (=> b!4810340 m!5796310))

(declare-fun m!5796312 () Bool)

(assert (=> b!4810337 m!5796312))

(declare-fun m!5796314 () Bool)

(assert (=> b!4810343 m!5796314))

(assert (=> bm!335733 d!1540311))

(declare-fun d!1540313 () Bool)

(assert (=> d!1540313 (= (apply!13146 lt!1962434 lt!1962441) (get!18652 (getValueByKey!2486 (toList!7134 lt!1962434) lt!1962441)))))

(declare-fun bs!1160075 () Bool)

(assert (= bs!1160075 d!1540313))

(assert (=> bs!1160075 m!5796224))

(assert (=> bs!1160075 m!5796224))

(declare-fun m!5796316 () Bool)

(assert (=> bs!1160075 m!5796316))

(assert (=> bm!335732 d!1540313))

(declare-fun d!1540315 () Bool)

(declare-fun res!2046208 () Bool)

(declare-fun e!3004907 () Bool)

(assert (=> d!1540315 (=> res!2046208 e!3004907)))

(assert (=> d!1540315 (= res!2046208 (not ((_ is Cons!54520) (apply!13145 (v!48824 (underlying!10298 thiss!41921)) lt!1962441))))))

(assert (=> d!1540315 (= (noDuplicateKeys!2388 (apply!13145 (v!48824 (underlying!10298 thiss!41921)) lt!1962441)) e!3004907)))

(declare-fun b!4810348 () Bool)

(declare-fun e!3004908 () Bool)

(assert (=> b!4810348 (= e!3004907 e!3004908)))

(declare-fun res!2046209 () Bool)

(assert (=> b!4810348 (=> (not res!2046209) (not e!3004908))))

(assert (=> b!4810348 (= res!2046209 (not (containsKey!4147 (t!362122 (apply!13145 (v!48824 (underlying!10298 thiss!41921)) lt!1962441)) (_1!31978 (h!60952 (apply!13145 (v!48824 (underlying!10298 thiss!41921)) lt!1962441))))))))

(declare-fun b!4810349 () Bool)

(assert (=> b!4810349 (= e!3004908 (noDuplicateKeys!2388 (t!362122 (apply!13145 (v!48824 (underlying!10298 thiss!41921)) lt!1962441))))))

(assert (= (and d!1540315 (not res!2046208)) b!4810348))

(assert (= (and b!4810348 res!2046209) b!4810349))

(declare-fun m!5796318 () Bool)

(assert (=> b!4810348 m!5796318))

(declare-fun m!5796320 () Bool)

(assert (=> b!4810349 m!5796320))

(assert (=> b!4810222 d!1540315))

(assert (=> b!4810222 d!1540283))

(declare-fun bs!1160076 () Bool)

(declare-fun b!4810354 () Bool)

(assert (= bs!1160076 (and b!4810354 b!4810234)))

(declare-fun lambda!233748 () Int)

(assert (=> bs!1160076 (= lambda!233748 lambda!233742)))

(declare-fun bs!1160077 () Bool)

(assert (= bs!1160077 (and b!4810354 d!1540303)))

(assert (=> bs!1160077 (= lambda!233748 lambda!233745)))

(declare-fun d!1540317 () Bool)

(declare-fun res!2046214 () Bool)

(declare-fun e!3004911 () Bool)

(assert (=> d!1540317 (=> (not res!2046214) (not e!3004911))))

(assert (=> d!1540317 (= res!2046214 (valid!4071 (v!48824 (underlying!10298 thiss!41921))))))

(assert (=> d!1540317 (= (valid!4070 thiss!41921) e!3004911)))

(declare-fun res!2046215 () Bool)

(assert (=> b!4810354 (=> (not res!2046215) (not e!3004911))))

(assert (=> b!4810354 (= res!2046215 (forall!12393 (toList!7134 (map!12406 (v!48824 (underlying!10298 thiss!41921)))) lambda!233748))))

(declare-fun b!4810355 () Bool)

(declare-fun allKeysSameHashInMap!2408 (ListLongMap!5589 Hashable!7056) Bool)

(assert (=> b!4810355 (= e!3004911 (allKeysSameHashInMap!2408 (map!12406 (v!48824 (underlying!10298 thiss!41921))) (hashF!13328 thiss!41921)))))

(assert (= (and d!1540317 res!2046214) b!4810354))

(assert (= (and b!4810354 res!2046215) b!4810355))

(assert (=> d!1540317 m!5796238))

(assert (=> b!4810354 m!5796200))

(declare-fun m!5796322 () Bool)

(assert (=> b!4810354 m!5796322))

(assert (=> b!4810355 m!5796200))

(assert (=> b!4810355 m!5796200))

(declare-fun m!5796324 () Bool)

(assert (=> b!4810355 m!5796324))

(assert (=> b!4810229 d!1540317))

(declare-fun bs!1160078 () Bool)

(declare-fun d!1540319 () Bool)

(assert (= bs!1160078 (and d!1540319 b!4810234)))

(declare-fun lambda!233751 () Int)

(assert (=> bs!1160078 (= lambda!233751 lambda!233742)))

(declare-fun bs!1160079 () Bool)

(assert (= bs!1160079 (and d!1540319 d!1540303)))

(assert (=> bs!1160079 (= lambda!233751 lambda!233745)))

(declare-fun bs!1160080 () Bool)

(assert (= bs!1160080 (and d!1540319 b!4810354)))

(assert (=> bs!1160080 (= lambda!233751 lambda!233748)))

(declare-fun e!3004914 () Bool)

(assert (=> d!1540319 e!3004914))

(declare-fun res!2046218 () Bool)

(assert (=> d!1540319 (=> (not res!2046218) (not e!3004914))))

(assert (=> d!1540319 (= res!2046218 (contains!18246 lt!1962434 (hash!5126 (hashF!13328 thiss!41921) key!1652)))))

(declare-fun lt!1962508 () Unit!141533)

(declare-fun choose!34852 (ListLongMap!5589 K!16129 Hashable!7056) Unit!141533)

(assert (=> d!1540319 (= lt!1962508 (choose!34852 lt!1962434 key!1652 (hashF!13328 thiss!41921)))))

(assert (=> d!1540319 (forall!12393 (toList!7134 lt!1962434) lambda!233751)))

(assert (=> d!1540319 (= (lemmaInGenericMapThenInLongMap!390 lt!1962434 key!1652 (hashF!13328 thiss!41921)) lt!1962508)))

(declare-fun b!4810358 () Bool)

(assert (=> b!4810358 (= e!3004914 (isDefined!10443 (getPair!966 (apply!13146 lt!1962434 (hash!5126 (hashF!13328 thiss!41921) key!1652)) key!1652)))))

(assert (= (and d!1540319 res!2046218) b!4810358))

(assert (=> d!1540319 m!5796198))

(assert (=> d!1540319 m!5796198))

(declare-fun m!5796326 () Bool)

(assert (=> d!1540319 m!5796326))

(declare-fun m!5796328 () Bool)

(assert (=> d!1540319 m!5796328))

(declare-fun m!5796330 () Bool)

(assert (=> d!1540319 m!5796330))

(assert (=> b!4810358 m!5796198))

(assert (=> b!4810358 m!5796198))

(declare-fun m!5796332 () Bool)

(assert (=> b!4810358 m!5796332))

(assert (=> b!4810358 m!5796332))

(declare-fun m!5796334 () Bool)

(assert (=> b!4810358 m!5796334))

(assert (=> b!4810358 m!5796334))

(declare-fun m!5796336 () Bool)

(assert (=> b!4810358 m!5796336))

(assert (=> b!4810220 d!1540319))

(declare-fun bs!1160081 () Bool)

(declare-fun d!1540321 () Bool)

(assert (= bs!1160081 (and d!1540321 b!4810234)))

(declare-fun lambda!233754 () Int)

(assert (=> bs!1160081 (= lambda!233754 lambda!233742)))

(declare-fun bs!1160082 () Bool)

(assert (= bs!1160082 (and d!1540321 d!1540303)))

(assert (=> bs!1160082 (= lambda!233754 lambda!233745)))

(declare-fun bs!1160083 () Bool)

(assert (= bs!1160083 (and d!1540321 b!4810354)))

(assert (=> bs!1160083 (= lambda!233754 lambda!233748)))

(declare-fun bs!1160084 () Bool)

(assert (= bs!1160084 (and d!1540321 d!1540319)))

(assert (=> bs!1160084 (= lambda!233754 lambda!233751)))

(assert (=> d!1540321 (contains!18244 (extractMap!2538 (toList!7134 lt!1962434)) key!1652)))

(declare-fun lt!1962511 () Unit!141533)

(declare-fun choose!34853 (ListLongMap!5589 K!16129 Hashable!7056) Unit!141533)

(assert (=> d!1540321 (= lt!1962511 (choose!34853 lt!1962434 key!1652 (hashF!13328 thiss!41921)))))

(assert (=> d!1540321 (forall!12393 (toList!7134 lt!1962434) lambda!233754)))

(assert (=> d!1540321 (= (lemmaInLongMapThenInGenericMap!220 lt!1962434 key!1652 (hashF!13328 thiss!41921)) lt!1962511)))

(declare-fun bs!1160085 () Bool)

(assert (= bs!1160085 d!1540321))

(assert (=> bs!1160085 m!5796194))

(assert (=> bs!1160085 m!5796194))

(assert (=> bs!1160085 m!5796196))

(declare-fun m!5796338 () Bool)

(assert (=> bs!1160085 m!5796338))

(declare-fun m!5796340 () Bool)

(assert (=> bs!1160085 m!5796340))

(assert (=> b!4810235 d!1540321))

(declare-fun tp!1360439 () Bool)

(declare-fun b!4810363 () Bool)

(declare-fun e!3004917 () Bool)

(declare-fun tp_is_empty!33965 () Bool)

(assert (=> b!4810363 (= e!3004917 (and tp_is_empty!33963 tp_is_empty!33965 tp!1360439))))

(assert (=> b!4810218 (= tp!1360430 e!3004917)))

(assert (= (and b!4810218 ((_ is Cons!54520) mapDefault!22301)) b!4810363))

(declare-fun b!4810364 () Bool)

(declare-fun e!3004918 () Bool)

(declare-fun tp!1360440 () Bool)

(assert (=> b!4810364 (= e!3004918 (and tp_is_empty!33963 tp_is_empty!33965 tp!1360440))))

(assert (=> b!4810231 (= tp!1360431 e!3004918)))

(assert (= (and b!4810231 ((_ is Cons!54520) (zeroValue!5333 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921))))))) b!4810364))

(declare-fun tp!1360441 () Bool)

(declare-fun e!3004919 () Bool)

(declare-fun b!4810365 () Bool)

(assert (=> b!4810365 (= e!3004919 (and tp_is_empty!33963 tp_is_empty!33965 tp!1360441))))

(assert (=> b!4810231 (= tp!1360434 e!3004919)))

(assert (= (and b!4810231 ((_ is Cons!54520) (minValue!5333 (v!48823 (underlying!10297 (v!48824 (underlying!10298 thiss!41921))))))) b!4810365))

(declare-fun tp!1360448 () Bool)

(declare-fun e!3004924 () Bool)

(declare-fun b!4810372 () Bool)

(assert (=> b!4810372 (= e!3004924 (and tp_is_empty!33963 tp_is_empty!33965 tp!1360448))))

(declare-fun mapNonEmpty!22304 () Bool)

(declare-fun mapRes!22304 () Bool)

(declare-fun tp!1360450 () Bool)

(assert (=> mapNonEmpty!22304 (= mapRes!22304 (and tp!1360450 e!3004924))))

(declare-fun mapKey!22304 () (_ BitVec 32))

(declare-fun mapValue!22304 () List!54644)

(declare-fun mapRest!22304 () (Array (_ BitVec 32) List!54644))

(assert (=> mapNonEmpty!22304 (= mapRest!22301 (store mapRest!22304 mapKey!22304 mapValue!22304))))

(declare-fun mapIsEmpty!22304 () Bool)

(assert (=> mapIsEmpty!22304 mapRes!22304))

(declare-fun condMapEmpty!22304 () Bool)

(declare-fun mapDefault!22304 () List!54644)

(assert (=> mapNonEmpty!22301 (= condMapEmpty!22304 (= mapRest!22301 ((as const (Array (_ BitVec 32) List!54644)) mapDefault!22304)))))

(declare-fun e!3004925 () Bool)

(assert (=> mapNonEmpty!22301 (= tp!1360432 (and e!3004925 mapRes!22304))))

(declare-fun b!4810373 () Bool)

(declare-fun tp!1360449 () Bool)

(assert (=> b!4810373 (= e!3004925 (and tp_is_empty!33963 tp_is_empty!33965 tp!1360449))))

(assert (= (and mapNonEmpty!22301 condMapEmpty!22304) mapIsEmpty!22304))

(assert (= (and mapNonEmpty!22301 (not condMapEmpty!22304)) mapNonEmpty!22304))

(assert (= (and mapNonEmpty!22304 ((_ is Cons!54520) mapValue!22304)) b!4810372))

(assert (= (and mapNonEmpty!22301 ((_ is Cons!54520) mapDefault!22304)) b!4810373))

(declare-fun m!5796342 () Bool)

(assert (=> mapNonEmpty!22304 m!5796342))

(declare-fun e!3004926 () Bool)

(declare-fun b!4810374 () Bool)

(declare-fun tp!1360451 () Bool)

(assert (=> b!4810374 (= e!3004926 (and tp_is_empty!33963 tp_is_empty!33965 tp!1360451))))

(assert (=> mapNonEmpty!22301 (= tp!1360435 e!3004926)))

(assert (= (and mapNonEmpty!22301 ((_ is Cons!54520) mapValue!22301)) b!4810374))

(declare-fun b_lambda!188209 () Bool)

(assert (= b_lambda!188205 (or b!4810234 b_lambda!188209)))

(declare-fun bs!1160086 () Bool)

(declare-fun d!1540323 () Bool)

(assert (= bs!1160086 (and d!1540323 b!4810234)))

(assert (=> bs!1160086 (= (dynLambda!22134 lambda!233742 lt!1962433) (noDuplicateKeys!2388 (_2!31979 lt!1962433)))))

(declare-fun m!5796344 () Bool)

(assert (=> bs!1160086 m!5796344))

(assert (=> d!1540279 d!1540323))

(declare-fun b_lambda!188211 () Bool)

(assert (= b_lambda!188207 (or (and b!4810231 b_free!130123) b_lambda!188211)))

(check-sat (not b!4810364) (not d!1540291) (not mapNonEmpty!22304) (not b!4810354) (not d!1540279) (not b!4810312) (not b!4810313) (not b!4810279) (not b_lambda!188211) (not d!1540275) (not d!1540303) (not b!4810242) (not b!4810365) (not d!1540313) (not b!4810373) (not d!1540307) (not d!1540311) (not d!1540319) (not b!4810259) (not b!4810315) (not d!1540281) (not d!1540305) (not b!4810244) (not b!4810348) (not b!4810343) (not b!4810349) (not b!4810291) (not b!4810319) (not b!4810318) (not d!1540309) (not bs!1160086) b_and!341909 (not b!4810286) b_and!341907 (not b!4810252) (not b!4810337) (not bm!335737) (not b!4810374) (not d!1540283) (not b!4810372) (not b_next!130913) (not d!1540321) (not b_lambda!188209) (not b!4810265) (not d!1540297) (not b!4810283) (not b!4810355) (not b!4810340) (not d!1540289) tp_is_empty!33963 (not b!4810314) (not d!1540277) (not d!1540285) (not b!4810268) (not d!1540317) (not b!4810358) (not b!4810317) (not b!4810336) tp_is_empty!33965 (not b!4810338) (not b!4810363) (not b_next!130915) (not b!4810247) (not d!1540295) (not tb!257531))
(check-sat b_and!341909 b_and!341907 (not b_next!130913) (not b_next!130915))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!416754 () Bool)

(assert start!416754)

(declare-fun b!4327324 () Bool)

(declare-fun b_free!129133 () Bool)

(declare-fun b_next!129837 () Bool)

(assert (=> b!4327324 (= b_free!129133 (not b_next!129837))))

(declare-fun tp!1327913 () Bool)

(declare-fun b_and!340723 () Bool)

(assert (=> b!4327324 (= tp!1327913 b_and!340723)))

(declare-fun b!4327322 () Bool)

(declare-datatypes ((V!9951 0))(
  ( (V!9952 (val!16042 Int)) )
))
(declare-datatypes ((array!17450 0))(
  ( (array!17451 (arr!7787 (Array (_ BitVec 32) V!9951)) (size!35827 (_ BitVec 32))) )
))
(declare-datatypes ((array!17452 0))(
  ( (array!17453 (arr!7788 (Array (_ BitVec 32) (_ BitVec 64))) (size!35828 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!9602 0))(
  ( (LongMapFixedSize!9603 (defaultEntry!5207 Int) (mask!13466 (_ BitVec 32)) (extraKeys!5066 (_ BitVec 32)) (zeroValue!5078 V!9951) (minValue!5078 V!9951) (_size!9633 (_ BitVec 32)) (_keys!5128 array!17452) (_values!5102 array!17450) (_vacant!4865 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!18983 0))(
  ( (Cell!18984 (v!42981 LongMapFixedSize!9602)) )
))
(declare-datatypes ((MutLongMap!4801 0))(
  ( (LongMap!4801 (underlying!9816 Cell!18983)) (MutLongMapExt!4800 (__x!30398 Int)) )
))
(declare-datatypes ((tuple2!47468 0))(
  ( (tuple2!47469 (_1!27024 Bool) (_2!27024 MutLongMap!4801)) )
))
(declare-fun e!2692668 () tuple2!47468)

(declare-fun thiss!47260 () MutLongMap!4801)

(assert (=> b!4327322 (= e!2692668 (tuple2!47469 true thiss!47260))))

(declare-fun b!4327323 () Bool)

(declare-fun e!2692670 () Bool)

(declare-fun e!2692664 () Bool)

(assert (=> b!4327323 (= e!2692670 e!2692664)))

(declare-fun tp_is_empty!24271 () Bool)

(declare-fun e!2692666 () Bool)

(declare-fun array_inv!5609 (array!17452) Bool)

(declare-fun array_inv!5610 (array!17450) Bool)

(assert (=> b!4327324 (= e!2692664 (and tp!1327913 tp_is_empty!24271 (array_inv!5609 (_keys!5128 (v!42981 (underlying!9816 thiss!47260)))) (array_inv!5610 (_values!5102 (v!42981 (underlying!9816 thiss!47260)))) e!2692666))))

(declare-fun mapIsEmpty!21373 () Bool)

(declare-fun mapRes!21373 () Bool)

(assert (=> mapIsEmpty!21373 mapRes!21373))

(declare-fun mapNonEmpty!21373 () Bool)

(declare-fun tp!1327912 () Bool)

(assert (=> mapNonEmpty!21373 (= mapRes!21373 (and tp!1327912 tp_is_empty!24271))))

(declare-fun mapRest!21373 () (Array (_ BitVec 32) V!9951))

(declare-fun mapValue!21373 () V!9951)

(declare-fun mapKey!21373 () (_ BitVec 32))

(assert (=> mapNonEmpty!21373 (= (arr!7787 (_values!5102 (v!42981 (underlying!9816 thiss!47260)))) (store mapRest!21373 mapKey!21373 mapValue!21373))))

(declare-fun b!4327325 () Bool)

(declare-fun repack!107 (MutLongMap!4801) tuple2!47468)

(assert (=> b!4327325 (= e!2692668 (repack!107 thiss!47260))))

(declare-fun b!4327326 () Bool)

(declare-fun res!1773286 () Bool)

(declare-fun e!2692669 () Bool)

(assert (=> b!4327326 (=> (not res!1773286) (not e!2692669))))

(declare-fun valid!3820 (MutLongMap!4801) Bool)

(assert (=> b!4327326 (= res!1773286 (valid!3820 thiss!47260))))

(declare-fun b!4327327 () Bool)

(assert (=> b!4327327 (= e!2692666 (and tp_is_empty!24271 mapRes!21373))))

(declare-fun condMapEmpty!21373 () Bool)

(declare-fun mapDefault!21373 () V!9951)

(assert (=> b!4327327 (= condMapEmpty!21373 (= (arr!7787 (_values!5102 (v!42981 (underlying!9816 thiss!47260)))) ((as const (Array (_ BitVec 32) V!9951)) mapDefault!21373)))))

(declare-fun res!1773285 () Bool)

(assert (=> start!416754 (=> (not res!1773285) (not e!2692669))))

(get-info :version)

(assert (=> start!416754 (= res!1773285 ((_ is LongMap!4801) thiss!47260))))

(assert (=> start!416754 e!2692669))

(declare-fun e!2692665 () Bool)

(assert (=> start!416754 e!2692665))

(declare-fun b!4327328 () Bool)

(assert (=> b!4327328 (= e!2692669 (not ((_ is LongMap!4801) (_2!27024 e!2692668))))))

(declare-fun c!736271 () Bool)

(declare-fun imbalanced!104 (MutLongMap!4801) Bool)

(assert (=> b!4327328 (= c!736271 (imbalanced!104 thiss!47260))))

(declare-fun b!4327329 () Bool)

(assert (=> b!4327329 (= e!2692665 e!2692670)))

(assert (= (and start!416754 res!1773285) b!4327326))

(assert (= (and b!4327326 res!1773286) b!4327328))

(assert (= (and b!4327328 c!736271) b!4327325))

(assert (= (and b!4327328 (not c!736271)) b!4327322))

(assert (= (and b!4327327 condMapEmpty!21373) mapIsEmpty!21373))

(assert (= (and b!4327327 (not condMapEmpty!21373)) mapNonEmpty!21373))

(assert (= b!4327324 b!4327327))

(assert (= b!4327323 b!4327324))

(assert (= b!4327329 b!4327323))

(assert (= (and start!416754 ((_ is LongMap!4801) thiss!47260)) b!4327329))

(declare-fun m!4922211 () Bool)

(assert (=> b!4327326 m!4922211))

(declare-fun m!4922213 () Bool)

(assert (=> b!4327328 m!4922213))

(declare-fun m!4922215 () Bool)

(assert (=> mapNonEmpty!21373 m!4922215))

(declare-fun m!4922217 () Bool)

(assert (=> b!4327324 m!4922217))

(declare-fun m!4922219 () Bool)

(assert (=> b!4327324 m!4922219))

(declare-fun m!4922221 () Bool)

(assert (=> b!4327325 m!4922221))

(check-sat (not b!4327325) (not b!4327324) (not b!4327326) b_and!340723 (not b!4327328) (not mapNonEmpty!21373) tp_is_empty!24271 (not b_next!129837))
(check-sat b_and!340723 (not b_next!129837))
(get-model)

(declare-fun d!1272009 () Bool)

(declare-fun valid!3821 (LongMapFixedSize!9602) Bool)

(assert (=> d!1272009 (= (valid!3820 thiss!47260) (valid!3821 (v!42981 (underlying!9816 thiss!47260))))))

(declare-fun bs!607542 () Bool)

(assert (= bs!607542 d!1272009))

(declare-fun m!4922223 () Bool)

(assert (=> bs!607542 m!4922223))

(assert (=> b!4327326 d!1272009))

(declare-fun bm!300738 () Bool)

(declare-fun call!300743 () LongMapFixedSize!9602)

(declare-fun call!300745 () LongMapFixedSize!9602)

(assert (=> bm!300738 (= call!300743 call!300745)))

(declare-fun b!4327350 () Bool)

(declare-fun e!2692688 () Bool)

(declare-fun e!2692684 () Bool)

(assert (=> b!4327350 (= e!2692688 e!2692684)))

(declare-fun res!1773291 () Bool)

(assert (=> b!4327350 (=> res!1773291 e!2692684)))

(declare-fun lt!1544405 () tuple2!47468)

(assert (=> b!4327350 (= res!1773291 (= (_1!27024 lt!1544405) false))))

(declare-fun d!1272011 () Bool)

(assert (=> d!1272011 e!2692688))

(declare-fun res!1773292 () Bool)

(assert (=> d!1272011 (=> (not res!1773292) (not e!2692688))))

(assert (=> d!1272011 (= res!1773292 ((_ is LongMap!4801) (_2!27024 lt!1544405)))))

(declare-datatypes ((tuple3!5514 0))(
  ( (tuple3!5515 (_1!27025 Bool) (_2!27025 Cell!18983) (_3!3290 MutLongMap!4801)) )
))
(declare-fun lt!1544396 () tuple3!5514)

(assert (=> d!1272011 (= lt!1544405 (tuple2!47469 (_1!27025 lt!1544396) (_3!3290 lt!1544396)))))

(declare-fun e!2692685 () tuple3!5514)

(assert (=> d!1272011 (= lt!1544396 e!2692685)))

(declare-fun c!736281 () Bool)

(declare-datatypes ((tuple2!47470 0))(
  ( (tuple2!47471 (_1!27026 Bool) (_2!27026 Cell!18983)) )
))
(declare-fun lt!1544397 () tuple2!47470)

(assert (=> d!1272011 (= c!736281 (not (_1!27026 lt!1544397)))))

(declare-fun e!2692683 () tuple2!47470)

(assert (=> d!1272011 (= lt!1544397 e!2692683)))

(declare-fun c!736282 () Bool)

(assert (=> d!1272011 (= c!736282 (and (not (= (bvand (extraKeys!5066 (v!42981 (underlying!9816 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5066 (v!42981 (underlying!9816 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun lt!1544404 () Cell!18983)

(declare-fun lt!1544399 () (_ BitVec 32))

(declare-fun getNewLongMapFixedSize!31 ((_ BitVec 32) Int) LongMapFixedSize!9602)

(assert (=> d!1272011 (= lt!1544404 (Cell!18984 (getNewLongMapFixedSize!31 lt!1544399 (defaultEntry!5207 (v!42981 (underlying!9816 thiss!47260))))))))

(declare-fun computeNewMask!17 (MutLongMap!4801 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!1272011 (= lt!1544399 (computeNewMask!17 thiss!47260 (mask!13466 (v!42981 (underlying!9816 thiss!47260))) (_vacant!4865 (v!42981 (underlying!9816 thiss!47260))) (_size!9633 (v!42981 (underlying!9816 thiss!47260)))))))

(assert (=> d!1272011 (valid!3820 thiss!47260)))

(assert (=> d!1272011 (= (repack!107 thiss!47260) lt!1544405)))

(declare-fun b!4327351 () Bool)

(declare-datatypes ((tuple2!47472 0))(
  ( (tuple2!47473 (_1!27027 (_ BitVec 64)) (_2!27027 V!9951)) )
))
(declare-datatypes ((List!48578 0))(
  ( (Nil!48454) (Cons!48454 (h!53923 tuple2!47472) (t!355488 List!48578)) )
))
(declare-datatypes ((ListLongMap!1241 0))(
  ( (ListLongMap!1242 (toList!2621 List!48578)) )
))
(declare-fun map!10505 (MutLongMap!4801) ListLongMap!1241)

(assert (=> b!4327351 (= e!2692684 (= (map!10505 (_2!27024 lt!1544405)) (map!10505 thiss!47260)))))

(declare-fun bm!300739 () Bool)

(declare-datatypes ((tuple2!47474 0))(
  ( (tuple2!47475 (_1!27028 Bool) (_2!27028 LongMapFixedSize!9602)) )
))
(declare-fun call!300744 () tuple2!47474)

(declare-fun call!300746 () tuple2!47474)

(assert (=> bm!300739 (= call!300744 call!300746)))

(declare-fun c!736283 () Bool)

(declare-fun lt!1544403 () tuple2!47474)

(declare-fun bm!300740 () Bool)

(declare-fun update!573 (LongMapFixedSize!9602 (_ BitVec 64) V!9951) tuple2!47474)

(assert (=> bm!300740 (= call!300746 (update!573 (ite c!736282 (_2!27028 lt!1544403) call!300743) (ite c!736282 #b1000000000000000000000000000000000000000000000000000000000000000 (ite c!736283 #b0000000000000000000000000000000000000000000000000000000000000000 #b1000000000000000000000000000000000000000000000000000000000000000)) (ite c!736282 (minValue!5078 (v!42981 (underlying!9816 thiss!47260))) (ite c!736283 (zeroValue!5078 (v!42981 (underlying!9816 thiss!47260))) (minValue!5078 (v!42981 (underlying!9816 thiss!47260)))))))))

(declare-fun bm!300741 () Bool)

(assert (=> bm!300741 (= call!300745 (getNewLongMapFixedSize!31 lt!1544399 (defaultEntry!5207 (v!42981 (underlying!9816 thiss!47260)))))))

(declare-fun b!4327352 () Bool)

(assert (=> b!4327352 (= e!2692685 (tuple3!5515 false (_2!27026 lt!1544397) thiss!47260))))

(declare-fun b!4327353 () Bool)

(declare-fun c!736280 () Bool)

(assert (=> b!4327353 (= c!736280 (and (not (= (bvand (extraKeys!5066 (v!42981 (underlying!9816 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5066 (v!42981 (underlying!9816 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!2692687 () tuple2!47470)

(declare-fun e!2692686 () tuple2!47470)

(assert (=> b!4327353 (= e!2692687 e!2692686)))

(declare-fun b!4327354 () Bool)

(assert (=> b!4327354 (= e!2692686 (tuple2!47471 true lt!1544404))))

(declare-fun b!4327355 () Bool)

(declare-fun lt!1544401 () tuple2!47474)

(assert (=> b!4327355 (= e!2692686 (tuple2!47471 (_1!27028 lt!1544401) (Cell!18984 (_2!27028 lt!1544401))))))

(assert (=> b!4327355 (= lt!1544401 call!300744)))

(declare-fun b!4327356 () Bool)

(declare-fun lt!1544402 () tuple2!47474)

(assert (=> b!4327356 (= e!2692683 (tuple2!47471 (and (_1!27028 lt!1544403) (_1!27028 lt!1544402)) (Cell!18984 (_2!27028 lt!1544402))))))

(assert (=> b!4327356 (= lt!1544403 (update!573 call!300745 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5078 (v!42981 (underlying!9816 thiss!47260)))))))

(assert (=> b!4327356 (= lt!1544402 call!300746)))

(declare-fun b!4327357 () Bool)

(declare-fun lt!1544400 () tuple2!47474)

(assert (=> b!4327357 (= e!2692685 (ite (_1!27028 lt!1544400) (tuple3!5515 true (underlying!9816 thiss!47260) (LongMap!4801 (Cell!18984 (_2!27028 lt!1544400)))) (tuple3!5515 false (Cell!18984 (_2!27028 lt!1544400)) thiss!47260)))))

(declare-fun repackFrom!17 (MutLongMap!4801 LongMapFixedSize!9602 (_ BitVec 32)) tuple2!47474)

(assert (=> b!4327357 (= lt!1544400 (repackFrom!17 thiss!47260 (v!42981 (_2!27026 lt!1544397)) (bvsub (size!35828 (_keys!5128 (v!42981 (underlying!9816 thiss!47260)))) #b00000000000000000000000000000001)))))

(declare-fun b!4327358 () Bool)

(assert (=> b!4327358 (= e!2692683 e!2692687)))

(assert (=> b!4327358 (= c!736283 (and (not (= (bvand (extraKeys!5066 (v!42981 (underlying!9816 thiss!47260))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5066 (v!42981 (underlying!9816 thiss!47260))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!4327359 () Bool)

(declare-fun lt!1544398 () tuple2!47474)

(assert (=> b!4327359 (= lt!1544398 call!300744)))

(assert (=> b!4327359 (= e!2692687 (tuple2!47471 (_1!27028 lt!1544398) (Cell!18984 (_2!27028 lt!1544398))))))

(assert (= (and d!1272011 c!736282) b!4327356))

(assert (= (and d!1272011 (not c!736282)) b!4327358))

(assert (= (and b!4327358 c!736283) b!4327359))

(assert (= (and b!4327358 (not c!736283)) b!4327353))

(assert (= (and b!4327353 c!736280) b!4327355))

(assert (= (and b!4327353 (not c!736280)) b!4327354))

(assert (= (or b!4327359 b!4327355) bm!300738))

(assert (= (or b!4327359 b!4327355) bm!300739))

(assert (= (or b!4327356 bm!300738) bm!300741))

(assert (= (or b!4327356 bm!300739) bm!300740))

(assert (= (and d!1272011 c!736281) b!4327352))

(assert (= (and d!1272011 (not c!736281)) b!4327357))

(assert (= (and d!1272011 res!1773292) b!4327350))

(assert (= (and b!4327350 (not res!1773291)) b!4327351))

(declare-fun m!4922225 () Bool)

(assert (=> d!1272011 m!4922225))

(declare-fun m!4922227 () Bool)

(assert (=> d!1272011 m!4922227))

(assert (=> d!1272011 m!4922211))

(declare-fun m!4922229 () Bool)

(assert (=> b!4327357 m!4922229))

(declare-fun m!4922231 () Bool)

(assert (=> b!4327351 m!4922231))

(declare-fun m!4922233 () Bool)

(assert (=> b!4327351 m!4922233))

(declare-fun m!4922235 () Bool)

(assert (=> bm!300740 m!4922235))

(declare-fun m!4922237 () Bool)

(assert (=> b!4327356 m!4922237))

(assert (=> bm!300741 m!4922225))

(assert (=> b!4327325 d!1272011))

(declare-fun d!1272013 () Bool)

(assert (=> d!1272013 (= (array_inv!5609 (_keys!5128 (v!42981 (underlying!9816 thiss!47260)))) (bvsge (size!35828 (_keys!5128 (v!42981 (underlying!9816 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4327324 d!1272013))

(declare-fun d!1272015 () Bool)

(assert (=> d!1272015 (= (array_inv!5610 (_values!5102 (v!42981 (underlying!9816 thiss!47260)))) (bvsge (size!35827 (_values!5102 (v!42981 (underlying!9816 thiss!47260)))) #b00000000000000000000000000000000))))

(assert (=> b!4327324 d!1272015))

(declare-fun d!1272017 () Bool)

(assert (=> d!1272017 (= (imbalanced!104 thiss!47260) (or (bvsgt (bvmul #b00000000000000000000000000000010 (bvadd (_size!9633 (v!42981 (underlying!9816 thiss!47260))) (_vacant!4865 (v!42981 (underlying!9816 thiss!47260))))) (mask!13466 (v!42981 (underlying!9816 thiss!47260)))) (bvsgt (_vacant!4865 (v!42981 (underlying!9816 thiss!47260))) (_size!9633 (v!42981 (underlying!9816 thiss!47260))))))))

(assert (=> b!4327328 d!1272017))

(declare-fun condMapEmpty!21376 () Bool)

(declare-fun mapDefault!21376 () V!9951)

(assert (=> mapNonEmpty!21373 (= condMapEmpty!21376 (= mapRest!21373 ((as const (Array (_ BitVec 32) V!9951)) mapDefault!21376)))))

(declare-fun mapRes!21376 () Bool)

(assert (=> mapNonEmpty!21373 (= tp!1327912 (and tp_is_empty!24271 mapRes!21376))))

(declare-fun mapIsEmpty!21376 () Bool)

(assert (=> mapIsEmpty!21376 mapRes!21376))

(declare-fun mapNonEmpty!21376 () Bool)

(declare-fun tp!1327916 () Bool)

(assert (=> mapNonEmpty!21376 (= mapRes!21376 (and tp!1327916 tp_is_empty!24271))))

(declare-fun mapValue!21376 () V!9951)

(declare-fun mapKey!21376 () (_ BitVec 32))

(declare-fun mapRest!21376 () (Array (_ BitVec 32) V!9951))

(assert (=> mapNonEmpty!21376 (= mapRest!21373 (store mapRest!21376 mapKey!21376 mapValue!21376))))

(assert (= (and mapNonEmpty!21373 condMapEmpty!21376) mapIsEmpty!21376))

(assert (= (and mapNonEmpty!21373 (not condMapEmpty!21376)) mapNonEmpty!21376))

(declare-fun m!4922239 () Bool)

(assert (=> mapNonEmpty!21376 m!4922239))

(check-sat (not d!1272011) (not bm!300741) (not bm!300740) (not b!4327356) (not d!1272009) (not mapNonEmpty!21376) (not b!4327357) b_and!340723 (not b!4327351) tp_is_empty!24271 (not b_next!129837))
(check-sat b_and!340723 (not b_next!129837))

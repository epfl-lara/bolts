; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!242102 () Bool)

(assert start!242102)

(declare-fun b!2481362 () Bool)

(declare-fun b_free!72289 () Bool)

(declare-fun b_next!72993 () Bool)

(assert (=> b!2481362 (= b_free!72289 (not b_next!72993))))

(declare-fun tp!794333 () Bool)

(declare-fun b_and!188535 () Bool)

(assert (=> b!2481362 (= tp!794333 b_and!188535)))

(declare-fun b!2481358 () Bool)

(declare-fun b_free!72291 () Bool)

(declare-fun b_next!72995 () Bool)

(assert (=> b!2481358 (= b_free!72291 (not b_next!72995))))

(declare-fun tp!794327 () Bool)

(declare-fun b_and!188537 () Bool)

(assert (=> b!2481358 (= tp!794327 b_and!188537)))

(declare-fun b!2481357 () Bool)

(declare-fun res!1050490 () Bool)

(declare-fun e!1575066 () Bool)

(assert (=> b!2481357 (=> (not res!1050490) (not e!1575066))))

(declare-datatypes ((Hashable!3268 0))(
  ( (HashableExt!3267 (__x!18980 Int)) )
))
(declare-datatypes ((K!5480 0))(
  ( (K!5481 (val!8859 Int)) )
))
(declare-datatypes ((V!5682 0))(
  ( (V!5683 (val!8860 Int)) )
))
(declare-datatypes ((tuple2!28808 0))(
  ( (tuple2!28809 (_1!16945 K!5480) (_2!16945 V!5682)) )
))
(declare-datatypes ((List!29196 0))(
  ( (Nil!29096) (Cons!29096 (h!34502 tuple2!28808) (t!210853 List!29196)) )
))
(declare-datatypes ((array!11891 0))(
  ( (array!11892 (arr!5306 (Array (_ BitVec 32) List!29196)) (size!22725 (_ BitVec 32))) )
))
(declare-datatypes ((array!11893 0))(
  ( (array!11894 (arr!5307 (Array (_ BitVec 32) (_ BitVec 64))) (size!22726 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6716 0))(
  ( (LongMapFixedSize!6717 (defaultEntry!3732 Int) (mask!8526 (_ BitVec 32)) (extraKeys!3606 (_ BitVec 32)) (zeroValue!3616 List!29196) (minValue!3616 List!29196) (_size!6763 (_ BitVec 32)) (_keys!3655 array!11893) (_values!3638 array!11891) (_vacant!3419 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!13249 0))(
  ( (Cell!13250 (v!31430 LongMapFixedSize!6716)) )
))
(declare-datatypes ((MutLongMap!3358 0))(
  ( (LongMap!3358 (underlying!6923 Cell!13249)) (MutLongMapExt!3357 (__x!18981 Int)) )
))
(declare-datatypes ((Cell!13251 0))(
  ( (Cell!13252 (v!31431 MutLongMap!3358)) )
))
(declare-datatypes ((MutableMap!3268 0))(
  ( (MutableMapExt!3267 (__x!18982 Int)) (HashMap!3268 (underlying!6924 Cell!13251) (hashF!5226 Hashable!3268) (_size!6764 (_ BitVec 32)) (defaultValue!3430 Int)) )
))
(declare-fun thiss!42540 () MutableMap!3268)

(declare-fun valid!2562 (MutableMap!3268) Bool)

(assert (=> b!2481357 (= res!1050490 (valid!2562 thiss!42540))))

(declare-fun res!1050491 () Bool)

(assert (=> start!242102 (=> (not res!1050491) (not e!1575066))))

(get-info :version)

(assert (=> start!242102 (= res!1050491 ((_ is HashMap!3268) thiss!42540))))

(assert (=> start!242102 e!1575066))

(declare-fun e!1575064 () Bool)

(assert (=> start!242102 e!1575064))

(declare-fun tp_is_empty!12241 () Bool)

(assert (=> start!242102 tp_is_empty!12241))

(declare-fun e!1575068 () Bool)

(assert (=> b!2481358 (= e!1575064 (and e!1575068 tp!794327))))

(declare-fun b!2481359 () Bool)

(declare-fun e!1575061 () Bool)

(declare-fun e!1575065 () Bool)

(assert (=> b!2481359 (= e!1575061 e!1575065)))

(declare-fun b!2481360 () Bool)

(declare-fun res!1050488 () Bool)

(assert (=> b!2481360 (=> (not res!1050488) (not e!1575066))))

(declare-fun key!2246 () K!5480)

(declare-fun contains!5091 (MutableMap!3268 K!5480) Bool)

(assert (=> b!2481360 (= res!1050488 (not (contains!5091 thiss!42540 key!2246)))))

(declare-fun b!2481361 () Bool)

(declare-fun e!1575063 () Bool)

(declare-datatypes ((tuple2!28810 0))(
  ( (tuple2!28811 (_1!16946 (_ BitVec 64)) (_2!16946 List!29196)) )
))
(declare-datatypes ((List!29197 0))(
  ( (Nil!29097) (Cons!29097 (h!34503 tuple2!28810) (t!210854 List!29197)) )
))
(declare-datatypes ((ListLongMap!519 0))(
  ( (ListLongMap!520 (toList!1572 List!29197)) )
))
(declare-fun lt!888204 () ListLongMap!519)

(declare-fun allKeysSameHashInMap!164 (ListLongMap!519 Hashable!3268) Bool)

(assert (=> b!2481361 (= e!1575063 (not (allKeysSameHashInMap!164 lt!888204 (hashF!5226 thiss!42540))))))

(declare-fun tp!794329 () Bool)

(declare-fun tp!794332 () Bool)

(declare-fun e!1575067 () Bool)

(declare-fun e!1575069 () Bool)

(declare-fun array_inv!3807 (array!11893) Bool)

(declare-fun array_inv!3808 (array!11891) Bool)

(assert (=> b!2481362 (= e!1575067 (and tp!794333 tp!794329 tp!794332 (array_inv!3807 (_keys!3655 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540)))))) (array_inv!3808 (_values!3638 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540)))))) e!1575069))))

(declare-fun b!2481363 () Bool)

(declare-fun tp!794328 () Bool)

(declare-fun mapRes!15535 () Bool)

(assert (=> b!2481363 (= e!1575069 (and tp!794328 mapRes!15535))))

(declare-fun condMapEmpty!15535 () Bool)

(declare-fun mapDefault!15535 () List!29196)

(assert (=> b!2481363 (= condMapEmpty!15535 (= (arr!5306 (_values!3638 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540)))))) ((as const (Array (_ BitVec 32) List!29196)) mapDefault!15535)))))

(declare-fun mapNonEmpty!15535 () Bool)

(declare-fun tp!794330 () Bool)

(declare-fun tp!794331 () Bool)

(assert (=> mapNonEmpty!15535 (= mapRes!15535 (and tp!794330 tp!794331))))

(declare-fun mapKey!15535 () (_ BitVec 32))

(declare-fun mapRest!15535 () (Array (_ BitVec 32) List!29196))

(declare-fun mapValue!15535 () List!29196)

(assert (=> mapNonEmpty!15535 (= (arr!5306 (_values!3638 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540)))))) (store mapRest!15535 mapKey!15535 mapValue!15535))))

(declare-fun b!2481364 () Bool)

(declare-fun lt!888203 () MutLongMap!3358)

(assert (=> b!2481364 (= e!1575068 (and e!1575061 ((_ is LongMap!3358) lt!888203)))))

(assert (=> b!2481364 (= lt!888203 (v!31431 (underlying!6924 thiss!42540)))))

(declare-fun b!2481365 () Bool)

(assert (=> b!2481365 (= e!1575066 e!1575063)))

(declare-fun res!1050489 () Bool)

(assert (=> b!2481365 (=> (not res!1050489) (not e!1575063))))

(declare-fun lambda!93958 () Int)

(declare-fun forall!5968 (List!29197 Int) Bool)

(assert (=> b!2481365 (= res!1050489 (forall!5968 (toList!1572 lt!888204) lambda!93958))))

(declare-fun map!6186 (MutLongMap!3358) ListLongMap!519)

(assert (=> b!2481365 (= lt!888204 (map!6186 (v!31431 (underlying!6924 thiss!42540))))))

(declare-fun mapIsEmpty!15535 () Bool)

(assert (=> mapIsEmpty!15535 mapRes!15535))

(declare-fun b!2481366 () Bool)

(assert (=> b!2481366 (= e!1575065 e!1575067)))

(assert (= (and start!242102 res!1050491) b!2481357))

(assert (= (and b!2481357 res!1050490) b!2481360))

(assert (= (and b!2481360 res!1050488) b!2481365))

(assert (= (and b!2481365 res!1050489) b!2481361))

(assert (= (and b!2481363 condMapEmpty!15535) mapIsEmpty!15535))

(assert (= (and b!2481363 (not condMapEmpty!15535)) mapNonEmpty!15535))

(assert (= b!2481362 b!2481363))

(assert (= b!2481366 b!2481362))

(assert (= b!2481359 b!2481366))

(assert (= (and b!2481364 ((_ is LongMap!3358) (v!31431 (underlying!6924 thiss!42540)))) b!2481359))

(assert (= b!2481358 b!2481364))

(assert (= (and start!242102 ((_ is HashMap!3268) thiss!42540)) b!2481358))

(declare-fun m!2849369 () Bool)

(assert (=> b!2481360 m!2849369))

(declare-fun m!2849371 () Bool)

(assert (=> b!2481357 m!2849371))

(declare-fun m!2849373 () Bool)

(assert (=> b!2481362 m!2849373))

(declare-fun m!2849375 () Bool)

(assert (=> b!2481362 m!2849375))

(declare-fun m!2849377 () Bool)

(assert (=> mapNonEmpty!15535 m!2849377))

(declare-fun m!2849379 () Bool)

(assert (=> b!2481361 m!2849379))

(declare-fun m!2849381 () Bool)

(assert (=> b!2481365 m!2849381))

(declare-fun m!2849383 () Bool)

(assert (=> b!2481365 m!2849383))

(check-sat (not b_next!72993) (not b!2481357) (not mapNonEmpty!15535) b_and!188537 (not b_next!72995) (not b!2481363) (not b!2481360) (not b!2481365) tp_is_empty!12241 (not b!2481362) (not b!2481361) b_and!188535)
(check-sat b_and!188537 b_and!188535 (not b_next!72993) (not b_next!72995))
(get-model)

(declare-fun d!712794 () Bool)

(assert (=> d!712794 (= (array_inv!3807 (_keys!3655 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540)))))) (bvsge (size!22726 (_keys!3655 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2481362 d!712794))

(declare-fun d!712796 () Bool)

(assert (=> d!712796 (= (array_inv!3808 (_values!3638 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540)))))) (bvsge (size!22725 (_values!3638 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540)))))) #b00000000000000000000000000000000))))

(assert (=> b!2481362 d!712796))

(declare-fun bs!467413 () Bool)

(declare-fun d!712798 () Bool)

(assert (= bs!467413 (and d!712798 b!2481365)))

(declare-fun lambda!93961 () Int)

(assert (=> bs!467413 (not (= lambda!93961 lambda!93958))))

(assert (=> d!712798 true))

(assert (=> d!712798 (= (allKeysSameHashInMap!164 lt!888204 (hashF!5226 thiss!42540)) (forall!5968 (toList!1572 lt!888204) lambda!93961))))

(declare-fun bs!467414 () Bool)

(assert (= bs!467414 d!712798))

(declare-fun m!2849385 () Bool)

(assert (=> bs!467414 m!2849385))

(assert (=> b!2481361 d!712798))

(declare-fun bs!467415 () Bool)

(declare-fun b!2481373 () Bool)

(assert (= bs!467415 (and b!2481373 b!2481365)))

(declare-fun lambda!93964 () Int)

(assert (=> bs!467415 (= lambda!93964 lambda!93958)))

(declare-fun bs!467416 () Bool)

(assert (= bs!467416 (and b!2481373 d!712798)))

(assert (=> bs!467416 (not (= lambda!93964 lambda!93961))))

(declare-fun d!712800 () Bool)

(declare-fun res!1050496 () Bool)

(declare-fun e!1575072 () Bool)

(assert (=> d!712800 (=> (not res!1050496) (not e!1575072))))

(declare-fun valid!2563 (MutLongMap!3358) Bool)

(assert (=> d!712800 (= res!1050496 (valid!2563 (v!31431 (underlying!6924 thiss!42540))))))

(assert (=> d!712800 (= (valid!2562 thiss!42540) e!1575072)))

(declare-fun res!1050497 () Bool)

(assert (=> b!2481373 (=> (not res!1050497) (not e!1575072))))

(assert (=> b!2481373 (= res!1050497 (forall!5968 (toList!1572 (map!6186 (v!31431 (underlying!6924 thiss!42540)))) lambda!93964))))

(declare-fun b!2481374 () Bool)

(assert (=> b!2481374 (= e!1575072 (allKeysSameHashInMap!164 (map!6186 (v!31431 (underlying!6924 thiss!42540))) (hashF!5226 thiss!42540)))))

(assert (= (and d!712800 res!1050496) b!2481373))

(assert (= (and b!2481373 res!1050497) b!2481374))

(declare-fun m!2849387 () Bool)

(assert (=> d!712800 m!2849387))

(assert (=> b!2481373 m!2849383))

(declare-fun m!2849389 () Bool)

(assert (=> b!2481373 m!2849389))

(assert (=> b!2481374 m!2849383))

(assert (=> b!2481374 m!2849383))

(declare-fun m!2849391 () Bool)

(assert (=> b!2481374 m!2849391))

(assert (=> b!2481357 d!712800))

(declare-fun d!712802 () Bool)

(declare-fun res!1050502 () Bool)

(declare-fun e!1575077 () Bool)

(assert (=> d!712802 (=> res!1050502 e!1575077)))

(assert (=> d!712802 (= res!1050502 ((_ is Nil!29097) (toList!1572 lt!888204)))))

(assert (=> d!712802 (= (forall!5968 (toList!1572 lt!888204) lambda!93958) e!1575077)))

(declare-fun b!2481379 () Bool)

(declare-fun e!1575078 () Bool)

(assert (=> b!2481379 (= e!1575077 e!1575078)))

(declare-fun res!1050503 () Bool)

(assert (=> b!2481379 (=> (not res!1050503) (not e!1575078))))

(declare-fun dynLambda!12463 (Int tuple2!28810) Bool)

(assert (=> b!2481379 (= res!1050503 (dynLambda!12463 lambda!93958 (h!34503 (toList!1572 lt!888204))))))

(declare-fun b!2481380 () Bool)

(assert (=> b!2481380 (= e!1575078 (forall!5968 (t!210854 (toList!1572 lt!888204)) lambda!93958))))

(assert (= (and d!712802 (not res!1050502)) b!2481379))

(assert (= (and b!2481379 res!1050503) b!2481380))

(declare-fun b_lambda!76099 () Bool)

(assert (=> (not b_lambda!76099) (not b!2481379)))

(declare-fun m!2849393 () Bool)

(assert (=> b!2481379 m!2849393))

(declare-fun m!2849395 () Bool)

(assert (=> b!2481380 m!2849395))

(assert (=> b!2481365 d!712802))

(declare-fun d!712804 () Bool)

(declare-fun map!6187 (LongMapFixedSize!6716) ListLongMap!519)

(assert (=> d!712804 (= (map!6186 (v!31431 (underlying!6924 thiss!42540))) (map!6187 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540))))))))

(declare-fun bs!467417 () Bool)

(assert (= bs!467417 d!712804))

(declare-fun m!2849397 () Bool)

(assert (=> bs!467417 m!2849397))

(assert (=> b!2481365 d!712804))

(declare-fun bs!467418 () Bool)

(declare-fun b!2481404 () Bool)

(assert (= bs!467418 (and b!2481404 b!2481365)))

(declare-fun lambda!93967 () Int)

(assert (=> bs!467418 (= lambda!93967 lambda!93958)))

(declare-fun bs!467419 () Bool)

(assert (= bs!467419 (and b!2481404 d!712798)))

(assert (=> bs!467419 (not (= lambda!93967 lambda!93961))))

(declare-fun bs!467420 () Bool)

(assert (= bs!467420 (and b!2481404 b!2481373)))

(assert (=> bs!467420 (= lambda!93967 lambda!93964)))

(declare-fun e!1575098 () Bool)

(declare-fun b!2481403 () Bool)

(declare-fun lt!888256 () (_ BitVec 64))

(declare-datatypes ((Option!5746 0))(
  ( (None!5745) (Some!5745 (v!31432 tuple2!28808)) )
))
(declare-fun isDefined!4568 (Option!5746) Bool)

(declare-fun getPair!68 (List!29196 K!5480) Option!5746)

(declare-fun apply!6912 (MutLongMap!3358 (_ BitVec 64)) List!29196)

(assert (=> b!2481403 (= e!1575098 (isDefined!4568 (getPair!68 (apply!6912 (v!31431 (underlying!6924 thiss!42540)) lt!888256) key!2246)))))

(declare-datatypes ((Unit!42578 0))(
  ( (Unit!42579) )
))
(declare-fun e!1575093 () Unit!42578)

(declare-fun forallContained!854 (List!29197 Int tuple2!28810) Unit!42578)

(assert (=> b!2481404 (= e!1575093 (forallContained!854 (toList!1572 (map!6186 (v!31431 (underlying!6924 thiss!42540)))) lambda!93967 (tuple2!28811 lt!888256 (apply!6912 (v!31431 (underlying!6924 thiss!42540)) lt!888256))))))

(declare-fun c!394494 () Bool)

(declare-fun contains!5092 (List!29197 tuple2!28810) Bool)

(assert (=> b!2481404 (= c!394494 (not (contains!5092 (toList!1572 (map!6186 (v!31431 (underlying!6924 thiss!42540)))) (tuple2!28811 lt!888256 (apply!6912 (v!31431 (underlying!6924 thiss!42540)) lt!888256)))))))

(declare-fun lt!888250 () Unit!42578)

(declare-fun e!1575094 () Unit!42578)

(assert (=> b!2481404 (= lt!888250 e!1575094)))

(declare-fun b!2481405 () Bool)

(assert (=> b!2481405 false))

(declare-fun lt!888249 () Unit!42578)

(declare-fun lt!888255 () Unit!42578)

(assert (=> b!2481405 (= lt!888249 lt!888255)))

(declare-fun lt!888253 () ListLongMap!519)

(declare-datatypes ((ListMap!1055 0))(
  ( (ListMap!1056 (toList!1573 List!29196)) )
))
(declare-fun contains!5093 (ListMap!1055 K!5480) Bool)

(declare-fun extractMap!171 (List!29197) ListMap!1055)

(assert (=> b!2481405 (contains!5093 (extractMap!171 (toList!1572 lt!888253)) key!2246)))

(declare-fun lemmaInLongMapThenInGenericMap!68 (ListLongMap!519 K!5480 Hashable!3268) Unit!42578)

(assert (=> b!2481405 (= lt!888255 (lemmaInLongMapThenInGenericMap!68 lt!888253 key!2246 (hashF!5226 thiss!42540)))))

(declare-fun call!151961 () ListLongMap!519)

(assert (=> b!2481405 (= lt!888253 call!151961)))

(declare-fun e!1575099 () Unit!42578)

(declare-fun Unit!42580 () Unit!42578)

(assert (=> b!2481405 (= e!1575099 Unit!42580)))

(declare-fun lt!888263 () ListLongMap!519)

(declare-fun call!151965 () List!29196)

(declare-fun bm!151956 () Bool)

(declare-fun call!151962 () (_ BitVec 64))

(declare-fun c!394496 () Bool)

(declare-fun apply!6913 (ListLongMap!519 (_ BitVec 64)) List!29196)

(assert (=> bm!151956 (= call!151965 (apply!6913 (ite c!394496 lt!888263 call!151961) call!151962))))

(declare-fun b!2481406 () Bool)

(declare-fun Unit!42581 () Unit!42578)

(assert (=> b!2481406 (= e!1575094 Unit!42581)))

(declare-fun bm!151957 () Bool)

(declare-fun call!151964 () Bool)

(declare-fun call!151966 () Option!5746)

(assert (=> bm!151957 (= call!151964 (isDefined!4568 call!151966))))

(declare-fun b!2481407 () Bool)

(declare-fun e!1575096 () Bool)

(assert (=> b!2481407 (= e!1575096 call!151964)))

(declare-fun bm!151958 () Bool)

(declare-fun hash!686 (Hashable!3268 K!5480) (_ BitVec 64))

(assert (=> bm!151958 (= call!151962 (hash!686 (hashF!5226 thiss!42540) key!2246))))

(declare-fun d!712806 () Bool)

(declare-fun lt!888262 () Bool)

(declare-fun map!6188 (MutableMap!3268) ListMap!1055)

(assert (=> d!712806 (= lt!888262 (contains!5093 (map!6188 thiss!42540) key!2246))))

(assert (=> d!712806 (= lt!888262 e!1575098)))

(declare-fun res!1050510 () Bool)

(assert (=> d!712806 (=> (not res!1050510) (not e!1575098))))

(declare-fun contains!5094 (MutLongMap!3358 (_ BitVec 64)) Bool)

(assert (=> d!712806 (= res!1050510 (contains!5094 (v!31431 (underlying!6924 thiss!42540)) lt!888256))))

(declare-fun lt!888248 () Unit!42578)

(declare-fun e!1575095 () Unit!42578)

(assert (=> d!712806 (= lt!888248 e!1575095)))

(assert (=> d!712806 (= c!394496 (contains!5093 (extractMap!171 (toList!1572 (map!6186 (v!31431 (underlying!6924 thiss!42540))))) key!2246))))

(declare-fun lt!888245 () Unit!42578)

(assert (=> d!712806 (= lt!888245 e!1575093)))

(declare-fun c!394497 () Bool)

(assert (=> d!712806 (= c!394497 (contains!5094 (v!31431 (underlying!6924 thiss!42540)) lt!888256))))

(assert (=> d!712806 (= lt!888256 (hash!686 (hashF!5226 thiss!42540) key!2246))))

(assert (=> d!712806 (valid!2562 thiss!42540)))

(assert (=> d!712806 (= (contains!5091 thiss!42540 key!2246) lt!888262)))

(declare-fun b!2481408 () Bool)

(assert (=> b!2481408 false))

(declare-fun lt!888246 () Unit!42578)

(declare-fun lt!888257 () Unit!42578)

(assert (=> b!2481408 (= lt!888246 lt!888257)))

(declare-fun lt!888264 () List!29197)

(declare-fun lt!888252 () List!29196)

(assert (=> b!2481408 (contains!5092 lt!888264 (tuple2!28811 lt!888256 lt!888252))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!73 (List!29197 (_ BitVec 64) List!29196) Unit!42578)

(assert (=> b!2481408 (= lt!888257 (lemmaGetValueByKeyImpliesContainsTuple!73 lt!888264 lt!888256 lt!888252))))

(assert (=> b!2481408 (= lt!888252 (apply!6912 (v!31431 (underlying!6924 thiss!42540)) lt!888256))))

(assert (=> b!2481408 (= lt!888264 (toList!1572 (map!6186 (v!31431 (underlying!6924 thiss!42540)))))))

(declare-fun lt!888247 () Unit!42578)

(declare-fun lt!888254 () Unit!42578)

(assert (=> b!2481408 (= lt!888247 lt!888254)))

(declare-fun lt!888258 () List!29197)

(declare-datatypes ((Option!5747 0))(
  ( (None!5746) (Some!5746 (v!31433 List!29196)) )
))
(declare-fun isDefined!4569 (Option!5747) Bool)

(declare-fun getValueByKey!135 (List!29197 (_ BitVec 64)) Option!5747)

(assert (=> b!2481408 (isDefined!4569 (getValueByKey!135 lt!888258 lt!888256))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!92 (List!29197 (_ BitVec 64)) Unit!42578)

(assert (=> b!2481408 (= lt!888254 (lemmaContainsKeyImpliesGetValueByKeyDefined!92 lt!888258 lt!888256))))

(assert (=> b!2481408 (= lt!888258 (toList!1572 (map!6186 (v!31431 (underlying!6924 thiss!42540)))))))

(declare-fun lt!888259 () Unit!42578)

(declare-fun lt!888260 () Unit!42578)

(assert (=> b!2481408 (= lt!888259 lt!888260)))

(declare-fun lt!888261 () List!29197)

(declare-fun containsKey!132 (List!29197 (_ BitVec 64)) Bool)

(assert (=> b!2481408 (containsKey!132 lt!888261 lt!888256)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!69 (List!29197 (_ BitVec 64)) Unit!42578)

(assert (=> b!2481408 (= lt!888260 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!69 lt!888261 lt!888256))))

(assert (=> b!2481408 (= lt!888261 (toList!1572 (map!6186 (v!31431 (underlying!6924 thiss!42540)))))))

(declare-fun Unit!42582 () Unit!42578)

(assert (=> b!2481408 (= e!1575094 Unit!42582)))

(declare-fun b!2481409 () Bool)

(declare-fun Unit!42583 () Unit!42578)

(assert (=> b!2481409 (= e!1575099 Unit!42583)))

(declare-fun b!2481410 () Bool)

(declare-fun lt!888251 () Unit!42578)

(assert (=> b!2481410 (= e!1575095 lt!888251)))

(assert (=> b!2481410 (= lt!888263 call!151961)))

(declare-fun lemmaInGenericMapThenInLongMap!68 (ListLongMap!519 K!5480 Hashable!3268) Unit!42578)

(assert (=> b!2481410 (= lt!888251 (lemmaInGenericMapThenInLongMap!68 lt!888263 key!2246 (hashF!5226 thiss!42540)))))

(declare-fun res!1050511 () Bool)

(declare-fun call!151963 () Bool)

(assert (=> b!2481410 (= res!1050511 call!151963)))

(assert (=> b!2481410 (=> (not res!1050511) (not e!1575096))))

(assert (=> b!2481410 e!1575096))

(declare-fun b!2481411 () Bool)

(declare-fun e!1575097 () Bool)

(assert (=> b!2481411 (= e!1575097 call!151964)))

(declare-fun b!2481412 () Bool)

(declare-fun Unit!42584 () Unit!42578)

(assert (=> b!2481412 (= e!1575093 Unit!42584)))

(declare-fun b!2481413 () Bool)

(assert (=> b!2481413 (= e!1575095 e!1575099)))

(declare-fun res!1050512 () Bool)

(assert (=> b!2481413 (= res!1050512 call!151963)))

(assert (=> b!2481413 (=> (not res!1050512) (not e!1575097))))

(declare-fun c!394495 () Bool)

(assert (=> b!2481413 (= c!394495 e!1575097)))

(declare-fun bm!151959 () Bool)

(assert (=> bm!151959 (= call!151961 (map!6186 (v!31431 (underlying!6924 thiss!42540))))))

(declare-fun bm!151960 () Bool)

(assert (=> bm!151960 (= call!151966 (getPair!68 call!151965 key!2246))))

(declare-fun bm!151961 () Bool)

(declare-fun contains!5095 (ListLongMap!519 (_ BitVec 64)) Bool)

(assert (=> bm!151961 (= call!151963 (contains!5095 (ite c!394496 lt!888263 call!151961) call!151962))))

(assert (= (and d!712806 c!394497) b!2481404))

(assert (= (and d!712806 (not c!394497)) b!2481412))

(assert (= (and b!2481404 c!394494) b!2481408))

(assert (= (and b!2481404 (not c!394494)) b!2481406))

(assert (= (and d!712806 c!394496) b!2481410))

(assert (= (and d!712806 (not c!394496)) b!2481413))

(assert (= (and b!2481410 res!1050511) b!2481407))

(assert (= (and b!2481413 res!1050512) b!2481411))

(assert (= (and b!2481413 c!394495) b!2481405))

(assert (= (and b!2481413 (not c!394495)) b!2481409))

(assert (= (or b!2481410 b!2481407 b!2481413 b!2481411) bm!151958))

(assert (= (or b!2481410 b!2481413 b!2481411 b!2481405) bm!151959))

(assert (= (or b!2481410 b!2481413) bm!151961))

(assert (= (or b!2481407 b!2481411) bm!151956))

(assert (= (or b!2481407 b!2481411) bm!151960))

(assert (= (or b!2481407 b!2481411) bm!151957))

(assert (= (and d!712806 res!1050510) b!2481403))

(assert (=> bm!151959 m!2849383))

(assert (=> b!2481404 m!2849383))

(declare-fun m!2849399 () Bool)

(assert (=> b!2481404 m!2849399))

(declare-fun m!2849401 () Bool)

(assert (=> b!2481404 m!2849401))

(declare-fun m!2849403 () Bool)

(assert (=> b!2481404 m!2849403))

(declare-fun m!2849405 () Bool)

(assert (=> bm!151961 m!2849405))

(declare-fun m!2849407 () Bool)

(assert (=> bm!151956 m!2849407))

(assert (=> b!2481403 m!2849399))

(assert (=> b!2481403 m!2849399))

(declare-fun m!2849409 () Bool)

(assert (=> b!2481403 m!2849409))

(assert (=> b!2481403 m!2849409))

(declare-fun m!2849411 () Bool)

(assert (=> b!2481403 m!2849411))

(declare-fun m!2849413 () Bool)

(assert (=> bm!151958 m!2849413))

(declare-fun m!2849415 () Bool)

(assert (=> b!2481410 m!2849415))

(declare-fun m!2849417 () Bool)

(assert (=> b!2481405 m!2849417))

(assert (=> b!2481405 m!2849417))

(declare-fun m!2849419 () Bool)

(assert (=> b!2481405 m!2849419))

(declare-fun m!2849421 () Bool)

(assert (=> b!2481405 m!2849421))

(declare-fun m!2849423 () Bool)

(assert (=> bm!151960 m!2849423))

(assert (=> d!712806 m!2849413))

(declare-fun m!2849425 () Bool)

(assert (=> d!712806 m!2849425))

(declare-fun m!2849427 () Bool)

(assert (=> d!712806 m!2849427))

(assert (=> d!712806 m!2849425))

(assert (=> d!712806 m!2849383))

(declare-fun m!2849429 () Bool)

(assert (=> d!712806 m!2849429))

(declare-fun m!2849431 () Bool)

(assert (=> d!712806 m!2849431))

(assert (=> d!712806 m!2849429))

(assert (=> d!712806 m!2849371))

(declare-fun m!2849433 () Bool)

(assert (=> d!712806 m!2849433))

(declare-fun m!2849435 () Bool)

(assert (=> bm!151957 m!2849435))

(declare-fun m!2849437 () Bool)

(assert (=> b!2481408 m!2849437))

(declare-fun m!2849439 () Bool)

(assert (=> b!2481408 m!2849439))

(assert (=> b!2481408 m!2849399))

(declare-fun m!2849441 () Bool)

(assert (=> b!2481408 m!2849441))

(declare-fun m!2849443 () Bool)

(assert (=> b!2481408 m!2849443))

(assert (=> b!2481408 m!2849383))

(declare-fun m!2849445 () Bool)

(assert (=> b!2481408 m!2849445))

(declare-fun m!2849447 () Bool)

(assert (=> b!2481408 m!2849447))

(assert (=> b!2481408 m!2849441))

(declare-fun m!2849449 () Bool)

(assert (=> b!2481408 m!2849449))

(assert (=> b!2481360 d!712806))

(declare-fun tp!794336 () Bool)

(declare-fun e!1575102 () Bool)

(declare-fun b!2481418 () Bool)

(declare-fun tp_is_empty!12243 () Bool)

(assert (=> b!2481418 (= e!1575102 (and tp_is_empty!12241 tp_is_empty!12243 tp!794336))))

(assert (=> b!2481362 (= tp!794329 e!1575102)))

(assert (= (and b!2481362 ((_ is Cons!29096) (zeroValue!3616 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540))))))) b!2481418))

(declare-fun tp!794337 () Bool)

(declare-fun b!2481419 () Bool)

(declare-fun e!1575103 () Bool)

(assert (=> b!2481419 (= e!1575103 (and tp_is_empty!12241 tp_is_empty!12243 tp!794337))))

(assert (=> b!2481362 (= tp!794332 e!1575103)))

(assert (= (and b!2481362 ((_ is Cons!29096) (minValue!3616 (v!31430 (underlying!6923 (v!31431 (underlying!6924 thiss!42540))))))) b!2481419))

(declare-fun tp!794338 () Bool)

(declare-fun e!1575104 () Bool)

(declare-fun b!2481420 () Bool)

(assert (=> b!2481420 (= e!1575104 (and tp_is_empty!12241 tp_is_empty!12243 tp!794338))))

(assert (=> b!2481363 (= tp!794328 e!1575104)))

(assert (= (and b!2481363 ((_ is Cons!29096) mapDefault!15535)) b!2481420))

(declare-fun mapNonEmpty!15538 () Bool)

(declare-fun mapRes!15538 () Bool)

(declare-fun tp!794346 () Bool)

(declare-fun e!1575109 () Bool)

(assert (=> mapNonEmpty!15538 (= mapRes!15538 (and tp!794346 e!1575109))))

(declare-fun mapValue!15538 () List!29196)

(declare-fun mapKey!15538 () (_ BitVec 32))

(declare-fun mapRest!15538 () (Array (_ BitVec 32) List!29196))

(assert (=> mapNonEmpty!15538 (= mapRest!15535 (store mapRest!15538 mapKey!15538 mapValue!15538))))

(declare-fun mapIsEmpty!15538 () Bool)

(assert (=> mapIsEmpty!15538 mapRes!15538))

(declare-fun e!1575110 () Bool)

(declare-fun b!2481428 () Bool)

(declare-fun tp!794345 () Bool)

(assert (=> b!2481428 (= e!1575110 (and tp_is_empty!12241 tp_is_empty!12243 tp!794345))))

(declare-fun condMapEmpty!15538 () Bool)

(declare-fun mapDefault!15538 () List!29196)

(assert (=> mapNonEmpty!15535 (= condMapEmpty!15538 (= mapRest!15535 ((as const (Array (_ BitVec 32) List!29196)) mapDefault!15538)))))

(assert (=> mapNonEmpty!15535 (= tp!794330 (and e!1575110 mapRes!15538))))

(declare-fun tp!794347 () Bool)

(declare-fun b!2481427 () Bool)

(assert (=> b!2481427 (= e!1575109 (and tp_is_empty!12241 tp_is_empty!12243 tp!794347))))

(assert (= (and mapNonEmpty!15535 condMapEmpty!15538) mapIsEmpty!15538))

(assert (= (and mapNonEmpty!15535 (not condMapEmpty!15538)) mapNonEmpty!15538))

(assert (= (and mapNonEmpty!15538 ((_ is Cons!29096) mapValue!15538)) b!2481427))

(assert (= (and mapNonEmpty!15535 ((_ is Cons!29096) mapDefault!15538)) b!2481428))

(declare-fun m!2849451 () Bool)

(assert (=> mapNonEmpty!15538 m!2849451))

(declare-fun e!1575111 () Bool)

(declare-fun b!2481429 () Bool)

(declare-fun tp!794348 () Bool)

(assert (=> b!2481429 (= e!1575111 (and tp_is_empty!12241 tp_is_empty!12243 tp!794348))))

(assert (=> mapNonEmpty!15535 (= tp!794331 e!1575111)))

(assert (= (and mapNonEmpty!15535 ((_ is Cons!29096) mapValue!15535)) b!2481429))

(declare-fun b_lambda!76101 () Bool)

(assert (= b_lambda!76099 (or b!2481365 b_lambda!76101)))

(declare-fun bs!467421 () Bool)

(declare-fun d!712808 () Bool)

(assert (= bs!467421 (and d!712808 b!2481365)))

(declare-fun noDuplicateKeys!83 (List!29196) Bool)

(assert (=> bs!467421 (= (dynLambda!12463 lambda!93958 (h!34503 (toList!1572 lt!888204))) (noDuplicateKeys!83 (_2!16946 (h!34503 (toList!1572 lt!888204)))))))

(declare-fun m!2849453 () Bool)

(assert (=> bs!467421 m!2849453))

(assert (=> b!2481379 d!712808))

(check-sat (not b!2481429) (not b_next!72993) (not b!2481404) (not d!712804) (not bs!467421) (not bm!151958) (not b!2481427) (not b!2481408) (not b!2481418) (not mapNonEmpty!15538) (not b_lambda!76101) (not bm!151956) (not b!2481419) (not d!712806) (not d!712798) (not d!712800) (not b!2481420) (not b!2481380) (not b!2481428) tp_is_empty!12241 (not b!2481374) (not bm!151957) (not b!2481403) (not bm!151959) (not b!2481410) b_and!188537 (not b!2481373) (not bm!151960) (not b_next!72995) (not b!2481405) b_and!188535 tp_is_empty!12243 (not bm!151961))
(check-sat b_and!188537 b_and!188535 (not b_next!72993) (not b_next!72995))

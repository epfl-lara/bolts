; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2142 () Bool)

(assert start!2142)

(declare-fun b!38087 () Bool)

(declare-fun b_free!605 () Bool)

(declare-fun b_next!605 () Bool)

(assert (=> b!38087 (= b_free!605 (not b_next!605))))

(declare-fun tp!26477 () Bool)

(declare-fun b_and!639 () Bool)

(assert (=> b!38087 (= tp!26477 b_and!639)))

(declare-fun b!38093 () Bool)

(declare-fun b_free!607 () Bool)

(declare-fun b_next!607 () Bool)

(assert (=> b!38093 (= b_free!607 (not b_next!607))))

(declare-fun tp!26484 () Bool)

(declare-fun b_and!641 () Bool)

(assert (=> b!38093 (= tp!26484 b_and!641)))

(declare-fun e!18849 () Bool)

(declare-datatypes ((C!1408 0))(
  ( (C!1409 (val!223 Int)) )
))
(declare-datatypes ((Regex!187 0))(
  ( (ElementMatch!187 (c!15696 C!1408)) (Concat!306 (regOne!886 Regex!187) (regTwo!886 Regex!187)) (EmptyExpr!187) (Star!187 (reg!516 Regex!187)) (EmptyLang!187) (Union!187 (regOne!887 Regex!187) (regTwo!887 Regex!187)) )
))
(declare-datatypes ((tuple2!450 0))(
  ( (tuple2!451 (_1!291 Regex!187) (_2!291 C!1408)) )
))
(declare-datatypes ((tuple2!452 0))(
  ( (tuple2!453 (_1!292 tuple2!450) (_2!292 Regex!187)) )
))
(declare-datatypes ((List!431 0))(
  ( (Nil!429) (Cons!429 (h!5825 tuple2!452) (t!15267 List!431)) )
))
(declare-datatypes ((array!432 0))(
  ( (array!433 (arr!224 (Array (_ BitVec 32) List!431)) (size!483 (_ BitVec 32))) )
))
(declare-datatypes ((array!434 0))(
  ( (array!435 (arr!225 (Array (_ BitVec 32) (_ BitVec 64))) (size!484 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!246 0))(
  ( (LongMapFixedSize!247 (defaultEntry!461 Int) (mask!818 (_ BitVec 32)) (extraKeys!369 (_ BitVec 32)) (zeroValue!379 List!431) (minValue!379 List!431) (_size!378 (_ BitVec 32)) (_keys!414 array!434) (_values!401 array!432) (_vacant!183 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!119 0))(
  ( (HashableExt!118 (__x!791 Int)) )
))
(declare-datatypes ((Cell!481 0))(
  ( (Cell!482 (v!12218 LongMapFixedSize!246)) )
))
(declare-datatypes ((MutLongMap!123 0))(
  ( (LongMap!123 (underlying!441 Cell!481)) (MutLongMapExt!122 (__x!792 Int)) )
))
(declare-datatypes ((Cell!483 0))(
  ( (Cell!484 (v!12219 MutLongMap!123)) )
))
(declare-datatypes ((MutableMap!119 0))(
  ( (MutableMapExt!118 (__x!793 Int)) (HashMap!119 (underlying!442 Cell!483) (hashF!1987 Hashable!119) (_size!379 (_ BitVec 32)) (defaultValue!268 Int)) )
))
(declare-datatypes ((Cache!46 0))(
  ( (Cache!47 (cache!602 MutableMap!119)) )
))
(declare-datatypes ((tuple2!454 0))(
  ( (tuple2!455 (_1!293 Regex!187) (_2!293 Cache!46)) )
))
(declare-fun lt!3286 () tuple2!454)

(declare-datatypes ((List!432 0))(
  ( (Nil!430) (Cons!430 (h!5826 C!1408) (t!15268 List!432)) )
))
(declare-fun input!6011 () List!432)

(declare-fun r!13380 () Regex!187)

(declare-fun b!38082 () Bool)

(declare-datatypes ((tuple2!456 0))(
  ( (tuple2!457 (_1!294 Bool) (_2!294 Cache!46)) )
))
(declare-fun matchRMem!3 (Regex!187 List!432 Cache!46) tuple2!456)

(declare-fun tail!27 (List!432) List!432)

(declare-fun matchR!5 (Regex!187 List!432) Bool)

(assert (=> b!38082 (= e!18849 (not (= (_1!294 (matchRMem!3 (_1!293 lt!3286) (tail!27 input!6011) (_2!293 lt!3286))) (matchR!5 r!13380 input!6011))))))

(declare-fun cache!443 () Cache!46)

(declare-fun derivativeStepMem!10 (Regex!187 C!1408 Cache!46) tuple2!454)

(declare-fun head!339 (List!432) C!1408)

(assert (=> b!38082 (= lt!3286 (derivativeStepMem!10 r!13380 (head!339 input!6011) cache!443))))

(declare-fun b!38083 () Bool)

(declare-fun res!28486 () Bool)

(assert (=> b!38083 (=> (not res!28486) (not e!18849))))

(declare-fun valid!132 (Cache!46) Bool)

(assert (=> b!38083 (= res!28486 (valid!132 cache!443))))

(declare-fun b!38084 () Bool)

(declare-fun e!18858 () Bool)

(declare-fun e!18855 () Bool)

(assert (=> b!38084 (= e!18858 e!18855)))

(declare-fun mapIsEmpty!426 () Bool)

(declare-fun mapRes!426 () Bool)

(assert (=> mapIsEmpty!426 mapRes!426))

(declare-fun b!38085 () Bool)

(declare-fun e!18854 () Bool)

(declare-fun tp_is_empty!399 () Bool)

(assert (=> b!38085 (= e!18854 tp_is_empty!399)))

(declare-fun b!38086 () Bool)

(declare-fun e!18856 () Bool)

(declare-fun e!18859 () Bool)

(assert (=> b!38086 (= e!18856 e!18859)))

(declare-fun e!18852 () Bool)

(declare-fun tp!26478 () Bool)

(declare-fun tp!26483 () Bool)

(declare-fun array_inv!140 (array!434) Bool)

(declare-fun array_inv!141 (array!432) Bool)

(assert (=> b!38087 (= e!18855 (and tp!26477 tp!26478 tp!26483 (array_inv!140 (_keys!414 (v!12218 (underlying!441 (v!12219 (underlying!442 (cache!602 cache!443))))))) (array_inv!141 (_values!401 (v!12218 (underlying!441 (v!12219 (underlying!442 (cache!602 cache!443))))))) e!18852))))

(declare-fun b!38088 () Bool)

(declare-fun e!18853 () Bool)

(declare-fun e!18851 () Bool)

(declare-fun lt!3285 () MutLongMap!123)

(get-info :version)

(assert (=> b!38088 (= e!18853 (and e!18851 ((_ is LongMap!123) lt!3285)))))

(assert (=> b!38088 (= lt!3285 (v!12219 (underlying!442 (cache!602 cache!443))))))

(declare-fun b!38089 () Bool)

(declare-fun tp!26475 () Bool)

(assert (=> b!38089 (= e!18854 tp!26475)))

(declare-fun b!38090 () Bool)

(declare-fun tp!26480 () Bool)

(assert (=> b!38090 (= e!18852 (and tp!26480 mapRes!426))))

(declare-fun condMapEmpty!426 () Bool)

(declare-fun mapDefault!426 () List!431)

(assert (=> b!38090 (= condMapEmpty!426 (= (arr!224 (_values!401 (v!12218 (underlying!441 (v!12219 (underlying!442 (cache!602 cache!443))))))) ((as const (Array (_ BitVec 32) List!431)) mapDefault!426)))))

(declare-fun b!38091 () Bool)

(declare-fun e!18850 () Bool)

(declare-fun tp!26472 () Bool)

(assert (=> b!38091 (= e!18850 (and tp_is_empty!399 tp!26472))))

(declare-fun b!38092 () Bool)

(declare-fun tp!26473 () Bool)

(declare-fun tp!26481 () Bool)

(assert (=> b!38092 (= e!18854 (and tp!26473 tp!26481))))

(declare-fun b!38094 () Bool)

(declare-fun res!28487 () Bool)

(assert (=> b!38094 (=> (not res!28487) (not e!18849))))

(declare-fun isEmpty!99 (List!432) Bool)

(assert (=> b!38094 (= res!28487 (not (isEmpty!99 input!6011)))))

(declare-fun mapNonEmpty!426 () Bool)

(declare-fun tp!26479 () Bool)

(declare-fun tp!26474 () Bool)

(assert (=> mapNonEmpty!426 (= mapRes!426 (and tp!26479 tp!26474))))

(declare-fun mapValue!426 () List!431)

(declare-fun mapKey!426 () (_ BitVec 32))

(declare-fun mapRest!426 () (Array (_ BitVec 32) List!431))

(assert (=> mapNonEmpty!426 (= (arr!224 (_values!401 (v!12218 (underlying!441 (v!12219 (underlying!442 (cache!602 cache!443))))))) (store mapRest!426 mapKey!426 mapValue!426))))

(assert (=> b!38093 (= e!18859 (and e!18853 tp!26484))))

(declare-fun res!28485 () Bool)

(assert (=> start!2142 (=> (not res!28485) (not e!18849))))

(declare-fun validRegex!23 (Regex!187) Bool)

(assert (=> start!2142 (= res!28485 (validRegex!23 r!13380))))

(assert (=> start!2142 e!18849))

(assert (=> start!2142 e!18854))

(declare-fun inv!740 (Cache!46) Bool)

(assert (=> start!2142 (and (inv!740 cache!443) e!18856)))

(assert (=> start!2142 e!18850))

(declare-fun b!38095 () Bool)

(assert (=> b!38095 (= e!18851 e!18858)))

(declare-fun b!38096 () Bool)

(declare-fun tp!26476 () Bool)

(declare-fun tp!26482 () Bool)

(assert (=> b!38096 (= e!18854 (and tp!26476 tp!26482))))

(assert (= (and start!2142 res!28485) b!38083))

(assert (= (and b!38083 res!28486) b!38094))

(assert (= (and b!38094 res!28487) b!38082))

(assert (= (and start!2142 ((_ is ElementMatch!187) r!13380)) b!38085))

(assert (= (and start!2142 ((_ is Concat!306) r!13380)) b!38096))

(assert (= (and start!2142 ((_ is Star!187) r!13380)) b!38089))

(assert (= (and start!2142 ((_ is Union!187) r!13380)) b!38092))

(assert (= (and b!38090 condMapEmpty!426) mapIsEmpty!426))

(assert (= (and b!38090 (not condMapEmpty!426)) mapNonEmpty!426))

(assert (= b!38087 b!38090))

(assert (= b!38084 b!38087))

(assert (= b!38095 b!38084))

(assert (= (and b!38088 ((_ is LongMap!123) (v!12219 (underlying!442 (cache!602 cache!443))))) b!38095))

(assert (= b!38093 b!38088))

(assert (= (and b!38086 ((_ is HashMap!119) (cache!602 cache!443))) b!38093))

(assert (= start!2142 b!38086))

(assert (= (and start!2142 ((_ is Cons!430) input!6011)) b!38091))

(declare-fun m!12392 () Bool)

(assert (=> b!38087 m!12392))

(declare-fun m!12394 () Bool)

(assert (=> b!38087 m!12394))

(declare-fun m!12396 () Bool)

(assert (=> mapNonEmpty!426 m!12396))

(declare-fun m!12398 () Bool)

(assert (=> start!2142 m!12398))

(declare-fun m!12400 () Bool)

(assert (=> start!2142 m!12400))

(declare-fun m!12402 () Bool)

(assert (=> b!38083 m!12402))

(declare-fun m!12404 () Bool)

(assert (=> b!38094 m!12404))

(declare-fun m!12406 () Bool)

(assert (=> b!38082 m!12406))

(declare-fun m!12408 () Bool)

(assert (=> b!38082 m!12408))

(declare-fun m!12410 () Bool)

(assert (=> b!38082 m!12410))

(assert (=> b!38082 m!12410))

(declare-fun m!12412 () Bool)

(assert (=> b!38082 m!12412))

(assert (=> b!38082 m!12406))

(declare-fun m!12414 () Bool)

(assert (=> b!38082 m!12414))

(check-sat (not b_next!607) (not b!38083) (not b!38096) tp_is_empty!399 (not b!38094) b_and!641 (not b_next!605) (not b!38082) b_and!639 (not b!38089) (not b!38087) (not b!38091) (not start!2142) (not mapNonEmpty!426) (not b!38090) (not b!38092))
(check-sat b_and!639 b_and!641 (not b_next!605) (not b_next!607))
(get-model)

(declare-fun d!4042 () Bool)

(declare-fun validCacheMap!8 (MutableMap!119) Bool)

(assert (=> d!4042 (= (valid!132 cache!443) (validCacheMap!8 (cache!602 cache!443)))))

(declare-fun bs!4999 () Bool)

(assert (= bs!4999 d!4042))

(declare-fun m!12416 () Bool)

(assert (=> bs!4999 m!12416))

(assert (=> b!38083 d!4042))

(declare-fun d!4044 () Bool)

(assert (=> d!4044 (= (array_inv!140 (_keys!414 (v!12218 (underlying!441 (v!12219 (underlying!442 (cache!602 cache!443))))))) (bvsge (size!484 (_keys!414 (v!12218 (underlying!441 (v!12219 (underlying!442 (cache!602 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!38087 d!4044))

(declare-fun d!4046 () Bool)

(assert (=> d!4046 (= (array_inv!141 (_values!401 (v!12218 (underlying!441 (v!12219 (underlying!442 (cache!602 cache!443))))))) (bvsge (size!483 (_values!401 (v!12218 (underlying!441 (v!12219 (underlying!442 (cache!602 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!38087 d!4046))

(declare-fun b!38125 () Bool)

(declare-fun res!28506 () Bool)

(declare-fun e!18879 () Bool)

(assert (=> b!38125 (=> res!28506 e!18879)))

(assert (=> b!38125 (= res!28506 (not (isEmpty!99 (tail!27 input!6011))))))

(declare-fun b!38126 () Bool)

(declare-fun e!18874 () Bool)

(declare-fun nullable!16 (Regex!187) Bool)

(assert (=> b!38126 (= e!18874 (nullable!16 r!13380))))

(declare-fun b!38127 () Bool)

(declare-fun e!18878 () Bool)

(declare-fun e!18877 () Bool)

(assert (=> b!38127 (= e!18878 e!18877)))

(declare-fun c!15705 () Bool)

(assert (=> b!38127 (= c!15705 ((_ is EmptyLang!187) r!13380))))

(declare-fun b!38128 () Bool)

(declare-fun e!18880 () Bool)

(declare-fun e!18875 () Bool)

(assert (=> b!38128 (= e!18880 e!18875)))

(declare-fun res!28508 () Bool)

(assert (=> b!38128 (=> (not res!28508) (not e!18875))))

(declare-fun lt!3289 () Bool)

(assert (=> b!38128 (= res!28508 (not lt!3289))))

(declare-fun b!38129 () Bool)

(declare-fun e!18876 () Bool)

(assert (=> b!38129 (= e!18876 (= (head!339 input!6011) (c!15696 r!13380)))))

(declare-fun b!38130 () Bool)

(declare-fun derivativeStep!6 (Regex!187 C!1408) Regex!187)

(assert (=> b!38130 (= e!18874 (matchR!5 (derivativeStep!6 r!13380 (head!339 input!6011)) (tail!27 input!6011)))))

(declare-fun b!38131 () Bool)

(declare-fun res!28504 () Bool)

(assert (=> b!38131 (=> (not res!28504) (not e!18876))))

(declare-fun call!2856 () Bool)

(assert (=> b!38131 (= res!28504 (not call!2856))))

(declare-fun d!4048 () Bool)

(assert (=> d!4048 e!18878))

(declare-fun c!15703 () Bool)

(assert (=> d!4048 (= c!15703 ((_ is EmptyExpr!187) r!13380))))

(assert (=> d!4048 (= lt!3289 e!18874)))

(declare-fun c!15704 () Bool)

(assert (=> d!4048 (= c!15704 (isEmpty!99 input!6011))))

(assert (=> d!4048 (validRegex!23 r!13380)))

(assert (=> d!4048 (= (matchR!5 r!13380 input!6011) lt!3289)))

(declare-fun b!38132 () Bool)

(assert (=> b!38132 (= e!18878 (= lt!3289 call!2856))))

(declare-fun b!38133 () Bool)

(declare-fun res!28509 () Bool)

(assert (=> b!38133 (=> res!28509 e!18880)))

(assert (=> b!38133 (= res!28509 (not ((_ is ElementMatch!187) r!13380)))))

(assert (=> b!38133 (= e!18877 e!18880)))

(declare-fun b!38134 () Bool)

(declare-fun res!28507 () Bool)

(assert (=> b!38134 (=> (not res!28507) (not e!18876))))

(assert (=> b!38134 (= res!28507 (isEmpty!99 (tail!27 input!6011)))))

(declare-fun b!38135 () Bool)

(assert (=> b!38135 (= e!18875 e!18879)))

(declare-fun res!28511 () Bool)

(assert (=> b!38135 (=> res!28511 e!18879)))

(assert (=> b!38135 (= res!28511 call!2856)))

(declare-fun b!38136 () Bool)

(declare-fun res!28510 () Bool)

(assert (=> b!38136 (=> res!28510 e!18880)))

(assert (=> b!38136 (= res!28510 e!18876)))

(declare-fun res!28505 () Bool)

(assert (=> b!38136 (=> (not res!28505) (not e!18876))))

(assert (=> b!38136 (= res!28505 lt!3289)))

(declare-fun bm!2851 () Bool)

(assert (=> bm!2851 (= call!2856 (isEmpty!99 input!6011))))

(declare-fun b!38137 () Bool)

(assert (=> b!38137 (= e!18879 (not (= (head!339 input!6011) (c!15696 r!13380))))))

(declare-fun b!38138 () Bool)

(assert (=> b!38138 (= e!18877 (not lt!3289))))

(assert (= (and d!4048 c!15704) b!38126))

(assert (= (and d!4048 (not c!15704)) b!38130))

(assert (= (and d!4048 c!15703) b!38132))

(assert (= (and d!4048 (not c!15703)) b!38127))

(assert (= (and b!38127 c!15705) b!38138))

(assert (= (and b!38127 (not c!15705)) b!38133))

(assert (= (and b!38133 (not res!28509)) b!38136))

(assert (= (and b!38136 res!28505) b!38131))

(assert (= (and b!38131 res!28504) b!38134))

(assert (= (and b!38134 res!28507) b!38129))

(assert (= (and b!38136 (not res!28510)) b!38128))

(assert (= (and b!38128 res!28508) b!38135))

(assert (= (and b!38135 (not res!28511)) b!38125))

(assert (= (and b!38125 (not res!28506)) b!38137))

(assert (= (or b!38132 b!38131 b!38135) bm!2851))

(assert (=> bm!2851 m!12404))

(assert (=> b!38125 m!12410))

(assert (=> b!38125 m!12410))

(declare-fun m!12418 () Bool)

(assert (=> b!38125 m!12418))

(assert (=> b!38134 m!12410))

(assert (=> b!38134 m!12410))

(assert (=> b!38134 m!12418))

(assert (=> d!4048 m!12404))

(assert (=> d!4048 m!12398))

(assert (=> b!38130 m!12406))

(assert (=> b!38130 m!12406))

(declare-fun m!12420 () Bool)

(assert (=> b!38130 m!12420))

(assert (=> b!38130 m!12410))

(assert (=> b!38130 m!12420))

(assert (=> b!38130 m!12410))

(declare-fun m!12422 () Bool)

(assert (=> b!38130 m!12422))

(declare-fun m!12424 () Bool)

(assert (=> b!38126 m!12424))

(assert (=> b!38137 m!12406))

(assert (=> b!38129 m!12406))

(assert (=> b!38082 d!4048))

(declare-fun d!4050 () Bool)

(declare-fun lt!3297 () tuple2!456)

(assert (=> d!4050 (= (_1!294 lt!3297) (matchR!5 (_1!293 lt!3286) (tail!27 input!6011)))))

(declare-fun e!18883 () tuple2!456)

(assert (=> d!4050 (= lt!3297 e!18883)))

(declare-fun c!15708 () Bool)

(assert (=> d!4050 (= c!15708 (isEmpty!99 (tail!27 input!6011)))))

(assert (=> d!4050 (validRegex!23 (_1!293 lt!3286))))

(assert (=> d!4050 (= (matchRMem!3 (_1!293 lt!3286) (tail!27 input!6011) (_2!293 lt!3286)) lt!3297)))

(declare-fun b!38143 () Bool)

(assert (=> b!38143 (= e!18883 (tuple2!457 (nullable!16 (_1!293 lt!3286)) (_2!293 lt!3286)))))

(declare-fun b!38144 () Bool)

(declare-fun lt!3298 () tuple2!456)

(assert (=> b!38144 (= e!18883 (tuple2!457 (_1!294 lt!3298) (_2!294 lt!3298)))))

(declare-fun lt!3296 () tuple2!454)

(assert (=> b!38144 (= lt!3296 (derivativeStepMem!10 (_1!293 lt!3286) (head!339 (tail!27 input!6011)) (_2!293 lt!3286)))))

(assert (=> b!38144 (= lt!3298 (matchRMem!3 (_1!293 lt!3296) (tail!27 (tail!27 input!6011)) (_2!293 lt!3296)))))

(assert (= (and d!4050 c!15708) b!38143))

(assert (= (and d!4050 (not c!15708)) b!38144))

(assert (=> d!4050 m!12410))

(declare-fun m!12426 () Bool)

(assert (=> d!4050 m!12426))

(assert (=> d!4050 m!12410))

(assert (=> d!4050 m!12418))

(declare-fun m!12428 () Bool)

(assert (=> d!4050 m!12428))

(declare-fun m!12430 () Bool)

(assert (=> b!38143 m!12430))

(assert (=> b!38144 m!12410))

(declare-fun m!12432 () Bool)

(assert (=> b!38144 m!12432))

(assert (=> b!38144 m!12432))

(declare-fun m!12434 () Bool)

(assert (=> b!38144 m!12434))

(assert (=> b!38144 m!12410))

(declare-fun m!12436 () Bool)

(assert (=> b!38144 m!12436))

(assert (=> b!38144 m!12436))

(declare-fun m!12438 () Bool)

(assert (=> b!38144 m!12438))

(assert (=> b!38082 d!4050))

(declare-fun bm!2860 () Bool)

(declare-fun call!2867 () tuple2!454)

(declare-fun call!2866 () tuple2!454)

(assert (=> bm!2860 (= call!2867 call!2866)))

(declare-fun b!38170 () Bool)

(declare-fun e!18899 () tuple2!454)

(declare-datatypes ((Option!50 0))(
  ( (None!49) (Some!49 (v!12220 Regex!187)) )
))
(declare-fun lt!3325 () Option!50)

(assert (=> b!38170 (= e!18899 (tuple2!455 (v!12220 lt!3325) cache!443))))

(declare-fun bm!2861 () Bool)

(declare-fun c!15721 () Bool)

(declare-fun lt!3323 () tuple2!454)

(declare-fun c!15723 () Bool)

(declare-fun c!15725 () Bool)

(assert (=> bm!2861 (= call!2866 (derivativeStepMem!10 (ite c!15725 (regOne!887 r!13380) (ite c!15723 (reg!516 r!13380) (ite c!15721 (regTwo!886 r!13380) (regOne!886 r!13380)))) (head!339 input!6011) (ite (or c!15725 c!15723) cache!443 (ite c!15721 (_2!293 lt!3323) cache!443))))))

(declare-fun b!38171 () Bool)

(assert (=> b!38171 (= c!15723 ((_ is Star!187) r!13380))))

(declare-fun e!18897 () tuple2!454)

(declare-fun e!18896 () tuple2!454)

(assert (=> b!38171 (= e!18897 e!18896)))

(declare-fun b!38172 () Bool)

(declare-fun lt!3320 () tuple2!454)

(declare-fun call!2865 () tuple2!454)

(assert (=> b!38172 (= lt!3320 call!2865)))

(declare-fun lt!3318 () tuple2!454)

(assert (=> b!38172 (= lt!3318 call!2866)))

(assert (=> b!38172 (= e!18897 (tuple2!455 (Union!187 (_1!293 lt!3318) (_1!293 lt!3320)) (_2!293 lt!3320)))))

(declare-fun lt!3317 () tuple2!454)

(declare-fun b!38173 () Bool)

(declare-datatypes ((Unit!209 0))(
  ( (Unit!210) )
))
(declare-datatypes ((tuple2!458 0))(
  ( (tuple2!459 (_1!295 Unit!209) (_2!295 Cache!46)) )
))
(declare-fun update!18 (Cache!46 Regex!187 C!1408 Regex!187) tuple2!458)

(assert (=> b!38173 (= e!18899 (tuple2!455 (_1!293 lt!3317) (_2!295 (update!18 (_2!293 lt!3317) r!13380 (head!339 input!6011) (_1!293 lt!3317)))))))

(declare-fun c!15722 () Bool)

(assert (=> b!38173 (= c!15722 (or ((_ is EmptyExpr!187) r!13380) ((_ is EmptyLang!187) r!13380)))))

(declare-fun e!18901 () tuple2!454)

(assert (=> b!38173 (= lt!3317 e!18901)))

(declare-fun bm!2862 () Bool)

(assert (=> bm!2862 (= call!2865 (derivativeStepMem!10 (ite c!15725 (regTwo!887 r!13380) (regOne!886 r!13380)) (head!339 input!6011) (ite c!15725 (_2!293 lt!3318) cache!443)))))

(declare-fun bm!2863 () Bool)

(declare-fun call!2868 () tuple2!454)

(assert (=> bm!2863 (= call!2868 call!2867)))

(declare-fun b!38174 () Bool)

(declare-fun c!15726 () Bool)

(assert (=> b!38174 (= c!15726 ((_ is ElementMatch!187) r!13380))))

(declare-fun e!18898 () tuple2!454)

(assert (=> b!38174 (= e!18901 e!18898)))

(declare-fun b!38175 () Bool)

(assert (=> b!38175 (= e!18901 (tuple2!455 EmptyLang!187 cache!443))))

(declare-fun b!38176 () Bool)

(declare-fun lt!3322 () tuple2!454)

(assert (=> b!38176 (= lt!3322 call!2868)))

(assert (=> b!38176 (= lt!3323 call!2865)))

(declare-fun e!18900 () tuple2!454)

(assert (=> b!38176 (= e!18900 (tuple2!455 (Union!187 (Concat!306 (_1!293 lt!3323) (regTwo!886 r!13380)) (_1!293 lt!3322)) (_2!293 lt!3322)))))

(declare-fun b!38169 () Bool)

(assert (=> b!38169 (= e!18898 e!18897)))

(assert (=> b!38169 (= c!15725 ((_ is Union!187) r!13380))))

(declare-fun d!4052 () Bool)

(declare-fun lt!3319 () tuple2!454)

(assert (=> d!4052 (= (_1!293 lt!3319) (derivativeStep!6 r!13380 (head!339 input!6011)))))

(assert (=> d!4052 (= lt!3319 e!18899)))

(declare-fun c!15724 () Bool)

(assert (=> d!4052 (= c!15724 ((_ is Some!49) lt!3325))))

(declare-fun get!199 (Cache!46 Regex!187 C!1408) Option!50)

(assert (=> d!4052 (= lt!3325 (get!199 cache!443 r!13380 (head!339 input!6011)))))

(assert (=> d!4052 (validRegex!23 r!13380)))

(assert (=> d!4052 (= (derivativeStepMem!10 r!13380 (head!339 input!6011) cache!443) lt!3319)))

(declare-fun b!38177 () Bool)

(declare-fun lt!3321 () tuple2!454)

(assert (=> b!38177 (= lt!3321 call!2868)))

(assert (=> b!38177 (= e!18900 (tuple2!455 (Union!187 (Concat!306 (_1!293 lt!3321) (regTwo!886 r!13380)) EmptyLang!187) (_2!293 lt!3321)))))

(declare-fun b!38178 () Bool)

(assert (=> b!38178 (= e!18896 e!18900)))

(assert (=> b!38178 (= c!15721 (nullable!16 (regOne!886 r!13380)))))

(declare-fun b!38179 () Bool)

(assert (=> b!38179 (= e!18898 (tuple2!455 (ite (= (head!339 input!6011) (c!15696 r!13380)) EmptyExpr!187 EmptyLang!187) cache!443))))

(declare-fun b!38180 () Bool)

(declare-fun lt!3324 () tuple2!454)

(assert (=> b!38180 (= e!18896 (tuple2!455 (Concat!306 (_1!293 lt!3324) (Star!187 (reg!516 r!13380))) (_2!293 lt!3324)))))

(assert (=> b!38180 (= lt!3324 call!2867)))

(assert (= (and d!4052 c!15724) b!38170))

(assert (= (and d!4052 (not c!15724)) b!38173))

(assert (= (and b!38173 c!15722) b!38175))

(assert (= (and b!38173 (not c!15722)) b!38174))

(assert (= (and b!38174 c!15726) b!38179))

(assert (= (and b!38174 (not c!15726)) b!38169))

(assert (= (and b!38169 c!15725) b!38172))

(assert (= (and b!38169 (not c!15725)) b!38171))

(assert (= (and b!38171 c!15723) b!38180))

(assert (= (and b!38171 (not c!15723)) b!38178))

(assert (= (and b!38178 c!15721) b!38176))

(assert (= (and b!38178 (not c!15721)) b!38177))

(assert (= (or b!38176 b!38177) bm!2863))

(assert (= (or b!38180 bm!2863) bm!2860))

(assert (= (or b!38172 bm!2860) bm!2861))

(assert (= (or b!38172 b!38176) bm!2862))

(assert (=> bm!2862 m!12406))

(declare-fun m!12440 () Bool)

(assert (=> bm!2862 m!12440))

(assert (=> d!4052 m!12406))

(assert (=> d!4052 m!12420))

(assert (=> d!4052 m!12406))

(declare-fun m!12442 () Bool)

(assert (=> d!4052 m!12442))

(assert (=> d!4052 m!12398))

(assert (=> b!38173 m!12406))

(declare-fun m!12444 () Bool)

(assert (=> b!38173 m!12444))

(assert (=> bm!2861 m!12406))

(declare-fun m!12446 () Bool)

(assert (=> bm!2861 m!12446))

(declare-fun m!12448 () Bool)

(assert (=> b!38178 m!12448))

(assert (=> b!38082 d!4052))

(declare-fun d!4054 () Bool)

(assert (=> d!4054 (= (tail!27 input!6011) (t!15268 input!6011))))

(assert (=> b!38082 d!4054))

(declare-fun d!4056 () Bool)

(assert (=> d!4056 (= (head!339 input!6011) (h!5826 input!6011))))

(assert (=> b!38082 d!4056))

(declare-fun d!4058 () Bool)

(assert (=> d!4058 (= (isEmpty!99 input!6011) ((_ is Nil!430) input!6011))))

(assert (=> b!38094 d!4058))

(declare-fun b!38199 () Bool)

(declare-fun res!28524 () Bool)

(declare-fun e!18922 () Bool)

(assert (=> b!38199 (=> res!28524 e!18922)))

(assert (=> b!38199 (= res!28524 (not ((_ is Concat!306) r!13380)))))

(declare-fun e!18917 () Bool)

(assert (=> b!38199 (= e!18917 e!18922)))

(declare-fun b!38200 () Bool)

(declare-fun e!18918 () Bool)

(declare-fun call!2876 () Bool)

(assert (=> b!38200 (= e!18918 call!2876)))

(declare-fun b!38201 () Bool)

(declare-fun e!18920 () Bool)

(assert (=> b!38201 (= e!18922 e!18920)))

(declare-fun res!28523 () Bool)

(assert (=> b!38201 (=> (not res!28523) (not e!18920))))

(declare-fun call!2877 () Bool)

(assert (=> b!38201 (= res!28523 call!2877)))

(declare-fun c!15732 () Bool)

(declare-fun call!2875 () Bool)

(declare-fun c!15731 () Bool)

(declare-fun bm!2870 () Bool)

(assert (=> bm!2870 (= call!2875 (validRegex!23 (ite c!15731 (reg!516 r!13380) (ite c!15732 (regOne!887 r!13380) (regOne!886 r!13380)))))))

(declare-fun d!4060 () Bool)

(declare-fun res!28526 () Bool)

(declare-fun e!18916 () Bool)

(assert (=> d!4060 (=> res!28526 e!18916)))

(assert (=> d!4060 (= res!28526 ((_ is ElementMatch!187) r!13380))))

(assert (=> d!4060 (= (validRegex!23 r!13380) e!18916)))

(declare-fun b!38202 () Bool)

(declare-fun e!18921 () Bool)

(assert (=> b!38202 (= e!18921 e!18917)))

(assert (=> b!38202 (= c!15732 ((_ is Union!187) r!13380))))

(declare-fun b!38203 () Bool)

(declare-fun res!28522 () Bool)

(assert (=> b!38203 (=> (not res!28522) (not e!18918))))

(assert (=> b!38203 (= res!28522 call!2877)))

(assert (=> b!38203 (= e!18917 e!18918)))

(declare-fun b!38204 () Bool)

(assert (=> b!38204 (= e!18920 call!2876)))

(declare-fun b!38205 () Bool)

(declare-fun e!18919 () Bool)

(assert (=> b!38205 (= e!18921 e!18919)))

(declare-fun res!28525 () Bool)

(assert (=> b!38205 (= res!28525 (not (nullable!16 (reg!516 r!13380))))))

(assert (=> b!38205 (=> (not res!28525) (not e!18919))))

(declare-fun bm!2871 () Bool)

(assert (=> bm!2871 (= call!2877 call!2875)))

(declare-fun b!38206 () Bool)

(assert (=> b!38206 (= e!18916 e!18921)))

(assert (=> b!38206 (= c!15731 ((_ is Star!187) r!13380))))

(declare-fun b!38207 () Bool)

(assert (=> b!38207 (= e!18919 call!2875)))

(declare-fun bm!2872 () Bool)

(assert (=> bm!2872 (= call!2876 (validRegex!23 (ite c!15732 (regTwo!887 r!13380) (regTwo!886 r!13380))))))

(assert (= (and d!4060 (not res!28526)) b!38206))

(assert (= (and b!38206 c!15731) b!38205))

(assert (= (and b!38206 (not c!15731)) b!38202))

(assert (= (and b!38205 res!28525) b!38207))

(assert (= (and b!38202 c!15732) b!38203))

(assert (= (and b!38202 (not c!15732)) b!38199))

(assert (= (and b!38203 res!28522) b!38200))

(assert (= (and b!38199 (not res!28524)) b!38201))

(assert (= (and b!38201 res!28523) b!38204))

(assert (= (or b!38203 b!38201) bm!2871))

(assert (= (or b!38200 b!38204) bm!2872))

(assert (= (or b!38207 bm!2871) bm!2870))

(declare-fun m!12450 () Bool)

(assert (=> bm!2870 m!12450))

(declare-fun m!12452 () Bool)

(assert (=> b!38205 m!12452))

(declare-fun m!12454 () Bool)

(assert (=> bm!2872 m!12454))

(assert (=> start!2142 d!4060))

(declare-fun d!4062 () Bool)

(declare-fun res!28529 () Bool)

(declare-fun e!18925 () Bool)

(assert (=> d!4062 (=> (not res!28529) (not e!18925))))

(assert (=> d!4062 (= res!28529 ((_ is HashMap!119) (cache!602 cache!443)))))

(assert (=> d!4062 (= (inv!740 cache!443) e!18925)))

(declare-fun b!38210 () Bool)

(assert (=> b!38210 (= e!18925 (validCacheMap!8 (cache!602 cache!443)))))

(assert (= (and d!4062 res!28529) b!38210))

(assert (=> b!38210 m!12416))

(assert (=> start!2142 d!4062))

(declare-fun b!38215 () Bool)

(declare-fun tp!26491 () Bool)

(declare-fun tp!26493 () Bool)

(declare-fun tp!26492 () Bool)

(declare-fun e!18928 () Bool)

(assert (=> b!38215 (= e!18928 (and tp!26491 tp_is_empty!399 tp!26492 tp!26493))))

(assert (=> b!38087 (= tp!26478 e!18928)))

(assert (= (and b!38087 ((_ is Cons!429) (zeroValue!379 (v!12218 (underlying!441 (v!12219 (underlying!442 (cache!602 cache!443)))))))) b!38215))

(declare-fun tp!26495 () Bool)

(declare-fun tp!26494 () Bool)

(declare-fun b!38216 () Bool)

(declare-fun tp!26496 () Bool)

(declare-fun e!18929 () Bool)

(assert (=> b!38216 (= e!18929 (and tp!26494 tp_is_empty!399 tp!26495 tp!26496))))

(assert (=> b!38087 (= tp!26483 e!18929)))

(assert (= (and b!38087 ((_ is Cons!429) (minValue!379 (v!12218 (underlying!441 (v!12219 (underlying!442 (cache!602 cache!443)))))))) b!38216))

(declare-fun b!38221 () Bool)

(declare-fun e!18932 () Bool)

(declare-fun tp!26499 () Bool)

(assert (=> b!38221 (= e!18932 (and tp_is_empty!399 tp!26499))))

(assert (=> b!38091 (= tp!26472 e!18932)))

(assert (= (and b!38091 ((_ is Cons!430) (t!15268 input!6011))) b!38221))

(declare-fun e!18935 () Bool)

(assert (=> b!38092 (= tp!26473 e!18935)))

(declare-fun b!38234 () Bool)

(declare-fun tp!26510 () Bool)

(assert (=> b!38234 (= e!18935 tp!26510)))

(declare-fun b!38235 () Bool)

(declare-fun tp!26514 () Bool)

(declare-fun tp!26511 () Bool)

(assert (=> b!38235 (= e!18935 (and tp!26514 tp!26511))))

(declare-fun b!38233 () Bool)

(declare-fun tp!26512 () Bool)

(declare-fun tp!26513 () Bool)

(assert (=> b!38233 (= e!18935 (and tp!26512 tp!26513))))

(declare-fun b!38232 () Bool)

(assert (=> b!38232 (= e!18935 tp_is_empty!399)))

(assert (= (and b!38092 ((_ is ElementMatch!187) (regOne!887 r!13380))) b!38232))

(assert (= (and b!38092 ((_ is Concat!306) (regOne!887 r!13380))) b!38233))

(assert (= (and b!38092 ((_ is Star!187) (regOne!887 r!13380))) b!38234))

(assert (= (and b!38092 ((_ is Union!187) (regOne!887 r!13380))) b!38235))

(declare-fun e!18936 () Bool)

(assert (=> b!38092 (= tp!26481 e!18936)))

(declare-fun b!38238 () Bool)

(declare-fun tp!26515 () Bool)

(assert (=> b!38238 (= e!18936 tp!26515)))

(declare-fun b!38239 () Bool)

(declare-fun tp!26519 () Bool)

(declare-fun tp!26516 () Bool)

(assert (=> b!38239 (= e!18936 (and tp!26519 tp!26516))))

(declare-fun b!38237 () Bool)

(declare-fun tp!26517 () Bool)

(declare-fun tp!26518 () Bool)

(assert (=> b!38237 (= e!18936 (and tp!26517 tp!26518))))

(declare-fun b!38236 () Bool)

(assert (=> b!38236 (= e!18936 tp_is_empty!399)))

(assert (= (and b!38092 ((_ is ElementMatch!187) (regTwo!887 r!13380))) b!38236))

(assert (= (and b!38092 ((_ is Concat!306) (regTwo!887 r!13380))) b!38237))

(assert (= (and b!38092 ((_ is Star!187) (regTwo!887 r!13380))) b!38238))

(assert (= (and b!38092 ((_ is Union!187) (regTwo!887 r!13380))) b!38239))

(declare-fun e!18937 () Bool)

(assert (=> b!38096 (= tp!26476 e!18937)))

(declare-fun b!38242 () Bool)

(declare-fun tp!26520 () Bool)

(assert (=> b!38242 (= e!18937 tp!26520)))

(declare-fun b!38243 () Bool)

(declare-fun tp!26524 () Bool)

(declare-fun tp!26521 () Bool)

(assert (=> b!38243 (= e!18937 (and tp!26524 tp!26521))))

(declare-fun b!38241 () Bool)

(declare-fun tp!26522 () Bool)

(declare-fun tp!26523 () Bool)

(assert (=> b!38241 (= e!18937 (and tp!26522 tp!26523))))

(declare-fun b!38240 () Bool)

(assert (=> b!38240 (= e!18937 tp_is_empty!399)))

(assert (= (and b!38096 ((_ is ElementMatch!187) (regOne!886 r!13380))) b!38240))

(assert (= (and b!38096 ((_ is Concat!306) (regOne!886 r!13380))) b!38241))

(assert (= (and b!38096 ((_ is Star!187) (regOne!886 r!13380))) b!38242))

(assert (= (and b!38096 ((_ is Union!187) (regOne!886 r!13380))) b!38243))

(declare-fun e!18938 () Bool)

(assert (=> b!38096 (= tp!26482 e!18938)))

(declare-fun b!38246 () Bool)

(declare-fun tp!26525 () Bool)

(assert (=> b!38246 (= e!18938 tp!26525)))

(declare-fun b!38247 () Bool)

(declare-fun tp!26529 () Bool)

(declare-fun tp!26526 () Bool)

(assert (=> b!38247 (= e!18938 (and tp!26529 tp!26526))))

(declare-fun b!38245 () Bool)

(declare-fun tp!26527 () Bool)

(declare-fun tp!26528 () Bool)

(assert (=> b!38245 (= e!18938 (and tp!26527 tp!26528))))

(declare-fun b!38244 () Bool)

(assert (=> b!38244 (= e!18938 tp_is_empty!399)))

(assert (= (and b!38096 ((_ is ElementMatch!187) (regTwo!886 r!13380))) b!38244))

(assert (= (and b!38096 ((_ is Concat!306) (regTwo!886 r!13380))) b!38245))

(assert (= (and b!38096 ((_ is Star!187) (regTwo!886 r!13380))) b!38246))

(assert (= (and b!38096 ((_ is Union!187) (regTwo!886 r!13380))) b!38247))

(declare-fun tp!26531 () Bool)

(declare-fun e!18939 () Bool)

(declare-fun tp!26532 () Bool)

(declare-fun b!38248 () Bool)

(declare-fun tp!26530 () Bool)

(assert (=> b!38248 (= e!18939 (and tp!26530 tp_is_empty!399 tp!26531 tp!26532))))

(assert (=> b!38090 (= tp!26480 e!18939)))

(assert (= (and b!38090 ((_ is Cons!429) mapDefault!426)) b!38248))

(declare-fun b!38255 () Bool)

(declare-fun e!18945 () Bool)

(declare-fun tp!26550 () Bool)

(declare-fun tp!26552 () Bool)

(declare-fun tp!26547 () Bool)

(assert (=> b!38255 (= e!18945 (and tp!26550 tp_is_empty!399 tp!26547 tp!26552))))

(declare-fun condMapEmpty!429 () Bool)

(declare-fun mapDefault!429 () List!431)

(assert (=> mapNonEmpty!426 (= condMapEmpty!429 (= mapRest!426 ((as const (Array (_ BitVec 32) List!431)) mapDefault!429)))))

(declare-fun e!18944 () Bool)

(declare-fun mapRes!429 () Bool)

(assert (=> mapNonEmpty!426 (= tp!26479 (and e!18944 mapRes!429))))

(declare-fun mapIsEmpty!429 () Bool)

(assert (=> mapIsEmpty!429 mapRes!429))

(declare-fun b!38256 () Bool)

(declare-fun tp!26548 () Bool)

(declare-fun tp!26549 () Bool)

(declare-fun tp!26553 () Bool)

(assert (=> b!38256 (= e!18944 (and tp!26549 tp_is_empty!399 tp!26553 tp!26548))))

(declare-fun mapNonEmpty!429 () Bool)

(declare-fun tp!26551 () Bool)

(assert (=> mapNonEmpty!429 (= mapRes!429 (and tp!26551 e!18945))))

(declare-fun mapKey!429 () (_ BitVec 32))

(declare-fun mapValue!429 () List!431)

(declare-fun mapRest!429 () (Array (_ BitVec 32) List!431))

(assert (=> mapNonEmpty!429 (= mapRest!426 (store mapRest!429 mapKey!429 mapValue!429))))

(assert (= (and mapNonEmpty!426 condMapEmpty!429) mapIsEmpty!429))

(assert (= (and mapNonEmpty!426 (not condMapEmpty!429)) mapNonEmpty!429))

(assert (= (and mapNonEmpty!429 ((_ is Cons!429) mapValue!429)) b!38255))

(assert (= (and mapNonEmpty!426 ((_ is Cons!429) mapDefault!429)) b!38256))

(declare-fun m!12456 () Bool)

(assert (=> mapNonEmpty!429 m!12456))

(declare-fun e!18946 () Bool)

(declare-fun tp!26554 () Bool)

(declare-fun tp!26555 () Bool)

(declare-fun b!38257 () Bool)

(declare-fun tp!26556 () Bool)

(assert (=> b!38257 (= e!18946 (and tp!26554 tp_is_empty!399 tp!26555 tp!26556))))

(assert (=> mapNonEmpty!426 (= tp!26474 e!18946)))

(assert (= (and mapNonEmpty!426 ((_ is Cons!429) mapValue!426)) b!38257))

(declare-fun e!18947 () Bool)

(assert (=> b!38089 (= tp!26475 e!18947)))

(declare-fun b!38260 () Bool)

(declare-fun tp!26557 () Bool)

(assert (=> b!38260 (= e!18947 tp!26557)))

(declare-fun b!38261 () Bool)

(declare-fun tp!26561 () Bool)

(declare-fun tp!26558 () Bool)

(assert (=> b!38261 (= e!18947 (and tp!26561 tp!26558))))

(declare-fun b!38259 () Bool)

(declare-fun tp!26559 () Bool)

(declare-fun tp!26560 () Bool)

(assert (=> b!38259 (= e!18947 (and tp!26559 tp!26560))))

(declare-fun b!38258 () Bool)

(assert (=> b!38258 (= e!18947 tp_is_empty!399)))

(assert (= (and b!38089 ((_ is ElementMatch!187) (reg!516 r!13380))) b!38258))

(assert (= (and b!38089 ((_ is Concat!306) (reg!516 r!13380))) b!38259))

(assert (= (and b!38089 ((_ is Star!187) (reg!516 r!13380))) b!38260))

(assert (= (and b!38089 ((_ is Union!187) (reg!516 r!13380))) b!38261))

(check-sat (not b!38143) (not bm!2862) (not mapNonEmpty!429) (not b!38144) b_and!641 (not b!38242) (not b!38256) (not b_next!605) (not b!38215) (not b!38260) (not b!38125) (not b!38261) (not b!38216) (not bm!2870) (not bm!2872) (not b!38245) (not b!38255) (not b!38239) (not b!38247) (not b!38238) (not b!38205) (not b_next!607) (not b!38129) (not b!38233) (not b!38237) (not b!38173) (not b!38210) (not b!38178) (not b!38134) (not d!4042) (not b!38241) tp_is_empty!399 (not d!4048) (not bm!2851) (not b!38257) (not b!38248) (not bm!2861) (not b!38246) (not d!4050) (not b!38130) (not b!38137) (not d!4052) (not b!38126) (not b!38259) b_and!639 (not b!38243) (not b!38235) (not b!38234) (not b!38221))
(check-sat b_and!639 b_and!641 (not b_next!605) (not b_next!607))

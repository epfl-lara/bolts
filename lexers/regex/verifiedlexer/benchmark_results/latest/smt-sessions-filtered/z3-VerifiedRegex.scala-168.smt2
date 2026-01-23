; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2082 () Bool)

(assert start!2082)

(declare-fun b!37487 () Bool)

(declare-fun b_free!581 () Bool)

(declare-fun b_next!581 () Bool)

(assert (=> b!37487 (= b_free!581 (not b_next!581))))

(declare-fun tp!26016 () Bool)

(declare-fun b_and!615 () Bool)

(assert (=> b!37487 (= tp!26016 b_and!615)))

(declare-fun b!37485 () Bool)

(declare-fun b_free!583 () Bool)

(declare-fun b_next!583 () Bool)

(assert (=> b!37485 (= b_free!583 (not b_next!583))))

(declare-fun tp!26010 () Bool)

(declare-fun b_and!617 () Bool)

(assert (=> b!37485 (= tp!26010 b_and!617)))

(declare-fun b!37478 () Bool)

(declare-fun e!18476 () Bool)

(declare-fun tp_is_empty!387 () Bool)

(declare-fun tp!26009 () Bool)

(assert (=> b!37478 (= e!18476 (and tp_is_empty!387 tp!26009))))

(declare-fun b!37479 () Bool)

(declare-fun e!18474 () Bool)

(declare-fun e!18473 () Bool)

(assert (=> b!37479 (= e!18474 e!18473)))

(declare-fun b!37480 () Bool)

(declare-fun e!18468 () Bool)

(declare-datatypes ((C!1396 0))(
  ( (C!1397 (val!217 Int)) )
))
(declare-datatypes ((List!420 0))(
  ( (Nil!418) (Cons!418 (h!5814 C!1396) (t!15256 List!420)) )
))
(declare-fun input!6011 () List!420)

(declare-fun size!469 (List!420) Int)

(assert (=> b!37480 (= e!18468 (< (size!469 input!6011) 0))))

(declare-fun b!37481 () Bool)

(declare-fun e!18472 () Bool)

(assert (=> b!37481 (= e!18472 e!18474)))

(declare-fun b!37482 () Bool)

(declare-fun e!18470 () Bool)

(declare-fun tp!26015 () Bool)

(declare-fun tp!26008 () Bool)

(assert (=> b!37482 (= e!18470 (and tp!26015 tp!26008))))

(declare-fun b!37483 () Bool)

(declare-fun res!28354 () Bool)

(assert (=> b!37483 (=> (not res!28354) (not e!18468))))

(declare-datatypes ((Regex!181 0))(
  ( (ElementMatch!181 (c!15638 C!1396)) (Concat!300 (regOne!874 Regex!181) (regTwo!874 Regex!181)) (EmptyExpr!181) (Star!181 (reg!510 Regex!181)) (EmptyLang!181) (Union!181 (regOne!875 Regex!181) (regTwo!875 Regex!181)) )
))
(declare-datatypes ((tuple2!418 0))(
  ( (tuple2!419 (_1!275 Regex!181) (_2!275 C!1396)) )
))
(declare-datatypes ((tuple2!420 0))(
  ( (tuple2!421 (_1!276 tuple2!418) (_2!276 Regex!181)) )
))
(declare-datatypes ((List!421 0))(
  ( (Nil!419) (Cons!419 (h!5815 tuple2!420) (t!15257 List!421)) )
))
(declare-datatypes ((array!402 0))(
  ( (array!403 (arr!212 (Array (_ BitVec 32) List!421)) (size!470 (_ BitVec 32))) )
))
(declare-datatypes ((array!404 0))(
  ( (array!405 (arr!213 (Array (_ BitVec 32) (_ BitVec 64))) (size!471 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!234 0))(
  ( (LongMapFixedSize!235 (defaultEntry!455 Int) (mask!809 (_ BitVec 32)) (extraKeys!363 (_ BitVec 32)) (zeroValue!373 List!421) (minValue!373 List!421) (_size!366 (_ BitVec 32)) (_keys!408 array!404) (_values!395 array!402) (_vacant!177 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!113 0))(
  ( (HashableExt!112 (__x!773 Int)) )
))
(declare-datatypes ((Cell!457 0))(
  ( (Cell!458 (v!12205 LongMapFixedSize!234)) )
))
(declare-datatypes ((MutLongMap!117 0))(
  ( (LongMap!117 (underlying!429 Cell!457)) (MutLongMapExt!116 (__x!774 Int)) )
))
(declare-datatypes ((Cell!459 0))(
  ( (Cell!460 (v!12206 MutLongMap!117)) )
))
(declare-datatypes ((MutableMap!113 0))(
  ( (MutableMapExt!112 (__x!775 Int)) (HashMap!113 (underlying!430 Cell!459) (hashF!1981 Hashable!113) (_size!367 (_ BitVec 32)) (defaultValue!262 Int)) )
))
(declare-datatypes ((Cache!34 0))(
  ( (Cache!35 (cache!595 MutableMap!113)) )
))
(declare-fun cache!443 () Cache!34)

(declare-fun valid!126 (Cache!34) Bool)

(assert (=> b!37483 (= res!28354 (valid!126 cache!443))))

(declare-fun b!37484 () Bool)

(assert (=> b!37484 (= e!18470 tp_is_empty!387)))

(declare-fun e!18471 () Bool)

(declare-fun e!18469 () Bool)

(assert (=> b!37485 (= e!18471 (and e!18469 tp!26010))))

(declare-fun mapIsEmpty!399 () Bool)

(declare-fun mapRes!399 () Bool)

(assert (=> mapIsEmpty!399 mapRes!399))

(declare-fun b!37486 () Bool)

(declare-fun e!18477 () Bool)

(declare-fun tp!26012 () Bool)

(assert (=> b!37486 (= e!18477 (and tp!26012 mapRes!399))))

(declare-fun condMapEmpty!399 () Bool)

(declare-fun mapDefault!399 () List!421)

(assert (=> b!37486 (= condMapEmpty!399 (= (arr!212 (_values!395 (v!12205 (underlying!429 (v!12206 (underlying!430 (cache!595 cache!443))))))) ((as const (Array (_ BitVec 32) List!421)) mapDefault!399)))))

(declare-fun mapNonEmpty!399 () Bool)

(declare-fun tp!26017 () Bool)

(declare-fun tp!26018 () Bool)

(assert (=> mapNonEmpty!399 (= mapRes!399 (and tp!26017 tp!26018))))

(declare-fun mapKey!399 () (_ BitVec 32))

(declare-fun mapValue!399 () List!421)

(declare-fun mapRest!399 () (Array (_ BitVec 32) List!421))

(assert (=> mapNonEmpty!399 (= (arr!212 (_values!395 (v!12205 (underlying!429 (v!12206 (underlying!430 (cache!595 cache!443))))))) (store mapRest!399 mapKey!399 mapValue!399))))

(declare-fun tp!26019 () Bool)

(declare-fun tp!26007 () Bool)

(declare-fun array_inv!128 (array!404) Bool)

(declare-fun array_inv!129 (array!402) Bool)

(assert (=> b!37487 (= e!18473 (and tp!26016 tp!26007 tp!26019 (array_inv!128 (_keys!408 (v!12205 (underlying!429 (v!12206 (underlying!430 (cache!595 cache!443))))))) (array_inv!129 (_values!395 (v!12205 (underlying!429 (v!12206 (underlying!430 (cache!595 cache!443))))))) e!18477))))

(declare-fun b!37488 () Bool)

(declare-fun tp!26013 () Bool)

(declare-fun tp!26014 () Bool)

(assert (=> b!37488 (= e!18470 (and tp!26013 tp!26014))))

(declare-fun b!37489 () Bool)

(declare-fun e!18467 () Bool)

(assert (=> b!37489 (= e!18467 e!18471)))

(declare-fun res!28355 () Bool)

(assert (=> start!2082 (=> (not res!28355) (not e!18468))))

(declare-fun r!13380 () Regex!181)

(declare-fun validRegex!18 (Regex!181) Bool)

(assert (=> start!2082 (= res!28355 (validRegex!18 r!13380))))

(assert (=> start!2082 e!18468))

(assert (=> start!2082 e!18470))

(declare-fun inv!726 (Cache!34) Bool)

(assert (=> start!2082 (and (inv!726 cache!443) e!18467)))

(assert (=> start!2082 e!18476))

(declare-fun b!37490 () Bool)

(declare-fun tp!26011 () Bool)

(assert (=> b!37490 (= e!18470 tp!26011)))

(declare-fun b!37491 () Bool)

(declare-fun lt!3219 () MutLongMap!117)

(get-info :version)

(assert (=> b!37491 (= e!18469 (and e!18472 ((_ is LongMap!117) lt!3219)))))

(assert (=> b!37491 (= lt!3219 (v!12206 (underlying!430 (cache!595 cache!443))))))

(assert (= (and start!2082 res!28355) b!37483))

(assert (= (and b!37483 res!28354) b!37480))

(assert (= (and start!2082 ((_ is ElementMatch!181) r!13380)) b!37484))

(assert (= (and start!2082 ((_ is Concat!300) r!13380)) b!37488))

(assert (= (and start!2082 ((_ is Star!181) r!13380)) b!37490))

(assert (= (and start!2082 ((_ is Union!181) r!13380)) b!37482))

(assert (= (and b!37486 condMapEmpty!399) mapIsEmpty!399))

(assert (= (and b!37486 (not condMapEmpty!399)) mapNonEmpty!399))

(assert (= b!37487 b!37486))

(assert (= b!37479 b!37487))

(assert (= b!37481 b!37479))

(assert (= (and b!37491 ((_ is LongMap!117) (v!12206 (underlying!430 (cache!595 cache!443))))) b!37481))

(assert (= b!37485 b!37491))

(assert (= (and b!37489 ((_ is HashMap!113) (cache!595 cache!443))) b!37485))

(assert (= start!2082 b!37489))

(assert (= (and start!2082 ((_ is Cons!418) input!6011)) b!37478))

(declare-fun m!12210 () Bool)

(assert (=> start!2082 m!12210))

(declare-fun m!12212 () Bool)

(assert (=> start!2082 m!12212))

(declare-fun m!12214 () Bool)

(assert (=> b!37487 m!12214))

(declare-fun m!12216 () Bool)

(assert (=> b!37487 m!12216))

(declare-fun m!12218 () Bool)

(assert (=> mapNonEmpty!399 m!12218))

(declare-fun m!12220 () Bool)

(assert (=> b!37480 m!12220))

(declare-fun m!12222 () Bool)

(assert (=> b!37483 m!12222))

(check-sat (not b!37490) tp_is_empty!387 (not b!37478) (not b!37483) (not b!37487) (not b_next!583) b_and!617 (not b!37480) (not b!37486) (not b!37482) b_and!615 (not start!2082) (not mapNonEmpty!399) (not b!37488) (not b_next!581))
(check-sat b_and!615 b_and!617 (not b_next!581) (not b_next!583))
(get-model)

(declare-fun b!37510 () Bool)

(declare-fun e!18496 () Bool)

(declare-fun call!2820 () Bool)

(assert (=> b!37510 (= e!18496 call!2820)))

(declare-fun b!37512 () Bool)

(declare-fun e!18497 () Bool)

(declare-fun e!18498 () Bool)

(assert (=> b!37512 (= e!18497 e!18498)))

(declare-fun res!28368 () Bool)

(declare-fun nullable!12 (Regex!181) Bool)

(assert (=> b!37512 (= res!28368 (not (nullable!12 (reg!510 r!13380))))))

(assert (=> b!37512 (=> (not res!28368) (not e!18498))))

(declare-fun b!37513 () Bool)

(declare-fun call!2818 () Bool)

(assert (=> b!37513 (= e!18498 call!2818)))

(declare-fun b!37514 () Bool)

(declare-fun res!28367 () Bool)

(declare-fun e!18492 () Bool)

(assert (=> b!37514 (=> (not res!28367) (not e!18492))))

(declare-fun call!2819 () Bool)

(assert (=> b!37514 (= res!28367 call!2819)))

(declare-fun e!18493 () Bool)

(assert (=> b!37514 (= e!18493 e!18492)))

(declare-fun bm!2813 () Bool)

(declare-fun c!15644 () Bool)

(assert (=> bm!2813 (= call!2819 (validRegex!18 (ite c!15644 (regOne!875 r!13380) (regOne!874 r!13380))))))

(declare-fun b!37515 () Bool)

(declare-fun e!18495 () Bool)

(assert (=> b!37515 (= e!18495 e!18497)))

(declare-fun c!15643 () Bool)

(assert (=> b!37515 (= c!15643 ((_ is Star!181) r!13380))))

(declare-fun b!37516 () Bool)

(assert (=> b!37516 (= e!18497 e!18493)))

(assert (=> b!37516 (= c!15644 ((_ is Union!181) r!13380))))

(declare-fun bm!2814 () Bool)

(assert (=> bm!2814 (= call!2820 call!2818)))

(declare-fun bm!2815 () Bool)

(assert (=> bm!2815 (= call!2818 (validRegex!18 (ite c!15643 (reg!510 r!13380) (ite c!15644 (regTwo!875 r!13380) (regTwo!874 r!13380)))))))

(declare-fun b!37517 () Bool)

(declare-fun e!18494 () Bool)

(assert (=> b!37517 (= e!18494 e!18496)))

(declare-fun res!28370 () Bool)

(assert (=> b!37517 (=> (not res!28370) (not e!18496))))

(assert (=> b!37517 (= res!28370 call!2819)))

(declare-fun b!37518 () Bool)

(declare-fun res!28369 () Bool)

(assert (=> b!37518 (=> res!28369 e!18494)))

(assert (=> b!37518 (= res!28369 (not ((_ is Concat!300) r!13380)))))

(assert (=> b!37518 (= e!18493 e!18494)))

(declare-fun b!37511 () Bool)

(assert (=> b!37511 (= e!18492 call!2820)))

(declare-fun d!3989 () Bool)

(declare-fun res!28366 () Bool)

(assert (=> d!3989 (=> res!28366 e!18495)))

(assert (=> d!3989 (= res!28366 ((_ is ElementMatch!181) r!13380))))

(assert (=> d!3989 (= (validRegex!18 r!13380) e!18495)))

(assert (= (and d!3989 (not res!28366)) b!37515))

(assert (= (and b!37515 c!15643) b!37512))

(assert (= (and b!37515 (not c!15643)) b!37516))

(assert (= (and b!37512 res!28368) b!37513))

(assert (= (and b!37516 c!15644) b!37514))

(assert (= (and b!37516 (not c!15644)) b!37518))

(assert (= (and b!37514 res!28367) b!37511))

(assert (= (and b!37518 (not res!28369)) b!37517))

(assert (= (and b!37517 res!28370) b!37510))

(assert (= (or b!37514 b!37517) bm!2813))

(assert (= (or b!37511 b!37510) bm!2814))

(assert (= (or b!37513 bm!2814) bm!2815))

(declare-fun m!12224 () Bool)

(assert (=> b!37512 m!12224))

(declare-fun m!12226 () Bool)

(assert (=> bm!2813 m!12226))

(declare-fun m!12228 () Bool)

(assert (=> bm!2815 m!12228))

(assert (=> start!2082 d!3989))

(declare-fun d!3991 () Bool)

(declare-fun res!28373 () Bool)

(declare-fun e!18501 () Bool)

(assert (=> d!3991 (=> (not res!28373) (not e!18501))))

(assert (=> d!3991 (= res!28373 ((_ is HashMap!113) (cache!595 cache!443)))))

(assert (=> d!3991 (= (inv!726 cache!443) e!18501)))

(declare-fun b!37521 () Bool)

(declare-fun validCacheMap!5 (MutableMap!113) Bool)

(assert (=> b!37521 (= e!18501 (validCacheMap!5 (cache!595 cache!443)))))

(assert (= (and d!3991 res!28373) b!37521))

(declare-fun m!12230 () Bool)

(assert (=> b!37521 m!12230))

(assert (=> start!2082 d!3991))

(declare-fun d!3993 () Bool)

(assert (=> d!3993 (= (valid!126 cache!443) (validCacheMap!5 (cache!595 cache!443)))))

(declare-fun bs!4989 () Bool)

(assert (= bs!4989 d!3993))

(assert (=> bs!4989 m!12230))

(assert (=> b!37483 d!3993))

(declare-fun d!3995 () Bool)

(assert (=> d!3995 (= (array_inv!128 (_keys!408 (v!12205 (underlying!429 (v!12206 (underlying!430 (cache!595 cache!443))))))) (bvsge (size!471 (_keys!408 (v!12205 (underlying!429 (v!12206 (underlying!430 (cache!595 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!37487 d!3995))

(declare-fun d!3997 () Bool)

(assert (=> d!3997 (= (array_inv!129 (_values!395 (v!12205 (underlying!429 (v!12206 (underlying!430 (cache!595 cache!443))))))) (bvsge (size!470 (_values!395 (v!12205 (underlying!429 (v!12206 (underlying!430 (cache!595 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!37487 d!3997))

(declare-fun d!3999 () Bool)

(declare-fun lt!3222 () Int)

(assert (=> d!3999 (>= lt!3222 0)))

(declare-fun e!18504 () Int)

(assert (=> d!3999 (= lt!3222 e!18504)))

(declare-fun c!15647 () Bool)

(assert (=> d!3999 (= c!15647 ((_ is Nil!418) input!6011))))

(assert (=> d!3999 (= (size!469 input!6011) lt!3222)))

(declare-fun b!37526 () Bool)

(assert (=> b!37526 (= e!18504 0)))

(declare-fun b!37527 () Bool)

(assert (=> b!37527 (= e!18504 (+ 1 (size!469 (t!15256 input!6011))))))

(assert (= (and d!3999 c!15647) b!37526))

(assert (= (and d!3999 (not c!15647)) b!37527))

(declare-fun m!12232 () Bool)

(assert (=> b!37527 m!12232))

(assert (=> b!37480 d!3999))

(declare-fun tp!26027 () Bool)

(declare-fun e!18507 () Bool)

(declare-fun tp!26028 () Bool)

(declare-fun b!37532 () Bool)

(declare-fun tp!26026 () Bool)

(assert (=> b!37532 (= e!18507 (and tp!26026 tp_is_empty!387 tp!26027 tp!26028))))

(assert (=> b!37486 (= tp!26012 e!18507)))

(assert (= (and b!37486 ((_ is Cons!419) mapDefault!399)) b!37532))

(declare-fun b!37544 () Bool)

(declare-fun e!18510 () Bool)

(declare-fun tp!26042 () Bool)

(declare-fun tp!26040 () Bool)

(assert (=> b!37544 (= e!18510 (and tp!26042 tp!26040))))

(assert (=> b!37482 (= tp!26015 e!18510)))

(declare-fun b!37546 () Bool)

(declare-fun tp!26041 () Bool)

(declare-fun tp!26039 () Bool)

(assert (=> b!37546 (= e!18510 (and tp!26041 tp!26039))))

(declare-fun b!37543 () Bool)

(assert (=> b!37543 (= e!18510 tp_is_empty!387)))

(declare-fun b!37545 () Bool)

(declare-fun tp!26043 () Bool)

(assert (=> b!37545 (= e!18510 tp!26043)))

(assert (= (and b!37482 ((_ is ElementMatch!181) (regOne!875 r!13380))) b!37543))

(assert (= (and b!37482 ((_ is Concat!300) (regOne!875 r!13380))) b!37544))

(assert (= (and b!37482 ((_ is Star!181) (regOne!875 r!13380))) b!37545))

(assert (= (and b!37482 ((_ is Union!181) (regOne!875 r!13380))) b!37546))

(declare-fun b!37548 () Bool)

(declare-fun e!18511 () Bool)

(declare-fun tp!26047 () Bool)

(declare-fun tp!26045 () Bool)

(assert (=> b!37548 (= e!18511 (and tp!26047 tp!26045))))

(assert (=> b!37482 (= tp!26008 e!18511)))

(declare-fun b!37550 () Bool)

(declare-fun tp!26046 () Bool)

(declare-fun tp!26044 () Bool)

(assert (=> b!37550 (= e!18511 (and tp!26046 tp!26044))))

(declare-fun b!37547 () Bool)

(assert (=> b!37547 (= e!18511 tp_is_empty!387)))

(declare-fun b!37549 () Bool)

(declare-fun tp!26048 () Bool)

(assert (=> b!37549 (= e!18511 tp!26048)))

(assert (= (and b!37482 ((_ is ElementMatch!181) (regTwo!875 r!13380))) b!37547))

(assert (= (and b!37482 ((_ is Concat!300) (regTwo!875 r!13380))) b!37548))

(assert (= (and b!37482 ((_ is Star!181) (regTwo!875 r!13380))) b!37549))

(assert (= (and b!37482 ((_ is Union!181) (regTwo!875 r!13380))) b!37550))

(declare-fun mapNonEmpty!402 () Bool)

(declare-fun mapRes!402 () Bool)

(declare-fun tp!26068 () Bool)

(declare-fun e!18516 () Bool)

(assert (=> mapNonEmpty!402 (= mapRes!402 (and tp!26068 e!18516))))

(declare-fun mapValue!402 () List!421)

(declare-fun mapKey!402 () (_ BitVec 32))

(declare-fun mapRest!402 () (Array (_ BitVec 32) List!421))

(assert (=> mapNonEmpty!402 (= mapRest!399 (store mapRest!402 mapKey!402 mapValue!402))))

(declare-fun condMapEmpty!402 () Bool)

(declare-fun mapDefault!402 () List!421)

(assert (=> mapNonEmpty!399 (= condMapEmpty!402 (= mapRest!399 ((as const (Array (_ BitVec 32) List!421)) mapDefault!402)))))

(declare-fun e!18517 () Bool)

(assert (=> mapNonEmpty!399 (= tp!26017 (and e!18517 mapRes!402))))

(declare-fun tp!26067 () Bool)

(declare-fun tp!26065 () Bool)

(declare-fun b!37557 () Bool)

(declare-fun tp!26066 () Bool)

(assert (=> b!37557 (= e!18516 (and tp!26067 tp_is_empty!387 tp!26065 tp!26066))))

(declare-fun tp!26069 () Bool)

(declare-fun tp!26063 () Bool)

(declare-fun b!37558 () Bool)

(declare-fun tp!26064 () Bool)

(assert (=> b!37558 (= e!18517 (and tp!26069 tp_is_empty!387 tp!26063 tp!26064))))

(declare-fun mapIsEmpty!402 () Bool)

(assert (=> mapIsEmpty!402 mapRes!402))

(assert (= (and mapNonEmpty!399 condMapEmpty!402) mapIsEmpty!402))

(assert (= (and mapNonEmpty!399 (not condMapEmpty!402)) mapNonEmpty!402))

(assert (= (and mapNonEmpty!402 ((_ is Cons!419) mapValue!402)) b!37557))

(assert (= (and mapNonEmpty!399 ((_ is Cons!419) mapDefault!402)) b!37558))

(declare-fun m!12234 () Bool)

(assert (=> mapNonEmpty!402 m!12234))

(declare-fun e!18518 () Bool)

(declare-fun tp!26070 () Bool)

(declare-fun tp!26072 () Bool)

(declare-fun b!37559 () Bool)

(declare-fun tp!26071 () Bool)

(assert (=> b!37559 (= e!18518 (and tp!26070 tp_is_empty!387 tp!26071 tp!26072))))

(assert (=> mapNonEmpty!399 (= tp!26018 e!18518)))

(assert (= (and mapNonEmpty!399 ((_ is Cons!419) mapValue!399)) b!37559))

(declare-fun b!37564 () Bool)

(declare-fun e!18521 () Bool)

(declare-fun tp!26075 () Bool)

(assert (=> b!37564 (= e!18521 (and tp_is_empty!387 tp!26075))))

(assert (=> b!37478 (= tp!26009 e!18521)))

(assert (= (and b!37478 ((_ is Cons!418) (t!15256 input!6011))) b!37564))

(declare-fun b!37565 () Bool)

(declare-fun e!18522 () Bool)

(declare-fun tp!26077 () Bool)

(declare-fun tp!26076 () Bool)

(declare-fun tp!26078 () Bool)

(assert (=> b!37565 (= e!18522 (and tp!26076 tp_is_empty!387 tp!26077 tp!26078))))

(assert (=> b!37487 (= tp!26007 e!18522)))

(assert (= (and b!37487 ((_ is Cons!419) (zeroValue!373 (v!12205 (underlying!429 (v!12206 (underlying!430 (cache!595 cache!443)))))))) b!37565))

(declare-fun tp!26080 () Bool)

(declare-fun e!18523 () Bool)

(declare-fun tp!26081 () Bool)

(declare-fun tp!26079 () Bool)

(declare-fun b!37566 () Bool)

(assert (=> b!37566 (= e!18523 (and tp!26079 tp_is_empty!387 tp!26080 tp!26081))))

(assert (=> b!37487 (= tp!26019 e!18523)))

(assert (= (and b!37487 ((_ is Cons!419) (minValue!373 (v!12205 (underlying!429 (v!12206 (underlying!430 (cache!595 cache!443)))))))) b!37566))

(declare-fun b!37568 () Bool)

(declare-fun e!18524 () Bool)

(declare-fun tp!26085 () Bool)

(declare-fun tp!26083 () Bool)

(assert (=> b!37568 (= e!18524 (and tp!26085 tp!26083))))

(assert (=> b!37488 (= tp!26013 e!18524)))

(declare-fun b!37570 () Bool)

(declare-fun tp!26084 () Bool)

(declare-fun tp!26082 () Bool)

(assert (=> b!37570 (= e!18524 (and tp!26084 tp!26082))))

(declare-fun b!37567 () Bool)

(assert (=> b!37567 (= e!18524 tp_is_empty!387)))

(declare-fun b!37569 () Bool)

(declare-fun tp!26086 () Bool)

(assert (=> b!37569 (= e!18524 tp!26086)))

(assert (= (and b!37488 ((_ is ElementMatch!181) (regOne!874 r!13380))) b!37567))

(assert (= (and b!37488 ((_ is Concat!300) (regOne!874 r!13380))) b!37568))

(assert (= (and b!37488 ((_ is Star!181) (regOne!874 r!13380))) b!37569))

(assert (= (and b!37488 ((_ is Union!181) (regOne!874 r!13380))) b!37570))

(declare-fun b!37572 () Bool)

(declare-fun e!18525 () Bool)

(declare-fun tp!26090 () Bool)

(declare-fun tp!26088 () Bool)

(assert (=> b!37572 (= e!18525 (and tp!26090 tp!26088))))

(assert (=> b!37488 (= tp!26014 e!18525)))

(declare-fun b!37574 () Bool)

(declare-fun tp!26089 () Bool)

(declare-fun tp!26087 () Bool)

(assert (=> b!37574 (= e!18525 (and tp!26089 tp!26087))))

(declare-fun b!37571 () Bool)

(assert (=> b!37571 (= e!18525 tp_is_empty!387)))

(declare-fun b!37573 () Bool)

(declare-fun tp!26091 () Bool)

(assert (=> b!37573 (= e!18525 tp!26091)))

(assert (= (and b!37488 ((_ is ElementMatch!181) (regTwo!874 r!13380))) b!37571))

(assert (= (and b!37488 ((_ is Concat!300) (regTwo!874 r!13380))) b!37572))

(assert (= (and b!37488 ((_ is Star!181) (regTwo!874 r!13380))) b!37573))

(assert (= (and b!37488 ((_ is Union!181) (regTwo!874 r!13380))) b!37574))

(declare-fun b!37576 () Bool)

(declare-fun e!18526 () Bool)

(declare-fun tp!26095 () Bool)

(declare-fun tp!26093 () Bool)

(assert (=> b!37576 (= e!18526 (and tp!26095 tp!26093))))

(assert (=> b!37490 (= tp!26011 e!18526)))

(declare-fun b!37578 () Bool)

(declare-fun tp!26094 () Bool)

(declare-fun tp!26092 () Bool)

(assert (=> b!37578 (= e!18526 (and tp!26094 tp!26092))))

(declare-fun b!37575 () Bool)

(assert (=> b!37575 (= e!18526 tp_is_empty!387)))

(declare-fun b!37577 () Bool)

(declare-fun tp!26096 () Bool)

(assert (=> b!37577 (= e!18526 tp!26096)))

(assert (= (and b!37490 ((_ is ElementMatch!181) (reg!510 r!13380))) b!37575))

(assert (= (and b!37490 ((_ is Concat!300) (reg!510 r!13380))) b!37576))

(assert (= (and b!37490 ((_ is Star!181) (reg!510 r!13380))) b!37577))

(assert (= (and b!37490 ((_ is Union!181) (reg!510 r!13380))) b!37578))

(check-sat (not b!37578) tp_is_empty!387 (not mapNonEmpty!402) (not d!3993) (not b!37569) (not b!37564) (not b!37559) (not b!37565) (not b!37548) (not b!37577) (not b!37566) b_and!615 (not b!37568) (not b!37521) (not bm!2813) (not b!37527) (not b_next!581) (not b!37532) (not b!37545) (not b!37512) (not b!37550) (not b!37549) (not b!37570) (not b!37558) (not b!37574) (not b!37573) (not b!37572) (not b!37557) (not b!37576) (not b_next!583) (not b!37546) b_and!617 (not bm!2815) (not b!37544))
(check-sat b_and!615 b_and!617 (not b_next!581) (not b_next!583))

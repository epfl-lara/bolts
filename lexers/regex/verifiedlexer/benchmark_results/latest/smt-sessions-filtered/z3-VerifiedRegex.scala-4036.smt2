; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!217950 () Bool)

(assert start!217950)

(declare-fun b!2236443 () Bool)

(declare-fun b_free!64865 () Bool)

(declare-fun b_next!65569 () Bool)

(assert (=> b!2236443 (= b_free!64865 (not b_next!65569))))

(declare-fun tp!703107 () Bool)

(declare-fun b_and!174853 () Bool)

(assert (=> b!2236443 (= tp!703107 b_and!174853)))

(declare-fun b!2236452 () Bool)

(declare-fun b_free!64867 () Bool)

(declare-fun b_next!65571 () Bool)

(assert (=> b!2236452 (= b_free!64867 (not b_next!65571))))

(declare-fun tp!703112 () Bool)

(declare-fun b_and!174855 () Bool)

(assert (=> b!2236452 (= tp!703112 b_and!174855)))

(declare-fun e!1429428 () Bool)

(declare-fun e!1429437 () Bool)

(assert (=> b!2236443 (= e!1429428 (and e!1429437 tp!703107))))

(declare-fun b!2236444 () Bool)

(declare-fun e!1429431 () Bool)

(declare-fun tp!703100 () Bool)

(declare-fun tp!703102 () Bool)

(assert (=> b!2236444 (= e!1429431 (and tp!703100 tp!703102))))

(declare-fun b!2236445 () Bool)

(declare-fun tp!703105 () Bool)

(assert (=> b!2236445 (= e!1429431 tp!703105)))

(declare-fun b!2236446 () Bool)

(declare-fun res!956834 () Bool)

(declare-fun e!1429432 () Bool)

(assert (=> b!2236446 (=> (not res!956834) (not e!1429432))))

(declare-datatypes ((C!13072 0))(
  ( (C!13073 (val!7584 Int)) )
))
(declare-datatypes ((Regex!6463 0))(
  ( (ElementMatch!6463 (c!356401 C!13072)) (Concat!10801 (regOne!13438 Regex!6463) (regTwo!13438 Regex!6463)) (EmptyExpr!6463) (Star!6463 (reg!6792 Regex!6463)) (EmptyLang!6463) (Union!6463 (regOne!13439 Regex!6463) (regTwo!13439 Regex!6463)) )
))
(declare-fun r!4766 () Regex!6463)

(declare-fun validRegex!2426 (Regex!6463) Bool)

(assert (=> b!2236446 (= res!956834 (validRegex!2426 r!4766))))

(declare-fun b!2236447 () Bool)

(declare-fun tp_is_empty!10151 () Bool)

(assert (=> b!2236447 (= e!1429431 tp_is_empty!10151)))

(declare-fun b!2236448 () Bool)

(declare-fun e!1429430 () Bool)

(declare-datatypes ((List!26406 0))(
  ( (Nil!26312) (Cons!26312 (h!31713 Regex!6463) (t!199826 List!26406)) )
))
(declare-datatypes ((Context!4022 0))(
  ( (Context!4023 (exprs!2511 List!26406)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Option!5119 0))(
  ( (None!5118) (Some!5118 (v!29918 (InoxSet Context!4022))) )
))
(declare-fun lt!831834 () Option!5119)

(declare-fun isDefined!4135 (Option!5119) Bool)

(assert (=> b!2236448 (= e!1429430 (not (isDefined!4135 lt!831834)))))

(declare-fun b!2236449 () Bool)

(declare-fun e!1429427 () Bool)

(declare-fun tp!703103 () Bool)

(assert (=> b!2236449 (= e!1429427 tp!703103)))

(declare-fun b!2236450 () Bool)

(declare-fun e!1429426 () Bool)

(assert (=> b!2236450 (= e!1429426 e!1429430)))

(declare-fun res!956835 () Bool)

(assert (=> b!2236450 (=> (not res!956835) (not e!1429430))))

(declare-fun isEmpty!14907 (Option!5119) Bool)

(assert (=> b!2236450 (= res!956835 (not (isEmpty!14907 lt!831834)))))

(declare-datatypes ((tuple3!3998 0))(
  ( (tuple3!3999 (_1!15323 Regex!6463) (_2!15323 Context!4022) (_3!2469 C!13072)) )
))
(declare-datatypes ((tuple2!25708 0))(
  ( (tuple2!25709 (_1!15324 tuple3!3998) (_2!15324 (InoxSet Context!4022))) )
))
(declare-datatypes ((array!10784 0))(
  ( (array!10785 (arr!4789 (Array (_ BitVec 32) (_ BitVec 64))) (size!20570 (_ BitVec 32))) )
))
(declare-datatypes ((List!26407 0))(
  ( (Nil!26313) (Cons!26313 (h!31714 tuple2!25708) (t!199827 List!26407)) )
))
(declare-datatypes ((array!10786 0))(
  ( (array!10787 (arr!4790 (Array (_ BitVec 32) List!26407)) (size!20571 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6202 0))(
  ( (LongMapFixedSize!6203 (defaultEntry!3466 Int) (mask!7686 (_ BitVec 32)) (extraKeys!3349 (_ BitVec 32)) (zeroValue!3359 List!26407) (minValue!3359 List!26407) (_size!6249 (_ BitVec 32)) (_keys!3398 array!10784) (_values!3381 array!10786) (_vacant!3162 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12221 0))(
  ( (Cell!12222 (v!29919 LongMapFixedSize!6202)) )
))
(declare-datatypes ((MutLongMap!3101 0))(
  ( (LongMap!3101 (underlying!6403 Cell!12221)) (MutLongMapExt!3100 (__x!17529 Int)) )
))
(declare-datatypes ((Cell!12223 0))(
  ( (Cell!12224 (v!29920 MutLongMap!3101)) )
))
(declare-datatypes ((Hashable!3011 0))(
  ( (HashableExt!3010 (__x!17530 Int)) )
))
(declare-datatypes ((MutableMap!3011 0))(
  ( (MutableMapExt!3010 (__x!17531 Int)) (HashMap!3011 (underlying!6404 Cell!12223) (hashF!4934 Hashable!3011) (_size!6250 (_ BitVec 32)) (defaultValue!3173 Int)) )
))
(declare-datatypes ((CacheDown!2068 0))(
  ( (CacheDown!2069 (cache!3392 MutableMap!3011)) )
))
(declare-fun thiss!28797 () CacheDown!2068)

(declare-fun lt!831831 () tuple3!3998)

(declare-fun apply!6475 (MutableMap!3011 tuple3!3998) (InoxSet Context!4022))

(assert (=> b!2236450 (= lt!831834 (Some!5118 (apply!6475 (cache!3392 thiss!28797) lt!831831)))))

(declare-fun a!997 () C!13072)

(declare-datatypes ((Unit!39272 0))(
  ( (Unit!39273) )
))
(declare-fun lt!831833 () Unit!39272)

(declare-fun ctx!52 () Context!4022)

(declare-fun lemmaIfInCacheThenValid!32 (CacheDown!2068 Regex!6463 Context!4022 C!13072) Unit!39272)

(assert (=> b!2236450 (= lt!831833 (lemmaIfInCacheThenValid!32 thiss!28797 r!4766 ctx!52 a!997))))

(declare-fun b!2236451 () Bool)

(declare-fun e!1429429 () Bool)

(declare-fun e!1429436 () Bool)

(assert (=> b!2236451 (= e!1429429 e!1429436)))

(declare-fun e!1429433 () Bool)

(declare-fun tp!703104 () Bool)

(declare-fun tp!703108 () Bool)

(declare-fun e!1429435 () Bool)

(declare-fun array_inv!3439 (array!10784) Bool)

(declare-fun array_inv!3440 (array!10786) Bool)

(assert (=> b!2236452 (= e!1429433 (and tp!703112 tp!703108 tp!703104 (array_inv!3439 (_keys!3398 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))) (array_inv!3440 (_values!3381 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))) e!1429435))))

(declare-fun mapIsEmpty!14573 () Bool)

(declare-fun mapRes!14573 () Bool)

(assert (=> mapIsEmpty!14573 mapRes!14573))

(declare-fun b!2236453 () Bool)

(declare-fun tp!703106 () Bool)

(assert (=> b!2236453 (= e!1429435 (and tp!703106 mapRes!14573))))

(declare-fun condMapEmpty!14573 () Bool)

(declare-fun mapDefault!14573 () List!26407)

(assert (=> b!2236453 (= condMapEmpty!14573 (= (arr!4790 (_values!3381 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))) ((as const (Array (_ BitVec 32) List!26407)) mapDefault!14573)))))

(declare-fun b!2236454 () Bool)

(assert (=> b!2236454 (= e!1429436 e!1429433)))

(declare-fun mapNonEmpty!14573 () Bool)

(declare-fun tp!703101 () Bool)

(declare-fun tp!703111 () Bool)

(assert (=> mapNonEmpty!14573 (= mapRes!14573 (and tp!703101 tp!703111))))

(declare-fun mapKey!14573 () (_ BitVec 32))

(declare-fun mapValue!14573 () List!26407)

(declare-fun mapRest!14573 () (Array (_ BitVec 32) List!26407))

(assert (=> mapNonEmpty!14573 (= (arr!4790 (_values!3381 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))) (store mapRest!14573 mapKey!14573 mapValue!14573))))

(declare-fun res!956833 () Bool)

(assert (=> start!217950 (=> (not res!956833) (not e!1429432))))

(declare-fun validCacheMapDown!312 (MutableMap!3011) Bool)

(assert (=> start!217950 (= res!956833 (validCacheMapDown!312 (cache!3392 thiss!28797)))))

(assert (=> start!217950 e!1429432))

(declare-fun e!1429438 () Bool)

(declare-fun inv!35738 (CacheDown!2068) Bool)

(assert (=> start!217950 (and (inv!35738 thiss!28797) e!1429438)))

(assert (=> start!217950 e!1429431))

(assert (=> start!217950 tp_is_empty!10151))

(declare-fun inv!35739 (Context!4022) Bool)

(assert (=> start!217950 (and (inv!35739 ctx!52) e!1429427)))

(declare-fun b!2236455 () Bool)

(declare-fun tp!703109 () Bool)

(declare-fun tp!703110 () Bool)

(assert (=> b!2236455 (= e!1429431 (and tp!703109 tp!703110))))

(declare-fun b!2236456 () Bool)

(assert (=> b!2236456 (= e!1429438 e!1429428)))

(declare-fun b!2236457 () Bool)

(declare-fun lt!831832 () MutLongMap!3101)

(get-info :version)

(assert (=> b!2236457 (= e!1429437 (and e!1429429 ((_ is LongMap!3101) lt!831832)))))

(assert (=> b!2236457 (= lt!831832 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))

(declare-fun b!2236458 () Bool)

(assert (=> b!2236458 (= e!1429432 e!1429426)))

(declare-fun res!956832 () Bool)

(assert (=> b!2236458 (=> (not res!956832) (not e!1429426))))

(declare-fun contains!4394 (MutableMap!3011 tuple3!3998) Bool)

(assert (=> b!2236458 (= res!956832 (contains!4394 (cache!3392 thiss!28797) lt!831831))))

(assert (=> b!2236458 (= lt!831831 (tuple3!3999 r!4766 ctx!52 a!997))))

(assert (= (and start!217950 res!956833) b!2236446))

(assert (= (and b!2236446 res!956834) b!2236458))

(assert (= (and b!2236458 res!956832) b!2236450))

(assert (= (and b!2236450 res!956835) b!2236448))

(assert (= (and b!2236453 condMapEmpty!14573) mapIsEmpty!14573))

(assert (= (and b!2236453 (not condMapEmpty!14573)) mapNonEmpty!14573))

(assert (= b!2236452 b!2236453))

(assert (= b!2236454 b!2236452))

(assert (= b!2236451 b!2236454))

(assert (= (and b!2236457 ((_ is LongMap!3101) (v!29920 (underlying!6404 (cache!3392 thiss!28797))))) b!2236451))

(assert (= b!2236443 b!2236457))

(assert (= (and b!2236456 ((_ is HashMap!3011) (cache!3392 thiss!28797))) b!2236443))

(assert (= start!217950 b!2236456))

(assert (= (and start!217950 ((_ is ElementMatch!6463) r!4766)) b!2236447))

(assert (= (and start!217950 ((_ is Concat!10801) r!4766)) b!2236444))

(assert (= (and start!217950 ((_ is Star!6463) r!4766)) b!2236445))

(assert (= (and start!217950 ((_ is Union!6463) r!4766)) b!2236455))

(assert (= start!217950 b!2236449))

(declare-fun m!2670279 () Bool)

(assert (=> mapNonEmpty!14573 m!2670279))

(declare-fun m!2670281 () Bool)

(assert (=> b!2236450 m!2670281))

(declare-fun m!2670283 () Bool)

(assert (=> b!2236450 m!2670283))

(declare-fun m!2670285 () Bool)

(assert (=> b!2236450 m!2670285))

(declare-fun m!2670287 () Bool)

(assert (=> b!2236448 m!2670287))

(declare-fun m!2670289 () Bool)

(assert (=> start!217950 m!2670289))

(declare-fun m!2670291 () Bool)

(assert (=> start!217950 m!2670291))

(declare-fun m!2670293 () Bool)

(assert (=> start!217950 m!2670293))

(declare-fun m!2670295 () Bool)

(assert (=> b!2236452 m!2670295))

(declare-fun m!2670297 () Bool)

(assert (=> b!2236452 m!2670297))

(declare-fun m!2670299 () Bool)

(assert (=> b!2236458 m!2670299))

(declare-fun m!2670301 () Bool)

(assert (=> b!2236446 m!2670301))

(check-sat (not mapNonEmpty!14573) (not b_next!65569) (not b!2236452) (not b!2236444) (not b!2236449) b_and!174855 b_and!174853 (not b!2236445) (not b!2236446) (not b!2236450) (not b!2236455) (not b!2236458) (not start!217950) tp_is_empty!10151 (not b!2236448) (not b_next!65571) (not b!2236453))
(check-sat b_and!174855 b_and!174853 (not b_next!65571) (not b_next!65569))
(get-model)

(declare-fun b!2236477 () Bool)

(declare-fun e!1429453 () Bool)

(declare-fun e!1429456 () Bool)

(assert (=> b!2236477 (= e!1429453 e!1429456)))

(declare-fun c!356407 () Bool)

(assert (=> b!2236477 (= c!356407 ((_ is Union!6463) r!4766))))

(declare-fun bm!134831 () Bool)

(declare-fun call!134836 () Bool)

(assert (=> bm!134831 (= call!134836 (validRegex!2426 (ite c!356407 (regTwo!13439 r!4766) (regTwo!13438 r!4766))))))

(declare-fun b!2236478 () Bool)

(declare-fun res!956850 () Bool)

(declare-fun e!1429455 () Bool)

(assert (=> b!2236478 (=> (not res!956850) (not e!1429455))))

(declare-fun call!134838 () Bool)

(assert (=> b!2236478 (= res!956850 call!134838)))

(assert (=> b!2236478 (= e!1429456 e!1429455)))

(declare-fun d!665467 () Bool)

(declare-fun res!956849 () Bool)

(declare-fun e!1429457 () Bool)

(assert (=> d!665467 (=> res!956849 e!1429457)))

(assert (=> d!665467 (= res!956849 ((_ is ElementMatch!6463) r!4766))))

(assert (=> d!665467 (= (validRegex!2426 r!4766) e!1429457)))

(declare-fun c!356406 () Bool)

(declare-fun bm!134832 () Bool)

(declare-fun call!134837 () Bool)

(assert (=> bm!134832 (= call!134837 (validRegex!2426 (ite c!356406 (reg!6792 r!4766) (ite c!356407 (regOne!13439 r!4766) (regOne!13438 r!4766)))))))

(declare-fun b!2236479 () Bool)

(declare-fun e!1429459 () Bool)

(assert (=> b!2236479 (= e!1429459 call!134837)))

(declare-fun bm!134833 () Bool)

(assert (=> bm!134833 (= call!134838 call!134837)))

(declare-fun b!2236480 () Bool)

(assert (=> b!2236480 (= e!1429457 e!1429453)))

(assert (=> b!2236480 (= c!356406 ((_ is Star!6463) r!4766))))

(declare-fun b!2236481 () Bool)

(declare-fun e!1429458 () Bool)

(declare-fun e!1429454 () Bool)

(assert (=> b!2236481 (= e!1429458 e!1429454)))

(declare-fun res!956848 () Bool)

(assert (=> b!2236481 (=> (not res!956848) (not e!1429454))))

(assert (=> b!2236481 (= res!956848 call!134838)))

(declare-fun b!2236482 () Bool)

(assert (=> b!2236482 (= e!1429454 call!134836)))

(declare-fun b!2236483 () Bool)

(declare-fun res!956847 () Bool)

(assert (=> b!2236483 (=> res!956847 e!1429458)))

(assert (=> b!2236483 (= res!956847 (not ((_ is Concat!10801) r!4766)))))

(assert (=> b!2236483 (= e!1429456 e!1429458)))

(declare-fun b!2236484 () Bool)

(assert (=> b!2236484 (= e!1429453 e!1429459)))

(declare-fun res!956846 () Bool)

(declare-fun nullable!1784 (Regex!6463) Bool)

(assert (=> b!2236484 (= res!956846 (not (nullable!1784 (reg!6792 r!4766))))))

(assert (=> b!2236484 (=> (not res!956846) (not e!1429459))))

(declare-fun b!2236485 () Bool)

(assert (=> b!2236485 (= e!1429455 call!134836)))

(assert (= (and d!665467 (not res!956849)) b!2236480))

(assert (= (and b!2236480 c!356406) b!2236484))

(assert (= (and b!2236480 (not c!356406)) b!2236477))

(assert (= (and b!2236484 res!956846) b!2236479))

(assert (= (and b!2236477 c!356407) b!2236478))

(assert (= (and b!2236477 (not c!356407)) b!2236483))

(assert (= (and b!2236478 res!956850) b!2236485))

(assert (= (and b!2236483 (not res!956847)) b!2236481))

(assert (= (and b!2236481 res!956848) b!2236482))

(assert (= (or b!2236485 b!2236482) bm!134831))

(assert (= (or b!2236478 b!2236481) bm!134833))

(assert (= (or b!2236479 bm!134833) bm!134832))

(declare-fun m!2670303 () Bool)

(assert (=> bm!134831 m!2670303))

(declare-fun m!2670305 () Bool)

(assert (=> bm!134832 m!2670305))

(declare-fun m!2670307 () Bool)

(assert (=> b!2236484 m!2670307))

(assert (=> b!2236446 d!665467))

(declare-fun d!665469 () Bool)

(declare-fun res!956857 () Bool)

(declare-fun e!1429464 () Bool)

(assert (=> d!665469 (=> (not res!956857) (not e!1429464))))

(declare-fun valid!2344 (MutableMap!3011) Bool)

(assert (=> d!665469 (= res!956857 (valid!2344 (cache!3392 thiss!28797)))))

(assert (=> d!665469 (= (validCacheMapDown!312 (cache!3392 thiss!28797)) e!1429464)))

(declare-fun b!2236492 () Bool)

(declare-fun res!956858 () Bool)

(assert (=> b!2236492 (=> (not res!956858) (not e!1429464))))

(declare-fun invariantList!373 (List!26407) Bool)

(declare-datatypes ((ListMap!837 0))(
  ( (ListMap!838 (toList!1355 List!26407)) )
))
(declare-fun map!5408 (MutableMap!3011) ListMap!837)

(assert (=> b!2236492 (= res!956858 (invariantList!373 (toList!1355 (map!5408 (cache!3392 thiss!28797)))))))

(declare-fun b!2236493 () Bool)

(declare-fun lambda!84509 () Int)

(declare-fun forall!5403 (List!26407 Int) Bool)

(assert (=> b!2236493 (= e!1429464 (forall!5403 (toList!1355 (map!5408 (cache!3392 thiss!28797))) lambda!84509))))

(assert (= (and d!665469 res!956857) b!2236492))

(assert (= (and b!2236492 res!956858) b!2236493))

(declare-fun m!2670310 () Bool)

(assert (=> d!665469 m!2670310))

(declare-fun m!2670312 () Bool)

(assert (=> b!2236492 m!2670312))

(declare-fun m!2670314 () Bool)

(assert (=> b!2236492 m!2670314))

(assert (=> b!2236493 m!2670312))

(declare-fun m!2670316 () Bool)

(assert (=> b!2236493 m!2670316))

(assert (=> start!217950 d!665469))

(declare-fun d!665471 () Bool)

(declare-fun res!956861 () Bool)

(declare-fun e!1429467 () Bool)

(assert (=> d!665471 (=> (not res!956861) (not e!1429467))))

(assert (=> d!665471 (= res!956861 ((_ is HashMap!3011) (cache!3392 thiss!28797)))))

(assert (=> d!665471 (= (inv!35738 thiss!28797) e!1429467)))

(declare-fun b!2236496 () Bool)

(assert (=> b!2236496 (= e!1429467 (validCacheMapDown!312 (cache!3392 thiss!28797)))))

(assert (= (and d!665471 res!956861) b!2236496))

(assert (=> b!2236496 m!2670289))

(assert (=> start!217950 d!665471))

(declare-fun d!665473 () Bool)

(declare-fun lambda!84512 () Int)

(declare-fun forall!5404 (List!26406 Int) Bool)

(assert (=> d!665473 (= (inv!35739 ctx!52) (forall!5404 (exprs!2511 ctx!52) lambda!84512))))

(declare-fun bs!454213 () Bool)

(assert (= bs!454213 d!665473))

(declare-fun m!2670318 () Bool)

(assert (=> bs!454213 m!2670318))

(assert (=> start!217950 d!665473))

(declare-fun bm!134846 () Bool)

(declare-datatypes ((Option!5120 0))(
  ( (None!5119) (Some!5119 (v!29921 tuple2!25708)) )
))
(declare-fun call!134855 () Option!5120)

(declare-fun call!134851 () List!26407)

(declare-fun getPair!29 (List!26407 tuple3!3998) Option!5120)

(assert (=> bm!134846 (= call!134855 (getPair!29 call!134851 lt!831831))))

(declare-fun b!2236519 () Bool)

(assert (=> b!2236519 false))

(declare-fun lt!831879 () Unit!39272)

(declare-fun lt!831878 () Unit!39272)

(assert (=> b!2236519 (= lt!831879 lt!831878)))

(declare-datatypes ((tuple2!25710 0))(
  ( (tuple2!25711 (_1!15325 (_ BitVec 64)) (_2!15325 List!26407)) )
))
(declare-datatypes ((List!26408 0))(
  ( (Nil!26314) (Cons!26314 (h!31715 tuple2!25710) (t!199830 List!26408)) )
))
(declare-fun lt!831890 () List!26408)

(declare-fun lt!831881 () (_ BitVec 64))

(declare-fun lt!831892 () List!26407)

(declare-fun contains!4395 (List!26408 tuple2!25710) Bool)

(assert (=> b!2236519 (contains!4395 lt!831890 (tuple2!25711 lt!831881 lt!831892))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!30 (List!26408 (_ BitVec 64) List!26407) Unit!39272)

(assert (=> b!2236519 (= lt!831878 (lemmaGetValueByKeyImpliesContainsTuple!30 lt!831890 lt!831881 lt!831892))))

(declare-fun apply!6476 (MutLongMap!3101 (_ BitVec 64)) List!26407)

(assert (=> b!2236519 (= lt!831892 (apply!6476 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831881))))

(declare-datatypes ((ListLongMap!327 0))(
  ( (ListLongMap!328 (toList!1356 List!26408)) )
))
(declare-fun map!5409 (MutLongMap!3101) ListLongMap!327)

(assert (=> b!2236519 (= lt!831890 (toList!1356 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))))

(declare-fun lt!831888 () Unit!39272)

(declare-fun lt!831875 () Unit!39272)

(assert (=> b!2236519 (= lt!831888 lt!831875)))

(declare-fun lt!831884 () List!26408)

(declare-datatypes ((Option!5121 0))(
  ( (None!5120) (Some!5120 (v!29922 List!26407)) )
))
(declare-fun isDefined!4136 (Option!5121) Bool)

(declare-fun getValueByKey!73 (List!26408 (_ BitVec 64)) Option!5121)

(assert (=> b!2236519 (isDefined!4136 (getValueByKey!73 lt!831884 lt!831881))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!47 (List!26408 (_ BitVec 64)) Unit!39272)

(assert (=> b!2236519 (= lt!831875 (lemmaContainsKeyImpliesGetValueByKeyDefined!47 lt!831884 lt!831881))))

(assert (=> b!2236519 (= lt!831884 (toList!1356 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))))

(declare-fun lt!831889 () Unit!39272)

(declare-fun lt!831893 () Unit!39272)

(assert (=> b!2236519 (= lt!831889 lt!831893)))

(declare-fun lt!831887 () List!26408)

(declare-fun containsKey!78 (List!26408 (_ BitVec 64)) Bool)

(assert (=> b!2236519 (containsKey!78 lt!831887 lt!831881)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!30 (List!26408 (_ BitVec 64)) Unit!39272)

(assert (=> b!2236519 (= lt!831893 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!30 lt!831887 lt!831881))))

(assert (=> b!2236519 (= lt!831887 (toList!1356 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))))

(declare-fun e!1429482 () Unit!39272)

(declare-fun Unit!39274 () Unit!39272)

(assert (=> b!2236519 (= e!1429482 Unit!39274)))

(declare-fun lambda!84515 () Int)

(declare-fun b!2236520 () Bool)

(declare-fun e!1429486 () Unit!39272)

(declare-fun forallContained!776 (List!26408 Int tuple2!25710) Unit!39272)

(assert (=> b!2236520 (= e!1429486 (forallContained!776 (toList!1356 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))) lambda!84515 (tuple2!25711 lt!831881 (apply!6476 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831881))))))

(declare-fun c!356416 () Bool)

(assert (=> b!2236520 (= c!356416 (not (contains!4395 (toList!1356 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))) (tuple2!25711 lt!831881 (apply!6476 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831881)))))))

(declare-fun lt!831891 () Unit!39272)

(assert (=> b!2236520 (= lt!831891 e!1429482)))

(declare-fun b!2236521 () Bool)

(assert (=> b!2236521 false))

(declare-fun lt!831885 () Unit!39272)

(declare-fun lt!831883 () Unit!39272)

(assert (=> b!2236521 (= lt!831885 lt!831883)))

(declare-fun lt!831877 () ListLongMap!327)

(declare-fun contains!4396 (ListMap!837 tuple3!3998) Bool)

(declare-fun extractMap!109 (List!26408) ListMap!837)

(assert (=> b!2236521 (contains!4396 (extractMap!109 (toList!1356 lt!831877)) lt!831831)))

(declare-fun lemmaInLongMapThenInGenericMap!29 (ListLongMap!327 tuple3!3998 Hashable!3011) Unit!39272)

(assert (=> b!2236521 (= lt!831883 (lemmaInLongMapThenInGenericMap!29 lt!831877 lt!831831 (hashF!4934 (cache!3392 thiss!28797))))))

(declare-fun call!134852 () ListLongMap!327)

(assert (=> b!2236521 (= lt!831877 call!134852)))

(declare-fun e!1429488 () Unit!39272)

(declare-fun Unit!39275 () Unit!39272)

(assert (=> b!2236521 (= e!1429488 Unit!39275)))

(declare-fun bm!134847 () Bool)

(declare-fun call!134856 () (_ BitVec 64))

(declare-fun hash!576 (Hashable!3011 tuple3!3998) (_ BitVec 64))

(assert (=> bm!134847 (= call!134856 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831))))

(declare-fun b!2236522 () Bool)

(declare-fun e!1429484 () Bool)

(declare-fun isDefined!4137 (Option!5120) Bool)

(assert (=> b!2236522 (= e!1429484 (isDefined!4137 (getPair!29 (apply!6476 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831881) lt!831831)))))

(declare-fun b!2236523 () Bool)

(declare-fun e!1429485 () Unit!39272)

(declare-fun lt!831876 () Unit!39272)

(assert (=> b!2236523 (= e!1429485 lt!831876)))

(declare-fun lt!831880 () ListLongMap!327)

(assert (=> b!2236523 (= lt!831880 call!134852)))

(declare-fun lemmaInGenericMapThenInLongMap!29 (ListLongMap!327 tuple3!3998 Hashable!3011) Unit!39272)

(assert (=> b!2236523 (= lt!831876 (lemmaInGenericMapThenInLongMap!29 lt!831880 lt!831831 (hashF!4934 (cache!3392 thiss!28797))))))

(declare-fun res!956869 () Bool)

(declare-fun call!134854 () Bool)

(assert (=> b!2236523 (= res!956869 call!134854)))

(declare-fun e!1429483 () Bool)

(assert (=> b!2236523 (=> (not res!956869) (not e!1429483))))

(assert (=> b!2236523 e!1429483))

(declare-fun bm!134848 () Bool)

(declare-fun call!134853 () Bool)

(assert (=> bm!134848 (= call!134853 (isDefined!4137 call!134855))))

(declare-fun bm!134849 () Bool)

(assert (=> bm!134849 (= call!134852 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))))

(declare-fun b!2236524 () Bool)

(assert (=> b!2236524 (= e!1429485 e!1429488)))

(declare-fun res!956868 () Bool)

(assert (=> b!2236524 (= res!956868 call!134854)))

(declare-fun e!1429487 () Bool)

(assert (=> b!2236524 (=> (not res!956868) (not e!1429487))))

(declare-fun c!356417 () Bool)

(assert (=> b!2236524 (= c!356417 e!1429487)))

(declare-fun c!356419 () Bool)

(declare-fun bm!134850 () Bool)

(declare-fun contains!4397 (ListLongMap!327 (_ BitVec 64)) Bool)

(assert (=> bm!134850 (= call!134854 (contains!4397 (ite c!356419 lt!831880 call!134852) call!134856))))

(declare-fun d!665475 () Bool)

(declare-fun lt!831886 () Bool)

(assert (=> d!665475 (= lt!831886 (contains!4396 (map!5408 (cache!3392 thiss!28797)) lt!831831))))

(assert (=> d!665475 (= lt!831886 e!1429484)))

(declare-fun res!956870 () Bool)

(assert (=> d!665475 (=> (not res!956870) (not e!1429484))))

(declare-fun contains!4398 (MutLongMap!3101 (_ BitVec 64)) Bool)

(assert (=> d!665475 (= res!956870 (contains!4398 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831881))))

(declare-fun lt!831894 () Unit!39272)

(assert (=> d!665475 (= lt!831894 e!1429485)))

(assert (=> d!665475 (= c!356419 (contains!4396 (extractMap!109 (toList!1356 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))) lt!831831))))

(declare-fun lt!831882 () Unit!39272)

(assert (=> d!665475 (= lt!831882 e!1429486)))

(declare-fun c!356418 () Bool)

(assert (=> d!665475 (= c!356418 (contains!4398 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831881))))

(assert (=> d!665475 (= lt!831881 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831))))

(assert (=> d!665475 (valid!2344 (cache!3392 thiss!28797))))

(assert (=> d!665475 (= (contains!4394 (cache!3392 thiss!28797) lt!831831) lt!831886)))

(declare-fun b!2236525 () Bool)

(declare-fun Unit!39276 () Unit!39272)

(assert (=> b!2236525 (= e!1429482 Unit!39276)))

(declare-fun b!2236526 () Bool)

(declare-fun Unit!39277 () Unit!39272)

(assert (=> b!2236526 (= e!1429488 Unit!39277)))

(declare-fun b!2236527 () Bool)

(declare-fun Unit!39278 () Unit!39272)

(assert (=> b!2236527 (= e!1429486 Unit!39278)))

(declare-fun b!2236528 () Bool)

(assert (=> b!2236528 (= e!1429483 call!134853)))

(declare-fun b!2236529 () Bool)

(assert (=> b!2236529 (= e!1429487 call!134853)))

(declare-fun bm!134851 () Bool)

(declare-fun apply!6477 (ListLongMap!327 (_ BitVec 64)) List!26407)

(assert (=> bm!134851 (= call!134851 (apply!6477 (ite c!356419 lt!831880 call!134852) call!134856))))

(assert (= (and d!665475 c!356418) b!2236520))

(assert (= (and d!665475 (not c!356418)) b!2236527))

(assert (= (and b!2236520 c!356416) b!2236519))

(assert (= (and b!2236520 (not c!356416)) b!2236525))

(assert (= (and d!665475 c!356419) b!2236523))

(assert (= (and d!665475 (not c!356419)) b!2236524))

(assert (= (and b!2236523 res!956869) b!2236528))

(assert (= (and b!2236524 res!956868) b!2236529))

(assert (= (and b!2236524 c!356417) b!2236521))

(assert (= (and b!2236524 (not c!356417)) b!2236526))

(assert (= (or b!2236523 b!2236528 b!2236524 b!2236529) bm!134847))

(assert (= (or b!2236523 b!2236524 b!2236529 b!2236521) bm!134849))

(assert (= (or b!2236528 b!2236529) bm!134851))

(assert (= (or b!2236523 b!2236524) bm!134850))

(assert (= (or b!2236528 b!2236529) bm!134846))

(assert (= (or b!2236528 b!2236529) bm!134848))

(assert (= (and d!665475 res!956870) b!2236522))

(assert (=> d!665475 m!2670310))

(declare-fun m!2670320 () Bool)

(assert (=> d!665475 m!2670320))

(assert (=> d!665475 m!2670312))

(assert (=> d!665475 m!2670312))

(declare-fun m!2670322 () Bool)

(assert (=> d!665475 m!2670322))

(declare-fun m!2670324 () Bool)

(assert (=> d!665475 m!2670324))

(declare-fun m!2670326 () Bool)

(assert (=> d!665475 m!2670326))

(declare-fun m!2670328 () Bool)

(assert (=> d!665475 m!2670328))

(assert (=> d!665475 m!2670326))

(declare-fun m!2670330 () Bool)

(assert (=> d!665475 m!2670330))

(declare-fun m!2670332 () Bool)

(assert (=> bm!134850 m!2670332))

(declare-fun m!2670334 () Bool)

(assert (=> b!2236519 m!2670334))

(declare-fun m!2670336 () Bool)

(assert (=> b!2236519 m!2670336))

(assert (=> b!2236519 m!2670328))

(assert (=> b!2236519 m!2670336))

(declare-fun m!2670338 () Bool)

(assert (=> b!2236519 m!2670338))

(declare-fun m!2670340 () Bool)

(assert (=> b!2236519 m!2670340))

(declare-fun m!2670342 () Bool)

(assert (=> b!2236519 m!2670342))

(declare-fun m!2670344 () Bool)

(assert (=> b!2236519 m!2670344))

(declare-fun m!2670346 () Bool)

(assert (=> b!2236519 m!2670346))

(declare-fun m!2670348 () Bool)

(assert (=> b!2236519 m!2670348))

(assert (=> bm!134849 m!2670328))

(declare-fun m!2670350 () Bool)

(assert (=> b!2236523 m!2670350))

(declare-fun m!2670352 () Bool)

(assert (=> bm!134851 m!2670352))

(assert (=> b!2236520 m!2670328))

(assert (=> b!2236520 m!2670342))

(declare-fun m!2670354 () Bool)

(assert (=> b!2236520 m!2670354))

(declare-fun m!2670356 () Bool)

(assert (=> b!2236520 m!2670356))

(declare-fun m!2670358 () Bool)

(assert (=> bm!134846 m!2670358))

(assert (=> b!2236522 m!2670342))

(assert (=> b!2236522 m!2670342))

(declare-fun m!2670360 () Bool)

(assert (=> b!2236522 m!2670360))

(assert (=> b!2236522 m!2670360))

(declare-fun m!2670362 () Bool)

(assert (=> b!2236522 m!2670362))

(assert (=> bm!134847 m!2670320))

(declare-fun m!2670364 () Bool)

(assert (=> b!2236521 m!2670364))

(assert (=> b!2236521 m!2670364))

(declare-fun m!2670366 () Bool)

(assert (=> b!2236521 m!2670366))

(declare-fun m!2670368 () Bool)

(assert (=> b!2236521 m!2670368))

(declare-fun m!2670370 () Bool)

(assert (=> bm!134848 m!2670370))

(assert (=> b!2236458 d!665475))

(declare-fun d!665477 () Bool)

(assert (=> d!665477 (= (isEmpty!14907 lt!831834) (not ((_ is Some!5118) lt!831834)))))

(assert (=> b!2236450 d!665477))

(declare-fun bs!454214 () Bool)

(declare-fun b!2236544 () Bool)

(assert (= bs!454214 (and b!2236544 b!2236520)))

(declare-fun lambda!84522 () Int)

(assert (=> bs!454214 (= lambda!84522 lambda!84515)))

(declare-fun b!2236542 () Bool)

(assert (=> b!2236542 false))

(declare-fun lt!831968 () Unit!39272)

(declare-fun lt!831975 () Unit!39272)

(assert (=> b!2236542 (= lt!831968 lt!831975)))

(declare-fun lt!831984 () List!26408)

(declare-fun lt!831979 () (_ BitVec 64))

(declare-fun lt!831974 () List!26407)

(assert (=> b!2236542 (contains!4395 lt!831984 (tuple2!25711 lt!831979 lt!831974))))

(assert (=> b!2236542 (= lt!831975 (lemmaGetValueByKeyImpliesContainsTuple!30 lt!831984 lt!831979 lt!831974))))

(assert (=> b!2236542 (= lt!831974 (apply!6476 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831979))))

(assert (=> b!2236542 (= lt!831984 (toList!1356 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))))

(declare-fun lt!831977 () Unit!39272)

(declare-fun lt!831957 () Unit!39272)

(assert (=> b!2236542 (= lt!831977 lt!831957)))

(declare-fun lt!831980 () List!26408)

(assert (=> b!2236542 (isDefined!4136 (getValueByKey!73 lt!831980 lt!831979))))

(assert (=> b!2236542 (= lt!831957 (lemmaContainsKeyImpliesGetValueByKeyDefined!47 lt!831980 lt!831979))))

(assert (=> b!2236542 (= lt!831980 (toList!1356 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))))

(declare-fun e!1429497 () Unit!39272)

(declare-fun Unit!39279 () Unit!39272)

(assert (=> b!2236542 (= e!1429497 Unit!39279)))

(declare-fun b!2236543 () Bool)

(declare-fun e!1429495 () Bool)

(declare-fun lt!831962 () (InoxSet Context!4022))

(declare-fun get!7953 (Option!5119) (InoxSet Context!4022))

(declare-fun getValueByKey!74 (List!26407 tuple3!3998) Option!5119)

(assert (=> b!2236543 (= e!1429495 (= lt!831962 (get!7953 (getValueByKey!74 (toList!1355 (map!5408 (cache!3392 thiss!28797))) lt!831831))))))

(declare-fun e!1429496 () (InoxSet Context!4022))

(declare-fun get!7954 (Option!5120) tuple2!25708)

(assert (=> b!2236544 (= e!1429496 (_2!15324 (get!7954 (getPair!29 (apply!6476 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831979) lt!831831))))))

(assert (=> b!2236544 (= lt!831979 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831))))

(declare-fun c!356427 () Bool)

(assert (=> b!2236544 (= c!356427 (not (contains!4395 (toList!1356 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))) (tuple2!25711 lt!831979 (apply!6476 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831979)))))))

(declare-fun lt!831955 () Unit!39272)

(assert (=> b!2236544 (= lt!831955 e!1429497)))

(declare-fun lt!831961 () Unit!39272)

(assert (=> b!2236544 (= lt!831961 (forallContained!776 (toList!1356 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))) lambda!84522 (tuple2!25711 lt!831979 (apply!6476 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831979))))))

(declare-fun lt!831964 () ListLongMap!327)

(assert (=> b!2236544 (= lt!831964 (map!5409 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))))

(declare-fun lt!831971 () Unit!39272)

(declare-fun lemmaGetPairGetSameValueAsMap!17 (ListLongMap!327 tuple3!3998 (InoxSet Context!4022) Hashable!3011) Unit!39272)

(assert (=> b!2236544 (= lt!831971 (lemmaGetPairGetSameValueAsMap!17 lt!831964 lt!831831 (_2!15324 (get!7954 (getPair!29 (apply!6476 (v!29920 (underlying!6404 (cache!3392 thiss!28797))) lt!831979) lt!831831))) (hashF!4934 (cache!3392 thiss!28797))))))

(declare-fun lt!831983 () Unit!39272)

(declare-fun lemmaInGenMapThenLongMapContainsHash!17 (ListLongMap!327 tuple3!3998 Hashable!3011) Unit!39272)

(assert (=> b!2236544 (= lt!831983 (lemmaInGenMapThenLongMapContainsHash!17 lt!831964 lt!831831 (hashF!4934 (cache!3392 thiss!28797))))))

(assert (=> b!2236544 (contains!4397 lt!831964 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831))))

(declare-fun lt!831965 () Unit!39272)

(assert (=> b!2236544 (= lt!831965 lt!831983)))

(declare-fun lt!831976 () (_ BitVec 64))

(assert (=> b!2236544 (= lt!831976 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831))))

(declare-fun lt!831958 () List!26407)

(assert (=> b!2236544 (= lt!831958 (apply!6477 lt!831964 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831)))))

(declare-fun lt!831959 () Unit!39272)

(declare-fun lemmaGetValueImpliesTupleContained!18 (ListLongMap!327 (_ BitVec 64) List!26407) Unit!39272)

(assert (=> b!2236544 (= lt!831959 (lemmaGetValueImpliesTupleContained!18 lt!831964 lt!831976 lt!831958))))

(assert (=> b!2236544 (contains!4395 (toList!1356 lt!831964) (tuple2!25711 lt!831976 lt!831958))))

(declare-fun lt!831956 () Unit!39272)

(assert (=> b!2236544 (= lt!831956 lt!831959)))

(declare-fun lt!831969 () Unit!39272)

(assert (=> b!2236544 (= lt!831969 (forallContained!776 (toList!1356 lt!831964) lambda!84522 (tuple2!25711 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831) (apply!6477 lt!831964 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831)))))))

(declare-fun lt!831982 () Unit!39272)

(declare-fun lemmaInGenMapThenGetPairDefined!17 (ListLongMap!327 tuple3!3998 Hashable!3011) Unit!39272)

(assert (=> b!2236544 (= lt!831982 (lemmaInGenMapThenGetPairDefined!17 lt!831964 lt!831831 (hashF!4934 (cache!3392 thiss!28797))))))

(declare-fun lt!831967 () Unit!39272)

(assert (=> b!2236544 (= lt!831967 (lemmaInGenMapThenLongMapContainsHash!17 lt!831964 lt!831831 (hashF!4934 (cache!3392 thiss!28797))))))

(declare-fun lt!831960 () Unit!39272)

(assert (=> b!2236544 (= lt!831960 lt!831967)))

(declare-fun lt!831963 () (_ BitVec 64))

(assert (=> b!2236544 (= lt!831963 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831))))

(declare-fun lt!831972 () List!26407)

(assert (=> b!2236544 (= lt!831972 (apply!6477 lt!831964 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831)))))

(declare-fun lt!831973 () Unit!39272)

(assert (=> b!2236544 (= lt!831973 (lemmaGetValueImpliesTupleContained!18 lt!831964 lt!831963 lt!831972))))

(assert (=> b!2236544 (contains!4395 (toList!1356 lt!831964) (tuple2!25711 lt!831963 lt!831972))))

(declare-fun lt!831966 () Unit!39272)

(assert (=> b!2236544 (= lt!831966 lt!831973)))

(declare-fun lt!831978 () Unit!39272)

(assert (=> b!2236544 (= lt!831978 (forallContained!776 (toList!1356 lt!831964) lambda!84522 (tuple2!25711 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831) (apply!6477 lt!831964 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831)))))))

(assert (=> b!2236544 (isDefined!4137 (getPair!29 (apply!6477 lt!831964 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831)) lt!831831))))

(declare-fun lt!831981 () Unit!39272)

(assert (=> b!2236544 (= lt!831981 lt!831982)))

(assert (=> b!2236544 (= (_2!15324 (get!7954 (getPair!29 (apply!6477 lt!831964 (hash!576 (hashF!4934 (cache!3392 thiss!28797)) lt!831831)) lt!831831))) (get!7953 (getValueByKey!74 (toList!1355 (extractMap!109 (toList!1356 lt!831964))) lt!831831)))))

(declare-fun lt!831970 () Unit!39272)

(assert (=> b!2236544 (= lt!831970 lt!831971)))

(declare-fun d!665479 () Bool)

(assert (=> d!665479 e!1429495))

(declare-fun c!356426 () Bool)

(assert (=> d!665479 (= c!356426 (contains!4394 (cache!3392 thiss!28797) lt!831831))))

(assert (=> d!665479 (= lt!831962 e!1429496)))

(declare-fun c!356428 () Bool)

(assert (=> d!665479 (= c!356428 (not (contains!4394 (cache!3392 thiss!28797) lt!831831)))))

(assert (=> d!665479 (valid!2344 (cache!3392 thiss!28797))))

(assert (=> d!665479 (= (apply!6475 (cache!3392 thiss!28797) lt!831831) lt!831962)))

(declare-fun b!2236545 () Bool)

(declare-fun dynLambda!11530 (Int tuple3!3998) (InoxSet Context!4022))

(assert (=> b!2236545 (= e!1429496 (dynLambda!11530 (defaultValue!3173 (cache!3392 thiss!28797)) lt!831831))))

(declare-fun b!2236546 () Bool)

(declare-fun Unit!39280 () Unit!39272)

(assert (=> b!2236546 (= e!1429497 Unit!39280)))

(declare-fun b!2236547 () Bool)

(assert (=> b!2236547 (= e!1429495 (= lt!831962 (dynLambda!11530 (defaultValue!3173 (cache!3392 thiss!28797)) lt!831831)))))

(assert (= (and d!665479 c!356428) b!2236545))

(assert (= (and d!665479 (not c!356428)) b!2236544))

(assert (= (and b!2236544 c!356427) b!2236542))

(assert (= (and b!2236544 (not c!356427)) b!2236546))

(assert (= (and d!665479 c!356426) b!2236543))

(assert (= (and d!665479 (not c!356426)) b!2236547))

(declare-fun b_lambda!71689 () Bool)

(assert (=> (not b_lambda!71689) (not b!2236545)))

(declare-fun t!199829 () Bool)

(declare-fun tb!132851 () Bool)

(assert (=> (and b!2236443 (= (defaultValue!3173 (cache!3392 thiss!28797)) (defaultValue!3173 (cache!3392 thiss!28797))) t!199829) tb!132851))

(assert (=> b!2236545 t!199829))

(declare-fun result!161720 () Bool)

(declare-fun b_and!174857 () Bool)

(assert (= b_and!174853 (and (=> t!199829 result!161720) b_and!174857)))

(declare-fun b_lambda!71691 () Bool)

(assert (=> (not b_lambda!71691) (not b!2236547)))

(assert (=> b!2236547 t!199829))

(declare-fun b_and!174859 () Bool)

(assert (= b_and!174857 (and (=> t!199829 result!161720) b_and!174859)))

(declare-fun m!2670372 () Bool)

(assert (=> b!2236547 m!2670372))

(assert (=> d!665479 m!2670299))

(assert (=> d!665479 m!2670310))

(declare-fun m!2670374 () Bool)

(assert (=> b!2236542 m!2670374))

(declare-fun m!2670376 () Bool)

(assert (=> b!2236542 m!2670376))

(declare-fun m!2670378 () Bool)

(assert (=> b!2236542 m!2670378))

(declare-fun m!2670380 () Bool)

(assert (=> b!2236542 m!2670380))

(assert (=> b!2236542 m!2670376))

(declare-fun m!2670382 () Bool)

(assert (=> b!2236542 m!2670382))

(assert (=> b!2236542 m!2670328))

(declare-fun m!2670384 () Bool)

(assert (=> b!2236542 m!2670384))

(assert (=> b!2236545 m!2670372))

(assert (=> b!2236543 m!2670312))

(declare-fun m!2670386 () Bool)

(assert (=> b!2236543 m!2670386))

(assert (=> b!2236543 m!2670386))

(declare-fun m!2670388 () Bool)

(assert (=> b!2236543 m!2670388))

(declare-fun m!2670390 () Bool)

(assert (=> b!2236544 m!2670390))

(declare-fun m!2670392 () Bool)

(assert (=> b!2236544 m!2670392))

(declare-fun m!2670394 () Bool)

(assert (=> b!2236544 m!2670394))

(declare-fun m!2670396 () Bool)

(assert (=> b!2236544 m!2670396))

(assert (=> b!2236544 m!2670396))

(declare-fun m!2670398 () Bool)

(assert (=> b!2236544 m!2670398))

(declare-fun m!2670400 () Bool)

(assert (=> b!2236544 m!2670400))

(assert (=> b!2236544 m!2670320))

(declare-fun m!2670402 () Bool)

(assert (=> b!2236544 m!2670402))

(assert (=> b!2236544 m!2670328))

(assert (=> b!2236544 m!2670382))

(declare-fun m!2670404 () Bool)

(assert (=> b!2236544 m!2670404))

(assert (=> b!2236544 m!2670320))

(assert (=> b!2236544 m!2670390))

(assert (=> b!2236544 m!2670382))

(declare-fun m!2670406 () Bool)

(assert (=> b!2236544 m!2670406))

(assert (=> b!2236544 m!2670320))

(declare-fun m!2670408 () Bool)

(assert (=> b!2236544 m!2670408))

(assert (=> b!2236544 m!2670392))

(declare-fun m!2670410 () Bool)

(assert (=> b!2236544 m!2670410))

(declare-fun m!2670412 () Bool)

(assert (=> b!2236544 m!2670412))

(declare-fun m!2670414 () Bool)

(assert (=> b!2236544 m!2670414))

(declare-fun m!2670416 () Bool)

(assert (=> b!2236544 m!2670416))

(declare-fun m!2670418 () Bool)

(assert (=> b!2236544 m!2670418))

(assert (=> b!2236544 m!2670404))

(declare-fun m!2670420 () Bool)

(assert (=> b!2236544 m!2670420))

(declare-fun m!2670422 () Bool)

(assert (=> b!2236544 m!2670422))

(declare-fun m!2670424 () Bool)

(assert (=> b!2236544 m!2670424))

(assert (=> b!2236544 m!2670392))

(declare-fun m!2670426 () Bool)

(assert (=> b!2236544 m!2670426))

(declare-fun m!2670428 () Bool)

(assert (=> b!2236544 m!2670428))

(assert (=> b!2236544 m!2670400))

(assert (=> b!2236450 d!665479))

(declare-fun bs!454215 () Bool)

(declare-fun b!2236563 () Bool)

(assert (= bs!454215 (and b!2236563 b!2236493)))

(declare-fun lambda!84525 () Int)

(assert (=> bs!454215 (= lambda!84525 lambda!84509)))

(declare-fun b!2236560 () Bool)

(declare-fun lt!832005 () tuple3!3998)

(declare-fun lt!832004 () tuple3!3998)

(assert (=> b!2236560 (= lt!832005 lt!832004)))

(declare-fun lt!832011 () (InoxSet Context!4022))

(assert (=> b!2236560 (= lt!832011 (apply!6475 (cache!3392 thiss!28797) lt!832004))))

(declare-fun lt!832007 () (InoxSet Context!4022))

(assert (=> b!2236560 (= lt!832007 (apply!6475 (cache!3392 thiss!28797) lt!832004))))

(declare-fun lt!832006 () (InoxSet Context!4022))

(assert (=> b!2236560 (= lt!832006 (apply!6475 (cache!3392 thiss!28797) lt!832004))))

(declare-fun e!1429513 () Bool)

(declare-fun derivationStepZipperDown!69 (Regex!6463 Context!4022 C!13072) (InoxSet Context!4022))

(assert (=> b!2236560 (= e!1429513 (= (apply!6475 (cache!3392 thiss!28797) lt!832004) (derivationStepZipperDown!69 (_1!15323 lt!832004) (_2!15323 lt!832004) (_3!2469 lt!832004))))))

(declare-fun b!2236561 () Bool)

(declare-fun e!1429515 () Bool)

(declare-fun e!1429514 () Bool)

(assert (=> b!2236561 (= e!1429515 e!1429514)))

(declare-fun res!956879 () Bool)

(assert (=> b!2236561 (=> (not res!956879) (not e!1429514))))

(assert (=> b!2236561 (= res!956879 (validRegex!2426 r!4766))))

(declare-fun b!2236562 () Bool)

(declare-fun e!1429516 () Unit!39272)

(declare-fun Unit!39281 () Unit!39272)

(assert (=> b!2236562 (= e!1429516 Unit!39281)))

(declare-fun lt!832003 () Unit!39272)

(assert (=> b!2236563 (= e!1429516 lt!832003)))

(assert (=> b!2236563 (= lt!832004 (tuple3!3999 r!4766 ctx!52 a!997))))

(declare-fun lemmaForallPairsThenForLookup!21 (MutableMap!3011 tuple3!3998 Int) Unit!39272)

(assert (=> b!2236563 (= lt!832003 (lemmaForallPairsThenForLookup!21 (cache!3392 thiss!28797) lt!832004 lambda!84525))))

(declare-fun lt!832008 () tuple2!25708)

(assert (=> b!2236563 (= lt!832008 (tuple2!25709 lt!832004 (apply!6475 (cache!3392 thiss!28797) lt!832004)))))

(declare-fun lt!832010 () (InoxSet Context!4022))

(assert (=> b!2236563 (= lt!832010 (apply!6475 (cache!3392 thiss!28797) lt!832004))))

(declare-fun res!956881 () Bool)

(assert (=> b!2236563 (= res!956881 (validRegex!2426 (_1!15323 lt!832004)))))

(assert (=> b!2236563 (=> (not res!956881) (not e!1429513))))

(assert (=> b!2236563 e!1429513))

(declare-fun b!2236564 () Bool)

(assert (=> b!2236564 (= e!1429514 (= (derivationStepZipperDown!69 r!4766 ctx!52 a!997) (apply!6475 (cache!3392 thiss!28797) (tuple3!3999 r!4766 ctx!52 a!997))))))

(declare-fun d!665481 () Bool)

(assert (=> d!665481 e!1429515))

(declare-fun res!956880 () Bool)

(assert (=> d!665481 (=> res!956880 e!1429515)))

(assert (=> d!665481 (= res!956880 (not (contains!4394 (cache!3392 thiss!28797) (tuple3!3999 r!4766 ctx!52 a!997))))))

(declare-fun lt!832009 () Unit!39272)

(assert (=> d!665481 (= lt!832009 e!1429516)))

(declare-fun c!356431 () Bool)

(assert (=> d!665481 (= c!356431 (contains!4394 (cache!3392 thiss!28797) (tuple3!3999 r!4766 ctx!52 a!997)))))

(assert (=> d!665481 (validCacheMapDown!312 (cache!3392 thiss!28797))))

(assert (=> d!665481 (= (lemmaIfInCacheThenValid!32 thiss!28797 r!4766 ctx!52 a!997) lt!832009)))

(assert (= (and d!665481 c!356431) b!2236563))

(assert (= (and d!665481 (not c!356431)) b!2236562))

(assert (= (and b!2236563 res!956881) b!2236560))

(assert (= (and d!665481 (not res!956880)) b!2236561))

(assert (= (and b!2236561 res!956879) b!2236564))

(declare-fun m!2670430 () Bool)

(assert (=> b!2236563 m!2670430))

(declare-fun m!2670432 () Bool)

(assert (=> b!2236563 m!2670432))

(declare-fun m!2670434 () Bool)

(assert (=> b!2236563 m!2670434))

(assert (=> b!2236561 m!2670301))

(declare-fun m!2670436 () Bool)

(assert (=> b!2236564 m!2670436))

(declare-fun m!2670438 () Bool)

(assert (=> b!2236564 m!2670438))

(declare-fun m!2670440 () Bool)

(assert (=> d!665481 m!2670440))

(assert (=> d!665481 m!2670289))

(assert (=> b!2236560 m!2670432))

(declare-fun m!2670442 () Bool)

(assert (=> b!2236560 m!2670442))

(assert (=> b!2236450 d!665481))

(declare-fun d!665483 () Bool)

(assert (=> d!665483 (= (isDefined!4135 lt!831834) (not (isEmpty!14907 lt!831834)))))

(declare-fun bs!454216 () Bool)

(assert (= bs!454216 d!665483))

(assert (=> bs!454216 m!2670281))

(assert (=> b!2236448 d!665483))

(declare-fun d!665485 () Bool)

(assert (=> d!665485 (= (array_inv!3439 (_keys!3398 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))) (bvsge (size!20570 (_keys!3398 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))) #b00000000000000000000000000000000))))

(assert (=> b!2236452 d!665485))

(declare-fun d!665487 () Bool)

(assert (=> d!665487 (= (array_inv!3440 (_values!3381 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))) (bvsge (size!20571 (_values!3381 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797))))))) #b00000000000000000000000000000000))))

(assert (=> b!2236452 d!665487))

(declare-fun b!2236578 () Bool)

(declare-fun e!1429519 () Bool)

(declare-fun tp!703125 () Bool)

(declare-fun tp!703127 () Bool)

(assert (=> b!2236578 (= e!1429519 (and tp!703125 tp!703127))))

(declare-fun b!2236577 () Bool)

(declare-fun tp!703123 () Bool)

(assert (=> b!2236577 (= e!1429519 tp!703123)))

(declare-fun b!2236575 () Bool)

(assert (=> b!2236575 (= e!1429519 tp_is_empty!10151)))

(assert (=> b!2236445 (= tp!703105 e!1429519)))

(declare-fun b!2236576 () Bool)

(declare-fun tp!703126 () Bool)

(declare-fun tp!703124 () Bool)

(assert (=> b!2236576 (= e!1429519 (and tp!703126 tp!703124))))

(assert (= (and b!2236445 ((_ is ElementMatch!6463) (reg!6792 r!4766))) b!2236575))

(assert (= (and b!2236445 ((_ is Concat!10801) (reg!6792 r!4766))) b!2236576))

(assert (= (and b!2236445 ((_ is Star!6463) (reg!6792 r!4766))) b!2236577))

(assert (= (and b!2236445 ((_ is Union!6463) (reg!6792 r!4766))) b!2236578))

(declare-fun setIsEmpty!20394 () Bool)

(declare-fun setRes!20395 () Bool)

(assert (=> setIsEmpty!20394 setRes!20395))

(declare-fun mapNonEmpty!14576 () Bool)

(declare-fun mapRes!14576 () Bool)

(declare-fun tp!703157 () Bool)

(declare-fun e!1429536 () Bool)

(assert (=> mapNonEmpty!14576 (= mapRes!14576 (and tp!703157 e!1429536))))

(declare-fun mapRest!14576 () (Array (_ BitVec 32) List!26407))

(declare-fun mapValue!14576 () List!26407)

(declare-fun mapKey!14576 () (_ BitVec 32))

(assert (=> mapNonEmpty!14576 (= mapRest!14573 (store mapRest!14576 mapKey!14576 mapValue!14576))))

(declare-fun tp!703158 () Bool)

(declare-fun e!1429533 () Bool)

(declare-fun b!2236593 () Bool)

(declare-fun e!1429537 () Bool)

(declare-fun tp!703151 () Bool)

(declare-fun mapDefault!14576 () List!26407)

(assert (=> b!2236593 (= e!1429533 (and tp!703158 (inv!35739 (_2!15323 (_1!15324 (h!31714 mapDefault!14576)))) e!1429537 tp_is_empty!10151 setRes!20395 tp!703151))))

(declare-fun condSetEmpty!20395 () Bool)

(assert (=> b!2236593 (= condSetEmpty!20395 (= (_2!15324 (h!31714 mapDefault!14576)) ((as const (Array Context!4022 Bool)) false)))))

(declare-fun b!2236594 () Bool)

(declare-fun e!1429534 () Bool)

(declare-fun tp!703156 () Bool)

(assert (=> b!2236594 (= e!1429534 tp!703156)))

(declare-fun b!2236595 () Bool)

(declare-fun e!1429535 () Bool)

(declare-fun tp!703159 () Bool)

(assert (=> b!2236595 (= e!1429535 tp!703159)))

(declare-fun condMapEmpty!14576 () Bool)

(assert (=> mapNonEmpty!14573 (= condMapEmpty!14576 (= mapRest!14573 ((as const (Array (_ BitVec 32) List!26407)) mapDefault!14576)))))

(assert (=> mapNonEmpty!14573 (= tp!703101 (and e!1429533 mapRes!14576))))

(declare-fun setNonEmpty!20394 () Bool)

(declare-fun tp!703153 () Bool)

(declare-fun setElem!20395 () Context!4022)

(assert (=> setNonEmpty!20394 (= setRes!20395 (and tp!703153 (inv!35739 setElem!20395) e!1429534))))

(declare-fun setRest!20395 () (InoxSet Context!4022))

(assert (=> setNonEmpty!20394 (= (_2!15324 (h!31714 mapDefault!14576)) ((_ map or) (store ((as const (Array Context!4022 Bool)) false) setElem!20395 true) setRest!20395))))

(declare-fun b!2236596 () Bool)

(declare-fun e!1429532 () Bool)

(declare-fun tp!703154 () Bool)

(assert (=> b!2236596 (= e!1429532 tp!703154)))

(declare-fun mapIsEmpty!14576 () Bool)

(assert (=> mapIsEmpty!14576 mapRes!14576))

(declare-fun b!2236597 () Bool)

(declare-fun tp!703155 () Bool)

(assert (=> b!2236597 (= e!1429537 tp!703155)))

(declare-fun setNonEmpty!20395 () Bool)

(declare-fun tp!703150 () Bool)

(declare-fun setElem!20394 () Context!4022)

(declare-fun setRes!20394 () Bool)

(assert (=> setNonEmpty!20395 (= setRes!20394 (and tp!703150 (inv!35739 setElem!20394) e!1429535))))

(declare-fun setRest!20394 () (InoxSet Context!4022))

(assert (=> setNonEmpty!20395 (= (_2!15324 (h!31714 mapValue!14576)) ((_ map or) (store ((as const (Array Context!4022 Bool)) false) setElem!20394 true) setRest!20394))))

(declare-fun b!2236598 () Bool)

(declare-fun tp!703160 () Bool)

(declare-fun tp!703152 () Bool)

(assert (=> b!2236598 (= e!1429536 (and tp!703160 (inv!35739 (_2!15323 (_1!15324 (h!31714 mapValue!14576)))) e!1429532 tp_is_empty!10151 setRes!20394 tp!703152))))

(declare-fun condSetEmpty!20394 () Bool)

(assert (=> b!2236598 (= condSetEmpty!20394 (= (_2!15324 (h!31714 mapValue!14576)) ((as const (Array Context!4022 Bool)) false)))))

(declare-fun setIsEmpty!20395 () Bool)

(assert (=> setIsEmpty!20395 setRes!20394))

(assert (= (and mapNonEmpty!14573 condMapEmpty!14576) mapIsEmpty!14576))

(assert (= (and mapNonEmpty!14573 (not condMapEmpty!14576)) mapNonEmpty!14576))

(assert (= b!2236598 b!2236596))

(assert (= (and b!2236598 condSetEmpty!20394) setIsEmpty!20395))

(assert (= (and b!2236598 (not condSetEmpty!20394)) setNonEmpty!20395))

(assert (= setNonEmpty!20395 b!2236595))

(assert (= (and mapNonEmpty!14576 ((_ is Cons!26313) mapValue!14576)) b!2236598))

(assert (= b!2236593 b!2236597))

(assert (= (and b!2236593 condSetEmpty!20395) setIsEmpty!20394))

(assert (= (and b!2236593 (not condSetEmpty!20395)) setNonEmpty!20394))

(assert (= setNonEmpty!20394 b!2236594))

(assert (= (and mapNonEmpty!14573 ((_ is Cons!26313) mapDefault!14576)) b!2236593))

(declare-fun m!2670444 () Bool)

(assert (=> b!2236593 m!2670444))

(declare-fun m!2670446 () Bool)

(assert (=> b!2236598 m!2670446))

(declare-fun m!2670448 () Bool)

(assert (=> setNonEmpty!20394 m!2670448))

(declare-fun m!2670450 () Bool)

(assert (=> setNonEmpty!20395 m!2670450))

(declare-fun m!2670452 () Bool)

(assert (=> mapNonEmpty!14576 m!2670452))

(declare-fun e!1429546 () Bool)

(declare-fun tp!703171 () Bool)

(declare-fun e!1429544 () Bool)

(declare-fun b!2236607 () Bool)

(declare-fun tp!703172 () Bool)

(declare-fun setRes!20398 () Bool)

(assert (=> b!2236607 (= e!1429544 (and tp!703171 (inv!35739 (_2!15323 (_1!15324 (h!31714 mapValue!14573)))) e!1429546 tp_is_empty!10151 setRes!20398 tp!703172))))

(declare-fun condSetEmpty!20398 () Bool)

(assert (=> b!2236607 (= condSetEmpty!20398 (= (_2!15324 (h!31714 mapValue!14573)) ((as const (Array Context!4022 Bool)) false)))))

(assert (=> mapNonEmpty!14573 (= tp!703111 e!1429544)))

(declare-fun e!1429545 () Bool)

(declare-fun tp!703173 () Bool)

(declare-fun setNonEmpty!20398 () Bool)

(declare-fun setElem!20398 () Context!4022)

(assert (=> setNonEmpty!20398 (= setRes!20398 (and tp!703173 (inv!35739 setElem!20398) e!1429545))))

(declare-fun setRest!20398 () (InoxSet Context!4022))

(assert (=> setNonEmpty!20398 (= (_2!15324 (h!31714 mapValue!14573)) ((_ map or) (store ((as const (Array Context!4022 Bool)) false) setElem!20398 true) setRest!20398))))

(declare-fun setIsEmpty!20398 () Bool)

(assert (=> setIsEmpty!20398 setRes!20398))

(declare-fun b!2236608 () Bool)

(declare-fun tp!703175 () Bool)

(assert (=> b!2236608 (= e!1429545 tp!703175)))

(declare-fun b!2236609 () Bool)

(declare-fun tp!703174 () Bool)

(assert (=> b!2236609 (= e!1429546 tp!703174)))

(assert (= b!2236607 b!2236609))

(assert (= (and b!2236607 condSetEmpty!20398) setIsEmpty!20398))

(assert (= (and b!2236607 (not condSetEmpty!20398)) setNonEmpty!20398))

(assert (= setNonEmpty!20398 b!2236608))

(assert (= (and mapNonEmpty!14573 ((_ is Cons!26313) mapValue!14573)) b!2236607))

(declare-fun m!2670454 () Bool)

(assert (=> b!2236607 m!2670454))

(declare-fun m!2670456 () Bool)

(assert (=> setNonEmpty!20398 m!2670456))

(declare-fun b!2236614 () Bool)

(declare-fun e!1429549 () Bool)

(declare-fun tp!703180 () Bool)

(declare-fun tp!703181 () Bool)

(assert (=> b!2236614 (= e!1429549 (and tp!703180 tp!703181))))

(assert (=> b!2236449 (= tp!703103 e!1429549)))

(assert (= (and b!2236449 ((_ is Cons!26312) (exprs!2511 ctx!52))) b!2236614))

(declare-fun b!2236618 () Bool)

(declare-fun e!1429550 () Bool)

(declare-fun tp!703184 () Bool)

(declare-fun tp!703186 () Bool)

(assert (=> b!2236618 (= e!1429550 (and tp!703184 tp!703186))))

(declare-fun b!2236617 () Bool)

(declare-fun tp!703182 () Bool)

(assert (=> b!2236617 (= e!1429550 tp!703182)))

(declare-fun b!2236615 () Bool)

(assert (=> b!2236615 (= e!1429550 tp_is_empty!10151)))

(assert (=> b!2236444 (= tp!703100 e!1429550)))

(declare-fun b!2236616 () Bool)

(declare-fun tp!703185 () Bool)

(declare-fun tp!703183 () Bool)

(assert (=> b!2236616 (= e!1429550 (and tp!703185 tp!703183))))

(assert (= (and b!2236444 ((_ is ElementMatch!6463) (regOne!13438 r!4766))) b!2236615))

(assert (= (and b!2236444 ((_ is Concat!10801) (regOne!13438 r!4766))) b!2236616))

(assert (= (and b!2236444 ((_ is Star!6463) (regOne!13438 r!4766))) b!2236617))

(assert (= (and b!2236444 ((_ is Union!6463) (regOne!13438 r!4766))) b!2236618))

(declare-fun b!2236622 () Bool)

(declare-fun e!1429551 () Bool)

(declare-fun tp!703189 () Bool)

(declare-fun tp!703191 () Bool)

(assert (=> b!2236622 (= e!1429551 (and tp!703189 tp!703191))))

(declare-fun b!2236621 () Bool)

(declare-fun tp!703187 () Bool)

(assert (=> b!2236621 (= e!1429551 tp!703187)))

(declare-fun b!2236619 () Bool)

(assert (=> b!2236619 (= e!1429551 tp_is_empty!10151)))

(assert (=> b!2236444 (= tp!703102 e!1429551)))

(declare-fun b!2236620 () Bool)

(declare-fun tp!703190 () Bool)

(declare-fun tp!703188 () Bool)

(assert (=> b!2236620 (= e!1429551 (and tp!703190 tp!703188))))

(assert (= (and b!2236444 ((_ is ElementMatch!6463) (regTwo!13438 r!4766))) b!2236619))

(assert (= (and b!2236444 ((_ is Concat!10801) (regTwo!13438 r!4766))) b!2236620))

(assert (= (and b!2236444 ((_ is Star!6463) (regTwo!13438 r!4766))) b!2236621))

(assert (= (and b!2236444 ((_ is Union!6463) (regTwo!13438 r!4766))) b!2236622))

(declare-fun b!2236623 () Bool)

(declare-fun setRes!20399 () Bool)

(declare-fun e!1429552 () Bool)

(declare-fun tp!703193 () Bool)

(declare-fun tp!703192 () Bool)

(declare-fun e!1429554 () Bool)

(assert (=> b!2236623 (= e!1429552 (and tp!703192 (inv!35739 (_2!15323 (_1!15324 (h!31714 mapDefault!14573)))) e!1429554 tp_is_empty!10151 setRes!20399 tp!703193))))

(declare-fun condSetEmpty!20399 () Bool)

(assert (=> b!2236623 (= condSetEmpty!20399 (= (_2!15324 (h!31714 mapDefault!14573)) ((as const (Array Context!4022 Bool)) false)))))

(assert (=> b!2236453 (= tp!703106 e!1429552)))

(declare-fun setElem!20399 () Context!4022)

(declare-fun setNonEmpty!20399 () Bool)

(declare-fun tp!703194 () Bool)

(declare-fun e!1429553 () Bool)

(assert (=> setNonEmpty!20399 (= setRes!20399 (and tp!703194 (inv!35739 setElem!20399) e!1429553))))

(declare-fun setRest!20399 () (InoxSet Context!4022))

(assert (=> setNonEmpty!20399 (= (_2!15324 (h!31714 mapDefault!14573)) ((_ map or) (store ((as const (Array Context!4022 Bool)) false) setElem!20399 true) setRest!20399))))

(declare-fun setIsEmpty!20399 () Bool)

(assert (=> setIsEmpty!20399 setRes!20399))

(declare-fun b!2236624 () Bool)

(declare-fun tp!703196 () Bool)

(assert (=> b!2236624 (= e!1429553 tp!703196)))

(declare-fun b!2236625 () Bool)

(declare-fun tp!703195 () Bool)

(assert (=> b!2236625 (= e!1429554 tp!703195)))

(assert (= b!2236623 b!2236625))

(assert (= (and b!2236623 condSetEmpty!20399) setIsEmpty!20399))

(assert (= (and b!2236623 (not condSetEmpty!20399)) setNonEmpty!20399))

(assert (= setNonEmpty!20399 b!2236624))

(assert (= (and b!2236453 ((_ is Cons!26313) mapDefault!14573)) b!2236623))

(declare-fun m!2670458 () Bool)

(assert (=> b!2236623 m!2670458))

(declare-fun m!2670460 () Bool)

(assert (=> setNonEmpty!20399 m!2670460))

(declare-fun b!2236629 () Bool)

(declare-fun e!1429555 () Bool)

(declare-fun tp!703199 () Bool)

(declare-fun tp!703201 () Bool)

(assert (=> b!2236629 (= e!1429555 (and tp!703199 tp!703201))))

(declare-fun b!2236628 () Bool)

(declare-fun tp!703197 () Bool)

(assert (=> b!2236628 (= e!1429555 tp!703197)))

(declare-fun b!2236626 () Bool)

(assert (=> b!2236626 (= e!1429555 tp_is_empty!10151)))

(assert (=> b!2236455 (= tp!703109 e!1429555)))

(declare-fun b!2236627 () Bool)

(declare-fun tp!703200 () Bool)

(declare-fun tp!703198 () Bool)

(assert (=> b!2236627 (= e!1429555 (and tp!703200 tp!703198))))

(assert (= (and b!2236455 ((_ is ElementMatch!6463) (regOne!13439 r!4766))) b!2236626))

(assert (= (and b!2236455 ((_ is Concat!10801) (regOne!13439 r!4766))) b!2236627))

(assert (= (and b!2236455 ((_ is Star!6463) (regOne!13439 r!4766))) b!2236628))

(assert (= (and b!2236455 ((_ is Union!6463) (regOne!13439 r!4766))) b!2236629))

(declare-fun b!2236633 () Bool)

(declare-fun e!1429556 () Bool)

(declare-fun tp!703204 () Bool)

(declare-fun tp!703206 () Bool)

(assert (=> b!2236633 (= e!1429556 (and tp!703204 tp!703206))))

(declare-fun b!2236632 () Bool)

(declare-fun tp!703202 () Bool)

(assert (=> b!2236632 (= e!1429556 tp!703202)))

(declare-fun b!2236630 () Bool)

(assert (=> b!2236630 (= e!1429556 tp_is_empty!10151)))

(assert (=> b!2236455 (= tp!703110 e!1429556)))

(declare-fun b!2236631 () Bool)

(declare-fun tp!703205 () Bool)

(declare-fun tp!703203 () Bool)

(assert (=> b!2236631 (= e!1429556 (and tp!703205 tp!703203))))

(assert (= (and b!2236455 ((_ is ElementMatch!6463) (regTwo!13439 r!4766))) b!2236630))

(assert (= (and b!2236455 ((_ is Concat!10801) (regTwo!13439 r!4766))) b!2236631))

(assert (= (and b!2236455 ((_ is Star!6463) (regTwo!13439 r!4766))) b!2236632))

(assert (= (and b!2236455 ((_ is Union!6463) (regTwo!13439 r!4766))) b!2236633))

(declare-fun b!2236634 () Bool)

(declare-fun e!1429559 () Bool)

(declare-fun tp!703207 () Bool)

(declare-fun e!1429557 () Bool)

(declare-fun setRes!20400 () Bool)

(declare-fun tp!703208 () Bool)

(assert (=> b!2236634 (= e!1429557 (and tp!703207 (inv!35739 (_2!15323 (_1!15324 (h!31714 (zeroValue!3359 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))))))) e!1429559 tp_is_empty!10151 setRes!20400 tp!703208))))

(declare-fun condSetEmpty!20400 () Bool)

(assert (=> b!2236634 (= condSetEmpty!20400 (= (_2!15324 (h!31714 (zeroValue!3359 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))))) ((as const (Array Context!4022 Bool)) false)))))

(assert (=> b!2236452 (= tp!703108 e!1429557)))

(declare-fun setNonEmpty!20400 () Bool)

(declare-fun tp!703209 () Bool)

(declare-fun e!1429558 () Bool)

(declare-fun setElem!20400 () Context!4022)

(assert (=> setNonEmpty!20400 (= setRes!20400 (and tp!703209 (inv!35739 setElem!20400) e!1429558))))

(declare-fun setRest!20400 () (InoxSet Context!4022))

(assert (=> setNonEmpty!20400 (= (_2!15324 (h!31714 (zeroValue!3359 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))))) ((_ map or) (store ((as const (Array Context!4022 Bool)) false) setElem!20400 true) setRest!20400))))

(declare-fun setIsEmpty!20400 () Bool)

(assert (=> setIsEmpty!20400 setRes!20400))

(declare-fun b!2236635 () Bool)

(declare-fun tp!703211 () Bool)

(assert (=> b!2236635 (= e!1429558 tp!703211)))

(declare-fun b!2236636 () Bool)

(declare-fun tp!703210 () Bool)

(assert (=> b!2236636 (= e!1429559 tp!703210)))

(assert (= b!2236634 b!2236636))

(assert (= (and b!2236634 condSetEmpty!20400) setIsEmpty!20400))

(assert (= (and b!2236634 (not condSetEmpty!20400)) setNonEmpty!20400))

(assert (= setNonEmpty!20400 b!2236635))

(assert (= (and b!2236452 ((_ is Cons!26313) (zeroValue!3359 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))))) b!2236634))

(declare-fun m!2670462 () Bool)

(assert (=> b!2236634 m!2670462))

(declare-fun m!2670464 () Bool)

(assert (=> setNonEmpty!20400 m!2670464))

(declare-fun e!1429562 () Bool)

(declare-fun setRes!20401 () Bool)

(declare-fun e!1429560 () Bool)

(declare-fun b!2236637 () Bool)

(declare-fun tp!703213 () Bool)

(declare-fun tp!703212 () Bool)

(assert (=> b!2236637 (= e!1429560 (and tp!703212 (inv!35739 (_2!15323 (_1!15324 (h!31714 (minValue!3359 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))))))) e!1429562 tp_is_empty!10151 setRes!20401 tp!703213))))

(declare-fun condSetEmpty!20401 () Bool)

(assert (=> b!2236637 (= condSetEmpty!20401 (= (_2!15324 (h!31714 (minValue!3359 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))))) ((as const (Array Context!4022 Bool)) false)))))

(assert (=> b!2236452 (= tp!703104 e!1429560)))

(declare-fun tp!703214 () Bool)

(declare-fun setNonEmpty!20401 () Bool)

(declare-fun setElem!20401 () Context!4022)

(declare-fun e!1429561 () Bool)

(assert (=> setNonEmpty!20401 (= setRes!20401 (and tp!703214 (inv!35739 setElem!20401) e!1429561))))

(declare-fun setRest!20401 () (InoxSet Context!4022))

(assert (=> setNonEmpty!20401 (= (_2!15324 (h!31714 (minValue!3359 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))))) ((_ map or) (store ((as const (Array Context!4022 Bool)) false) setElem!20401 true) setRest!20401))))

(declare-fun setIsEmpty!20401 () Bool)

(assert (=> setIsEmpty!20401 setRes!20401))

(declare-fun b!2236638 () Bool)

(declare-fun tp!703216 () Bool)

(assert (=> b!2236638 (= e!1429561 tp!703216)))

(declare-fun b!2236639 () Bool)

(declare-fun tp!703215 () Bool)

(assert (=> b!2236639 (= e!1429562 tp!703215)))

(assert (= b!2236637 b!2236639))

(assert (= (and b!2236637 condSetEmpty!20401) setIsEmpty!20401))

(assert (= (and b!2236637 (not condSetEmpty!20401)) setNonEmpty!20401))

(assert (= setNonEmpty!20401 b!2236638))

(assert (= (and b!2236452 ((_ is Cons!26313) (minValue!3359 (v!29919 (underlying!6403 (v!29920 (underlying!6404 (cache!3392 thiss!28797)))))))) b!2236637))

(declare-fun m!2670466 () Bool)

(assert (=> b!2236637 m!2670466))

(declare-fun m!2670468 () Bool)

(assert (=> setNonEmpty!20401 m!2670468))

(declare-fun b_lambda!71693 () Bool)

(assert (= b_lambda!71691 (or (and b!2236443 b_free!64865) b_lambda!71693)))

(declare-fun b_lambda!71695 () Bool)

(assert (= b_lambda!71689 (or (and b!2236443 b_free!64865) b_lambda!71695)))

(check-sat (not b_lambda!71695) (not b!2236542) (not bm!134851) (not b!2236493) (not b!2236520) tp_is_empty!10151 (not b!2236560) (not b_next!65571) (not d!665473) (not setNonEmpty!20395) (not d!665475) (not b!2236629) (not b!2236607) (not b!2236484) (not b!2236596) (not b!2236627) (not tb!132851) (not bm!134831) (not b!2236519) (not d!665479) (not b!2236636) (not bm!134832) (not b!2236523) (not setNonEmpty!20399) (not b!2236595) (not b!2236578) (not b!2236608) (not bm!134848) (not b!2236632) (not b!2236576) (not b_next!65569) (not b!2236492) (not b!2236593) (not bm!134849) (not b!2236616) (not b!2236634) (not bm!134846) (not b!2236639) (not b!2236617) (not b!2236543) (not b!2236594) (not b_lambda!71693) (not b!2236563) (not d!665483) (not b!2236623) (not b!2236638) (not setNonEmpty!20394) (not b!2236561) (not b!2236620) (not b!2236621) (not b!2236597) (not b!2236635) (not bm!134847) (not mapNonEmpty!14576) (not b!2236522) (not b!2236564) (not bm!134850) (not b!2236577) (not b!2236609) (not b!2236598) (not b!2236628) (not setNonEmpty!20401) (not setNonEmpty!20398) b_and!174855 (not setNonEmpty!20400) (not b!2236631) (not b!2236624) (not b!2236614) (not b!2236633) (not d!665469) (not b!2236622) b_and!174859 (not b!2236618) (not b!2236625) (not b!2236521) (not b!2236496) (not b!2236544) (not b!2236637) (not d!665481))
(check-sat b_and!174855 b_and!174859 (not b_next!65571) (not b_next!65569))

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218170 () Bool)

(assert start!218170)

(declare-fun b!2239260 () Bool)

(declare-fun b_free!64985 () Bool)

(declare-fun b_next!65689 () Bool)

(assert (=> b!2239260 (= b_free!64985 (not b_next!65689))))

(declare-fun tp!705112 () Bool)

(declare-fun b_and!174997 () Bool)

(assert (=> b!2239260 (= tp!705112 b_and!174997)))

(declare-fun b!2239259 () Bool)

(declare-fun b_free!64987 () Bool)

(declare-fun b_next!65691 () Bool)

(assert (=> b!2239259 (= b_free!64987 (not b_next!65691))))

(declare-fun tp!705109 () Bool)

(declare-fun b_and!174999 () Bool)

(assert (=> b!2239259 (= tp!705109 b_and!174999)))

(declare-fun b!2239250 () Bool)

(declare-fun e!1431534 () Bool)

(declare-fun tp!705110 () Bool)

(assert (=> b!2239250 (= e!1431534 tp!705110)))

(declare-fun b!2239251 () Bool)

(declare-fun e!1431531 () Bool)

(declare-fun tp!705108 () Bool)

(declare-fun mapRes!14690 () Bool)

(assert (=> b!2239251 (= e!1431531 (and tp!705108 mapRes!14690))))

(declare-fun condMapEmpty!14690 () Bool)

(declare-datatypes ((C!13132 0))(
  ( (C!13133 (val!7614 Int)) )
))
(declare-datatypes ((Regex!6493 0))(
  ( (ElementMatch!6493 (c!356690 C!13132)) (Concat!10831 (regOne!13498 Regex!6493) (regTwo!13498 Regex!6493)) (EmptyExpr!6493) (Star!6493 (reg!6822 Regex!6493)) (EmptyLang!6493) (Union!6493 (regOne!13499 Regex!6493) (regTwo!13499 Regex!6493)) )
))
(declare-datatypes ((List!26474 0))(
  ( (Nil!26380) (Cons!26380 (h!31781 Regex!6493) (t!199906 List!26474)) )
))
(declare-datatypes ((Context!4082 0))(
  ( (Context!4083 (exprs!2541 List!26474)) )
))
(declare-datatypes ((tuple3!4058 0))(
  ( (tuple3!4059 (_1!15391 Regex!6493) (_2!15391 Context!4082) (_3!2499 C!13132)) )
))
(declare-datatypes ((Hashable!3041 0))(
  ( (HashableExt!3040 (__x!17619 Int)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25784 0))(
  ( (tuple2!25785 (_1!15392 tuple3!4058) (_2!15392 (InoxSet Context!4082))) )
))
(declare-datatypes ((List!26475 0))(
  ( (Nil!26381) (Cons!26381 (h!31782 tuple2!25784) (t!199907 List!26475)) )
))
(declare-datatypes ((array!10922 0))(
  ( (array!10923 (arr!4849 (Array (_ BitVec 32) List!26475)) (size!20630 (_ BitVec 32))) )
))
(declare-datatypes ((array!10924 0))(
  ( (array!10925 (arr!4850 (Array (_ BitVec 32) (_ BitVec 64))) (size!20631 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6262 0))(
  ( (LongMapFixedSize!6263 (defaultEntry!3496 Int) (mask!7731 (_ BitVec 32)) (extraKeys!3379 (_ BitVec 32)) (zeroValue!3389 List!26475) (minValue!3389 List!26475) (_size!6309 (_ BitVec 32)) (_keys!3428 array!10924) (_values!3411 array!10922) (_vacant!3192 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12341 0))(
  ( (Cell!12342 (v!30001 LongMapFixedSize!6262)) )
))
(declare-datatypes ((MutLongMap!3131 0))(
  ( (LongMap!3131 (underlying!6463 Cell!12341)) (MutLongMapExt!3130 (__x!17620 Int)) )
))
(declare-datatypes ((Cell!12343 0))(
  ( (Cell!12344 (v!30002 MutLongMap!3131)) )
))
(declare-datatypes ((MutableMap!3041 0))(
  ( (MutableMapExt!3040 (__x!17621 Int)) (HashMap!3041 (underlying!6464 Cell!12343) (hashF!4964 Hashable!3041) (_size!6310 (_ BitVec 32)) (defaultValue!3203 Int)) )
))
(declare-datatypes ((CacheDown!2128 0))(
  ( (CacheDown!2129 (cache!3422 MutableMap!3041)) )
))
(declare-fun thiss!28743 () CacheDown!2128)

(declare-fun mapDefault!14690 () List!26475)

(assert (=> b!2239251 (= condMapEmpty!14690 (= (arr!4849 (_values!3411 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26475)) mapDefault!14690)))))

(declare-fun b!2239252 () Bool)

(declare-fun e!1431530 () Bool)

(declare-fun e!1431538 () Bool)

(assert (=> b!2239252 (= e!1431530 e!1431538)))

(declare-fun mapNonEmpty!14690 () Bool)

(declare-fun tp!705106 () Bool)

(declare-fun tp!705105 () Bool)

(assert (=> mapNonEmpty!14690 (= mapRes!14690 (and tp!705106 tp!705105))))

(declare-fun mapKey!14690 () (_ BitVec 32))

(declare-fun mapValue!14690 () List!26475)

(declare-fun mapRest!14690 () (Array (_ BitVec 32) List!26475))

(assert (=> mapNonEmpty!14690 (= (arr!4849 (_values!3411 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))) (store mapRest!14690 mapKey!14690 mapValue!14690))))

(declare-fun mapIsEmpty!14690 () Bool)

(assert (=> mapIsEmpty!14690 mapRes!14690))

(declare-fun res!957461 () Bool)

(declare-fun e!1431537 () Bool)

(assert (=> start!218170 (=> (not res!957461) (not e!1431537))))

(declare-fun validCacheMapDown!336 (MutableMap!3041) Bool)

(assert (=> start!218170 (= res!957461 (validCacheMapDown!336 (cache!3422 thiss!28743)))))

(assert (=> start!218170 e!1431537))

(declare-fun e!1431539 () Bool)

(declare-fun inv!35831 (CacheDown!2128) Bool)

(assert (=> start!218170 (and (inv!35831 thiss!28743) e!1431539)))

(assert (=> start!218170 e!1431534))

(declare-fun ctx!48 () Context!4082)

(declare-fun e!1431533 () Bool)

(declare-fun inv!35832 (Context!4082) Bool)

(assert (=> start!218170 (and (inv!35832 ctx!48) e!1431533)))

(declare-fun tp_is_empty!10207 () Bool)

(assert (=> start!218170 tp_is_empty!10207))

(declare-fun b!2239253 () Bool)

(declare-fun e!1431535 () Bool)

(assert (=> b!2239253 (= e!1431535 e!1431530)))

(declare-fun b!2239254 () Bool)

(declare-fun res!957460 () Bool)

(assert (=> b!2239254 (=> (not res!957460) (not e!1431537))))

(declare-fun r!4750 () Regex!6493)

(declare-fun a!970 () C!13132)

(declare-fun contains!4441 (MutableMap!3041 tuple3!4058) Bool)

(assert (=> b!2239254 (= res!957460 (not (contains!4441 (cache!3422 thiss!28743) (tuple3!4059 r!4750 ctx!48 a!970))))))

(declare-fun b!2239255 () Bool)

(declare-fun e!1431532 () Bool)

(assert (=> b!2239255 (= e!1431539 e!1431532)))

(declare-fun b!2239256 () Bool)

(declare-fun e!1431536 () Bool)

(declare-fun lt!833232 () MutLongMap!3131)

(get-info :version)

(assert (=> b!2239256 (= e!1431536 (and e!1431535 ((_ is LongMap!3131) lt!833232)))))

(assert (=> b!2239256 (= lt!833232 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))

(declare-fun b!2239257 () Bool)

(assert (=> b!2239257 (= e!1431534 tp_is_empty!10207)))

(declare-fun b!2239258 () Bool)

(declare-fun tp!705100 () Bool)

(declare-fun tp!705101 () Bool)

(assert (=> b!2239258 (= e!1431534 (and tp!705100 tp!705101))))

(declare-fun tp!705103 () Bool)

(declare-fun tp!705111 () Bool)

(declare-fun array_inv!3483 (array!10924) Bool)

(declare-fun array_inv!3484 (array!10922) Bool)

(assert (=> b!2239259 (= e!1431538 (and tp!705109 tp!705103 tp!705111 (array_inv!3483 (_keys!3428 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))) (array_inv!3484 (_values!3411 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))) e!1431531))))

(assert (=> b!2239260 (= e!1431532 (and e!1431536 tp!705112))))

(declare-fun b!2239261 () Bool)

(declare-fun valid!2359 (MutableMap!3041) Bool)

(assert (=> b!2239261 (= e!1431537 (not (valid!2359 (cache!3422 thiss!28743))))))

(declare-fun b!2239262 () Bool)

(declare-fun tp!705102 () Bool)

(declare-fun tp!705104 () Bool)

(assert (=> b!2239262 (= e!1431534 (and tp!705102 tp!705104))))

(declare-fun b!2239263 () Bool)

(declare-fun res!957462 () Bool)

(assert (=> b!2239263 (=> (not res!957462) (not e!1431537))))

(assert (=> b!2239263 (= res!957462 ((_ is HashMap!3041) (cache!3422 thiss!28743)))))

(declare-fun b!2239264 () Bool)

(declare-fun tp!705107 () Bool)

(assert (=> b!2239264 (= e!1431533 tp!705107)))

(assert (= (and start!218170 res!957461) b!2239254))

(assert (= (and b!2239254 res!957460) b!2239263))

(assert (= (and b!2239263 res!957462) b!2239261))

(assert (= (and b!2239251 condMapEmpty!14690) mapIsEmpty!14690))

(assert (= (and b!2239251 (not condMapEmpty!14690)) mapNonEmpty!14690))

(assert (= b!2239259 b!2239251))

(assert (= b!2239252 b!2239259))

(assert (= b!2239253 b!2239252))

(assert (= (and b!2239256 ((_ is LongMap!3131) (v!30002 (underlying!6464 (cache!3422 thiss!28743))))) b!2239253))

(assert (= b!2239260 b!2239256))

(assert (= (and b!2239255 ((_ is HashMap!3041) (cache!3422 thiss!28743))) b!2239260))

(assert (= start!218170 b!2239255))

(assert (= (and start!218170 ((_ is ElementMatch!6493) r!4750)) b!2239257))

(assert (= (and start!218170 ((_ is Concat!10831) r!4750)) b!2239262))

(assert (= (and start!218170 ((_ is Star!6493) r!4750)) b!2239250))

(assert (= (and start!218170 ((_ is Union!6493) r!4750)) b!2239258))

(assert (= start!218170 b!2239264))

(declare-fun m!2672078 () Bool)

(assert (=> mapNonEmpty!14690 m!2672078))

(declare-fun m!2672080 () Bool)

(assert (=> b!2239261 m!2672080))

(declare-fun m!2672082 () Bool)

(assert (=> b!2239254 m!2672082))

(declare-fun m!2672084 () Bool)

(assert (=> start!218170 m!2672084))

(declare-fun m!2672086 () Bool)

(assert (=> start!218170 m!2672086))

(declare-fun m!2672088 () Bool)

(assert (=> start!218170 m!2672088))

(declare-fun m!2672090 () Bool)

(assert (=> b!2239259 m!2672090))

(declare-fun m!2672092 () Bool)

(assert (=> b!2239259 m!2672092))

(check-sat b_and!174999 (not b_next!65691) (not b!2239254) (not b!2239250) (not b!2239264) tp_is_empty!10207 b_and!174997 (not b_next!65689) (not b!2239262) (not start!218170) (not b!2239251) (not mapNonEmpty!14690) (not b!2239261) (not b!2239259) (not b!2239258))
(check-sat b_and!174999 b_and!174997 (not b_next!65689) (not b_next!65691))
(get-model)

(declare-fun d!665654 () Bool)

(assert (=> d!665654 (= (array_inv!3483 (_keys!3428 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))) (bvsge (size!20631 (_keys!3428 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2239259 d!665654))

(declare-fun d!665656 () Bool)

(assert (=> d!665656 (= (array_inv!3484 (_values!3411 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))) (bvsge (size!20630 (_values!3411 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2239259 d!665656))

(declare-fun d!665658 () Bool)

(declare-fun res!957469 () Bool)

(declare-fun e!1431545 () Bool)

(assert (=> d!665658 (=> (not res!957469) (not e!1431545))))

(assert (=> d!665658 (= res!957469 (valid!2359 (cache!3422 thiss!28743)))))

(assert (=> d!665658 (= (validCacheMapDown!336 (cache!3422 thiss!28743)) e!1431545)))

(declare-fun b!2239271 () Bool)

(declare-fun res!957470 () Bool)

(assert (=> b!2239271 (=> (not res!957470) (not e!1431545))))

(declare-fun invariantList!382 (List!26475) Bool)

(declare-datatypes ((ListMap!859 0))(
  ( (ListMap!860 (toList!1374 List!26475)) )
))
(declare-fun map!5442 (MutableMap!3041) ListMap!859)

(assert (=> b!2239271 (= res!957470 (invariantList!382 (toList!1374 (map!5442 (cache!3422 thiss!28743)))))))

(declare-fun b!2239272 () Bool)

(declare-fun lambda!84671 () Int)

(declare-fun forall!5424 (List!26475 Int) Bool)

(assert (=> b!2239272 (= e!1431545 (forall!5424 (toList!1374 (map!5442 (cache!3422 thiss!28743))) lambda!84671))))

(assert (= (and d!665658 res!957469) b!2239271))

(assert (= (and b!2239271 res!957470) b!2239272))

(assert (=> d!665658 m!2672080))

(declare-fun m!2672095 () Bool)

(assert (=> b!2239271 m!2672095))

(declare-fun m!2672097 () Bool)

(assert (=> b!2239271 m!2672097))

(assert (=> b!2239272 m!2672095))

(declare-fun m!2672099 () Bool)

(assert (=> b!2239272 m!2672099))

(assert (=> start!218170 d!665658))

(declare-fun d!665660 () Bool)

(declare-fun res!957473 () Bool)

(declare-fun e!1431548 () Bool)

(assert (=> d!665660 (=> (not res!957473) (not e!1431548))))

(assert (=> d!665660 (= res!957473 ((_ is HashMap!3041) (cache!3422 thiss!28743)))))

(assert (=> d!665660 (= (inv!35831 thiss!28743) e!1431548)))

(declare-fun b!2239275 () Bool)

(assert (=> b!2239275 (= e!1431548 (validCacheMapDown!336 (cache!3422 thiss!28743)))))

(assert (= (and d!665660 res!957473) b!2239275))

(assert (=> b!2239275 m!2672084))

(assert (=> start!218170 d!665660))

(declare-fun d!665662 () Bool)

(declare-fun lambda!84674 () Int)

(declare-fun forall!5425 (List!26474 Int) Bool)

(assert (=> d!665662 (= (inv!35832 ctx!48) (forall!5425 (exprs!2541 ctx!48) lambda!84674))))

(declare-fun bs!454275 () Bool)

(assert (= bs!454275 d!665662))

(declare-fun m!2672101 () Bool)

(assert (=> bs!454275 m!2672101))

(assert (=> start!218170 d!665662))

(declare-fun b!2239298 () Bool)

(declare-datatypes ((Unit!39349 0))(
  ( (Unit!39350) )
))
(declare-fun e!1431564 () Unit!39349)

(declare-fun Unit!39351 () Unit!39349)

(assert (=> b!2239298 (= e!1431564 Unit!39351)))

(declare-fun b!2239299 () Bool)

(declare-fun e!1431568 () Bool)

(declare-fun lt!833280 () (_ BitVec 64))

(declare-datatypes ((Option!5142 0))(
  ( (None!5141) (Some!5141 (v!30003 tuple2!25784)) )
))
(declare-fun isDefined!4150 (Option!5142) Bool)

(declare-fun getPair!36 (List!26475 tuple3!4058) Option!5142)

(declare-fun apply!6503 (MutLongMap!3131 (_ BitVec 64)) List!26475)

(assert (=> b!2239299 (= e!1431568 (isDefined!4150 (getPair!36 (apply!6503 (v!30002 (underlying!6464 (cache!3422 thiss!28743))) lt!833280) (tuple3!4059 r!4750 ctx!48 a!970))))))

(declare-fun b!2239300 () Bool)

(declare-fun e!1431567 () Unit!39349)

(declare-fun lt!833278 () Unit!39349)

(assert (=> b!2239300 (= e!1431567 lt!833278)))

(declare-datatypes ((tuple2!25786 0))(
  ( (tuple2!25787 (_1!15393 (_ BitVec 64)) (_2!15393 List!26475)) )
))
(declare-datatypes ((List!26476 0))(
  ( (Nil!26382) (Cons!26382 (h!31783 tuple2!25786) (t!199908 List!26476)) )
))
(declare-datatypes ((ListLongMap!343 0))(
  ( (ListLongMap!344 (toList!1375 List!26476)) )
))
(declare-fun lt!833288 () ListLongMap!343)

(declare-fun call!135121 () ListLongMap!343)

(assert (=> b!2239300 (= lt!833288 call!135121)))

(declare-fun lemmaInGenericMapThenInLongMap!36 (ListLongMap!343 tuple3!4058 Hashable!3041) Unit!39349)

(assert (=> b!2239300 (= lt!833278 (lemmaInGenericMapThenInLongMap!36 lt!833288 (tuple3!4059 r!4750 ctx!48 a!970) (hashF!4964 (cache!3422 thiss!28743))))))

(declare-fun res!957480 () Bool)

(declare-fun call!135122 () Bool)

(assert (=> b!2239300 (= res!957480 call!135122)))

(declare-fun e!1431566 () Bool)

(assert (=> b!2239300 (=> (not res!957480) (not e!1431566))))

(assert (=> b!2239300 e!1431566))

(declare-fun b!2239301 () Bool)

(assert (=> b!2239301 (= e!1431567 e!1431564)))

(declare-fun res!957482 () Bool)

(assert (=> b!2239301 (= res!957482 call!135122)))

(declare-fun e!1431563 () Bool)

(assert (=> b!2239301 (=> (not res!957482) (not e!1431563))))

(declare-fun c!356702 () Bool)

(assert (=> b!2239301 (= c!356702 e!1431563)))

(declare-fun b!2239302 () Bool)

(assert (=> b!2239302 false))

(declare-fun lt!833284 () Unit!39349)

(declare-fun lt!833275 () Unit!39349)

(assert (=> b!2239302 (= lt!833284 lt!833275)))

(declare-fun lt!833279 () ListLongMap!343)

(declare-fun contains!4442 (ListMap!859 tuple3!4058) Bool)

(declare-fun extractMap!116 (List!26476) ListMap!859)

(assert (=> b!2239302 (contains!4442 (extractMap!116 (toList!1375 lt!833279)) (tuple3!4059 r!4750 ctx!48 a!970))))

(declare-fun lemmaInLongMapThenInGenericMap!36 (ListLongMap!343 tuple3!4058 Hashable!3041) Unit!39349)

(assert (=> b!2239302 (= lt!833275 (lemmaInLongMapThenInGenericMap!36 lt!833279 (tuple3!4059 r!4750 ctx!48 a!970) (hashF!4964 (cache!3422 thiss!28743))))))

(assert (=> b!2239302 (= lt!833279 call!135121)))

(declare-fun Unit!39352 () Unit!39349)

(assert (=> b!2239302 (= e!1431564 Unit!39352)))

(declare-fun b!2239303 () Bool)

(declare-fun e!1431569 () Unit!39349)

(declare-fun lambda!84677 () Int)

(declare-fun forallContained!783 (List!26476 Int tuple2!25786) Unit!39349)

(declare-fun map!5443 (MutLongMap!3131) ListLongMap!343)

(assert (=> b!2239303 (= e!1431569 (forallContained!783 (toList!1375 (map!5443 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))) lambda!84677 (tuple2!25787 lt!833280 (apply!6503 (v!30002 (underlying!6464 (cache!3422 thiss!28743))) lt!833280))))))

(declare-fun c!356700 () Bool)

(declare-fun contains!4443 (List!26476 tuple2!25786) Bool)

(assert (=> b!2239303 (= c!356700 (not (contains!4443 (toList!1375 (map!5443 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))) (tuple2!25787 lt!833280 (apply!6503 (v!30002 (underlying!6464 (cache!3422 thiss!28743))) lt!833280)))))))

(declare-fun lt!833281 () Unit!39349)

(declare-fun e!1431565 () Unit!39349)

(assert (=> b!2239303 (= lt!833281 e!1431565)))

(declare-fun bm!135113 () Bool)

(declare-fun call!135118 () (_ BitVec 64))

(declare-fun c!356699 () Bool)

(declare-fun contains!4444 (ListLongMap!343 (_ BitVec 64)) Bool)

(assert (=> bm!135113 (= call!135122 (contains!4444 (ite c!356699 lt!833288 call!135121) call!135118))))

(declare-fun b!2239304 () Bool)

(declare-fun call!135119 () Bool)

(assert (=> b!2239304 (= e!1431563 call!135119)))

(declare-fun b!2239305 () Bool)

(assert (=> b!2239305 (= e!1431566 call!135119)))

(declare-fun bm!135115 () Bool)

(declare-fun call!135120 () Option!5142)

(assert (=> bm!135115 (= call!135119 (isDefined!4150 call!135120))))

(declare-fun bm!135116 () Bool)

(assert (=> bm!135116 (= call!135121 (map!5443 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))))

(declare-fun b!2239306 () Bool)

(assert (=> b!2239306 false))

(declare-fun lt!833292 () Unit!39349)

(declare-fun lt!833289 () Unit!39349)

(assert (=> b!2239306 (= lt!833292 lt!833289)))

(declare-fun lt!833285 () List!26476)

(declare-fun lt!833282 () List!26475)

(assert (=> b!2239306 (contains!4443 lt!833285 (tuple2!25787 lt!833280 lt!833282))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!37 (List!26476 (_ BitVec 64) List!26475) Unit!39349)

(assert (=> b!2239306 (= lt!833289 (lemmaGetValueByKeyImpliesContainsTuple!37 lt!833285 lt!833280 lt!833282))))

(assert (=> b!2239306 (= lt!833282 (apply!6503 (v!30002 (underlying!6464 (cache!3422 thiss!28743))) lt!833280))))

(assert (=> b!2239306 (= lt!833285 (toList!1375 (map!5443 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))))

(declare-fun lt!833286 () Unit!39349)

(declare-fun lt!833287 () Unit!39349)

(assert (=> b!2239306 (= lt!833286 lt!833287)))

(declare-fun lt!833291 () List!26476)

(declare-datatypes ((Option!5143 0))(
  ( (None!5142) (Some!5142 (v!30004 List!26475)) )
))
(declare-fun isDefined!4151 (Option!5143) Bool)

(declare-fun getValueByKey!86 (List!26476 (_ BitVec 64)) Option!5143)

(assert (=> b!2239306 (isDefined!4151 (getValueByKey!86 lt!833291 lt!833280))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!54 (List!26476 (_ BitVec 64)) Unit!39349)

(assert (=> b!2239306 (= lt!833287 (lemmaContainsKeyImpliesGetValueByKeyDefined!54 lt!833291 lt!833280))))

(assert (=> b!2239306 (= lt!833291 (toList!1375 (map!5443 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))))

(declare-fun lt!833277 () Unit!39349)

(declare-fun lt!833290 () Unit!39349)

(assert (=> b!2239306 (= lt!833277 lt!833290)))

(declare-fun lt!833276 () List!26476)

(declare-fun containsKey!85 (List!26476 (_ BitVec 64)) Bool)

(assert (=> b!2239306 (containsKey!85 lt!833276 lt!833280)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!37 (List!26476 (_ BitVec 64)) Unit!39349)

(assert (=> b!2239306 (= lt!833290 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!37 lt!833276 lt!833280))))

(assert (=> b!2239306 (= lt!833276 (toList!1375 (map!5443 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))))))

(declare-fun Unit!39353 () Unit!39349)

(assert (=> b!2239306 (= e!1431565 Unit!39353)))

(declare-fun call!135123 () List!26475)

(declare-fun bm!135117 () Bool)

(assert (=> bm!135117 (= call!135120 (getPair!36 call!135123 (tuple3!4059 r!4750 ctx!48 a!970)))))

(declare-fun bm!135118 () Bool)

(declare-fun apply!6504 (ListLongMap!343 (_ BitVec 64)) List!26475)

(assert (=> bm!135118 (= call!135123 (apply!6504 (ite c!356699 lt!833288 call!135121) call!135118))))

(declare-fun b!2239307 () Bool)

(declare-fun Unit!39354 () Unit!39349)

(assert (=> b!2239307 (= e!1431565 Unit!39354)))

(declare-fun b!2239308 () Bool)

(declare-fun Unit!39355 () Unit!39349)

(assert (=> b!2239308 (= e!1431569 Unit!39355)))

(declare-fun bm!135114 () Bool)

(declare-fun hash!583 (Hashable!3041 tuple3!4058) (_ BitVec 64))

(assert (=> bm!135114 (= call!135118 (hash!583 (hashF!4964 (cache!3422 thiss!28743)) (tuple3!4059 r!4750 ctx!48 a!970)))))

(declare-fun lt!833283 () Bool)

(declare-fun d!665664 () Bool)

(assert (=> d!665664 (= lt!833283 (contains!4442 (map!5442 (cache!3422 thiss!28743)) (tuple3!4059 r!4750 ctx!48 a!970)))))

(assert (=> d!665664 (= lt!833283 e!1431568)))

(declare-fun res!957481 () Bool)

(assert (=> d!665664 (=> (not res!957481) (not e!1431568))))

(declare-fun contains!4445 (MutLongMap!3131 (_ BitVec 64)) Bool)

(assert (=> d!665664 (= res!957481 (contains!4445 (v!30002 (underlying!6464 (cache!3422 thiss!28743))) lt!833280))))

(declare-fun lt!833273 () Unit!39349)

(assert (=> d!665664 (= lt!833273 e!1431567)))

(assert (=> d!665664 (= c!356699 (contains!4442 (extractMap!116 (toList!1375 (map!5443 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))) (tuple3!4059 r!4750 ctx!48 a!970)))))

(declare-fun lt!833274 () Unit!39349)

(assert (=> d!665664 (= lt!833274 e!1431569)))

(declare-fun c!356701 () Bool)

(assert (=> d!665664 (= c!356701 (contains!4445 (v!30002 (underlying!6464 (cache!3422 thiss!28743))) lt!833280))))

(assert (=> d!665664 (= lt!833280 (hash!583 (hashF!4964 (cache!3422 thiss!28743)) (tuple3!4059 r!4750 ctx!48 a!970)))))

(assert (=> d!665664 (valid!2359 (cache!3422 thiss!28743))))

(assert (=> d!665664 (= (contains!4441 (cache!3422 thiss!28743) (tuple3!4059 r!4750 ctx!48 a!970)) lt!833283)))

(assert (= (and d!665664 c!356701) b!2239303))

(assert (= (and d!665664 (not c!356701)) b!2239308))

(assert (= (and b!2239303 c!356700) b!2239306))

(assert (= (and b!2239303 (not c!356700)) b!2239307))

(assert (= (and d!665664 c!356699) b!2239300))

(assert (= (and d!665664 (not c!356699)) b!2239301))

(assert (= (and b!2239300 res!957480) b!2239305))

(assert (= (and b!2239301 res!957482) b!2239304))

(assert (= (and b!2239301 c!356702) b!2239302))

(assert (= (and b!2239301 (not c!356702)) b!2239298))

(assert (= (or b!2239300 b!2239301 b!2239304 b!2239302) bm!135116))

(assert (= (or b!2239300 b!2239305 b!2239301 b!2239304) bm!135114))

(assert (= (or b!2239305 b!2239304) bm!135118))

(assert (= (or b!2239300 b!2239301) bm!135113))

(assert (= (or b!2239305 b!2239304) bm!135117))

(assert (= (or b!2239305 b!2239304) bm!135115))

(assert (= (and d!665664 res!957481) b!2239299))

(declare-fun m!2672103 () Bool)

(assert (=> b!2239306 m!2672103))

(declare-fun m!2672105 () Bool)

(assert (=> b!2239306 m!2672105))

(declare-fun m!2672107 () Bool)

(assert (=> b!2239306 m!2672107))

(declare-fun m!2672109 () Bool)

(assert (=> b!2239306 m!2672109))

(declare-fun m!2672111 () Bool)

(assert (=> b!2239306 m!2672111))

(declare-fun m!2672113 () Bool)

(assert (=> b!2239306 m!2672113))

(declare-fun m!2672115 () Bool)

(assert (=> b!2239306 m!2672115))

(declare-fun m!2672117 () Bool)

(assert (=> b!2239306 m!2672117))

(assert (=> b!2239306 m!2672109))

(declare-fun m!2672119 () Bool)

(assert (=> b!2239306 m!2672119))

(assert (=> b!2239303 m!2672117))

(assert (=> b!2239303 m!2672105))

(declare-fun m!2672121 () Bool)

(assert (=> b!2239303 m!2672121))

(declare-fun m!2672123 () Bool)

(assert (=> b!2239303 m!2672123))

(assert (=> b!2239299 m!2672105))

(assert (=> b!2239299 m!2672105))

(declare-fun m!2672125 () Bool)

(assert (=> b!2239299 m!2672125))

(assert (=> b!2239299 m!2672125))

(declare-fun m!2672127 () Bool)

(assert (=> b!2239299 m!2672127))

(declare-fun m!2672129 () Bool)

(assert (=> b!2239300 m!2672129))

(declare-fun m!2672131 () Bool)

(assert (=> bm!135113 m!2672131))

(assert (=> bm!135116 m!2672117))

(declare-fun m!2672133 () Bool)

(assert (=> d!665664 m!2672133))

(declare-fun m!2672135 () Bool)

(assert (=> d!665664 m!2672135))

(declare-fun m!2672137 () Bool)

(assert (=> d!665664 m!2672137))

(assert (=> d!665664 m!2672080))

(assert (=> d!665664 m!2672095))

(declare-fun m!2672139 () Bool)

(assert (=> d!665664 m!2672139))

(assert (=> d!665664 m!2672095))

(declare-fun m!2672141 () Bool)

(assert (=> d!665664 m!2672141))

(assert (=> d!665664 m!2672117))

(assert (=> d!665664 m!2672133))

(declare-fun m!2672143 () Bool)

(assert (=> bm!135117 m!2672143))

(assert (=> bm!135114 m!2672137))

(declare-fun m!2672145 () Bool)

(assert (=> b!2239302 m!2672145))

(assert (=> b!2239302 m!2672145))

(declare-fun m!2672147 () Bool)

(assert (=> b!2239302 m!2672147))

(declare-fun m!2672149 () Bool)

(assert (=> b!2239302 m!2672149))

(declare-fun m!2672151 () Bool)

(assert (=> bm!135118 m!2672151))

(declare-fun m!2672153 () Bool)

(assert (=> bm!135115 m!2672153))

(assert (=> b!2239254 d!665664))

(declare-fun bs!454276 () Bool)

(declare-fun b!2239313 () Bool)

(assert (= bs!454276 (and b!2239313 b!2239303)))

(declare-fun lambda!84680 () Int)

(assert (=> bs!454276 (= lambda!84680 lambda!84677)))

(declare-fun d!665666 () Bool)

(declare-fun res!957487 () Bool)

(declare-fun e!1431572 () Bool)

(assert (=> d!665666 (=> (not res!957487) (not e!1431572))))

(declare-fun valid!2360 (MutLongMap!3131) Bool)

(assert (=> d!665666 (= res!957487 (valid!2360 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))))

(assert (=> d!665666 (= (valid!2359 (cache!3422 thiss!28743)) e!1431572)))

(declare-fun res!957488 () Bool)

(assert (=> b!2239313 (=> (not res!957488) (not e!1431572))))

(declare-fun forall!5426 (List!26476 Int) Bool)

(assert (=> b!2239313 (= res!957488 (forall!5426 (toList!1375 (map!5443 (v!30002 (underlying!6464 (cache!3422 thiss!28743))))) lambda!84680))))

(declare-fun b!2239314 () Bool)

(declare-fun allKeysSameHashInMap!112 (ListLongMap!343 Hashable!3041) Bool)

(assert (=> b!2239314 (= e!1431572 (allKeysSameHashInMap!112 (map!5443 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))) (hashF!4964 (cache!3422 thiss!28743))))))

(assert (= (and d!665666 res!957487) b!2239313))

(assert (= (and b!2239313 res!957488) b!2239314))

(declare-fun m!2672155 () Bool)

(assert (=> d!665666 m!2672155))

(assert (=> b!2239313 m!2672117))

(declare-fun m!2672157 () Bool)

(assert (=> b!2239313 m!2672157))

(assert (=> b!2239314 m!2672117))

(assert (=> b!2239314 m!2672117))

(declare-fun m!2672159 () Bool)

(assert (=> b!2239314 m!2672159))

(assert (=> b!2239261 d!665666))

(declare-fun b!2239328 () Bool)

(declare-fun e!1431575 () Bool)

(declare-fun tp!705126 () Bool)

(declare-fun tp!705125 () Bool)

(assert (=> b!2239328 (= e!1431575 (and tp!705126 tp!705125))))

(declare-fun b!2239326 () Bool)

(declare-fun tp!705124 () Bool)

(declare-fun tp!705127 () Bool)

(assert (=> b!2239326 (= e!1431575 (and tp!705124 tp!705127))))

(declare-fun b!2239325 () Bool)

(assert (=> b!2239325 (= e!1431575 tp_is_empty!10207)))

(assert (=> b!2239250 (= tp!705110 e!1431575)))

(declare-fun b!2239327 () Bool)

(declare-fun tp!705123 () Bool)

(assert (=> b!2239327 (= e!1431575 tp!705123)))

(assert (= (and b!2239250 ((_ is ElementMatch!6493) (reg!6822 r!4750))) b!2239325))

(assert (= (and b!2239250 ((_ is Concat!10831) (reg!6822 r!4750))) b!2239326))

(assert (= (and b!2239250 ((_ is Star!6493) (reg!6822 r!4750))) b!2239327))

(assert (= (and b!2239250 ((_ is Union!6493) (reg!6822 r!4750))) b!2239328))

(declare-fun b!2239333 () Bool)

(declare-fun e!1431578 () Bool)

(declare-fun tp!705132 () Bool)

(declare-fun tp!705133 () Bool)

(assert (=> b!2239333 (= e!1431578 (and tp!705132 tp!705133))))

(assert (=> b!2239264 (= tp!705107 e!1431578)))

(assert (= (and b!2239264 ((_ is Cons!26380) (exprs!2541 ctx!48))) b!2239333))

(declare-fun b!2239342 () Bool)

(declare-fun e!1431585 () Bool)

(declare-fun tp!705146 () Bool)

(assert (=> b!2239342 (= e!1431585 tp!705146)))

(declare-fun e!1431587 () Bool)

(assert (=> b!2239259 (= tp!705103 e!1431587)))

(declare-fun tp!705145 () Bool)

(declare-fun b!2239343 () Bool)

(declare-fun e!1431586 () Bool)

(declare-fun tp!705144 () Bool)

(declare-fun setRes!20506 () Bool)

(assert (=> b!2239343 (= e!1431587 (and tp!705145 (inv!35832 (_2!15391 (_1!15392 (h!31782 (zeroValue!3389 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))))))) e!1431586 tp_is_empty!10207 setRes!20506 tp!705144))))

(declare-fun condSetEmpty!20506 () Bool)

(assert (=> b!2239343 (= condSetEmpty!20506 (= (_2!15392 (h!31782 (zeroValue!3389 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))))) ((as const (Array Context!4082 Bool)) false)))))

(declare-fun setElem!20506 () Context!4082)

(declare-fun setNonEmpty!20506 () Bool)

(declare-fun tp!705148 () Bool)

(assert (=> setNonEmpty!20506 (= setRes!20506 (and tp!705148 (inv!35832 setElem!20506) e!1431585))))

(declare-fun setRest!20506 () (InoxSet Context!4082))

(assert (=> setNonEmpty!20506 (= (_2!15392 (h!31782 (zeroValue!3389 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4082 Bool)) false) setElem!20506 true) setRest!20506))))

(declare-fun setIsEmpty!20506 () Bool)

(assert (=> setIsEmpty!20506 setRes!20506))

(declare-fun b!2239344 () Bool)

(declare-fun tp!705147 () Bool)

(assert (=> b!2239344 (= e!1431586 tp!705147)))

(assert (= b!2239343 b!2239344))

(assert (= (and b!2239343 condSetEmpty!20506) setIsEmpty!20506))

(assert (= (and b!2239343 (not condSetEmpty!20506)) setNonEmpty!20506))

(assert (= setNonEmpty!20506 b!2239342))

(assert (= (and b!2239259 ((_ is Cons!26381) (zeroValue!3389 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))))) b!2239343))

(declare-fun m!2672161 () Bool)

(assert (=> b!2239343 m!2672161))

(declare-fun m!2672163 () Bool)

(assert (=> setNonEmpty!20506 m!2672163))

(declare-fun b!2239345 () Bool)

(declare-fun e!1431588 () Bool)

(declare-fun tp!705151 () Bool)

(assert (=> b!2239345 (= e!1431588 tp!705151)))

(declare-fun e!1431590 () Bool)

(assert (=> b!2239259 (= tp!705111 e!1431590)))

(declare-fun tp!705150 () Bool)

(declare-fun tp!705149 () Bool)

(declare-fun setRes!20507 () Bool)

(declare-fun b!2239346 () Bool)

(declare-fun e!1431589 () Bool)

(assert (=> b!2239346 (= e!1431590 (and tp!705150 (inv!35832 (_2!15391 (_1!15392 (h!31782 (minValue!3389 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))))))) e!1431589 tp_is_empty!10207 setRes!20507 tp!705149))))

(declare-fun condSetEmpty!20507 () Bool)

(assert (=> b!2239346 (= condSetEmpty!20507 (= (_2!15392 (h!31782 (minValue!3389 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))))) ((as const (Array Context!4082 Bool)) false)))))

(declare-fun tp!705153 () Bool)

(declare-fun setElem!20507 () Context!4082)

(declare-fun setNonEmpty!20507 () Bool)

(assert (=> setNonEmpty!20507 (= setRes!20507 (and tp!705153 (inv!35832 setElem!20507) e!1431588))))

(declare-fun setRest!20507 () (InoxSet Context!4082))

(assert (=> setNonEmpty!20507 (= (_2!15392 (h!31782 (minValue!3389 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4082 Bool)) false) setElem!20507 true) setRest!20507))))

(declare-fun setIsEmpty!20507 () Bool)

(assert (=> setIsEmpty!20507 setRes!20507))

(declare-fun b!2239347 () Bool)

(declare-fun tp!705152 () Bool)

(assert (=> b!2239347 (= e!1431589 tp!705152)))

(assert (= b!2239346 b!2239347))

(assert (= (and b!2239346 condSetEmpty!20507) setIsEmpty!20507))

(assert (= (and b!2239346 (not condSetEmpty!20507)) setNonEmpty!20507))

(assert (= setNonEmpty!20507 b!2239345))

(assert (= (and b!2239259 ((_ is Cons!26381) (minValue!3389 (v!30001 (underlying!6463 (v!30002 (underlying!6464 (cache!3422 thiss!28743)))))))) b!2239346))

(declare-fun m!2672165 () Bool)

(assert (=> b!2239346 m!2672165))

(declare-fun m!2672167 () Bool)

(assert (=> setNonEmpty!20507 m!2672167))

(declare-fun b!2239351 () Bool)

(declare-fun e!1431591 () Bool)

(declare-fun tp!705157 () Bool)

(declare-fun tp!705156 () Bool)

(assert (=> b!2239351 (= e!1431591 (and tp!705157 tp!705156))))

(declare-fun b!2239349 () Bool)

(declare-fun tp!705155 () Bool)

(declare-fun tp!705158 () Bool)

(assert (=> b!2239349 (= e!1431591 (and tp!705155 tp!705158))))

(declare-fun b!2239348 () Bool)

(assert (=> b!2239348 (= e!1431591 tp_is_empty!10207)))

(assert (=> b!2239258 (= tp!705100 e!1431591)))

(declare-fun b!2239350 () Bool)

(declare-fun tp!705154 () Bool)

(assert (=> b!2239350 (= e!1431591 tp!705154)))

(assert (= (and b!2239258 ((_ is ElementMatch!6493) (regOne!13499 r!4750))) b!2239348))

(assert (= (and b!2239258 ((_ is Concat!10831) (regOne!13499 r!4750))) b!2239349))

(assert (= (and b!2239258 ((_ is Star!6493) (regOne!13499 r!4750))) b!2239350))

(assert (= (and b!2239258 ((_ is Union!6493) (regOne!13499 r!4750))) b!2239351))

(declare-fun b!2239355 () Bool)

(declare-fun e!1431592 () Bool)

(declare-fun tp!705162 () Bool)

(declare-fun tp!705161 () Bool)

(assert (=> b!2239355 (= e!1431592 (and tp!705162 tp!705161))))

(declare-fun b!2239353 () Bool)

(declare-fun tp!705160 () Bool)

(declare-fun tp!705163 () Bool)

(assert (=> b!2239353 (= e!1431592 (and tp!705160 tp!705163))))

(declare-fun b!2239352 () Bool)

(assert (=> b!2239352 (= e!1431592 tp_is_empty!10207)))

(assert (=> b!2239258 (= tp!705101 e!1431592)))

(declare-fun b!2239354 () Bool)

(declare-fun tp!705159 () Bool)

(assert (=> b!2239354 (= e!1431592 tp!705159)))

(assert (= (and b!2239258 ((_ is ElementMatch!6493) (regTwo!13499 r!4750))) b!2239352))

(assert (= (and b!2239258 ((_ is Concat!10831) (regTwo!13499 r!4750))) b!2239353))

(assert (= (and b!2239258 ((_ is Star!6493) (regTwo!13499 r!4750))) b!2239354))

(assert (= (and b!2239258 ((_ is Union!6493) (regTwo!13499 r!4750))) b!2239355))

(declare-fun b!2239356 () Bool)

(declare-fun e!1431593 () Bool)

(declare-fun tp!705166 () Bool)

(assert (=> b!2239356 (= e!1431593 tp!705166)))

(declare-fun e!1431595 () Bool)

(assert (=> b!2239251 (= tp!705108 e!1431595)))

(declare-fun setRes!20508 () Bool)

(declare-fun b!2239357 () Bool)

(declare-fun tp!705164 () Bool)

(declare-fun tp!705165 () Bool)

(declare-fun e!1431594 () Bool)

(assert (=> b!2239357 (= e!1431595 (and tp!705165 (inv!35832 (_2!15391 (_1!15392 (h!31782 mapDefault!14690)))) e!1431594 tp_is_empty!10207 setRes!20508 tp!705164))))

(declare-fun condSetEmpty!20508 () Bool)

(assert (=> b!2239357 (= condSetEmpty!20508 (= (_2!15392 (h!31782 mapDefault!14690)) ((as const (Array Context!4082 Bool)) false)))))

(declare-fun tp!705168 () Bool)

(declare-fun setNonEmpty!20508 () Bool)

(declare-fun setElem!20508 () Context!4082)

(assert (=> setNonEmpty!20508 (= setRes!20508 (and tp!705168 (inv!35832 setElem!20508) e!1431593))))

(declare-fun setRest!20508 () (InoxSet Context!4082))

(assert (=> setNonEmpty!20508 (= (_2!15392 (h!31782 mapDefault!14690)) ((_ map or) (store ((as const (Array Context!4082 Bool)) false) setElem!20508 true) setRest!20508))))

(declare-fun setIsEmpty!20508 () Bool)

(assert (=> setIsEmpty!20508 setRes!20508))

(declare-fun b!2239358 () Bool)

(declare-fun tp!705167 () Bool)

(assert (=> b!2239358 (= e!1431594 tp!705167)))

(assert (= b!2239357 b!2239358))

(assert (= (and b!2239357 condSetEmpty!20508) setIsEmpty!20508))

(assert (= (and b!2239357 (not condSetEmpty!20508)) setNonEmpty!20508))

(assert (= setNonEmpty!20508 b!2239356))

(assert (= (and b!2239251 ((_ is Cons!26381) mapDefault!14690)) b!2239357))

(declare-fun m!2672169 () Bool)

(assert (=> b!2239357 m!2672169))

(declare-fun m!2672171 () Bool)

(assert (=> setNonEmpty!20508 m!2672171))

(declare-fun setIsEmpty!20513 () Bool)

(declare-fun setRes!20513 () Bool)

(assert (=> setIsEmpty!20513 setRes!20513))

(declare-fun b!2239373 () Bool)

(declare-fun e!1431609 () Bool)

(declare-fun tp!705191 () Bool)

(assert (=> b!2239373 (= e!1431609 tp!705191)))

(declare-fun b!2239374 () Bool)

(declare-fun e!1431611 () Bool)

(declare-fun tp!705192 () Bool)

(assert (=> b!2239374 (= e!1431611 tp!705192)))

(declare-fun mapNonEmpty!14693 () Bool)

(declare-fun mapRes!14693 () Bool)

(declare-fun tp!705201 () Bool)

(declare-fun e!1431613 () Bool)

(assert (=> mapNonEmpty!14693 (= mapRes!14693 (and tp!705201 e!1431613))))

(declare-fun mapValue!14693 () List!26475)

(declare-fun mapRest!14693 () (Array (_ BitVec 32) List!26475))

(declare-fun mapKey!14693 () (_ BitVec 32))

(assert (=> mapNonEmpty!14693 (= mapRest!14690 (store mapRest!14693 mapKey!14693 mapValue!14693))))

(declare-fun e!1431610 () Bool)

(declare-fun tp!705199 () Bool)

(declare-fun setRes!20514 () Bool)

(declare-fun tp!705196 () Bool)

(declare-fun b!2239375 () Bool)

(assert (=> b!2239375 (= e!1431613 (and tp!705199 (inv!35832 (_2!15391 (_1!15392 (h!31782 mapValue!14693)))) e!1431610 tp_is_empty!10207 setRes!20514 tp!705196))))

(declare-fun condSetEmpty!20514 () Bool)

(assert (=> b!2239375 (= condSetEmpty!20514 (= (_2!15392 (h!31782 mapValue!14693)) ((as const (Array Context!4082 Bool)) false)))))

(declare-fun setElem!20514 () Context!4082)

(declare-fun setNonEmpty!20513 () Bool)

(declare-fun tp!705194 () Bool)

(assert (=> setNonEmpty!20513 (= setRes!20514 (and tp!705194 (inv!35832 setElem!20514) e!1431611))))

(declare-fun setRest!20513 () (InoxSet Context!4082))

(assert (=> setNonEmpty!20513 (= (_2!15392 (h!31782 mapValue!14693)) ((_ map or) (store ((as const (Array Context!4082 Bool)) false) setElem!20514 true) setRest!20513))))

(declare-fun condMapEmpty!14693 () Bool)

(declare-fun mapDefault!14693 () List!26475)

(assert (=> mapNonEmpty!14690 (= condMapEmpty!14693 (= mapRest!14690 ((as const (Array (_ BitVec 32) List!26475)) mapDefault!14693)))))

(declare-fun e!1431612 () Bool)

(assert (=> mapNonEmpty!14690 (= tp!705106 (and e!1431612 mapRes!14693))))

(declare-fun b!2239376 () Bool)

(declare-fun e!1431608 () Bool)

(declare-fun tp!705198 () Bool)

(assert (=> b!2239376 (= e!1431608 tp!705198)))

(declare-fun setNonEmpty!20514 () Bool)

(declare-fun tp!705195 () Bool)

(declare-fun setElem!20513 () Context!4082)

(assert (=> setNonEmpty!20514 (= setRes!20513 (and tp!705195 (inv!35832 setElem!20513) e!1431609))))

(declare-fun setRest!20514 () (InoxSet Context!4082))

(assert (=> setNonEmpty!20514 (= (_2!15392 (h!31782 mapDefault!14693)) ((_ map or) (store ((as const (Array Context!4082 Bool)) false) setElem!20513 true) setRest!20514))))

(declare-fun setIsEmpty!20514 () Bool)

(assert (=> setIsEmpty!20514 setRes!20514))

(declare-fun b!2239377 () Bool)

(declare-fun tp!705200 () Bool)

(declare-fun tp!705193 () Bool)

(assert (=> b!2239377 (= e!1431612 (and tp!705193 (inv!35832 (_2!15391 (_1!15392 (h!31782 mapDefault!14693)))) e!1431608 tp_is_empty!10207 setRes!20513 tp!705200))))

(declare-fun condSetEmpty!20513 () Bool)

(assert (=> b!2239377 (= condSetEmpty!20513 (= (_2!15392 (h!31782 mapDefault!14693)) ((as const (Array Context!4082 Bool)) false)))))

(declare-fun mapIsEmpty!14693 () Bool)

(assert (=> mapIsEmpty!14693 mapRes!14693))

(declare-fun b!2239378 () Bool)

(declare-fun tp!705197 () Bool)

(assert (=> b!2239378 (= e!1431610 tp!705197)))

(assert (= (and mapNonEmpty!14690 condMapEmpty!14693) mapIsEmpty!14693))

(assert (= (and mapNonEmpty!14690 (not condMapEmpty!14693)) mapNonEmpty!14693))

(assert (= b!2239375 b!2239378))

(assert (= (and b!2239375 condSetEmpty!20514) setIsEmpty!20514))

(assert (= (and b!2239375 (not condSetEmpty!20514)) setNonEmpty!20513))

(assert (= setNonEmpty!20513 b!2239374))

(assert (= (and mapNonEmpty!14693 ((_ is Cons!26381) mapValue!14693)) b!2239375))

(assert (= b!2239377 b!2239376))

(assert (= (and b!2239377 condSetEmpty!20513) setIsEmpty!20513))

(assert (= (and b!2239377 (not condSetEmpty!20513)) setNonEmpty!20514))

(assert (= setNonEmpty!20514 b!2239373))

(assert (= (and mapNonEmpty!14690 ((_ is Cons!26381) mapDefault!14693)) b!2239377))

(declare-fun m!2672173 () Bool)

(assert (=> b!2239377 m!2672173))

(declare-fun m!2672175 () Bool)

(assert (=> setNonEmpty!20513 m!2672175))

(declare-fun m!2672177 () Bool)

(assert (=> setNonEmpty!20514 m!2672177))

(declare-fun m!2672179 () Bool)

(assert (=> mapNonEmpty!14693 m!2672179))

(declare-fun m!2672181 () Bool)

(assert (=> b!2239375 m!2672181))

(declare-fun b!2239379 () Bool)

(declare-fun e!1431614 () Bool)

(declare-fun tp!705204 () Bool)

(assert (=> b!2239379 (= e!1431614 tp!705204)))

(declare-fun e!1431616 () Bool)

(assert (=> mapNonEmpty!14690 (= tp!705105 e!1431616)))

(declare-fun e!1431615 () Bool)

(declare-fun tp!705202 () Bool)

(declare-fun b!2239380 () Bool)

(declare-fun setRes!20515 () Bool)

(declare-fun tp!705203 () Bool)

(assert (=> b!2239380 (= e!1431616 (and tp!705203 (inv!35832 (_2!15391 (_1!15392 (h!31782 mapValue!14690)))) e!1431615 tp_is_empty!10207 setRes!20515 tp!705202))))

(declare-fun condSetEmpty!20515 () Bool)

(assert (=> b!2239380 (= condSetEmpty!20515 (= (_2!15392 (h!31782 mapValue!14690)) ((as const (Array Context!4082 Bool)) false)))))

(declare-fun tp!705206 () Bool)

(declare-fun setElem!20515 () Context!4082)

(declare-fun setNonEmpty!20515 () Bool)

(assert (=> setNonEmpty!20515 (= setRes!20515 (and tp!705206 (inv!35832 setElem!20515) e!1431614))))

(declare-fun setRest!20515 () (InoxSet Context!4082))

(assert (=> setNonEmpty!20515 (= (_2!15392 (h!31782 mapValue!14690)) ((_ map or) (store ((as const (Array Context!4082 Bool)) false) setElem!20515 true) setRest!20515))))

(declare-fun setIsEmpty!20515 () Bool)

(assert (=> setIsEmpty!20515 setRes!20515))

(declare-fun b!2239381 () Bool)

(declare-fun tp!705205 () Bool)

(assert (=> b!2239381 (= e!1431615 tp!705205)))

(assert (= b!2239380 b!2239381))

(assert (= (and b!2239380 condSetEmpty!20515) setIsEmpty!20515))

(assert (= (and b!2239380 (not condSetEmpty!20515)) setNonEmpty!20515))

(assert (= setNonEmpty!20515 b!2239379))

(assert (= (and mapNonEmpty!14690 ((_ is Cons!26381) mapValue!14690)) b!2239380))

(declare-fun m!2672183 () Bool)

(assert (=> b!2239380 m!2672183))

(declare-fun m!2672185 () Bool)

(assert (=> setNonEmpty!20515 m!2672185))

(declare-fun b!2239385 () Bool)

(declare-fun e!1431617 () Bool)

(declare-fun tp!705210 () Bool)

(declare-fun tp!705209 () Bool)

(assert (=> b!2239385 (= e!1431617 (and tp!705210 tp!705209))))

(declare-fun b!2239383 () Bool)

(declare-fun tp!705208 () Bool)

(declare-fun tp!705211 () Bool)

(assert (=> b!2239383 (= e!1431617 (and tp!705208 tp!705211))))

(declare-fun b!2239382 () Bool)

(assert (=> b!2239382 (= e!1431617 tp_is_empty!10207)))

(assert (=> b!2239262 (= tp!705102 e!1431617)))

(declare-fun b!2239384 () Bool)

(declare-fun tp!705207 () Bool)

(assert (=> b!2239384 (= e!1431617 tp!705207)))

(assert (= (and b!2239262 ((_ is ElementMatch!6493) (regOne!13498 r!4750))) b!2239382))

(assert (= (and b!2239262 ((_ is Concat!10831) (regOne!13498 r!4750))) b!2239383))

(assert (= (and b!2239262 ((_ is Star!6493) (regOne!13498 r!4750))) b!2239384))

(assert (= (and b!2239262 ((_ is Union!6493) (regOne!13498 r!4750))) b!2239385))

(declare-fun b!2239389 () Bool)

(declare-fun e!1431618 () Bool)

(declare-fun tp!705215 () Bool)

(declare-fun tp!705214 () Bool)

(assert (=> b!2239389 (= e!1431618 (and tp!705215 tp!705214))))

(declare-fun b!2239387 () Bool)

(declare-fun tp!705213 () Bool)

(declare-fun tp!705216 () Bool)

(assert (=> b!2239387 (= e!1431618 (and tp!705213 tp!705216))))

(declare-fun b!2239386 () Bool)

(assert (=> b!2239386 (= e!1431618 tp_is_empty!10207)))

(assert (=> b!2239262 (= tp!705104 e!1431618)))

(declare-fun b!2239388 () Bool)

(declare-fun tp!705212 () Bool)

(assert (=> b!2239388 (= e!1431618 tp!705212)))

(assert (= (and b!2239262 ((_ is ElementMatch!6493) (regTwo!13498 r!4750))) b!2239386))

(assert (= (and b!2239262 ((_ is Concat!10831) (regTwo!13498 r!4750))) b!2239387))

(assert (= (and b!2239262 ((_ is Star!6493) (regTwo!13498 r!4750))) b!2239388))

(assert (= (and b!2239262 ((_ is Union!6493) (regTwo!13498 r!4750))) b!2239389))

(check-sat (not b!2239377) (not bm!135117) (not b!2239326) (not b!2239356) b_and!174997 (not b!2239300) (not b!2239327) (not bm!135114) (not d!665666) (not bm!135118) (not b!2239275) (not b!2239358) b_and!174999 (not d!665664) (not mapNonEmpty!14693) (not b!2239357) (not b!2239379) (not b_next!65691) (not b!2239271) (not b!2239345) (not b!2239343) (not b!2239349) (not setNonEmpty!20514) (not b!2239333) (not d!665662) (not b!2239376) (not b!2239388) tp_is_empty!10207 (not b!2239272) (not b!2239353) (not setNonEmpty!20507) (not b_next!65689) (not b!2239314) (not b!2239350) (not b!2239313) (not b!2239306) (not b!2239351) (not b!2239342) (not b!2239344) (not setNonEmpty!20508) (not setNonEmpty!20506) (not bm!135113) (not b!2239385) (not b!2239347) (not b!2239303) (not bm!135115) (not b!2239355) (not b!2239375) (not b!2239299) (not d!665658) (not b!2239328) (not setNonEmpty!20515) (not b!2239354) (not b!2239380) (not bm!135116) (not b!2239389) (not b!2239378) (not b!2239387) (not b!2239381) (not b!2239383) (not b!2239302) (not b!2239384) (not b!2239373) (not setNonEmpty!20513) (not b!2239346) (not b!2239374))
(check-sat b_and!174999 b_and!174997 (not b_next!65689) (not b_next!65691))

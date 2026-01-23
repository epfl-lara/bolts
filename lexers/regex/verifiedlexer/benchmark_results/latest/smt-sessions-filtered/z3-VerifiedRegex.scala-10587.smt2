; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544368 () Bool)

(assert start!544368)

(declare-fun b!5142327 () Bool)

(declare-fun e!3206810 () Bool)

(declare-datatypes ((C!29196 0))(
  ( (C!29197 (val!24250 Int)) )
))
(declare-datatypes ((Regex!14465 0))(
  ( (ElementMatch!14465 (c!885307 C!29196)) (Concat!23310 (regOne!29442 Regex!14465) (regTwo!29442 Regex!14465)) (EmptyExpr!14465) (Star!14465 (reg!14794 Regex!14465)) (EmptyLang!14465) (Union!14465 (regOne!29443 Regex!14465) (regTwo!29443 Regex!14465)) )
))
(declare-fun expr!117 () Regex!14465)

(declare-fun validRegex!6320 (Regex!14465) Bool)

(assert (=> b!5142327 (= e!3206810 (not (validRegex!6320 (regOne!29443 expr!117))))))

(declare-fun b!5142328 () Bool)

(declare-fun e!3206808 () Bool)

(declare-fun tp_is_empty!38079 () Bool)

(assert (=> b!5142328 (= e!3206808 tp_is_empty!38079)))

(declare-fun b!5142329 () Bool)

(declare-fun tp!1435617 () Bool)

(declare-fun tp!1435615 () Bool)

(assert (=> b!5142329 (= e!3206808 (and tp!1435617 tp!1435615))))

(declare-fun b!5142330 () Bool)

(declare-fun res!2189547 () Bool)

(assert (=> b!5142330 (=> (not res!2189547) (not e!3206810))))

(declare-fun e!3206809 () Bool)

(assert (=> b!5142330 (= res!2189547 e!3206809)))

(declare-fun res!2189550 () Bool)

(assert (=> b!5142330 (=> res!2189550 e!3206809)))

(declare-fun lostCause!1482 (Regex!14465) Bool)

(assert (=> b!5142330 (= res!2189550 (lostCause!1482 expr!117))))

(declare-fun res!2189548 () Bool)

(assert (=> start!544368 (=> (not res!2189548) (not e!3206810))))

(assert (=> start!544368 (= res!2189548 (validRegex!6320 expr!117))))

(assert (=> start!544368 e!3206810))

(assert (=> start!544368 e!3206808))

(declare-datatypes ((List!59843 0))(
  ( (Nil!59719) (Cons!59719 (h!66167 Regex!14465) (t!372878 List!59843)) )
))
(declare-datatypes ((Context!7698 0))(
  ( (Context!7699 (exprs!4349 List!59843)) )
))
(declare-fun ctx!100 () Context!7698)

(declare-fun e!3206811 () Bool)

(declare-fun inv!79343 (Context!7698) Bool)

(assert (=> start!544368 (and (inv!79343 ctx!100) e!3206811)))

(assert (=> start!544368 tp_is_empty!38079))

(declare-fun b!5142331 () Bool)

(declare-fun res!2189549 () Bool)

(assert (=> b!5142331 (=> (not res!2189549) (not e!3206810))))

(declare-fun a!1296 () C!29196)

(get-info :version)

(assert (=> b!5142331 (= res!2189549 (and (or (not ((_ is ElementMatch!14465) expr!117)) (not (= (c!885307 expr!117) a!1296))) ((_ is Union!14465) expr!117)))))

(declare-fun b!5142332 () Bool)

(declare-fun tp!1435614 () Bool)

(declare-fun tp!1435616 () Bool)

(assert (=> b!5142332 (= e!3206808 (and tp!1435614 tp!1435616))))

(declare-fun b!5142333 () Bool)

(declare-fun lostCause!1483 (Context!7698) Bool)

(assert (=> b!5142333 (= e!3206809 (lostCause!1483 ctx!100))))

(declare-fun b!5142334 () Bool)

(declare-fun tp!1435619 () Bool)

(assert (=> b!5142334 (= e!3206808 tp!1435619)))

(declare-fun b!5142335 () Bool)

(declare-fun tp!1435618 () Bool)

(assert (=> b!5142335 (= e!3206811 tp!1435618)))

(assert (= (and start!544368 res!2189548) b!5142330))

(assert (= (and b!5142330 (not res!2189550)) b!5142333))

(assert (= (and b!5142330 res!2189547) b!5142331))

(assert (= (and b!5142331 res!2189549) b!5142327))

(assert (= (and start!544368 ((_ is ElementMatch!14465) expr!117)) b!5142328))

(assert (= (and start!544368 ((_ is Concat!23310) expr!117)) b!5142329))

(assert (= (and start!544368 ((_ is Star!14465) expr!117)) b!5142334))

(assert (= (and start!544368 ((_ is Union!14465) expr!117)) b!5142332))

(assert (= start!544368 b!5142335))

(declare-fun m!6204930 () Bool)

(assert (=> b!5142327 m!6204930))

(declare-fun m!6204932 () Bool)

(assert (=> b!5142330 m!6204932))

(declare-fun m!6204934 () Bool)

(assert (=> start!544368 m!6204934))

(declare-fun m!6204936 () Bool)

(assert (=> start!544368 m!6204936))

(declare-fun m!6204938 () Bool)

(assert (=> b!5142333 m!6204938))

(check-sat (not b!5142332) (not b!5142330) (not start!544368) (not b!5142333) (not b!5142329) tp_is_empty!38079 (not b!5142335) (not b!5142327) (not b!5142334))
(check-sat)
(get-model)

(declare-fun b!5142354 () Bool)

(declare-fun e!3206826 () Bool)

(declare-fun e!3206827 () Bool)

(assert (=> b!5142354 (= e!3206826 e!3206827)))

(declare-fun res!2189565 () Bool)

(declare-fun nullable!4822 (Regex!14465) Bool)

(assert (=> b!5142354 (= res!2189565 (not (nullable!4822 (reg!14794 (regOne!29443 expr!117)))))))

(assert (=> b!5142354 (=> (not res!2189565) (not e!3206827))))

(declare-fun b!5142355 () Bool)

(declare-fun res!2189563 () Bool)

(declare-fun e!3206830 () Bool)

(assert (=> b!5142355 (=> res!2189563 e!3206830)))

(assert (=> b!5142355 (= res!2189563 (not ((_ is Concat!23310) (regOne!29443 expr!117))))))

(declare-fun e!3206828 () Bool)

(assert (=> b!5142355 (= e!3206828 e!3206830)))

(declare-fun b!5142356 () Bool)

(declare-fun call!358942 () Bool)

(assert (=> b!5142356 (= e!3206827 call!358942)))

(declare-fun b!5142357 () Bool)

(declare-fun res!2189561 () Bool)

(declare-fun e!3206832 () Bool)

(assert (=> b!5142357 (=> (not res!2189561) (not e!3206832))))

(declare-fun call!358943 () Bool)

(assert (=> b!5142357 (= res!2189561 call!358943)))

(assert (=> b!5142357 (= e!3206828 e!3206832)))

(declare-fun bm!358938 () Bool)

(declare-fun c!885312 () Bool)

(assert (=> bm!358938 (= call!358943 (validRegex!6320 (ite c!885312 (regOne!29443 (regOne!29443 expr!117)) (regOne!29442 (regOne!29443 expr!117)))))))

(declare-fun b!5142358 () Bool)

(declare-fun call!358944 () Bool)

(assert (=> b!5142358 (= e!3206832 call!358944)))

(declare-fun b!5142359 () Bool)

(declare-fun e!3206829 () Bool)

(assert (=> b!5142359 (= e!3206830 e!3206829)))

(declare-fun res!2189564 () Bool)

(assert (=> b!5142359 (=> (not res!2189564) (not e!3206829))))

(assert (=> b!5142359 (= res!2189564 call!358943)))

(declare-fun c!885313 () Bool)

(declare-fun bm!358937 () Bool)

(assert (=> bm!358937 (= call!358942 (validRegex!6320 (ite c!885313 (reg!14794 (regOne!29443 expr!117)) (ite c!885312 (regTwo!29443 (regOne!29443 expr!117)) (regTwo!29442 (regOne!29443 expr!117))))))))

(declare-fun d!1662922 () Bool)

(declare-fun res!2189562 () Bool)

(declare-fun e!3206831 () Bool)

(assert (=> d!1662922 (=> res!2189562 e!3206831)))

(assert (=> d!1662922 (= res!2189562 ((_ is ElementMatch!14465) (regOne!29443 expr!117)))))

(assert (=> d!1662922 (= (validRegex!6320 (regOne!29443 expr!117)) e!3206831)))

(declare-fun b!5142360 () Bool)

(assert (=> b!5142360 (= e!3206826 e!3206828)))

(assert (=> b!5142360 (= c!885312 ((_ is Union!14465) (regOne!29443 expr!117)))))

(declare-fun b!5142361 () Bool)

(assert (=> b!5142361 (= e!3206831 e!3206826)))

(assert (=> b!5142361 (= c!885313 ((_ is Star!14465) (regOne!29443 expr!117)))))

(declare-fun bm!358939 () Bool)

(assert (=> bm!358939 (= call!358944 call!358942)))

(declare-fun b!5142362 () Bool)

(assert (=> b!5142362 (= e!3206829 call!358944)))

(assert (= (and d!1662922 (not res!2189562)) b!5142361))

(assert (= (and b!5142361 c!885313) b!5142354))

(assert (= (and b!5142361 (not c!885313)) b!5142360))

(assert (= (and b!5142354 res!2189565) b!5142356))

(assert (= (and b!5142360 c!885312) b!5142357))

(assert (= (and b!5142360 (not c!885312)) b!5142355))

(assert (= (and b!5142357 res!2189561) b!5142358))

(assert (= (and b!5142355 (not res!2189563)) b!5142359))

(assert (= (and b!5142359 res!2189564) b!5142362))

(assert (= (or b!5142358 b!5142362) bm!358939))

(assert (= (or b!5142357 b!5142359) bm!358938))

(assert (= (or b!5142356 bm!358939) bm!358937))

(declare-fun m!6204940 () Bool)

(assert (=> b!5142354 m!6204940))

(declare-fun m!6204942 () Bool)

(assert (=> bm!358938 m!6204942))

(declare-fun m!6204944 () Bool)

(assert (=> bm!358937 m!6204944))

(assert (=> b!5142327 d!1662922))

(declare-fun b!5142363 () Bool)

(declare-fun e!3206833 () Bool)

(declare-fun e!3206834 () Bool)

(assert (=> b!5142363 (= e!3206833 e!3206834)))

(declare-fun res!2189570 () Bool)

(assert (=> b!5142363 (= res!2189570 (not (nullable!4822 (reg!14794 expr!117))))))

(assert (=> b!5142363 (=> (not res!2189570) (not e!3206834))))

(declare-fun b!5142364 () Bool)

(declare-fun res!2189568 () Bool)

(declare-fun e!3206837 () Bool)

(assert (=> b!5142364 (=> res!2189568 e!3206837)))

(assert (=> b!5142364 (= res!2189568 (not ((_ is Concat!23310) expr!117)))))

(declare-fun e!3206835 () Bool)

(assert (=> b!5142364 (= e!3206835 e!3206837)))

(declare-fun b!5142365 () Bool)

(declare-fun call!358945 () Bool)

(assert (=> b!5142365 (= e!3206834 call!358945)))

(declare-fun b!5142366 () Bool)

(declare-fun res!2189566 () Bool)

(declare-fun e!3206839 () Bool)

(assert (=> b!5142366 (=> (not res!2189566) (not e!3206839))))

(declare-fun call!358946 () Bool)

(assert (=> b!5142366 (= res!2189566 call!358946)))

(assert (=> b!5142366 (= e!3206835 e!3206839)))

(declare-fun bm!358941 () Bool)

(declare-fun c!885314 () Bool)

(assert (=> bm!358941 (= call!358946 (validRegex!6320 (ite c!885314 (regOne!29443 expr!117) (regOne!29442 expr!117))))))

(declare-fun b!5142367 () Bool)

(declare-fun call!358947 () Bool)

(assert (=> b!5142367 (= e!3206839 call!358947)))

(declare-fun b!5142368 () Bool)

(declare-fun e!3206836 () Bool)

(assert (=> b!5142368 (= e!3206837 e!3206836)))

(declare-fun res!2189569 () Bool)

(assert (=> b!5142368 (=> (not res!2189569) (not e!3206836))))

(assert (=> b!5142368 (= res!2189569 call!358946)))

(declare-fun c!885315 () Bool)

(declare-fun bm!358940 () Bool)

(assert (=> bm!358940 (= call!358945 (validRegex!6320 (ite c!885315 (reg!14794 expr!117) (ite c!885314 (regTwo!29443 expr!117) (regTwo!29442 expr!117)))))))

(declare-fun d!1662926 () Bool)

(declare-fun res!2189567 () Bool)

(declare-fun e!3206838 () Bool)

(assert (=> d!1662926 (=> res!2189567 e!3206838)))

(assert (=> d!1662926 (= res!2189567 ((_ is ElementMatch!14465) expr!117))))

(assert (=> d!1662926 (= (validRegex!6320 expr!117) e!3206838)))

(declare-fun b!5142369 () Bool)

(assert (=> b!5142369 (= e!3206833 e!3206835)))

(assert (=> b!5142369 (= c!885314 ((_ is Union!14465) expr!117))))

(declare-fun b!5142370 () Bool)

(assert (=> b!5142370 (= e!3206838 e!3206833)))

(assert (=> b!5142370 (= c!885315 ((_ is Star!14465) expr!117))))

(declare-fun bm!358942 () Bool)

(assert (=> bm!358942 (= call!358947 call!358945)))

(declare-fun b!5142371 () Bool)

(assert (=> b!5142371 (= e!3206836 call!358947)))

(assert (= (and d!1662926 (not res!2189567)) b!5142370))

(assert (= (and b!5142370 c!885315) b!5142363))

(assert (= (and b!5142370 (not c!885315)) b!5142369))

(assert (= (and b!5142363 res!2189570) b!5142365))

(assert (= (and b!5142369 c!885314) b!5142366))

(assert (= (and b!5142369 (not c!885314)) b!5142364))

(assert (= (and b!5142366 res!2189566) b!5142367))

(assert (= (and b!5142364 (not res!2189568)) b!5142368))

(assert (= (and b!5142368 res!2189569) b!5142371))

(assert (= (or b!5142367 b!5142371) bm!358942))

(assert (= (or b!5142366 b!5142368) bm!358941))

(assert (= (or b!5142365 bm!358942) bm!358940))

(declare-fun m!6204946 () Bool)

(assert (=> b!5142363 m!6204946))

(declare-fun m!6204948 () Bool)

(assert (=> bm!358941 m!6204948))

(declare-fun m!6204950 () Bool)

(assert (=> bm!358940 m!6204950))

(assert (=> start!544368 d!1662926))

(declare-fun d!1662928 () Bool)

(declare-fun lambda!256495 () Int)

(declare-fun forall!13923 (List!59843 Int) Bool)

(assert (=> d!1662928 (= (inv!79343 ctx!100) (forall!13923 (exprs!4349 ctx!100) lambda!256495))))

(declare-fun bs!1200858 () Bool)

(assert (= bs!1200858 d!1662928))

(declare-fun m!6204970 () Bool)

(assert (=> bs!1200858 m!6204970))

(assert (=> start!544368 d!1662928))

(declare-fun bs!1200859 () Bool)

(declare-fun d!1662938 () Bool)

(assert (= bs!1200859 (and d!1662938 d!1662928)))

(declare-fun lambda!256498 () Int)

(assert (=> bs!1200859 (not (= lambda!256498 lambda!256495))))

(declare-fun exists!1784 (List!59843 Int) Bool)

(assert (=> d!1662938 (= (lostCause!1483 ctx!100) (exists!1784 (exprs!4349 ctx!100) lambda!256498))))

(declare-fun bs!1200860 () Bool)

(assert (= bs!1200860 d!1662938))

(declare-fun m!6204972 () Bool)

(assert (=> bs!1200860 m!6204972))

(assert (=> b!5142333 d!1662938))

(declare-fun d!1662940 () Bool)

(declare-fun lostCauseFct!348 (Regex!14465) Bool)

(assert (=> d!1662940 (= (lostCause!1482 expr!117) (lostCauseFct!348 expr!117))))

(declare-fun bs!1200861 () Bool)

(assert (= bs!1200861 d!1662940))

(declare-fun m!6204974 () Bool)

(assert (=> bs!1200861 m!6204974))

(assert (=> b!5142330 d!1662940))

(declare-fun b!5142455 () Bool)

(declare-fun e!3206880 () Bool)

(declare-fun tp!1435674 () Bool)

(assert (=> b!5142455 (= e!3206880 tp!1435674)))

(declare-fun b!5142456 () Bool)

(declare-fun tp!1435672 () Bool)

(declare-fun tp!1435675 () Bool)

(assert (=> b!5142456 (= e!3206880 (and tp!1435672 tp!1435675))))

(declare-fun b!5142453 () Bool)

(assert (=> b!5142453 (= e!3206880 tp_is_empty!38079)))

(declare-fun b!5142454 () Bool)

(declare-fun tp!1435671 () Bool)

(declare-fun tp!1435673 () Bool)

(assert (=> b!5142454 (= e!3206880 (and tp!1435671 tp!1435673))))

(assert (=> b!5142332 (= tp!1435614 e!3206880)))

(assert (= (and b!5142332 ((_ is ElementMatch!14465) (regOne!29443 expr!117))) b!5142453))

(assert (= (and b!5142332 ((_ is Concat!23310) (regOne!29443 expr!117))) b!5142454))

(assert (= (and b!5142332 ((_ is Star!14465) (regOne!29443 expr!117))) b!5142455))

(assert (= (and b!5142332 ((_ is Union!14465) (regOne!29443 expr!117))) b!5142456))

(declare-fun b!5142459 () Bool)

(declare-fun e!3206881 () Bool)

(declare-fun tp!1435679 () Bool)

(assert (=> b!5142459 (= e!3206881 tp!1435679)))

(declare-fun b!5142460 () Bool)

(declare-fun tp!1435677 () Bool)

(declare-fun tp!1435680 () Bool)

(assert (=> b!5142460 (= e!3206881 (and tp!1435677 tp!1435680))))

(declare-fun b!5142457 () Bool)

(assert (=> b!5142457 (= e!3206881 tp_is_empty!38079)))

(declare-fun b!5142458 () Bool)

(declare-fun tp!1435676 () Bool)

(declare-fun tp!1435678 () Bool)

(assert (=> b!5142458 (= e!3206881 (and tp!1435676 tp!1435678))))

(assert (=> b!5142332 (= tp!1435616 e!3206881)))

(assert (= (and b!5142332 ((_ is ElementMatch!14465) (regTwo!29443 expr!117))) b!5142457))

(assert (= (and b!5142332 ((_ is Concat!23310) (regTwo!29443 expr!117))) b!5142458))

(assert (= (and b!5142332 ((_ is Star!14465) (regTwo!29443 expr!117))) b!5142459))

(assert (= (and b!5142332 ((_ is Union!14465) (regTwo!29443 expr!117))) b!5142460))

(declare-fun b!5142463 () Bool)

(declare-fun e!3206882 () Bool)

(declare-fun tp!1435684 () Bool)

(assert (=> b!5142463 (= e!3206882 tp!1435684)))

(declare-fun b!5142464 () Bool)

(declare-fun tp!1435682 () Bool)

(declare-fun tp!1435685 () Bool)

(assert (=> b!5142464 (= e!3206882 (and tp!1435682 tp!1435685))))

(declare-fun b!5142461 () Bool)

(assert (=> b!5142461 (= e!3206882 tp_is_empty!38079)))

(declare-fun b!5142462 () Bool)

(declare-fun tp!1435681 () Bool)

(declare-fun tp!1435683 () Bool)

(assert (=> b!5142462 (= e!3206882 (and tp!1435681 tp!1435683))))

(assert (=> b!5142334 (= tp!1435619 e!3206882)))

(assert (= (and b!5142334 ((_ is ElementMatch!14465) (reg!14794 expr!117))) b!5142461))

(assert (= (and b!5142334 ((_ is Concat!23310) (reg!14794 expr!117))) b!5142462))

(assert (= (and b!5142334 ((_ is Star!14465) (reg!14794 expr!117))) b!5142463))

(assert (= (and b!5142334 ((_ is Union!14465) (reg!14794 expr!117))) b!5142464))

(declare-fun b!5142467 () Bool)

(declare-fun e!3206883 () Bool)

(declare-fun tp!1435689 () Bool)

(assert (=> b!5142467 (= e!3206883 tp!1435689)))

(declare-fun b!5142468 () Bool)

(declare-fun tp!1435687 () Bool)

(declare-fun tp!1435690 () Bool)

(assert (=> b!5142468 (= e!3206883 (and tp!1435687 tp!1435690))))

(declare-fun b!5142465 () Bool)

(assert (=> b!5142465 (= e!3206883 tp_is_empty!38079)))

(declare-fun b!5142466 () Bool)

(declare-fun tp!1435686 () Bool)

(declare-fun tp!1435688 () Bool)

(assert (=> b!5142466 (= e!3206883 (and tp!1435686 tp!1435688))))

(assert (=> b!5142329 (= tp!1435617 e!3206883)))

(assert (= (and b!5142329 ((_ is ElementMatch!14465) (regOne!29442 expr!117))) b!5142465))

(assert (= (and b!5142329 ((_ is Concat!23310) (regOne!29442 expr!117))) b!5142466))

(assert (= (and b!5142329 ((_ is Star!14465) (regOne!29442 expr!117))) b!5142467))

(assert (= (and b!5142329 ((_ is Union!14465) (regOne!29442 expr!117))) b!5142468))

(declare-fun b!5142471 () Bool)

(declare-fun e!3206884 () Bool)

(declare-fun tp!1435694 () Bool)

(assert (=> b!5142471 (= e!3206884 tp!1435694)))

(declare-fun b!5142472 () Bool)

(declare-fun tp!1435692 () Bool)

(declare-fun tp!1435695 () Bool)

(assert (=> b!5142472 (= e!3206884 (and tp!1435692 tp!1435695))))

(declare-fun b!5142469 () Bool)

(assert (=> b!5142469 (= e!3206884 tp_is_empty!38079)))

(declare-fun b!5142470 () Bool)

(declare-fun tp!1435691 () Bool)

(declare-fun tp!1435693 () Bool)

(assert (=> b!5142470 (= e!3206884 (and tp!1435691 tp!1435693))))

(assert (=> b!5142329 (= tp!1435615 e!3206884)))

(assert (= (and b!5142329 ((_ is ElementMatch!14465) (regTwo!29442 expr!117))) b!5142469))

(assert (= (and b!5142329 ((_ is Concat!23310) (regTwo!29442 expr!117))) b!5142470))

(assert (= (and b!5142329 ((_ is Star!14465) (regTwo!29442 expr!117))) b!5142471))

(assert (= (and b!5142329 ((_ is Union!14465) (regTwo!29442 expr!117))) b!5142472))

(declare-fun b!5142477 () Bool)

(declare-fun e!3206887 () Bool)

(declare-fun tp!1435700 () Bool)

(declare-fun tp!1435701 () Bool)

(assert (=> b!5142477 (= e!3206887 (and tp!1435700 tp!1435701))))

(assert (=> b!5142335 (= tp!1435618 e!3206887)))

(assert (= (and b!5142335 ((_ is Cons!59719) (exprs!4349 ctx!100))) b!5142477))

(check-sat (not b!5142456) (not b!5142460) (not b!5142363) (not b!5142477) (not d!1662928) (not bm!358940) (not b!5142464) (not b!5142472) (not b!5142455) (not bm!358937) (not b!5142462) (not d!1662938) (not b!5142354) (not d!1662940) (not b!5142459) (not bm!358941) (not b!5142463) (not b!5142467) (not b!5142454) (not b!5142466) tp_is_empty!38079 (not b!5142470) (not b!5142468) (not b!5142471) (not b!5142458) (not bm!358938))
(check-sat)

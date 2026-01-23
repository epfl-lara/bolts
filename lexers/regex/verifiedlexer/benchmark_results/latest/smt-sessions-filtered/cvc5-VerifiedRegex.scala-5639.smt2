; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!281980 () Bool)

(assert start!281980)

(declare-fun b!2892299 () Bool)

(declare-fun e!1827823 () Bool)

(declare-fun tp!928662 () Bool)

(declare-fun tp!928660 () Bool)

(assert (=> b!2892299 (= e!1827823 (and tp!928662 tp!928660))))

(declare-fun b!2892300 () Bool)

(declare-fun tp!928663 () Bool)

(declare-fun tp!928661 () Bool)

(assert (=> b!2892300 (= e!1827823 (and tp!928663 tp!928661))))

(declare-fun b!2892301 () Bool)

(declare-fun res!1196727 () Bool)

(declare-fun e!1827822 () Bool)

(assert (=> b!2892301 (=> (not res!1196727) (not e!1827822))))

(declare-datatypes ((C!17846 0))(
  ( (C!17847 (val!10957 Int)) )
))
(declare-datatypes ((Regex!8832 0))(
  ( (ElementMatch!8832 (c!470321 C!17846)) (Concat!14153 (regOne!18176 Regex!8832) (regTwo!18176 Regex!8832)) (EmptyExpr!8832) (Star!8832 (reg!9161 Regex!8832)) (EmptyLang!8832) (Union!8832 (regOne!18177 Regex!8832) (regTwo!18177 Regex!8832)) )
))
(declare-fun r!23079 () Regex!8832)

(assert (=> b!2892301 (= res!1196727 (and (not (is-EmptyExpr!8832 r!23079)) (not (is-EmptyLang!8832 r!23079)) (not (is-ElementMatch!8832 r!23079)) (not (is-Star!8832 r!23079)) (is-Union!8832 r!23079)))))

(declare-fun b!2892302 () Bool)

(declare-fun res!1196726 () Bool)

(assert (=> b!2892302 (=> (not res!1196726) (not e!1827822))))

(declare-datatypes ((List!34633 0))(
  ( (Nil!34509) (Cons!34509 (h!39929 C!17846) (t!233676 List!34633)) )
))
(declare-datatypes ((Option!6505 0))(
  ( (None!6504) (Some!6504 (v!34630 List!34633)) )
))
(declare-fun isDefined!5069 (Option!6505) Bool)

(declare-fun getLanguageWitness!539 (Regex!8832) Option!6505)

(assert (=> b!2892302 (= res!1196726 (isDefined!5069 (getLanguageWitness!539 r!23079)))))

(declare-fun b!2892303 () Bool)

(declare-fun validRegex!3605 (Regex!8832) Bool)

(assert (=> b!2892303 (= e!1827822 (not (validRegex!3605 (regTwo!18177 r!23079))))))

(declare-fun lt!1021145 () Option!6505)

(assert (=> b!2892303 (= lt!1021145 (getLanguageWitness!539 (regTwo!18177 r!23079)))))

(declare-fun b!2892304 () Bool)

(declare-fun res!1196725 () Bool)

(assert (=> b!2892304 (=> (not res!1196725) (not e!1827822))))

(assert (=> b!2892304 (= res!1196725 (not (is-Some!6504 (getLanguageWitness!539 (regOne!18177 r!23079)))))))

(declare-fun res!1196724 () Bool)

(assert (=> start!281980 (=> (not res!1196724) (not e!1827822))))

(assert (=> start!281980 (= res!1196724 (validRegex!3605 r!23079))))

(assert (=> start!281980 e!1827822))

(assert (=> start!281980 e!1827823))

(declare-fun b!2892305 () Bool)

(declare-fun tp_is_empty!15251 () Bool)

(assert (=> b!2892305 (= e!1827823 tp_is_empty!15251)))

(declare-fun b!2892306 () Bool)

(declare-fun tp!928664 () Bool)

(assert (=> b!2892306 (= e!1827823 tp!928664)))

(assert (= (and start!281980 res!1196724) b!2892302))

(assert (= (and b!2892302 res!1196726) b!2892301))

(assert (= (and b!2892301 res!1196727) b!2892304))

(assert (= (and b!2892304 res!1196725) b!2892303))

(assert (= (and start!281980 (is-ElementMatch!8832 r!23079)) b!2892305))

(assert (= (and start!281980 (is-Concat!14153 r!23079)) b!2892299))

(assert (= (and start!281980 (is-Star!8832 r!23079)) b!2892306))

(assert (= (and start!281980 (is-Union!8832 r!23079)) b!2892300))

(declare-fun m!3302907 () Bool)

(assert (=> b!2892302 m!3302907))

(assert (=> b!2892302 m!3302907))

(declare-fun m!3302909 () Bool)

(assert (=> b!2892302 m!3302909))

(declare-fun m!3302911 () Bool)

(assert (=> b!2892303 m!3302911))

(declare-fun m!3302913 () Bool)

(assert (=> b!2892303 m!3302913))

(declare-fun m!3302915 () Bool)

(assert (=> b!2892304 m!3302915))

(declare-fun m!3302917 () Bool)

(assert (=> start!281980 m!3302917))

(push 1)

(assert tp_is_empty!15251)

(assert (not b!2892299))

(assert (not start!281980))

(assert (not b!2892306))

(assert (not b!2892300))

(assert (not b!2892304))

(assert (not b!2892303))

(assert (not b!2892302))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!834536 () Bool)

(declare-fun isEmpty!18810 (Option!6505) Bool)

(assert (=> d!834536 (= (isDefined!5069 (getLanguageWitness!539 r!23079)) (not (isEmpty!18810 (getLanguageWitness!539 r!23079))))))

(declare-fun bs!523893 () Bool)

(assert (= bs!523893 d!834536))

(assert (=> bs!523893 m!3302907))

(declare-fun m!3302931 () Bool)

(assert (=> bs!523893 m!3302931))

(assert (=> b!2892302 d!834536))

(declare-fun b!2892390 () Bool)

(declare-fun e!1827869 () Option!6505)

(declare-fun e!1827867 () Option!6505)

(assert (=> b!2892390 (= e!1827869 e!1827867)))

(declare-fun lt!1021156 () Option!6505)

(declare-fun call!187905 () Option!6505)

(assert (=> b!2892390 (= lt!1021156 call!187905)))

(declare-fun c!470349 () Bool)

(assert (=> b!2892390 (= c!470349 (is-Some!6504 lt!1021156))))

(declare-fun b!2892391 () Bool)

(declare-fun e!1827872 () Option!6505)

(assert (=> b!2892391 (= e!1827872 None!6504)))

(declare-fun b!2892392 () Bool)

(declare-fun e!1827873 () Option!6505)

(declare-fun e!1827870 () Option!6505)

(assert (=> b!2892392 (= e!1827873 e!1827870)))

(declare-fun c!470348 () Bool)

(assert (=> b!2892392 (= c!470348 (is-Star!8832 r!23079))))

(declare-fun b!2892393 () Bool)

(declare-fun lt!1021155 () Option!6505)

(declare-fun ++!8230 (List!34633 List!34633) List!34633)

(assert (=> b!2892393 (= e!1827872 (Some!6504 (++!8230 (v!34630 lt!1021156) (v!34630 lt!1021155))))))

(declare-fun b!2892394 () Bool)

(declare-fun e!1827871 () Option!6505)

(assert (=> b!2892394 (= e!1827871 (Some!6504 Nil!34509))))

(declare-fun b!2892395 () Bool)

(declare-fun e!1827874 () Option!6505)

(declare-fun lt!1021157 () Option!6505)

(assert (=> b!2892395 (= e!1827874 lt!1021157)))

(declare-fun b!2892396 () Bool)

(declare-fun c!470352 () Bool)

(assert (=> b!2892396 (= c!470352 (is-Some!6504 lt!1021155))))

(declare-fun call!187904 () Option!6505)

(assert (=> b!2892396 (= lt!1021155 call!187904)))

(assert (=> b!2892396 (= e!1827867 e!1827872)))

(declare-fun b!2892397 () Bool)

(declare-fun e!1827868 () Option!6505)

(assert (=> b!2892397 (= e!1827871 e!1827868)))

(declare-fun c!470351 () Bool)

(assert (=> b!2892397 (= c!470351 (is-EmptyLang!8832 r!23079))))

(declare-fun b!2892398 () Bool)

(assert (=> b!2892398 (= e!1827870 (Some!6504 Nil!34509))))

(declare-fun b!2892399 () Bool)

(declare-fun c!470345 () Bool)

(assert (=> b!2892399 (= c!470345 (is-ElementMatch!8832 r!23079))))

(assert (=> b!2892399 (= e!1827868 e!1827873)))

(declare-fun bm!187899 () Bool)

(declare-fun c!470347 () Bool)

(assert (=> bm!187899 (= call!187905 (getLanguageWitness!539 (ite c!470347 (regTwo!18177 r!23079) (regOne!18176 r!23079))))))

(declare-fun b!2892400 () Bool)

(assert (=> b!2892400 (= e!1827869 e!1827874)))

(assert (=> b!2892400 (= lt!1021157 call!187904)))

(declare-fun c!470346 () Bool)

(assert (=> b!2892400 (= c!470346 (is-Some!6504 lt!1021157))))

(declare-fun b!2892402 () Bool)

(assert (=> b!2892402 (= e!1827867 None!6504)))

(declare-fun b!2892403 () Bool)

(assert (=> b!2892403 (= e!1827868 None!6504)))

(declare-fun b!2892404 () Bool)

(assert (=> b!2892404 (= e!1827874 call!187905)))

(declare-fun b!2892401 () Bool)

(assert (=> b!2892401 (= c!470347 (is-Union!8832 r!23079))))

(assert (=> b!2892401 (= e!1827870 e!1827869)))

(declare-fun d!834540 () Bool)

(declare-fun c!470350 () Bool)

(assert (=> d!834540 (= c!470350 (is-EmptyExpr!8832 r!23079))))

(assert (=> d!834540 (= (getLanguageWitness!539 r!23079) e!1827871)))

(declare-fun b!2892405 () Bool)

(assert (=> b!2892405 (= e!1827873 (Some!6504 (Cons!34509 (c!470321 r!23079) Nil!34509)))))

(declare-fun bm!187900 () Bool)

(assert (=> bm!187900 (= call!187904 (getLanguageWitness!539 (ite c!470347 (regOne!18177 r!23079) (regTwo!18176 r!23079))))))

(assert (= (and d!834540 c!470350) b!2892394))

(assert (= (and d!834540 (not c!470350)) b!2892397))

(assert (= (and b!2892397 c!470351) b!2892403))

(assert (= (and b!2892397 (not c!470351)) b!2892399))

(assert (= (and b!2892399 c!470345) b!2892405))

(assert (= (and b!2892399 (not c!470345)) b!2892392))

(assert (= (and b!2892392 c!470348) b!2892398))

(assert (= (and b!2892392 (not c!470348)) b!2892401))

(assert (= (and b!2892401 c!470347) b!2892400))

(assert (= (and b!2892401 (not c!470347)) b!2892390))

(assert (= (and b!2892400 c!470346) b!2892395))

(assert (= (and b!2892400 (not c!470346)) b!2892404))

(assert (= (and b!2892390 c!470349) b!2892396))

(assert (= (and b!2892390 (not c!470349)) b!2892402))

(assert (= (and b!2892396 c!470352) b!2892393))

(assert (= (and b!2892396 (not c!470352)) b!2892391))

(assert (= (or b!2892404 b!2892390) bm!187899))

(assert (= (or b!2892400 b!2892396) bm!187900))

(declare-fun m!3302941 () Bool)

(assert (=> b!2892393 m!3302941))

(declare-fun m!3302943 () Bool)

(assert (=> bm!187899 m!3302943))

(declare-fun m!3302945 () Bool)

(assert (=> bm!187900 m!3302945))

(assert (=> b!2892302 d!834540))

(declare-fun bm!187911 () Bool)

(declare-fun call!187917 () Bool)

(declare-fun c!470374 () Bool)

(assert (=> bm!187911 (= call!187917 (validRegex!3605 (ite c!470374 (regOne!18177 r!23079) (regOne!18176 r!23079))))))

(declare-fun b!2892457 () Bool)

(declare-fun res!1196765 () Bool)

(declare-fun e!1827909 () Bool)

(assert (=> b!2892457 (=> (not res!1196765) (not e!1827909))))

(assert (=> b!2892457 (= res!1196765 call!187917)))

(declare-fun e!1827910 () Bool)

(assert (=> b!2892457 (= e!1827910 e!1827909)))

(declare-fun b!2892458 () Bool)

(declare-fun call!187916 () Bool)

(assert (=> b!2892458 (= e!1827909 call!187916)))

(declare-fun bm!187912 () Bool)

(declare-fun call!187918 () Bool)

(assert (=> bm!187912 (= call!187916 call!187918)))

(declare-fun c!470373 () Bool)

(declare-fun bm!187913 () Bool)

(assert (=> bm!187913 (= call!187918 (validRegex!3605 (ite c!470373 (reg!9161 r!23079) (ite c!470374 (regTwo!18177 r!23079) (regTwo!18176 r!23079)))))))

(declare-fun b!2892459 () Bool)

(declare-fun e!1827905 () Bool)

(assert (=> b!2892459 (= e!1827905 call!187916)))

(declare-fun b!2892460 () Bool)

(declare-fun e!1827906 () Bool)

(assert (=> b!2892460 (= e!1827906 call!187918)))

(declare-fun b!2892461 () Bool)

(declare-fun res!1196766 () Bool)

(declare-fun e!1827911 () Bool)

(assert (=> b!2892461 (=> res!1196766 e!1827911)))

(assert (=> b!2892461 (= res!1196766 (not (is-Concat!14153 r!23079)))))

(assert (=> b!2892461 (= e!1827910 e!1827911)))

(declare-fun b!2892462 () Bool)

(declare-fun e!1827907 () Bool)

(assert (=> b!2892462 (= e!1827907 e!1827906)))

(declare-fun res!1196767 () Bool)

(declare-fun nullable!2733 (Regex!8832) Bool)

(assert (=> b!2892462 (= res!1196767 (not (nullable!2733 (reg!9161 r!23079))))))

(assert (=> b!2892462 (=> (not res!1196767) (not e!1827906))))

(declare-fun b!2892456 () Bool)

(assert (=> b!2892456 (= e!1827911 e!1827905)))

(declare-fun res!1196769 () Bool)

(assert (=> b!2892456 (=> (not res!1196769) (not e!1827905))))

(assert (=> b!2892456 (= res!1196769 call!187917)))

(declare-fun d!834546 () Bool)

(declare-fun res!1196768 () Bool)

(declare-fun e!1827908 () Bool)

(assert (=> d!834546 (=> res!1196768 e!1827908)))

(assert (=> d!834546 (= res!1196768 (is-ElementMatch!8832 r!23079))))

(assert (=> d!834546 (= (validRegex!3605 r!23079) e!1827908)))

(declare-fun b!2892463 () Bool)

(assert (=> b!2892463 (= e!1827907 e!1827910)))

(assert (=> b!2892463 (= c!470374 (is-Union!8832 r!23079))))

(declare-fun b!2892464 () Bool)

(assert (=> b!2892464 (= e!1827908 e!1827907)))

(assert (=> b!2892464 (= c!470373 (is-Star!8832 r!23079))))

(assert (= (and d!834546 (not res!1196768)) b!2892464))

(assert (= (and b!2892464 c!470373) b!2892462))

(assert (= (and b!2892464 (not c!470373)) b!2892463))

(assert (= (and b!2892462 res!1196767) b!2892460))

(assert (= (and b!2892463 c!470374) b!2892457))

(assert (= (and b!2892463 (not c!470374)) b!2892461))

(assert (= (and b!2892457 res!1196765) b!2892458))

(assert (= (and b!2892461 (not res!1196766)) b!2892456))

(assert (= (and b!2892456 res!1196769) b!2892459))

(assert (= (or b!2892458 b!2892459) bm!187912))

(assert (= (or b!2892457 b!2892456) bm!187911))

(assert (= (or b!2892460 bm!187912) bm!187913))

(declare-fun m!3302947 () Bool)

(assert (=> bm!187911 m!3302947))

(declare-fun m!3302949 () Bool)

(assert (=> bm!187913 m!3302949))

(declare-fun m!3302951 () Bool)

(assert (=> b!2892462 m!3302951))

(assert (=> start!281980 d!834546))

(declare-fun bm!187914 () Bool)

(declare-fun call!187920 () Bool)

(declare-fun c!470376 () Bool)

(assert (=> bm!187914 (= call!187920 (validRegex!3605 (ite c!470376 (regOne!18177 (regTwo!18177 r!23079)) (regOne!18176 (regTwo!18177 r!23079)))))))

(declare-fun b!2892466 () Bool)

(declare-fun res!1196770 () Bool)

(declare-fun e!1827916 () Bool)

(assert (=> b!2892466 (=> (not res!1196770) (not e!1827916))))

(assert (=> b!2892466 (= res!1196770 call!187920)))

(declare-fun e!1827917 () Bool)

(assert (=> b!2892466 (= e!1827917 e!1827916)))

(declare-fun b!2892467 () Bool)

(declare-fun call!187919 () Bool)

(assert (=> b!2892467 (= e!1827916 call!187919)))

(declare-fun bm!187915 () Bool)

(declare-fun call!187921 () Bool)

(assert (=> bm!187915 (= call!187919 call!187921)))

(declare-fun bm!187916 () Bool)

(declare-fun c!470375 () Bool)

(assert (=> bm!187916 (= call!187921 (validRegex!3605 (ite c!470375 (reg!9161 (regTwo!18177 r!23079)) (ite c!470376 (regTwo!18177 (regTwo!18177 r!23079)) (regTwo!18176 (regTwo!18177 r!23079))))))))

(declare-fun b!2892468 () Bool)

(declare-fun e!1827912 () Bool)

(assert (=> b!2892468 (= e!1827912 call!187919)))

(declare-fun b!2892469 () Bool)

(declare-fun e!1827913 () Bool)

(assert (=> b!2892469 (= e!1827913 call!187921)))

(declare-fun b!2892470 () Bool)

(declare-fun res!1196771 () Bool)

(declare-fun e!1827918 () Bool)

(assert (=> b!2892470 (=> res!1196771 e!1827918)))

(assert (=> b!2892470 (= res!1196771 (not (is-Concat!14153 (regTwo!18177 r!23079))))))

(assert (=> b!2892470 (= e!1827917 e!1827918)))

(declare-fun b!2892471 () Bool)

(declare-fun e!1827914 () Bool)

(assert (=> b!2892471 (= e!1827914 e!1827913)))

(declare-fun res!1196772 () Bool)

(assert (=> b!2892471 (= res!1196772 (not (nullable!2733 (reg!9161 (regTwo!18177 r!23079)))))))

(assert (=> b!2892471 (=> (not res!1196772) (not e!1827913))))

(declare-fun b!2892465 () Bool)

(assert (=> b!2892465 (= e!1827918 e!1827912)))

(declare-fun res!1196774 () Bool)

(assert (=> b!2892465 (=> (not res!1196774) (not e!1827912))))

(assert (=> b!2892465 (= res!1196774 call!187920)))

(declare-fun d!834548 () Bool)

(declare-fun res!1196773 () Bool)

(declare-fun e!1827915 () Bool)

(assert (=> d!834548 (=> res!1196773 e!1827915)))

(assert (=> d!834548 (= res!1196773 (is-ElementMatch!8832 (regTwo!18177 r!23079)))))

(assert (=> d!834548 (= (validRegex!3605 (regTwo!18177 r!23079)) e!1827915)))

(declare-fun b!2892472 () Bool)

(assert (=> b!2892472 (= e!1827914 e!1827917)))

(assert (=> b!2892472 (= c!470376 (is-Union!8832 (regTwo!18177 r!23079)))))

(declare-fun b!2892473 () Bool)

(assert (=> b!2892473 (= e!1827915 e!1827914)))

(assert (=> b!2892473 (= c!470375 (is-Star!8832 (regTwo!18177 r!23079)))))

(assert (= (and d!834548 (not res!1196773)) b!2892473))

(assert (= (and b!2892473 c!470375) b!2892471))

(assert (= (and b!2892473 (not c!470375)) b!2892472))

(assert (= (and b!2892471 res!1196772) b!2892469))

(assert (= (and b!2892472 c!470376) b!2892466))

(assert (= (and b!2892472 (not c!470376)) b!2892470))

(assert (= (and b!2892466 res!1196770) b!2892467))

(assert (= (and b!2892470 (not res!1196771)) b!2892465))

(assert (= (and b!2892465 res!1196774) b!2892468))

(assert (= (or b!2892467 b!2892468) bm!187915))

(assert (= (or b!2892466 b!2892465) bm!187914))

(assert (= (or b!2892469 bm!187915) bm!187916))

(declare-fun m!3302953 () Bool)

(assert (=> bm!187914 m!3302953))

(declare-fun m!3302955 () Bool)

(assert (=> bm!187916 m!3302955))

(declare-fun m!3302957 () Bool)

(assert (=> b!2892471 m!3302957))

(assert (=> b!2892303 d!834548))

(declare-fun b!2892490 () Bool)

(declare-fun e!1827929 () Option!6505)

(declare-fun e!1827927 () Option!6505)

(assert (=> b!2892490 (= e!1827929 e!1827927)))

(declare-fun lt!1021168 () Option!6505)

(declare-fun call!187925 () Option!6505)

(assert (=> b!2892490 (= lt!1021168 call!187925)))

(declare-fun c!470389 () Bool)

(assert (=> b!2892490 (= c!470389 (is-Some!6504 lt!1021168))))

(declare-fun b!2892491 () Bool)

(declare-fun e!1827932 () Option!6505)

(assert (=> b!2892491 (= e!1827932 None!6504)))

(declare-fun b!2892492 () Bool)

(declare-fun e!1827933 () Option!6505)

(declare-fun e!1827930 () Option!6505)

(assert (=> b!2892492 (= e!1827933 e!1827930)))

(declare-fun c!470388 () Bool)

(assert (=> b!2892492 (= c!470388 (is-Star!8832 (regTwo!18177 r!23079)))))

(declare-fun b!2892493 () Bool)

(declare-fun lt!1021167 () Option!6505)

(assert (=> b!2892493 (= e!1827932 (Some!6504 (++!8230 (v!34630 lt!1021168) (v!34630 lt!1021167))))))

(declare-fun b!2892494 () Bool)

(declare-fun e!1827931 () Option!6505)

(assert (=> b!2892494 (= e!1827931 (Some!6504 Nil!34509))))

(declare-fun b!2892495 () Bool)

(declare-fun e!1827934 () Option!6505)

(declare-fun lt!1021169 () Option!6505)

(assert (=> b!2892495 (= e!1827934 lt!1021169)))

(declare-fun b!2892496 () Bool)

(declare-fun c!470392 () Bool)

(assert (=> b!2892496 (= c!470392 (is-Some!6504 lt!1021167))))

(declare-fun call!187924 () Option!6505)

(assert (=> b!2892496 (= lt!1021167 call!187924)))

(assert (=> b!2892496 (= e!1827927 e!1827932)))

(declare-fun b!2892497 () Bool)

(declare-fun e!1827928 () Option!6505)

(assert (=> b!2892497 (= e!1827931 e!1827928)))

(declare-fun c!470391 () Bool)

(assert (=> b!2892497 (= c!470391 (is-EmptyLang!8832 (regTwo!18177 r!23079)))))

(declare-fun b!2892498 () Bool)

(assert (=> b!2892498 (= e!1827930 (Some!6504 Nil!34509))))

(declare-fun b!2892499 () Bool)

(declare-fun c!470385 () Bool)

(assert (=> b!2892499 (= c!470385 (is-ElementMatch!8832 (regTwo!18177 r!23079)))))

(assert (=> b!2892499 (= e!1827928 e!1827933)))

(declare-fun bm!187919 () Bool)

(declare-fun c!470387 () Bool)

(assert (=> bm!187919 (= call!187925 (getLanguageWitness!539 (ite c!470387 (regTwo!18177 (regTwo!18177 r!23079)) (regOne!18176 (regTwo!18177 r!23079)))))))

(declare-fun b!2892500 () Bool)

(assert (=> b!2892500 (= e!1827929 e!1827934)))

(assert (=> b!2892500 (= lt!1021169 call!187924)))

(declare-fun c!470386 () Bool)

(assert (=> b!2892500 (= c!470386 (is-Some!6504 lt!1021169))))

(declare-fun b!2892502 () Bool)

(assert (=> b!2892502 (= e!1827927 None!6504)))

(declare-fun b!2892503 () Bool)

(assert (=> b!2892503 (= e!1827928 None!6504)))

(declare-fun b!2892504 () Bool)

(assert (=> b!2892504 (= e!1827934 call!187925)))

(declare-fun b!2892501 () Bool)

(assert (=> b!2892501 (= c!470387 (is-Union!8832 (regTwo!18177 r!23079)))))

(assert (=> b!2892501 (= e!1827930 e!1827929)))

(declare-fun d!834550 () Bool)

(declare-fun c!470390 () Bool)

(assert (=> d!834550 (= c!470390 (is-EmptyExpr!8832 (regTwo!18177 r!23079)))))

(assert (=> d!834550 (= (getLanguageWitness!539 (regTwo!18177 r!23079)) e!1827931)))

(declare-fun b!2892505 () Bool)

(assert (=> b!2892505 (= e!1827933 (Some!6504 (Cons!34509 (c!470321 (regTwo!18177 r!23079)) Nil!34509)))))

(declare-fun bm!187920 () Bool)

(assert (=> bm!187920 (= call!187924 (getLanguageWitness!539 (ite c!470387 (regOne!18177 (regTwo!18177 r!23079)) (regTwo!18176 (regTwo!18177 r!23079)))))))

(assert (= (and d!834550 c!470390) b!2892494))

(assert (= (and d!834550 (not c!470390)) b!2892497))

(assert (= (and b!2892497 c!470391) b!2892503))

(assert (= (and b!2892497 (not c!470391)) b!2892499))

(assert (= (and b!2892499 c!470385) b!2892505))

(assert (= (and b!2892499 (not c!470385)) b!2892492))

(assert (= (and b!2892492 c!470388) b!2892498))

(assert (= (and b!2892492 (not c!470388)) b!2892501))

(assert (= (and b!2892501 c!470387) b!2892500))

(assert (= (and b!2892501 (not c!470387)) b!2892490))

(assert (= (and b!2892500 c!470386) b!2892495))

(assert (= (and b!2892500 (not c!470386)) b!2892504))

(assert (= (and b!2892490 c!470389) b!2892496))

(assert (= (and b!2892490 (not c!470389)) b!2892502))

(assert (= (and b!2892496 c!470392) b!2892493))

(assert (= (and b!2892496 (not c!470392)) b!2892491))

(assert (= (or b!2892504 b!2892490) bm!187919))

(assert (= (or b!2892500 b!2892496) bm!187920))

(declare-fun m!3302965 () Bool)

(assert (=> b!2892493 m!3302965))

(declare-fun m!3302967 () Bool)

(assert (=> bm!187919 m!3302967))

(declare-fun m!3302969 () Bool)

(assert (=> bm!187920 m!3302969))

(assert (=> b!2892303 d!834550))

(declare-fun b!2892515 () Bool)

(declare-fun e!1827944 () Option!6505)

(declare-fun e!1827942 () Option!6505)

(assert (=> b!2892515 (= e!1827944 e!1827942)))

(declare-fun lt!1021171 () Option!6505)

(declare-fun call!187930 () Option!6505)

(assert (=> b!2892515 (= lt!1021171 call!187930)))

(declare-fun c!470399 () Bool)

(assert (=> b!2892515 (= c!470399 (is-Some!6504 lt!1021171))))

(declare-fun b!2892516 () Bool)

(declare-fun e!1827947 () Option!6505)

(assert (=> b!2892516 (= e!1827947 None!6504)))

(declare-fun b!2892517 () Bool)

(declare-fun e!1827948 () Option!6505)

(declare-fun e!1827945 () Option!6505)

(assert (=> b!2892517 (= e!1827948 e!1827945)))

(declare-fun c!470398 () Bool)

(assert (=> b!2892517 (= c!470398 (is-Star!8832 (regOne!18177 r!23079)))))

(declare-fun b!2892518 () Bool)

(declare-fun lt!1021170 () Option!6505)

(assert (=> b!2892518 (= e!1827947 (Some!6504 (++!8230 (v!34630 lt!1021171) (v!34630 lt!1021170))))))

(declare-fun b!2892519 () Bool)

(declare-fun e!1827946 () Option!6505)

(assert (=> b!2892519 (= e!1827946 (Some!6504 Nil!34509))))

(declare-fun b!2892520 () Bool)

(declare-fun e!1827949 () Option!6505)

(declare-fun lt!1021172 () Option!6505)

(assert (=> b!2892520 (= e!1827949 lt!1021172)))

(declare-fun b!2892521 () Bool)

(declare-fun c!470402 () Bool)

(assert (=> b!2892521 (= c!470402 (is-Some!6504 lt!1021170))))

(declare-fun call!187929 () Option!6505)

(assert (=> b!2892521 (= lt!1021170 call!187929)))

(assert (=> b!2892521 (= e!1827942 e!1827947)))

(declare-fun b!2892522 () Bool)

(declare-fun e!1827943 () Option!6505)

(assert (=> b!2892522 (= e!1827946 e!1827943)))

(declare-fun c!470401 () Bool)

(assert (=> b!2892522 (= c!470401 (is-EmptyLang!8832 (regOne!18177 r!23079)))))

(declare-fun b!2892523 () Bool)

(assert (=> b!2892523 (= e!1827945 (Some!6504 Nil!34509))))

(declare-fun b!2892524 () Bool)

(declare-fun c!470395 () Bool)

(assert (=> b!2892524 (= c!470395 (is-ElementMatch!8832 (regOne!18177 r!23079)))))

(assert (=> b!2892524 (= e!1827943 e!1827948)))

(declare-fun bm!187924 () Bool)

(declare-fun c!470397 () Bool)

(assert (=> bm!187924 (= call!187930 (getLanguageWitness!539 (ite c!470397 (regTwo!18177 (regOne!18177 r!23079)) (regOne!18176 (regOne!18177 r!23079)))))))

(declare-fun b!2892525 () Bool)

(assert (=> b!2892525 (= e!1827944 e!1827949)))

(assert (=> b!2892525 (= lt!1021172 call!187929)))

(declare-fun c!470396 () Bool)

(assert (=> b!2892525 (= c!470396 (is-Some!6504 lt!1021172))))

(declare-fun b!2892527 () Bool)

(assert (=> b!2892527 (= e!1827942 None!6504)))

(declare-fun b!2892528 () Bool)

(assert (=> b!2892528 (= e!1827943 None!6504)))

(declare-fun b!2892529 () Bool)

(assert (=> b!2892529 (= e!1827949 call!187930)))

(declare-fun b!2892526 () Bool)

(assert (=> b!2892526 (= c!470397 (is-Union!8832 (regOne!18177 r!23079)))))

(assert (=> b!2892526 (= e!1827945 e!1827944)))

(declare-fun d!834554 () Bool)

(declare-fun c!470400 () Bool)

(assert (=> d!834554 (= c!470400 (is-EmptyExpr!8832 (regOne!18177 r!23079)))))

(assert (=> d!834554 (= (getLanguageWitness!539 (regOne!18177 r!23079)) e!1827946)))

(declare-fun b!2892530 () Bool)

(assert (=> b!2892530 (= e!1827948 (Some!6504 (Cons!34509 (c!470321 (regOne!18177 r!23079)) Nil!34509)))))

(declare-fun bm!187925 () Bool)

(assert (=> bm!187925 (= call!187929 (getLanguageWitness!539 (ite c!470397 (regOne!18177 (regOne!18177 r!23079)) (regTwo!18176 (regOne!18177 r!23079)))))))

(assert (= (and d!834554 c!470400) b!2892519))

(assert (= (and d!834554 (not c!470400)) b!2892522))

(assert (= (and b!2892522 c!470401) b!2892528))

(assert (= (and b!2892522 (not c!470401)) b!2892524))

(assert (= (and b!2892524 c!470395) b!2892530))

(assert (= (and b!2892524 (not c!470395)) b!2892517))

(assert (= (and b!2892517 c!470398) b!2892523))

(assert (= (and b!2892517 (not c!470398)) b!2892526))

(assert (= (and b!2892526 c!470397) b!2892525))

(assert (= (and b!2892526 (not c!470397)) b!2892515))

(assert (= (and b!2892525 c!470396) b!2892520))

(assert (= (and b!2892525 (not c!470396)) b!2892529))

(assert (= (and b!2892515 c!470399) b!2892521))

(assert (= (and b!2892515 (not c!470399)) b!2892527))

(assert (= (and b!2892521 c!470402) b!2892518))

(assert (= (and b!2892521 (not c!470402)) b!2892516))

(assert (= (or b!2892529 b!2892515) bm!187924))

(assert (= (or b!2892525 b!2892521) bm!187925))

(declare-fun m!3302977 () Bool)

(assert (=> b!2892518 m!3302977))

(declare-fun m!3302979 () Bool)

(assert (=> bm!187924 m!3302979))

(declare-fun m!3302981 () Bool)

(assert (=> bm!187925 m!3302981))

(assert (=> b!2892304 d!834554))

(declare-fun b!2892576 () Bool)

(declare-fun e!1827968 () Bool)

(declare-fun tp!928692 () Bool)

(declare-fun tp!928691 () Bool)

(assert (=> b!2892576 (= e!1827968 (and tp!928692 tp!928691))))

(declare-fun b!2892574 () Bool)

(declare-fun tp!928690 () Bool)

(declare-fun tp!928693 () Bool)

(assert (=> b!2892574 (= e!1827968 (and tp!928690 tp!928693))))

(declare-fun b!2892575 () Bool)

(declare-fun tp!928694 () Bool)

(assert (=> b!2892575 (= e!1827968 tp!928694)))

(declare-fun b!2892573 () Bool)

(assert (=> b!2892573 (= e!1827968 tp_is_empty!15251)))

(assert (=> b!2892300 (= tp!928663 e!1827968)))

(assert (= (and b!2892300 (is-ElementMatch!8832 (regOne!18177 r!23079))) b!2892573))

(assert (= (and b!2892300 (is-Concat!14153 (regOne!18177 r!23079))) b!2892574))

(assert (= (and b!2892300 (is-Star!8832 (regOne!18177 r!23079))) b!2892575))

(assert (= (and b!2892300 (is-Union!8832 (regOne!18177 r!23079))) b!2892576))

(declare-fun b!2892586 () Bool)

(declare-fun e!1827971 () Bool)

(declare-fun tp!928701 () Bool)

(declare-fun tp!928700 () Bool)

(assert (=> b!2892586 (= e!1827971 (and tp!928701 tp!928700))))

(declare-fun b!2892584 () Bool)

(declare-fun tp!928699 () Bool)

(declare-fun tp!928702 () Bool)

(assert (=> b!2892584 (= e!1827971 (and tp!928699 tp!928702))))

(declare-fun b!2892585 () Bool)

(declare-fun tp!928703 () Bool)

(assert (=> b!2892585 (= e!1827971 tp!928703)))

(declare-fun b!2892583 () Bool)

(assert (=> b!2892583 (= e!1827971 tp_is_empty!15251)))

(assert (=> b!2892300 (= tp!928661 e!1827971)))

(assert (= (and b!2892300 (is-ElementMatch!8832 (regTwo!18177 r!23079))) b!2892583))

(assert (= (and b!2892300 (is-Concat!14153 (regTwo!18177 r!23079))) b!2892584))

(assert (= (and b!2892300 (is-Star!8832 (regTwo!18177 r!23079))) b!2892585))

(assert (= (and b!2892300 (is-Union!8832 (regTwo!18177 r!23079))) b!2892586))

(declare-fun b!2892594 () Bool)

(declare-fun e!1827972 () Bool)

(declare-fun tp!928712 () Bool)

(declare-fun tp!928711 () Bool)

(assert (=> b!2892594 (= e!1827972 (and tp!928712 tp!928711))))

(declare-fun b!2892592 () Bool)

(declare-fun tp!928710 () Bool)

(declare-fun tp!928713 () Bool)

(assert (=> b!2892592 (= e!1827972 (and tp!928710 tp!928713))))

(declare-fun b!2892593 () Bool)

(declare-fun tp!928714 () Bool)

(assert (=> b!2892593 (= e!1827972 tp!928714)))

(declare-fun b!2892591 () Bool)

(assert (=> b!2892591 (= e!1827972 tp_is_empty!15251)))

(assert (=> b!2892306 (= tp!928664 e!1827972)))

(assert (= (and b!2892306 (is-ElementMatch!8832 (reg!9161 r!23079))) b!2892591))

(assert (= (and b!2892306 (is-Concat!14153 (reg!9161 r!23079))) b!2892592))

(assert (= (and b!2892306 (is-Star!8832 (reg!9161 r!23079))) b!2892593))

(assert (= (and b!2892306 (is-Union!8832 (reg!9161 r!23079))) b!2892594))

(declare-fun b!2892598 () Bool)

(declare-fun e!1827973 () Bool)

(declare-fun tp!928717 () Bool)

(declare-fun tp!928716 () Bool)

(assert (=> b!2892598 (= e!1827973 (and tp!928717 tp!928716))))

(declare-fun b!2892596 () Bool)

(declare-fun tp!928715 () Bool)

(declare-fun tp!928718 () Bool)

(assert (=> b!2892596 (= e!1827973 (and tp!928715 tp!928718))))

(declare-fun b!2892597 () Bool)

(declare-fun tp!928719 () Bool)

(assert (=> b!2892597 (= e!1827973 tp!928719)))

(declare-fun b!2892595 () Bool)

(assert (=> b!2892595 (= e!1827973 tp_is_empty!15251)))

(assert (=> b!2892299 (= tp!928662 e!1827973)))

(assert (= (and b!2892299 (is-ElementMatch!8832 (regOne!18176 r!23079))) b!2892595))

(assert (= (and b!2892299 (is-Concat!14153 (regOne!18176 r!23079))) b!2892596))

(assert (= (and b!2892299 (is-Star!8832 (regOne!18176 r!23079))) b!2892597))

(assert (= (and b!2892299 (is-Union!8832 (regOne!18176 r!23079))) b!2892598))

(declare-fun b!2892602 () Bool)

(declare-fun e!1827974 () Bool)

(declare-fun tp!928722 () Bool)

(declare-fun tp!928721 () Bool)

(assert (=> b!2892602 (= e!1827974 (and tp!928722 tp!928721))))

(declare-fun b!2892600 () Bool)

(declare-fun tp!928720 () Bool)

(declare-fun tp!928723 () Bool)

(assert (=> b!2892600 (= e!1827974 (and tp!928720 tp!928723))))

(declare-fun b!2892601 () Bool)

(declare-fun tp!928724 () Bool)

(assert (=> b!2892601 (= e!1827974 tp!928724)))

(declare-fun b!2892599 () Bool)

(assert (=> b!2892599 (= e!1827974 tp_is_empty!15251)))

(assert (=> b!2892299 (= tp!928660 e!1827974)))

(assert (= (and b!2892299 (is-ElementMatch!8832 (regTwo!18176 r!23079))) b!2892599))

(assert (= (and b!2892299 (is-Concat!14153 (regTwo!18176 r!23079))) b!2892600))

(assert (= (and b!2892299 (is-Star!8832 (regTwo!18176 r!23079))) b!2892601))

(assert (= (and b!2892299 (is-Union!8832 (regTwo!18176 r!23079))) b!2892602))

(push 1)

(assert tp_is_empty!15251)

(assert (not b!2892493))

(assert (not bm!187900))

(assert (not b!2892575))

(assert (not b!2892462))

(assert (not bm!187919))

(assert (not b!2892600))

(assert (not bm!187916))

(assert (not b!2892518))

(assert (not b!2892574))

(assert (not bm!187899))

(assert (not bm!187925))

(assert (not bm!187920))

(assert (not b!2892594))

(assert (not d!834536))

(assert (not b!2892586))

(assert (not b!2892585))

(assert (not b!2892584))

(assert (not bm!187924))

(assert (not bm!187913))

(assert (not b!2892576))

(assert (not b!2892592))

(assert (not b!2892471))

(assert (not bm!187911))

(assert (not b!2892602))

(assert (not b!2892393))

(assert (not b!2892597))

(assert (not bm!187914))

(assert (not b!2892598))

(assert (not b!2892596))

(assert (not b!2892601))

(assert (not b!2892593))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


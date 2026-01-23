; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!282406 () Bool)

(assert start!282406)

(declare-fun res!1198789 () Bool)

(declare-fun e!1831786 () Bool)

(assert (=> start!282406 (=> (not res!1198789) (not e!1831786))))

(declare-datatypes ((C!17908 0))(
  ( (C!17909 (val!10988 Int)) )
))
(declare-datatypes ((Regex!8863 0))(
  ( (ElementMatch!8863 (c!472498 C!17908)) (Concat!14184 (regOne!18238 Regex!8863) (regTwo!18238 Regex!8863)) (EmptyExpr!8863) (Star!8863 (reg!9192 Regex!8863)) (EmptyLang!8863) (Union!8863 (regOne!18239 Regex!8863) (regTwo!18239 Regex!8863)) )
))
(declare-fun r!23079 () Regex!8863)

(declare-fun validRegex!3636 (Regex!8863) Bool)

(assert (=> start!282406 (= res!1198789 (validRegex!3636 r!23079))))

(assert (=> start!282406 e!1831786))

(declare-fun e!1831787 () Bool)

(assert (=> start!282406 e!1831787))

(declare-fun b!2900328 () Bool)

(declare-fun res!1198793 () Bool)

(declare-fun e!1831785 () Bool)

(assert (=> b!2900328 (=> (not res!1198793) (not e!1831785))))

(get-info :version)

(declare-datatypes ((List!34664 0))(
  ( (Nil!34540) (Cons!34540 (h!39960 C!17908) (t!233707 List!34664)) )
))
(declare-datatypes ((Option!6536 0))(
  ( (None!6535) (Some!6535 (v!34661 List!34664)) )
))
(declare-fun getLanguageWitness!570 (Regex!8863) Option!6536)

(assert (=> b!2900328 (= res!1198793 (not ((_ is Some!6535) (getLanguageWitness!570 (regTwo!18238 r!23079)))))))

(declare-fun b!2900329 () Bool)

(declare-fun res!1198791 () Bool)

(assert (=> b!2900329 (=> (not res!1198791) (not e!1831785))))

(assert (=> b!2900329 (= res!1198791 ((_ is Some!6535) (getLanguageWitness!570 (regOne!18238 r!23079))))))

(declare-fun b!2900330 () Bool)

(assert (=> b!2900330 (= e!1831786 e!1831785)))

(declare-fun res!1198790 () Bool)

(assert (=> b!2900330 (=> (not res!1198790) (not e!1831785))))

(declare-fun lt!1022112 () Option!6536)

(declare-fun isDefined!5100 (Option!6536) Bool)

(assert (=> b!2900330 (= res!1198790 (isDefined!5100 lt!1022112))))

(assert (=> b!2900330 (= lt!1022112 (getLanguageWitness!570 r!23079))))

(declare-fun b!2900331 () Bool)

(declare-fun tp_is_empty!15313 () Bool)

(assert (=> b!2900331 (= e!1831787 tp_is_empty!15313)))

(declare-fun b!2900332 () Bool)

(declare-fun tp!930678 () Bool)

(declare-fun tp!930675 () Bool)

(assert (=> b!2900332 (= e!1831787 (and tp!930678 tp!930675))))

(declare-fun b!2900333 () Bool)

(declare-fun tp!930677 () Bool)

(declare-fun tp!930676 () Bool)

(assert (=> b!2900333 (= e!1831787 (and tp!930677 tp!930676))))

(declare-fun b!2900334 () Bool)

(declare-fun matchR!3821 (Regex!8863 List!34664) Bool)

(declare-fun get!10485 (Option!6536) List!34664)

(assert (=> b!2900334 (= e!1831785 (not (matchR!3821 r!23079 (get!10485 lt!1022112))))))

(declare-fun b!2900335 () Bool)

(declare-fun res!1198792 () Bool)

(assert (=> b!2900335 (=> (not res!1198792) (not e!1831785))))

(assert (=> b!2900335 (= res!1198792 (and (not ((_ is EmptyExpr!8863) r!23079)) (not ((_ is EmptyLang!8863) r!23079)) (not ((_ is ElementMatch!8863) r!23079)) (not ((_ is Star!8863) r!23079)) (not ((_ is Union!8863) r!23079))))))

(declare-fun b!2900336 () Bool)

(declare-fun tp!930679 () Bool)

(assert (=> b!2900336 (= e!1831787 tp!930679)))

(assert (= (and start!282406 res!1198789) b!2900330))

(assert (= (and b!2900330 res!1198790) b!2900335))

(assert (= (and b!2900335 res!1198792) b!2900329))

(assert (= (and b!2900329 res!1198791) b!2900328))

(assert (= (and b!2900328 res!1198793) b!2900334))

(assert (= (and start!282406 ((_ is ElementMatch!8863) r!23079)) b!2900331))

(assert (= (and start!282406 ((_ is Concat!14184) r!23079)) b!2900332))

(assert (= (and start!282406 ((_ is Star!8863) r!23079)) b!2900336))

(assert (= (and start!282406 ((_ is Union!8863) r!23079)) b!2900333))

(declare-fun m!3305941 () Bool)

(assert (=> start!282406 m!3305941))

(declare-fun m!3305943 () Bool)

(assert (=> b!2900334 m!3305943))

(assert (=> b!2900334 m!3305943))

(declare-fun m!3305945 () Bool)

(assert (=> b!2900334 m!3305945))

(declare-fun m!3305947 () Bool)

(assert (=> b!2900330 m!3305947))

(declare-fun m!3305949 () Bool)

(assert (=> b!2900330 m!3305949))

(declare-fun m!3305951 () Bool)

(assert (=> b!2900329 m!3305951))

(declare-fun m!3305953 () Bool)

(assert (=> b!2900328 m!3305953))

(check-sat (not b!2900329) (not b!2900334) (not b!2900336) (not b!2900332) tp_is_empty!15313 (not b!2900328) (not start!282406) (not b!2900330) (not b!2900333))
(check-sat)
(get-model)

(declare-fun d!835363 () Bool)

(declare-fun isEmpty!18856 (Option!6536) Bool)

(assert (=> d!835363 (= (isDefined!5100 lt!1022112) (not (isEmpty!18856 lt!1022112)))))

(declare-fun bs!524007 () Bool)

(assert (= bs!524007 d!835363))

(declare-fun m!3305955 () Bool)

(assert (=> bs!524007 m!3305955))

(assert (=> b!2900330 d!835363))

(declare-fun b!2900401 () Bool)

(declare-fun e!1831824 () Option!6536)

(declare-fun e!1831822 () Option!6536)

(assert (=> b!2900401 (= e!1831824 e!1831822)))

(declare-fun c!472537 () Bool)

(assert (=> b!2900401 (= c!472537 ((_ is EmptyLang!8863) r!23079))))

(declare-fun b!2900402 () Bool)

(declare-fun e!1831823 () Option!6536)

(assert (=> b!2900402 (= e!1831823 (Some!6535 Nil!34540))))

(declare-fun b!2900403 () Bool)

(declare-fun e!1831826 () Option!6536)

(declare-fun call!188944 () Option!6536)

(assert (=> b!2900403 (= e!1831826 call!188944)))

(declare-fun b!2900404 () Bool)

(declare-fun c!472532 () Bool)

(assert (=> b!2900404 (= c!472532 ((_ is ElementMatch!8863) r!23079))))

(declare-fun e!1831825 () Option!6536)

(assert (=> b!2900404 (= e!1831822 e!1831825)))

(declare-fun b!2900405 () Bool)

(assert (=> b!2900405 (= e!1831825 (Some!6535 (Cons!34540 (c!472498 r!23079) Nil!34540)))))

(declare-fun d!835367 () Bool)

(declare-fun c!472534 () Bool)

(assert (=> d!835367 (= c!472534 ((_ is EmptyExpr!8863) r!23079))))

(assert (=> d!835367 (= (getLanguageWitness!570 r!23079) e!1831824)))

(declare-fun b!2900406 () Bool)

(declare-fun e!1831827 () Option!6536)

(assert (=> b!2900406 (= e!1831827 None!6535)))

(declare-fun b!2900407 () Bool)

(assert (=> b!2900407 (= e!1831822 None!6535)))

(declare-fun b!2900408 () Bool)

(declare-fun lt!1022127 () Option!6536)

(assert (=> b!2900408 (= e!1831826 lt!1022127)))

(declare-fun bm!188938 () Bool)

(declare-fun call!188943 () Option!6536)

(declare-fun c!472533 () Bool)

(assert (=> bm!188938 (= call!188943 (getLanguageWitness!570 (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))))))

(declare-fun b!2900409 () Bool)

(declare-fun e!1831821 () Option!6536)

(declare-fun lt!1022126 () Option!6536)

(declare-fun lt!1022125 () Option!6536)

(declare-fun ++!8260 (List!34664 List!34664) List!34664)

(assert (=> b!2900409 (= e!1831821 (Some!6535 (++!8260 (v!34661 lt!1022126) (v!34661 lt!1022125))))))

(declare-fun b!2900410 () Bool)

(declare-fun c!472538 () Bool)

(assert (=> b!2900410 (= c!472538 ((_ is Some!6535) lt!1022125))))

(assert (=> b!2900410 (= lt!1022125 call!188943)))

(assert (=> b!2900410 (= e!1831827 e!1831821)))

(declare-fun b!2900411 () Bool)

(declare-fun e!1831820 () Option!6536)

(assert (=> b!2900411 (= e!1831820 e!1831827)))

(assert (=> b!2900411 (= lt!1022126 call!188944)))

(declare-fun c!472531 () Bool)

(assert (=> b!2900411 (= c!472531 ((_ is Some!6535) lt!1022126))))

(declare-fun b!2900412 () Bool)

(assert (=> b!2900412 (= e!1831820 e!1831826)))

(assert (=> b!2900412 (= lt!1022127 call!188943)))

(declare-fun c!472536 () Bool)

(assert (=> b!2900412 (= c!472536 ((_ is Some!6535) lt!1022127))))

(declare-fun b!2900413 () Bool)

(assert (=> b!2900413 (= c!472533 ((_ is Union!8863) r!23079))))

(assert (=> b!2900413 (= e!1831823 e!1831820)))

(declare-fun b!2900414 () Bool)

(assert (=> b!2900414 (= e!1831824 (Some!6535 Nil!34540))))

(declare-fun b!2900415 () Bool)

(assert (=> b!2900415 (= e!1831825 e!1831823)))

(declare-fun c!472535 () Bool)

(assert (=> b!2900415 (= c!472535 ((_ is Star!8863) r!23079))))

(declare-fun bm!188939 () Bool)

(assert (=> bm!188939 (= call!188944 (getLanguageWitness!570 (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))))))

(declare-fun b!2900416 () Bool)

(assert (=> b!2900416 (= e!1831821 None!6535)))

(assert (= (and d!835367 c!472534) b!2900414))

(assert (= (and d!835367 (not c!472534)) b!2900401))

(assert (= (and b!2900401 c!472537) b!2900407))

(assert (= (and b!2900401 (not c!472537)) b!2900404))

(assert (= (and b!2900404 c!472532) b!2900405))

(assert (= (and b!2900404 (not c!472532)) b!2900415))

(assert (= (and b!2900415 c!472535) b!2900402))

(assert (= (and b!2900415 (not c!472535)) b!2900413))

(assert (= (and b!2900413 c!472533) b!2900412))

(assert (= (and b!2900413 (not c!472533)) b!2900411))

(assert (= (and b!2900412 c!472536) b!2900408))

(assert (= (and b!2900412 (not c!472536)) b!2900403))

(assert (= (and b!2900411 c!472531) b!2900410))

(assert (= (and b!2900411 (not c!472531)) b!2900406))

(assert (= (and b!2900410 c!472538) b!2900409))

(assert (= (and b!2900410 (not c!472538)) b!2900416))

(assert (= (or b!2900403 b!2900411) bm!188939))

(assert (= (or b!2900412 b!2900410) bm!188938))

(declare-fun m!3305957 () Bool)

(assert (=> bm!188938 m!3305957))

(declare-fun m!3305959 () Bool)

(assert (=> b!2900409 m!3305959))

(declare-fun m!3305961 () Bool)

(assert (=> bm!188939 m!3305961))

(assert (=> b!2900330 d!835367))

(declare-fun b!2900445 () Bool)

(declare-fun res!1198817 () Bool)

(declare-fun e!1831842 () Bool)

(assert (=> b!2900445 (=> res!1198817 e!1831842)))

(assert (=> b!2900445 (= res!1198817 (not ((_ is ElementMatch!8863) r!23079)))))

(declare-fun e!1831847 () Bool)

(assert (=> b!2900445 (= e!1831847 e!1831842)))

(declare-fun b!2900446 () Bool)

(declare-fun e!1831843 () Bool)

(assert (=> b!2900446 (= e!1831842 e!1831843)))

(declare-fun res!1198811 () Bool)

(assert (=> b!2900446 (=> (not res!1198811) (not e!1831843))))

(declare-fun lt!1022130 () Bool)

(assert (=> b!2900446 (= res!1198811 (not lt!1022130))))

(declare-fun b!2900447 () Bool)

(assert (=> b!2900447 (= e!1831847 (not lt!1022130))))

(declare-fun b!2900448 () Bool)

(declare-fun e!1831848 () Bool)

(declare-fun derivativeStep!2375 (Regex!8863 C!17908) Regex!8863)

(declare-fun head!6404 (List!34664) C!17908)

(declare-fun tail!4629 (List!34664) List!34664)

(assert (=> b!2900448 (= e!1831848 (matchR!3821 (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112))) (tail!4629 (get!10485 lt!1022112))))))

(declare-fun b!2900449 () Bool)

(declare-fun e!1831844 () Bool)

(declare-fun call!188951 () Bool)

(assert (=> b!2900449 (= e!1831844 (= lt!1022130 call!188951))))

(declare-fun b!2900450 () Bool)

(declare-fun res!1198816 () Bool)

(declare-fun e!1831845 () Bool)

(assert (=> b!2900450 (=> (not res!1198816) (not e!1831845))))

(assert (=> b!2900450 (= res!1198816 (not call!188951))))

(declare-fun b!2900451 () Bool)

(declare-fun e!1831846 () Bool)

(assert (=> b!2900451 (= e!1831846 (not (= (head!6404 (get!10485 lt!1022112)) (c!472498 r!23079))))))

(declare-fun b!2900452 () Bool)

(assert (=> b!2900452 (= e!1831843 e!1831846)))

(declare-fun res!1198810 () Bool)

(assert (=> b!2900452 (=> res!1198810 e!1831846)))

(assert (=> b!2900452 (= res!1198810 call!188951)))

(declare-fun b!2900453 () Bool)

(declare-fun res!1198815 () Bool)

(assert (=> b!2900453 (=> res!1198815 e!1831846)))

(declare-fun isEmpty!18857 (List!34664) Bool)

(assert (=> b!2900453 (= res!1198815 (not (isEmpty!18857 (tail!4629 (get!10485 lt!1022112)))))))

(declare-fun b!2900454 () Bool)

(declare-fun nullable!2762 (Regex!8863) Bool)

(assert (=> b!2900454 (= e!1831848 (nullable!2762 r!23079))))

(declare-fun b!2900455 () Bool)

(assert (=> b!2900455 (= e!1831844 e!1831847)))

(declare-fun c!472545 () Bool)

(assert (=> b!2900455 (= c!472545 ((_ is EmptyLang!8863) r!23079))))

(declare-fun d!835369 () Bool)

(assert (=> d!835369 e!1831844))

(declare-fun c!472547 () Bool)

(assert (=> d!835369 (= c!472547 ((_ is EmptyExpr!8863) r!23079))))

(assert (=> d!835369 (= lt!1022130 e!1831848)))

(declare-fun c!472546 () Bool)

(assert (=> d!835369 (= c!472546 (isEmpty!18857 (get!10485 lt!1022112)))))

(assert (=> d!835369 (validRegex!3636 r!23079)))

(assert (=> d!835369 (= (matchR!3821 r!23079 (get!10485 lt!1022112)) lt!1022130)))

(declare-fun bm!188946 () Bool)

(assert (=> bm!188946 (= call!188951 (isEmpty!18857 (get!10485 lt!1022112)))))

(declare-fun b!2900456 () Bool)

(assert (=> b!2900456 (= e!1831845 (= (head!6404 (get!10485 lt!1022112)) (c!472498 r!23079)))))

(declare-fun b!2900457 () Bool)

(declare-fun res!1198812 () Bool)

(assert (=> b!2900457 (=> res!1198812 e!1831842)))

(assert (=> b!2900457 (= res!1198812 e!1831845)))

(declare-fun res!1198814 () Bool)

(assert (=> b!2900457 (=> (not res!1198814) (not e!1831845))))

(assert (=> b!2900457 (= res!1198814 lt!1022130)))

(declare-fun b!2900458 () Bool)

(declare-fun res!1198813 () Bool)

(assert (=> b!2900458 (=> (not res!1198813) (not e!1831845))))

(assert (=> b!2900458 (= res!1198813 (isEmpty!18857 (tail!4629 (get!10485 lt!1022112))))))

(assert (= (and d!835369 c!472546) b!2900454))

(assert (= (and d!835369 (not c!472546)) b!2900448))

(assert (= (and d!835369 c!472547) b!2900449))

(assert (= (and d!835369 (not c!472547)) b!2900455))

(assert (= (and b!2900455 c!472545) b!2900447))

(assert (= (and b!2900455 (not c!472545)) b!2900445))

(assert (= (and b!2900445 (not res!1198817)) b!2900457))

(assert (= (and b!2900457 res!1198814) b!2900450))

(assert (= (and b!2900450 res!1198816) b!2900458))

(assert (= (and b!2900458 res!1198813) b!2900456))

(assert (= (and b!2900457 (not res!1198812)) b!2900446))

(assert (= (and b!2900446 res!1198811) b!2900452))

(assert (= (and b!2900452 (not res!1198810)) b!2900453))

(assert (= (and b!2900453 (not res!1198815)) b!2900451))

(assert (= (or b!2900449 b!2900450 b!2900452) bm!188946))

(assert (=> d!835369 m!3305943))

(declare-fun m!3305963 () Bool)

(assert (=> d!835369 m!3305963))

(assert (=> d!835369 m!3305941))

(assert (=> b!2900458 m!3305943))

(declare-fun m!3305965 () Bool)

(assert (=> b!2900458 m!3305965))

(assert (=> b!2900458 m!3305965))

(declare-fun m!3305967 () Bool)

(assert (=> b!2900458 m!3305967))

(assert (=> b!2900451 m!3305943))

(declare-fun m!3305969 () Bool)

(assert (=> b!2900451 m!3305969))

(assert (=> b!2900448 m!3305943))

(assert (=> b!2900448 m!3305969))

(assert (=> b!2900448 m!3305969))

(declare-fun m!3305971 () Bool)

(assert (=> b!2900448 m!3305971))

(assert (=> b!2900448 m!3305943))

(assert (=> b!2900448 m!3305965))

(assert (=> b!2900448 m!3305971))

(assert (=> b!2900448 m!3305965))

(declare-fun m!3305973 () Bool)

(assert (=> b!2900448 m!3305973))

(assert (=> b!2900456 m!3305943))

(assert (=> b!2900456 m!3305969))

(assert (=> b!2900453 m!3305943))

(assert (=> b!2900453 m!3305965))

(assert (=> b!2900453 m!3305965))

(assert (=> b!2900453 m!3305967))

(declare-fun m!3305975 () Bool)

(assert (=> b!2900454 m!3305975))

(assert (=> bm!188946 m!3305943))

(assert (=> bm!188946 m!3305963))

(assert (=> b!2900334 d!835369))

(declare-fun d!835371 () Bool)

(assert (=> d!835371 (= (get!10485 lt!1022112) (v!34661 lt!1022112))))

(assert (=> b!2900334 d!835371))

(declare-fun b!2900525 () Bool)

(declare-fun res!1198828 () Bool)

(declare-fun e!1831891 () Bool)

(assert (=> b!2900525 (=> res!1198828 e!1831891)))

(assert (=> b!2900525 (= res!1198828 (not ((_ is Concat!14184) r!23079)))))

(declare-fun e!1831893 () Bool)

(assert (=> b!2900525 (= e!1831893 e!1831891)))

(declare-fun b!2900526 () Bool)

(declare-fun e!1831887 () Bool)

(declare-fun call!188965 () Bool)

(assert (=> b!2900526 (= e!1831887 call!188965)))

(declare-fun b!2900527 () Bool)

(declare-fun e!1831892 () Bool)

(declare-fun e!1831888 () Bool)

(assert (=> b!2900527 (= e!1831892 e!1831888)))

(declare-fun res!1198832 () Bool)

(assert (=> b!2900527 (= res!1198832 (not (nullable!2762 (reg!9192 r!23079))))))

(assert (=> b!2900527 (=> (not res!1198832) (not e!1831888))))

(declare-fun b!2900528 () Bool)

(declare-fun e!1831889 () Bool)

(assert (=> b!2900528 (= e!1831889 call!188965)))

(declare-fun b!2900529 () Bool)

(assert (=> b!2900529 (= e!1831891 e!1831887)))

(declare-fun res!1198829 () Bool)

(assert (=> b!2900529 (=> (not res!1198829) (not e!1831887))))

(declare-fun call!188966 () Bool)

(assert (=> b!2900529 (= res!1198829 call!188966)))

(declare-fun call!188964 () Bool)

(declare-fun bm!188959 () Bool)

(declare-fun c!472576 () Bool)

(declare-fun c!472577 () Bool)

(assert (=> bm!188959 (= call!188964 (validRegex!3636 (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079)))))))

(declare-fun bm!188960 () Bool)

(assert (=> bm!188960 (= call!188966 call!188964)))

(declare-fun b!2900531 () Bool)

(declare-fun e!1831890 () Bool)

(assert (=> b!2900531 (= e!1831890 e!1831892)))

(assert (=> b!2900531 (= c!472577 ((_ is Star!8863) r!23079))))

(declare-fun b!2900532 () Bool)

(declare-fun res!1198830 () Bool)

(assert (=> b!2900532 (=> (not res!1198830) (not e!1831889))))

(assert (=> b!2900532 (= res!1198830 call!188966)))

(assert (=> b!2900532 (= e!1831893 e!1831889)))

(declare-fun b!2900530 () Bool)

(assert (=> b!2900530 (= e!1831888 call!188964)))

(declare-fun d!835373 () Bool)

(declare-fun res!1198831 () Bool)

(assert (=> d!835373 (=> res!1198831 e!1831890)))

(assert (=> d!835373 (= res!1198831 ((_ is ElementMatch!8863) r!23079))))

(assert (=> d!835373 (= (validRegex!3636 r!23079) e!1831890)))

(declare-fun bm!188961 () Bool)

(assert (=> bm!188961 (= call!188965 (validRegex!3636 (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079))))))

(declare-fun b!2900533 () Bool)

(assert (=> b!2900533 (= e!1831892 e!1831893)))

(assert (=> b!2900533 (= c!472576 ((_ is Union!8863) r!23079))))

(assert (= (and d!835373 (not res!1198831)) b!2900531))

(assert (= (and b!2900531 c!472577) b!2900527))

(assert (= (and b!2900531 (not c!472577)) b!2900533))

(assert (= (and b!2900527 res!1198832) b!2900530))

(assert (= (and b!2900533 c!472576) b!2900532))

(assert (= (and b!2900533 (not c!472576)) b!2900525))

(assert (= (and b!2900532 res!1198830) b!2900528))

(assert (= (and b!2900525 (not res!1198828)) b!2900529))

(assert (= (and b!2900529 res!1198829) b!2900526))

(assert (= (or b!2900528 b!2900526) bm!188961))

(assert (= (or b!2900532 b!2900529) bm!188960))

(assert (= (or b!2900530 bm!188960) bm!188959))

(declare-fun m!3305991 () Bool)

(assert (=> b!2900527 m!3305991))

(declare-fun m!3305993 () Bool)

(assert (=> bm!188959 m!3305993))

(declare-fun m!3305995 () Bool)

(assert (=> bm!188961 m!3305995))

(assert (=> start!282406 d!835373))

(declare-fun b!2900534 () Bool)

(declare-fun e!1831898 () Option!6536)

(declare-fun e!1831896 () Option!6536)

(assert (=> b!2900534 (= e!1831898 e!1831896)))

(declare-fun c!472584 () Bool)

(assert (=> b!2900534 (= c!472584 ((_ is EmptyLang!8863) (regOne!18238 r!23079)))))

(declare-fun b!2900535 () Bool)

(declare-fun e!1831897 () Option!6536)

(assert (=> b!2900535 (= e!1831897 (Some!6535 Nil!34540))))

(declare-fun b!2900536 () Bool)

(declare-fun e!1831900 () Option!6536)

(declare-fun call!188968 () Option!6536)

(assert (=> b!2900536 (= e!1831900 call!188968)))

(declare-fun b!2900537 () Bool)

(declare-fun c!472579 () Bool)

(assert (=> b!2900537 (= c!472579 ((_ is ElementMatch!8863) (regOne!18238 r!23079)))))

(declare-fun e!1831899 () Option!6536)

(assert (=> b!2900537 (= e!1831896 e!1831899)))

(declare-fun b!2900538 () Bool)

(assert (=> b!2900538 (= e!1831899 (Some!6535 (Cons!34540 (c!472498 (regOne!18238 r!23079)) Nil!34540)))))

(declare-fun d!835381 () Bool)

(declare-fun c!472581 () Bool)

(assert (=> d!835381 (= c!472581 ((_ is EmptyExpr!8863) (regOne!18238 r!23079)))))

(assert (=> d!835381 (= (getLanguageWitness!570 (regOne!18238 r!23079)) e!1831898)))

(declare-fun b!2900539 () Bool)

(declare-fun e!1831901 () Option!6536)

(assert (=> b!2900539 (= e!1831901 None!6535)))

(declare-fun b!2900540 () Bool)

(assert (=> b!2900540 (= e!1831896 None!6535)))

(declare-fun b!2900541 () Bool)

(declare-fun lt!1022142 () Option!6536)

(assert (=> b!2900541 (= e!1831900 lt!1022142)))

(declare-fun bm!188962 () Bool)

(declare-fun call!188967 () Option!6536)

(declare-fun c!472580 () Bool)

(assert (=> bm!188962 (= call!188967 (getLanguageWitness!570 (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))))))

(declare-fun b!2900542 () Bool)

(declare-fun e!1831895 () Option!6536)

(declare-fun lt!1022141 () Option!6536)

(declare-fun lt!1022140 () Option!6536)

(assert (=> b!2900542 (= e!1831895 (Some!6535 (++!8260 (v!34661 lt!1022141) (v!34661 lt!1022140))))))

(declare-fun b!2900543 () Bool)

(declare-fun c!472585 () Bool)

(assert (=> b!2900543 (= c!472585 ((_ is Some!6535) lt!1022140))))

(assert (=> b!2900543 (= lt!1022140 call!188967)))

(assert (=> b!2900543 (= e!1831901 e!1831895)))

(declare-fun b!2900544 () Bool)

(declare-fun e!1831894 () Option!6536)

(assert (=> b!2900544 (= e!1831894 e!1831901)))

(assert (=> b!2900544 (= lt!1022141 call!188968)))

(declare-fun c!472578 () Bool)

(assert (=> b!2900544 (= c!472578 ((_ is Some!6535) lt!1022141))))

(declare-fun b!2900545 () Bool)

(assert (=> b!2900545 (= e!1831894 e!1831900)))

(assert (=> b!2900545 (= lt!1022142 call!188967)))

(declare-fun c!472583 () Bool)

(assert (=> b!2900545 (= c!472583 ((_ is Some!6535) lt!1022142))))

(declare-fun b!2900546 () Bool)

(assert (=> b!2900546 (= c!472580 ((_ is Union!8863) (regOne!18238 r!23079)))))

(assert (=> b!2900546 (= e!1831897 e!1831894)))

(declare-fun b!2900547 () Bool)

(assert (=> b!2900547 (= e!1831898 (Some!6535 Nil!34540))))

(declare-fun b!2900548 () Bool)

(assert (=> b!2900548 (= e!1831899 e!1831897)))

(declare-fun c!472582 () Bool)

(assert (=> b!2900548 (= c!472582 ((_ is Star!8863) (regOne!18238 r!23079)))))

(declare-fun bm!188963 () Bool)

(assert (=> bm!188963 (= call!188968 (getLanguageWitness!570 (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))))))

(declare-fun b!2900549 () Bool)

(assert (=> b!2900549 (= e!1831895 None!6535)))

(assert (= (and d!835381 c!472581) b!2900547))

(assert (= (and d!835381 (not c!472581)) b!2900534))

(assert (= (and b!2900534 c!472584) b!2900540))

(assert (= (and b!2900534 (not c!472584)) b!2900537))

(assert (= (and b!2900537 c!472579) b!2900538))

(assert (= (and b!2900537 (not c!472579)) b!2900548))

(assert (= (and b!2900548 c!472582) b!2900535))

(assert (= (and b!2900548 (not c!472582)) b!2900546))

(assert (= (and b!2900546 c!472580) b!2900545))

(assert (= (and b!2900546 (not c!472580)) b!2900544))

(assert (= (and b!2900545 c!472583) b!2900541))

(assert (= (and b!2900545 (not c!472583)) b!2900536))

(assert (= (and b!2900544 c!472578) b!2900543))

(assert (= (and b!2900544 (not c!472578)) b!2900539))

(assert (= (and b!2900543 c!472585) b!2900542))

(assert (= (and b!2900543 (not c!472585)) b!2900549))

(assert (= (or b!2900536 b!2900544) bm!188963))

(assert (= (or b!2900545 b!2900543) bm!188962))

(declare-fun m!3306003 () Bool)

(assert (=> bm!188962 m!3306003))

(declare-fun m!3306005 () Bool)

(assert (=> b!2900542 m!3306005))

(declare-fun m!3306007 () Bool)

(assert (=> bm!188963 m!3306007))

(assert (=> b!2900329 d!835381))

(declare-fun b!2900550 () Bool)

(declare-fun e!1831906 () Option!6536)

(declare-fun e!1831904 () Option!6536)

(assert (=> b!2900550 (= e!1831906 e!1831904)))

(declare-fun c!472592 () Bool)

(assert (=> b!2900550 (= c!472592 ((_ is EmptyLang!8863) (regTwo!18238 r!23079)))))

(declare-fun b!2900551 () Bool)

(declare-fun e!1831905 () Option!6536)

(assert (=> b!2900551 (= e!1831905 (Some!6535 Nil!34540))))

(declare-fun b!2900552 () Bool)

(declare-fun e!1831908 () Option!6536)

(declare-fun call!188970 () Option!6536)

(assert (=> b!2900552 (= e!1831908 call!188970)))

(declare-fun b!2900553 () Bool)

(declare-fun c!472587 () Bool)

(assert (=> b!2900553 (= c!472587 ((_ is ElementMatch!8863) (regTwo!18238 r!23079)))))

(declare-fun e!1831907 () Option!6536)

(assert (=> b!2900553 (= e!1831904 e!1831907)))

(declare-fun b!2900554 () Bool)

(assert (=> b!2900554 (= e!1831907 (Some!6535 (Cons!34540 (c!472498 (regTwo!18238 r!23079)) Nil!34540)))))

(declare-fun d!835385 () Bool)

(declare-fun c!472589 () Bool)

(assert (=> d!835385 (= c!472589 ((_ is EmptyExpr!8863) (regTwo!18238 r!23079)))))

(assert (=> d!835385 (= (getLanguageWitness!570 (regTwo!18238 r!23079)) e!1831906)))

(declare-fun b!2900555 () Bool)

(declare-fun e!1831909 () Option!6536)

(assert (=> b!2900555 (= e!1831909 None!6535)))

(declare-fun b!2900556 () Bool)

(assert (=> b!2900556 (= e!1831904 None!6535)))

(declare-fun b!2900557 () Bool)

(declare-fun lt!1022145 () Option!6536)

(assert (=> b!2900557 (= e!1831908 lt!1022145)))

(declare-fun bm!188964 () Bool)

(declare-fun call!188969 () Option!6536)

(declare-fun c!472588 () Bool)

(assert (=> bm!188964 (= call!188969 (getLanguageWitness!570 (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))))))

(declare-fun b!2900558 () Bool)

(declare-fun e!1831903 () Option!6536)

(declare-fun lt!1022144 () Option!6536)

(declare-fun lt!1022143 () Option!6536)

(assert (=> b!2900558 (= e!1831903 (Some!6535 (++!8260 (v!34661 lt!1022144) (v!34661 lt!1022143))))))

(declare-fun b!2900559 () Bool)

(declare-fun c!472593 () Bool)

(assert (=> b!2900559 (= c!472593 ((_ is Some!6535) lt!1022143))))

(assert (=> b!2900559 (= lt!1022143 call!188969)))

(assert (=> b!2900559 (= e!1831909 e!1831903)))

(declare-fun b!2900560 () Bool)

(declare-fun e!1831902 () Option!6536)

(assert (=> b!2900560 (= e!1831902 e!1831909)))

(assert (=> b!2900560 (= lt!1022144 call!188970)))

(declare-fun c!472586 () Bool)

(assert (=> b!2900560 (= c!472586 ((_ is Some!6535) lt!1022144))))

(declare-fun b!2900561 () Bool)

(assert (=> b!2900561 (= e!1831902 e!1831908)))

(assert (=> b!2900561 (= lt!1022145 call!188969)))

(declare-fun c!472591 () Bool)

(assert (=> b!2900561 (= c!472591 ((_ is Some!6535) lt!1022145))))

(declare-fun b!2900562 () Bool)

(assert (=> b!2900562 (= c!472588 ((_ is Union!8863) (regTwo!18238 r!23079)))))

(assert (=> b!2900562 (= e!1831905 e!1831902)))

(declare-fun b!2900563 () Bool)

(assert (=> b!2900563 (= e!1831906 (Some!6535 Nil!34540))))

(declare-fun b!2900564 () Bool)

(assert (=> b!2900564 (= e!1831907 e!1831905)))

(declare-fun c!472590 () Bool)

(assert (=> b!2900564 (= c!472590 ((_ is Star!8863) (regTwo!18238 r!23079)))))

(declare-fun bm!188965 () Bool)

(assert (=> bm!188965 (= call!188970 (getLanguageWitness!570 (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))))))

(declare-fun b!2900565 () Bool)

(assert (=> b!2900565 (= e!1831903 None!6535)))

(assert (= (and d!835385 c!472589) b!2900563))

(assert (= (and d!835385 (not c!472589)) b!2900550))

(assert (= (and b!2900550 c!472592) b!2900556))

(assert (= (and b!2900550 (not c!472592)) b!2900553))

(assert (= (and b!2900553 c!472587) b!2900554))

(assert (= (and b!2900553 (not c!472587)) b!2900564))

(assert (= (and b!2900564 c!472590) b!2900551))

(assert (= (and b!2900564 (not c!472590)) b!2900562))

(assert (= (and b!2900562 c!472588) b!2900561))

(assert (= (and b!2900562 (not c!472588)) b!2900560))

(assert (= (and b!2900561 c!472591) b!2900557))

(assert (= (and b!2900561 (not c!472591)) b!2900552))

(assert (= (and b!2900560 c!472586) b!2900559))

(assert (= (and b!2900560 (not c!472586)) b!2900555))

(assert (= (and b!2900559 c!472593) b!2900558))

(assert (= (and b!2900559 (not c!472593)) b!2900565))

(assert (= (or b!2900552 b!2900560) bm!188965))

(assert (= (or b!2900561 b!2900559) bm!188964))

(declare-fun m!3306009 () Bool)

(assert (=> bm!188964 m!3306009))

(declare-fun m!3306011 () Bool)

(assert (=> b!2900558 m!3306011))

(declare-fun m!3306013 () Bool)

(assert (=> bm!188965 m!3306013))

(assert (=> b!2900328 d!835385))

(declare-fun b!2900578 () Bool)

(declare-fun e!1831912 () Bool)

(declare-fun tp!930692 () Bool)

(assert (=> b!2900578 (= e!1831912 tp!930692)))

(assert (=> b!2900336 (= tp!930679 e!1831912)))

(declare-fun b!2900576 () Bool)

(assert (=> b!2900576 (= e!1831912 tp_is_empty!15313)))

(declare-fun b!2900577 () Bool)

(declare-fun tp!930690 () Bool)

(declare-fun tp!930693 () Bool)

(assert (=> b!2900577 (= e!1831912 (and tp!930690 tp!930693))))

(declare-fun b!2900579 () Bool)

(declare-fun tp!930691 () Bool)

(declare-fun tp!930694 () Bool)

(assert (=> b!2900579 (= e!1831912 (and tp!930691 tp!930694))))

(assert (= (and b!2900336 ((_ is ElementMatch!8863) (reg!9192 r!23079))) b!2900576))

(assert (= (and b!2900336 ((_ is Concat!14184) (reg!9192 r!23079))) b!2900577))

(assert (= (and b!2900336 ((_ is Star!8863) (reg!9192 r!23079))) b!2900578))

(assert (= (and b!2900336 ((_ is Union!8863) (reg!9192 r!23079))) b!2900579))

(declare-fun b!2900582 () Bool)

(declare-fun e!1831913 () Bool)

(declare-fun tp!930697 () Bool)

(assert (=> b!2900582 (= e!1831913 tp!930697)))

(assert (=> b!2900333 (= tp!930677 e!1831913)))

(declare-fun b!2900580 () Bool)

(assert (=> b!2900580 (= e!1831913 tp_is_empty!15313)))

(declare-fun b!2900581 () Bool)

(declare-fun tp!930695 () Bool)

(declare-fun tp!930698 () Bool)

(assert (=> b!2900581 (= e!1831913 (and tp!930695 tp!930698))))

(declare-fun b!2900583 () Bool)

(declare-fun tp!930696 () Bool)

(declare-fun tp!930699 () Bool)

(assert (=> b!2900583 (= e!1831913 (and tp!930696 tp!930699))))

(assert (= (and b!2900333 ((_ is ElementMatch!8863) (regOne!18239 r!23079))) b!2900580))

(assert (= (and b!2900333 ((_ is Concat!14184) (regOne!18239 r!23079))) b!2900581))

(assert (= (and b!2900333 ((_ is Star!8863) (regOne!18239 r!23079))) b!2900582))

(assert (= (and b!2900333 ((_ is Union!8863) (regOne!18239 r!23079))) b!2900583))

(declare-fun b!2900586 () Bool)

(declare-fun e!1831914 () Bool)

(declare-fun tp!930702 () Bool)

(assert (=> b!2900586 (= e!1831914 tp!930702)))

(assert (=> b!2900333 (= tp!930676 e!1831914)))

(declare-fun b!2900584 () Bool)

(assert (=> b!2900584 (= e!1831914 tp_is_empty!15313)))

(declare-fun b!2900585 () Bool)

(declare-fun tp!930700 () Bool)

(declare-fun tp!930703 () Bool)

(assert (=> b!2900585 (= e!1831914 (and tp!930700 tp!930703))))

(declare-fun b!2900587 () Bool)

(declare-fun tp!930701 () Bool)

(declare-fun tp!930704 () Bool)

(assert (=> b!2900587 (= e!1831914 (and tp!930701 tp!930704))))

(assert (= (and b!2900333 ((_ is ElementMatch!8863) (regTwo!18239 r!23079))) b!2900584))

(assert (= (and b!2900333 ((_ is Concat!14184) (regTwo!18239 r!23079))) b!2900585))

(assert (= (and b!2900333 ((_ is Star!8863) (regTwo!18239 r!23079))) b!2900586))

(assert (= (and b!2900333 ((_ is Union!8863) (regTwo!18239 r!23079))) b!2900587))

(declare-fun b!2900590 () Bool)

(declare-fun e!1831915 () Bool)

(declare-fun tp!930707 () Bool)

(assert (=> b!2900590 (= e!1831915 tp!930707)))

(assert (=> b!2900332 (= tp!930678 e!1831915)))

(declare-fun b!2900588 () Bool)

(assert (=> b!2900588 (= e!1831915 tp_is_empty!15313)))

(declare-fun b!2900589 () Bool)

(declare-fun tp!930705 () Bool)

(declare-fun tp!930708 () Bool)

(assert (=> b!2900589 (= e!1831915 (and tp!930705 tp!930708))))

(declare-fun b!2900591 () Bool)

(declare-fun tp!930706 () Bool)

(declare-fun tp!930709 () Bool)

(assert (=> b!2900591 (= e!1831915 (and tp!930706 tp!930709))))

(assert (= (and b!2900332 ((_ is ElementMatch!8863) (regOne!18238 r!23079))) b!2900588))

(assert (= (and b!2900332 ((_ is Concat!14184) (regOne!18238 r!23079))) b!2900589))

(assert (= (and b!2900332 ((_ is Star!8863) (regOne!18238 r!23079))) b!2900590))

(assert (= (and b!2900332 ((_ is Union!8863) (regOne!18238 r!23079))) b!2900591))

(declare-fun b!2900594 () Bool)

(declare-fun e!1831916 () Bool)

(declare-fun tp!930712 () Bool)

(assert (=> b!2900594 (= e!1831916 tp!930712)))

(assert (=> b!2900332 (= tp!930675 e!1831916)))

(declare-fun b!2900592 () Bool)

(assert (=> b!2900592 (= e!1831916 tp_is_empty!15313)))

(declare-fun b!2900593 () Bool)

(declare-fun tp!930710 () Bool)

(declare-fun tp!930713 () Bool)

(assert (=> b!2900593 (= e!1831916 (and tp!930710 tp!930713))))

(declare-fun b!2900595 () Bool)

(declare-fun tp!930711 () Bool)

(declare-fun tp!930714 () Bool)

(assert (=> b!2900595 (= e!1831916 (and tp!930711 tp!930714))))

(assert (= (and b!2900332 ((_ is ElementMatch!8863) (regTwo!18238 r!23079))) b!2900592))

(assert (= (and b!2900332 ((_ is Concat!14184) (regTwo!18238 r!23079))) b!2900593))

(assert (= (and b!2900332 ((_ is Star!8863) (regTwo!18238 r!23079))) b!2900594))

(assert (= (and b!2900332 ((_ is Union!8863) (regTwo!18238 r!23079))) b!2900595))

(check-sat (not b!2900558) (not b!2900587) (not b!2900577) (not b!2900448) (not b!2900542) (not b!2900458) (not b!2900589) (not b!2900527) (not b!2900585) (not b!2900595) (not bm!188938) (not b!2900579) tp_is_empty!15313 (not b!2900409) (not b!2900453) (not b!2900591) (not b!2900451) (not bm!188962) (not b!2900590) (not b!2900582) (not b!2900594) (not bm!188965) (not b!2900583) (not bm!188963) (not bm!188961) (not d!835363) (not b!2900581) (not d!835369) (not bm!188946) (not b!2900578) (not bm!188959) (not b!2900454) (not bm!188939) (not b!2900456) (not b!2900593) (not b!2900586) (not bm!188964))
(check-sat)
(get-model)

(declare-fun d!835391 () Bool)

(assert (=> d!835391 (= (isEmpty!18857 (tail!4629 (get!10485 lt!1022112))) ((_ is Nil!34540) (tail!4629 (get!10485 lt!1022112))))))

(assert (=> b!2900453 d!835391))

(declare-fun d!835393 () Bool)

(assert (=> d!835393 (= (tail!4629 (get!10485 lt!1022112)) (t!233707 (get!10485 lt!1022112)))))

(assert (=> b!2900453 d!835393))

(declare-fun b!2900695 () Bool)

(declare-fun e!1831970 () Option!6536)

(declare-fun e!1831968 () Option!6536)

(assert (=> b!2900695 (= e!1831970 e!1831968)))

(declare-fun c!472615 () Bool)

(assert (=> b!2900695 (= c!472615 ((_ is EmptyLang!8863) (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))))))

(declare-fun b!2900696 () Bool)

(declare-fun e!1831969 () Option!6536)

(assert (=> b!2900696 (= e!1831969 (Some!6535 Nil!34540))))

(declare-fun b!2900697 () Bool)

(declare-fun e!1831972 () Option!6536)

(declare-fun call!188984 () Option!6536)

(assert (=> b!2900697 (= e!1831972 call!188984)))

(declare-fun b!2900698 () Bool)

(declare-fun c!472610 () Bool)

(assert (=> b!2900698 (= c!472610 ((_ is ElementMatch!8863) (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))))))

(declare-fun e!1831971 () Option!6536)

(assert (=> b!2900698 (= e!1831968 e!1831971)))

(declare-fun b!2900699 () Bool)

(assert (=> b!2900699 (= e!1831971 (Some!6535 (Cons!34540 (c!472498 (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))) Nil!34540)))))

(declare-fun d!835395 () Bool)

(declare-fun c!472612 () Bool)

(assert (=> d!835395 (= c!472612 ((_ is EmptyExpr!8863) (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))))))

(assert (=> d!835395 (= (getLanguageWitness!570 (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))) e!1831970)))

(declare-fun b!2900700 () Bool)

(declare-fun e!1831973 () Option!6536)

(assert (=> b!2900700 (= e!1831973 None!6535)))

(declare-fun b!2900701 () Bool)

(assert (=> b!2900701 (= e!1831968 None!6535)))

(declare-fun b!2900702 () Bool)

(declare-fun lt!1022151 () Option!6536)

(assert (=> b!2900702 (= e!1831972 lt!1022151)))

(declare-fun bm!188978 () Bool)

(declare-fun call!188983 () Option!6536)

(declare-fun c!472611 () Bool)

(assert (=> bm!188978 (= call!188983 (getLanguageWitness!570 (ite c!472611 (regOne!18239 (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))) (regTwo!18238 (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))))))))

(declare-fun b!2900703 () Bool)

(declare-fun e!1831967 () Option!6536)

(declare-fun lt!1022150 () Option!6536)

(declare-fun lt!1022149 () Option!6536)

(assert (=> b!2900703 (= e!1831967 (Some!6535 (++!8260 (v!34661 lt!1022150) (v!34661 lt!1022149))))))

(declare-fun b!2900704 () Bool)

(declare-fun c!472616 () Bool)

(assert (=> b!2900704 (= c!472616 ((_ is Some!6535) lt!1022149))))

(assert (=> b!2900704 (= lt!1022149 call!188983)))

(assert (=> b!2900704 (= e!1831973 e!1831967)))

(declare-fun b!2900705 () Bool)

(declare-fun e!1831966 () Option!6536)

(assert (=> b!2900705 (= e!1831966 e!1831973)))

(assert (=> b!2900705 (= lt!1022150 call!188984)))

(declare-fun c!472609 () Bool)

(assert (=> b!2900705 (= c!472609 ((_ is Some!6535) lt!1022150))))

(declare-fun b!2900706 () Bool)

(assert (=> b!2900706 (= e!1831966 e!1831972)))

(assert (=> b!2900706 (= lt!1022151 call!188983)))

(declare-fun c!472614 () Bool)

(assert (=> b!2900706 (= c!472614 ((_ is Some!6535) lt!1022151))))

(declare-fun b!2900707 () Bool)

(assert (=> b!2900707 (= c!472611 ((_ is Union!8863) (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))))))

(assert (=> b!2900707 (= e!1831969 e!1831966)))

(declare-fun b!2900708 () Bool)

(assert (=> b!2900708 (= e!1831970 (Some!6535 Nil!34540))))

(declare-fun b!2900709 () Bool)

(assert (=> b!2900709 (= e!1831971 e!1831969)))

(declare-fun c!472613 () Bool)

(assert (=> b!2900709 (= c!472613 ((_ is Star!8863) (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))))))

(declare-fun bm!188979 () Bool)

(assert (=> bm!188979 (= call!188984 (getLanguageWitness!570 (ite c!472611 (regTwo!18239 (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))) (regOne!18238 (ite c!472533 (regOne!18239 r!23079) (regTwo!18238 r!23079))))))))

(declare-fun b!2900710 () Bool)

(assert (=> b!2900710 (= e!1831967 None!6535)))

(assert (= (and d!835395 c!472612) b!2900708))

(assert (= (and d!835395 (not c!472612)) b!2900695))

(assert (= (and b!2900695 c!472615) b!2900701))

(assert (= (and b!2900695 (not c!472615)) b!2900698))

(assert (= (and b!2900698 c!472610) b!2900699))

(assert (= (and b!2900698 (not c!472610)) b!2900709))

(assert (= (and b!2900709 c!472613) b!2900696))

(assert (= (and b!2900709 (not c!472613)) b!2900707))

(assert (= (and b!2900707 c!472611) b!2900706))

(assert (= (and b!2900707 (not c!472611)) b!2900705))

(assert (= (and b!2900706 c!472614) b!2900702))

(assert (= (and b!2900706 (not c!472614)) b!2900697))

(assert (= (and b!2900705 c!472609) b!2900704))

(assert (= (and b!2900705 (not c!472609)) b!2900700))

(assert (= (and b!2900704 c!472616) b!2900703))

(assert (= (and b!2900704 (not c!472616)) b!2900710))

(assert (= (or b!2900697 b!2900705) bm!188979))

(assert (= (or b!2900706 b!2900704) bm!188978))

(declare-fun m!3306035 () Bool)

(assert (=> bm!188978 m!3306035))

(declare-fun m!3306037 () Bool)

(assert (=> b!2900703 m!3306037))

(declare-fun m!3306039 () Bool)

(assert (=> bm!188979 m!3306039))

(assert (=> bm!188938 d!835395))

(declare-fun b!2900719 () Bool)

(declare-fun e!1831978 () List!34664)

(assert (=> b!2900719 (= e!1831978 (v!34661 lt!1022143))))

(declare-fun b!2900721 () Bool)

(declare-fun res!1198877 () Bool)

(declare-fun e!1831979 () Bool)

(assert (=> b!2900721 (=> (not res!1198877) (not e!1831979))))

(declare-fun lt!1022154 () List!34664)

(declare-fun size!26354 (List!34664) Int)

(assert (=> b!2900721 (= res!1198877 (= (size!26354 lt!1022154) (+ (size!26354 (v!34661 lt!1022144)) (size!26354 (v!34661 lt!1022143)))))))

(declare-fun b!2900722 () Bool)

(assert (=> b!2900722 (= e!1831979 (or (not (= (v!34661 lt!1022143) Nil!34540)) (= lt!1022154 (v!34661 lt!1022144))))))

(declare-fun b!2900720 () Bool)

(assert (=> b!2900720 (= e!1831978 (Cons!34540 (h!39960 (v!34661 lt!1022144)) (++!8260 (t!233707 (v!34661 lt!1022144)) (v!34661 lt!1022143))))))

(declare-fun d!835397 () Bool)

(assert (=> d!835397 e!1831979))

(declare-fun res!1198876 () Bool)

(assert (=> d!835397 (=> (not res!1198876) (not e!1831979))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!4735 (List!34664) (InoxSet C!17908))

(assert (=> d!835397 (= res!1198876 (= (content!4735 lt!1022154) ((_ map or) (content!4735 (v!34661 lt!1022144)) (content!4735 (v!34661 lt!1022143)))))))

(assert (=> d!835397 (= lt!1022154 e!1831978)))

(declare-fun c!472619 () Bool)

(assert (=> d!835397 (= c!472619 ((_ is Nil!34540) (v!34661 lt!1022144)))))

(assert (=> d!835397 (= (++!8260 (v!34661 lt!1022144) (v!34661 lt!1022143)) lt!1022154)))

(assert (= (and d!835397 c!472619) b!2900719))

(assert (= (and d!835397 (not c!472619)) b!2900720))

(assert (= (and d!835397 res!1198876) b!2900721))

(assert (= (and b!2900721 res!1198877) b!2900722))

(declare-fun m!3306041 () Bool)

(assert (=> b!2900721 m!3306041))

(declare-fun m!3306043 () Bool)

(assert (=> b!2900721 m!3306043))

(declare-fun m!3306045 () Bool)

(assert (=> b!2900721 m!3306045))

(declare-fun m!3306047 () Bool)

(assert (=> b!2900720 m!3306047))

(declare-fun m!3306049 () Bool)

(assert (=> d!835397 m!3306049))

(declare-fun m!3306051 () Bool)

(assert (=> d!835397 m!3306051))

(declare-fun m!3306053 () Bool)

(assert (=> d!835397 m!3306053))

(assert (=> b!2900558 d!835397))

(declare-fun d!835399 () Bool)

(declare-fun nullableFct!842 (Regex!8863) Bool)

(assert (=> d!835399 (= (nullable!2762 r!23079) (nullableFct!842 r!23079))))

(declare-fun bs!524009 () Bool)

(assert (= bs!524009 d!835399))

(declare-fun m!3306055 () Bool)

(assert (=> bs!524009 m!3306055))

(assert (=> b!2900454 d!835399))

(declare-fun b!2900723 () Bool)

(declare-fun e!1831980 () List!34664)

(assert (=> b!2900723 (= e!1831980 (v!34661 lt!1022125))))

(declare-fun b!2900725 () Bool)

(declare-fun res!1198879 () Bool)

(declare-fun e!1831981 () Bool)

(assert (=> b!2900725 (=> (not res!1198879) (not e!1831981))))

(declare-fun lt!1022155 () List!34664)

(assert (=> b!2900725 (= res!1198879 (= (size!26354 lt!1022155) (+ (size!26354 (v!34661 lt!1022126)) (size!26354 (v!34661 lt!1022125)))))))

(declare-fun b!2900726 () Bool)

(assert (=> b!2900726 (= e!1831981 (or (not (= (v!34661 lt!1022125) Nil!34540)) (= lt!1022155 (v!34661 lt!1022126))))))

(declare-fun b!2900724 () Bool)

(assert (=> b!2900724 (= e!1831980 (Cons!34540 (h!39960 (v!34661 lt!1022126)) (++!8260 (t!233707 (v!34661 lt!1022126)) (v!34661 lt!1022125))))))

(declare-fun d!835401 () Bool)

(assert (=> d!835401 e!1831981))

(declare-fun res!1198878 () Bool)

(assert (=> d!835401 (=> (not res!1198878) (not e!1831981))))

(assert (=> d!835401 (= res!1198878 (= (content!4735 lt!1022155) ((_ map or) (content!4735 (v!34661 lt!1022126)) (content!4735 (v!34661 lt!1022125)))))))

(assert (=> d!835401 (= lt!1022155 e!1831980)))

(declare-fun c!472620 () Bool)

(assert (=> d!835401 (= c!472620 ((_ is Nil!34540) (v!34661 lt!1022126)))))

(assert (=> d!835401 (= (++!8260 (v!34661 lt!1022126) (v!34661 lt!1022125)) lt!1022155)))

(assert (= (and d!835401 c!472620) b!2900723))

(assert (= (and d!835401 (not c!472620)) b!2900724))

(assert (= (and d!835401 res!1198878) b!2900725))

(assert (= (and b!2900725 res!1198879) b!2900726))

(declare-fun m!3306057 () Bool)

(assert (=> b!2900725 m!3306057))

(declare-fun m!3306059 () Bool)

(assert (=> b!2900725 m!3306059))

(declare-fun m!3306061 () Bool)

(assert (=> b!2900725 m!3306061))

(declare-fun m!3306063 () Bool)

(assert (=> b!2900724 m!3306063))

(declare-fun m!3306065 () Bool)

(assert (=> d!835401 m!3306065))

(declare-fun m!3306067 () Bool)

(assert (=> d!835401 m!3306067))

(declare-fun m!3306069 () Bool)

(assert (=> d!835401 m!3306069))

(assert (=> b!2900409 d!835401))

(declare-fun b!2900727 () Bool)

(declare-fun res!1198880 () Bool)

(declare-fun e!1831986 () Bool)

(assert (=> b!2900727 (=> res!1198880 e!1831986)))

(assert (=> b!2900727 (= res!1198880 (not ((_ is Concat!14184) (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079)))))))

(declare-fun e!1831988 () Bool)

(assert (=> b!2900727 (= e!1831988 e!1831986)))

(declare-fun b!2900728 () Bool)

(declare-fun e!1831982 () Bool)

(declare-fun call!188986 () Bool)

(assert (=> b!2900728 (= e!1831982 call!188986)))

(declare-fun b!2900729 () Bool)

(declare-fun e!1831987 () Bool)

(declare-fun e!1831983 () Bool)

(assert (=> b!2900729 (= e!1831987 e!1831983)))

(declare-fun res!1198884 () Bool)

(assert (=> b!2900729 (= res!1198884 (not (nullable!2762 (reg!9192 (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079))))))))

(assert (=> b!2900729 (=> (not res!1198884) (not e!1831983))))

(declare-fun b!2900730 () Bool)

(declare-fun e!1831984 () Bool)

(assert (=> b!2900730 (= e!1831984 call!188986)))

(declare-fun b!2900731 () Bool)

(assert (=> b!2900731 (= e!1831986 e!1831982)))

(declare-fun res!1198881 () Bool)

(assert (=> b!2900731 (=> (not res!1198881) (not e!1831982))))

(declare-fun call!188987 () Bool)

(assert (=> b!2900731 (= res!1198881 call!188987)))

(declare-fun call!188985 () Bool)

(declare-fun c!472622 () Bool)

(declare-fun c!472621 () Bool)

(declare-fun bm!188980 () Bool)

(assert (=> bm!188980 (= call!188985 (validRegex!3636 (ite c!472622 (reg!9192 (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079))) (ite c!472621 (regOne!18239 (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079))) (regOne!18238 (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079)))))))))

(declare-fun bm!188981 () Bool)

(assert (=> bm!188981 (= call!188987 call!188985)))

(declare-fun b!2900733 () Bool)

(declare-fun e!1831985 () Bool)

(assert (=> b!2900733 (= e!1831985 e!1831987)))

(assert (=> b!2900733 (= c!472622 ((_ is Star!8863) (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079))))))

(declare-fun b!2900734 () Bool)

(declare-fun res!1198882 () Bool)

(assert (=> b!2900734 (=> (not res!1198882) (not e!1831984))))

(assert (=> b!2900734 (= res!1198882 call!188987)))

(assert (=> b!2900734 (= e!1831988 e!1831984)))

(declare-fun b!2900732 () Bool)

(assert (=> b!2900732 (= e!1831983 call!188985)))

(declare-fun d!835403 () Bool)

(declare-fun res!1198883 () Bool)

(assert (=> d!835403 (=> res!1198883 e!1831985)))

(assert (=> d!835403 (= res!1198883 ((_ is ElementMatch!8863) (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079))))))

(assert (=> d!835403 (= (validRegex!3636 (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079))) e!1831985)))

(declare-fun bm!188982 () Bool)

(assert (=> bm!188982 (= call!188986 (validRegex!3636 (ite c!472621 (regTwo!18239 (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079))) (regTwo!18238 (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079))))))))

(declare-fun b!2900735 () Bool)

(assert (=> b!2900735 (= e!1831987 e!1831988)))

(assert (=> b!2900735 (= c!472621 ((_ is Union!8863) (ite c!472576 (regTwo!18239 r!23079) (regTwo!18238 r!23079))))))

(assert (= (and d!835403 (not res!1198883)) b!2900733))

(assert (= (and b!2900733 c!472622) b!2900729))

(assert (= (and b!2900733 (not c!472622)) b!2900735))

(assert (= (and b!2900729 res!1198884) b!2900732))

(assert (= (and b!2900735 c!472621) b!2900734))

(assert (= (and b!2900735 (not c!472621)) b!2900727))

(assert (= (and b!2900734 res!1198882) b!2900730))

(assert (= (and b!2900727 (not res!1198880)) b!2900731))

(assert (= (and b!2900731 res!1198881) b!2900728))

(assert (= (or b!2900730 b!2900728) bm!188982))

(assert (= (or b!2900734 b!2900731) bm!188981))

(assert (= (or b!2900732 bm!188981) bm!188980))

(declare-fun m!3306071 () Bool)

(assert (=> b!2900729 m!3306071))

(declare-fun m!3306073 () Bool)

(assert (=> bm!188980 m!3306073))

(declare-fun m!3306075 () Bool)

(assert (=> bm!188982 m!3306075))

(assert (=> bm!188961 d!835403))

(declare-fun b!2900736 () Bool)

(declare-fun e!1831993 () Option!6536)

(declare-fun e!1831991 () Option!6536)

(assert (=> b!2900736 (= e!1831993 e!1831991)))

(declare-fun c!472629 () Bool)

(assert (=> b!2900736 (= c!472629 ((_ is EmptyLang!8863) (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))))))

(declare-fun b!2900737 () Bool)

(declare-fun e!1831992 () Option!6536)

(assert (=> b!2900737 (= e!1831992 (Some!6535 Nil!34540))))

(declare-fun b!2900738 () Bool)

(declare-fun e!1831995 () Option!6536)

(declare-fun call!188989 () Option!6536)

(assert (=> b!2900738 (= e!1831995 call!188989)))

(declare-fun b!2900739 () Bool)

(declare-fun c!472624 () Bool)

(assert (=> b!2900739 (= c!472624 ((_ is ElementMatch!8863) (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))))))

(declare-fun e!1831994 () Option!6536)

(assert (=> b!2900739 (= e!1831991 e!1831994)))

(declare-fun b!2900740 () Bool)

(assert (=> b!2900740 (= e!1831994 (Some!6535 (Cons!34540 (c!472498 (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))) Nil!34540)))))

(declare-fun d!835405 () Bool)

(declare-fun c!472626 () Bool)

(assert (=> d!835405 (= c!472626 ((_ is EmptyExpr!8863) (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))))))

(assert (=> d!835405 (= (getLanguageWitness!570 (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))) e!1831993)))

(declare-fun b!2900741 () Bool)

(declare-fun e!1831996 () Option!6536)

(assert (=> b!2900741 (= e!1831996 None!6535)))

(declare-fun b!2900742 () Bool)

(assert (=> b!2900742 (= e!1831991 None!6535)))

(declare-fun b!2900743 () Bool)

(declare-fun lt!1022158 () Option!6536)

(assert (=> b!2900743 (= e!1831995 lt!1022158)))

(declare-fun c!472625 () Bool)

(declare-fun call!188988 () Option!6536)

(declare-fun bm!188983 () Bool)

(assert (=> bm!188983 (= call!188988 (getLanguageWitness!570 (ite c!472625 (regOne!18239 (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))) (regTwo!18238 (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))))))))

(declare-fun b!2900744 () Bool)

(declare-fun e!1831990 () Option!6536)

(declare-fun lt!1022157 () Option!6536)

(declare-fun lt!1022156 () Option!6536)

(assert (=> b!2900744 (= e!1831990 (Some!6535 (++!8260 (v!34661 lt!1022157) (v!34661 lt!1022156))))))

(declare-fun b!2900745 () Bool)

(declare-fun c!472630 () Bool)

(assert (=> b!2900745 (= c!472630 ((_ is Some!6535) lt!1022156))))

(assert (=> b!2900745 (= lt!1022156 call!188988)))

(assert (=> b!2900745 (= e!1831996 e!1831990)))

(declare-fun b!2900746 () Bool)

(declare-fun e!1831989 () Option!6536)

(assert (=> b!2900746 (= e!1831989 e!1831996)))

(assert (=> b!2900746 (= lt!1022157 call!188989)))

(declare-fun c!472623 () Bool)

(assert (=> b!2900746 (= c!472623 ((_ is Some!6535) lt!1022157))))

(declare-fun b!2900747 () Bool)

(assert (=> b!2900747 (= e!1831989 e!1831995)))

(assert (=> b!2900747 (= lt!1022158 call!188988)))

(declare-fun c!472628 () Bool)

(assert (=> b!2900747 (= c!472628 ((_ is Some!6535) lt!1022158))))

(declare-fun b!2900748 () Bool)

(assert (=> b!2900748 (= c!472625 ((_ is Union!8863) (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))))))

(assert (=> b!2900748 (= e!1831992 e!1831989)))

(declare-fun b!2900749 () Bool)

(assert (=> b!2900749 (= e!1831993 (Some!6535 Nil!34540))))

(declare-fun b!2900750 () Bool)

(assert (=> b!2900750 (= e!1831994 e!1831992)))

(declare-fun c!472627 () Bool)

(assert (=> b!2900750 (= c!472627 ((_ is Star!8863) (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))))))

(declare-fun bm!188984 () Bool)

(assert (=> bm!188984 (= call!188989 (getLanguageWitness!570 (ite c!472625 (regTwo!18239 (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))) (regOne!18238 (ite c!472588 (regOne!18239 (regTwo!18238 r!23079)) (regTwo!18238 (regTwo!18238 r!23079)))))))))

(declare-fun b!2900751 () Bool)

(assert (=> b!2900751 (= e!1831990 None!6535)))

(assert (= (and d!835405 c!472626) b!2900749))

(assert (= (and d!835405 (not c!472626)) b!2900736))

(assert (= (and b!2900736 c!472629) b!2900742))

(assert (= (and b!2900736 (not c!472629)) b!2900739))

(assert (= (and b!2900739 c!472624) b!2900740))

(assert (= (and b!2900739 (not c!472624)) b!2900750))

(assert (= (and b!2900750 c!472627) b!2900737))

(assert (= (and b!2900750 (not c!472627)) b!2900748))

(assert (= (and b!2900748 c!472625) b!2900747))

(assert (= (and b!2900748 (not c!472625)) b!2900746))

(assert (= (and b!2900747 c!472628) b!2900743))

(assert (= (and b!2900747 (not c!472628)) b!2900738))

(assert (= (and b!2900746 c!472623) b!2900745))

(assert (= (and b!2900746 (not c!472623)) b!2900741))

(assert (= (and b!2900745 c!472630) b!2900744))

(assert (= (and b!2900745 (not c!472630)) b!2900751))

(assert (= (or b!2900738 b!2900746) bm!188984))

(assert (= (or b!2900747 b!2900745) bm!188983))

(declare-fun m!3306077 () Bool)

(assert (=> bm!188983 m!3306077))

(declare-fun m!3306079 () Bool)

(assert (=> b!2900744 m!3306079))

(declare-fun m!3306081 () Bool)

(assert (=> bm!188984 m!3306081))

(assert (=> bm!188964 d!835405))

(declare-fun d!835407 () Bool)

(assert (=> d!835407 (= (isEmpty!18857 (get!10485 lt!1022112)) ((_ is Nil!34540) (get!10485 lt!1022112)))))

(assert (=> d!835369 d!835407))

(assert (=> d!835369 d!835373))

(declare-fun d!835409 () Bool)

(assert (=> d!835409 (= (isEmpty!18856 lt!1022112) (not ((_ is Some!6535) lt!1022112)))))

(assert (=> d!835363 d!835409))

(declare-fun b!2900752 () Bool)

(declare-fun e!1832001 () Option!6536)

(declare-fun e!1831999 () Option!6536)

(assert (=> b!2900752 (= e!1832001 e!1831999)))

(declare-fun c!472637 () Bool)

(assert (=> b!2900752 (= c!472637 ((_ is EmptyLang!8863) (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))))))

(declare-fun b!2900753 () Bool)

(declare-fun e!1832000 () Option!6536)

(assert (=> b!2900753 (= e!1832000 (Some!6535 Nil!34540))))

(declare-fun b!2900754 () Bool)

(declare-fun e!1832003 () Option!6536)

(declare-fun call!188991 () Option!6536)

(assert (=> b!2900754 (= e!1832003 call!188991)))

(declare-fun b!2900755 () Bool)

(declare-fun c!472632 () Bool)

(assert (=> b!2900755 (= c!472632 ((_ is ElementMatch!8863) (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))))))

(declare-fun e!1832002 () Option!6536)

(assert (=> b!2900755 (= e!1831999 e!1832002)))

(declare-fun b!2900756 () Bool)

(assert (=> b!2900756 (= e!1832002 (Some!6535 (Cons!34540 (c!472498 (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))) Nil!34540)))))

(declare-fun d!835411 () Bool)

(declare-fun c!472634 () Bool)

(assert (=> d!835411 (= c!472634 ((_ is EmptyExpr!8863) (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))))))

(assert (=> d!835411 (= (getLanguageWitness!570 (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))) e!1832001)))

(declare-fun b!2900757 () Bool)

(declare-fun e!1832004 () Option!6536)

(assert (=> b!2900757 (= e!1832004 None!6535)))

(declare-fun b!2900758 () Bool)

(assert (=> b!2900758 (= e!1831999 None!6535)))

(declare-fun b!2900759 () Bool)

(declare-fun lt!1022161 () Option!6536)

(assert (=> b!2900759 (= e!1832003 lt!1022161)))

(declare-fun bm!188985 () Bool)

(declare-fun call!188990 () Option!6536)

(declare-fun c!472633 () Bool)

(assert (=> bm!188985 (= call!188990 (getLanguageWitness!570 (ite c!472633 (regOne!18239 (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))) (regTwo!18238 (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))))))))

(declare-fun b!2900760 () Bool)

(declare-fun e!1831998 () Option!6536)

(declare-fun lt!1022160 () Option!6536)

(declare-fun lt!1022159 () Option!6536)

(assert (=> b!2900760 (= e!1831998 (Some!6535 (++!8260 (v!34661 lt!1022160) (v!34661 lt!1022159))))))

(declare-fun b!2900761 () Bool)

(declare-fun c!472638 () Bool)

(assert (=> b!2900761 (= c!472638 ((_ is Some!6535) lt!1022159))))

(assert (=> b!2900761 (= lt!1022159 call!188990)))

(assert (=> b!2900761 (= e!1832004 e!1831998)))

(declare-fun b!2900762 () Bool)

(declare-fun e!1831997 () Option!6536)

(assert (=> b!2900762 (= e!1831997 e!1832004)))

(assert (=> b!2900762 (= lt!1022160 call!188991)))

(declare-fun c!472631 () Bool)

(assert (=> b!2900762 (= c!472631 ((_ is Some!6535) lt!1022160))))

(declare-fun b!2900763 () Bool)

(assert (=> b!2900763 (= e!1831997 e!1832003)))

(assert (=> b!2900763 (= lt!1022161 call!188990)))

(declare-fun c!472636 () Bool)

(assert (=> b!2900763 (= c!472636 ((_ is Some!6535) lt!1022161))))

(declare-fun b!2900764 () Bool)

(assert (=> b!2900764 (= c!472633 ((_ is Union!8863) (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))))))

(assert (=> b!2900764 (= e!1832000 e!1831997)))

(declare-fun b!2900765 () Bool)

(assert (=> b!2900765 (= e!1832001 (Some!6535 Nil!34540))))

(declare-fun b!2900766 () Bool)

(assert (=> b!2900766 (= e!1832002 e!1832000)))

(declare-fun c!472635 () Bool)

(assert (=> b!2900766 (= c!472635 ((_ is Star!8863) (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))))))

(declare-fun bm!188986 () Bool)

(assert (=> bm!188986 (= call!188991 (getLanguageWitness!570 (ite c!472633 (regTwo!18239 (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))) (regOne!18238 (ite c!472533 (regTwo!18239 r!23079) (regOne!18238 r!23079))))))))

(declare-fun b!2900767 () Bool)

(assert (=> b!2900767 (= e!1831998 None!6535)))

(assert (= (and d!835411 c!472634) b!2900765))

(assert (= (and d!835411 (not c!472634)) b!2900752))

(assert (= (and b!2900752 c!472637) b!2900758))

(assert (= (and b!2900752 (not c!472637)) b!2900755))

(assert (= (and b!2900755 c!472632) b!2900756))

(assert (= (and b!2900755 (not c!472632)) b!2900766))

(assert (= (and b!2900766 c!472635) b!2900753))

(assert (= (and b!2900766 (not c!472635)) b!2900764))

(assert (= (and b!2900764 c!472633) b!2900763))

(assert (= (and b!2900764 (not c!472633)) b!2900762))

(assert (= (and b!2900763 c!472636) b!2900759))

(assert (= (and b!2900763 (not c!472636)) b!2900754))

(assert (= (and b!2900762 c!472631) b!2900761))

(assert (= (and b!2900762 (not c!472631)) b!2900757))

(assert (= (and b!2900761 c!472638) b!2900760))

(assert (= (and b!2900761 (not c!472638)) b!2900767))

(assert (= (or b!2900754 b!2900762) bm!188986))

(assert (= (or b!2900763 b!2900761) bm!188985))

(declare-fun m!3306083 () Bool)

(assert (=> bm!188985 m!3306083))

(declare-fun m!3306085 () Bool)

(assert (=> b!2900760 m!3306085))

(declare-fun m!3306087 () Bool)

(assert (=> bm!188986 m!3306087))

(assert (=> bm!188939 d!835411))

(declare-fun b!2900768 () Bool)

(declare-fun e!1832009 () Option!6536)

(declare-fun e!1832007 () Option!6536)

(assert (=> b!2900768 (= e!1832009 e!1832007)))

(declare-fun c!472645 () Bool)

(assert (=> b!2900768 (= c!472645 ((_ is EmptyLang!8863) (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))))))

(declare-fun b!2900769 () Bool)

(declare-fun e!1832008 () Option!6536)

(assert (=> b!2900769 (= e!1832008 (Some!6535 Nil!34540))))

(declare-fun b!2900770 () Bool)

(declare-fun e!1832011 () Option!6536)

(declare-fun call!188993 () Option!6536)

(assert (=> b!2900770 (= e!1832011 call!188993)))

(declare-fun b!2900771 () Bool)

(declare-fun c!472640 () Bool)

(assert (=> b!2900771 (= c!472640 ((_ is ElementMatch!8863) (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))))))

(declare-fun e!1832010 () Option!6536)

(assert (=> b!2900771 (= e!1832007 e!1832010)))

(declare-fun b!2900772 () Bool)

(assert (=> b!2900772 (= e!1832010 (Some!6535 (Cons!34540 (c!472498 (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))) Nil!34540)))))

(declare-fun d!835413 () Bool)

(declare-fun c!472642 () Bool)

(assert (=> d!835413 (= c!472642 ((_ is EmptyExpr!8863) (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))))))

(assert (=> d!835413 (= (getLanguageWitness!570 (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))) e!1832009)))

(declare-fun b!2900773 () Bool)

(declare-fun e!1832012 () Option!6536)

(assert (=> b!2900773 (= e!1832012 None!6535)))

(declare-fun b!2900774 () Bool)

(assert (=> b!2900774 (= e!1832007 None!6535)))

(declare-fun b!2900775 () Bool)

(declare-fun lt!1022164 () Option!6536)

(assert (=> b!2900775 (= e!1832011 lt!1022164)))

(declare-fun bm!188987 () Bool)

(declare-fun call!188992 () Option!6536)

(declare-fun c!472641 () Bool)

(assert (=> bm!188987 (= call!188992 (getLanguageWitness!570 (ite c!472641 (regOne!18239 (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))) (regTwo!18238 (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))))))))

(declare-fun b!2900776 () Bool)

(declare-fun e!1832006 () Option!6536)

(declare-fun lt!1022163 () Option!6536)

(declare-fun lt!1022162 () Option!6536)

(assert (=> b!2900776 (= e!1832006 (Some!6535 (++!8260 (v!34661 lt!1022163) (v!34661 lt!1022162))))))

(declare-fun b!2900777 () Bool)

(declare-fun c!472646 () Bool)

(assert (=> b!2900777 (= c!472646 ((_ is Some!6535) lt!1022162))))

(assert (=> b!2900777 (= lt!1022162 call!188992)))

(assert (=> b!2900777 (= e!1832012 e!1832006)))

(declare-fun b!2900778 () Bool)

(declare-fun e!1832005 () Option!6536)

(assert (=> b!2900778 (= e!1832005 e!1832012)))

(assert (=> b!2900778 (= lt!1022163 call!188993)))

(declare-fun c!472639 () Bool)

(assert (=> b!2900778 (= c!472639 ((_ is Some!6535) lt!1022163))))

(declare-fun b!2900779 () Bool)

(assert (=> b!2900779 (= e!1832005 e!1832011)))

(assert (=> b!2900779 (= lt!1022164 call!188992)))

(declare-fun c!472644 () Bool)

(assert (=> b!2900779 (= c!472644 ((_ is Some!6535) lt!1022164))))

(declare-fun b!2900780 () Bool)

(assert (=> b!2900780 (= c!472641 ((_ is Union!8863) (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))))))

(assert (=> b!2900780 (= e!1832008 e!1832005)))

(declare-fun b!2900781 () Bool)

(assert (=> b!2900781 (= e!1832009 (Some!6535 Nil!34540))))

(declare-fun b!2900782 () Bool)

(assert (=> b!2900782 (= e!1832010 e!1832008)))

(declare-fun c!472643 () Bool)

(assert (=> b!2900782 (= c!472643 ((_ is Star!8863) (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))))))

(declare-fun bm!188988 () Bool)

(assert (=> bm!188988 (= call!188993 (getLanguageWitness!570 (ite c!472641 (regTwo!18239 (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))) (regOne!18238 (ite c!472580 (regOne!18239 (regOne!18238 r!23079)) (regTwo!18238 (regOne!18238 r!23079)))))))))

(declare-fun b!2900783 () Bool)

(assert (=> b!2900783 (= e!1832006 None!6535)))

(assert (= (and d!835413 c!472642) b!2900781))

(assert (= (and d!835413 (not c!472642)) b!2900768))

(assert (= (and b!2900768 c!472645) b!2900774))

(assert (= (and b!2900768 (not c!472645)) b!2900771))

(assert (= (and b!2900771 c!472640) b!2900772))

(assert (= (and b!2900771 (not c!472640)) b!2900782))

(assert (= (and b!2900782 c!472643) b!2900769))

(assert (= (and b!2900782 (not c!472643)) b!2900780))

(assert (= (and b!2900780 c!472641) b!2900779))

(assert (= (and b!2900780 (not c!472641)) b!2900778))

(assert (= (and b!2900779 c!472644) b!2900775))

(assert (= (and b!2900779 (not c!472644)) b!2900770))

(assert (= (and b!2900778 c!472639) b!2900777))

(assert (= (and b!2900778 (not c!472639)) b!2900773))

(assert (= (and b!2900777 c!472646) b!2900776))

(assert (= (and b!2900777 (not c!472646)) b!2900783))

(assert (= (or b!2900770 b!2900778) bm!188988))

(assert (= (or b!2900779 b!2900777) bm!188987))

(declare-fun m!3306089 () Bool)

(assert (=> bm!188987 m!3306089))

(declare-fun m!3306091 () Bool)

(assert (=> b!2900776 m!3306091))

(declare-fun m!3306093 () Bool)

(assert (=> bm!188988 m!3306093))

(assert (=> bm!188962 d!835413))

(declare-fun b!2900784 () Bool)

(declare-fun e!1832013 () List!34664)

(assert (=> b!2900784 (= e!1832013 (v!34661 lt!1022140))))

(declare-fun b!2900786 () Bool)

(declare-fun res!1198886 () Bool)

(declare-fun e!1832014 () Bool)

(assert (=> b!2900786 (=> (not res!1198886) (not e!1832014))))

(declare-fun lt!1022165 () List!34664)

(assert (=> b!2900786 (= res!1198886 (= (size!26354 lt!1022165) (+ (size!26354 (v!34661 lt!1022141)) (size!26354 (v!34661 lt!1022140)))))))

(declare-fun b!2900787 () Bool)

(assert (=> b!2900787 (= e!1832014 (or (not (= (v!34661 lt!1022140) Nil!34540)) (= lt!1022165 (v!34661 lt!1022141))))))

(declare-fun b!2900785 () Bool)

(assert (=> b!2900785 (= e!1832013 (Cons!34540 (h!39960 (v!34661 lt!1022141)) (++!8260 (t!233707 (v!34661 lt!1022141)) (v!34661 lt!1022140))))))

(declare-fun d!835415 () Bool)

(assert (=> d!835415 e!1832014))

(declare-fun res!1198885 () Bool)

(assert (=> d!835415 (=> (not res!1198885) (not e!1832014))))

(assert (=> d!835415 (= res!1198885 (= (content!4735 lt!1022165) ((_ map or) (content!4735 (v!34661 lt!1022141)) (content!4735 (v!34661 lt!1022140)))))))

(assert (=> d!835415 (= lt!1022165 e!1832013)))

(declare-fun c!472647 () Bool)

(assert (=> d!835415 (= c!472647 ((_ is Nil!34540) (v!34661 lt!1022141)))))

(assert (=> d!835415 (= (++!8260 (v!34661 lt!1022141) (v!34661 lt!1022140)) lt!1022165)))

(assert (= (and d!835415 c!472647) b!2900784))

(assert (= (and d!835415 (not c!472647)) b!2900785))

(assert (= (and d!835415 res!1198885) b!2900786))

(assert (= (and b!2900786 res!1198886) b!2900787))

(declare-fun m!3306095 () Bool)

(assert (=> b!2900786 m!3306095))

(declare-fun m!3306097 () Bool)

(assert (=> b!2900786 m!3306097))

(declare-fun m!3306099 () Bool)

(assert (=> b!2900786 m!3306099))

(declare-fun m!3306101 () Bool)

(assert (=> b!2900785 m!3306101))

(declare-fun m!3306103 () Bool)

(assert (=> d!835415 m!3306103))

(declare-fun m!3306105 () Bool)

(assert (=> d!835415 m!3306105))

(declare-fun m!3306107 () Bool)

(assert (=> d!835415 m!3306107))

(assert (=> b!2900542 d!835415))

(declare-fun d!835417 () Bool)

(assert (=> d!835417 (= (head!6404 (get!10485 lt!1022112)) (h!39960 (get!10485 lt!1022112)))))

(assert (=> b!2900451 d!835417))

(declare-fun b!2900788 () Bool)

(declare-fun e!1832019 () Option!6536)

(declare-fun e!1832017 () Option!6536)

(assert (=> b!2900788 (= e!1832019 e!1832017)))

(declare-fun c!472654 () Bool)

(assert (=> b!2900788 (= c!472654 ((_ is EmptyLang!8863) (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))))))

(declare-fun b!2900789 () Bool)

(declare-fun e!1832018 () Option!6536)

(assert (=> b!2900789 (= e!1832018 (Some!6535 Nil!34540))))

(declare-fun b!2900790 () Bool)

(declare-fun e!1832021 () Option!6536)

(declare-fun call!188995 () Option!6536)

(assert (=> b!2900790 (= e!1832021 call!188995)))

(declare-fun b!2900791 () Bool)

(declare-fun c!472649 () Bool)

(assert (=> b!2900791 (= c!472649 ((_ is ElementMatch!8863) (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))))))

(declare-fun e!1832020 () Option!6536)

(assert (=> b!2900791 (= e!1832017 e!1832020)))

(declare-fun b!2900792 () Bool)

(assert (=> b!2900792 (= e!1832020 (Some!6535 (Cons!34540 (c!472498 (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))) Nil!34540)))))

(declare-fun d!835419 () Bool)

(declare-fun c!472651 () Bool)

(assert (=> d!835419 (= c!472651 ((_ is EmptyExpr!8863) (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))))))

(assert (=> d!835419 (= (getLanguageWitness!570 (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))) e!1832019)))

(declare-fun b!2900793 () Bool)

(declare-fun e!1832022 () Option!6536)

(assert (=> b!2900793 (= e!1832022 None!6535)))

(declare-fun b!2900794 () Bool)

(assert (=> b!2900794 (= e!1832017 None!6535)))

(declare-fun b!2900795 () Bool)

(declare-fun lt!1022168 () Option!6536)

(assert (=> b!2900795 (= e!1832021 lt!1022168)))

(declare-fun c!472650 () Bool)

(declare-fun bm!188989 () Bool)

(declare-fun call!188994 () Option!6536)

(assert (=> bm!188989 (= call!188994 (getLanguageWitness!570 (ite c!472650 (regOne!18239 (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))) (regTwo!18238 (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))))))))

(declare-fun b!2900796 () Bool)

(declare-fun e!1832016 () Option!6536)

(declare-fun lt!1022167 () Option!6536)

(declare-fun lt!1022166 () Option!6536)

(assert (=> b!2900796 (= e!1832016 (Some!6535 (++!8260 (v!34661 lt!1022167) (v!34661 lt!1022166))))))

(declare-fun b!2900797 () Bool)

(declare-fun c!472655 () Bool)

(assert (=> b!2900797 (= c!472655 ((_ is Some!6535) lt!1022166))))

(assert (=> b!2900797 (= lt!1022166 call!188994)))

(assert (=> b!2900797 (= e!1832022 e!1832016)))

(declare-fun b!2900798 () Bool)

(declare-fun e!1832015 () Option!6536)

(assert (=> b!2900798 (= e!1832015 e!1832022)))

(assert (=> b!2900798 (= lt!1022167 call!188995)))

(declare-fun c!472648 () Bool)

(assert (=> b!2900798 (= c!472648 ((_ is Some!6535) lt!1022167))))

(declare-fun b!2900799 () Bool)

(assert (=> b!2900799 (= e!1832015 e!1832021)))

(assert (=> b!2900799 (= lt!1022168 call!188994)))

(declare-fun c!472653 () Bool)

(assert (=> b!2900799 (= c!472653 ((_ is Some!6535) lt!1022168))))

(declare-fun b!2900800 () Bool)

(assert (=> b!2900800 (= c!472650 ((_ is Union!8863) (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))))))

(assert (=> b!2900800 (= e!1832018 e!1832015)))

(declare-fun b!2900801 () Bool)

(assert (=> b!2900801 (= e!1832019 (Some!6535 Nil!34540))))

(declare-fun b!2900802 () Bool)

(assert (=> b!2900802 (= e!1832020 e!1832018)))

(declare-fun c!472652 () Bool)

(assert (=> b!2900802 (= c!472652 ((_ is Star!8863) (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))))))

(declare-fun bm!188990 () Bool)

(assert (=> bm!188990 (= call!188995 (getLanguageWitness!570 (ite c!472650 (regTwo!18239 (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))) (regOne!18238 (ite c!472588 (regTwo!18239 (regTwo!18238 r!23079)) (regOne!18238 (regTwo!18238 r!23079)))))))))

(declare-fun b!2900803 () Bool)

(assert (=> b!2900803 (= e!1832016 None!6535)))

(assert (= (and d!835419 c!472651) b!2900801))

(assert (= (and d!835419 (not c!472651)) b!2900788))

(assert (= (and b!2900788 c!472654) b!2900794))

(assert (= (and b!2900788 (not c!472654)) b!2900791))

(assert (= (and b!2900791 c!472649) b!2900792))

(assert (= (and b!2900791 (not c!472649)) b!2900802))

(assert (= (and b!2900802 c!472652) b!2900789))

(assert (= (and b!2900802 (not c!472652)) b!2900800))

(assert (= (and b!2900800 c!472650) b!2900799))

(assert (= (and b!2900800 (not c!472650)) b!2900798))

(assert (= (and b!2900799 c!472653) b!2900795))

(assert (= (and b!2900799 (not c!472653)) b!2900790))

(assert (= (and b!2900798 c!472648) b!2900797))

(assert (= (and b!2900798 (not c!472648)) b!2900793))

(assert (= (and b!2900797 c!472655) b!2900796))

(assert (= (and b!2900797 (not c!472655)) b!2900803))

(assert (= (or b!2900790 b!2900798) bm!188990))

(assert (= (or b!2900799 b!2900797) bm!188989))

(declare-fun m!3306109 () Bool)

(assert (=> bm!188989 m!3306109))

(declare-fun m!3306111 () Bool)

(assert (=> b!2900796 m!3306111))

(declare-fun m!3306113 () Bool)

(assert (=> bm!188990 m!3306113))

(assert (=> bm!188965 d!835419))

(declare-fun b!2900804 () Bool)

(declare-fun res!1198887 () Bool)

(declare-fun e!1832027 () Bool)

(assert (=> b!2900804 (=> res!1198887 e!1832027)))

(assert (=> b!2900804 (= res!1198887 (not ((_ is Concat!14184) (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079))))))))

(declare-fun e!1832029 () Bool)

(assert (=> b!2900804 (= e!1832029 e!1832027)))

(declare-fun b!2900805 () Bool)

(declare-fun e!1832023 () Bool)

(declare-fun call!188997 () Bool)

(assert (=> b!2900805 (= e!1832023 call!188997)))

(declare-fun b!2900806 () Bool)

(declare-fun e!1832028 () Bool)

(declare-fun e!1832024 () Bool)

(assert (=> b!2900806 (= e!1832028 e!1832024)))

(declare-fun res!1198891 () Bool)

(assert (=> b!2900806 (= res!1198891 (not (nullable!2762 (reg!9192 (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079)))))))))

(assert (=> b!2900806 (=> (not res!1198891) (not e!1832024))))

(declare-fun b!2900807 () Bool)

(declare-fun e!1832025 () Bool)

(assert (=> b!2900807 (= e!1832025 call!188997)))

(declare-fun b!2900808 () Bool)

(assert (=> b!2900808 (= e!1832027 e!1832023)))

(declare-fun res!1198888 () Bool)

(assert (=> b!2900808 (=> (not res!1198888) (not e!1832023))))

(declare-fun call!188998 () Bool)

(assert (=> b!2900808 (= res!1198888 call!188998)))

(declare-fun c!472656 () Bool)

(declare-fun bm!188991 () Bool)

(declare-fun call!188996 () Bool)

(declare-fun c!472657 () Bool)

(assert (=> bm!188991 (= call!188996 (validRegex!3636 (ite c!472657 (reg!9192 (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079)))) (ite c!472656 (regOne!18239 (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079)))) (regOne!18238 (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079))))))))))

(declare-fun bm!188992 () Bool)

(assert (=> bm!188992 (= call!188998 call!188996)))

(declare-fun b!2900810 () Bool)

(declare-fun e!1832026 () Bool)

(assert (=> b!2900810 (= e!1832026 e!1832028)))

(assert (=> b!2900810 (= c!472657 ((_ is Star!8863) (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079)))))))

(declare-fun b!2900811 () Bool)

(declare-fun res!1198889 () Bool)

(assert (=> b!2900811 (=> (not res!1198889) (not e!1832025))))

(assert (=> b!2900811 (= res!1198889 call!188998)))

(assert (=> b!2900811 (= e!1832029 e!1832025)))

(declare-fun b!2900809 () Bool)

(assert (=> b!2900809 (= e!1832024 call!188996)))

(declare-fun d!835421 () Bool)

(declare-fun res!1198890 () Bool)

(assert (=> d!835421 (=> res!1198890 e!1832026)))

(assert (=> d!835421 (= res!1198890 ((_ is ElementMatch!8863) (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079)))))))

(assert (=> d!835421 (= (validRegex!3636 (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079)))) e!1832026)))

(declare-fun bm!188993 () Bool)

(assert (=> bm!188993 (= call!188997 (validRegex!3636 (ite c!472656 (regTwo!18239 (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079)))) (regTwo!18238 (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079)))))))))

(declare-fun b!2900812 () Bool)

(assert (=> b!2900812 (= e!1832028 e!1832029)))

(assert (=> b!2900812 (= c!472656 ((_ is Union!8863) (ite c!472577 (reg!9192 r!23079) (ite c!472576 (regOne!18239 r!23079) (regOne!18238 r!23079)))))))

(assert (= (and d!835421 (not res!1198890)) b!2900810))

(assert (= (and b!2900810 c!472657) b!2900806))

(assert (= (and b!2900810 (not c!472657)) b!2900812))

(assert (= (and b!2900806 res!1198891) b!2900809))

(assert (= (and b!2900812 c!472656) b!2900811))

(assert (= (and b!2900812 (not c!472656)) b!2900804))

(assert (= (and b!2900811 res!1198889) b!2900807))

(assert (= (and b!2900804 (not res!1198887)) b!2900808))

(assert (= (and b!2900808 res!1198888) b!2900805))

(assert (= (or b!2900807 b!2900805) bm!188993))

(assert (= (or b!2900811 b!2900808) bm!188992))

(assert (= (or b!2900809 bm!188992) bm!188991))

(declare-fun m!3306115 () Bool)

(assert (=> b!2900806 m!3306115))

(declare-fun m!3306117 () Bool)

(assert (=> bm!188991 m!3306117))

(declare-fun m!3306119 () Bool)

(assert (=> bm!188993 m!3306119))

(assert (=> bm!188959 d!835421))

(declare-fun b!2900813 () Bool)

(declare-fun res!1198899 () Bool)

(declare-fun e!1832030 () Bool)

(assert (=> b!2900813 (=> res!1198899 e!1832030)))

(assert (=> b!2900813 (= res!1198899 (not ((_ is ElementMatch!8863) (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112))))))))

(declare-fun e!1832035 () Bool)

(assert (=> b!2900813 (= e!1832035 e!1832030)))

(declare-fun b!2900814 () Bool)

(declare-fun e!1832031 () Bool)

(assert (=> b!2900814 (= e!1832030 e!1832031)))

(declare-fun res!1198893 () Bool)

(assert (=> b!2900814 (=> (not res!1198893) (not e!1832031))))

(declare-fun lt!1022169 () Bool)

(assert (=> b!2900814 (= res!1198893 (not lt!1022169))))

(declare-fun b!2900815 () Bool)

(assert (=> b!2900815 (= e!1832035 (not lt!1022169))))

(declare-fun b!2900816 () Bool)

(declare-fun e!1832036 () Bool)

(assert (=> b!2900816 (= e!1832036 (matchR!3821 (derivativeStep!2375 (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112))) (head!6404 (tail!4629 (get!10485 lt!1022112)))) (tail!4629 (tail!4629 (get!10485 lt!1022112)))))))

(declare-fun b!2900817 () Bool)

(declare-fun e!1832032 () Bool)

(declare-fun call!188999 () Bool)

(assert (=> b!2900817 (= e!1832032 (= lt!1022169 call!188999))))

(declare-fun b!2900818 () Bool)

(declare-fun res!1198898 () Bool)

(declare-fun e!1832033 () Bool)

(assert (=> b!2900818 (=> (not res!1198898) (not e!1832033))))

(assert (=> b!2900818 (= res!1198898 (not call!188999))))

(declare-fun b!2900819 () Bool)

(declare-fun e!1832034 () Bool)

(assert (=> b!2900819 (= e!1832034 (not (= (head!6404 (tail!4629 (get!10485 lt!1022112))) (c!472498 (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112)))))))))

(declare-fun b!2900820 () Bool)

(assert (=> b!2900820 (= e!1832031 e!1832034)))

(declare-fun res!1198892 () Bool)

(assert (=> b!2900820 (=> res!1198892 e!1832034)))

(assert (=> b!2900820 (= res!1198892 call!188999)))

(declare-fun b!2900821 () Bool)

(declare-fun res!1198897 () Bool)

(assert (=> b!2900821 (=> res!1198897 e!1832034)))

(assert (=> b!2900821 (= res!1198897 (not (isEmpty!18857 (tail!4629 (tail!4629 (get!10485 lt!1022112))))))))

(declare-fun b!2900822 () Bool)

(assert (=> b!2900822 (= e!1832036 (nullable!2762 (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112)))))))

(declare-fun b!2900823 () Bool)

(assert (=> b!2900823 (= e!1832032 e!1832035)))

(declare-fun c!472658 () Bool)

(assert (=> b!2900823 (= c!472658 ((_ is EmptyLang!8863) (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112)))))))

(declare-fun d!835423 () Bool)

(assert (=> d!835423 e!1832032))

(declare-fun c!472660 () Bool)

(assert (=> d!835423 (= c!472660 ((_ is EmptyExpr!8863) (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112)))))))

(assert (=> d!835423 (= lt!1022169 e!1832036)))

(declare-fun c!472659 () Bool)

(assert (=> d!835423 (= c!472659 (isEmpty!18857 (tail!4629 (get!10485 lt!1022112))))))

(assert (=> d!835423 (validRegex!3636 (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112))))))

(assert (=> d!835423 (= (matchR!3821 (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112))) (tail!4629 (get!10485 lt!1022112))) lt!1022169)))

(declare-fun bm!188994 () Bool)

(assert (=> bm!188994 (= call!188999 (isEmpty!18857 (tail!4629 (get!10485 lt!1022112))))))

(declare-fun b!2900824 () Bool)

(assert (=> b!2900824 (= e!1832033 (= (head!6404 (tail!4629 (get!10485 lt!1022112))) (c!472498 (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112))))))))

(declare-fun b!2900825 () Bool)

(declare-fun res!1198894 () Bool)

(assert (=> b!2900825 (=> res!1198894 e!1832030)))

(assert (=> b!2900825 (= res!1198894 e!1832033)))

(declare-fun res!1198896 () Bool)

(assert (=> b!2900825 (=> (not res!1198896) (not e!1832033))))

(assert (=> b!2900825 (= res!1198896 lt!1022169)))

(declare-fun b!2900826 () Bool)

(declare-fun res!1198895 () Bool)

(assert (=> b!2900826 (=> (not res!1198895) (not e!1832033))))

(assert (=> b!2900826 (= res!1198895 (isEmpty!18857 (tail!4629 (tail!4629 (get!10485 lt!1022112)))))))

(assert (= (and d!835423 c!472659) b!2900822))

(assert (= (and d!835423 (not c!472659)) b!2900816))

(assert (= (and d!835423 c!472660) b!2900817))

(assert (= (and d!835423 (not c!472660)) b!2900823))

(assert (= (and b!2900823 c!472658) b!2900815))

(assert (= (and b!2900823 (not c!472658)) b!2900813))

(assert (= (and b!2900813 (not res!1198899)) b!2900825))

(assert (= (and b!2900825 res!1198896) b!2900818))

(assert (= (and b!2900818 res!1198898) b!2900826))

(assert (= (and b!2900826 res!1198895) b!2900824))

(assert (= (and b!2900825 (not res!1198894)) b!2900814))

(assert (= (and b!2900814 res!1198893) b!2900820))

(assert (= (and b!2900820 (not res!1198892)) b!2900821))

(assert (= (and b!2900821 (not res!1198897)) b!2900819))

(assert (= (or b!2900817 b!2900818 b!2900820) bm!188994))

(assert (=> d!835423 m!3305965))

(assert (=> d!835423 m!3305967))

(assert (=> d!835423 m!3305971))

(declare-fun m!3306121 () Bool)

(assert (=> d!835423 m!3306121))

(assert (=> b!2900826 m!3305965))

(declare-fun m!3306123 () Bool)

(assert (=> b!2900826 m!3306123))

(assert (=> b!2900826 m!3306123))

(declare-fun m!3306125 () Bool)

(assert (=> b!2900826 m!3306125))

(assert (=> b!2900819 m!3305965))

(declare-fun m!3306127 () Bool)

(assert (=> b!2900819 m!3306127))

(assert (=> b!2900816 m!3305965))

(assert (=> b!2900816 m!3306127))

(assert (=> b!2900816 m!3305971))

(assert (=> b!2900816 m!3306127))

(declare-fun m!3306129 () Bool)

(assert (=> b!2900816 m!3306129))

(assert (=> b!2900816 m!3305965))

(assert (=> b!2900816 m!3306123))

(assert (=> b!2900816 m!3306129))

(assert (=> b!2900816 m!3306123))

(declare-fun m!3306131 () Bool)

(assert (=> b!2900816 m!3306131))

(assert (=> b!2900824 m!3305965))

(assert (=> b!2900824 m!3306127))

(assert (=> b!2900821 m!3305965))

(assert (=> b!2900821 m!3306123))

(assert (=> b!2900821 m!3306123))

(assert (=> b!2900821 m!3306125))

(assert (=> b!2900822 m!3305971))

(declare-fun m!3306133 () Bool)

(assert (=> b!2900822 m!3306133))

(assert (=> bm!188994 m!3305965))

(assert (=> bm!188994 m!3305967))

(assert (=> b!2900448 d!835423))

(declare-fun b!2900847 () Bool)

(declare-fun e!1832049 () Regex!8863)

(declare-fun e!1832048 () Regex!8863)

(assert (=> b!2900847 (= e!1832049 e!1832048)))

(declare-fun c!472671 () Bool)

(assert (=> b!2900847 (= c!472671 ((_ is ElementMatch!8863) r!23079))))

(declare-fun b!2900848 () Bool)

(declare-fun c!472674 () Bool)

(assert (=> b!2900848 (= c!472674 (nullable!2762 (regOne!18238 r!23079)))))

(declare-fun e!1832047 () Regex!8863)

(declare-fun e!1832051 () Regex!8863)

(assert (=> b!2900848 (= e!1832047 e!1832051)))

(declare-fun b!2900849 () Bool)

(assert (=> b!2900849 (= e!1832048 (ite (= (head!6404 (get!10485 lt!1022112)) (c!472498 r!23079)) EmptyExpr!8863 EmptyLang!8863))))

(declare-fun c!472673 () Bool)

(declare-fun call!189008 () Regex!8863)

(declare-fun bm!189003 () Bool)

(assert (=> bm!189003 (= call!189008 (derivativeStep!2375 (ite c!472673 (regTwo!18239 r!23079) (regTwo!18238 r!23079)) (head!6404 (get!10485 lt!1022112))))))

(declare-fun b!2900850 () Bool)

(assert (=> b!2900850 (= c!472673 ((_ is Union!8863) r!23079))))

(declare-fun e!1832050 () Regex!8863)

(assert (=> b!2900850 (= e!1832048 e!1832050)))

(declare-fun bm!189004 () Bool)

(declare-fun call!189009 () Regex!8863)

(declare-fun call!189010 () Regex!8863)

(assert (=> bm!189004 (= call!189009 call!189010)))

(declare-fun b!2900851 () Bool)

(declare-fun call!189011 () Regex!8863)

(assert (=> b!2900851 (= e!1832051 (Union!8863 (Concat!14184 call!189011 (regTwo!18238 r!23079)) call!189008))))

(declare-fun b!2900852 () Bool)

(assert (=> b!2900852 (= e!1832047 (Concat!14184 call!189009 r!23079))))

(declare-fun d!835425 () Bool)

(declare-fun lt!1022172 () Regex!8863)

(assert (=> d!835425 (validRegex!3636 lt!1022172)))

(assert (=> d!835425 (= lt!1022172 e!1832049)))

(declare-fun c!472675 () Bool)

(assert (=> d!835425 (= c!472675 (or ((_ is EmptyExpr!8863) r!23079) ((_ is EmptyLang!8863) r!23079)))))

(assert (=> d!835425 (validRegex!3636 r!23079)))

(assert (=> d!835425 (= (derivativeStep!2375 r!23079 (head!6404 (get!10485 lt!1022112))) lt!1022172)))

(declare-fun bm!189005 () Bool)

(declare-fun c!472672 () Bool)

(assert (=> bm!189005 (= call!189010 (derivativeStep!2375 (ite c!472673 (regOne!18239 r!23079) (ite c!472672 (reg!9192 r!23079) (regOne!18238 r!23079))) (head!6404 (get!10485 lt!1022112))))))

(declare-fun b!2900853 () Bool)

(assert (=> b!2900853 (= e!1832050 e!1832047)))

(assert (=> b!2900853 (= c!472672 ((_ is Star!8863) r!23079))))

(declare-fun bm!189006 () Bool)

(assert (=> bm!189006 (= call!189011 call!189009)))

(declare-fun b!2900854 () Bool)

(assert (=> b!2900854 (= e!1832050 (Union!8863 call!189010 call!189008))))

(declare-fun b!2900855 () Bool)

(assert (=> b!2900855 (= e!1832049 EmptyLang!8863)))

(declare-fun b!2900856 () Bool)

(assert (=> b!2900856 (= e!1832051 (Union!8863 (Concat!14184 call!189011 (regTwo!18238 r!23079)) EmptyLang!8863))))

(assert (= (and d!835425 c!472675) b!2900855))

(assert (= (and d!835425 (not c!472675)) b!2900847))

(assert (= (and b!2900847 c!472671) b!2900849))

(assert (= (and b!2900847 (not c!472671)) b!2900850))

(assert (= (and b!2900850 c!472673) b!2900854))

(assert (= (and b!2900850 (not c!472673)) b!2900853))

(assert (= (and b!2900853 c!472672) b!2900852))

(assert (= (and b!2900853 (not c!472672)) b!2900848))

(assert (= (and b!2900848 c!472674) b!2900851))

(assert (= (and b!2900848 (not c!472674)) b!2900856))

(assert (= (or b!2900851 b!2900856) bm!189006))

(assert (= (or b!2900852 bm!189006) bm!189004))

(assert (= (or b!2900854 bm!189004) bm!189005))

(assert (= (or b!2900854 b!2900851) bm!189003))

(declare-fun m!3306135 () Bool)

(assert (=> b!2900848 m!3306135))

(assert (=> bm!189003 m!3305969))

(declare-fun m!3306137 () Bool)

(assert (=> bm!189003 m!3306137))

(declare-fun m!3306139 () Bool)

(assert (=> d!835425 m!3306139))

(assert (=> d!835425 m!3305941))

(assert (=> bm!189005 m!3305969))

(declare-fun m!3306141 () Bool)

(assert (=> bm!189005 m!3306141))

(assert (=> b!2900448 d!835425))

(assert (=> b!2900448 d!835417))

(assert (=> b!2900448 d!835393))

(declare-fun b!2900857 () Bool)

(declare-fun e!1832056 () Option!6536)

(declare-fun e!1832054 () Option!6536)

(assert (=> b!2900857 (= e!1832056 e!1832054)))

(declare-fun c!472682 () Bool)

(assert (=> b!2900857 (= c!472682 ((_ is EmptyLang!8863) (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))))))

(declare-fun b!2900858 () Bool)

(declare-fun e!1832055 () Option!6536)

(assert (=> b!2900858 (= e!1832055 (Some!6535 Nil!34540))))

(declare-fun b!2900859 () Bool)

(declare-fun e!1832058 () Option!6536)

(declare-fun call!189013 () Option!6536)

(assert (=> b!2900859 (= e!1832058 call!189013)))

(declare-fun b!2900860 () Bool)

(declare-fun c!472677 () Bool)

(assert (=> b!2900860 (= c!472677 ((_ is ElementMatch!8863) (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))))))

(declare-fun e!1832057 () Option!6536)

(assert (=> b!2900860 (= e!1832054 e!1832057)))

(declare-fun b!2900861 () Bool)

(assert (=> b!2900861 (= e!1832057 (Some!6535 (Cons!34540 (c!472498 (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))) Nil!34540)))))

(declare-fun d!835427 () Bool)

(declare-fun c!472679 () Bool)

(assert (=> d!835427 (= c!472679 ((_ is EmptyExpr!8863) (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))))))

(assert (=> d!835427 (= (getLanguageWitness!570 (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))) e!1832056)))

(declare-fun b!2900862 () Bool)

(declare-fun e!1832059 () Option!6536)

(assert (=> b!2900862 (= e!1832059 None!6535)))

(declare-fun b!2900863 () Bool)

(assert (=> b!2900863 (= e!1832054 None!6535)))

(declare-fun b!2900864 () Bool)

(declare-fun lt!1022175 () Option!6536)

(assert (=> b!2900864 (= e!1832058 lt!1022175)))

(declare-fun bm!189007 () Bool)

(declare-fun c!472678 () Bool)

(declare-fun call!189012 () Option!6536)

(assert (=> bm!189007 (= call!189012 (getLanguageWitness!570 (ite c!472678 (regOne!18239 (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))) (regTwo!18238 (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))))))))

(declare-fun b!2900865 () Bool)

(declare-fun e!1832053 () Option!6536)

(declare-fun lt!1022174 () Option!6536)

(declare-fun lt!1022173 () Option!6536)

(assert (=> b!2900865 (= e!1832053 (Some!6535 (++!8260 (v!34661 lt!1022174) (v!34661 lt!1022173))))))

(declare-fun b!2900866 () Bool)

(declare-fun c!472683 () Bool)

(assert (=> b!2900866 (= c!472683 ((_ is Some!6535) lt!1022173))))

(assert (=> b!2900866 (= lt!1022173 call!189012)))

(assert (=> b!2900866 (= e!1832059 e!1832053)))

(declare-fun b!2900867 () Bool)

(declare-fun e!1832052 () Option!6536)

(assert (=> b!2900867 (= e!1832052 e!1832059)))

(assert (=> b!2900867 (= lt!1022174 call!189013)))

(declare-fun c!472676 () Bool)

(assert (=> b!2900867 (= c!472676 ((_ is Some!6535) lt!1022174))))

(declare-fun b!2900868 () Bool)

(assert (=> b!2900868 (= e!1832052 e!1832058)))

(assert (=> b!2900868 (= lt!1022175 call!189012)))

(declare-fun c!472681 () Bool)

(assert (=> b!2900868 (= c!472681 ((_ is Some!6535) lt!1022175))))

(declare-fun b!2900869 () Bool)

(assert (=> b!2900869 (= c!472678 ((_ is Union!8863) (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))))))

(assert (=> b!2900869 (= e!1832055 e!1832052)))

(declare-fun b!2900870 () Bool)

(assert (=> b!2900870 (= e!1832056 (Some!6535 Nil!34540))))

(declare-fun b!2900871 () Bool)

(assert (=> b!2900871 (= e!1832057 e!1832055)))

(declare-fun c!472680 () Bool)

(assert (=> b!2900871 (= c!472680 ((_ is Star!8863) (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))))))

(declare-fun bm!189008 () Bool)

(assert (=> bm!189008 (= call!189013 (getLanguageWitness!570 (ite c!472678 (regTwo!18239 (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))) (regOne!18238 (ite c!472580 (regTwo!18239 (regOne!18238 r!23079)) (regOne!18238 (regOne!18238 r!23079)))))))))

(declare-fun b!2900872 () Bool)

(assert (=> b!2900872 (= e!1832053 None!6535)))

(assert (= (and d!835427 c!472679) b!2900870))

(assert (= (and d!835427 (not c!472679)) b!2900857))

(assert (= (and b!2900857 c!472682) b!2900863))

(assert (= (and b!2900857 (not c!472682)) b!2900860))

(assert (= (and b!2900860 c!472677) b!2900861))

(assert (= (and b!2900860 (not c!472677)) b!2900871))

(assert (= (and b!2900871 c!472680) b!2900858))

(assert (= (and b!2900871 (not c!472680)) b!2900869))

(assert (= (and b!2900869 c!472678) b!2900868))

(assert (= (and b!2900869 (not c!472678)) b!2900867))

(assert (= (and b!2900868 c!472681) b!2900864))

(assert (= (and b!2900868 (not c!472681)) b!2900859))

(assert (= (and b!2900867 c!472676) b!2900866))

(assert (= (and b!2900867 (not c!472676)) b!2900862))

(assert (= (and b!2900866 c!472683) b!2900865))

(assert (= (and b!2900866 (not c!472683)) b!2900872))

(assert (= (or b!2900859 b!2900867) bm!189008))

(assert (= (or b!2900868 b!2900866) bm!189007))

(declare-fun m!3306143 () Bool)

(assert (=> bm!189007 m!3306143))

(declare-fun m!3306145 () Bool)

(assert (=> b!2900865 m!3306145))

(declare-fun m!3306147 () Bool)

(assert (=> bm!189008 m!3306147))

(assert (=> bm!188963 d!835427))

(assert (=> b!2900458 d!835391))

(assert (=> b!2900458 d!835393))

(assert (=> b!2900456 d!835417))

(assert (=> bm!188946 d!835407))

(declare-fun d!835429 () Bool)

(assert (=> d!835429 (= (nullable!2762 (reg!9192 r!23079)) (nullableFct!842 (reg!9192 r!23079)))))

(declare-fun bs!524010 () Bool)

(assert (= bs!524010 d!835429))

(declare-fun m!3306149 () Bool)

(assert (=> bs!524010 m!3306149))

(assert (=> b!2900527 d!835429))

(declare-fun b!2900875 () Bool)

(declare-fun e!1832060 () Bool)

(declare-fun tp!930752 () Bool)

(assert (=> b!2900875 (= e!1832060 tp!930752)))

(assert (=> b!2900583 (= tp!930696 e!1832060)))

(declare-fun b!2900873 () Bool)

(assert (=> b!2900873 (= e!1832060 tp_is_empty!15313)))

(declare-fun b!2900874 () Bool)

(declare-fun tp!930750 () Bool)

(declare-fun tp!930753 () Bool)

(assert (=> b!2900874 (= e!1832060 (and tp!930750 tp!930753))))

(declare-fun b!2900876 () Bool)

(declare-fun tp!930751 () Bool)

(declare-fun tp!930754 () Bool)

(assert (=> b!2900876 (= e!1832060 (and tp!930751 tp!930754))))

(assert (= (and b!2900583 ((_ is ElementMatch!8863) (regOne!18239 (regOne!18239 r!23079)))) b!2900873))

(assert (= (and b!2900583 ((_ is Concat!14184) (regOne!18239 (regOne!18239 r!23079)))) b!2900874))

(assert (= (and b!2900583 ((_ is Star!8863) (regOne!18239 (regOne!18239 r!23079)))) b!2900875))

(assert (= (and b!2900583 ((_ is Union!8863) (regOne!18239 (regOne!18239 r!23079)))) b!2900876))

(declare-fun b!2900879 () Bool)

(declare-fun e!1832061 () Bool)

(declare-fun tp!930757 () Bool)

(assert (=> b!2900879 (= e!1832061 tp!930757)))

(assert (=> b!2900583 (= tp!930699 e!1832061)))

(declare-fun b!2900877 () Bool)

(assert (=> b!2900877 (= e!1832061 tp_is_empty!15313)))

(declare-fun b!2900878 () Bool)

(declare-fun tp!930755 () Bool)

(declare-fun tp!930758 () Bool)

(assert (=> b!2900878 (= e!1832061 (and tp!930755 tp!930758))))

(declare-fun b!2900880 () Bool)

(declare-fun tp!930756 () Bool)

(declare-fun tp!930759 () Bool)

(assert (=> b!2900880 (= e!1832061 (and tp!930756 tp!930759))))

(assert (= (and b!2900583 ((_ is ElementMatch!8863) (regTwo!18239 (regOne!18239 r!23079)))) b!2900877))

(assert (= (and b!2900583 ((_ is Concat!14184) (regTwo!18239 (regOne!18239 r!23079)))) b!2900878))

(assert (= (and b!2900583 ((_ is Star!8863) (regTwo!18239 (regOne!18239 r!23079)))) b!2900879))

(assert (= (and b!2900583 ((_ is Union!8863) (regTwo!18239 (regOne!18239 r!23079)))) b!2900880))

(declare-fun b!2900883 () Bool)

(declare-fun e!1832062 () Bool)

(declare-fun tp!930762 () Bool)

(assert (=> b!2900883 (= e!1832062 tp!930762)))

(assert (=> b!2900579 (= tp!930691 e!1832062)))

(declare-fun b!2900881 () Bool)

(assert (=> b!2900881 (= e!1832062 tp_is_empty!15313)))

(declare-fun b!2900882 () Bool)

(declare-fun tp!930760 () Bool)

(declare-fun tp!930763 () Bool)

(assert (=> b!2900882 (= e!1832062 (and tp!930760 tp!930763))))

(declare-fun b!2900884 () Bool)

(declare-fun tp!930761 () Bool)

(declare-fun tp!930764 () Bool)

(assert (=> b!2900884 (= e!1832062 (and tp!930761 tp!930764))))

(assert (= (and b!2900579 ((_ is ElementMatch!8863) (regOne!18239 (reg!9192 r!23079)))) b!2900881))

(assert (= (and b!2900579 ((_ is Concat!14184) (regOne!18239 (reg!9192 r!23079)))) b!2900882))

(assert (= (and b!2900579 ((_ is Star!8863) (regOne!18239 (reg!9192 r!23079)))) b!2900883))

(assert (= (and b!2900579 ((_ is Union!8863) (regOne!18239 (reg!9192 r!23079)))) b!2900884))

(declare-fun b!2900887 () Bool)

(declare-fun e!1832063 () Bool)

(declare-fun tp!930767 () Bool)

(assert (=> b!2900887 (= e!1832063 tp!930767)))

(assert (=> b!2900579 (= tp!930694 e!1832063)))

(declare-fun b!2900885 () Bool)

(assert (=> b!2900885 (= e!1832063 tp_is_empty!15313)))

(declare-fun b!2900886 () Bool)

(declare-fun tp!930765 () Bool)

(declare-fun tp!930768 () Bool)

(assert (=> b!2900886 (= e!1832063 (and tp!930765 tp!930768))))

(declare-fun b!2900888 () Bool)

(declare-fun tp!930766 () Bool)

(declare-fun tp!930769 () Bool)

(assert (=> b!2900888 (= e!1832063 (and tp!930766 tp!930769))))

(assert (= (and b!2900579 ((_ is ElementMatch!8863) (regTwo!18239 (reg!9192 r!23079)))) b!2900885))

(assert (= (and b!2900579 ((_ is Concat!14184) (regTwo!18239 (reg!9192 r!23079)))) b!2900886))

(assert (= (and b!2900579 ((_ is Star!8863) (regTwo!18239 (reg!9192 r!23079)))) b!2900887))

(assert (= (and b!2900579 ((_ is Union!8863) (regTwo!18239 (reg!9192 r!23079)))) b!2900888))

(declare-fun b!2900891 () Bool)

(declare-fun e!1832064 () Bool)

(declare-fun tp!930772 () Bool)

(assert (=> b!2900891 (= e!1832064 tp!930772)))

(assert (=> b!2900582 (= tp!930697 e!1832064)))

(declare-fun b!2900889 () Bool)

(assert (=> b!2900889 (= e!1832064 tp_is_empty!15313)))

(declare-fun b!2900890 () Bool)

(declare-fun tp!930770 () Bool)

(declare-fun tp!930773 () Bool)

(assert (=> b!2900890 (= e!1832064 (and tp!930770 tp!930773))))

(declare-fun b!2900892 () Bool)

(declare-fun tp!930771 () Bool)

(declare-fun tp!930774 () Bool)

(assert (=> b!2900892 (= e!1832064 (and tp!930771 tp!930774))))

(assert (= (and b!2900582 ((_ is ElementMatch!8863) (reg!9192 (regOne!18239 r!23079)))) b!2900889))

(assert (= (and b!2900582 ((_ is Concat!14184) (reg!9192 (regOne!18239 r!23079)))) b!2900890))

(assert (= (and b!2900582 ((_ is Star!8863) (reg!9192 (regOne!18239 r!23079)))) b!2900891))

(assert (= (and b!2900582 ((_ is Union!8863) (reg!9192 (regOne!18239 r!23079)))) b!2900892))

(declare-fun b!2900895 () Bool)

(declare-fun e!1832065 () Bool)

(declare-fun tp!930777 () Bool)

(assert (=> b!2900895 (= e!1832065 tp!930777)))

(assert (=> b!2900577 (= tp!930690 e!1832065)))

(declare-fun b!2900893 () Bool)

(assert (=> b!2900893 (= e!1832065 tp_is_empty!15313)))

(declare-fun b!2900894 () Bool)

(declare-fun tp!930775 () Bool)

(declare-fun tp!930778 () Bool)

(assert (=> b!2900894 (= e!1832065 (and tp!930775 tp!930778))))

(declare-fun b!2900896 () Bool)

(declare-fun tp!930776 () Bool)

(declare-fun tp!930779 () Bool)

(assert (=> b!2900896 (= e!1832065 (and tp!930776 tp!930779))))

(assert (= (and b!2900577 ((_ is ElementMatch!8863) (regOne!18238 (reg!9192 r!23079)))) b!2900893))

(assert (= (and b!2900577 ((_ is Concat!14184) (regOne!18238 (reg!9192 r!23079)))) b!2900894))

(assert (= (and b!2900577 ((_ is Star!8863) (regOne!18238 (reg!9192 r!23079)))) b!2900895))

(assert (= (and b!2900577 ((_ is Union!8863) (regOne!18238 (reg!9192 r!23079)))) b!2900896))

(declare-fun b!2900899 () Bool)

(declare-fun e!1832066 () Bool)

(declare-fun tp!930782 () Bool)

(assert (=> b!2900899 (= e!1832066 tp!930782)))

(assert (=> b!2900577 (= tp!930693 e!1832066)))

(declare-fun b!2900897 () Bool)

(assert (=> b!2900897 (= e!1832066 tp_is_empty!15313)))

(declare-fun b!2900898 () Bool)

(declare-fun tp!930780 () Bool)

(declare-fun tp!930783 () Bool)

(assert (=> b!2900898 (= e!1832066 (and tp!930780 tp!930783))))

(declare-fun b!2900900 () Bool)

(declare-fun tp!930781 () Bool)

(declare-fun tp!930784 () Bool)

(assert (=> b!2900900 (= e!1832066 (and tp!930781 tp!930784))))

(assert (= (and b!2900577 ((_ is ElementMatch!8863) (regTwo!18238 (reg!9192 r!23079)))) b!2900897))

(assert (= (and b!2900577 ((_ is Concat!14184) (regTwo!18238 (reg!9192 r!23079)))) b!2900898))

(assert (= (and b!2900577 ((_ is Star!8863) (regTwo!18238 (reg!9192 r!23079)))) b!2900899))

(assert (= (and b!2900577 ((_ is Union!8863) (regTwo!18238 (reg!9192 r!23079)))) b!2900900))

(declare-fun b!2900903 () Bool)

(declare-fun e!1832067 () Bool)

(declare-fun tp!930787 () Bool)

(assert (=> b!2900903 (= e!1832067 tp!930787)))

(assert (=> b!2900591 (= tp!930706 e!1832067)))

(declare-fun b!2900901 () Bool)

(assert (=> b!2900901 (= e!1832067 tp_is_empty!15313)))

(declare-fun b!2900902 () Bool)

(declare-fun tp!930785 () Bool)

(declare-fun tp!930788 () Bool)

(assert (=> b!2900902 (= e!1832067 (and tp!930785 tp!930788))))

(declare-fun b!2900904 () Bool)

(declare-fun tp!930786 () Bool)

(declare-fun tp!930789 () Bool)

(assert (=> b!2900904 (= e!1832067 (and tp!930786 tp!930789))))

(assert (= (and b!2900591 ((_ is ElementMatch!8863) (regOne!18239 (regOne!18238 r!23079)))) b!2900901))

(assert (= (and b!2900591 ((_ is Concat!14184) (regOne!18239 (regOne!18238 r!23079)))) b!2900902))

(assert (= (and b!2900591 ((_ is Star!8863) (regOne!18239 (regOne!18238 r!23079)))) b!2900903))

(assert (= (and b!2900591 ((_ is Union!8863) (regOne!18239 (regOne!18238 r!23079)))) b!2900904))

(declare-fun b!2900907 () Bool)

(declare-fun e!1832068 () Bool)

(declare-fun tp!930792 () Bool)

(assert (=> b!2900907 (= e!1832068 tp!930792)))

(assert (=> b!2900591 (= tp!930709 e!1832068)))

(declare-fun b!2900905 () Bool)

(assert (=> b!2900905 (= e!1832068 tp_is_empty!15313)))

(declare-fun b!2900906 () Bool)

(declare-fun tp!930790 () Bool)

(declare-fun tp!930793 () Bool)

(assert (=> b!2900906 (= e!1832068 (and tp!930790 tp!930793))))

(declare-fun b!2900908 () Bool)

(declare-fun tp!930791 () Bool)

(declare-fun tp!930794 () Bool)

(assert (=> b!2900908 (= e!1832068 (and tp!930791 tp!930794))))

(assert (= (and b!2900591 ((_ is ElementMatch!8863) (regTwo!18239 (regOne!18238 r!23079)))) b!2900905))

(assert (= (and b!2900591 ((_ is Concat!14184) (regTwo!18239 (regOne!18238 r!23079)))) b!2900906))

(assert (= (and b!2900591 ((_ is Star!8863) (regTwo!18239 (regOne!18238 r!23079)))) b!2900907))

(assert (= (and b!2900591 ((_ is Union!8863) (regTwo!18239 (regOne!18238 r!23079)))) b!2900908))

(declare-fun b!2900911 () Bool)

(declare-fun e!1832069 () Bool)

(declare-fun tp!930797 () Bool)

(assert (=> b!2900911 (= e!1832069 tp!930797)))

(assert (=> b!2900578 (= tp!930692 e!1832069)))

(declare-fun b!2900909 () Bool)

(assert (=> b!2900909 (= e!1832069 tp_is_empty!15313)))

(declare-fun b!2900910 () Bool)

(declare-fun tp!930795 () Bool)

(declare-fun tp!930798 () Bool)

(assert (=> b!2900910 (= e!1832069 (and tp!930795 tp!930798))))

(declare-fun b!2900912 () Bool)

(declare-fun tp!930796 () Bool)

(declare-fun tp!930799 () Bool)

(assert (=> b!2900912 (= e!1832069 (and tp!930796 tp!930799))))

(assert (= (and b!2900578 ((_ is ElementMatch!8863) (reg!9192 (reg!9192 r!23079)))) b!2900909))

(assert (= (and b!2900578 ((_ is Concat!14184) (reg!9192 (reg!9192 r!23079)))) b!2900910))

(assert (= (and b!2900578 ((_ is Star!8863) (reg!9192 (reg!9192 r!23079)))) b!2900911))

(assert (= (and b!2900578 ((_ is Union!8863) (reg!9192 (reg!9192 r!23079)))) b!2900912))

(declare-fun b!2900915 () Bool)

(declare-fun e!1832070 () Bool)

(declare-fun tp!930802 () Bool)

(assert (=> b!2900915 (= e!1832070 tp!930802)))

(assert (=> b!2900587 (= tp!930701 e!1832070)))

(declare-fun b!2900913 () Bool)

(assert (=> b!2900913 (= e!1832070 tp_is_empty!15313)))

(declare-fun b!2900914 () Bool)

(declare-fun tp!930800 () Bool)

(declare-fun tp!930803 () Bool)

(assert (=> b!2900914 (= e!1832070 (and tp!930800 tp!930803))))

(declare-fun b!2900916 () Bool)

(declare-fun tp!930801 () Bool)

(declare-fun tp!930804 () Bool)

(assert (=> b!2900916 (= e!1832070 (and tp!930801 tp!930804))))

(assert (= (and b!2900587 ((_ is ElementMatch!8863) (regOne!18239 (regTwo!18239 r!23079)))) b!2900913))

(assert (= (and b!2900587 ((_ is Concat!14184) (regOne!18239 (regTwo!18239 r!23079)))) b!2900914))

(assert (= (and b!2900587 ((_ is Star!8863) (regOne!18239 (regTwo!18239 r!23079)))) b!2900915))

(assert (= (and b!2900587 ((_ is Union!8863) (regOne!18239 (regTwo!18239 r!23079)))) b!2900916))

(declare-fun b!2900919 () Bool)

(declare-fun e!1832071 () Bool)

(declare-fun tp!930807 () Bool)

(assert (=> b!2900919 (= e!1832071 tp!930807)))

(assert (=> b!2900587 (= tp!930704 e!1832071)))

(declare-fun b!2900917 () Bool)

(assert (=> b!2900917 (= e!1832071 tp_is_empty!15313)))

(declare-fun b!2900918 () Bool)

(declare-fun tp!930805 () Bool)

(declare-fun tp!930808 () Bool)

(assert (=> b!2900918 (= e!1832071 (and tp!930805 tp!930808))))

(declare-fun b!2900920 () Bool)

(declare-fun tp!930806 () Bool)

(declare-fun tp!930809 () Bool)

(assert (=> b!2900920 (= e!1832071 (and tp!930806 tp!930809))))

(assert (= (and b!2900587 ((_ is ElementMatch!8863) (regTwo!18239 (regTwo!18239 r!23079)))) b!2900917))

(assert (= (and b!2900587 ((_ is Concat!14184) (regTwo!18239 (regTwo!18239 r!23079)))) b!2900918))

(assert (= (and b!2900587 ((_ is Star!8863) (regTwo!18239 (regTwo!18239 r!23079)))) b!2900919))

(assert (= (and b!2900587 ((_ is Union!8863) (regTwo!18239 (regTwo!18239 r!23079)))) b!2900920))

(declare-fun b!2900923 () Bool)

(declare-fun e!1832072 () Bool)

(declare-fun tp!930812 () Bool)

(assert (=> b!2900923 (= e!1832072 tp!930812)))

(assert (=> b!2900590 (= tp!930707 e!1832072)))

(declare-fun b!2900921 () Bool)

(assert (=> b!2900921 (= e!1832072 tp_is_empty!15313)))

(declare-fun b!2900922 () Bool)

(declare-fun tp!930810 () Bool)

(declare-fun tp!930813 () Bool)

(assert (=> b!2900922 (= e!1832072 (and tp!930810 tp!930813))))

(declare-fun b!2900924 () Bool)

(declare-fun tp!930811 () Bool)

(declare-fun tp!930814 () Bool)

(assert (=> b!2900924 (= e!1832072 (and tp!930811 tp!930814))))

(assert (= (and b!2900590 ((_ is ElementMatch!8863) (reg!9192 (regOne!18238 r!23079)))) b!2900921))

(assert (= (and b!2900590 ((_ is Concat!14184) (reg!9192 (regOne!18238 r!23079)))) b!2900922))

(assert (= (and b!2900590 ((_ is Star!8863) (reg!9192 (regOne!18238 r!23079)))) b!2900923))

(assert (= (and b!2900590 ((_ is Union!8863) (reg!9192 (regOne!18238 r!23079)))) b!2900924))

(declare-fun b!2900927 () Bool)

(declare-fun e!1832073 () Bool)

(declare-fun tp!930817 () Bool)

(assert (=> b!2900927 (= e!1832073 tp!930817)))

(assert (=> b!2900585 (= tp!930700 e!1832073)))

(declare-fun b!2900925 () Bool)

(assert (=> b!2900925 (= e!1832073 tp_is_empty!15313)))

(declare-fun b!2900926 () Bool)

(declare-fun tp!930815 () Bool)

(declare-fun tp!930818 () Bool)

(assert (=> b!2900926 (= e!1832073 (and tp!930815 tp!930818))))

(declare-fun b!2900928 () Bool)

(declare-fun tp!930816 () Bool)

(declare-fun tp!930819 () Bool)

(assert (=> b!2900928 (= e!1832073 (and tp!930816 tp!930819))))

(assert (= (and b!2900585 ((_ is ElementMatch!8863) (regOne!18238 (regTwo!18239 r!23079)))) b!2900925))

(assert (= (and b!2900585 ((_ is Concat!14184) (regOne!18238 (regTwo!18239 r!23079)))) b!2900926))

(assert (= (and b!2900585 ((_ is Star!8863) (regOne!18238 (regTwo!18239 r!23079)))) b!2900927))

(assert (= (and b!2900585 ((_ is Union!8863) (regOne!18238 (regTwo!18239 r!23079)))) b!2900928))

(declare-fun b!2900931 () Bool)

(declare-fun e!1832074 () Bool)

(declare-fun tp!930822 () Bool)

(assert (=> b!2900931 (= e!1832074 tp!930822)))

(assert (=> b!2900585 (= tp!930703 e!1832074)))

(declare-fun b!2900929 () Bool)

(assert (=> b!2900929 (= e!1832074 tp_is_empty!15313)))

(declare-fun b!2900930 () Bool)

(declare-fun tp!930820 () Bool)

(declare-fun tp!930823 () Bool)

(assert (=> b!2900930 (= e!1832074 (and tp!930820 tp!930823))))

(declare-fun b!2900932 () Bool)

(declare-fun tp!930821 () Bool)

(declare-fun tp!930824 () Bool)

(assert (=> b!2900932 (= e!1832074 (and tp!930821 tp!930824))))

(assert (= (and b!2900585 ((_ is ElementMatch!8863) (regTwo!18238 (regTwo!18239 r!23079)))) b!2900929))

(assert (= (and b!2900585 ((_ is Concat!14184) (regTwo!18238 (regTwo!18239 r!23079)))) b!2900930))

(assert (= (and b!2900585 ((_ is Star!8863) (regTwo!18238 (regTwo!18239 r!23079)))) b!2900931))

(assert (= (and b!2900585 ((_ is Union!8863) (regTwo!18238 (regTwo!18239 r!23079)))) b!2900932))

(declare-fun b!2900935 () Bool)

(declare-fun e!1832075 () Bool)

(declare-fun tp!930827 () Bool)

(assert (=> b!2900935 (= e!1832075 tp!930827)))

(assert (=> b!2900586 (= tp!930702 e!1832075)))

(declare-fun b!2900933 () Bool)

(assert (=> b!2900933 (= e!1832075 tp_is_empty!15313)))

(declare-fun b!2900934 () Bool)

(declare-fun tp!930825 () Bool)

(declare-fun tp!930828 () Bool)

(assert (=> b!2900934 (= e!1832075 (and tp!930825 tp!930828))))

(declare-fun b!2900936 () Bool)

(declare-fun tp!930826 () Bool)

(declare-fun tp!930829 () Bool)

(assert (=> b!2900936 (= e!1832075 (and tp!930826 tp!930829))))

(assert (= (and b!2900586 ((_ is ElementMatch!8863) (reg!9192 (regTwo!18239 r!23079)))) b!2900933))

(assert (= (and b!2900586 ((_ is Concat!14184) (reg!9192 (regTwo!18239 r!23079)))) b!2900934))

(assert (= (and b!2900586 ((_ is Star!8863) (reg!9192 (regTwo!18239 r!23079)))) b!2900935))

(assert (= (and b!2900586 ((_ is Union!8863) (reg!9192 (regTwo!18239 r!23079)))) b!2900936))

(declare-fun b!2900939 () Bool)

(declare-fun e!1832076 () Bool)

(declare-fun tp!930832 () Bool)

(assert (=> b!2900939 (= e!1832076 tp!930832)))

(assert (=> b!2900581 (= tp!930695 e!1832076)))

(declare-fun b!2900937 () Bool)

(assert (=> b!2900937 (= e!1832076 tp_is_empty!15313)))

(declare-fun b!2900938 () Bool)

(declare-fun tp!930830 () Bool)

(declare-fun tp!930833 () Bool)

(assert (=> b!2900938 (= e!1832076 (and tp!930830 tp!930833))))

(declare-fun b!2900940 () Bool)

(declare-fun tp!930831 () Bool)

(declare-fun tp!930834 () Bool)

(assert (=> b!2900940 (= e!1832076 (and tp!930831 tp!930834))))

(assert (= (and b!2900581 ((_ is ElementMatch!8863) (regOne!18238 (regOne!18239 r!23079)))) b!2900937))

(assert (= (and b!2900581 ((_ is Concat!14184) (regOne!18238 (regOne!18239 r!23079)))) b!2900938))

(assert (= (and b!2900581 ((_ is Star!8863) (regOne!18238 (regOne!18239 r!23079)))) b!2900939))

(assert (= (and b!2900581 ((_ is Union!8863) (regOne!18238 (regOne!18239 r!23079)))) b!2900940))

(declare-fun b!2900943 () Bool)

(declare-fun e!1832077 () Bool)

(declare-fun tp!930837 () Bool)

(assert (=> b!2900943 (= e!1832077 tp!930837)))

(assert (=> b!2900581 (= tp!930698 e!1832077)))

(declare-fun b!2900941 () Bool)

(assert (=> b!2900941 (= e!1832077 tp_is_empty!15313)))

(declare-fun b!2900942 () Bool)

(declare-fun tp!930835 () Bool)

(declare-fun tp!930838 () Bool)

(assert (=> b!2900942 (= e!1832077 (and tp!930835 tp!930838))))

(declare-fun b!2900944 () Bool)

(declare-fun tp!930836 () Bool)

(declare-fun tp!930839 () Bool)

(assert (=> b!2900944 (= e!1832077 (and tp!930836 tp!930839))))

(assert (= (and b!2900581 ((_ is ElementMatch!8863) (regTwo!18238 (regOne!18239 r!23079)))) b!2900941))

(assert (= (and b!2900581 ((_ is Concat!14184) (regTwo!18238 (regOne!18239 r!23079)))) b!2900942))

(assert (= (and b!2900581 ((_ is Star!8863) (regTwo!18238 (regOne!18239 r!23079)))) b!2900943))

(assert (= (and b!2900581 ((_ is Union!8863) (regTwo!18238 (regOne!18239 r!23079)))) b!2900944))

(declare-fun b!2900947 () Bool)

(declare-fun e!1832078 () Bool)

(declare-fun tp!930842 () Bool)

(assert (=> b!2900947 (= e!1832078 tp!930842)))

(assert (=> b!2900595 (= tp!930711 e!1832078)))

(declare-fun b!2900945 () Bool)

(assert (=> b!2900945 (= e!1832078 tp_is_empty!15313)))

(declare-fun b!2900946 () Bool)

(declare-fun tp!930840 () Bool)

(declare-fun tp!930843 () Bool)

(assert (=> b!2900946 (= e!1832078 (and tp!930840 tp!930843))))

(declare-fun b!2900948 () Bool)

(declare-fun tp!930841 () Bool)

(declare-fun tp!930844 () Bool)

(assert (=> b!2900948 (= e!1832078 (and tp!930841 tp!930844))))

(assert (= (and b!2900595 ((_ is ElementMatch!8863) (regOne!18239 (regTwo!18238 r!23079)))) b!2900945))

(assert (= (and b!2900595 ((_ is Concat!14184) (regOne!18239 (regTwo!18238 r!23079)))) b!2900946))

(assert (= (and b!2900595 ((_ is Star!8863) (regOne!18239 (regTwo!18238 r!23079)))) b!2900947))

(assert (= (and b!2900595 ((_ is Union!8863) (regOne!18239 (regTwo!18238 r!23079)))) b!2900948))

(declare-fun b!2900951 () Bool)

(declare-fun e!1832079 () Bool)

(declare-fun tp!930847 () Bool)

(assert (=> b!2900951 (= e!1832079 tp!930847)))

(assert (=> b!2900595 (= tp!930714 e!1832079)))

(declare-fun b!2900949 () Bool)

(assert (=> b!2900949 (= e!1832079 tp_is_empty!15313)))

(declare-fun b!2900950 () Bool)

(declare-fun tp!930845 () Bool)

(declare-fun tp!930848 () Bool)

(assert (=> b!2900950 (= e!1832079 (and tp!930845 tp!930848))))

(declare-fun b!2900952 () Bool)

(declare-fun tp!930846 () Bool)

(declare-fun tp!930849 () Bool)

(assert (=> b!2900952 (= e!1832079 (and tp!930846 tp!930849))))

(assert (= (and b!2900595 ((_ is ElementMatch!8863) (regTwo!18239 (regTwo!18238 r!23079)))) b!2900949))

(assert (= (and b!2900595 ((_ is Concat!14184) (regTwo!18239 (regTwo!18238 r!23079)))) b!2900950))

(assert (= (and b!2900595 ((_ is Star!8863) (regTwo!18239 (regTwo!18238 r!23079)))) b!2900951))

(assert (= (and b!2900595 ((_ is Union!8863) (regTwo!18239 (regTwo!18238 r!23079)))) b!2900952))

(declare-fun b!2900955 () Bool)

(declare-fun e!1832080 () Bool)

(declare-fun tp!930852 () Bool)

(assert (=> b!2900955 (= e!1832080 tp!930852)))

(assert (=> b!2900593 (= tp!930710 e!1832080)))

(declare-fun b!2900953 () Bool)

(assert (=> b!2900953 (= e!1832080 tp_is_empty!15313)))

(declare-fun b!2900954 () Bool)

(declare-fun tp!930850 () Bool)

(declare-fun tp!930853 () Bool)

(assert (=> b!2900954 (= e!1832080 (and tp!930850 tp!930853))))

(declare-fun b!2900956 () Bool)

(declare-fun tp!930851 () Bool)

(declare-fun tp!930854 () Bool)

(assert (=> b!2900956 (= e!1832080 (and tp!930851 tp!930854))))

(assert (= (and b!2900593 ((_ is ElementMatch!8863) (regOne!18238 (regTwo!18238 r!23079)))) b!2900953))

(assert (= (and b!2900593 ((_ is Concat!14184) (regOne!18238 (regTwo!18238 r!23079)))) b!2900954))

(assert (= (and b!2900593 ((_ is Star!8863) (regOne!18238 (regTwo!18238 r!23079)))) b!2900955))

(assert (= (and b!2900593 ((_ is Union!8863) (regOne!18238 (regTwo!18238 r!23079)))) b!2900956))

(declare-fun b!2900959 () Bool)

(declare-fun e!1832081 () Bool)

(declare-fun tp!930857 () Bool)

(assert (=> b!2900959 (= e!1832081 tp!930857)))

(assert (=> b!2900593 (= tp!930713 e!1832081)))

(declare-fun b!2900957 () Bool)

(assert (=> b!2900957 (= e!1832081 tp_is_empty!15313)))

(declare-fun b!2900958 () Bool)

(declare-fun tp!930855 () Bool)

(declare-fun tp!930858 () Bool)

(assert (=> b!2900958 (= e!1832081 (and tp!930855 tp!930858))))

(declare-fun b!2900960 () Bool)

(declare-fun tp!930856 () Bool)

(declare-fun tp!930859 () Bool)

(assert (=> b!2900960 (= e!1832081 (and tp!930856 tp!930859))))

(assert (= (and b!2900593 ((_ is ElementMatch!8863) (regTwo!18238 (regTwo!18238 r!23079)))) b!2900957))

(assert (= (and b!2900593 ((_ is Concat!14184) (regTwo!18238 (regTwo!18238 r!23079)))) b!2900958))

(assert (= (and b!2900593 ((_ is Star!8863) (regTwo!18238 (regTwo!18238 r!23079)))) b!2900959))

(assert (= (and b!2900593 ((_ is Union!8863) (regTwo!18238 (regTwo!18238 r!23079)))) b!2900960))

(declare-fun b!2900963 () Bool)

(declare-fun e!1832082 () Bool)

(declare-fun tp!930862 () Bool)

(assert (=> b!2900963 (= e!1832082 tp!930862)))

(assert (=> b!2900594 (= tp!930712 e!1832082)))

(declare-fun b!2900961 () Bool)

(assert (=> b!2900961 (= e!1832082 tp_is_empty!15313)))

(declare-fun b!2900962 () Bool)

(declare-fun tp!930860 () Bool)

(declare-fun tp!930863 () Bool)

(assert (=> b!2900962 (= e!1832082 (and tp!930860 tp!930863))))

(declare-fun b!2900964 () Bool)

(declare-fun tp!930861 () Bool)

(declare-fun tp!930864 () Bool)

(assert (=> b!2900964 (= e!1832082 (and tp!930861 tp!930864))))

(assert (= (and b!2900594 ((_ is ElementMatch!8863) (reg!9192 (regTwo!18238 r!23079)))) b!2900961))

(assert (= (and b!2900594 ((_ is Concat!14184) (reg!9192 (regTwo!18238 r!23079)))) b!2900962))

(assert (= (and b!2900594 ((_ is Star!8863) (reg!9192 (regTwo!18238 r!23079)))) b!2900963))

(assert (= (and b!2900594 ((_ is Union!8863) (reg!9192 (regTwo!18238 r!23079)))) b!2900964))

(declare-fun b!2900967 () Bool)

(declare-fun e!1832083 () Bool)

(declare-fun tp!930867 () Bool)

(assert (=> b!2900967 (= e!1832083 tp!930867)))

(assert (=> b!2900589 (= tp!930705 e!1832083)))

(declare-fun b!2900965 () Bool)

(assert (=> b!2900965 (= e!1832083 tp_is_empty!15313)))

(declare-fun b!2900966 () Bool)

(declare-fun tp!930865 () Bool)

(declare-fun tp!930868 () Bool)

(assert (=> b!2900966 (= e!1832083 (and tp!930865 tp!930868))))

(declare-fun b!2900968 () Bool)

(declare-fun tp!930866 () Bool)

(declare-fun tp!930869 () Bool)

(assert (=> b!2900968 (= e!1832083 (and tp!930866 tp!930869))))

(assert (= (and b!2900589 ((_ is ElementMatch!8863) (regOne!18238 (regOne!18238 r!23079)))) b!2900965))

(assert (= (and b!2900589 ((_ is Concat!14184) (regOne!18238 (regOne!18238 r!23079)))) b!2900966))

(assert (= (and b!2900589 ((_ is Star!8863) (regOne!18238 (regOne!18238 r!23079)))) b!2900967))

(assert (= (and b!2900589 ((_ is Union!8863) (regOne!18238 (regOne!18238 r!23079)))) b!2900968))

(declare-fun b!2900971 () Bool)

(declare-fun e!1832084 () Bool)

(declare-fun tp!930872 () Bool)

(assert (=> b!2900971 (= e!1832084 tp!930872)))

(assert (=> b!2900589 (= tp!930708 e!1832084)))

(declare-fun b!2900969 () Bool)

(assert (=> b!2900969 (= e!1832084 tp_is_empty!15313)))

(declare-fun b!2900970 () Bool)

(declare-fun tp!930870 () Bool)

(declare-fun tp!930873 () Bool)

(assert (=> b!2900970 (= e!1832084 (and tp!930870 tp!930873))))

(declare-fun b!2900972 () Bool)

(declare-fun tp!930871 () Bool)

(declare-fun tp!930874 () Bool)

(assert (=> b!2900972 (= e!1832084 (and tp!930871 tp!930874))))

(assert (= (and b!2900589 ((_ is ElementMatch!8863) (regTwo!18238 (regOne!18238 r!23079)))) b!2900969))

(assert (= (and b!2900589 ((_ is Concat!14184) (regTwo!18238 (regOne!18238 r!23079)))) b!2900970))

(assert (= (and b!2900589 ((_ is Star!8863) (regTwo!18238 (regOne!18238 r!23079)))) b!2900971))

(assert (= (and b!2900589 ((_ is Union!8863) (regTwo!18238 (regOne!18238 r!23079)))) b!2900972))

(check-sat (not b!2900882) (not b!2900879) (not b!2900902) (not bm!188989) (not b!2900904) (not b!2900894) (not b!2900960) (not bm!188978) (not b!2900796) (not b!2900826) (not b!2900878) (not bm!189003) (not b!2900821) (not b!2900972) (not b!2900824) (not b!2900971) (not b!2900930) (not b!2900920) (not b!2900898) (not b!2900786) (not b!2900907) (not bm!188988) (not b!2900744) (not b!2900966) (not b!2900931) (not b!2900888) (not d!835399) (not d!835425) (not b!2900887) (not b!2900776) (not bm!188983) (not bm!188982) (not b!2900911) (not b!2900848) (not b!2900891) (not b!2900876) (not b!2900964) (not bm!188991) (not b!2900865) (not bm!188984) (not b!2900967) (not b!2900916) (not b!2900951) (not b!2900934) (not b!2900806) (not bm!188987) (not b!2900950) (not b!2900946) (not b!2900903) (not d!835415) (not b!2900958) (not b!2900912) (not b!2900935) (not b!2900900) (not b!2900760) (not b!2900703) (not b!2900948) (not b!2900922) (not b!2900959) (not bm!188994) (not b!2900892) (not b!2900956) (not b!2900725) (not b!2900724) (not b!2900938) (not b!2900895) (not b!2900952) (not b!2900880) (not d!835423) (not b!2900874) (not b!2900928) (not b!2900906) (not b!2900720) (not b!2900890) (not b!2900924) (not b!2900923) (not b!2900939) (not b!2900918) (not b!2900926) (not b!2900899) (not b!2900886) (not b!2900940) (not b!2900932) (not b!2900919) (not b!2900968) (not b!2900875) (not b!2900962) (not b!2900955) (not b!2900970) (not b!2900915) (not bm!189005) (not b!2900963) (not b!2900884) (not b!2900785) (not bm!188990) (not d!835397) (not bm!188985) (not b!2900943) (not b!2900822) (not b!2900896) tp_is_empty!15313 (not b!2900819) (not bm!189008) (not d!835401) (not b!2900947) (not b!2900942) (not d!835429) (not b!2900910) (not b!2900816) (not bm!188979) (not b!2900908) (not b!2900721) (not bm!188986) (not b!2900944) (not b!2900927) (not bm!189007) (not b!2900936) (not b!2900729) (not b!2900914) (not b!2900954) (not bm!188980) (not bm!188993) (not b!2900883))
(check-sat)

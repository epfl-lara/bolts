; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!740666 () Bool)

(assert start!740666)

(declare-datatypes ((C!42012 0))(
  ( (C!42013 (val!31446 Int)) )
))
(declare-datatypes ((Regex!20843 0))(
  ( (ElementMatch!20843 (c!1434066 C!42012)) (Concat!29688 (regOne!42198 Regex!20843) (regTwo!42198 Regex!20843)) (EmptyExpr!20843) (Star!20843 (reg!21172 Regex!20843)) (EmptyLang!20843) (Union!20843 (regOne!42199 Regex!20843) (regTwo!42199 Regex!20843)) )
))
(declare-fun r2!6217 () Regex!20843)

(declare-fun e!4610480 () Bool)

(declare-fun b!7783845 () Bool)

(declare-fun lt!2673287 () Regex!20843)

(declare-datatypes ((List!73682 0))(
  ( (Nil!73558) (Cons!73558 (h!80006 C!42012) (t!388417 List!73682)) )
))
(declare-fun s!14292 () List!73682)

(declare-fun r1!6279 () Regex!20843)

(declare-fun derivativeStep!6180 (Regex!20843 C!42012) Regex!20843)

(assert (=> b!7783845 (= e!4610480 (not (= lt!2673287 (Union!20843 (Concat!29688 (derivativeStep!6180 r1!6279 (h!80006 s!14292)) r2!6217) (derivativeStep!6180 r2!6217 (h!80006 s!14292))))))))

(declare-fun b!7783846 () Bool)

(declare-fun e!4610479 () Bool)

(declare-fun tp!2288566 () Bool)

(declare-fun tp!2288562 () Bool)

(assert (=> b!7783846 (= e!4610479 (and tp!2288566 tp!2288562))))

(declare-fun b!7783847 () Bool)

(declare-fun res!3102480 () Bool)

(declare-fun e!4610476 () Bool)

(assert (=> b!7783847 (=> (not res!3102480) (not e!4610476))))

(get-info :version)

(assert (=> b!7783847 (= res!3102480 ((_ is Cons!73558) s!14292))))

(declare-fun b!7783848 () Bool)

(declare-fun res!3102478 () Bool)

(assert (=> b!7783848 (=> (not res!3102478) (not e!4610480))))

(declare-fun nullable!9227 (Regex!20843) Bool)

(assert (=> b!7783848 (= res!3102478 (nullable!9227 r1!6279))))

(declare-fun b!7783849 () Bool)

(declare-fun e!4610481 () Bool)

(declare-fun tp!2288564 () Bool)

(declare-fun tp!2288561 () Bool)

(assert (=> b!7783849 (= e!4610481 (and tp!2288564 tp!2288561))))

(declare-fun b!7783850 () Bool)

(declare-fun res!3102479 () Bool)

(declare-fun e!4610478 () Bool)

(assert (=> b!7783850 (=> (not res!3102479) (not e!4610478))))

(declare-fun validRegex!11257 (Regex!20843) Bool)

(assert (=> b!7783850 (= res!3102479 (validRegex!11257 r2!6217))))

(declare-fun res!3102482 () Bool)

(assert (=> start!740666 (=> (not res!3102482) (not e!4610478))))

(assert (=> start!740666 (= res!3102482 (validRegex!11257 r1!6279))))

(assert (=> start!740666 e!4610478))

(assert (=> start!740666 e!4610481))

(assert (=> start!740666 e!4610479))

(declare-fun e!4610477 () Bool)

(assert (=> start!740666 e!4610477))

(declare-fun b!7783851 () Bool)

(declare-fun tp_is_empty!52041 () Bool)

(declare-fun tp!2288569 () Bool)

(assert (=> b!7783851 (= e!4610477 (and tp_is_empty!52041 tp!2288569))))

(declare-fun b!7783852 () Bool)

(declare-fun tp!2288565 () Bool)

(declare-fun tp!2288563 () Bool)

(assert (=> b!7783852 (= e!4610479 (and tp!2288565 tp!2288563))))

(declare-fun b!7783853 () Bool)

(declare-fun tp!2288568 () Bool)

(declare-fun tp!2288570 () Bool)

(assert (=> b!7783853 (= e!4610481 (and tp!2288568 tp!2288570))))

(declare-fun b!7783854 () Bool)

(declare-fun tp!2288567 () Bool)

(assert (=> b!7783854 (= e!4610481 tp!2288567)))

(declare-fun b!7783855 () Bool)

(assert (=> b!7783855 (= e!4610479 tp_is_empty!52041)))

(declare-fun b!7783856 () Bool)

(declare-fun tp!2288571 () Bool)

(assert (=> b!7783856 (= e!4610479 tp!2288571)))

(declare-fun b!7783857 () Bool)

(assert (=> b!7783857 (= e!4610476 e!4610480)))

(declare-fun res!3102477 () Bool)

(assert (=> b!7783857 (=> (not res!3102477) (not e!4610480))))

(declare-fun matchR!10303 (Regex!20843 List!73682) Bool)

(assert (=> b!7783857 (= res!3102477 (matchR!10303 lt!2673287 (t!388417 s!14292)))))

(declare-fun lt!2673288 () Regex!20843)

(assert (=> b!7783857 (= lt!2673287 (derivativeStep!6180 lt!2673288 (h!80006 s!14292)))))

(declare-fun b!7783858 () Bool)

(assert (=> b!7783858 (= e!4610481 tp_is_empty!52041)))

(declare-fun b!7783859 () Bool)

(assert (=> b!7783859 (= e!4610478 e!4610476)))

(declare-fun res!3102481 () Bool)

(assert (=> b!7783859 (=> (not res!3102481) (not e!4610476))))

(assert (=> b!7783859 (= res!3102481 (matchR!10303 lt!2673288 s!14292))))

(assert (=> b!7783859 (= lt!2673288 (Concat!29688 r1!6279 r2!6217))))

(assert (= (and start!740666 res!3102482) b!7783850))

(assert (= (and b!7783850 res!3102479) b!7783859))

(assert (= (and b!7783859 res!3102481) b!7783847))

(assert (= (and b!7783847 res!3102480) b!7783857))

(assert (= (and b!7783857 res!3102477) b!7783848))

(assert (= (and b!7783848 res!3102478) b!7783845))

(assert (= (and start!740666 ((_ is ElementMatch!20843) r1!6279)) b!7783858))

(assert (= (and start!740666 ((_ is Concat!29688) r1!6279)) b!7783849))

(assert (= (and start!740666 ((_ is Star!20843) r1!6279)) b!7783854))

(assert (= (and start!740666 ((_ is Union!20843) r1!6279)) b!7783853))

(assert (= (and start!740666 ((_ is ElementMatch!20843) r2!6217)) b!7783855))

(assert (= (and start!740666 ((_ is Concat!29688) r2!6217)) b!7783852))

(assert (= (and start!740666 ((_ is Star!20843) r2!6217)) b!7783856))

(assert (= (and start!740666 ((_ is Union!20843) r2!6217)) b!7783846))

(assert (= (and start!740666 ((_ is Cons!73558) s!14292)) b!7783851))

(declare-fun m!8230158 () Bool)

(assert (=> b!7783859 m!8230158))

(declare-fun m!8230160 () Bool)

(assert (=> b!7783845 m!8230160))

(declare-fun m!8230162 () Bool)

(assert (=> b!7783845 m!8230162))

(declare-fun m!8230164 () Bool)

(assert (=> start!740666 m!8230164))

(declare-fun m!8230166 () Bool)

(assert (=> b!7783857 m!8230166))

(declare-fun m!8230168 () Bool)

(assert (=> b!7783857 m!8230168))

(declare-fun m!8230170 () Bool)

(assert (=> b!7783850 m!8230170))

(declare-fun m!8230172 () Bool)

(assert (=> b!7783848 m!8230172))

(check-sat (not start!740666) (not b!7783845) (not b!7783851) (not b!7783857) (not b!7783853) (not b!7783856) (not b!7783859) (not b!7783846) (not b!7783850) (not b!7783852) (not b!7783848) tp_is_empty!52041 (not b!7783854) (not b!7783849))
(check-sat)
(get-model)

(declare-fun b!7783907 () Bool)

(declare-fun e!4610513 () Regex!20843)

(declare-fun e!4610517 () Regex!20843)

(assert (=> b!7783907 (= e!4610513 e!4610517)))

(declare-fun c!1434086 () Bool)

(assert (=> b!7783907 (= c!1434086 ((_ is ElementMatch!20843) r1!6279))))

(declare-fun d!2345401 () Bool)

(declare-fun lt!2673291 () Regex!20843)

(assert (=> d!2345401 (validRegex!11257 lt!2673291)))

(assert (=> d!2345401 (= lt!2673291 e!4610513)))

(declare-fun c!1434084 () Bool)

(assert (=> d!2345401 (= c!1434084 (or ((_ is EmptyExpr!20843) r1!6279) ((_ is EmptyLang!20843) r1!6279)))))

(assert (=> d!2345401 (validRegex!11257 r1!6279)))

(assert (=> d!2345401 (= (derivativeStep!6180 r1!6279 (h!80006 s!14292)) lt!2673291)))

(declare-fun b!7783908 () Bool)

(declare-fun e!4610515 () Regex!20843)

(declare-fun e!4610516 () Regex!20843)

(assert (=> b!7783908 (= e!4610515 e!4610516)))

(declare-fun c!1434087 () Bool)

(assert (=> b!7783908 (= c!1434087 ((_ is Star!20843) r1!6279))))

(declare-fun c!1434083 () Bool)

(declare-fun c!1434085 () Bool)

(declare-fun call!721471 () Regex!20843)

(declare-fun bm!721465 () Bool)

(assert (=> bm!721465 (= call!721471 (derivativeStep!6180 (ite c!1434083 (regTwo!42199 r1!6279) (ite c!1434087 (reg!21172 r1!6279) (ite c!1434085 (regTwo!42198 r1!6279) (regOne!42198 r1!6279)))) (h!80006 s!14292)))))

(declare-fun b!7783909 () Bool)

(declare-fun call!721472 () Regex!20843)

(assert (=> b!7783909 (= e!4610515 (Union!20843 call!721472 call!721471))))

(declare-fun bm!721466 () Bool)

(declare-fun call!721473 () Regex!20843)

(declare-fun call!721470 () Regex!20843)

(assert (=> bm!721466 (= call!721473 call!721470)))

(declare-fun b!7783910 () Bool)

(assert (=> b!7783910 (= c!1434085 (nullable!9227 (regOne!42198 r1!6279)))))

(declare-fun e!4610514 () Regex!20843)

(assert (=> b!7783910 (= e!4610516 e!4610514)))

(declare-fun b!7783911 () Bool)

(assert (=> b!7783911 (= e!4610514 (Union!20843 (Concat!29688 call!721473 (regTwo!42198 r1!6279)) EmptyLang!20843))))

(declare-fun b!7783912 () Bool)

(assert (=> b!7783912 (= c!1434083 ((_ is Union!20843) r1!6279))))

(assert (=> b!7783912 (= e!4610517 e!4610515)))

(declare-fun b!7783913 () Bool)

(assert (=> b!7783913 (= e!4610513 EmptyLang!20843)))

(declare-fun b!7783914 () Bool)

(assert (=> b!7783914 (= e!4610516 (Concat!29688 call!721470 r1!6279))))

(declare-fun bm!721467 () Bool)

(assert (=> bm!721467 (= call!721470 call!721471)))

(declare-fun b!7783915 () Bool)

(assert (=> b!7783915 (= e!4610517 (ite (= (h!80006 s!14292) (c!1434066 r1!6279)) EmptyExpr!20843 EmptyLang!20843))))

(declare-fun b!7783916 () Bool)

(assert (=> b!7783916 (= e!4610514 (Union!20843 (Concat!29688 call!721472 (regTwo!42198 r1!6279)) call!721473))))

(declare-fun bm!721468 () Bool)

(assert (=> bm!721468 (= call!721472 (derivativeStep!6180 (ite c!1434083 (regOne!42199 r1!6279) (regOne!42198 r1!6279)) (h!80006 s!14292)))))

(assert (= (and d!2345401 c!1434084) b!7783913))

(assert (= (and d!2345401 (not c!1434084)) b!7783907))

(assert (= (and b!7783907 c!1434086) b!7783915))

(assert (= (and b!7783907 (not c!1434086)) b!7783912))

(assert (= (and b!7783912 c!1434083) b!7783909))

(assert (= (and b!7783912 (not c!1434083)) b!7783908))

(assert (= (and b!7783908 c!1434087) b!7783914))

(assert (= (and b!7783908 (not c!1434087)) b!7783910))

(assert (= (and b!7783910 c!1434085) b!7783916))

(assert (= (and b!7783910 (not c!1434085)) b!7783911))

(assert (= (or b!7783916 b!7783911) bm!721466))

(assert (= (or b!7783914 bm!721466) bm!721467))

(assert (= (or b!7783909 bm!721467) bm!721465))

(assert (= (or b!7783909 b!7783916) bm!721468))

(declare-fun m!8230180 () Bool)

(assert (=> d!2345401 m!8230180))

(assert (=> d!2345401 m!8230164))

(declare-fun m!8230182 () Bool)

(assert (=> bm!721465 m!8230182))

(declare-fun m!8230184 () Bool)

(assert (=> b!7783910 m!8230184))

(declare-fun m!8230186 () Bool)

(assert (=> bm!721468 m!8230186))

(assert (=> b!7783845 d!2345401))

(declare-fun b!7783917 () Bool)

(declare-fun e!4610518 () Regex!20843)

(declare-fun e!4610522 () Regex!20843)

(assert (=> b!7783917 (= e!4610518 e!4610522)))

(declare-fun c!1434091 () Bool)

(assert (=> b!7783917 (= c!1434091 ((_ is ElementMatch!20843) r2!6217))))

(declare-fun d!2345407 () Bool)

(declare-fun lt!2673292 () Regex!20843)

(assert (=> d!2345407 (validRegex!11257 lt!2673292)))

(assert (=> d!2345407 (= lt!2673292 e!4610518)))

(declare-fun c!1434089 () Bool)

(assert (=> d!2345407 (= c!1434089 (or ((_ is EmptyExpr!20843) r2!6217) ((_ is EmptyLang!20843) r2!6217)))))

(assert (=> d!2345407 (validRegex!11257 r2!6217)))

(assert (=> d!2345407 (= (derivativeStep!6180 r2!6217 (h!80006 s!14292)) lt!2673292)))

(declare-fun b!7783918 () Bool)

(declare-fun e!4610520 () Regex!20843)

(declare-fun e!4610521 () Regex!20843)

(assert (=> b!7783918 (= e!4610520 e!4610521)))

(declare-fun c!1434092 () Bool)

(assert (=> b!7783918 (= c!1434092 ((_ is Star!20843) r2!6217))))

(declare-fun call!721475 () Regex!20843)

(declare-fun c!1434088 () Bool)

(declare-fun bm!721469 () Bool)

(declare-fun c!1434090 () Bool)

(assert (=> bm!721469 (= call!721475 (derivativeStep!6180 (ite c!1434088 (regTwo!42199 r2!6217) (ite c!1434092 (reg!21172 r2!6217) (ite c!1434090 (regTwo!42198 r2!6217) (regOne!42198 r2!6217)))) (h!80006 s!14292)))))

(declare-fun b!7783919 () Bool)

(declare-fun call!721476 () Regex!20843)

(assert (=> b!7783919 (= e!4610520 (Union!20843 call!721476 call!721475))))

(declare-fun bm!721470 () Bool)

(declare-fun call!721477 () Regex!20843)

(declare-fun call!721474 () Regex!20843)

(assert (=> bm!721470 (= call!721477 call!721474)))

(declare-fun b!7783920 () Bool)

(assert (=> b!7783920 (= c!1434090 (nullable!9227 (regOne!42198 r2!6217)))))

(declare-fun e!4610519 () Regex!20843)

(assert (=> b!7783920 (= e!4610521 e!4610519)))

(declare-fun b!7783921 () Bool)

(assert (=> b!7783921 (= e!4610519 (Union!20843 (Concat!29688 call!721477 (regTwo!42198 r2!6217)) EmptyLang!20843))))

(declare-fun b!7783922 () Bool)

(assert (=> b!7783922 (= c!1434088 ((_ is Union!20843) r2!6217))))

(assert (=> b!7783922 (= e!4610522 e!4610520)))

(declare-fun b!7783923 () Bool)

(assert (=> b!7783923 (= e!4610518 EmptyLang!20843)))

(declare-fun b!7783924 () Bool)

(assert (=> b!7783924 (= e!4610521 (Concat!29688 call!721474 r2!6217))))

(declare-fun bm!721471 () Bool)

(assert (=> bm!721471 (= call!721474 call!721475)))

(declare-fun b!7783925 () Bool)

(assert (=> b!7783925 (= e!4610522 (ite (= (h!80006 s!14292) (c!1434066 r2!6217)) EmptyExpr!20843 EmptyLang!20843))))

(declare-fun b!7783926 () Bool)

(assert (=> b!7783926 (= e!4610519 (Union!20843 (Concat!29688 call!721476 (regTwo!42198 r2!6217)) call!721477))))

(declare-fun bm!721472 () Bool)

(assert (=> bm!721472 (= call!721476 (derivativeStep!6180 (ite c!1434088 (regOne!42199 r2!6217) (regOne!42198 r2!6217)) (h!80006 s!14292)))))

(assert (= (and d!2345407 c!1434089) b!7783923))

(assert (= (and d!2345407 (not c!1434089)) b!7783917))

(assert (= (and b!7783917 c!1434091) b!7783925))

(assert (= (and b!7783917 (not c!1434091)) b!7783922))

(assert (= (and b!7783922 c!1434088) b!7783919))

(assert (= (and b!7783922 (not c!1434088)) b!7783918))

(assert (= (and b!7783918 c!1434092) b!7783924))

(assert (= (and b!7783918 (not c!1434092)) b!7783920))

(assert (= (and b!7783920 c!1434090) b!7783926))

(assert (= (and b!7783920 (not c!1434090)) b!7783921))

(assert (= (or b!7783926 b!7783921) bm!721470))

(assert (= (or b!7783924 bm!721470) bm!721471))

(assert (= (or b!7783919 bm!721471) bm!721469))

(assert (= (or b!7783919 b!7783926) bm!721472))

(declare-fun m!8230188 () Bool)

(assert (=> d!2345407 m!8230188))

(assert (=> d!2345407 m!8230170))

(declare-fun m!8230190 () Bool)

(assert (=> bm!721469 m!8230190))

(declare-fun m!8230192 () Bool)

(assert (=> b!7783920 m!8230192))

(declare-fun m!8230194 () Bool)

(assert (=> bm!721472 m!8230194))

(assert (=> b!7783845 d!2345407))

(declare-fun d!2345409 () Bool)

(declare-fun res!3102511 () Bool)

(declare-fun e!4610551 () Bool)

(assert (=> d!2345409 (=> res!3102511 e!4610551)))

(assert (=> d!2345409 (= res!3102511 ((_ is ElementMatch!20843) r2!6217))))

(assert (=> d!2345409 (= (validRegex!11257 r2!6217) e!4610551)))

(declare-fun b!7783966 () Bool)

(declare-fun e!4610552 () Bool)

(declare-fun call!721494 () Bool)

(assert (=> b!7783966 (= e!4610552 call!721494)))

(declare-fun b!7783967 () Bool)

(declare-fun e!4610554 () Bool)

(declare-fun call!721496 () Bool)

(assert (=> b!7783967 (= e!4610554 call!721496)))

(declare-fun b!7783969 () Bool)

(declare-fun e!4610549 () Bool)

(assert (=> b!7783969 (= e!4610549 call!721496)))

(declare-fun b!7783971 () Bool)

(declare-fun e!4610558 () Bool)

(assert (=> b!7783971 (= e!4610558 e!4610552)))

(declare-fun res!3102508 () Bool)

(assert (=> b!7783971 (= res!3102508 (not (nullable!9227 (reg!21172 r2!6217))))))

(assert (=> b!7783971 (=> (not res!3102508) (not e!4610552))))

(declare-fun bm!721489 () Bool)

(declare-fun call!721492 () Bool)

(declare-fun c!1434112 () Bool)

(assert (=> bm!721489 (= call!721492 (validRegex!11257 (ite c!1434112 (regOne!42199 r2!6217) (regOne!42198 r2!6217))))))

(declare-fun b!7783973 () Bool)

(assert (=> b!7783973 (= e!4610551 e!4610558)))

(declare-fun c!1434113 () Bool)

(assert (=> b!7783973 (= c!1434113 ((_ is Star!20843) r2!6217))))

(declare-fun b!7783975 () Bool)

(declare-fun e!4610550 () Bool)

(assert (=> b!7783975 (= e!4610558 e!4610550)))

(assert (=> b!7783975 (= c!1434112 ((_ is Union!20843) r2!6217))))

(declare-fun bm!721491 () Bool)

(assert (=> bm!721491 (= call!721496 call!721494)))

(declare-fun bm!721492 () Bool)

(assert (=> bm!721492 (= call!721494 (validRegex!11257 (ite c!1434113 (reg!21172 r2!6217) (ite c!1434112 (regTwo!42199 r2!6217) (regTwo!42198 r2!6217)))))))

(declare-fun b!7783979 () Bool)

(declare-fun res!3102512 () Bool)

(declare-fun e!4610553 () Bool)

(assert (=> b!7783979 (=> res!3102512 e!4610553)))

(assert (=> b!7783979 (= res!3102512 (not ((_ is Concat!29688) r2!6217)))))

(assert (=> b!7783979 (= e!4610550 e!4610553)))

(declare-fun b!7783981 () Bool)

(assert (=> b!7783981 (= e!4610553 e!4610554)))

(declare-fun res!3102510 () Bool)

(assert (=> b!7783981 (=> (not res!3102510) (not e!4610554))))

(assert (=> b!7783981 (= res!3102510 call!721492)))

(declare-fun b!7783982 () Bool)

(declare-fun res!3102509 () Bool)

(assert (=> b!7783982 (=> (not res!3102509) (not e!4610549))))

(assert (=> b!7783982 (= res!3102509 call!721492)))

(assert (=> b!7783982 (= e!4610550 e!4610549)))

(assert (= (and d!2345409 (not res!3102511)) b!7783973))

(assert (= (and b!7783973 c!1434113) b!7783971))

(assert (= (and b!7783973 (not c!1434113)) b!7783975))

(assert (= (and b!7783971 res!3102508) b!7783966))

(assert (= (and b!7783975 c!1434112) b!7783982))

(assert (= (and b!7783975 (not c!1434112)) b!7783979))

(assert (= (and b!7783982 res!3102509) b!7783969))

(assert (= (and b!7783979 (not res!3102512)) b!7783981))

(assert (= (and b!7783981 res!3102510) b!7783967))

(assert (= (or b!7783982 b!7783981) bm!721489))

(assert (= (or b!7783969 b!7783967) bm!721491))

(assert (= (or b!7783966 bm!721491) bm!721492))

(declare-fun m!8230196 () Bool)

(assert (=> b!7783971 m!8230196))

(declare-fun m!8230198 () Bool)

(assert (=> bm!721489 m!8230198))

(declare-fun m!8230200 () Bool)

(assert (=> bm!721492 m!8230200))

(assert (=> b!7783850 d!2345409))

(declare-fun b!7784050 () Bool)

(declare-fun res!3102545 () Bool)

(declare-fun e!4610598 () Bool)

(assert (=> b!7784050 (=> res!3102545 e!4610598)))

(assert (=> b!7784050 (= res!3102545 (not ((_ is ElementMatch!20843) lt!2673288)))))

(declare-fun e!4610595 () Bool)

(assert (=> b!7784050 (= e!4610595 e!4610598)))

(declare-fun b!7784051 () Bool)

(declare-fun res!3102546 () Bool)

(declare-fun e!4610594 () Bool)

(assert (=> b!7784051 (=> (not res!3102546) (not e!4610594))))

(declare-fun isEmpty!42195 (List!73682) Bool)

(declare-fun tail!15463 (List!73682) List!73682)

(assert (=> b!7784051 (= res!3102546 (isEmpty!42195 (tail!15463 s!14292)))))

(declare-fun bm!721502 () Bool)

(declare-fun call!721507 () Bool)

(assert (=> bm!721502 (= call!721507 (isEmpty!42195 s!14292))))

(declare-fun b!7784052 () Bool)

(declare-fun e!4610596 () Bool)

(declare-fun lt!2673301 () Bool)

(assert (=> b!7784052 (= e!4610596 (= lt!2673301 call!721507))))

(declare-fun b!7784053 () Bool)

(declare-fun head!15922 (List!73682) C!42012)

(assert (=> b!7784053 (= e!4610594 (= (head!15922 s!14292) (c!1434066 lt!2673288)))))

(declare-fun b!7784054 () Bool)

(declare-fun e!4610593 () Bool)

(declare-fun e!4610597 () Bool)

(assert (=> b!7784054 (= e!4610593 e!4610597)))

(declare-fun res!3102549 () Bool)

(assert (=> b!7784054 (=> res!3102549 e!4610597)))

(assert (=> b!7784054 (= res!3102549 call!721507)))

(declare-fun b!7784055 () Bool)

(declare-fun res!3102548 () Bool)

(assert (=> b!7784055 (=> res!3102548 e!4610597)))

(assert (=> b!7784055 (= res!3102548 (not (isEmpty!42195 (tail!15463 s!14292))))))

(declare-fun b!7784056 () Bool)

(declare-fun res!3102550 () Bool)

(assert (=> b!7784056 (=> (not res!3102550) (not e!4610594))))

(assert (=> b!7784056 (= res!3102550 (not call!721507))))

(declare-fun b!7784057 () Bool)

(assert (=> b!7784057 (= e!4610595 (not lt!2673301))))

(declare-fun b!7784059 () Bool)

(assert (=> b!7784059 (= e!4610597 (not (= (head!15922 s!14292) (c!1434066 lt!2673288))))))

(declare-fun b!7784060 () Bool)

(assert (=> b!7784060 (= e!4610598 e!4610593)))

(declare-fun res!3102552 () Bool)

(assert (=> b!7784060 (=> (not res!3102552) (not e!4610593))))

(assert (=> b!7784060 (= res!3102552 (not lt!2673301))))

(declare-fun b!7784061 () Bool)

(assert (=> b!7784061 (= e!4610596 e!4610595)))

(declare-fun c!1434133 () Bool)

(assert (=> b!7784061 (= c!1434133 ((_ is EmptyLang!20843) lt!2673288))))

(declare-fun b!7784062 () Bool)

(declare-fun e!4610592 () Bool)

(assert (=> b!7784062 (= e!4610592 (matchR!10303 (derivativeStep!6180 lt!2673288 (head!15922 s!14292)) (tail!15463 s!14292)))))

(declare-fun b!7784063 () Bool)

(assert (=> b!7784063 (= e!4610592 (nullable!9227 lt!2673288))))

(declare-fun b!7784058 () Bool)

(declare-fun res!3102551 () Bool)

(assert (=> b!7784058 (=> res!3102551 e!4610598)))

(assert (=> b!7784058 (= res!3102551 e!4610594)))

(declare-fun res!3102547 () Bool)

(assert (=> b!7784058 (=> (not res!3102547) (not e!4610594))))

(assert (=> b!7784058 (= res!3102547 lt!2673301)))

(declare-fun d!2345411 () Bool)

(assert (=> d!2345411 e!4610596))

(declare-fun c!1434131 () Bool)

(assert (=> d!2345411 (= c!1434131 ((_ is EmptyExpr!20843) lt!2673288))))

(assert (=> d!2345411 (= lt!2673301 e!4610592)))

(declare-fun c!1434132 () Bool)

(assert (=> d!2345411 (= c!1434132 (isEmpty!42195 s!14292))))

(assert (=> d!2345411 (validRegex!11257 lt!2673288)))

(assert (=> d!2345411 (= (matchR!10303 lt!2673288 s!14292) lt!2673301)))

(assert (= (and d!2345411 c!1434132) b!7784063))

(assert (= (and d!2345411 (not c!1434132)) b!7784062))

(assert (= (and d!2345411 c!1434131) b!7784052))

(assert (= (and d!2345411 (not c!1434131)) b!7784061))

(assert (= (and b!7784061 c!1434133) b!7784057))

(assert (= (and b!7784061 (not c!1434133)) b!7784050))

(assert (= (and b!7784050 (not res!3102545)) b!7784058))

(assert (= (and b!7784058 res!3102547) b!7784056))

(assert (= (and b!7784056 res!3102550) b!7784051))

(assert (= (and b!7784051 res!3102546) b!7784053))

(assert (= (and b!7784058 (not res!3102551)) b!7784060))

(assert (= (and b!7784060 res!3102552) b!7784054))

(assert (= (and b!7784054 (not res!3102549)) b!7784055))

(assert (= (and b!7784055 (not res!3102548)) b!7784059))

(assert (= (or b!7784052 b!7784054 b!7784056) bm!721502))

(declare-fun m!8230218 () Bool)

(assert (=> b!7784062 m!8230218))

(assert (=> b!7784062 m!8230218))

(declare-fun m!8230220 () Bool)

(assert (=> b!7784062 m!8230220))

(declare-fun m!8230222 () Bool)

(assert (=> b!7784062 m!8230222))

(assert (=> b!7784062 m!8230220))

(assert (=> b!7784062 m!8230222))

(declare-fun m!8230224 () Bool)

(assert (=> b!7784062 m!8230224))

(assert (=> b!7784055 m!8230222))

(assert (=> b!7784055 m!8230222))

(declare-fun m!8230226 () Bool)

(assert (=> b!7784055 m!8230226))

(assert (=> b!7784053 m!8230218))

(assert (=> b!7784059 m!8230218))

(declare-fun m!8230228 () Bool)

(assert (=> d!2345411 m!8230228))

(declare-fun m!8230230 () Bool)

(assert (=> d!2345411 m!8230230))

(assert (=> bm!721502 m!8230228))

(declare-fun m!8230232 () Bool)

(assert (=> b!7784063 m!8230232))

(assert (=> b!7784051 m!8230222))

(assert (=> b!7784051 m!8230222))

(assert (=> b!7784051 m!8230226))

(assert (=> b!7783859 d!2345411))

(declare-fun d!2345417 () Bool)

(declare-fun nullableFct!3611 (Regex!20843) Bool)

(assert (=> d!2345417 (= (nullable!9227 r1!6279) (nullableFct!3611 r1!6279))))

(declare-fun bs!1966270 () Bool)

(assert (= bs!1966270 d!2345417))

(declare-fun m!8230234 () Bool)

(assert (=> bs!1966270 m!8230234))

(assert (=> b!7783848 d!2345417))

(declare-fun d!2345419 () Bool)

(declare-fun res!3102564 () Bool)

(declare-fun e!4610608 () Bool)

(assert (=> d!2345419 (=> res!3102564 e!4610608)))

(assert (=> d!2345419 (= res!3102564 ((_ is ElementMatch!20843) r1!6279))))

(assert (=> d!2345419 (= (validRegex!11257 r1!6279) e!4610608)))

(declare-fun b!7784078 () Bool)

(declare-fun e!4610609 () Bool)

(declare-fun call!721510 () Bool)

(assert (=> b!7784078 (= e!4610609 call!721510)))

(declare-fun b!7784079 () Bool)

(declare-fun e!4610611 () Bool)

(declare-fun call!721511 () Bool)

(assert (=> b!7784079 (= e!4610611 call!721511)))

(declare-fun b!7784080 () Bool)

(declare-fun e!4610606 () Bool)

(assert (=> b!7784080 (= e!4610606 call!721511)))

(declare-fun b!7784081 () Bool)

(declare-fun e!4610612 () Bool)

(assert (=> b!7784081 (= e!4610612 e!4610609)))

(declare-fun res!3102561 () Bool)

(assert (=> b!7784081 (= res!3102561 (not (nullable!9227 (reg!21172 r1!6279))))))

(assert (=> b!7784081 (=> (not res!3102561) (not e!4610609))))

(declare-fun bm!721504 () Bool)

(declare-fun call!721509 () Bool)

(declare-fun c!1434137 () Bool)

(assert (=> bm!721504 (= call!721509 (validRegex!11257 (ite c!1434137 (regOne!42199 r1!6279) (regOne!42198 r1!6279))))))

(declare-fun b!7784082 () Bool)

(assert (=> b!7784082 (= e!4610608 e!4610612)))

(declare-fun c!1434138 () Bool)

(assert (=> b!7784082 (= c!1434138 ((_ is Star!20843) r1!6279))))

(declare-fun b!7784083 () Bool)

(declare-fun e!4610607 () Bool)

(assert (=> b!7784083 (= e!4610612 e!4610607)))

(assert (=> b!7784083 (= c!1434137 ((_ is Union!20843) r1!6279))))

(declare-fun bm!721505 () Bool)

(assert (=> bm!721505 (= call!721511 call!721510)))

(declare-fun bm!721506 () Bool)

(assert (=> bm!721506 (= call!721510 (validRegex!11257 (ite c!1434138 (reg!21172 r1!6279) (ite c!1434137 (regTwo!42199 r1!6279) (regTwo!42198 r1!6279)))))))

(declare-fun b!7784084 () Bool)

(declare-fun res!3102565 () Bool)

(declare-fun e!4610610 () Bool)

(assert (=> b!7784084 (=> res!3102565 e!4610610)))

(assert (=> b!7784084 (= res!3102565 (not ((_ is Concat!29688) r1!6279)))))

(assert (=> b!7784084 (= e!4610607 e!4610610)))

(declare-fun b!7784085 () Bool)

(assert (=> b!7784085 (= e!4610610 e!4610611)))

(declare-fun res!3102563 () Bool)

(assert (=> b!7784085 (=> (not res!3102563) (not e!4610611))))

(assert (=> b!7784085 (= res!3102563 call!721509)))

(declare-fun b!7784086 () Bool)

(declare-fun res!3102562 () Bool)

(assert (=> b!7784086 (=> (not res!3102562) (not e!4610606))))

(assert (=> b!7784086 (= res!3102562 call!721509)))

(assert (=> b!7784086 (= e!4610607 e!4610606)))

(assert (= (and d!2345419 (not res!3102564)) b!7784082))

(assert (= (and b!7784082 c!1434138) b!7784081))

(assert (= (and b!7784082 (not c!1434138)) b!7784083))

(assert (= (and b!7784081 res!3102561) b!7784078))

(assert (= (and b!7784083 c!1434137) b!7784086))

(assert (= (and b!7784083 (not c!1434137)) b!7784084))

(assert (= (and b!7784086 res!3102562) b!7784080))

(assert (= (and b!7784084 (not res!3102565)) b!7784085))

(assert (= (and b!7784085 res!3102563) b!7784079))

(assert (= (or b!7784086 b!7784085) bm!721504))

(assert (= (or b!7784080 b!7784079) bm!721505))

(assert (= (or b!7784078 bm!721505) bm!721506))

(declare-fun m!8230252 () Bool)

(assert (=> b!7784081 m!8230252))

(declare-fun m!8230254 () Bool)

(assert (=> bm!721504 m!8230254))

(declare-fun m!8230256 () Bool)

(assert (=> bm!721506 m!8230256))

(assert (=> start!740666 d!2345419))

(declare-fun b!7784097 () Bool)

(declare-fun res!3102566 () Bool)

(declare-fun e!4610624 () Bool)

(assert (=> b!7784097 (=> res!3102566 e!4610624)))

(assert (=> b!7784097 (= res!3102566 (not ((_ is ElementMatch!20843) lt!2673287)))))

(declare-fun e!4610621 () Bool)

(assert (=> b!7784097 (= e!4610621 e!4610624)))

(declare-fun b!7784098 () Bool)

(declare-fun res!3102567 () Bool)

(declare-fun e!4610620 () Bool)

(assert (=> b!7784098 (=> (not res!3102567) (not e!4610620))))

(assert (=> b!7784098 (= res!3102567 (isEmpty!42195 (tail!15463 (t!388417 s!14292))))))

(declare-fun bm!721511 () Bool)

(declare-fun call!721516 () Bool)

(assert (=> bm!721511 (= call!721516 (isEmpty!42195 (t!388417 s!14292)))))

(declare-fun b!7784099 () Bool)

(declare-fun e!4610622 () Bool)

(declare-fun lt!2673304 () Bool)

(assert (=> b!7784099 (= e!4610622 (= lt!2673304 call!721516))))

(declare-fun b!7784100 () Bool)

(assert (=> b!7784100 (= e!4610620 (= (head!15922 (t!388417 s!14292)) (c!1434066 lt!2673287)))))

(declare-fun b!7784101 () Bool)

(declare-fun e!4610619 () Bool)

(declare-fun e!4610623 () Bool)

(assert (=> b!7784101 (= e!4610619 e!4610623)))

(declare-fun res!3102570 () Bool)

(assert (=> b!7784101 (=> res!3102570 e!4610623)))

(assert (=> b!7784101 (= res!3102570 call!721516)))

(declare-fun b!7784102 () Bool)

(declare-fun res!3102569 () Bool)

(assert (=> b!7784102 (=> res!3102569 e!4610623)))

(assert (=> b!7784102 (= res!3102569 (not (isEmpty!42195 (tail!15463 (t!388417 s!14292)))))))

(declare-fun b!7784103 () Bool)

(declare-fun res!3102571 () Bool)

(assert (=> b!7784103 (=> (not res!3102571) (not e!4610620))))

(assert (=> b!7784103 (= res!3102571 (not call!721516))))

(declare-fun b!7784104 () Bool)

(assert (=> b!7784104 (= e!4610621 (not lt!2673304))))

(declare-fun b!7784106 () Bool)

(assert (=> b!7784106 (= e!4610623 (not (= (head!15922 (t!388417 s!14292)) (c!1434066 lt!2673287))))))

(declare-fun b!7784107 () Bool)

(assert (=> b!7784107 (= e!4610624 e!4610619)))

(declare-fun res!3102573 () Bool)

(assert (=> b!7784107 (=> (not res!3102573) (not e!4610619))))

(assert (=> b!7784107 (= res!3102573 (not lt!2673304))))

(declare-fun b!7784108 () Bool)

(assert (=> b!7784108 (= e!4610622 e!4610621)))

(declare-fun c!1434146 () Bool)

(assert (=> b!7784108 (= c!1434146 ((_ is EmptyLang!20843) lt!2673287))))

(declare-fun b!7784109 () Bool)

(declare-fun e!4610618 () Bool)

(assert (=> b!7784109 (= e!4610618 (matchR!10303 (derivativeStep!6180 lt!2673287 (head!15922 (t!388417 s!14292))) (tail!15463 (t!388417 s!14292))))))

(declare-fun b!7784110 () Bool)

(assert (=> b!7784110 (= e!4610618 (nullable!9227 lt!2673287))))

(declare-fun b!7784105 () Bool)

(declare-fun res!3102572 () Bool)

(assert (=> b!7784105 (=> res!3102572 e!4610624)))

(assert (=> b!7784105 (= res!3102572 e!4610620)))

(declare-fun res!3102568 () Bool)

(assert (=> b!7784105 (=> (not res!3102568) (not e!4610620))))

(assert (=> b!7784105 (= res!3102568 lt!2673304)))

(declare-fun d!2345423 () Bool)

(assert (=> d!2345423 e!4610622))

(declare-fun c!1434144 () Bool)

(assert (=> d!2345423 (= c!1434144 ((_ is EmptyExpr!20843) lt!2673287))))

(assert (=> d!2345423 (= lt!2673304 e!4610618)))

(declare-fun c!1434145 () Bool)

(assert (=> d!2345423 (= c!1434145 (isEmpty!42195 (t!388417 s!14292)))))

(assert (=> d!2345423 (validRegex!11257 lt!2673287)))

(assert (=> d!2345423 (= (matchR!10303 lt!2673287 (t!388417 s!14292)) lt!2673304)))

(assert (= (and d!2345423 c!1434145) b!7784110))

(assert (= (and d!2345423 (not c!1434145)) b!7784109))

(assert (= (and d!2345423 c!1434144) b!7784099))

(assert (= (and d!2345423 (not c!1434144)) b!7784108))

(assert (= (and b!7784108 c!1434146) b!7784104))

(assert (= (and b!7784108 (not c!1434146)) b!7784097))

(assert (= (and b!7784097 (not res!3102566)) b!7784105))

(assert (= (and b!7784105 res!3102568) b!7784103))

(assert (= (and b!7784103 res!3102571) b!7784098))

(assert (= (and b!7784098 res!3102567) b!7784100))

(assert (= (and b!7784105 (not res!3102572)) b!7784107))

(assert (= (and b!7784107 res!3102573) b!7784101))

(assert (= (and b!7784101 (not res!3102570)) b!7784102))

(assert (= (and b!7784102 (not res!3102569)) b!7784106))

(assert (= (or b!7784099 b!7784101 b!7784103) bm!721511))

(declare-fun m!8230268 () Bool)

(assert (=> b!7784109 m!8230268))

(assert (=> b!7784109 m!8230268))

(declare-fun m!8230270 () Bool)

(assert (=> b!7784109 m!8230270))

(declare-fun m!8230272 () Bool)

(assert (=> b!7784109 m!8230272))

(assert (=> b!7784109 m!8230270))

(assert (=> b!7784109 m!8230272))

(declare-fun m!8230274 () Bool)

(assert (=> b!7784109 m!8230274))

(assert (=> b!7784102 m!8230272))

(assert (=> b!7784102 m!8230272))

(declare-fun m!8230276 () Bool)

(assert (=> b!7784102 m!8230276))

(assert (=> b!7784100 m!8230268))

(assert (=> b!7784106 m!8230268))

(declare-fun m!8230278 () Bool)

(assert (=> d!2345423 m!8230278))

(declare-fun m!8230280 () Bool)

(assert (=> d!2345423 m!8230280))

(assert (=> bm!721511 m!8230278))

(declare-fun m!8230282 () Bool)

(assert (=> b!7784110 m!8230282))

(assert (=> b!7784098 m!8230272))

(assert (=> b!7784098 m!8230272))

(assert (=> b!7784098 m!8230276))

(assert (=> b!7783857 d!2345423))

(declare-fun b!7784111 () Bool)

(declare-fun e!4610625 () Regex!20843)

(declare-fun e!4610629 () Regex!20843)

(assert (=> b!7784111 (= e!4610625 e!4610629)))

(declare-fun c!1434150 () Bool)

(assert (=> b!7784111 (= c!1434150 ((_ is ElementMatch!20843) lt!2673288))))

(declare-fun d!2345427 () Bool)

(declare-fun lt!2673305 () Regex!20843)

(assert (=> d!2345427 (validRegex!11257 lt!2673305)))

(assert (=> d!2345427 (= lt!2673305 e!4610625)))

(declare-fun c!1434148 () Bool)

(assert (=> d!2345427 (= c!1434148 (or ((_ is EmptyExpr!20843) lt!2673288) ((_ is EmptyLang!20843) lt!2673288)))))

(assert (=> d!2345427 (validRegex!11257 lt!2673288)))

(assert (=> d!2345427 (= (derivativeStep!6180 lt!2673288 (h!80006 s!14292)) lt!2673305)))

(declare-fun b!7784112 () Bool)

(declare-fun e!4610627 () Regex!20843)

(declare-fun e!4610628 () Regex!20843)

(assert (=> b!7784112 (= e!4610627 e!4610628)))

(declare-fun c!1434151 () Bool)

(assert (=> b!7784112 (= c!1434151 ((_ is Star!20843) lt!2673288))))

(declare-fun c!1434147 () Bool)

(declare-fun bm!721512 () Bool)

(declare-fun call!721518 () Regex!20843)

(declare-fun c!1434149 () Bool)

(assert (=> bm!721512 (= call!721518 (derivativeStep!6180 (ite c!1434147 (regTwo!42199 lt!2673288) (ite c!1434151 (reg!21172 lt!2673288) (ite c!1434149 (regTwo!42198 lt!2673288) (regOne!42198 lt!2673288)))) (h!80006 s!14292)))))

(declare-fun b!7784113 () Bool)

(declare-fun call!721519 () Regex!20843)

(assert (=> b!7784113 (= e!4610627 (Union!20843 call!721519 call!721518))))

(declare-fun bm!721513 () Bool)

(declare-fun call!721520 () Regex!20843)

(declare-fun call!721517 () Regex!20843)

(assert (=> bm!721513 (= call!721520 call!721517)))

(declare-fun b!7784114 () Bool)

(assert (=> b!7784114 (= c!1434149 (nullable!9227 (regOne!42198 lt!2673288)))))

(declare-fun e!4610626 () Regex!20843)

(assert (=> b!7784114 (= e!4610628 e!4610626)))

(declare-fun b!7784115 () Bool)

(assert (=> b!7784115 (= e!4610626 (Union!20843 (Concat!29688 call!721520 (regTwo!42198 lt!2673288)) EmptyLang!20843))))

(declare-fun b!7784116 () Bool)

(assert (=> b!7784116 (= c!1434147 ((_ is Union!20843) lt!2673288))))

(assert (=> b!7784116 (= e!4610629 e!4610627)))

(declare-fun b!7784117 () Bool)

(assert (=> b!7784117 (= e!4610625 EmptyLang!20843)))

(declare-fun b!7784118 () Bool)

(assert (=> b!7784118 (= e!4610628 (Concat!29688 call!721517 lt!2673288))))

(declare-fun bm!721514 () Bool)

(assert (=> bm!721514 (= call!721517 call!721518)))

(declare-fun b!7784119 () Bool)

(assert (=> b!7784119 (= e!4610629 (ite (= (h!80006 s!14292) (c!1434066 lt!2673288)) EmptyExpr!20843 EmptyLang!20843))))

(declare-fun b!7784120 () Bool)

(assert (=> b!7784120 (= e!4610626 (Union!20843 (Concat!29688 call!721519 (regTwo!42198 lt!2673288)) call!721520))))

(declare-fun bm!721515 () Bool)

(assert (=> bm!721515 (= call!721519 (derivativeStep!6180 (ite c!1434147 (regOne!42199 lt!2673288) (regOne!42198 lt!2673288)) (h!80006 s!14292)))))

(assert (= (and d!2345427 c!1434148) b!7784117))

(assert (= (and d!2345427 (not c!1434148)) b!7784111))

(assert (= (and b!7784111 c!1434150) b!7784119))

(assert (= (and b!7784111 (not c!1434150)) b!7784116))

(assert (= (and b!7784116 c!1434147) b!7784113))

(assert (= (and b!7784116 (not c!1434147)) b!7784112))

(assert (= (and b!7784112 c!1434151) b!7784118))

(assert (= (and b!7784112 (not c!1434151)) b!7784114))

(assert (= (and b!7784114 c!1434149) b!7784120))

(assert (= (and b!7784114 (not c!1434149)) b!7784115))

(assert (= (or b!7784120 b!7784115) bm!721513))

(assert (= (or b!7784118 bm!721513) bm!721514))

(assert (= (or b!7784113 bm!721514) bm!721512))

(assert (= (or b!7784113 b!7784120) bm!721515))

(declare-fun m!8230286 () Bool)

(assert (=> d!2345427 m!8230286))

(assert (=> d!2345427 m!8230230))

(declare-fun m!8230288 () Bool)

(assert (=> bm!721512 m!8230288))

(declare-fun m!8230290 () Bool)

(assert (=> b!7784114 m!8230290))

(declare-fun m!8230292 () Bool)

(assert (=> bm!721515 m!8230292))

(assert (=> b!7783857 d!2345427))

(declare-fun b!7784156 () Bool)

(declare-fun e!4610646 () Bool)

(declare-fun tp!2288584 () Bool)

(assert (=> b!7784156 (= e!4610646 tp!2288584)))

(declare-fun b!7784154 () Bool)

(assert (=> b!7784154 (= e!4610646 tp_is_empty!52041)))

(declare-fun b!7784157 () Bool)

(declare-fun tp!2288583 () Bool)

(declare-fun tp!2288582 () Bool)

(assert (=> b!7784157 (= e!4610646 (and tp!2288583 tp!2288582))))

(assert (=> b!7783849 (= tp!2288564 e!4610646)))

(declare-fun b!7784155 () Bool)

(declare-fun tp!2288585 () Bool)

(declare-fun tp!2288586 () Bool)

(assert (=> b!7784155 (= e!4610646 (and tp!2288585 tp!2288586))))

(assert (= (and b!7783849 ((_ is ElementMatch!20843) (regOne!42198 r1!6279))) b!7784154))

(assert (= (and b!7783849 ((_ is Concat!29688) (regOne!42198 r1!6279))) b!7784155))

(assert (= (and b!7783849 ((_ is Star!20843) (regOne!42198 r1!6279))) b!7784156))

(assert (= (and b!7783849 ((_ is Union!20843) (regOne!42198 r1!6279))) b!7784157))

(declare-fun b!7784168 () Bool)

(declare-fun e!4610649 () Bool)

(declare-fun tp!2288593 () Bool)

(assert (=> b!7784168 (= e!4610649 tp!2288593)))

(declare-fun b!7784166 () Bool)

(assert (=> b!7784166 (= e!4610649 tp_is_empty!52041)))

(declare-fun b!7784169 () Bool)

(declare-fun tp!2288592 () Bool)

(declare-fun tp!2288591 () Bool)

(assert (=> b!7784169 (= e!4610649 (and tp!2288592 tp!2288591))))

(assert (=> b!7783849 (= tp!2288561 e!4610649)))

(declare-fun b!7784167 () Bool)

(declare-fun tp!2288594 () Bool)

(declare-fun tp!2288595 () Bool)

(assert (=> b!7784167 (= e!4610649 (and tp!2288594 tp!2288595))))

(assert (= (and b!7783849 ((_ is ElementMatch!20843) (regTwo!42198 r1!6279))) b!7784166))

(assert (= (and b!7783849 ((_ is Concat!29688) (regTwo!42198 r1!6279))) b!7784167))

(assert (= (and b!7783849 ((_ is Star!20843) (regTwo!42198 r1!6279))) b!7784168))

(assert (= (and b!7783849 ((_ is Union!20843) (regTwo!42198 r1!6279))) b!7784169))

(declare-fun b!7784174 () Bool)

(declare-fun e!4610650 () Bool)

(declare-fun tp!2288604 () Bool)

(assert (=> b!7784174 (= e!4610650 tp!2288604)))

(declare-fun b!7784172 () Bool)

(assert (=> b!7784172 (= e!4610650 tp_is_empty!52041)))

(declare-fun b!7784175 () Bool)

(declare-fun tp!2288603 () Bool)

(declare-fun tp!2288602 () Bool)

(assert (=> b!7784175 (= e!4610650 (and tp!2288603 tp!2288602))))

(assert (=> b!7783854 (= tp!2288567 e!4610650)))

(declare-fun b!7784173 () Bool)

(declare-fun tp!2288605 () Bool)

(declare-fun tp!2288606 () Bool)

(assert (=> b!7784173 (= e!4610650 (and tp!2288605 tp!2288606))))

(assert (= (and b!7783854 ((_ is ElementMatch!20843) (reg!21172 r1!6279))) b!7784172))

(assert (= (and b!7783854 ((_ is Concat!29688) (reg!21172 r1!6279))) b!7784173))

(assert (= (and b!7783854 ((_ is Star!20843) (reg!21172 r1!6279))) b!7784174))

(assert (= (and b!7783854 ((_ is Union!20843) (reg!21172 r1!6279))) b!7784175))

(declare-fun b!7784178 () Bool)

(declare-fun e!4610651 () Bool)

(declare-fun tp!2288609 () Bool)

(assert (=> b!7784178 (= e!4610651 tp!2288609)))

(declare-fun b!7784176 () Bool)

(assert (=> b!7784176 (= e!4610651 tp_is_empty!52041)))

(declare-fun b!7784179 () Bool)

(declare-fun tp!2288608 () Bool)

(declare-fun tp!2288607 () Bool)

(assert (=> b!7784179 (= e!4610651 (and tp!2288608 tp!2288607))))

(assert (=> b!7783853 (= tp!2288568 e!4610651)))

(declare-fun b!7784177 () Bool)

(declare-fun tp!2288610 () Bool)

(declare-fun tp!2288611 () Bool)

(assert (=> b!7784177 (= e!4610651 (and tp!2288610 tp!2288611))))

(assert (= (and b!7783853 ((_ is ElementMatch!20843) (regOne!42199 r1!6279))) b!7784176))

(assert (= (and b!7783853 ((_ is Concat!29688) (regOne!42199 r1!6279))) b!7784177))

(assert (= (and b!7783853 ((_ is Star!20843) (regOne!42199 r1!6279))) b!7784178))

(assert (= (and b!7783853 ((_ is Union!20843) (regOne!42199 r1!6279))) b!7784179))

(declare-fun b!7784182 () Bool)

(declare-fun e!4610652 () Bool)

(declare-fun tp!2288614 () Bool)

(assert (=> b!7784182 (= e!4610652 tp!2288614)))

(declare-fun b!7784180 () Bool)

(assert (=> b!7784180 (= e!4610652 tp_is_empty!52041)))

(declare-fun b!7784183 () Bool)

(declare-fun tp!2288613 () Bool)

(declare-fun tp!2288612 () Bool)

(assert (=> b!7784183 (= e!4610652 (and tp!2288613 tp!2288612))))

(assert (=> b!7783853 (= tp!2288570 e!4610652)))

(declare-fun b!7784181 () Bool)

(declare-fun tp!2288615 () Bool)

(declare-fun tp!2288616 () Bool)

(assert (=> b!7784181 (= e!4610652 (and tp!2288615 tp!2288616))))

(assert (= (and b!7783853 ((_ is ElementMatch!20843) (regTwo!42199 r1!6279))) b!7784180))

(assert (= (and b!7783853 ((_ is Concat!29688) (regTwo!42199 r1!6279))) b!7784181))

(assert (= (and b!7783853 ((_ is Star!20843) (regTwo!42199 r1!6279))) b!7784182))

(assert (= (and b!7783853 ((_ is Union!20843) (regTwo!42199 r1!6279))) b!7784183))

(declare-fun b!7784186 () Bool)

(declare-fun e!4610653 () Bool)

(declare-fun tp!2288619 () Bool)

(assert (=> b!7784186 (= e!4610653 tp!2288619)))

(declare-fun b!7784184 () Bool)

(assert (=> b!7784184 (= e!4610653 tp_is_empty!52041)))

(declare-fun b!7784187 () Bool)

(declare-fun tp!2288618 () Bool)

(declare-fun tp!2288617 () Bool)

(assert (=> b!7784187 (= e!4610653 (and tp!2288618 tp!2288617))))

(assert (=> b!7783852 (= tp!2288565 e!4610653)))

(declare-fun b!7784185 () Bool)

(declare-fun tp!2288620 () Bool)

(declare-fun tp!2288621 () Bool)

(assert (=> b!7784185 (= e!4610653 (and tp!2288620 tp!2288621))))

(assert (= (and b!7783852 ((_ is ElementMatch!20843) (regOne!42198 r2!6217))) b!7784184))

(assert (= (and b!7783852 ((_ is Concat!29688) (regOne!42198 r2!6217))) b!7784185))

(assert (= (and b!7783852 ((_ is Star!20843) (regOne!42198 r2!6217))) b!7784186))

(assert (= (and b!7783852 ((_ is Union!20843) (regOne!42198 r2!6217))) b!7784187))

(declare-fun b!7784194 () Bool)

(declare-fun e!4610655 () Bool)

(declare-fun tp!2288629 () Bool)

(assert (=> b!7784194 (= e!4610655 tp!2288629)))

(declare-fun b!7784192 () Bool)

(assert (=> b!7784192 (= e!4610655 tp_is_empty!52041)))

(declare-fun b!7784195 () Bool)

(declare-fun tp!2288628 () Bool)

(declare-fun tp!2288627 () Bool)

(assert (=> b!7784195 (= e!4610655 (and tp!2288628 tp!2288627))))

(assert (=> b!7783852 (= tp!2288563 e!4610655)))

(declare-fun b!7784193 () Bool)

(declare-fun tp!2288630 () Bool)

(declare-fun tp!2288631 () Bool)

(assert (=> b!7784193 (= e!4610655 (and tp!2288630 tp!2288631))))

(assert (= (and b!7783852 ((_ is ElementMatch!20843) (regTwo!42198 r2!6217))) b!7784192))

(assert (= (and b!7783852 ((_ is Concat!29688) (regTwo!42198 r2!6217))) b!7784193))

(assert (= (and b!7783852 ((_ is Star!20843) (regTwo!42198 r2!6217))) b!7784194))

(assert (= (and b!7783852 ((_ is Union!20843) (regTwo!42198 r2!6217))) b!7784195))

(declare-fun b!7784202 () Bool)

(declare-fun e!4610657 () Bool)

(declare-fun tp!2288639 () Bool)

(assert (=> b!7784202 (= e!4610657 tp!2288639)))

(declare-fun b!7784200 () Bool)

(assert (=> b!7784200 (= e!4610657 tp_is_empty!52041)))

(declare-fun b!7784203 () Bool)

(declare-fun tp!2288638 () Bool)

(declare-fun tp!2288637 () Bool)

(assert (=> b!7784203 (= e!4610657 (and tp!2288638 tp!2288637))))

(assert (=> b!7783846 (= tp!2288566 e!4610657)))

(declare-fun b!7784201 () Bool)

(declare-fun tp!2288640 () Bool)

(declare-fun tp!2288641 () Bool)

(assert (=> b!7784201 (= e!4610657 (and tp!2288640 tp!2288641))))

(assert (= (and b!7783846 ((_ is ElementMatch!20843) (regOne!42199 r2!6217))) b!7784200))

(assert (= (and b!7783846 ((_ is Concat!29688) (regOne!42199 r2!6217))) b!7784201))

(assert (= (and b!7783846 ((_ is Star!20843) (regOne!42199 r2!6217))) b!7784202))

(assert (= (and b!7783846 ((_ is Union!20843) (regOne!42199 r2!6217))) b!7784203))

(declare-fun b!7784210 () Bool)

(declare-fun e!4610659 () Bool)

(declare-fun tp!2288649 () Bool)

(assert (=> b!7784210 (= e!4610659 tp!2288649)))

(declare-fun b!7784208 () Bool)

(assert (=> b!7784208 (= e!4610659 tp_is_empty!52041)))

(declare-fun b!7784211 () Bool)

(declare-fun tp!2288648 () Bool)

(declare-fun tp!2288647 () Bool)

(assert (=> b!7784211 (= e!4610659 (and tp!2288648 tp!2288647))))

(assert (=> b!7783846 (= tp!2288562 e!4610659)))

(declare-fun b!7784209 () Bool)

(declare-fun tp!2288650 () Bool)

(declare-fun tp!2288651 () Bool)

(assert (=> b!7784209 (= e!4610659 (and tp!2288650 tp!2288651))))

(assert (= (and b!7783846 ((_ is ElementMatch!20843) (regTwo!42199 r2!6217))) b!7784208))

(assert (= (and b!7783846 ((_ is Concat!29688) (regTwo!42199 r2!6217))) b!7784209))

(assert (= (and b!7783846 ((_ is Star!20843) (regTwo!42199 r2!6217))) b!7784210))

(assert (= (and b!7783846 ((_ is Union!20843) (regTwo!42199 r2!6217))) b!7784211))

(declare-fun b!7784224 () Bool)

(declare-fun e!4610665 () Bool)

(declare-fun tp!2288661 () Bool)

(assert (=> b!7784224 (= e!4610665 (and tp_is_empty!52041 tp!2288661))))

(assert (=> b!7783851 (= tp!2288569 e!4610665)))

(assert (= (and b!7783851 ((_ is Cons!73558) (t!388417 s!14292))) b!7784224))

(declare-fun b!7784227 () Bool)

(declare-fun e!4610666 () Bool)

(declare-fun tp!2288664 () Bool)

(assert (=> b!7784227 (= e!4610666 tp!2288664)))

(declare-fun b!7784225 () Bool)

(assert (=> b!7784225 (= e!4610666 tp_is_empty!52041)))

(declare-fun b!7784228 () Bool)

(declare-fun tp!2288663 () Bool)

(declare-fun tp!2288662 () Bool)

(assert (=> b!7784228 (= e!4610666 (and tp!2288663 tp!2288662))))

(assert (=> b!7783856 (= tp!2288571 e!4610666)))

(declare-fun b!7784226 () Bool)

(declare-fun tp!2288665 () Bool)

(declare-fun tp!2288666 () Bool)

(assert (=> b!7784226 (= e!4610666 (and tp!2288665 tp!2288666))))

(assert (= (and b!7783856 ((_ is ElementMatch!20843) (reg!21172 r2!6217))) b!7784225))

(assert (= (and b!7783856 ((_ is Concat!29688) (reg!21172 r2!6217))) b!7784226))

(assert (= (and b!7783856 ((_ is Star!20843) (reg!21172 r2!6217))) b!7784227))

(assert (= (and b!7783856 ((_ is Union!20843) (reg!21172 r2!6217))) b!7784228))

(check-sat (not d!2345417) (not b!7784228) (not b!7784051) (not b!7783920) (not bm!721465) (not b!7784168) (not b!7784102) (not b!7784201) (not b!7784181) (not bm!721468) (not b!7784178) (not bm!721506) (not b!7784211) (not b!7784106) (not d!2345407) (not b!7784187) (not b!7784053) (not bm!721512) (not b!7784109) (not b!7784098) (not bm!721472) (not b!7784063) (not b!7784081) (not b!7784169) (not b!7784055) (not b!7784210) (not bm!721502) (not bm!721511) (not b!7784110) (not b!7784209) (not b!7784186) (not b!7784173) (not b!7784167) (not b!7784175) (not b!7784100) (not d!2345411) (not b!7783971) (not bm!721489) (not b!7784157) (not b!7784114) (not b!7784174) (not b!7784224) (not b!7784062) (not b!7784156) (not b!7784183) (not d!2345401) (not b!7784179) (not bm!721492) (not b!7783910) (not b!7784177) (not d!2345423) (not bm!721515) (not d!2345427) (not b!7784185) (not b!7784203) (not b!7784195) tp_is_empty!52041 (not b!7784155) (not b!7784194) (not b!7784226) (not b!7784182) (not b!7784193) (not bm!721469) (not b!7784059) (not b!7784202) (not bm!721504) (not b!7784227))
(check-sat)

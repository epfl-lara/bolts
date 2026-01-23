; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543800 () Bool)

(assert start!543800)

(declare-fun res!2187693 () Bool)

(declare-fun e!3203725 () Bool)

(assert (=> start!543800 (=> (not res!2187693) (not e!3203725))))

(declare-datatypes ((C!29092 0))(
  ( (C!29093 (val!24198 Int)) )
))
(declare-datatypes ((Regex!14413 0))(
  ( (ElementMatch!14413 (c!884317 C!29092)) (Concat!23258 (regOne!29338 Regex!14413) (regTwo!29338 Regex!14413)) (EmptyExpr!14413) (Star!14413 (reg!14742 Regex!14413)) (EmptyLang!14413) (Union!14413 (regOne!29339 Regex!14413) (regTwo!29339 Regex!14413)) )
))
(declare-datatypes ((List!59765 0))(
  ( (Nil!59641) (Cons!59641 (h!66089 Regex!14413) (t!372794 List!59765)) )
))
(declare-datatypes ((Context!7594 0))(
  ( (Context!7595 (exprs!4297 List!59765)) )
))
(declare-fun ctx!74 () Context!7594)

(declare-fun lostCause!1383 (Context!7594) Bool)

(assert (=> start!543800 (= res!2187693 (lostCause!1383 ctx!74))))

(assert (=> start!543800 e!3203725))

(declare-fun e!3203727 () Bool)

(declare-fun inv!79213 (Context!7594) Bool)

(assert (=> start!543800 (and (inv!79213 ctx!74) e!3203727)))

(declare-fun b!5136331 () Bool)

(declare-fun validRegex!6270 (Regex!14413) Bool)

(assert (=> b!5136331 (= e!3203725 (not (validRegex!6270 (h!66089 (exprs!4297 ctx!74)))))))

(declare-fun b!5136332 () Bool)

(declare-fun res!2187691 () Bool)

(assert (=> b!5136332 (=> (not res!2187691) (not e!3203725))))

(get-info :version)

(assert (=> b!5136332 (= res!2187691 ((_ is Cons!59641) (exprs!4297 ctx!74)))))

(declare-fun b!5136333 () Bool)

(declare-fun e!3203726 () Bool)

(declare-fun nullable!4786 (Regex!14413) Bool)

(assert (=> b!5136333 (= e!3203726 (not (nullable!4786 (h!66089 (exprs!4297 ctx!74)))))))

(declare-fun b!5136334 () Bool)

(declare-fun res!2187694 () Bool)

(assert (=> b!5136334 (=> (not res!2187694) (not e!3203725))))

(assert (=> b!5136334 (= res!2187694 e!3203726)))

(declare-fun res!2187692 () Bool)

(assert (=> b!5136334 (=> res!2187692 e!3203726)))

(assert (=> b!5136334 (= res!2187692 (not ((_ is Cons!59641) (exprs!4297 ctx!74))))))

(declare-fun b!5136335 () Bool)

(declare-fun tp!1432513 () Bool)

(assert (=> b!5136335 (= e!3203727 tp!1432513)))

(assert (= (and start!543800 res!2187693) b!5136334))

(assert (= (and b!5136334 (not res!2187692)) b!5136333))

(assert (= (and b!5136334 res!2187694) b!5136332))

(assert (= (and b!5136332 res!2187691) b!5136331))

(assert (= start!543800 b!5136335))

(declare-fun m!6201994 () Bool)

(assert (=> start!543800 m!6201994))

(declare-fun m!6201996 () Bool)

(assert (=> start!543800 m!6201996))

(declare-fun m!6201998 () Bool)

(assert (=> b!5136331 m!6201998))

(declare-fun m!6202000 () Bool)

(assert (=> b!5136333 m!6202000))

(check-sat (not start!543800) (not b!5136333) (not b!5136331) (not b!5136335))
(check-sat)
(get-model)

(declare-fun d!1662004 () Bool)

(declare-fun lambda!256021 () Int)

(declare-fun exists!1751 (List!59765 Int) Bool)

(assert (=> d!1662004 (= (lostCause!1383 ctx!74) (exists!1751 (exprs!4297 ctx!74) lambda!256021))))

(declare-fun bs!1200182 () Bool)

(assert (= bs!1200182 d!1662004))

(declare-fun m!6202014 () Bool)

(assert (=> bs!1200182 m!6202014))

(assert (=> start!543800 d!1662004))

(declare-fun bs!1200183 () Bool)

(declare-fun d!1662014 () Bool)

(assert (= bs!1200183 (and d!1662014 d!1662004)))

(declare-fun lambda!256024 () Int)

(assert (=> bs!1200183 (not (= lambda!256024 lambda!256021))))

(declare-fun forall!13882 (List!59765 Int) Bool)

(assert (=> d!1662014 (= (inv!79213 ctx!74) (forall!13882 (exprs!4297 ctx!74) lambda!256024))))

(declare-fun bs!1200184 () Bool)

(assert (= bs!1200184 d!1662014))

(declare-fun m!6202016 () Bool)

(assert (=> bs!1200184 m!6202016))

(assert (=> start!543800 d!1662014))

(declare-fun d!1662016 () Bool)

(declare-fun nullableFct!1307 (Regex!14413) Bool)

(assert (=> d!1662016 (= (nullable!4786 (h!66089 (exprs!4297 ctx!74))) (nullableFct!1307 (h!66089 (exprs!4297 ctx!74))))))

(declare-fun bs!1200185 () Bool)

(assert (= bs!1200185 d!1662016))

(declare-fun m!6202018 () Bool)

(assert (=> bs!1200185 m!6202018))

(assert (=> b!5136333 d!1662016))

(declare-fun b!5136386 () Bool)

(declare-fun e!3203766 () Bool)

(declare-fun call!358065 () Bool)

(assert (=> b!5136386 (= e!3203766 call!358065)))

(declare-fun b!5136387 () Bool)

(declare-fun e!3203772 () Bool)

(declare-fun e!3203769 () Bool)

(assert (=> b!5136387 (= e!3203772 e!3203769)))

(declare-fun c!884329 () Bool)

(assert (=> b!5136387 (= c!884329 ((_ is Star!14413) (h!66089 (exprs!4297 ctx!74))))))

(declare-fun b!5136388 () Bool)

(declare-fun res!2187723 () Bool)

(declare-fun e!3203767 () Bool)

(assert (=> b!5136388 (=> res!2187723 e!3203767)))

(assert (=> b!5136388 (= res!2187723 (not ((_ is Concat!23258) (h!66089 (exprs!4297 ctx!74)))))))

(declare-fun e!3203771 () Bool)

(assert (=> b!5136388 (= e!3203771 e!3203767)))

(declare-fun b!5136389 () Bool)

(declare-fun e!3203768 () Bool)

(assert (=> b!5136389 (= e!3203767 e!3203768)))

(declare-fun res!2187724 () Bool)

(assert (=> b!5136389 (=> (not res!2187724) (not e!3203768))))

(assert (=> b!5136389 (= res!2187724 call!358065)))

(declare-fun b!5136390 () Bool)

(declare-fun e!3203770 () Bool)

(assert (=> b!5136390 (= e!3203769 e!3203770)))

(declare-fun res!2187720 () Bool)

(assert (=> b!5136390 (= res!2187720 (not (nullable!4786 (reg!14742 (h!66089 (exprs!4297 ctx!74))))))))

(assert (=> b!5136390 (=> (not res!2187720) (not e!3203770))))

(declare-fun b!5136391 () Bool)

(declare-fun res!2187722 () Bool)

(assert (=> b!5136391 (=> (not res!2187722) (not e!3203766))))

(declare-fun call!358067 () Bool)

(assert (=> b!5136391 (= res!2187722 call!358067)))

(assert (=> b!5136391 (= e!3203771 e!3203766)))

(declare-fun bm!358061 () Bool)

(declare-fun c!884328 () Bool)

(declare-fun call!358066 () Bool)

(assert (=> bm!358061 (= call!358066 (validRegex!6270 (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74)))))))))

(declare-fun b!5136392 () Bool)

(assert (=> b!5136392 (= e!3203769 e!3203771)))

(assert (=> b!5136392 (= c!884328 ((_ is Union!14413) (h!66089 (exprs!4297 ctx!74))))))

(declare-fun b!5136393 () Bool)

(assert (=> b!5136393 (= e!3203770 call!358066)))

(declare-fun bm!358062 () Bool)

(assert (=> bm!358062 (= call!358067 call!358066)))

(declare-fun b!5136394 () Bool)

(assert (=> b!5136394 (= e!3203768 call!358067)))

(declare-fun d!1662018 () Bool)

(declare-fun res!2187721 () Bool)

(assert (=> d!1662018 (=> res!2187721 e!3203772)))

(assert (=> d!1662018 (= res!2187721 ((_ is ElementMatch!14413) (h!66089 (exprs!4297 ctx!74))))))

(assert (=> d!1662018 (= (validRegex!6270 (h!66089 (exprs!4297 ctx!74))) e!3203772)))

(declare-fun bm!358060 () Bool)

(assert (=> bm!358060 (= call!358065 (validRegex!6270 (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))))))

(assert (= (and d!1662018 (not res!2187721)) b!5136387))

(assert (= (and b!5136387 c!884329) b!5136390))

(assert (= (and b!5136387 (not c!884329)) b!5136392))

(assert (= (and b!5136390 res!2187720) b!5136393))

(assert (= (and b!5136392 c!884328) b!5136391))

(assert (= (and b!5136392 (not c!884328)) b!5136388))

(assert (= (and b!5136391 res!2187722) b!5136386))

(assert (= (and b!5136388 (not res!2187723)) b!5136389))

(assert (= (and b!5136389 res!2187724) b!5136394))

(assert (= (or b!5136391 b!5136394) bm!358062))

(assert (= (or b!5136386 b!5136389) bm!358060))

(assert (= (or b!5136393 bm!358062) bm!358061))

(declare-fun m!6202020 () Bool)

(assert (=> b!5136390 m!6202020))

(declare-fun m!6202022 () Bool)

(assert (=> bm!358061 m!6202022))

(declare-fun m!6202024 () Bool)

(assert (=> bm!358060 m!6202024))

(assert (=> b!5136331 d!1662018))

(declare-fun b!5136399 () Bool)

(declare-fun e!3203775 () Bool)

(declare-fun tp!1432524 () Bool)

(declare-fun tp!1432525 () Bool)

(assert (=> b!5136399 (= e!3203775 (and tp!1432524 tp!1432525))))

(assert (=> b!5136335 (= tp!1432513 e!3203775)))

(assert (= (and b!5136335 ((_ is Cons!59641) (exprs!4297 ctx!74))) b!5136399))

(check-sat (not d!1662014) (not b!5136390) (not d!1662004) (not b!5136399) (not d!1662016) (not bm!358061) (not bm!358060))
(check-sat)
(get-model)

(declare-fun bm!358070 () Bool)

(declare-fun call!358076 () Bool)

(declare-fun c!884334 () Bool)

(assert (=> bm!358070 (= call!358076 (nullable!4786 (ite c!884334 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74))))))))

(declare-fun b!5136431 () Bool)

(declare-fun e!3203803 () Bool)

(assert (=> b!5136431 (= e!3203803 call!358076)))

(declare-fun d!1662022 () Bool)

(declare-fun res!2187750 () Bool)

(declare-fun e!3203805 () Bool)

(assert (=> d!1662022 (=> res!2187750 e!3203805)))

(assert (=> d!1662022 (= res!2187750 ((_ is EmptyExpr!14413) (h!66089 (exprs!4297 ctx!74))))))

(assert (=> d!1662022 (= (nullableFct!1307 (h!66089 (exprs!4297 ctx!74))) e!3203805)))

(declare-fun b!5136432 () Bool)

(declare-fun e!3203802 () Bool)

(assert (=> b!5136432 (= e!3203805 e!3203802)))

(declare-fun res!2187746 () Bool)

(assert (=> b!5136432 (=> (not res!2187746) (not e!3203802))))

(assert (=> b!5136432 (= res!2187746 (and (not ((_ is EmptyLang!14413) (h!66089 (exprs!4297 ctx!74)))) (not ((_ is ElementMatch!14413) (h!66089 (exprs!4297 ctx!74))))))))

(declare-fun b!5136433 () Bool)

(declare-fun e!3203806 () Bool)

(declare-fun e!3203801 () Bool)

(assert (=> b!5136433 (= e!3203806 e!3203801)))

(assert (=> b!5136433 (= c!884334 ((_ is Union!14413) (h!66089 (exprs!4297 ctx!74))))))

(declare-fun b!5136434 () Bool)

(declare-fun e!3203804 () Bool)

(assert (=> b!5136434 (= e!3203801 e!3203804)))

(declare-fun res!2187749 () Bool)

(declare-fun call!358075 () Bool)

(assert (=> b!5136434 (= res!2187749 call!358075)))

(assert (=> b!5136434 (=> (not res!2187749) (not e!3203804))))

(declare-fun b!5136435 () Bool)

(assert (=> b!5136435 (= e!3203804 call!358076)))

(declare-fun b!5136436 () Bool)

(assert (=> b!5136436 (= e!3203801 e!3203803)))

(declare-fun res!2187748 () Bool)

(assert (=> b!5136436 (= res!2187748 call!358075)))

(assert (=> b!5136436 (=> res!2187748 e!3203803)))

(declare-fun b!5136437 () Bool)

(assert (=> b!5136437 (= e!3203802 e!3203806)))

(declare-fun res!2187747 () Bool)

(assert (=> b!5136437 (=> res!2187747 e!3203806)))

(assert (=> b!5136437 (= res!2187747 ((_ is Star!14413) (h!66089 (exprs!4297 ctx!74))))))

(declare-fun bm!358071 () Bool)

(assert (=> bm!358071 (= call!358075 (nullable!4786 (ite c!884334 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))))))

(assert (= (and d!1662022 (not res!2187750)) b!5136432))

(assert (= (and b!5136432 res!2187746) b!5136437))

(assert (= (and b!5136437 (not res!2187747)) b!5136433))

(assert (= (and b!5136433 c!884334) b!5136436))

(assert (= (and b!5136433 (not c!884334)) b!5136434))

(assert (= (and b!5136436 (not res!2187748)) b!5136431))

(assert (= (and b!5136434 res!2187749) b!5136435))

(assert (= (or b!5136431 b!5136435) bm!358070))

(assert (= (or b!5136436 b!5136434) bm!358071))

(declare-fun m!6202038 () Bool)

(assert (=> bm!358070 m!6202038))

(declare-fun m!6202040 () Bool)

(assert (=> bm!358071 m!6202040))

(assert (=> d!1662016 d!1662022))

(declare-fun b!5136438 () Bool)

(declare-fun e!3203807 () Bool)

(declare-fun call!358077 () Bool)

(assert (=> b!5136438 (= e!3203807 call!358077)))

(declare-fun b!5136439 () Bool)

(declare-fun e!3203813 () Bool)

(declare-fun e!3203810 () Bool)

(assert (=> b!5136439 (= e!3203813 e!3203810)))

(declare-fun c!884336 () Bool)

(assert (=> b!5136439 (= c!884336 ((_ is Star!14413) (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))))))

(declare-fun b!5136440 () Bool)

(declare-fun res!2187754 () Bool)

(declare-fun e!3203808 () Bool)

(assert (=> b!5136440 (=> res!2187754 e!3203808)))

(assert (=> b!5136440 (= res!2187754 (not ((_ is Concat!23258) (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74)))))))))

(declare-fun e!3203812 () Bool)

(assert (=> b!5136440 (= e!3203812 e!3203808)))

(declare-fun b!5136441 () Bool)

(declare-fun e!3203809 () Bool)

(assert (=> b!5136441 (= e!3203808 e!3203809)))

(declare-fun res!2187755 () Bool)

(assert (=> b!5136441 (=> (not res!2187755) (not e!3203809))))

(assert (=> b!5136441 (= res!2187755 call!358077)))

(declare-fun b!5136442 () Bool)

(declare-fun e!3203811 () Bool)

(assert (=> b!5136442 (= e!3203810 e!3203811)))

(declare-fun res!2187751 () Bool)

(assert (=> b!5136442 (= res!2187751 (not (nullable!4786 (reg!14742 (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))))))))

(assert (=> b!5136442 (=> (not res!2187751) (not e!3203811))))

(declare-fun b!5136443 () Bool)

(declare-fun res!2187753 () Bool)

(assert (=> b!5136443 (=> (not res!2187753) (not e!3203807))))

(declare-fun call!358079 () Bool)

(assert (=> b!5136443 (= res!2187753 call!358079)))

(assert (=> b!5136443 (= e!3203812 e!3203807)))

(declare-fun call!358078 () Bool)

(declare-fun c!884335 () Bool)

(declare-fun bm!358073 () Bool)

(assert (=> bm!358073 (= call!358078 (validRegex!6270 (ite c!884336 (reg!14742 (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))) (ite c!884335 (regOne!29339 (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))) (regTwo!29338 (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74)))))))))))

(declare-fun b!5136444 () Bool)

(assert (=> b!5136444 (= e!3203810 e!3203812)))

(assert (=> b!5136444 (= c!884335 ((_ is Union!14413) (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))))))

(declare-fun b!5136445 () Bool)

(assert (=> b!5136445 (= e!3203811 call!358078)))

(declare-fun bm!358074 () Bool)

(assert (=> bm!358074 (= call!358079 call!358078)))

(declare-fun b!5136446 () Bool)

(assert (=> b!5136446 (= e!3203809 call!358079)))

(declare-fun d!1662030 () Bool)

(declare-fun res!2187752 () Bool)

(assert (=> d!1662030 (=> res!2187752 e!3203813)))

(assert (=> d!1662030 (= res!2187752 ((_ is ElementMatch!14413) (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))))))

(assert (=> d!1662030 (= (validRegex!6270 (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))) e!3203813)))

(declare-fun bm!358072 () Bool)

(assert (=> bm!358072 (= call!358077 (validRegex!6270 (ite c!884335 (regTwo!29339 (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))) (regOne!29338 (ite c!884328 (regTwo!29339 (h!66089 (exprs!4297 ctx!74))) (regOne!29338 (h!66089 (exprs!4297 ctx!74))))))))))

(assert (= (and d!1662030 (not res!2187752)) b!5136439))

(assert (= (and b!5136439 c!884336) b!5136442))

(assert (= (and b!5136439 (not c!884336)) b!5136444))

(assert (= (and b!5136442 res!2187751) b!5136445))

(assert (= (and b!5136444 c!884335) b!5136443))

(assert (= (and b!5136444 (not c!884335)) b!5136440))

(assert (= (and b!5136443 res!2187753) b!5136438))

(assert (= (and b!5136440 (not res!2187754)) b!5136441))

(assert (= (and b!5136441 res!2187755) b!5136446))

(assert (= (or b!5136443 b!5136446) bm!358074))

(assert (= (or b!5136438 b!5136441) bm!358072))

(assert (= (or b!5136445 bm!358074) bm!358073))

(declare-fun m!6202042 () Bool)

(assert (=> b!5136442 m!6202042))

(declare-fun m!6202044 () Bool)

(assert (=> bm!358073 m!6202044))

(declare-fun m!6202046 () Bool)

(assert (=> bm!358072 m!6202046))

(assert (=> bm!358060 d!1662030))

(declare-fun bs!1200189 () Bool)

(declare-fun d!1662032 () Bool)

(assert (= bs!1200189 (and d!1662032 d!1662004)))

(declare-fun lambda!256030 () Int)

(assert (=> bs!1200189 (not (= lambda!256030 lambda!256021))))

(declare-fun bs!1200190 () Bool)

(assert (= bs!1200190 (and d!1662032 d!1662014)))

(assert (=> bs!1200190 (not (= lambda!256030 lambda!256024))))

(assert (=> d!1662032 true))

(declare-fun order!26933 () Int)

(declare-fun dynLambda!23749 (Int Int) Int)

(assert (=> d!1662032 (< (dynLambda!23749 order!26933 lambda!256021) (dynLambda!23749 order!26933 lambda!256030))))

(assert (=> d!1662032 (= (exists!1751 (exprs!4297 ctx!74) lambda!256021) (not (forall!13882 (exprs!4297 ctx!74) lambda!256030)))))

(declare-fun bs!1200191 () Bool)

(assert (= bs!1200191 d!1662032))

(declare-fun m!6202048 () Bool)

(assert (=> bs!1200191 m!6202048))

(assert (=> d!1662004 d!1662032))

(declare-fun b!5136463 () Bool)

(declare-fun e!3203826 () Bool)

(declare-fun call!358084 () Bool)

(assert (=> b!5136463 (= e!3203826 call!358084)))

(declare-fun b!5136464 () Bool)

(declare-fun e!3203832 () Bool)

(declare-fun e!3203829 () Bool)

(assert (=> b!5136464 (= e!3203832 e!3203829)))

(declare-fun c!884340 () Bool)

(assert (=> b!5136464 (= c!884340 ((_ is Star!14413) (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74)))))))))

(declare-fun b!5136465 () Bool)

(declare-fun res!2187769 () Bool)

(declare-fun e!3203827 () Bool)

(assert (=> b!5136465 (=> res!2187769 e!3203827)))

(assert (=> b!5136465 (= res!2187769 (not ((_ is Concat!23258) (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74))))))))))

(declare-fun e!3203831 () Bool)

(assert (=> b!5136465 (= e!3203831 e!3203827)))

(declare-fun b!5136466 () Bool)

(declare-fun e!3203828 () Bool)

(assert (=> b!5136466 (= e!3203827 e!3203828)))

(declare-fun res!2187770 () Bool)

(assert (=> b!5136466 (=> (not res!2187770) (not e!3203828))))

(assert (=> b!5136466 (= res!2187770 call!358084)))

(declare-fun b!5136467 () Bool)

(declare-fun e!3203830 () Bool)

(assert (=> b!5136467 (= e!3203829 e!3203830)))

(declare-fun res!2187766 () Bool)

(assert (=> b!5136467 (= res!2187766 (not (nullable!4786 (reg!14742 (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74)))))))))))

(assert (=> b!5136467 (=> (not res!2187766) (not e!3203830))))

(declare-fun b!5136468 () Bool)

(declare-fun res!2187768 () Bool)

(assert (=> b!5136468 (=> (not res!2187768) (not e!3203826))))

(declare-fun call!358086 () Bool)

(assert (=> b!5136468 (= res!2187768 call!358086)))

(assert (=> b!5136468 (= e!3203831 e!3203826)))

(declare-fun call!358085 () Bool)

(declare-fun bm!358080 () Bool)

(declare-fun c!884339 () Bool)

(assert (=> bm!358080 (= call!358085 (validRegex!6270 (ite c!884340 (reg!14742 (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74)))))) (ite c!884339 (regOne!29339 (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74)))))) (regTwo!29338 (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74))))))))))))

(declare-fun b!5136469 () Bool)

(assert (=> b!5136469 (= e!3203829 e!3203831)))

(assert (=> b!5136469 (= c!884339 ((_ is Union!14413) (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74)))))))))

(declare-fun b!5136470 () Bool)

(assert (=> b!5136470 (= e!3203830 call!358085)))

(declare-fun bm!358081 () Bool)

(assert (=> bm!358081 (= call!358086 call!358085)))

(declare-fun b!5136471 () Bool)

(assert (=> b!5136471 (= e!3203828 call!358086)))

(declare-fun d!1662034 () Bool)

(declare-fun res!2187767 () Bool)

(assert (=> d!1662034 (=> res!2187767 e!3203832)))

(assert (=> d!1662034 (= res!2187767 ((_ is ElementMatch!14413) (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74)))))))))

(assert (=> d!1662034 (= (validRegex!6270 (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74)))))) e!3203832)))

(declare-fun bm!358079 () Bool)

(assert (=> bm!358079 (= call!358084 (validRegex!6270 (ite c!884339 (regTwo!29339 (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74)))))) (regOne!29338 (ite c!884329 (reg!14742 (h!66089 (exprs!4297 ctx!74))) (ite c!884328 (regOne!29339 (h!66089 (exprs!4297 ctx!74))) (regTwo!29338 (h!66089 (exprs!4297 ctx!74)))))))))))

(assert (= (and d!1662034 (not res!2187767)) b!5136464))

(assert (= (and b!5136464 c!884340) b!5136467))

(assert (= (and b!5136464 (not c!884340)) b!5136469))

(assert (= (and b!5136467 res!2187766) b!5136470))

(assert (= (and b!5136469 c!884339) b!5136468))

(assert (= (and b!5136469 (not c!884339)) b!5136465))

(assert (= (and b!5136468 res!2187768) b!5136463))

(assert (= (and b!5136465 (not res!2187769)) b!5136466))

(assert (= (and b!5136466 res!2187770) b!5136471))

(assert (= (or b!5136468 b!5136471) bm!358081))

(assert (= (or b!5136463 b!5136466) bm!358079))

(assert (= (or b!5136470 bm!358081) bm!358080))

(declare-fun m!6202050 () Bool)

(assert (=> b!5136467 m!6202050))

(declare-fun m!6202052 () Bool)

(assert (=> bm!358080 m!6202052))

(declare-fun m!6202054 () Bool)

(assert (=> bm!358079 m!6202054))

(assert (=> bm!358061 d!1662034))

(declare-fun d!1662036 () Bool)

(declare-fun res!2187785 () Bool)

(declare-fun e!3203852 () Bool)

(assert (=> d!1662036 (=> res!2187785 e!3203852)))

(assert (=> d!1662036 (= res!2187785 ((_ is Nil!59641) (exprs!4297 ctx!74)))))

(assert (=> d!1662036 (= (forall!13882 (exprs!4297 ctx!74) lambda!256024) e!3203852)))

(declare-fun b!5136502 () Bool)

(declare-fun e!3203853 () Bool)

(assert (=> b!5136502 (= e!3203852 e!3203853)))

(declare-fun res!2187786 () Bool)

(assert (=> b!5136502 (=> (not res!2187786) (not e!3203853))))

(declare-fun dynLambda!23750 (Int Regex!14413) Bool)

(assert (=> b!5136502 (= res!2187786 (dynLambda!23750 lambda!256024 (h!66089 (exprs!4297 ctx!74))))))

(declare-fun b!5136503 () Bool)

(assert (=> b!5136503 (= e!3203853 (forall!13882 (t!372794 (exprs!4297 ctx!74)) lambda!256024))))

(assert (= (and d!1662036 (not res!2187785)) b!5136502))

(assert (= (and b!5136502 res!2187786) b!5136503))

(declare-fun b_lambda!200107 () Bool)

(assert (=> (not b_lambda!200107) (not b!5136502)))

(declare-fun m!6202068 () Bool)

(assert (=> b!5136502 m!6202068))

(declare-fun m!6202070 () Bool)

(assert (=> b!5136503 m!6202070))

(assert (=> d!1662014 d!1662036))

(declare-fun d!1662042 () Bool)

(assert (=> d!1662042 (= (nullable!4786 (reg!14742 (h!66089 (exprs!4297 ctx!74)))) (nullableFct!1307 (reg!14742 (h!66089 (exprs!4297 ctx!74)))))))

(declare-fun bs!1200193 () Bool)

(assert (= bs!1200193 d!1662042))

(declare-fun m!6202072 () Bool)

(assert (=> bs!1200193 m!6202072))

(assert (=> b!5136390 d!1662042))

(declare-fun b!5136519 () Bool)

(declare-fun e!3203858 () Bool)

(declare-fun tp_is_empty!37979 () Bool)

(assert (=> b!5136519 (= e!3203858 tp_is_empty!37979)))

(declare-fun b!5136520 () Bool)

(declare-fun tp!1432555 () Bool)

(declare-fun tp!1432553 () Bool)

(assert (=> b!5136520 (= e!3203858 (and tp!1432555 tp!1432553))))

(assert (=> b!5136399 (= tp!1432524 e!3203858)))

(declare-fun b!5136522 () Bool)

(declare-fun tp!1432557 () Bool)

(declare-fun tp!1432556 () Bool)

(assert (=> b!5136522 (= e!3203858 (and tp!1432557 tp!1432556))))

(declare-fun b!5136521 () Bool)

(declare-fun tp!1432554 () Bool)

(assert (=> b!5136521 (= e!3203858 tp!1432554)))

(assert (= (and b!5136399 ((_ is ElementMatch!14413) (h!66089 (exprs!4297 ctx!74)))) b!5136519))

(assert (= (and b!5136399 ((_ is Concat!23258) (h!66089 (exprs!4297 ctx!74)))) b!5136520))

(assert (= (and b!5136399 ((_ is Star!14413) (h!66089 (exprs!4297 ctx!74)))) b!5136521))

(assert (= (and b!5136399 ((_ is Union!14413) (h!66089 (exprs!4297 ctx!74)))) b!5136522))

(declare-fun b!5136523 () Bool)

(declare-fun e!3203859 () Bool)

(declare-fun tp!1432558 () Bool)

(declare-fun tp!1432559 () Bool)

(assert (=> b!5136523 (= e!3203859 (and tp!1432558 tp!1432559))))

(assert (=> b!5136399 (= tp!1432525 e!3203859)))

(assert (= (and b!5136399 ((_ is Cons!59641) (t!372794 (exprs!4297 ctx!74)))) b!5136523))

(declare-fun b_lambda!200111 () Bool)

(assert (= b_lambda!200107 (or d!1662014 b_lambda!200111)))

(declare-fun bs!1200195 () Bool)

(declare-fun d!1662046 () Bool)

(assert (= bs!1200195 (and d!1662046 d!1662014)))

(assert (=> bs!1200195 (= (dynLambda!23750 lambda!256024 (h!66089 (exprs!4297 ctx!74))) (validRegex!6270 (h!66089 (exprs!4297 ctx!74))))))

(assert (=> bs!1200195 m!6201998))

(assert (=> b!5136502 d!1662046))

(check-sat (not bm!358073) (not b!5136523) (not d!1662042) (not bm!358072) (not b!5136521) (not bm!358070) (not bm!358079) (not b!5136522) (not bm!358071) (not b!5136467) (not b!5136503) (not b_lambda!200111) (not bs!1200195) (not b!5136520) (not bm!358080) tp_is_empty!37979 (not d!1662032) (not b!5136442))
(check-sat)

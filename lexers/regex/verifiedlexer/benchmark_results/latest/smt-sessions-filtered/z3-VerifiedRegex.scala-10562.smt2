; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!543832 () Bool)

(assert start!543832)

(declare-fun res!2187818 () Bool)

(declare-fun e!3203877 () Bool)

(assert (=> start!543832 (=> (not res!2187818) (not e!3203877))))

(declare-datatypes ((C!29096 0))(
  ( (C!29097 (val!24200 Int)) )
))
(declare-datatypes ((Regex!14415 0))(
  ( (ElementMatch!14415 (c!884345 C!29096)) (Concat!23260 (regOne!29342 Regex!14415) (regTwo!29342 Regex!14415)) (EmptyExpr!14415) (Star!14415 (reg!14744 Regex!14415)) (EmptyLang!14415) (Union!14415 (regOne!29343 Regex!14415) (regTwo!29343 Regex!14415)) )
))
(declare-datatypes ((List!59767 0))(
  ( (Nil!59643) (Cons!59643 (h!66091 Regex!14415) (t!372796 List!59767)) )
))
(declare-datatypes ((Context!7598 0))(
  ( (Context!7599 (exprs!4299 List!59767)) )
))
(declare-fun ctx!74 () Context!7598)

(declare-fun lostCause!1386 (Context!7598) Bool)

(assert (=> start!543832 (= res!2187818 (lostCause!1386 ctx!74))))

(assert (=> start!543832 e!3203877))

(declare-fun e!3203876 () Bool)

(declare-fun inv!79218 (Context!7598) Bool)

(assert (=> start!543832 (and (inv!79218 ctx!74) e!3203876)))

(declare-fun b!5136559 () Bool)

(declare-fun e!3203875 () Bool)

(declare-fun nullable!4788 (Regex!14415) Bool)

(assert (=> b!5136559 (= e!3203875 (not (nullable!4788 (h!66091 (exprs!4299 ctx!74)))))))

(declare-fun b!5136560 () Bool)

(declare-fun res!2187820 () Bool)

(assert (=> b!5136560 (=> (not res!2187820) (not e!3203877))))

(assert (=> b!5136560 (= res!2187820 e!3203875)))

(declare-fun res!2187822 () Bool)

(assert (=> b!5136560 (=> res!2187822 e!3203875)))

(get-info :version)

(assert (=> b!5136560 (= res!2187822 (not ((_ is Cons!59643) (exprs!4299 ctx!74))))))

(declare-fun b!5136561 () Bool)

(declare-fun res!2187817 () Bool)

(assert (=> b!5136561 (=> (not res!2187817) (not e!3203877))))

(declare-fun lostCause!1387 (Regex!14415) Bool)

(assert (=> b!5136561 (= res!2187817 (not (lostCause!1387 (h!66091 (exprs!4299 ctx!74)))))))

(declare-fun b!5136562 () Bool)

(declare-fun res!2187819 () Bool)

(assert (=> b!5136562 (=> (not res!2187819) (not e!3203877))))

(assert (=> b!5136562 (= res!2187819 ((_ is Cons!59643) (exprs!4299 ctx!74)))))

(declare-fun b!5136563 () Bool)

(declare-fun tp!1432565 () Bool)

(assert (=> b!5136563 (= e!3203876 tp!1432565)))

(declare-fun b!5136564 () Bool)

(assert (=> b!5136564 (= e!3203877 (not (lostCause!1386 (Context!7599 (t!372796 (exprs!4299 ctx!74))))))))

(declare-fun b!5136565 () Bool)

(declare-fun res!2187821 () Bool)

(assert (=> b!5136565 (=> (not res!2187821) (not e!3203877))))

(declare-fun validRegex!6272 (Regex!14415) Bool)

(assert (=> b!5136565 (= res!2187821 (validRegex!6272 (h!66091 (exprs!4299 ctx!74))))))

(assert (= (and start!543832 res!2187818) b!5136560))

(assert (= (and b!5136560 (not res!2187822)) b!5136559))

(assert (= (and b!5136560 res!2187820) b!5136562))

(assert (= (and b!5136562 res!2187819) b!5136565))

(assert (= (and b!5136565 res!2187821) b!5136561))

(assert (= (and b!5136561 res!2187817) b!5136564))

(assert (= start!543832 b!5136563))

(declare-fun m!6202086 () Bool)

(assert (=> start!543832 m!6202086))

(declare-fun m!6202088 () Bool)

(assert (=> start!543832 m!6202088))

(declare-fun m!6202090 () Bool)

(assert (=> b!5136564 m!6202090))

(declare-fun m!6202092 () Bool)

(assert (=> b!5136561 m!6202092))

(declare-fun m!6202094 () Bool)

(assert (=> b!5136565 m!6202094))

(declare-fun m!6202096 () Bool)

(assert (=> b!5136559 m!6202096))

(check-sat (not b!5136559) (not b!5136565) (not start!543832) (not b!5136563) (not b!5136561) (not b!5136564))
(check-sat)
(get-model)

(declare-fun b!5136584 () Bool)

(declare-fun e!3203894 () Bool)

(declare-fun call!358100 () Bool)

(assert (=> b!5136584 (= e!3203894 call!358100)))

(declare-fun b!5136585 () Bool)

(declare-fun e!3203897 () Bool)

(declare-fun e!3203892 () Bool)

(assert (=> b!5136585 (= e!3203897 e!3203892)))

(declare-fun res!2187835 () Bool)

(assert (=> b!5136585 (= res!2187835 (not (nullable!4788 (reg!14744 (h!66091 (exprs!4299 ctx!74))))))))

(assert (=> b!5136585 (=> (not res!2187835) (not e!3203892))))

(declare-fun b!5136586 () Bool)

(declare-fun res!2187833 () Bool)

(declare-fun e!3203895 () Bool)

(assert (=> b!5136586 (=> res!2187833 e!3203895)))

(assert (=> b!5136586 (= res!2187833 (not ((_ is Concat!23260) (h!66091 (exprs!4299 ctx!74)))))))

(declare-fun e!3203896 () Bool)

(assert (=> b!5136586 (= e!3203896 e!3203895)))

(declare-fun bm!358093 () Bool)

(declare-fun call!358098 () Bool)

(declare-fun c!884351 () Bool)

(assert (=> bm!358093 (= call!358098 (validRegex!6272 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun b!5136587 () Bool)

(declare-fun e!3203898 () Bool)

(assert (=> b!5136587 (= e!3203895 e!3203898)))

(declare-fun res!2187834 () Bool)

(assert (=> b!5136587 (=> (not res!2187834) (not e!3203898))))

(assert (=> b!5136587 (= res!2187834 call!358100)))

(declare-fun bm!358094 () Bool)

(declare-fun call!358099 () Bool)

(assert (=> bm!358094 (= call!358100 call!358099)))

(declare-fun b!5136588 () Bool)

(assert (=> b!5136588 (= e!3203898 call!358098)))

(declare-fun b!5136589 () Bool)

(assert (=> b!5136589 (= e!3203892 call!358099)))

(declare-fun b!5136590 () Bool)

(assert (=> b!5136590 (= e!3203897 e!3203896)))

(assert (=> b!5136590 (= c!884351 ((_ is Union!14415) (h!66091 (exprs!4299 ctx!74))))))

(declare-fun bm!358095 () Bool)

(declare-fun c!884350 () Bool)

(assert (=> bm!358095 (= call!358099 (validRegex!6272 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))

(declare-fun b!5136591 () Bool)

(declare-fun e!3203893 () Bool)

(assert (=> b!5136591 (= e!3203893 e!3203897)))

(assert (=> b!5136591 (= c!884350 ((_ is Star!14415) (h!66091 (exprs!4299 ctx!74))))))

(declare-fun d!1662049 () Bool)

(declare-fun res!2187837 () Bool)

(assert (=> d!1662049 (=> res!2187837 e!3203893)))

(assert (=> d!1662049 (= res!2187837 ((_ is ElementMatch!14415) (h!66091 (exprs!4299 ctx!74))))))

(assert (=> d!1662049 (= (validRegex!6272 (h!66091 (exprs!4299 ctx!74))) e!3203893)))

(declare-fun b!5136592 () Bool)

(declare-fun res!2187836 () Bool)

(assert (=> b!5136592 (=> (not res!2187836) (not e!3203894))))

(assert (=> b!5136592 (= res!2187836 call!358098)))

(assert (=> b!5136592 (= e!3203896 e!3203894)))

(assert (= (and d!1662049 (not res!2187837)) b!5136591))

(assert (= (and b!5136591 c!884350) b!5136585))

(assert (= (and b!5136591 (not c!884350)) b!5136590))

(assert (= (and b!5136585 res!2187835) b!5136589))

(assert (= (and b!5136590 c!884351) b!5136592))

(assert (= (and b!5136590 (not c!884351)) b!5136586))

(assert (= (and b!5136592 res!2187836) b!5136584))

(assert (= (and b!5136586 (not res!2187833)) b!5136587))

(assert (= (and b!5136587 res!2187834) b!5136588))

(assert (= (or b!5136592 b!5136588) bm!358093))

(assert (= (or b!5136584 b!5136587) bm!358094))

(assert (= (or b!5136589 bm!358094) bm!358095))

(declare-fun m!6202098 () Bool)

(assert (=> b!5136585 m!6202098))

(declare-fun m!6202100 () Bool)

(assert (=> bm!358093 m!6202100))

(declare-fun m!6202102 () Bool)

(assert (=> bm!358095 m!6202102))

(assert (=> b!5136565 d!1662049))

(declare-fun d!1662053 () Bool)

(declare-fun nullableFct!1308 (Regex!14415) Bool)

(assert (=> d!1662053 (= (nullable!4788 (h!66091 (exprs!4299 ctx!74))) (nullableFct!1308 (h!66091 (exprs!4299 ctx!74))))))

(declare-fun bs!1200198 () Bool)

(assert (= bs!1200198 d!1662053))

(declare-fun m!6202104 () Bool)

(assert (=> bs!1200198 m!6202104))

(assert (=> b!5136559 d!1662053))

(declare-fun d!1662055 () Bool)

(declare-fun lambda!256039 () Int)

(declare-fun exists!1753 (List!59767 Int) Bool)

(assert (=> d!1662055 (= (lostCause!1386 (Context!7599 (t!372796 (exprs!4299 ctx!74)))) (exists!1753 (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74)))) lambda!256039))))

(declare-fun bs!1200203 () Bool)

(assert (= bs!1200203 d!1662055))

(declare-fun m!6202112 () Bool)

(assert (=> bs!1200203 m!6202112))

(assert (=> b!5136564 d!1662055))

(declare-fun d!1662063 () Bool)

(declare-fun lostCauseFct!336 (Regex!14415) Bool)

(assert (=> d!1662063 (= (lostCause!1387 (h!66091 (exprs!4299 ctx!74))) (lostCauseFct!336 (h!66091 (exprs!4299 ctx!74))))))

(declare-fun bs!1200204 () Bool)

(assert (= bs!1200204 d!1662063))

(declare-fun m!6202114 () Bool)

(assert (=> bs!1200204 m!6202114))

(assert (=> b!5136561 d!1662063))

(declare-fun bs!1200205 () Bool)

(declare-fun d!1662065 () Bool)

(assert (= bs!1200205 (and d!1662065 d!1662055)))

(declare-fun lambda!256040 () Int)

(assert (=> bs!1200205 (= lambda!256040 lambda!256039)))

(assert (=> d!1662065 (= (lostCause!1386 ctx!74) (exists!1753 (exprs!4299 ctx!74) lambda!256040))))

(declare-fun bs!1200206 () Bool)

(assert (= bs!1200206 d!1662065))

(declare-fun m!6202116 () Bool)

(assert (=> bs!1200206 m!6202116))

(assert (=> start!543832 d!1662065))

(declare-fun bs!1200210 () Bool)

(declare-fun d!1662067 () Bool)

(assert (= bs!1200210 (and d!1662067 d!1662055)))

(declare-fun lambda!256044 () Int)

(assert (=> bs!1200210 (not (= lambda!256044 lambda!256039))))

(declare-fun bs!1200211 () Bool)

(assert (= bs!1200211 (and d!1662067 d!1662065)))

(assert (=> bs!1200211 (not (= lambda!256044 lambda!256040))))

(declare-fun forall!13884 (List!59767 Int) Bool)

(assert (=> d!1662067 (= (inv!79218 ctx!74) (forall!13884 (exprs!4299 ctx!74) lambda!256044))))

(declare-fun bs!1200213 () Bool)

(assert (= bs!1200213 d!1662067))

(declare-fun m!6202128 () Bool)

(assert (=> bs!1200213 m!6202128))

(assert (=> start!543832 d!1662067))

(declare-fun b!5136629 () Bool)

(declare-fun e!3203925 () Bool)

(declare-fun tp!1432576 () Bool)

(declare-fun tp!1432577 () Bool)

(assert (=> b!5136629 (= e!3203925 (and tp!1432576 tp!1432577))))

(assert (=> b!5136563 (= tp!1432565 e!3203925)))

(assert (= (and b!5136563 ((_ is Cons!59643) (exprs!4299 ctx!74))) b!5136629))

(check-sat (not b!5136585) (not d!1662067) (not d!1662063) (not d!1662053) (not bm!358093) (not d!1662065) (not bm!358095) (not d!1662055) (not b!5136629))
(check-sat)
(get-model)

(declare-fun bs!1200214 () Bool)

(declare-fun d!1662073 () Bool)

(assert (= bs!1200214 (and d!1662073 d!1662055)))

(declare-fun lambda!256047 () Int)

(assert (=> bs!1200214 (not (= lambda!256047 lambda!256039))))

(declare-fun bs!1200215 () Bool)

(assert (= bs!1200215 (and d!1662073 d!1662065)))

(assert (=> bs!1200215 (not (= lambda!256047 lambda!256040))))

(declare-fun bs!1200216 () Bool)

(assert (= bs!1200216 (and d!1662073 d!1662067)))

(assert (=> bs!1200216 (not (= lambda!256047 lambda!256044))))

(assert (=> d!1662073 true))

(declare-fun order!26935 () Int)

(declare-fun dynLambda!23751 (Int Int) Int)

(assert (=> d!1662073 (< (dynLambda!23751 order!26935 lambda!256040) (dynLambda!23751 order!26935 lambda!256047))))

(assert (=> d!1662073 (= (exists!1753 (exprs!4299 ctx!74) lambda!256040) (not (forall!13884 (exprs!4299 ctx!74) lambda!256047)))))

(declare-fun bs!1200217 () Bool)

(assert (= bs!1200217 d!1662073))

(declare-fun m!6202130 () Bool)

(assert (=> bs!1200217 m!6202130))

(assert (=> d!1662065 d!1662073))

(declare-fun b!5136632 () Bool)

(declare-fun e!3203928 () Bool)

(declare-fun call!358112 () Bool)

(assert (=> b!5136632 (= e!3203928 call!358112)))

(declare-fun b!5136633 () Bool)

(declare-fun e!3203931 () Bool)

(declare-fun e!3203926 () Bool)

(assert (=> b!5136633 (= e!3203931 e!3203926)))

(declare-fun res!2187855 () Bool)

(assert (=> b!5136633 (= res!2187855 (not (nullable!4788 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))))

(assert (=> b!5136633 (=> (not res!2187855) (not e!3203926))))

(declare-fun b!5136634 () Bool)

(declare-fun res!2187853 () Bool)

(declare-fun e!3203929 () Bool)

(assert (=> b!5136634 (=> res!2187853 e!3203929)))

(assert (=> b!5136634 (= res!2187853 (not ((_ is Concat!23260) (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))))

(declare-fun e!3203930 () Bool)

(assert (=> b!5136634 (= e!3203930 e!3203929)))

(declare-fun call!358110 () Bool)

(declare-fun bm!358105 () Bool)

(declare-fun c!884359 () Bool)

(assert (=> bm!358105 (= call!358110 (validRegex!6272 (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))))

(declare-fun b!5136635 () Bool)

(declare-fun e!3203932 () Bool)

(assert (=> b!5136635 (= e!3203929 e!3203932)))

(declare-fun res!2187854 () Bool)

(assert (=> b!5136635 (=> (not res!2187854) (not e!3203932))))

(assert (=> b!5136635 (= res!2187854 call!358112)))

(declare-fun bm!358106 () Bool)

(declare-fun call!358111 () Bool)

(assert (=> bm!358106 (= call!358112 call!358111)))

(declare-fun b!5136636 () Bool)

(assert (=> b!5136636 (= e!3203932 call!358110)))

(declare-fun b!5136637 () Bool)

(assert (=> b!5136637 (= e!3203926 call!358111)))

(declare-fun b!5136638 () Bool)

(assert (=> b!5136638 (= e!3203931 e!3203930)))

(assert (=> b!5136638 (= c!884359 ((_ is Union!14415) (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun bm!358107 () Bool)

(declare-fun c!884358 () Bool)

(assert (=> bm!358107 (= call!358111 (validRegex!6272 (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))))))

(declare-fun b!5136639 () Bool)

(declare-fun e!3203927 () Bool)

(assert (=> b!5136639 (= e!3203927 e!3203931)))

(assert (=> b!5136639 (= c!884358 ((_ is Star!14415) (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun d!1662075 () Bool)

(declare-fun res!2187857 () Bool)

(assert (=> d!1662075 (=> res!2187857 e!3203927)))

(assert (=> d!1662075 (= res!2187857 ((_ is ElementMatch!14415) (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))

(assert (=> d!1662075 (= (validRegex!6272 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) e!3203927)))

(declare-fun b!5136640 () Bool)

(declare-fun res!2187856 () Bool)

(assert (=> b!5136640 (=> (not res!2187856) (not e!3203928))))

(assert (=> b!5136640 (= res!2187856 call!358110)))

(assert (=> b!5136640 (= e!3203930 e!3203928)))

(assert (= (and d!1662075 (not res!2187857)) b!5136639))

(assert (= (and b!5136639 c!884358) b!5136633))

(assert (= (and b!5136639 (not c!884358)) b!5136638))

(assert (= (and b!5136633 res!2187855) b!5136637))

(assert (= (and b!5136638 c!884359) b!5136640))

(assert (= (and b!5136638 (not c!884359)) b!5136634))

(assert (= (and b!5136640 res!2187856) b!5136632))

(assert (= (and b!5136634 (not res!2187853)) b!5136635))

(assert (= (and b!5136635 res!2187854) b!5136636))

(assert (= (or b!5136640 b!5136636) bm!358105))

(assert (= (or b!5136632 b!5136635) bm!358106))

(assert (= (or b!5136637 bm!358106) bm!358107))

(declare-fun m!6202132 () Bool)

(assert (=> b!5136633 m!6202132))

(declare-fun m!6202134 () Bool)

(assert (=> bm!358105 m!6202134))

(declare-fun m!6202136 () Bool)

(assert (=> bm!358107 m!6202136))

(assert (=> bm!358093 d!1662075))

(declare-fun d!1662077 () Bool)

(declare-fun res!2187872 () Bool)

(declare-fun e!3203946 () Bool)

(assert (=> d!1662077 (=> res!2187872 e!3203946)))

(assert (=> d!1662077 (= res!2187872 ((_ is EmptyExpr!14415) (h!66091 (exprs!4299 ctx!74))))))

(assert (=> d!1662077 (= (nullableFct!1308 (h!66091 (exprs!4299 ctx!74))) e!3203946)))

(declare-fun b!5136655 () Bool)

(declare-fun e!3203945 () Bool)

(declare-fun call!358118 () Bool)

(assert (=> b!5136655 (= e!3203945 call!358118)))

(declare-fun b!5136656 () Bool)

(declare-fun e!3203949 () Bool)

(declare-fun e!3203950 () Bool)

(assert (=> b!5136656 (= e!3203949 e!3203950)))

(declare-fun res!2187869 () Bool)

(declare-fun call!358117 () Bool)

(assert (=> b!5136656 (= res!2187869 call!358117)))

(assert (=> b!5136656 (=> res!2187869 e!3203950)))

(declare-fun bm!358112 () Bool)

(declare-fun c!884362 () Bool)

(assert (=> bm!358112 (= call!358118 (nullable!4788 (ite c!884362 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun b!5136657 () Bool)

(assert (=> b!5136657 (= e!3203949 e!3203945)))

(declare-fun res!2187868 () Bool)

(assert (=> b!5136657 (= res!2187868 call!358117)))

(assert (=> b!5136657 (=> (not res!2187868) (not e!3203945))))

(declare-fun bm!358113 () Bool)

(assert (=> bm!358113 (= call!358117 (nullable!4788 (ite c!884362 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun b!5136658 () Bool)

(declare-fun e!3203947 () Bool)

(declare-fun e!3203948 () Bool)

(assert (=> b!5136658 (= e!3203947 e!3203948)))

(declare-fun res!2187870 () Bool)

(assert (=> b!5136658 (=> res!2187870 e!3203948)))

(assert (=> b!5136658 (= res!2187870 ((_ is Star!14415) (h!66091 (exprs!4299 ctx!74))))))

(declare-fun b!5136659 () Bool)

(assert (=> b!5136659 (= e!3203948 e!3203949)))

(assert (=> b!5136659 (= c!884362 ((_ is Union!14415) (h!66091 (exprs!4299 ctx!74))))))

(declare-fun b!5136660 () Bool)

(assert (=> b!5136660 (= e!3203950 call!358118)))

(declare-fun b!5136661 () Bool)

(assert (=> b!5136661 (= e!3203946 e!3203947)))

(declare-fun res!2187871 () Bool)

(assert (=> b!5136661 (=> (not res!2187871) (not e!3203947))))

(assert (=> b!5136661 (= res!2187871 (and (not ((_ is EmptyLang!14415) (h!66091 (exprs!4299 ctx!74)))) (not ((_ is ElementMatch!14415) (h!66091 (exprs!4299 ctx!74))))))))

(assert (= (and d!1662077 (not res!2187872)) b!5136661))

(assert (= (and b!5136661 res!2187871) b!5136658))

(assert (= (and b!5136658 (not res!2187870)) b!5136659))

(assert (= (and b!5136659 c!884362) b!5136656))

(assert (= (and b!5136659 (not c!884362)) b!5136657))

(assert (= (and b!5136656 (not res!2187869)) b!5136660))

(assert (= (and b!5136657 res!2187868) b!5136655))

(assert (= (or b!5136660 b!5136655) bm!358112))

(assert (= (or b!5136656 b!5136657) bm!358113))

(declare-fun m!6202138 () Bool)

(assert (=> bm!358112 m!6202138))

(declare-fun m!6202140 () Bool)

(assert (=> bm!358113 m!6202140))

(assert (=> d!1662053 d!1662077))

(declare-fun b!5136662 () Bool)

(declare-fun e!3203953 () Bool)

(declare-fun call!358121 () Bool)

(assert (=> b!5136662 (= e!3203953 call!358121)))

(declare-fun b!5136663 () Bool)

(declare-fun e!3203956 () Bool)

(declare-fun e!3203951 () Bool)

(assert (=> b!5136663 (= e!3203956 e!3203951)))

(declare-fun res!2187875 () Bool)

(assert (=> b!5136663 (= res!2187875 (not (nullable!4788 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))))

(assert (=> b!5136663 (=> (not res!2187875) (not e!3203951))))

(declare-fun b!5136664 () Bool)

(declare-fun res!2187873 () Bool)

(declare-fun e!3203954 () Bool)

(assert (=> b!5136664 (=> res!2187873 e!3203954)))

(assert (=> b!5136664 (= res!2187873 (not ((_ is Concat!23260) (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))))

(declare-fun e!3203955 () Bool)

(assert (=> b!5136664 (= e!3203955 e!3203954)))

(declare-fun call!358119 () Bool)

(declare-fun c!884364 () Bool)

(declare-fun bm!358114 () Bool)

(assert (=> bm!358114 (= call!358119 (validRegex!6272 (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))))

(declare-fun b!5136665 () Bool)

(declare-fun e!3203957 () Bool)

(assert (=> b!5136665 (= e!3203954 e!3203957)))

(declare-fun res!2187874 () Bool)

(assert (=> b!5136665 (=> (not res!2187874) (not e!3203957))))

(assert (=> b!5136665 (= res!2187874 call!358121)))

(declare-fun bm!358115 () Bool)

(declare-fun call!358120 () Bool)

(assert (=> bm!358115 (= call!358121 call!358120)))

(declare-fun b!5136666 () Bool)

(assert (=> b!5136666 (= e!3203957 call!358119)))

(declare-fun b!5136667 () Bool)

(assert (=> b!5136667 (= e!3203951 call!358120)))

(declare-fun b!5136668 () Bool)

(assert (=> b!5136668 (= e!3203956 e!3203955)))

(assert (=> b!5136668 (= c!884364 ((_ is Union!14415) (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))

(declare-fun bm!358116 () Bool)

(declare-fun c!884363 () Bool)

(assert (=> bm!358116 (= call!358120 (validRegex!6272 (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))))))

(declare-fun b!5136669 () Bool)

(declare-fun e!3203952 () Bool)

(assert (=> b!5136669 (= e!3203952 e!3203956)))

(assert (=> b!5136669 (= c!884363 ((_ is Star!14415) (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))

(declare-fun d!1662079 () Bool)

(declare-fun res!2187877 () Bool)

(assert (=> d!1662079 (=> res!2187877 e!3203952)))

(assert (=> d!1662079 (= res!2187877 ((_ is ElementMatch!14415) (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))

(assert (=> d!1662079 (= (validRegex!6272 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) e!3203952)))

(declare-fun b!5136670 () Bool)

(declare-fun res!2187876 () Bool)

(assert (=> b!5136670 (=> (not res!2187876) (not e!3203953))))

(assert (=> b!5136670 (= res!2187876 call!358119)))

(assert (=> b!5136670 (= e!3203955 e!3203953)))

(assert (= (and d!1662079 (not res!2187877)) b!5136669))

(assert (= (and b!5136669 c!884363) b!5136663))

(assert (= (and b!5136669 (not c!884363)) b!5136668))

(assert (= (and b!5136663 res!2187875) b!5136667))

(assert (= (and b!5136668 c!884364) b!5136670))

(assert (= (and b!5136668 (not c!884364)) b!5136664))

(assert (= (and b!5136670 res!2187876) b!5136662))

(assert (= (and b!5136664 (not res!2187873)) b!5136665))

(assert (= (and b!5136665 res!2187874) b!5136666))

(assert (= (or b!5136670 b!5136666) bm!358114))

(assert (= (or b!5136662 b!5136665) bm!358115))

(assert (= (or b!5136667 bm!358115) bm!358116))

(declare-fun m!6202142 () Bool)

(assert (=> b!5136663 m!6202142))

(declare-fun m!6202144 () Bool)

(assert (=> bm!358114 m!6202144))

(declare-fun m!6202146 () Bool)

(assert (=> bm!358116 m!6202146))

(assert (=> bm!358095 d!1662079))

(declare-fun bm!358121 () Bool)

(declare-fun call!358127 () Bool)

(declare-fun c!884367 () Bool)

(assert (=> bm!358121 (= call!358127 (lostCause!1387 (ite c!884367 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun d!1662081 () Bool)

(declare-fun lt!2119611 () Bool)

(declare-datatypes ((List!59769 0))(
  ( (Nil!59645) (Cons!59645 (h!66093 C!29096) (t!372798 List!59769)) )
))
(declare-datatypes ((Option!14769 0))(
  ( (None!14768) (Some!14768 (v!50797 List!59769)) )
))
(declare-fun isEmpty!32030 (Option!14769) Bool)

(declare-fun getLanguageWitness!914 (Regex!14415) Option!14769)

(assert (=> d!1662081 (= lt!2119611 (isEmpty!32030 (getLanguageWitness!914 (h!66091 (exprs!4299 ctx!74)))))))

(declare-fun e!3203974 () Bool)

(assert (=> d!1662081 (= lt!2119611 e!3203974)))

(declare-fun res!2187892 () Bool)

(assert (=> d!1662081 (=> (not res!2187892) (not e!3203974))))

(assert (=> d!1662081 (= res!2187892 (not ((_ is EmptyExpr!14415) (h!66091 (exprs!4299 ctx!74)))))))

(assert (=> d!1662081 (= (lostCauseFct!336 (h!66091 (exprs!4299 ctx!74))) lt!2119611)))

(declare-fun b!5136685 () Bool)

(declare-fun e!3203972 () Bool)

(declare-fun e!3203973 () Bool)

(assert (=> b!5136685 (= e!3203972 e!3203973)))

(declare-fun res!2187889 () Bool)

(declare-fun call!358126 () Bool)

(assert (=> b!5136685 (= res!2187889 call!358126)))

(assert (=> b!5136685 (=> (not res!2187889) (not e!3203973))))

(declare-fun b!5136686 () Bool)

(declare-fun e!3203975 () Bool)

(assert (=> b!5136686 (= e!3203972 e!3203975)))

(declare-fun res!2187888 () Bool)

(assert (=> b!5136686 (= res!2187888 call!358127)))

(assert (=> b!5136686 (=> res!2187888 e!3203975)))

(declare-fun bm!358122 () Bool)

(assert (=> bm!358122 (= call!358126 (lostCause!1387 (ite c!884367 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun b!5136687 () Bool)

(declare-fun e!3203970 () Bool)

(declare-fun e!3203971 () Bool)

(assert (=> b!5136687 (= e!3203970 e!3203971)))

(declare-fun res!2187891 () Bool)

(assert (=> b!5136687 (=> (not res!2187891) (not e!3203971))))

(assert (=> b!5136687 (= res!2187891 (and (not ((_ is ElementMatch!14415) (h!66091 (exprs!4299 ctx!74)))) (not ((_ is Star!14415) (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun b!5136688 () Bool)

(assert (=> b!5136688 (= e!3203971 e!3203972)))

(assert (=> b!5136688 (= c!884367 ((_ is Union!14415) (h!66091 (exprs!4299 ctx!74))))))

(declare-fun b!5136689 () Bool)

(assert (=> b!5136689 (= e!3203973 call!358127)))

(declare-fun b!5136690 () Bool)

(assert (=> b!5136690 (= e!3203975 call!358126)))

(declare-fun b!5136691 () Bool)

(assert (=> b!5136691 (= e!3203974 e!3203970)))

(declare-fun res!2187890 () Bool)

(assert (=> b!5136691 (=> res!2187890 e!3203970)))

(assert (=> b!5136691 (= res!2187890 ((_ is EmptyLang!14415) (h!66091 (exprs!4299 ctx!74))))))

(assert (= (and d!1662081 res!2187892) b!5136691))

(assert (= (and b!5136691 (not res!2187890)) b!5136687))

(assert (= (and b!5136687 res!2187891) b!5136688))

(assert (= (and b!5136688 c!884367) b!5136685))

(assert (= (and b!5136688 (not c!884367)) b!5136686))

(assert (= (and b!5136685 res!2187889) b!5136689))

(assert (= (and b!5136686 (not res!2187888)) b!5136690))

(assert (= (or b!5136685 b!5136690) bm!358122))

(assert (= (or b!5136689 b!5136686) bm!358121))

(declare-fun m!6202148 () Bool)

(assert (=> bm!358121 m!6202148))

(declare-fun m!6202150 () Bool)

(assert (=> d!1662081 m!6202150))

(assert (=> d!1662081 m!6202150))

(declare-fun m!6202152 () Bool)

(assert (=> d!1662081 m!6202152))

(declare-fun m!6202154 () Bool)

(assert (=> bm!358122 m!6202154))

(assert (=> d!1662063 d!1662081))

(declare-fun bs!1200218 () Bool)

(declare-fun d!1662083 () Bool)

(assert (= bs!1200218 (and d!1662083 d!1662055)))

(declare-fun lambda!256048 () Int)

(assert (=> bs!1200218 (not (= lambda!256048 lambda!256039))))

(declare-fun bs!1200219 () Bool)

(assert (= bs!1200219 (and d!1662083 d!1662065)))

(assert (=> bs!1200219 (not (= lambda!256048 lambda!256040))))

(declare-fun bs!1200220 () Bool)

(assert (= bs!1200220 (and d!1662083 d!1662067)))

(assert (=> bs!1200220 (not (= lambda!256048 lambda!256044))))

(declare-fun bs!1200221 () Bool)

(assert (= bs!1200221 (and d!1662083 d!1662073)))

(assert (=> bs!1200221 (= (= lambda!256039 lambda!256040) (= lambda!256048 lambda!256047))))

(assert (=> d!1662083 true))

(assert (=> d!1662083 (< (dynLambda!23751 order!26935 lambda!256039) (dynLambda!23751 order!26935 lambda!256048))))

(assert (=> d!1662083 (= (exists!1753 (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74)))) lambda!256039) (not (forall!13884 (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74)))) lambda!256048)))))

(declare-fun bs!1200222 () Bool)

(assert (= bs!1200222 d!1662083))

(declare-fun m!6202156 () Bool)

(assert (=> bs!1200222 m!6202156))

(assert (=> d!1662055 d!1662083))

(declare-fun d!1662085 () Bool)

(declare-fun res!2187943 () Bool)

(declare-fun e!3204040 () Bool)

(assert (=> d!1662085 (=> res!2187943 e!3204040)))

(assert (=> d!1662085 (= res!2187943 ((_ is Nil!59643) (exprs!4299 ctx!74)))))

(assert (=> d!1662085 (= (forall!13884 (exprs!4299 ctx!74) lambda!256044) e!3204040)))

(declare-fun b!5136779 () Bool)

(declare-fun e!3204041 () Bool)

(assert (=> b!5136779 (= e!3204040 e!3204041)))

(declare-fun res!2187944 () Bool)

(assert (=> b!5136779 (=> (not res!2187944) (not e!3204041))))

(declare-fun dynLambda!23754 (Int Regex!14415) Bool)

(assert (=> b!5136779 (= res!2187944 (dynLambda!23754 lambda!256044 (h!66091 (exprs!4299 ctx!74))))))

(declare-fun b!5136780 () Bool)

(assert (=> b!5136780 (= e!3204041 (forall!13884 (t!372796 (exprs!4299 ctx!74)) lambda!256044))))

(assert (= (and d!1662085 (not res!2187943)) b!5136779))

(assert (= (and b!5136779 res!2187944) b!5136780))

(declare-fun b_lambda!200117 () Bool)

(assert (=> (not b_lambda!200117) (not b!5136779)))

(declare-fun m!6202192 () Bool)

(assert (=> b!5136779 m!6202192))

(declare-fun m!6202194 () Bool)

(assert (=> b!5136780 m!6202194))

(assert (=> d!1662067 d!1662085))

(declare-fun d!1662105 () Bool)

(assert (=> d!1662105 (= (nullable!4788 (reg!14744 (h!66091 (exprs!4299 ctx!74)))) (nullableFct!1308 (reg!14744 (h!66091 (exprs!4299 ctx!74)))))))

(declare-fun bs!1200234 () Bool)

(assert (= bs!1200234 d!1662105))

(declare-fun m!6202196 () Bool)

(assert (=> bs!1200234 m!6202196))

(assert (=> b!5136585 d!1662105))

(declare-fun b!5136794 () Bool)

(declare-fun e!3204044 () Bool)

(declare-fun tp!1432605 () Bool)

(declare-fun tp!1432608 () Bool)

(assert (=> b!5136794 (= e!3204044 (and tp!1432605 tp!1432608))))

(declare-fun b!5136793 () Bool)

(declare-fun tp!1432609 () Bool)

(assert (=> b!5136793 (= e!3204044 tp!1432609)))

(declare-fun b!5136791 () Bool)

(declare-fun tp_is_empty!37983 () Bool)

(assert (=> b!5136791 (= e!3204044 tp_is_empty!37983)))

(assert (=> b!5136629 (= tp!1432576 e!3204044)))

(declare-fun b!5136792 () Bool)

(declare-fun tp!1432606 () Bool)

(declare-fun tp!1432607 () Bool)

(assert (=> b!5136792 (= e!3204044 (and tp!1432606 tp!1432607))))

(assert (= (and b!5136629 ((_ is ElementMatch!14415) (h!66091 (exprs!4299 ctx!74)))) b!5136791))

(assert (= (and b!5136629 ((_ is Concat!23260) (h!66091 (exprs!4299 ctx!74)))) b!5136792))

(assert (= (and b!5136629 ((_ is Star!14415) (h!66091 (exprs!4299 ctx!74)))) b!5136793))

(assert (= (and b!5136629 ((_ is Union!14415) (h!66091 (exprs!4299 ctx!74)))) b!5136794))

(declare-fun b!5136795 () Bool)

(declare-fun e!3204045 () Bool)

(declare-fun tp!1432610 () Bool)

(declare-fun tp!1432611 () Bool)

(assert (=> b!5136795 (= e!3204045 (and tp!1432610 tp!1432611))))

(assert (=> b!5136629 (= tp!1432577 e!3204045)))

(assert (= (and b!5136629 ((_ is Cons!59643) (t!372796 (exprs!4299 ctx!74)))) b!5136795))

(declare-fun b_lambda!200119 () Bool)

(assert (= b_lambda!200117 (or d!1662067 b_lambda!200119)))

(declare-fun bs!1200235 () Bool)

(declare-fun d!1662107 () Bool)

(assert (= bs!1200235 (and d!1662107 d!1662067)))

(assert (=> bs!1200235 (= (dynLambda!23754 lambda!256044 (h!66091 (exprs!4299 ctx!74))) (validRegex!6272 (h!66091 (exprs!4299 ctx!74))))))

(assert (=> bs!1200235 m!6202094))

(assert (=> b!5136779 d!1662107))

(check-sat (not bm!358121) (not b!5136663) (not d!1662105) tp_is_empty!37983 (not b!5136633) (not bm!358112) (not bm!358107) (not b!5136793) (not b_lambda!200119) (not b!5136794) (not bm!358105) (not bm!358114) (not bm!358113) (not b!5136792) (not bm!358122) (not d!1662083) (not bm!358116) (not b!5136780) (not bs!1200235) (not d!1662081) (not b!5136795) (not d!1662073))
(check-sat)
(get-model)

(assert (=> bs!1200235 d!1662049))

(declare-fun d!1662109 () Bool)

(assert (=> d!1662109 (= (isEmpty!32030 (getLanguageWitness!914 (h!66091 (exprs!4299 ctx!74)))) (not ((_ is Some!14768) (getLanguageWitness!914 (h!66091 (exprs!4299 ctx!74))))))))

(assert (=> d!1662081 d!1662109))

(declare-fun bm!358145 () Bool)

(declare-fun call!358151 () Option!14769)

(declare-fun c!884401 () Bool)

(assert (=> bm!358145 (= call!358151 (getLanguageWitness!914 (ite c!884401 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun b!5136828 () Bool)

(declare-fun e!3204067 () Option!14769)

(declare-fun e!3204063 () Option!14769)

(assert (=> b!5136828 (= e!3204067 e!3204063)))

(declare-fun lt!2119623 () Option!14769)

(declare-fun call!358150 () Option!14769)

(assert (=> b!5136828 (= lt!2119623 call!358150)))

(declare-fun c!884398 () Bool)

(assert (=> b!5136828 (= c!884398 ((_ is Some!14768) lt!2119623))))

(declare-fun b!5136829 () Bool)

(assert (=> b!5136829 (= e!3204063 lt!2119623)))

(declare-fun b!5136830 () Bool)

(declare-fun c!884397 () Bool)

(declare-fun lt!2119622 () Option!14769)

(assert (=> b!5136830 (= c!884397 ((_ is Some!14768) lt!2119622))))

(assert (=> b!5136830 (= lt!2119622 call!358150)))

(declare-fun e!3204069 () Option!14769)

(declare-fun e!3204065 () Option!14769)

(assert (=> b!5136830 (= e!3204069 e!3204065)))

(declare-fun b!5136831 () Bool)

(declare-fun e!3204064 () Option!14769)

(assert (=> b!5136831 (= e!3204064 (Some!14768 (Cons!59645 (c!884345 (h!66091 (exprs!4299 ctx!74))) Nil!59645)))))

(declare-fun b!5136832 () Bool)

(assert (=> b!5136832 (= e!3204063 call!358151)))

(declare-fun d!1662111 () Bool)

(declare-fun c!884400 () Bool)

(assert (=> d!1662111 (= c!884400 ((_ is EmptyExpr!14415) (h!66091 (exprs!4299 ctx!74))))))

(declare-fun e!3204066 () Option!14769)

(assert (=> d!1662111 (= (getLanguageWitness!914 (h!66091 (exprs!4299 ctx!74))) e!3204066)))

(declare-fun bm!358146 () Bool)

(assert (=> bm!358146 (= call!358150 (getLanguageWitness!914 (ite c!884401 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun b!5136833 () Bool)

(declare-fun e!3204062 () Option!14769)

(assert (=> b!5136833 (= e!3204062 None!14768)))

(declare-fun b!5136834 () Bool)

(declare-fun lt!2119621 () Option!14769)

(declare-fun ++!13063 (List!59769 List!59769) List!59769)

(assert (=> b!5136834 (= e!3204065 (Some!14768 (++!13063 (v!50797 lt!2119621) (v!50797 lt!2119622))))))

(declare-fun b!5136835 () Bool)

(declare-fun c!884399 () Bool)

(assert (=> b!5136835 (= c!884399 ((_ is ElementMatch!14415) (h!66091 (exprs!4299 ctx!74))))))

(assert (=> b!5136835 (= e!3204062 e!3204064)))

(declare-fun b!5136836 () Bool)

(declare-fun e!3204068 () Option!14769)

(assert (=> b!5136836 (= e!3204064 e!3204068)))

(declare-fun c!884395 () Bool)

(assert (=> b!5136836 (= c!884395 ((_ is Star!14415) (h!66091 (exprs!4299 ctx!74))))))

(declare-fun b!5136837 () Bool)

(assert (=> b!5136837 (= c!884401 ((_ is Union!14415) (h!66091 (exprs!4299 ctx!74))))))

(assert (=> b!5136837 (= e!3204068 e!3204067)))

(declare-fun b!5136838 () Bool)

(assert (=> b!5136838 (= e!3204066 e!3204062)))

(declare-fun c!884396 () Bool)

(assert (=> b!5136838 (= c!884396 ((_ is EmptyLang!14415) (h!66091 (exprs!4299 ctx!74))))))

(declare-fun b!5136839 () Bool)

(assert (=> b!5136839 (= e!3204066 (Some!14768 Nil!59645))))

(declare-fun b!5136840 () Bool)

(assert (=> b!5136840 (= e!3204068 (Some!14768 Nil!59645))))

(declare-fun b!5136841 () Bool)

(assert (=> b!5136841 (= e!3204069 None!14768)))

(declare-fun b!5136842 () Bool)

(assert (=> b!5136842 (= e!3204065 None!14768)))

(declare-fun b!5136843 () Bool)

(assert (=> b!5136843 (= e!3204067 e!3204069)))

(assert (=> b!5136843 (= lt!2119621 call!358151)))

(declare-fun c!884394 () Bool)

(assert (=> b!5136843 (= c!884394 ((_ is Some!14768) lt!2119621))))

(assert (= (and d!1662111 c!884400) b!5136839))

(assert (= (and d!1662111 (not c!884400)) b!5136838))

(assert (= (and b!5136838 c!884396) b!5136833))

(assert (= (and b!5136838 (not c!884396)) b!5136835))

(assert (= (and b!5136835 c!884399) b!5136831))

(assert (= (and b!5136835 (not c!884399)) b!5136836))

(assert (= (and b!5136836 c!884395) b!5136840))

(assert (= (and b!5136836 (not c!884395)) b!5136837))

(assert (= (and b!5136837 c!884401) b!5136828))

(assert (= (and b!5136837 (not c!884401)) b!5136843))

(assert (= (and b!5136828 c!884398) b!5136829))

(assert (= (and b!5136828 (not c!884398)) b!5136832))

(assert (= (and b!5136843 c!884394) b!5136830))

(assert (= (and b!5136843 (not c!884394)) b!5136841))

(assert (= (and b!5136830 c!884397) b!5136834))

(assert (= (and b!5136830 (not c!884397)) b!5136842))

(assert (= (or b!5136828 b!5136830) bm!358146))

(assert (= (or b!5136832 b!5136843) bm!358145))

(declare-fun m!6202198 () Bool)

(assert (=> bm!358145 m!6202198))

(declare-fun m!6202200 () Bool)

(assert (=> bm!358146 m!6202200))

(declare-fun m!6202202 () Bool)

(assert (=> b!5136834 m!6202202))

(assert (=> d!1662081 d!1662111))

(declare-fun d!1662113 () Bool)

(declare-fun res!2187945 () Bool)

(declare-fun e!3204070 () Bool)

(assert (=> d!1662113 (=> res!2187945 e!3204070)))

(assert (=> d!1662113 (= res!2187945 ((_ is Nil!59643) (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74))))))))

(assert (=> d!1662113 (= (forall!13884 (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74)))) lambda!256048) e!3204070)))

(declare-fun b!5136844 () Bool)

(declare-fun e!3204071 () Bool)

(assert (=> b!5136844 (= e!3204070 e!3204071)))

(declare-fun res!2187946 () Bool)

(assert (=> b!5136844 (=> (not res!2187946) (not e!3204071))))

(assert (=> b!5136844 (= res!2187946 (dynLambda!23754 lambda!256048 (h!66091 (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74)))))))))

(declare-fun b!5136845 () Bool)

(assert (=> b!5136845 (= e!3204071 (forall!13884 (t!372796 (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74))))) lambda!256048))))

(assert (= (and d!1662113 (not res!2187945)) b!5136844))

(assert (= (and b!5136844 res!2187946) b!5136845))

(declare-fun b_lambda!200121 () Bool)

(assert (=> (not b_lambda!200121) (not b!5136844)))

(declare-fun m!6202204 () Bool)

(assert (=> b!5136844 m!6202204))

(declare-fun m!6202206 () Bool)

(assert (=> b!5136845 m!6202206))

(assert (=> d!1662083 d!1662113))

(declare-fun b!5136846 () Bool)

(declare-fun e!3204074 () Bool)

(declare-fun call!358154 () Bool)

(assert (=> b!5136846 (= e!3204074 call!358154)))

(declare-fun b!5136847 () Bool)

(declare-fun e!3204077 () Bool)

(declare-fun e!3204072 () Bool)

(assert (=> b!5136847 (= e!3204077 e!3204072)))

(declare-fun res!2187949 () Bool)

(assert (=> b!5136847 (= res!2187949 (not (nullable!4788 (reg!14744 (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))))))))

(assert (=> b!5136847 (=> (not res!2187949) (not e!3204072))))

(declare-fun b!5136848 () Bool)

(declare-fun res!2187947 () Bool)

(declare-fun e!3204075 () Bool)

(assert (=> b!5136848 (=> res!2187947 e!3204075)))

(assert (=> b!5136848 (= res!2187947 (not ((_ is Concat!23260) (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))))))

(declare-fun e!3204076 () Bool)

(assert (=> b!5136848 (= e!3204076 e!3204075)))

(declare-fun bm!358147 () Bool)

(declare-fun call!358152 () Bool)

(declare-fun c!884403 () Bool)

(assert (=> bm!358147 (= call!358152 (validRegex!6272 (ite c!884403 (regOne!29343 (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))) (regTwo!29342 (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))))))))

(declare-fun b!5136849 () Bool)

(declare-fun e!3204078 () Bool)

(assert (=> b!5136849 (= e!3204075 e!3204078)))

(declare-fun res!2187948 () Bool)

(assert (=> b!5136849 (=> (not res!2187948) (not e!3204078))))

(assert (=> b!5136849 (= res!2187948 call!358154)))

(declare-fun bm!358148 () Bool)

(declare-fun call!358153 () Bool)

(assert (=> bm!358148 (= call!358154 call!358153)))

(declare-fun b!5136850 () Bool)

(assert (=> b!5136850 (= e!3204078 call!358152)))

(declare-fun b!5136851 () Bool)

(assert (=> b!5136851 (= e!3204072 call!358153)))

(declare-fun b!5136852 () Bool)

(assert (=> b!5136852 (= e!3204077 e!3204076)))

(assert (=> b!5136852 (= c!884403 ((_ is Union!14415) (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))))))

(declare-fun bm!358149 () Bool)

(declare-fun c!884402 () Bool)

(assert (=> bm!358149 (= call!358153 (validRegex!6272 (ite c!884402 (reg!14744 (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))) (ite c!884403 (regTwo!29343 (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))) (regOne!29342 (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))))))))

(declare-fun b!5136853 () Bool)

(declare-fun e!3204073 () Bool)

(assert (=> b!5136853 (= e!3204073 e!3204077)))

(assert (=> b!5136853 (= c!884402 ((_ is Star!14415) (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))))))

(declare-fun d!1662115 () Bool)

(declare-fun res!2187951 () Bool)

(assert (=> d!1662115 (=> res!2187951 e!3204073)))

(assert (=> d!1662115 (= res!2187951 ((_ is ElementMatch!14415) (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))))))

(assert (=> d!1662115 (= (validRegex!6272 (ite c!884363 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (ite c!884364 (regTwo!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regOne!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))) e!3204073)))

(declare-fun b!5136854 () Bool)

(declare-fun res!2187950 () Bool)

(assert (=> b!5136854 (=> (not res!2187950) (not e!3204074))))

(assert (=> b!5136854 (= res!2187950 call!358152)))

(assert (=> b!5136854 (= e!3204076 e!3204074)))

(assert (= (and d!1662115 (not res!2187951)) b!5136853))

(assert (= (and b!5136853 c!884402) b!5136847))

(assert (= (and b!5136853 (not c!884402)) b!5136852))

(assert (= (and b!5136847 res!2187949) b!5136851))

(assert (= (and b!5136852 c!884403) b!5136854))

(assert (= (and b!5136852 (not c!884403)) b!5136848))

(assert (= (and b!5136854 res!2187950) b!5136846))

(assert (= (and b!5136848 (not res!2187947)) b!5136849))

(assert (= (and b!5136849 res!2187948) b!5136850))

(assert (= (or b!5136854 b!5136850) bm!358147))

(assert (= (or b!5136846 b!5136849) bm!358148))

(assert (= (or b!5136851 bm!358148) bm!358149))

(declare-fun m!6202208 () Bool)

(assert (=> b!5136847 m!6202208))

(declare-fun m!6202210 () Bool)

(assert (=> bm!358147 m!6202210))

(declare-fun m!6202212 () Bool)

(assert (=> bm!358149 m!6202212))

(assert (=> bm!358116 d!1662115))

(declare-fun b!5136855 () Bool)

(declare-fun e!3204081 () Bool)

(declare-fun call!358157 () Bool)

(assert (=> b!5136855 (= e!3204081 call!358157)))

(declare-fun b!5136856 () Bool)

(declare-fun e!3204084 () Bool)

(declare-fun e!3204079 () Bool)

(assert (=> b!5136856 (= e!3204084 e!3204079)))

(declare-fun res!2187954 () Bool)

(assert (=> b!5136856 (= res!2187954 (not (nullable!4788 (reg!14744 (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))))))))

(assert (=> b!5136856 (=> (not res!2187954) (not e!3204079))))

(declare-fun b!5136857 () Bool)

(declare-fun res!2187952 () Bool)

(declare-fun e!3204082 () Bool)

(assert (=> b!5136857 (=> res!2187952 e!3204082)))

(assert (=> b!5136857 (= res!2187952 (not ((_ is Concat!23260) (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))))))

(declare-fun e!3204083 () Bool)

(assert (=> b!5136857 (= e!3204083 e!3204082)))

(declare-fun bm!358150 () Bool)

(declare-fun c!884405 () Bool)

(declare-fun call!358155 () Bool)

(assert (=> bm!358150 (= call!358155 (validRegex!6272 (ite c!884405 (regOne!29343 (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))) (regTwo!29342 (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))))))))

(declare-fun b!5136858 () Bool)

(declare-fun e!3204085 () Bool)

(assert (=> b!5136858 (= e!3204082 e!3204085)))

(declare-fun res!2187953 () Bool)

(assert (=> b!5136858 (=> (not res!2187953) (not e!3204085))))

(assert (=> b!5136858 (= res!2187953 call!358157)))

(declare-fun bm!358151 () Bool)

(declare-fun call!358156 () Bool)

(assert (=> bm!358151 (= call!358157 call!358156)))

(declare-fun b!5136859 () Bool)

(assert (=> b!5136859 (= e!3204085 call!358155)))

(declare-fun b!5136860 () Bool)

(assert (=> b!5136860 (= e!3204079 call!358156)))

(declare-fun b!5136861 () Bool)

(assert (=> b!5136861 (= e!3204084 e!3204083)))

(assert (=> b!5136861 (= c!884405 ((_ is Union!14415) (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))))))

(declare-fun c!884404 () Bool)

(declare-fun bm!358152 () Bool)

(assert (=> bm!358152 (= call!358156 (validRegex!6272 (ite c!884404 (reg!14744 (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))) (ite c!884405 (regTwo!29343 (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))) (regOne!29342 (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))))))))

(declare-fun b!5136862 () Bool)

(declare-fun e!3204080 () Bool)

(assert (=> b!5136862 (= e!3204080 e!3204084)))

(assert (=> b!5136862 (= c!884404 ((_ is Star!14415) (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))))))

(declare-fun d!1662117 () Bool)

(declare-fun res!2187956 () Bool)

(assert (=> d!1662117 (=> res!2187956 e!3204080)))

(assert (=> d!1662117 (= res!2187956 ((_ is ElementMatch!14415) (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))))))

(assert (=> d!1662117 (= (validRegex!6272 (ite c!884358 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (ite c!884359 (regTwo!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regOne!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))) e!3204080)))

(declare-fun b!5136863 () Bool)

(declare-fun res!2187955 () Bool)

(assert (=> b!5136863 (=> (not res!2187955) (not e!3204081))))

(assert (=> b!5136863 (= res!2187955 call!358155)))

(assert (=> b!5136863 (= e!3204083 e!3204081)))

(assert (= (and d!1662117 (not res!2187956)) b!5136862))

(assert (= (and b!5136862 c!884404) b!5136856))

(assert (= (and b!5136862 (not c!884404)) b!5136861))

(assert (= (and b!5136856 res!2187954) b!5136860))

(assert (= (and b!5136861 c!884405) b!5136863))

(assert (= (and b!5136861 (not c!884405)) b!5136857))

(assert (= (and b!5136863 res!2187955) b!5136855))

(assert (= (and b!5136857 (not res!2187952)) b!5136858))

(assert (= (and b!5136858 res!2187953) b!5136859))

(assert (= (or b!5136863 b!5136859) bm!358150))

(assert (= (or b!5136855 b!5136858) bm!358151))

(assert (= (or b!5136860 bm!358151) bm!358152))

(declare-fun m!6202214 () Bool)

(assert (=> b!5136856 m!6202214))

(declare-fun m!6202216 () Bool)

(assert (=> bm!358150 m!6202216))

(declare-fun m!6202218 () Bool)

(assert (=> bm!358152 m!6202218))

(assert (=> bm!358107 d!1662117))

(declare-fun d!1662119 () Bool)

(assert (=> d!1662119 (= (lostCause!1387 (ite c!884367 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))) (lostCauseFct!336 (ite c!884367 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun bs!1200236 () Bool)

(assert (= bs!1200236 d!1662119))

(declare-fun m!6202220 () Bool)

(assert (=> bs!1200236 m!6202220))

(assert (=> bm!358121 d!1662119))

(declare-fun d!1662121 () Bool)

(assert (=> d!1662121 (= (nullable!4788 (ite c!884362 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (nullableFct!1308 (ite c!884362 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun bs!1200237 () Bool)

(assert (= bs!1200237 d!1662121))

(declare-fun m!6202222 () Bool)

(assert (=> bs!1200237 m!6202222))

(assert (=> bm!358112 d!1662121))

(declare-fun d!1662123 () Bool)

(declare-fun res!2187961 () Bool)

(declare-fun e!3204087 () Bool)

(assert (=> d!1662123 (=> res!2187961 e!3204087)))

(assert (=> d!1662123 (= res!2187961 ((_ is EmptyExpr!14415) (reg!14744 (h!66091 (exprs!4299 ctx!74)))))))

(assert (=> d!1662123 (= (nullableFct!1308 (reg!14744 (h!66091 (exprs!4299 ctx!74)))) e!3204087)))

(declare-fun b!5136864 () Bool)

(declare-fun e!3204086 () Bool)

(declare-fun call!358159 () Bool)

(assert (=> b!5136864 (= e!3204086 call!358159)))

(declare-fun b!5136865 () Bool)

(declare-fun e!3204090 () Bool)

(declare-fun e!3204091 () Bool)

(assert (=> b!5136865 (= e!3204090 e!3204091)))

(declare-fun res!2187958 () Bool)

(declare-fun call!358158 () Bool)

(assert (=> b!5136865 (= res!2187958 call!358158)))

(assert (=> b!5136865 (=> res!2187958 e!3204091)))

(declare-fun bm!358153 () Bool)

(declare-fun c!884406 () Bool)

(assert (=> bm!358153 (= call!358159 (nullable!4788 (ite c!884406 (regTwo!29343 (reg!14744 (h!66091 (exprs!4299 ctx!74)))) (regTwo!29342 (reg!14744 (h!66091 (exprs!4299 ctx!74)))))))))

(declare-fun b!5136866 () Bool)

(assert (=> b!5136866 (= e!3204090 e!3204086)))

(declare-fun res!2187957 () Bool)

(assert (=> b!5136866 (= res!2187957 call!358158)))

(assert (=> b!5136866 (=> (not res!2187957) (not e!3204086))))

(declare-fun bm!358154 () Bool)

(assert (=> bm!358154 (= call!358158 (nullable!4788 (ite c!884406 (regOne!29343 (reg!14744 (h!66091 (exprs!4299 ctx!74)))) (regOne!29342 (reg!14744 (h!66091 (exprs!4299 ctx!74)))))))))

(declare-fun b!5136867 () Bool)

(declare-fun e!3204088 () Bool)

(declare-fun e!3204089 () Bool)

(assert (=> b!5136867 (= e!3204088 e!3204089)))

(declare-fun res!2187959 () Bool)

(assert (=> b!5136867 (=> res!2187959 e!3204089)))

(assert (=> b!5136867 (= res!2187959 ((_ is Star!14415) (reg!14744 (h!66091 (exprs!4299 ctx!74)))))))

(declare-fun b!5136868 () Bool)

(assert (=> b!5136868 (= e!3204089 e!3204090)))

(assert (=> b!5136868 (= c!884406 ((_ is Union!14415) (reg!14744 (h!66091 (exprs!4299 ctx!74)))))))

(declare-fun b!5136869 () Bool)

(assert (=> b!5136869 (= e!3204091 call!358159)))

(declare-fun b!5136870 () Bool)

(assert (=> b!5136870 (= e!3204087 e!3204088)))

(declare-fun res!2187960 () Bool)

(assert (=> b!5136870 (=> (not res!2187960) (not e!3204088))))

(assert (=> b!5136870 (= res!2187960 (and (not ((_ is EmptyLang!14415) (reg!14744 (h!66091 (exprs!4299 ctx!74))))) (not ((_ is ElementMatch!14415) (reg!14744 (h!66091 (exprs!4299 ctx!74)))))))))

(assert (= (and d!1662123 (not res!2187961)) b!5136870))

(assert (= (and b!5136870 res!2187960) b!5136867))

(assert (= (and b!5136867 (not res!2187959)) b!5136868))

(assert (= (and b!5136868 c!884406) b!5136865))

(assert (= (and b!5136868 (not c!884406)) b!5136866))

(assert (= (and b!5136865 (not res!2187958)) b!5136869))

(assert (= (and b!5136866 res!2187957) b!5136864))

(assert (= (or b!5136869 b!5136864) bm!358153))

(assert (= (or b!5136865 b!5136866) bm!358154))

(declare-fun m!6202224 () Bool)

(assert (=> bm!358153 m!6202224))

(declare-fun m!6202226 () Bool)

(assert (=> bm!358154 m!6202226))

(assert (=> d!1662105 d!1662123))

(declare-fun d!1662125 () Bool)

(assert (=> d!1662125 (= (nullable!4788 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))) (nullableFct!1308 (reg!14744 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))))

(declare-fun bs!1200238 () Bool)

(assert (= bs!1200238 d!1662125))

(declare-fun m!6202228 () Bool)

(assert (=> bs!1200238 m!6202228))

(assert (=> b!5136663 d!1662125))

(declare-fun d!1662127 () Bool)

(assert (=> d!1662127 (= (nullable!4788 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))) (nullableFct!1308 (reg!14744 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))))

(declare-fun bs!1200239 () Bool)

(assert (= bs!1200239 d!1662127))

(declare-fun m!6202230 () Bool)

(assert (=> bs!1200239 m!6202230))

(assert (=> b!5136633 d!1662127))

(declare-fun b!5136871 () Bool)

(declare-fun e!3204094 () Bool)

(declare-fun call!358162 () Bool)

(assert (=> b!5136871 (= e!3204094 call!358162)))

(declare-fun b!5136872 () Bool)

(declare-fun e!3204097 () Bool)

(declare-fun e!3204092 () Bool)

(assert (=> b!5136872 (= e!3204097 e!3204092)))

(declare-fun res!2187964 () Bool)

(assert (=> b!5136872 (= res!2187964 (not (nullable!4788 (reg!14744 (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))))))

(assert (=> b!5136872 (=> (not res!2187964) (not e!3204092))))

(declare-fun b!5136873 () Bool)

(declare-fun res!2187962 () Bool)

(declare-fun e!3204095 () Bool)

(assert (=> b!5136873 (=> res!2187962 e!3204095)))

(assert (=> b!5136873 (= res!2187962 (not ((_ is Concat!23260) (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))))))

(declare-fun e!3204096 () Bool)

(assert (=> b!5136873 (= e!3204096 e!3204095)))

(declare-fun call!358160 () Bool)

(declare-fun bm!358155 () Bool)

(declare-fun c!884408 () Bool)

(assert (=> bm!358155 (= call!358160 (validRegex!6272 (ite c!884408 (regOne!29343 (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))) (regTwo!29342 (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))))))

(declare-fun b!5136874 () Bool)

(declare-fun e!3204098 () Bool)

(assert (=> b!5136874 (= e!3204095 e!3204098)))

(declare-fun res!2187963 () Bool)

(assert (=> b!5136874 (=> (not res!2187963) (not e!3204098))))

(assert (=> b!5136874 (= res!2187963 call!358162)))

(declare-fun bm!358156 () Bool)

(declare-fun call!358161 () Bool)

(assert (=> bm!358156 (= call!358162 call!358161)))

(declare-fun b!5136875 () Bool)

(assert (=> b!5136875 (= e!3204098 call!358160)))

(declare-fun b!5136876 () Bool)

(assert (=> b!5136876 (= e!3204092 call!358161)))

(declare-fun b!5136877 () Bool)

(assert (=> b!5136877 (= e!3204097 e!3204096)))

(assert (=> b!5136877 (= c!884408 ((_ is Union!14415) (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))))

(declare-fun c!884407 () Bool)

(declare-fun bm!358157 () Bool)

(assert (=> bm!358157 (= call!358161 (validRegex!6272 (ite c!884407 (reg!14744 (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))) (ite c!884408 (regTwo!29343 (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))) (regOne!29342 (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))))))))

(declare-fun b!5136878 () Bool)

(declare-fun e!3204093 () Bool)

(assert (=> b!5136878 (= e!3204093 e!3204097)))

(assert (=> b!5136878 (= c!884407 ((_ is Star!14415) (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))))

(declare-fun d!1662129 () Bool)

(declare-fun res!2187966 () Bool)

(assert (=> d!1662129 (=> res!2187966 e!3204093)))

(assert (=> d!1662129 (= res!2187966 ((_ is ElementMatch!14415) (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))))))

(assert (=> d!1662129 (= (validRegex!6272 (ite c!884364 (regOne!29343 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))) (regTwo!29342 (ite c!884350 (reg!14744 (h!66091 (exprs!4299 ctx!74))) (ite c!884351 (regTwo!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74)))))))) e!3204093)))

(declare-fun b!5136879 () Bool)

(declare-fun res!2187965 () Bool)

(assert (=> b!5136879 (=> (not res!2187965) (not e!3204094))))

(assert (=> b!5136879 (= res!2187965 call!358160)))

(assert (=> b!5136879 (= e!3204096 e!3204094)))

(assert (= (and d!1662129 (not res!2187966)) b!5136878))

(assert (= (and b!5136878 c!884407) b!5136872))

(assert (= (and b!5136878 (not c!884407)) b!5136877))

(assert (= (and b!5136872 res!2187964) b!5136876))

(assert (= (and b!5136877 c!884408) b!5136879))

(assert (= (and b!5136877 (not c!884408)) b!5136873))

(assert (= (and b!5136879 res!2187965) b!5136871))

(assert (= (and b!5136873 (not res!2187962)) b!5136874))

(assert (= (and b!5136874 res!2187963) b!5136875))

(assert (= (or b!5136879 b!5136875) bm!358155))

(assert (= (or b!5136871 b!5136874) bm!358156))

(assert (= (or b!5136876 bm!358156) bm!358157))

(declare-fun m!6202232 () Bool)

(assert (=> b!5136872 m!6202232))

(declare-fun m!6202234 () Bool)

(assert (=> bm!358155 m!6202234))

(declare-fun m!6202236 () Bool)

(assert (=> bm!358157 m!6202236))

(assert (=> bm!358114 d!1662129))

(declare-fun d!1662131 () Bool)

(assert (=> d!1662131 (= (nullable!4788 (ite c!884362 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))) (nullableFct!1308 (ite c!884362 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun bs!1200240 () Bool)

(assert (= bs!1200240 d!1662131))

(declare-fun m!6202238 () Bool)

(assert (=> bs!1200240 m!6202238))

(assert (=> bm!358113 d!1662131))

(declare-fun d!1662133 () Bool)

(declare-fun res!2187967 () Bool)

(declare-fun e!3204099 () Bool)

(assert (=> d!1662133 (=> res!2187967 e!3204099)))

(assert (=> d!1662133 (= res!2187967 ((_ is Nil!59643) (t!372796 (exprs!4299 ctx!74))))))

(assert (=> d!1662133 (= (forall!13884 (t!372796 (exprs!4299 ctx!74)) lambda!256044) e!3204099)))

(declare-fun b!5136880 () Bool)

(declare-fun e!3204100 () Bool)

(assert (=> b!5136880 (= e!3204099 e!3204100)))

(declare-fun res!2187968 () Bool)

(assert (=> b!5136880 (=> (not res!2187968) (not e!3204100))))

(assert (=> b!5136880 (= res!2187968 (dynLambda!23754 lambda!256044 (h!66091 (t!372796 (exprs!4299 ctx!74)))))))

(declare-fun b!5136881 () Bool)

(assert (=> b!5136881 (= e!3204100 (forall!13884 (t!372796 (t!372796 (exprs!4299 ctx!74))) lambda!256044))))

(assert (= (and d!1662133 (not res!2187967)) b!5136880))

(assert (= (and b!5136880 res!2187968) b!5136881))

(declare-fun b_lambda!200123 () Bool)

(assert (=> (not b_lambda!200123) (not b!5136880)))

(declare-fun m!6202240 () Bool)

(assert (=> b!5136880 m!6202240))

(declare-fun m!6202242 () Bool)

(assert (=> b!5136881 m!6202242))

(assert (=> b!5136780 d!1662133))

(declare-fun d!1662135 () Bool)

(assert (=> d!1662135 (= (lostCause!1387 (ite c!884367 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (lostCauseFct!336 (ite c!884367 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))

(declare-fun bs!1200241 () Bool)

(assert (= bs!1200241 d!1662135))

(declare-fun m!6202244 () Bool)

(assert (=> bs!1200241 m!6202244))

(assert (=> bm!358122 d!1662135))

(declare-fun d!1662137 () Bool)

(declare-fun res!2187969 () Bool)

(declare-fun e!3204101 () Bool)

(assert (=> d!1662137 (=> res!2187969 e!3204101)))

(assert (=> d!1662137 (= res!2187969 ((_ is Nil!59643) (exprs!4299 ctx!74)))))

(assert (=> d!1662137 (= (forall!13884 (exprs!4299 ctx!74) lambda!256047) e!3204101)))

(declare-fun b!5136882 () Bool)

(declare-fun e!3204102 () Bool)

(assert (=> b!5136882 (= e!3204101 e!3204102)))

(declare-fun res!2187970 () Bool)

(assert (=> b!5136882 (=> (not res!2187970) (not e!3204102))))

(assert (=> b!5136882 (= res!2187970 (dynLambda!23754 lambda!256047 (h!66091 (exprs!4299 ctx!74))))))

(declare-fun b!5136883 () Bool)

(assert (=> b!5136883 (= e!3204102 (forall!13884 (t!372796 (exprs!4299 ctx!74)) lambda!256047))))

(assert (= (and d!1662137 (not res!2187969)) b!5136882))

(assert (= (and b!5136882 res!2187970) b!5136883))

(declare-fun b_lambda!200125 () Bool)

(assert (=> (not b_lambda!200125) (not b!5136882)))

(declare-fun m!6202246 () Bool)

(assert (=> b!5136882 m!6202246))

(declare-fun m!6202248 () Bool)

(assert (=> b!5136883 m!6202248))

(assert (=> d!1662073 d!1662137))

(declare-fun b!5136884 () Bool)

(declare-fun e!3204105 () Bool)

(declare-fun call!358165 () Bool)

(assert (=> b!5136884 (= e!3204105 call!358165)))

(declare-fun b!5136885 () Bool)

(declare-fun e!3204108 () Bool)

(declare-fun e!3204103 () Bool)

(assert (=> b!5136885 (= e!3204108 e!3204103)))

(declare-fun res!2187973 () Bool)

(assert (=> b!5136885 (= res!2187973 (not (nullable!4788 (reg!14744 (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))))))

(assert (=> b!5136885 (=> (not res!2187973) (not e!3204103))))

(declare-fun b!5136886 () Bool)

(declare-fun res!2187971 () Bool)

(declare-fun e!3204106 () Bool)

(assert (=> b!5136886 (=> res!2187971 e!3204106)))

(assert (=> b!5136886 (= res!2187971 (not ((_ is Concat!23260) (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))))))

(declare-fun e!3204107 () Bool)

(assert (=> b!5136886 (= e!3204107 e!3204106)))

(declare-fun c!884410 () Bool)

(declare-fun call!358163 () Bool)

(declare-fun bm!358158 () Bool)

(assert (=> bm!358158 (= call!358163 (validRegex!6272 (ite c!884410 (regOne!29343 (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))) (regTwo!29342 (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))))))

(declare-fun b!5136887 () Bool)

(declare-fun e!3204109 () Bool)

(assert (=> b!5136887 (= e!3204106 e!3204109)))

(declare-fun res!2187972 () Bool)

(assert (=> b!5136887 (=> (not res!2187972) (not e!3204109))))

(assert (=> b!5136887 (= res!2187972 call!358165)))

(declare-fun bm!358159 () Bool)

(declare-fun call!358164 () Bool)

(assert (=> bm!358159 (= call!358165 call!358164)))

(declare-fun b!5136888 () Bool)

(assert (=> b!5136888 (= e!3204109 call!358163)))

(declare-fun b!5136889 () Bool)

(assert (=> b!5136889 (= e!3204103 call!358164)))

(declare-fun b!5136890 () Bool)

(assert (=> b!5136890 (= e!3204108 e!3204107)))

(assert (=> b!5136890 (= c!884410 ((_ is Union!14415) (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))))

(declare-fun bm!358160 () Bool)

(declare-fun c!884409 () Bool)

(assert (=> bm!358160 (= call!358164 (validRegex!6272 (ite c!884409 (reg!14744 (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))) (ite c!884410 (regTwo!29343 (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))) (regOne!29342 (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74)))))))))))))

(declare-fun b!5136891 () Bool)

(declare-fun e!3204104 () Bool)

(assert (=> b!5136891 (= e!3204104 e!3204108)))

(assert (=> b!5136891 (= c!884409 ((_ is Star!14415) (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))))

(declare-fun d!1662139 () Bool)

(declare-fun res!2187975 () Bool)

(assert (=> d!1662139 (=> res!2187975 e!3204104)))

(assert (=> d!1662139 (= res!2187975 ((_ is ElementMatch!14415) (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))))))

(assert (=> d!1662139 (= (validRegex!6272 (ite c!884359 (regOne!29343 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) (regTwo!29342 (ite c!884351 (regOne!29343 (h!66091 (exprs!4299 ctx!74))) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))))) e!3204104)))

(declare-fun b!5136892 () Bool)

(declare-fun res!2187974 () Bool)

(assert (=> b!5136892 (=> (not res!2187974) (not e!3204105))))

(assert (=> b!5136892 (= res!2187974 call!358163)))

(assert (=> b!5136892 (= e!3204107 e!3204105)))

(assert (= (and d!1662139 (not res!2187975)) b!5136891))

(assert (= (and b!5136891 c!884409) b!5136885))

(assert (= (and b!5136891 (not c!884409)) b!5136890))

(assert (= (and b!5136885 res!2187973) b!5136889))

(assert (= (and b!5136890 c!884410) b!5136892))

(assert (= (and b!5136890 (not c!884410)) b!5136886))

(assert (= (and b!5136892 res!2187974) b!5136884))

(assert (= (and b!5136886 (not res!2187971)) b!5136887))

(assert (= (and b!5136887 res!2187972) b!5136888))

(assert (= (or b!5136892 b!5136888) bm!358158))

(assert (= (or b!5136884 b!5136887) bm!358159))

(assert (= (or b!5136889 bm!358159) bm!358160))

(declare-fun m!6202250 () Bool)

(assert (=> b!5136885 m!6202250))

(declare-fun m!6202252 () Bool)

(assert (=> bm!358158 m!6202252))

(declare-fun m!6202254 () Bool)

(assert (=> bm!358160 m!6202254))

(assert (=> bm!358105 d!1662139))

(declare-fun b!5136896 () Bool)

(declare-fun e!3204110 () Bool)

(declare-fun tp!1432612 () Bool)

(declare-fun tp!1432615 () Bool)

(assert (=> b!5136896 (= e!3204110 (and tp!1432612 tp!1432615))))

(declare-fun b!5136895 () Bool)

(declare-fun tp!1432616 () Bool)

(assert (=> b!5136895 (= e!3204110 tp!1432616)))

(declare-fun b!5136893 () Bool)

(assert (=> b!5136893 (= e!3204110 tp_is_empty!37983)))

(assert (=> b!5136795 (= tp!1432610 e!3204110)))

(declare-fun b!5136894 () Bool)

(declare-fun tp!1432613 () Bool)

(declare-fun tp!1432614 () Bool)

(assert (=> b!5136894 (= e!3204110 (and tp!1432613 tp!1432614))))

(assert (= (and b!5136795 ((_ is ElementMatch!14415) (h!66091 (t!372796 (exprs!4299 ctx!74))))) b!5136893))

(assert (= (and b!5136795 ((_ is Concat!23260) (h!66091 (t!372796 (exprs!4299 ctx!74))))) b!5136894))

(assert (= (and b!5136795 ((_ is Star!14415) (h!66091 (t!372796 (exprs!4299 ctx!74))))) b!5136895))

(assert (= (and b!5136795 ((_ is Union!14415) (h!66091 (t!372796 (exprs!4299 ctx!74))))) b!5136896))

(declare-fun b!5136897 () Bool)

(declare-fun e!3204111 () Bool)

(declare-fun tp!1432617 () Bool)

(declare-fun tp!1432618 () Bool)

(assert (=> b!5136897 (= e!3204111 (and tp!1432617 tp!1432618))))

(assert (=> b!5136795 (= tp!1432611 e!3204111)))

(assert (= (and b!5136795 ((_ is Cons!59643) (t!372796 (t!372796 (exprs!4299 ctx!74))))) b!5136897))

(declare-fun b!5136901 () Bool)

(declare-fun e!3204112 () Bool)

(declare-fun tp!1432619 () Bool)

(declare-fun tp!1432622 () Bool)

(assert (=> b!5136901 (= e!3204112 (and tp!1432619 tp!1432622))))

(declare-fun b!5136900 () Bool)

(declare-fun tp!1432623 () Bool)

(assert (=> b!5136900 (= e!3204112 tp!1432623)))

(declare-fun b!5136898 () Bool)

(assert (=> b!5136898 (= e!3204112 tp_is_empty!37983)))

(assert (=> b!5136792 (= tp!1432606 e!3204112)))

(declare-fun b!5136899 () Bool)

(declare-fun tp!1432620 () Bool)

(declare-fun tp!1432621 () Bool)

(assert (=> b!5136899 (= e!3204112 (and tp!1432620 tp!1432621))))

(assert (= (and b!5136792 ((_ is ElementMatch!14415) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))) b!5136898))

(assert (= (and b!5136792 ((_ is Concat!23260) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))) b!5136899))

(assert (= (and b!5136792 ((_ is Star!14415) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))) b!5136900))

(assert (= (and b!5136792 ((_ is Union!14415) (regOne!29342 (h!66091 (exprs!4299 ctx!74))))) b!5136901))

(declare-fun b!5136905 () Bool)

(declare-fun e!3204113 () Bool)

(declare-fun tp!1432624 () Bool)

(declare-fun tp!1432627 () Bool)

(assert (=> b!5136905 (= e!3204113 (and tp!1432624 tp!1432627))))

(declare-fun b!5136904 () Bool)

(declare-fun tp!1432628 () Bool)

(assert (=> b!5136904 (= e!3204113 tp!1432628)))

(declare-fun b!5136902 () Bool)

(assert (=> b!5136902 (= e!3204113 tp_is_empty!37983)))

(assert (=> b!5136792 (= tp!1432607 e!3204113)))

(declare-fun b!5136903 () Bool)

(declare-fun tp!1432625 () Bool)

(declare-fun tp!1432626 () Bool)

(assert (=> b!5136903 (= e!3204113 (and tp!1432625 tp!1432626))))

(assert (= (and b!5136792 ((_ is ElementMatch!14415) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) b!5136902))

(assert (= (and b!5136792 ((_ is Concat!23260) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) b!5136903))

(assert (= (and b!5136792 ((_ is Star!14415) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) b!5136904))

(assert (= (and b!5136792 ((_ is Union!14415) (regTwo!29342 (h!66091 (exprs!4299 ctx!74))))) b!5136905))

(declare-fun b!5136909 () Bool)

(declare-fun e!3204114 () Bool)

(declare-fun tp!1432629 () Bool)

(declare-fun tp!1432632 () Bool)

(assert (=> b!5136909 (= e!3204114 (and tp!1432629 tp!1432632))))

(declare-fun b!5136908 () Bool)

(declare-fun tp!1432633 () Bool)

(assert (=> b!5136908 (= e!3204114 tp!1432633)))

(declare-fun b!5136906 () Bool)

(assert (=> b!5136906 (= e!3204114 tp_is_empty!37983)))

(assert (=> b!5136794 (= tp!1432605 e!3204114)))

(declare-fun b!5136907 () Bool)

(declare-fun tp!1432630 () Bool)

(declare-fun tp!1432631 () Bool)

(assert (=> b!5136907 (= e!3204114 (and tp!1432630 tp!1432631))))

(assert (= (and b!5136794 ((_ is ElementMatch!14415) (regOne!29343 (h!66091 (exprs!4299 ctx!74))))) b!5136906))

(assert (= (and b!5136794 ((_ is Concat!23260) (regOne!29343 (h!66091 (exprs!4299 ctx!74))))) b!5136907))

(assert (= (and b!5136794 ((_ is Star!14415) (regOne!29343 (h!66091 (exprs!4299 ctx!74))))) b!5136908))

(assert (= (and b!5136794 ((_ is Union!14415) (regOne!29343 (h!66091 (exprs!4299 ctx!74))))) b!5136909))

(declare-fun b!5136913 () Bool)

(declare-fun e!3204115 () Bool)

(declare-fun tp!1432634 () Bool)

(declare-fun tp!1432637 () Bool)

(assert (=> b!5136913 (= e!3204115 (and tp!1432634 tp!1432637))))

(declare-fun b!5136912 () Bool)

(declare-fun tp!1432638 () Bool)

(assert (=> b!5136912 (= e!3204115 tp!1432638)))

(declare-fun b!5136910 () Bool)

(assert (=> b!5136910 (= e!3204115 tp_is_empty!37983)))

(assert (=> b!5136794 (= tp!1432608 e!3204115)))

(declare-fun b!5136911 () Bool)

(declare-fun tp!1432635 () Bool)

(declare-fun tp!1432636 () Bool)

(assert (=> b!5136911 (= e!3204115 (and tp!1432635 tp!1432636))))

(assert (= (and b!5136794 ((_ is ElementMatch!14415) (regTwo!29343 (h!66091 (exprs!4299 ctx!74))))) b!5136910))

(assert (= (and b!5136794 ((_ is Concat!23260) (regTwo!29343 (h!66091 (exprs!4299 ctx!74))))) b!5136911))

(assert (= (and b!5136794 ((_ is Star!14415) (regTwo!29343 (h!66091 (exprs!4299 ctx!74))))) b!5136912))

(assert (= (and b!5136794 ((_ is Union!14415) (regTwo!29343 (h!66091 (exprs!4299 ctx!74))))) b!5136913))

(declare-fun b!5136917 () Bool)

(declare-fun e!3204116 () Bool)

(declare-fun tp!1432639 () Bool)

(declare-fun tp!1432642 () Bool)

(assert (=> b!5136917 (= e!3204116 (and tp!1432639 tp!1432642))))

(declare-fun b!5136916 () Bool)

(declare-fun tp!1432643 () Bool)

(assert (=> b!5136916 (= e!3204116 tp!1432643)))

(declare-fun b!5136914 () Bool)

(assert (=> b!5136914 (= e!3204116 tp_is_empty!37983)))

(assert (=> b!5136793 (= tp!1432609 e!3204116)))

(declare-fun b!5136915 () Bool)

(declare-fun tp!1432640 () Bool)

(declare-fun tp!1432641 () Bool)

(assert (=> b!5136915 (= e!3204116 (and tp!1432640 tp!1432641))))

(assert (= (and b!5136793 ((_ is ElementMatch!14415) (reg!14744 (h!66091 (exprs!4299 ctx!74))))) b!5136914))

(assert (= (and b!5136793 ((_ is Concat!23260) (reg!14744 (h!66091 (exprs!4299 ctx!74))))) b!5136915))

(assert (= (and b!5136793 ((_ is Star!14415) (reg!14744 (h!66091 (exprs!4299 ctx!74))))) b!5136916))

(assert (= (and b!5136793 ((_ is Union!14415) (reg!14744 (h!66091 (exprs!4299 ctx!74))))) b!5136917))

(declare-fun b_lambda!200127 () Bool)

(assert (= b_lambda!200125 (or d!1662073 b_lambda!200127)))

(declare-fun bs!1200242 () Bool)

(declare-fun d!1662141 () Bool)

(assert (= bs!1200242 (and d!1662141 d!1662073)))

(assert (=> bs!1200242 (= (dynLambda!23754 lambda!256047 (h!66091 (exprs!4299 ctx!74))) (not (dynLambda!23754 lambda!256040 (h!66091 (exprs!4299 ctx!74)))))))

(declare-fun b_lambda!200133 () Bool)

(assert (=> (not b_lambda!200133) (not bs!1200242)))

(declare-fun m!6202256 () Bool)

(assert (=> bs!1200242 m!6202256))

(assert (=> b!5136882 d!1662141))

(declare-fun b_lambda!200129 () Bool)

(assert (= b_lambda!200121 (or d!1662083 b_lambda!200129)))

(declare-fun bs!1200243 () Bool)

(declare-fun d!1662143 () Bool)

(assert (= bs!1200243 (and d!1662143 d!1662083)))

(assert (=> bs!1200243 (= (dynLambda!23754 lambda!256048 (h!66091 (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74)))))) (not (dynLambda!23754 lambda!256039 (h!66091 (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74))))))))))

(declare-fun b_lambda!200135 () Bool)

(assert (=> (not b_lambda!200135) (not bs!1200243)))

(declare-fun m!6202258 () Bool)

(assert (=> bs!1200243 m!6202258))

(assert (=> b!5136844 d!1662143))

(declare-fun b_lambda!200131 () Bool)

(assert (= b_lambda!200123 (or d!1662067 b_lambda!200131)))

(declare-fun bs!1200244 () Bool)

(declare-fun d!1662145 () Bool)

(assert (= bs!1200244 (and d!1662145 d!1662067)))

(assert (=> bs!1200244 (= (dynLambda!23754 lambda!256044 (h!66091 (t!372796 (exprs!4299 ctx!74)))) (validRegex!6272 (h!66091 (t!372796 (exprs!4299 ctx!74)))))))

(declare-fun m!6202260 () Bool)

(assert (=> bs!1200244 m!6202260))

(assert (=> b!5136880 d!1662145))

(check-sat (not bm!358157) (not b!5136909) (not b!5136847) (not d!1662119) (not b!5136915) (not bm!358150) (not bm!358145) tp_is_empty!37983 (not b!5136901) (not b!5136913) (not b!5136912) (not b!5136885) (not b_lambda!200129) (not b!5136908) (not d!1662125) (not bm!358146) (not b!5136834) (not bs!1200244) (not bm!358154) (not b!5136897) (not b!5136904) (not d!1662135) (not bm!358152) (not b_lambda!200131) (not b!5136905) (not b!5136917) (not b_lambda!200127) (not d!1662121) (not b!5136894) (not b!5136845) (not b_lambda!200133) (not bm!358158) (not b!5136895) (not bm!358160) (not bm!358149) (not bm!358155) (not b!5136911) (not bm!358153) (not b!5136916) (not bm!358147) (not b!5136907) (not b!5136896) (not d!1662131) (not b!5136903) (not b!5136899) (not b!5136872) (not d!1662127) (not b!5136881) (not b_lambda!200119) (not b!5136856) (not b!5136883) (not b!5136900) (not b_lambda!200135))
(check-sat)
(get-model)

(declare-fun b_lambda!200153 () Bool)

(assert (= b_lambda!200135 (or d!1662055 b_lambda!200153)))

(declare-fun bs!1200254 () Bool)

(declare-fun d!1662185 () Bool)

(assert (= bs!1200254 (and d!1662185 d!1662055)))

(assert (=> bs!1200254 (= (dynLambda!23754 lambda!256039 (h!66091 (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74)))))) (lostCause!1387 (h!66091 (exprs!4299 (Context!7599 (t!372796 (exprs!4299 ctx!74)))))))))

(declare-fun m!6202326 () Bool)

(assert (=> bs!1200254 m!6202326))

(assert (=> bs!1200243 d!1662185))

(declare-fun b_lambda!200155 () Bool)

(assert (= b_lambda!200133 (or d!1662065 b_lambda!200155)))

(declare-fun bs!1200255 () Bool)

(declare-fun d!1662187 () Bool)

(assert (= bs!1200255 (and d!1662187 d!1662065)))

(assert (=> bs!1200255 (= (dynLambda!23754 lambda!256040 (h!66091 (exprs!4299 ctx!74))) (lostCause!1387 (h!66091 (exprs!4299 ctx!74))))))

(assert (=> bs!1200255 m!6202092))

(assert (=> bs!1200242 d!1662187))

(check-sat (not bm!358157) (not b!5136909) (not b!5136847) (not d!1662119) (not b!5136915) (not bm!358145) tp_is_empty!37983 (not b!5136913) (not b!5136912) (not b!5136885) (not b_lambda!200129) (not b!5136908) (not d!1662125) (not bm!358146) (not b!5136900) (not b!5136834) (not bs!1200244) (not bm!358154) (not b!5136897) (not b!5136904) (not d!1662135) (not bm!358152) (not b_lambda!200131) (not bs!1200254) (not b!5136905) (not b!5136917) (not b_lambda!200127) (not bm!358150) (not bs!1200255) (not d!1662121) (not b!5136894) (not b!5136845) (not b_lambda!200153) (not b!5136901) (not bm!358158) (not b!5136895) (not bm!358160) (not bm!358149) (not bm!358155) (not b!5136911) (not bm!358153) (not b!5136916) (not bm!358147) (not b!5136907) (not b!5136896) (not d!1662131) (not b!5136903) (not b!5136899) (not b!5136872) (not d!1662127) (not b!5136881) (not b_lambda!200119) (not b!5136856) (not b_lambda!200155) (not b!5136883))
(check-sat)

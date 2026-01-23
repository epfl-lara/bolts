; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!733454 () Bool)

(assert start!733454)

(declare-fun b!7611962 () Bool)

(declare-fun res!3047454 () Bool)

(declare-fun e!4527125 () Bool)

(assert (=> b!7611962 (=> (not res!3047454) (not e!4527125))))

(declare-datatypes ((C!40778 0))(
  ( (C!40779 (val!30829 Int)) )
))
(declare-datatypes ((Regex!20226 0))(
  ( (ElementMatch!20226 (c!1403445 C!40778)) (Concat!29071 (regOne!40964 Regex!20226) (regTwo!40964 Regex!20226)) (EmptyExpr!20226) (Star!20226 (reg!20555 Regex!20226)) (EmptyLang!20226) (Union!20226 (regOne!40965 Regex!20226) (regTwo!40965 Regex!20226)) )
))
(declare-fun r!19218 () Regex!20226)

(declare-fun nullable!8847 (Regex!20226) Bool)

(assert (=> b!7611962 (= res!3047454 (nullable!8847 r!19218))))

(declare-fun b!7611963 () Bool)

(declare-fun e!4527124 () Bool)

(declare-fun tp!2221552 () Bool)

(assert (=> b!7611963 (= e!4527124 tp!2221552)))

(declare-fun b!7611964 () Bool)

(declare-fun res!3047455 () Bool)

(assert (=> b!7611964 (=> (not res!3047455) (not e!4527125))))

(assert (=> b!7611964 (= res!3047455 (and (not (is-ElementMatch!20226 r!19218)) (not (is-Star!20226 r!19218)) (not (is-Union!20226 r!19218)) (is-Concat!29071 r!19218)))))

(declare-fun res!3047453 () Bool)

(assert (=> start!733454 (=> (not res!3047453) (not e!4527125))))

(declare-fun validRegex!10648 (Regex!20226) Bool)

(assert (=> start!733454 (= res!3047453 (validRegex!10648 r!19218))))

(assert (=> start!733454 e!4527125))

(assert (=> start!733454 e!4527124))

(declare-fun b!7611965 () Bool)

(assert (=> b!7611965 (= e!4527125 (not (validRegex!10648 (regTwo!40964 r!19218))))))

(declare-fun lostCause!1898 (Regex!20226) Bool)

(assert (=> b!7611965 (not (lostCause!1898 (regOne!40964 r!19218)))))

(declare-datatypes ((Unit!167272 0))(
  ( (Unit!167273) )
))
(declare-fun lt!2655013 () Unit!167272)

(declare-fun lemmaNullableThenNotLostCause!109 (Regex!20226) Unit!167272)

(assert (=> b!7611965 (= lt!2655013 (lemmaNullableThenNotLostCause!109 (regOne!40964 r!19218)))))

(declare-fun b!7611966 () Bool)

(declare-fun tp_is_empty!50807 () Bool)

(assert (=> b!7611966 (= e!4527124 tp_is_empty!50807)))

(declare-fun b!7611967 () Bool)

(declare-fun tp!2221553 () Bool)

(declare-fun tp!2221551 () Bool)

(assert (=> b!7611967 (= e!4527124 (and tp!2221553 tp!2221551))))

(declare-fun b!7611968 () Bool)

(declare-fun tp!2221554 () Bool)

(declare-fun tp!2221550 () Bool)

(assert (=> b!7611968 (= e!4527124 (and tp!2221554 tp!2221550))))

(assert (= (and start!733454 res!3047453) b!7611962))

(assert (= (and b!7611962 res!3047454) b!7611964))

(assert (= (and b!7611964 res!3047455) b!7611965))

(assert (= (and start!733454 (is-ElementMatch!20226 r!19218)) b!7611966))

(assert (= (and start!733454 (is-Concat!29071 r!19218)) b!7611967))

(assert (= (and start!733454 (is-Star!20226 r!19218)) b!7611963))

(assert (= (and start!733454 (is-Union!20226 r!19218)) b!7611968))

(declare-fun m!8148398 () Bool)

(assert (=> b!7611962 m!8148398))

(declare-fun m!8148400 () Bool)

(assert (=> start!733454 m!8148400))

(declare-fun m!8148402 () Bool)

(assert (=> b!7611965 m!8148402))

(declare-fun m!8148404 () Bool)

(assert (=> b!7611965 m!8148404))

(declare-fun m!8148406 () Bool)

(assert (=> b!7611965 m!8148406))

(push 1)

(assert (not b!7611965))

(assert (not b!7611967))

(assert tp_is_empty!50807)

(assert (not start!733454))

(assert (not b!7611968))

(assert (not b!7611963))

(assert (not b!7611962))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2322385 () Bool)

(declare-fun nullableFct!3531 (Regex!20226) Bool)

(assert (=> d!2322385 (= (nullable!8847 r!19218) (nullableFct!3531 r!19218))))

(declare-fun bs!1942883 () Bool)

(assert (= bs!1942883 d!2322385))

(declare-fun m!8148418 () Bool)

(assert (=> bs!1942883 m!8148418))

(assert (=> b!7611962 d!2322385))

(declare-fun b!7612026 () Bool)

(declare-fun res!3047486 () Bool)

(declare-fun e!4527163 () Bool)

(assert (=> b!7612026 (=> (not res!3047486) (not e!4527163))))

(declare-fun call!699187 () Bool)

(assert (=> b!7612026 (= res!3047486 call!699187)))

(declare-fun e!4527161 () Bool)

(assert (=> b!7612026 (= e!4527161 e!4527163)))

(declare-fun b!7612027 () Bool)

(declare-fun call!699189 () Bool)

(assert (=> b!7612027 (= e!4527163 call!699189)))

(declare-fun b!7612028 () Bool)

(declare-fun res!3047487 () Bool)

(declare-fun e!4527162 () Bool)

(assert (=> b!7612028 (=> res!3047487 e!4527162)))

(assert (=> b!7612028 (= res!3047487 (not (is-Concat!29071 (regTwo!40964 r!19218))))))

(assert (=> b!7612028 (= e!4527161 e!4527162)))

(declare-fun b!7612029 () Bool)

(declare-fun e!4527164 () Bool)

(declare-fun call!699188 () Bool)

(assert (=> b!7612029 (= e!4527164 call!699188)))

(declare-fun bm!699182 () Bool)

(assert (=> bm!699182 (= call!699187 call!699188)))

(declare-fun b!7612030 () Bool)

(declare-fun e!4527160 () Bool)

(assert (=> b!7612030 (= e!4527160 call!699189)))

(declare-fun b!7612031 () Bool)

(declare-fun e!4527165 () Bool)

(assert (=> b!7612031 (= e!4527165 e!4527164)))

(declare-fun res!3047489 () Bool)

(assert (=> b!7612031 (= res!3047489 (not (nullable!8847 (reg!20555 (regTwo!40964 r!19218)))))))

(assert (=> b!7612031 (=> (not res!3047489) (not e!4527164))))

(declare-fun d!2322387 () Bool)

(declare-fun res!3047485 () Bool)

(declare-fun e!4527166 () Bool)

(assert (=> d!2322387 (=> res!3047485 e!4527166)))

(assert (=> d!2322387 (= res!3047485 (is-ElementMatch!20226 (regTwo!40964 r!19218)))))

(assert (=> d!2322387 (= (validRegex!10648 (regTwo!40964 r!19218)) e!4527166)))

(declare-fun b!7612032 () Bool)

(assert (=> b!7612032 (= e!4527166 e!4527165)))

(declare-fun c!1403455 () Bool)

(assert (=> b!7612032 (= c!1403455 (is-Star!20226 (regTwo!40964 r!19218)))))

(declare-fun b!7612033 () Bool)

(assert (=> b!7612033 (= e!4527165 e!4527161)))

(declare-fun c!1403456 () Bool)

(assert (=> b!7612033 (= c!1403456 (is-Union!20226 (regTwo!40964 r!19218)))))

(declare-fun bm!699183 () Bool)

(assert (=> bm!699183 (= call!699189 (validRegex!10648 (ite c!1403456 (regTwo!40965 (regTwo!40964 r!19218)) (regTwo!40964 (regTwo!40964 r!19218)))))))

(declare-fun b!7612034 () Bool)

(assert (=> b!7612034 (= e!4527162 e!4527160)))

(declare-fun res!3047488 () Bool)

(assert (=> b!7612034 (=> (not res!3047488) (not e!4527160))))

(assert (=> b!7612034 (= res!3047488 call!699187)))

(declare-fun bm!699184 () Bool)

(assert (=> bm!699184 (= call!699188 (validRegex!10648 (ite c!1403455 (reg!20555 (regTwo!40964 r!19218)) (ite c!1403456 (regOne!40965 (regTwo!40964 r!19218)) (regOne!40964 (regTwo!40964 r!19218))))))))

(assert (= (and d!2322387 (not res!3047485)) b!7612032))

(assert (= (and b!7612032 c!1403455) b!7612031))

(assert (= (and b!7612032 (not c!1403455)) b!7612033))

(assert (= (and b!7612031 res!3047489) b!7612029))

(assert (= (and b!7612033 c!1403456) b!7612026))

(assert (= (and b!7612033 (not c!1403456)) b!7612028))

(assert (= (and b!7612026 res!3047486) b!7612027))

(assert (= (and b!7612028 (not res!3047487)) b!7612034))

(assert (= (and b!7612034 res!3047488) b!7612030))

(assert (= (or b!7612026 b!7612034) bm!699182))

(assert (= (or b!7612027 b!7612030) bm!699183))

(assert (= (or b!7612029 bm!699182) bm!699184))

(declare-fun m!8148420 () Bool)

(assert (=> b!7612031 m!8148420))

(declare-fun m!8148422 () Bool)

(assert (=> bm!699183 m!8148422))

(declare-fun m!8148424 () Bool)

(assert (=> bm!699184 m!8148424))

(assert (=> b!7611965 d!2322387))

(declare-fun d!2322391 () Bool)

(declare-fun lostCauseFct!545 (Regex!20226) Bool)

(assert (=> d!2322391 (= (lostCause!1898 (regOne!40964 r!19218)) (lostCauseFct!545 (regOne!40964 r!19218)))))

(declare-fun bs!1942884 () Bool)

(assert (= bs!1942884 d!2322391))

(declare-fun m!8148426 () Bool)

(assert (=> bs!1942884 m!8148426))

(assert (=> b!7611965 d!2322391))

(declare-fun d!2322393 () Bool)

(assert (=> d!2322393 (not (lostCause!1898 (regOne!40964 r!19218)))))

(declare-fun lt!2655019 () Unit!167272)

(declare-fun choose!58742 (Regex!20226) Unit!167272)

(assert (=> d!2322393 (= lt!2655019 (choose!58742 (regOne!40964 r!19218)))))

(assert (=> d!2322393 (validRegex!10648 (regOne!40964 r!19218))))

(assert (=> d!2322393 (= (lemmaNullableThenNotLostCause!109 (regOne!40964 r!19218)) lt!2655019)))

(declare-fun bs!1942885 () Bool)

(assert (= bs!1942885 d!2322393))

(assert (=> bs!1942885 m!8148404))

(declare-fun m!8148428 () Bool)

(assert (=> bs!1942885 m!8148428))

(declare-fun m!8148430 () Bool)

(assert (=> bs!1942885 m!8148430))

(assert (=> b!7611965 d!2322393))

(declare-fun b!7612035 () Bool)

(declare-fun res!3047491 () Bool)

(declare-fun e!4527170 () Bool)

(assert (=> b!7612035 (=> (not res!3047491) (not e!4527170))))

(declare-fun call!699196 () Bool)

(assert (=> b!7612035 (= res!3047491 call!699196)))

(declare-fun e!4527168 () Bool)

(assert (=> b!7612035 (= e!4527168 e!4527170)))

(declare-fun b!7612036 () Bool)

(declare-fun call!699198 () Bool)

(assert (=> b!7612036 (= e!4527170 call!699198)))

(declare-fun b!7612037 () Bool)

(declare-fun res!3047492 () Bool)

(declare-fun e!4527169 () Bool)

(assert (=> b!7612037 (=> res!3047492 e!4527169)))

(assert (=> b!7612037 (= res!3047492 (not (is-Concat!29071 r!19218)))))

(assert (=> b!7612037 (= e!4527168 e!4527169)))

(declare-fun b!7612038 () Bool)

(declare-fun e!4527171 () Bool)

(declare-fun call!699197 () Bool)

(assert (=> b!7612038 (= e!4527171 call!699197)))

(declare-fun bm!699191 () Bool)

(assert (=> bm!699191 (= call!699196 call!699197)))

(declare-fun b!7612039 () Bool)

(declare-fun e!4527167 () Bool)

(assert (=> b!7612039 (= e!4527167 call!699198)))

(declare-fun b!7612040 () Bool)

(declare-fun e!4527172 () Bool)

(assert (=> b!7612040 (= e!4527172 e!4527171)))

(declare-fun res!3047494 () Bool)

(assert (=> b!7612040 (= res!3047494 (not (nullable!8847 (reg!20555 r!19218))))))

(assert (=> b!7612040 (=> (not res!3047494) (not e!4527171))))

(declare-fun d!2322395 () Bool)

(declare-fun res!3047490 () Bool)

(declare-fun e!4527173 () Bool)

(assert (=> d!2322395 (=> res!3047490 e!4527173)))

(assert (=> d!2322395 (= res!3047490 (is-ElementMatch!20226 r!19218))))

(assert (=> d!2322395 (= (validRegex!10648 r!19218) e!4527173)))

(declare-fun b!7612041 () Bool)

(assert (=> b!7612041 (= e!4527173 e!4527172)))

(declare-fun c!1403457 () Bool)

(assert (=> b!7612041 (= c!1403457 (is-Star!20226 r!19218))))

(declare-fun b!7612042 () Bool)

(assert (=> b!7612042 (= e!4527172 e!4527168)))

(declare-fun c!1403458 () Bool)

(assert (=> b!7612042 (= c!1403458 (is-Union!20226 r!19218))))

(declare-fun bm!699192 () Bool)

(assert (=> bm!699192 (= call!699198 (validRegex!10648 (ite c!1403458 (regTwo!40965 r!19218) (regTwo!40964 r!19218))))))

(declare-fun b!7612043 () Bool)

(assert (=> b!7612043 (= e!4527169 e!4527167)))

(declare-fun res!3047493 () Bool)

(assert (=> b!7612043 (=> (not res!3047493) (not e!4527167))))

(assert (=> b!7612043 (= res!3047493 call!699196)))

(declare-fun bm!699193 () Bool)

(assert (=> bm!699193 (= call!699197 (validRegex!10648 (ite c!1403457 (reg!20555 r!19218) (ite c!1403458 (regOne!40965 r!19218) (regOne!40964 r!19218)))))))

(assert (= (and d!2322395 (not res!3047490)) b!7612041))

(assert (= (and b!7612041 c!1403457) b!7612040))

(assert (= (and b!7612041 (not c!1403457)) b!7612042))

(assert (= (and b!7612040 res!3047494) b!7612038))

(assert (= (and b!7612042 c!1403458) b!7612035))

(assert (= (and b!7612042 (not c!1403458)) b!7612037))

(assert (= (and b!7612035 res!3047491) b!7612036))

(assert (= (and b!7612037 (not res!3047492)) b!7612043))

(assert (= (and b!7612043 res!3047493) b!7612039))

(assert (= (or b!7612035 b!7612043) bm!699191))

(assert (= (or b!7612036 b!7612039) bm!699192))

(assert (= (or b!7612038 bm!699191) bm!699193))

(declare-fun m!8148432 () Bool)

(assert (=> b!7612040 m!8148432))

(declare-fun m!8148434 () Bool)

(assert (=> bm!699192 m!8148434))

(declare-fun m!8148436 () Bool)

(assert (=> bm!699193 m!8148436))

(assert (=> start!733454 d!2322395))

(declare-fun b!7612056 () Bool)

(declare-fun e!4527176 () Bool)

(declare-fun tp!2221584 () Bool)

(assert (=> b!7612056 (= e!4527176 tp!2221584)))

(declare-fun b!7612054 () Bool)

(assert (=> b!7612054 (= e!4527176 tp_is_empty!50807)))

(assert (=> b!7611968 (= tp!2221554 e!4527176)))

(declare-fun b!7612055 () Bool)

(declare-fun tp!2221583 () Bool)

(declare-fun tp!2221581 () Bool)

(assert (=> b!7612055 (= e!4527176 (and tp!2221583 tp!2221581))))

(declare-fun b!7612057 () Bool)

(declare-fun tp!2221582 () Bool)

(declare-fun tp!2221580 () Bool)

(assert (=> b!7612057 (= e!4527176 (and tp!2221582 tp!2221580))))

(assert (= (and b!7611968 (is-ElementMatch!20226 (regOne!40965 r!19218))) b!7612054))

(assert (= (and b!7611968 (is-Concat!29071 (regOne!40965 r!19218))) b!7612055))

(assert (= (and b!7611968 (is-Star!20226 (regOne!40965 r!19218))) b!7612056))

(assert (= (and b!7611968 (is-Union!20226 (regOne!40965 r!19218))) b!7612057))

(declare-fun b!7612060 () Bool)

(declare-fun e!4527177 () Bool)

(declare-fun tp!2221589 () Bool)

(assert (=> b!7612060 (= e!4527177 tp!2221589)))

(declare-fun b!7612058 () Bool)

(assert (=> b!7612058 (= e!4527177 tp_is_empty!50807)))

(assert (=> b!7611968 (= tp!2221550 e!4527177)))

(declare-fun b!7612059 () Bool)

(declare-fun tp!2221588 () Bool)

(declare-fun tp!2221586 () Bool)

(assert (=> b!7612059 (= e!4527177 (and tp!2221588 tp!2221586))))

(declare-fun b!7612061 () Bool)

(declare-fun tp!2221587 () Bool)

(declare-fun tp!2221585 () Bool)

(assert (=> b!7612061 (= e!4527177 (and tp!2221587 tp!2221585))))

(assert (= (and b!7611968 (is-ElementMatch!20226 (regTwo!40965 r!19218))) b!7612058))

(assert (= (and b!7611968 (is-Concat!29071 (regTwo!40965 r!19218))) b!7612059))

(assert (= (and b!7611968 (is-Star!20226 (regTwo!40965 r!19218))) b!7612060))

(assert (= (and b!7611968 (is-Union!20226 (regTwo!40965 r!19218))) b!7612061))

(declare-fun b!7612064 () Bool)

(declare-fun e!4527178 () Bool)

(declare-fun tp!2221594 () Bool)

(assert (=> b!7612064 (= e!4527178 tp!2221594)))

(declare-fun b!7612062 () Bool)

(assert (=> b!7612062 (= e!4527178 tp_is_empty!50807)))

(assert (=> b!7611963 (= tp!2221552 e!4527178)))

(declare-fun b!7612063 () Bool)

(declare-fun tp!2221593 () Bool)

(declare-fun tp!2221591 () Bool)

(assert (=> b!7612063 (= e!4527178 (and tp!2221593 tp!2221591))))

(declare-fun b!7612065 () Bool)

(declare-fun tp!2221592 () Bool)

(declare-fun tp!2221590 () Bool)

(assert (=> b!7612065 (= e!4527178 (and tp!2221592 tp!2221590))))

(assert (= (and b!7611963 (is-ElementMatch!20226 (reg!20555 r!19218))) b!7612062))

(assert (= (and b!7611963 (is-Concat!29071 (reg!20555 r!19218))) b!7612063))

(assert (= (and b!7611963 (is-Star!20226 (reg!20555 r!19218))) b!7612064))

(assert (= (and b!7611963 (is-Union!20226 (reg!20555 r!19218))) b!7612065))

(declare-fun b!7612068 () Bool)

(declare-fun e!4527179 () Bool)

(declare-fun tp!2221599 () Bool)

(assert (=> b!7612068 (= e!4527179 tp!2221599)))

(declare-fun b!7612066 () Bool)

(assert (=> b!7612066 (= e!4527179 tp_is_empty!50807)))

(assert (=> b!7611967 (= tp!2221553 e!4527179)))

(declare-fun b!7612067 () Bool)

(declare-fun tp!2221598 () Bool)

(declare-fun tp!2221596 () Bool)

(assert (=> b!7612067 (= e!4527179 (and tp!2221598 tp!2221596))))

(declare-fun b!7612069 () Bool)

(declare-fun tp!2221597 () Bool)

(declare-fun tp!2221595 () Bool)

(assert (=> b!7612069 (= e!4527179 (and tp!2221597 tp!2221595))))

(assert (= (and b!7611967 (is-ElementMatch!20226 (regOne!40964 r!19218))) b!7612066))

(assert (= (and b!7611967 (is-Concat!29071 (regOne!40964 r!19218))) b!7612067))

(assert (= (and b!7611967 (is-Star!20226 (regOne!40964 r!19218))) b!7612068))

(assert (= (and b!7611967 (is-Union!20226 (regOne!40964 r!19218))) b!7612069))

(declare-fun b!7612072 () Bool)

(declare-fun e!4527180 () Bool)

(declare-fun tp!2221604 () Bool)

(assert (=> b!7612072 (= e!4527180 tp!2221604)))

(declare-fun b!7612070 () Bool)

(assert (=> b!7612070 (= e!4527180 tp_is_empty!50807)))

(assert (=> b!7611967 (= tp!2221551 e!4527180)))

(declare-fun b!7612071 () Bool)

(declare-fun tp!2221603 () Bool)

(declare-fun tp!2221601 () Bool)

(assert (=> b!7612071 (= e!4527180 (and tp!2221603 tp!2221601))))

(declare-fun b!7612073 () Bool)

(declare-fun tp!2221602 () Bool)

(declare-fun tp!2221600 () Bool)

(assert (=> b!7612073 (= e!4527180 (and tp!2221602 tp!2221600))))

(assert (= (and b!7611967 (is-ElementMatch!20226 (regTwo!40964 r!19218))) b!7612070))

(assert (= (and b!7611967 (is-Concat!29071 (regTwo!40964 r!19218))) b!7612071))

(assert (= (and b!7611967 (is-Star!20226 (regTwo!40964 r!19218))) b!7612072))

(assert (= (and b!7611967 (is-Union!20226 (regTwo!40964 r!19218))) b!7612073))

(push 1)

(assert (not b!7612072))

(assert (not b!7612056))

(assert (not b!7612064))

(assert tp_is_empty!50807)

(assert (not b!7612069))

(assert (not bm!699184))

(assert (not bm!699192))

(assert (not b!7612061))

(assert (not d!2322391))

(assert (not b!7612031))

(assert (not d!2322385))

(assert (not b!7612068))

(assert (not bm!699183))

(assert (not b!7612073))

(assert (not b!7612071))

(assert (not d!2322393))

(assert (not b!7612060))

(assert (not b!7612065))

(assert (not bm!699193))

(assert (not b!7612067))

(assert (not b!7612055))

(assert (not b!7612040))

(assert (not b!7612057))

(assert (not b!7612059))

(assert (not b!7612063))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


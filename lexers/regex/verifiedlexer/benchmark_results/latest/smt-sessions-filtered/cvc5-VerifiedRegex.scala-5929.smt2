; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!290298 () Bool)

(assert start!290298)

(declare-fun b!3018764 () Bool)

(assert (=> b!3018764 true))

(assert (=> b!3018764 true))

(declare-fun lambda!112886 () Int)

(declare-fun lambda!112885 () Int)

(assert (=> b!3018764 (not (= lambda!112886 lambda!112885))))

(assert (=> b!3018764 true))

(assert (=> b!3018764 true))

(declare-fun res!1243216 () Bool)

(declare-fun e!1894473 () Bool)

(assert (=> start!290298 (=> (not res!1243216) (not e!1894473))))

(declare-datatypes ((C!19002 0))(
  ( (C!19003 (val!11537 Int)) )
))
(declare-datatypes ((Regex!9408 0))(
  ( (ElementMatch!9408 (c!497760 C!19002)) (Concat!14729 (regOne!19328 Regex!9408) (regTwo!19328 Regex!9408)) (EmptyExpr!9408) (Star!9408 (reg!9737 Regex!9408)) (EmptyLang!9408) (Union!9408 (regOne!19329 Regex!9408) (regTwo!19329 Regex!9408)) )
))
(declare-fun r!17423 () Regex!9408)

(declare-fun validRegex!4141 (Regex!9408) Bool)

(assert (=> start!290298 (= res!1243216 (validRegex!4141 r!17423))))

(assert (=> start!290298 e!1894473))

(declare-fun e!1894475 () Bool)

(assert (=> start!290298 e!1894475))

(declare-fun e!1894474 () Bool)

(assert (=> start!290298 e!1894474))

(declare-fun b!3018756 () Bool)

(declare-fun tp_is_empty!16379 () Bool)

(declare-fun tp!957898 () Bool)

(assert (=> b!3018756 (= e!1894474 (and tp_is_empty!16379 tp!957898))))

(declare-fun b!3018757 () Bool)

(declare-fun tp!957903 () Bool)

(assert (=> b!3018757 (= e!1894475 tp!957903)))

(declare-fun b!3018758 () Bool)

(assert (=> b!3018758 (= e!1894475 tp_is_empty!16379)))

(declare-fun b!3018759 () Bool)

(declare-fun res!1243215 () Bool)

(declare-fun e!1894472 () Bool)

(assert (=> b!3018759 (=> res!1243215 e!1894472)))

(declare-datatypes ((List!35273 0))(
  ( (Nil!35149) (Cons!35149 (h!40569 C!19002) (t!234338 List!35273)) )
))
(declare-datatypes ((tuple2!34098 0))(
  ( (tuple2!34099 (_1!20181 List!35273) (_2!20181 List!35273)) )
))
(declare-fun lt!1044561 () tuple2!34098)

(declare-fun matchR!4290 (Regex!9408 List!35273) Bool)

(assert (=> b!3018759 (= res!1243215 (not (matchR!4290 (regTwo!19328 r!17423) (_2!20181 lt!1044561))))))

(declare-fun b!3018760 () Bool)

(assert (=> b!3018760 (= e!1894472 (validRegex!4141 (regTwo!19328 r!17423)))))

(declare-fun simplify!387 (Regex!9408) Regex!9408)

(assert (=> b!3018760 (matchR!4290 (simplify!387 (regOne!19328 r!17423)) (_1!20181 lt!1044561))))

(declare-datatypes ((Unit!49239 0))(
  ( (Unit!49240) )
))
(declare-fun lt!1044566 () Unit!49239)

(declare-fun lemmaSimplifySound!235 (Regex!9408 List!35273) Unit!49239)

(assert (=> b!3018760 (= lt!1044566 (lemmaSimplifySound!235 (regOne!19328 r!17423) (_1!20181 lt!1044561)))))

(declare-fun b!3018761 () Bool)

(declare-fun tp!957901 () Bool)

(declare-fun tp!957900 () Bool)

(assert (=> b!3018761 (= e!1894475 (and tp!957901 tp!957900))))

(declare-fun b!3018762 () Bool)

(declare-fun res!1243214 () Bool)

(declare-fun e!1894476 () Bool)

(assert (=> b!3018762 (=> res!1243214 e!1894476)))

(declare-fun s!11993 () List!35273)

(declare-fun isEmpty!19443 (List!35273) Bool)

(assert (=> b!3018762 (= res!1243214 (isEmpty!19443 s!11993))))

(declare-fun b!3018763 () Bool)

(declare-fun tp!957902 () Bool)

(declare-fun tp!957899 () Bool)

(assert (=> b!3018763 (= e!1894475 (and tp!957902 tp!957899))))

(assert (=> b!3018764 (= e!1894476 e!1894472)))

(declare-fun res!1243213 () Bool)

(assert (=> b!3018764 (=> res!1243213 e!1894472)))

(assert (=> b!3018764 (= res!1243213 (not (matchR!4290 (regOne!19328 r!17423) (_1!20181 lt!1044561))))))

(declare-datatypes ((Option!6781 0))(
  ( (None!6780) (Some!6780 (v!34914 tuple2!34098)) )
))
(declare-fun lt!1044567 () Option!6781)

(declare-fun get!10952 (Option!6781) tuple2!34098)

(assert (=> b!3018764 (= lt!1044561 (get!10952 lt!1044567))))

(declare-fun Exists!1676 (Int) Bool)

(assert (=> b!3018764 (= (Exists!1676 lambda!112885) (Exists!1676 lambda!112886))))

(declare-fun lt!1044563 () Unit!49239)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!549 (Regex!9408 Regex!9408 List!35273) Unit!49239)

(assert (=> b!3018764 (= lt!1044563 (lemmaExistCutMatchRandMatchRSpecEquivalent!549 (regOne!19328 r!17423) (regTwo!19328 r!17423) s!11993))))

(declare-fun isDefined!5332 (Option!6781) Bool)

(assert (=> b!3018764 (= (isDefined!5332 lt!1044567) (Exists!1676 lambda!112885))))

(declare-fun findConcatSeparation!1175 (Regex!9408 Regex!9408 List!35273 List!35273 List!35273) Option!6781)

(assert (=> b!3018764 (= lt!1044567 (findConcatSeparation!1175 (regOne!19328 r!17423) (regTwo!19328 r!17423) Nil!35149 s!11993 s!11993))))

(declare-fun lt!1044564 () Unit!49239)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!953 (Regex!9408 Regex!9408 List!35273) Unit!49239)

(assert (=> b!3018764 (= lt!1044564 (lemmaFindConcatSeparationEquivalentToExists!953 (regOne!19328 r!17423) (regTwo!19328 r!17423) s!11993))))

(declare-fun b!3018765 () Bool)

(assert (=> b!3018765 (= e!1894473 (not e!1894476))))

(declare-fun res!1243217 () Bool)

(assert (=> b!3018765 (=> res!1243217 e!1894476)))

(declare-fun lt!1044562 () Bool)

(assert (=> b!3018765 (= res!1243217 (or (not lt!1044562) (not (is-Concat!14729 r!17423))))))

(declare-fun matchRSpec!1545 (Regex!9408 List!35273) Bool)

(assert (=> b!3018765 (= lt!1044562 (matchRSpec!1545 r!17423 s!11993))))

(assert (=> b!3018765 (= lt!1044562 (matchR!4290 r!17423 s!11993))))

(declare-fun lt!1044565 () Unit!49239)

(declare-fun mainMatchTheorem!1545 (Regex!9408 List!35273) Unit!49239)

(assert (=> b!3018765 (= lt!1044565 (mainMatchTheorem!1545 r!17423 s!11993))))

(assert (= (and start!290298 res!1243216) b!3018765))

(assert (= (and b!3018765 (not res!1243217)) b!3018762))

(assert (= (and b!3018762 (not res!1243214)) b!3018764))

(assert (= (and b!3018764 (not res!1243213)) b!3018759))

(assert (= (and b!3018759 (not res!1243215)) b!3018760))

(assert (= (and start!290298 (is-ElementMatch!9408 r!17423)) b!3018758))

(assert (= (and start!290298 (is-Concat!14729 r!17423)) b!3018761))

(assert (= (and start!290298 (is-Star!9408 r!17423)) b!3018757))

(assert (= (and start!290298 (is-Union!9408 r!17423)) b!3018763))

(assert (= (and start!290298 (is-Cons!35149 s!11993)) b!3018756))

(declare-fun m!3361277 () Bool)

(assert (=> b!3018759 m!3361277))

(declare-fun m!3361279 () Bool)

(assert (=> b!3018765 m!3361279))

(declare-fun m!3361281 () Bool)

(assert (=> b!3018765 m!3361281))

(declare-fun m!3361283 () Bool)

(assert (=> b!3018765 m!3361283))

(declare-fun m!3361285 () Bool)

(assert (=> b!3018760 m!3361285))

(declare-fun m!3361287 () Bool)

(assert (=> b!3018760 m!3361287))

(assert (=> b!3018760 m!3361287))

(declare-fun m!3361289 () Bool)

(assert (=> b!3018760 m!3361289))

(declare-fun m!3361291 () Bool)

(assert (=> b!3018760 m!3361291))

(declare-fun m!3361293 () Bool)

(assert (=> b!3018762 m!3361293))

(declare-fun m!3361295 () Bool)

(assert (=> start!290298 m!3361295))

(declare-fun m!3361297 () Bool)

(assert (=> b!3018764 m!3361297))

(declare-fun m!3361299 () Bool)

(assert (=> b!3018764 m!3361299))

(assert (=> b!3018764 m!3361297))

(declare-fun m!3361301 () Bool)

(assert (=> b!3018764 m!3361301))

(declare-fun m!3361303 () Bool)

(assert (=> b!3018764 m!3361303))

(declare-fun m!3361305 () Bool)

(assert (=> b!3018764 m!3361305))

(declare-fun m!3361307 () Bool)

(assert (=> b!3018764 m!3361307))

(declare-fun m!3361309 () Bool)

(assert (=> b!3018764 m!3361309))

(declare-fun m!3361311 () Bool)

(assert (=> b!3018764 m!3361311))

(push 1)

(assert (not b!3018762))

(assert (not start!290298))

(assert (not b!3018763))

(assert tp_is_empty!16379)

(assert (not b!3018760))

(assert (not b!3018759))

(assert (not b!3018757))

(assert (not b!3018764))

(assert (not b!3018761))

(assert (not b!3018756))

(assert (not b!3018765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!530102 () Bool)

(declare-fun b!3018850 () Bool)

(assert (= bs!530102 (and b!3018850 b!3018764)))

(declare-fun lambda!112899 () Int)

(assert (=> bs!530102 (not (= lambda!112899 lambda!112885))))

(assert (=> bs!530102 (not (= lambda!112899 lambda!112886))))

(assert (=> b!3018850 true))

(assert (=> b!3018850 true))

(declare-fun bs!530103 () Bool)

(declare-fun b!3018854 () Bool)

(assert (= bs!530103 (and b!3018854 b!3018764)))

(declare-fun lambda!112900 () Int)

(assert (=> bs!530103 (not (= lambda!112900 lambda!112885))))

(assert (=> bs!530103 (= lambda!112900 lambda!112886)))

(declare-fun bs!530104 () Bool)

(assert (= bs!530104 (and b!3018854 b!3018850)))

(assert (=> bs!530104 (not (= lambda!112900 lambda!112899))))

(assert (=> b!3018854 true))

(assert (=> b!3018854 true))

(declare-fun d!849004 () Bool)

(declare-fun c!497771 () Bool)

(assert (=> d!849004 (= c!497771 (is-EmptyExpr!9408 r!17423))))

(declare-fun e!1894520 () Bool)

(assert (=> d!849004 (= (matchRSpec!1545 r!17423 s!11993) e!1894520)))

(declare-fun b!3018848 () Bool)

(declare-fun e!1894519 () Bool)

(assert (=> b!3018848 (= e!1894519 (= s!11993 (Cons!35149 (c!497760 r!17423) Nil!35149)))))

(declare-fun b!3018849 () Bool)

(declare-fun e!1894518 () Bool)

(declare-fun e!1894517 () Bool)

(assert (=> b!3018849 (= e!1894518 e!1894517)))

(declare-fun c!497773 () Bool)

(assert (=> b!3018849 (= c!497773 (is-Star!9408 r!17423))))

(declare-fun e!1894522 () Bool)

(declare-fun call!204215 () Bool)

(assert (=> b!3018850 (= e!1894522 call!204215)))

(declare-fun bm!204210 () Bool)

(assert (=> bm!204210 (= call!204215 (Exists!1676 (ite c!497773 lambda!112899 lambda!112900)))))

(declare-fun b!3018851 () Bool)

(declare-fun c!497770 () Bool)

(assert (=> b!3018851 (= c!497770 (is-Union!9408 r!17423))))

(assert (=> b!3018851 (= e!1894519 e!1894518)))

(declare-fun b!3018852 () Bool)

(declare-fun c!497772 () Bool)

(assert (=> b!3018852 (= c!497772 (is-ElementMatch!9408 r!17423))))

(declare-fun e!1894521 () Bool)

(assert (=> b!3018852 (= e!1894521 e!1894519)))

(declare-fun b!3018853 () Bool)

(declare-fun e!1894516 () Bool)

(assert (=> b!3018853 (= e!1894516 (matchRSpec!1545 (regTwo!19329 r!17423) s!11993))))

(declare-fun bm!204211 () Bool)

(declare-fun call!204216 () Bool)

(assert (=> bm!204211 (= call!204216 (isEmpty!19443 s!11993))))

(assert (=> b!3018854 (= e!1894517 call!204215)))

(declare-fun b!3018855 () Bool)

(assert (=> b!3018855 (= e!1894520 call!204216)))

(declare-fun b!3018856 () Bool)

(assert (=> b!3018856 (= e!1894518 e!1894516)))

(declare-fun res!1243262 () Bool)

(assert (=> b!3018856 (= res!1243262 (matchRSpec!1545 (regOne!19329 r!17423) s!11993))))

(assert (=> b!3018856 (=> res!1243262 e!1894516)))

(declare-fun b!3018857 () Bool)

(assert (=> b!3018857 (= e!1894520 e!1894521)))

(declare-fun res!1243263 () Bool)

(assert (=> b!3018857 (= res!1243263 (not (is-EmptyLang!9408 r!17423)))))

(assert (=> b!3018857 (=> (not res!1243263) (not e!1894521))))

(declare-fun b!3018858 () Bool)

(declare-fun res!1243261 () Bool)

(assert (=> b!3018858 (=> res!1243261 e!1894522)))

(assert (=> b!3018858 (= res!1243261 call!204216)))

(assert (=> b!3018858 (= e!1894517 e!1894522)))

(assert (= (and d!849004 c!497771) b!3018855))

(assert (= (and d!849004 (not c!497771)) b!3018857))

(assert (= (and b!3018857 res!1243263) b!3018852))

(assert (= (and b!3018852 c!497772) b!3018848))

(assert (= (and b!3018852 (not c!497772)) b!3018851))

(assert (= (and b!3018851 c!497770) b!3018856))

(assert (= (and b!3018851 (not c!497770)) b!3018849))

(assert (= (and b!3018856 (not res!1243262)) b!3018853))

(assert (= (and b!3018849 c!497773) b!3018858))

(assert (= (and b!3018849 (not c!497773)) b!3018854))

(assert (= (and b!3018858 (not res!1243261)) b!3018850))

(assert (= (or b!3018850 b!3018854) bm!204210))

(assert (= (or b!3018855 b!3018858) bm!204211))

(declare-fun m!3361349 () Bool)

(assert (=> bm!204210 m!3361349))

(declare-fun m!3361351 () Bool)

(assert (=> b!3018853 m!3361351))

(assert (=> bm!204211 m!3361293))

(declare-fun m!3361353 () Bool)

(assert (=> b!3018856 m!3361353))

(assert (=> b!3018765 d!849004))

(declare-fun d!849008 () Bool)

(declare-fun e!1894543 () Bool)

(assert (=> d!849008 e!1894543))

(declare-fun c!497781 () Bool)

(assert (=> d!849008 (= c!497781 (is-EmptyExpr!9408 r!17423))))

(declare-fun lt!1044591 () Bool)

(declare-fun e!1894540 () Bool)

(assert (=> d!849008 (= lt!1044591 e!1894540)))

(declare-fun c!497782 () Bool)

(assert (=> d!849008 (= c!497782 (isEmpty!19443 s!11993))))

(assert (=> d!849008 (validRegex!4141 r!17423)))

(assert (=> d!849008 (= (matchR!4290 r!17423 s!11993) lt!1044591)))

(declare-fun b!3018887 () Bool)

(declare-fun res!1243282 () Bool)

(declare-fun e!1894539 () Bool)

(assert (=> b!3018887 (=> (not res!1243282) (not e!1894539))))

(declare-fun tail!4942 (List!35273) List!35273)

(assert (=> b!3018887 (= res!1243282 (isEmpty!19443 (tail!4942 s!11993)))))

(declare-fun bm!204214 () Bool)

(declare-fun call!204219 () Bool)

(assert (=> bm!204214 (= call!204219 (isEmpty!19443 s!11993))))

(declare-fun b!3018888 () Bool)

(declare-fun nullable!3060 (Regex!9408) Bool)

(assert (=> b!3018888 (= e!1894540 (nullable!3060 r!17423))))

(declare-fun b!3018889 () Bool)

(assert (=> b!3018889 (= e!1894543 (= lt!1044591 call!204219))))

(declare-fun b!3018890 () Bool)

(declare-fun e!1894537 () Bool)

(assert (=> b!3018890 (= e!1894543 e!1894537)))

(declare-fun c!497780 () Bool)

(assert (=> b!3018890 (= c!497780 (is-EmptyLang!9408 r!17423))))

(declare-fun b!3018891 () Bool)

(declare-fun e!1894542 () Bool)

(declare-fun head!6716 (List!35273) C!19002)

(assert (=> b!3018891 (= e!1894542 (not (= (head!6716 s!11993) (c!497760 r!17423))))))

(declare-fun b!3018892 () Bool)

(declare-fun res!1243286 () Bool)

(assert (=> b!3018892 (=> (not res!1243286) (not e!1894539))))

(assert (=> b!3018892 (= res!1243286 (not call!204219))))

(declare-fun b!3018893 () Bool)

(declare-fun derivativeStep!2657 (Regex!9408 C!19002) Regex!9408)

(assert (=> b!3018893 (= e!1894540 (matchR!4290 (derivativeStep!2657 r!17423 (head!6716 s!11993)) (tail!4942 s!11993)))))

(declare-fun b!3018894 () Bool)

(declare-fun e!1894541 () Bool)

(assert (=> b!3018894 (= e!1894541 e!1894542)))

(declare-fun res!1243281 () Bool)

(assert (=> b!3018894 (=> res!1243281 e!1894542)))

(assert (=> b!3018894 (= res!1243281 call!204219)))

(declare-fun b!3018895 () Bool)

(declare-fun res!1243285 () Bool)

(declare-fun e!1894538 () Bool)

(assert (=> b!3018895 (=> res!1243285 e!1894538)))

(assert (=> b!3018895 (= res!1243285 (not (is-ElementMatch!9408 r!17423)))))

(assert (=> b!3018895 (= e!1894537 e!1894538)))

(declare-fun b!3018896 () Bool)

(assert (=> b!3018896 (= e!1894538 e!1894541)))

(declare-fun res!1243280 () Bool)

(assert (=> b!3018896 (=> (not res!1243280) (not e!1894541))))

(assert (=> b!3018896 (= res!1243280 (not lt!1044591))))

(declare-fun b!3018897 () Bool)

(declare-fun res!1243283 () Bool)

(assert (=> b!3018897 (=> res!1243283 e!1894538)))

(assert (=> b!3018897 (= res!1243283 e!1894539)))

(declare-fun res!1243287 () Bool)

(assert (=> b!3018897 (=> (not res!1243287) (not e!1894539))))

(assert (=> b!3018897 (= res!1243287 lt!1044591)))

(declare-fun b!3018898 () Bool)

(assert (=> b!3018898 (= e!1894537 (not lt!1044591))))

(declare-fun b!3018899 () Bool)

(declare-fun res!1243284 () Bool)

(assert (=> b!3018899 (=> res!1243284 e!1894542)))

(assert (=> b!3018899 (= res!1243284 (not (isEmpty!19443 (tail!4942 s!11993))))))

(declare-fun b!3018900 () Bool)

(assert (=> b!3018900 (= e!1894539 (= (head!6716 s!11993) (c!497760 r!17423)))))

(assert (= (and d!849008 c!497782) b!3018888))

(assert (= (and d!849008 (not c!497782)) b!3018893))

(assert (= (and d!849008 c!497781) b!3018889))

(assert (= (and d!849008 (not c!497781)) b!3018890))

(assert (= (and b!3018890 c!497780) b!3018898))

(assert (= (and b!3018890 (not c!497780)) b!3018895))

(assert (= (and b!3018895 (not res!1243285)) b!3018897))

(assert (= (and b!3018897 res!1243287) b!3018892))

(assert (= (and b!3018892 res!1243286) b!3018887))

(assert (= (and b!3018887 res!1243282) b!3018900))

(assert (= (and b!3018897 (not res!1243283)) b!3018896))

(assert (= (and b!3018896 res!1243280) b!3018894))

(assert (= (and b!3018894 (not res!1243281)) b!3018899))

(assert (= (and b!3018899 (not res!1243284)) b!3018891))

(assert (= (or b!3018889 b!3018892 b!3018894) bm!204214))

(declare-fun m!3361355 () Bool)

(assert (=> b!3018891 m!3361355))

(assert (=> d!849008 m!3361293))

(assert (=> d!849008 m!3361295))

(declare-fun m!3361357 () Bool)

(assert (=> b!3018899 m!3361357))

(assert (=> b!3018899 m!3361357))

(declare-fun m!3361359 () Bool)

(assert (=> b!3018899 m!3361359))

(declare-fun m!3361361 () Bool)

(assert (=> b!3018888 m!3361361))

(assert (=> b!3018893 m!3361355))

(assert (=> b!3018893 m!3361355))

(declare-fun m!3361363 () Bool)

(assert (=> b!3018893 m!3361363))

(assert (=> b!3018893 m!3361357))

(assert (=> b!3018893 m!3361363))

(assert (=> b!3018893 m!3361357))

(declare-fun m!3361365 () Bool)

(assert (=> b!3018893 m!3361365))

(assert (=> b!3018900 m!3361355))

(assert (=> b!3018887 m!3361357))

(assert (=> b!3018887 m!3361357))

(assert (=> b!3018887 m!3361359))

(assert (=> bm!204214 m!3361293))

(assert (=> b!3018765 d!849008))

(declare-fun d!849010 () Bool)

(assert (=> d!849010 (= (matchR!4290 r!17423 s!11993) (matchRSpec!1545 r!17423 s!11993))))

(declare-fun lt!1044596 () Unit!49239)

(declare-fun choose!17910 (Regex!9408 List!35273) Unit!49239)

(assert (=> d!849010 (= lt!1044596 (choose!17910 r!17423 s!11993))))

(assert (=> d!849010 (validRegex!4141 r!17423)))

(assert (=> d!849010 (= (mainMatchTheorem!1545 r!17423 s!11993) lt!1044596)))

(declare-fun bs!530105 () Bool)

(assert (= bs!530105 d!849010))

(assert (=> bs!530105 m!3361281))

(assert (=> bs!530105 m!3361279))

(declare-fun m!3361367 () Bool)

(assert (=> bs!530105 m!3361367))

(assert (=> bs!530105 m!3361295))

(assert (=> b!3018765 d!849010))

(declare-fun bm!204223 () Bool)

(declare-fun call!204229 () Bool)

(declare-fun call!204228 () Bool)

(assert (=> bm!204223 (= call!204229 call!204228)))

(declare-fun b!3018947 () Bool)

(declare-fun e!1894578 () Bool)

(declare-fun e!1894577 () Bool)

(assert (=> b!3018947 (= e!1894578 e!1894577)))

(declare-fun c!497793 () Bool)

(assert (=> b!3018947 (= c!497793 (is-Star!9408 (regTwo!19328 r!17423)))))

(declare-fun b!3018948 () Bool)

(declare-fun e!1894573 () Bool)

(assert (=> b!3018948 (= e!1894577 e!1894573)))

(declare-fun c!497794 () Bool)

(assert (=> b!3018948 (= c!497794 (is-Union!9408 (regTwo!19328 r!17423)))))

(declare-fun bm!204224 () Bool)

(declare-fun call!204230 () Bool)

(assert (=> bm!204224 (= call!204230 (validRegex!4141 (ite c!497794 (regTwo!19329 (regTwo!19328 r!17423)) (regOne!19328 (regTwo!19328 r!17423)))))))

(declare-fun b!3018949 () Bool)

(declare-fun res!1243317 () Bool)

(declare-fun e!1894572 () Bool)

(assert (=> b!3018949 (=> res!1243317 e!1894572)))

(assert (=> b!3018949 (= res!1243317 (not (is-Concat!14729 (regTwo!19328 r!17423))))))

(assert (=> b!3018949 (= e!1894573 e!1894572)))

(declare-fun b!3018950 () Bool)

(declare-fun e!1894576 () Bool)

(assert (=> b!3018950 (= e!1894576 call!204229)))

(declare-fun b!3018951 () Bool)

(assert (=> b!3018951 (= e!1894572 e!1894576)))

(declare-fun res!1243314 () Bool)

(assert (=> b!3018951 (=> (not res!1243314) (not e!1894576))))

(assert (=> b!3018951 (= res!1243314 call!204230)))

(declare-fun d!849012 () Bool)

(declare-fun res!1243318 () Bool)

(assert (=> d!849012 (=> res!1243318 e!1894578)))

(assert (=> d!849012 (= res!1243318 (is-ElementMatch!9408 (regTwo!19328 r!17423)))))

(assert (=> d!849012 (= (validRegex!4141 (regTwo!19328 r!17423)) e!1894578)))

(declare-fun bm!204225 () Bool)

(assert (=> bm!204225 (= call!204228 (validRegex!4141 (ite c!497793 (reg!9737 (regTwo!19328 r!17423)) (ite c!497794 (regOne!19329 (regTwo!19328 r!17423)) (regTwo!19328 (regTwo!19328 r!17423))))))))

(declare-fun b!3018952 () Bool)

(declare-fun e!1894574 () Bool)

(assert (=> b!3018952 (= e!1894574 call!204228)))

(declare-fun b!3018953 () Bool)

(declare-fun res!1243316 () Bool)

(declare-fun e!1894575 () Bool)

(assert (=> b!3018953 (=> (not res!1243316) (not e!1894575))))

(assert (=> b!3018953 (= res!1243316 call!204229)))

(assert (=> b!3018953 (= e!1894573 e!1894575)))

(declare-fun b!3018954 () Bool)

(assert (=> b!3018954 (= e!1894575 call!204230)))

(declare-fun b!3018955 () Bool)

(assert (=> b!3018955 (= e!1894577 e!1894574)))

(declare-fun res!1243315 () Bool)

(assert (=> b!3018955 (= res!1243315 (not (nullable!3060 (reg!9737 (regTwo!19328 r!17423)))))))

(assert (=> b!3018955 (=> (not res!1243315) (not e!1894574))))

(assert (= (and d!849012 (not res!1243318)) b!3018947))

(assert (= (and b!3018947 c!497793) b!3018955))

(assert (= (and b!3018947 (not c!497793)) b!3018948))

(assert (= (and b!3018955 res!1243315) b!3018952))

(assert (= (and b!3018948 c!497794) b!3018953))

(assert (= (and b!3018948 (not c!497794)) b!3018949))

(assert (= (and b!3018953 res!1243316) b!3018954))

(assert (= (and b!3018949 (not res!1243317)) b!3018951))

(assert (= (and b!3018951 res!1243314) b!3018950))

(assert (= (or b!3018953 b!3018950) bm!204223))

(assert (= (or b!3018954 b!3018951) bm!204224))

(assert (= (or b!3018952 bm!204223) bm!204225))

(declare-fun m!3361369 () Bool)

(assert (=> bm!204224 m!3361369))

(declare-fun m!3361371 () Bool)

(assert (=> bm!204225 m!3361371))

(declare-fun m!3361373 () Bool)

(assert (=> b!3018955 m!3361373))

(assert (=> b!3018760 d!849012))

(declare-fun d!849014 () Bool)

(declare-fun e!1894585 () Bool)

(assert (=> d!849014 e!1894585))

(declare-fun c!497796 () Bool)

(assert (=> d!849014 (= c!497796 (is-EmptyExpr!9408 (simplify!387 (regOne!19328 r!17423))))))

(declare-fun lt!1044597 () Bool)

(declare-fun e!1894582 () Bool)

(assert (=> d!849014 (= lt!1044597 e!1894582)))

(declare-fun c!497797 () Bool)

(assert (=> d!849014 (= c!497797 (isEmpty!19443 (_1!20181 lt!1044561)))))

(assert (=> d!849014 (validRegex!4141 (simplify!387 (regOne!19328 r!17423)))))

(assert (=> d!849014 (= (matchR!4290 (simplify!387 (regOne!19328 r!17423)) (_1!20181 lt!1044561)) lt!1044597)))

(declare-fun b!3018956 () Bool)

(declare-fun res!1243321 () Bool)

(declare-fun e!1894581 () Bool)

(assert (=> b!3018956 (=> (not res!1243321) (not e!1894581))))

(assert (=> b!3018956 (= res!1243321 (isEmpty!19443 (tail!4942 (_1!20181 lt!1044561))))))

(declare-fun bm!204226 () Bool)

(declare-fun call!204231 () Bool)

(assert (=> bm!204226 (= call!204231 (isEmpty!19443 (_1!20181 lt!1044561)))))

(declare-fun b!3018957 () Bool)

(assert (=> b!3018957 (= e!1894582 (nullable!3060 (simplify!387 (regOne!19328 r!17423))))))

(declare-fun b!3018958 () Bool)

(assert (=> b!3018958 (= e!1894585 (= lt!1044597 call!204231))))

(declare-fun b!3018959 () Bool)

(declare-fun e!1894579 () Bool)

(assert (=> b!3018959 (= e!1894585 e!1894579)))

(declare-fun c!497795 () Bool)

(assert (=> b!3018959 (= c!497795 (is-EmptyLang!9408 (simplify!387 (regOne!19328 r!17423))))))

(declare-fun b!3018960 () Bool)

(declare-fun e!1894584 () Bool)

(assert (=> b!3018960 (= e!1894584 (not (= (head!6716 (_1!20181 lt!1044561)) (c!497760 (simplify!387 (regOne!19328 r!17423))))))))

(declare-fun b!3018961 () Bool)

(declare-fun res!1243325 () Bool)

(assert (=> b!3018961 (=> (not res!1243325) (not e!1894581))))

(assert (=> b!3018961 (= res!1243325 (not call!204231))))

(declare-fun b!3018962 () Bool)

(assert (=> b!3018962 (= e!1894582 (matchR!4290 (derivativeStep!2657 (simplify!387 (regOne!19328 r!17423)) (head!6716 (_1!20181 lt!1044561))) (tail!4942 (_1!20181 lt!1044561))))))

(declare-fun b!3018963 () Bool)

(declare-fun e!1894583 () Bool)

(assert (=> b!3018963 (= e!1894583 e!1894584)))

(declare-fun res!1243320 () Bool)

(assert (=> b!3018963 (=> res!1243320 e!1894584)))

(assert (=> b!3018963 (= res!1243320 call!204231)))

(declare-fun b!3018964 () Bool)

(declare-fun res!1243324 () Bool)

(declare-fun e!1894580 () Bool)

(assert (=> b!3018964 (=> res!1243324 e!1894580)))

(assert (=> b!3018964 (= res!1243324 (not (is-ElementMatch!9408 (simplify!387 (regOne!19328 r!17423)))))))

(assert (=> b!3018964 (= e!1894579 e!1894580)))

(declare-fun b!3018965 () Bool)

(assert (=> b!3018965 (= e!1894580 e!1894583)))

(declare-fun res!1243319 () Bool)

(assert (=> b!3018965 (=> (not res!1243319) (not e!1894583))))

(assert (=> b!3018965 (= res!1243319 (not lt!1044597))))

(declare-fun b!3018966 () Bool)

(declare-fun res!1243322 () Bool)

(assert (=> b!3018966 (=> res!1243322 e!1894580)))

(assert (=> b!3018966 (= res!1243322 e!1894581)))

(declare-fun res!1243326 () Bool)

(assert (=> b!3018966 (=> (not res!1243326) (not e!1894581))))

(assert (=> b!3018966 (= res!1243326 lt!1044597)))

(declare-fun b!3018967 () Bool)

(assert (=> b!3018967 (= e!1894579 (not lt!1044597))))

(declare-fun b!3018968 () Bool)

(declare-fun res!1243323 () Bool)

(assert (=> b!3018968 (=> res!1243323 e!1894584)))

(assert (=> b!3018968 (= res!1243323 (not (isEmpty!19443 (tail!4942 (_1!20181 lt!1044561)))))))

(declare-fun b!3018969 () Bool)

(assert (=> b!3018969 (= e!1894581 (= (head!6716 (_1!20181 lt!1044561)) (c!497760 (simplify!387 (regOne!19328 r!17423)))))))

(assert (= (and d!849014 c!497797) b!3018957))

(assert (= (and d!849014 (not c!497797)) b!3018962))

(assert (= (and d!849014 c!497796) b!3018958))

(assert (= (and d!849014 (not c!497796)) b!3018959))

(assert (= (and b!3018959 c!497795) b!3018967))

(assert (= (and b!3018959 (not c!497795)) b!3018964))

(assert (= (and b!3018964 (not res!1243324)) b!3018966))

(assert (= (and b!3018966 res!1243326) b!3018961))

(assert (= (and b!3018961 res!1243325) b!3018956))

(assert (= (and b!3018956 res!1243321) b!3018969))

(assert (= (and b!3018966 (not res!1243322)) b!3018965))

(assert (= (and b!3018965 res!1243319) b!3018963))

(assert (= (and b!3018963 (not res!1243320)) b!3018968))

(assert (= (and b!3018968 (not res!1243323)) b!3018960))

(assert (= (or b!3018958 b!3018961 b!3018963) bm!204226))

(declare-fun m!3361375 () Bool)

(assert (=> b!3018960 m!3361375))

(declare-fun m!3361377 () Bool)

(assert (=> d!849014 m!3361377))

(assert (=> d!849014 m!3361287))

(declare-fun m!3361379 () Bool)

(assert (=> d!849014 m!3361379))

(declare-fun m!3361381 () Bool)

(assert (=> b!3018968 m!3361381))

(assert (=> b!3018968 m!3361381))

(declare-fun m!3361383 () Bool)

(assert (=> b!3018968 m!3361383))

(assert (=> b!3018957 m!3361287))

(declare-fun m!3361385 () Bool)

(assert (=> b!3018957 m!3361385))

(assert (=> b!3018962 m!3361375))

(assert (=> b!3018962 m!3361287))

(assert (=> b!3018962 m!3361375))

(declare-fun m!3361387 () Bool)

(assert (=> b!3018962 m!3361387))

(assert (=> b!3018962 m!3361381))

(assert (=> b!3018962 m!3361387))

(assert (=> b!3018962 m!3361381))

(declare-fun m!3361389 () Bool)

(assert (=> b!3018962 m!3361389))

(assert (=> b!3018969 m!3361375))

(assert (=> b!3018956 m!3361381))

(assert (=> b!3018956 m!3361381))

(assert (=> b!3018956 m!3361383))

(assert (=> bm!204226 m!3361377))

(assert (=> b!3018760 d!849014))

(declare-fun b!3019034 () Bool)

(declare-fun e!1894624 () Regex!9408)

(declare-fun lt!1044613 () Regex!9408)

(assert (=> b!3019034 (= e!1894624 lt!1044613)))

(declare-fun b!3019035 () Bool)

(declare-fun e!1894634 () Regex!9408)

(assert (=> b!3019035 (= e!1894634 (regOne!19328 r!17423))))

(declare-fun c!497828 () Bool)

(declare-fun call!204249 () Regex!9408)

(declare-fun bm!204242 () Bool)

(declare-fun c!497823 () Bool)

(assert (=> bm!204242 (= call!204249 (simplify!387 (ite c!497823 (reg!9737 (regOne!19328 r!17423)) (ite c!497828 (regOne!19329 (regOne!19328 r!17423)) (regTwo!19328 (regOne!19328 r!17423))))))))

(declare-fun b!3019036 () Bool)

(declare-fun c!497831 () Bool)

(declare-fun lt!1044618 () Regex!9408)

(declare-fun isEmptyExpr!491 (Regex!9408) Bool)

(assert (=> b!3019036 (= c!497831 (isEmptyExpr!491 lt!1044618))))

(declare-fun e!1894630 () Regex!9408)

(declare-fun e!1894632 () Regex!9408)

(assert (=> b!3019036 (= e!1894630 e!1894632)))

(declare-fun b!3019037 () Bool)

(declare-fun e!1894623 () Regex!9408)

(assert (=> b!3019037 (= e!1894623 e!1894630)))

(declare-fun call!204248 () Regex!9408)

(assert (=> b!3019037 (= lt!1044618 call!204248)))

(declare-fun lt!1044616 () Regex!9408)

(declare-fun call!204252 () Regex!9408)

(assert (=> b!3019037 (= lt!1044616 call!204252)))

(declare-fun res!1243343 () Bool)

(declare-fun call!204253 () Bool)

(assert (=> b!3019037 (= res!1243343 call!204253)))

(declare-fun e!1894621 () Bool)

(assert (=> b!3019037 (=> res!1243343 e!1894621)))

(declare-fun c!497826 () Bool)

(assert (=> b!3019037 (= c!497826 e!1894621)))

(declare-fun b!3019038 () Bool)

(declare-fun e!1894633 () Bool)

(declare-fun lt!1044615 () Regex!9408)

(assert (=> b!3019038 (= e!1894633 (= (nullable!3060 lt!1044615) (nullable!3060 (regOne!19328 r!17423))))))

(declare-fun bm!204243 () Bool)

(assert (=> bm!204243 (= call!204248 (simplify!387 (ite c!497828 (regTwo!19329 (regOne!19328 r!17423)) (regOne!19328 (regOne!19328 r!17423)))))))

(declare-fun call!204247 () Bool)

(declare-fun lt!1044617 () Regex!9408)

(declare-fun bm!204244 () Bool)

(assert (=> bm!204244 (= call!204247 (isEmptyExpr!491 (ite c!497823 lt!1044617 lt!1044616)))))

(declare-fun b!3019039 () Bool)

(declare-fun c!497824 () Bool)

(declare-fun e!1894622 () Bool)

(assert (=> b!3019039 (= c!497824 e!1894622)))

(declare-fun res!1243341 () Bool)

(assert (=> b!3019039 (=> res!1243341 e!1894622)))

(declare-fun call!204251 () Bool)

(assert (=> b!3019039 (= res!1243341 call!204251)))

(assert (=> b!3019039 (= lt!1044617 call!204249)))

(declare-fun e!1894631 () Regex!9408)

(declare-fun e!1894629 () Regex!9408)

(assert (=> b!3019039 (= e!1894631 e!1894629)))

(declare-fun bm!204245 () Bool)

(assert (=> bm!204245 (= call!204252 call!204249)))

(declare-fun b!3019040 () Bool)

(declare-fun c!497833 () Bool)

(assert (=> b!3019040 (= c!497833 (is-EmptyExpr!9408 (regOne!19328 r!17423)))))

(declare-fun e!1894628 () Regex!9408)

(assert (=> b!3019040 (= e!1894634 e!1894628)))

(declare-fun lt!1044614 () Regex!9408)

(declare-fun call!204250 () Bool)

(declare-fun bm!204246 () Bool)

(declare-fun isEmptyLang!485 (Regex!9408) Bool)

(assert (=> bm!204246 (= call!204250 (isEmptyLang!485 (ite c!497828 lt!1044614 lt!1044616)))))

(declare-fun b!3019041 () Bool)

(assert (=> b!3019041 (= e!1894632 lt!1044616)))

(declare-fun b!3019042 () Bool)

(declare-fun e!1894627 () Regex!9408)

(assert (=> b!3019042 (= e!1894627 (Concat!14729 lt!1044618 lt!1044616))))

(declare-fun b!3019043 () Bool)

(assert (=> b!3019043 (= e!1894621 call!204250)))

(declare-fun bm!204247 () Bool)

(assert (=> bm!204247 (= call!204253 call!204251)))

(declare-fun b!3019044 () Bool)

(assert (=> b!3019044 (= e!1894632 e!1894627)))

(declare-fun c!497829 () Bool)

(assert (=> b!3019044 (= c!497829 call!204247)))

(declare-fun b!3019045 () Bool)

(assert (=> b!3019045 (= e!1894622 call!204247)))

(declare-fun b!3019046 () Bool)

(declare-fun e!1894626 () Regex!9408)

(assert (=> b!3019046 (= e!1894626 lt!1044614)))

(declare-fun b!3019047 () Bool)

(assert (=> b!3019047 (= e!1894628 e!1894631)))

(assert (=> b!3019047 (= c!497823 (is-Star!9408 (regOne!19328 r!17423)))))

(declare-fun bm!204248 () Bool)

(assert (=> bm!204248 (= call!204251 (isEmptyLang!485 (ite c!497823 lt!1044617 (ite c!497828 lt!1044613 lt!1044618))))))

(declare-fun b!3019048 () Bool)

(assert (=> b!3019048 (= e!1894629 EmptyExpr!9408)))

(declare-fun b!3019049 () Bool)

(assert (=> b!3019049 (= e!1894627 lt!1044618)))

(declare-fun b!3019050 () Bool)

(declare-fun c!497830 () Bool)

(assert (=> b!3019050 (= c!497830 call!204253)))

(assert (=> b!3019050 (= e!1894624 e!1894626)))

(declare-fun b!3019051 () Bool)

(assert (=> b!3019051 (= e!1894630 EmptyLang!9408)))

(declare-fun b!3019052 () Bool)

(declare-fun e!1894625 () Regex!9408)

(assert (=> b!3019052 (= e!1894625 EmptyLang!9408)))

(declare-fun b!3019053 () Bool)

(assert (=> b!3019053 (= e!1894629 (Star!9408 lt!1044617))))

(declare-fun b!3019054 () Bool)

(assert (=> b!3019054 (= e!1894625 e!1894634)))

(declare-fun c!497825 () Bool)

(assert (=> b!3019054 (= c!497825 (is-ElementMatch!9408 (regOne!19328 r!17423)))))

(declare-fun b!3019055 () Bool)

(assert (=> b!3019055 (= c!497828 (is-Union!9408 (regOne!19328 r!17423)))))

(assert (=> b!3019055 (= e!1894631 e!1894623)))

(declare-fun d!849016 () Bool)

(assert (=> d!849016 e!1894633))

(declare-fun res!1243342 () Bool)

(assert (=> d!849016 (=> (not res!1243342) (not e!1894633))))

(assert (=> d!849016 (= res!1243342 (validRegex!4141 lt!1044615))))

(assert (=> d!849016 (= lt!1044615 e!1894625)))

(declare-fun c!497827 () Bool)

(assert (=> d!849016 (= c!497827 (is-EmptyLang!9408 (regOne!19328 r!17423)))))

(assert (=> d!849016 (validRegex!4141 (regOne!19328 r!17423))))

(assert (=> d!849016 (= (simplify!387 (regOne!19328 r!17423)) lt!1044615)))

(declare-fun b!3019056 () Bool)

(assert (=> b!3019056 (= e!1894628 EmptyExpr!9408)))

(declare-fun b!3019057 () Bool)

(assert (=> b!3019057 (= e!1894623 e!1894624)))

(assert (=> b!3019057 (= lt!1044614 call!204252)))

(assert (=> b!3019057 (= lt!1044613 call!204248)))

(declare-fun c!497832 () Bool)

(assert (=> b!3019057 (= c!497832 call!204250)))

(declare-fun b!3019058 () Bool)

(assert (=> b!3019058 (= e!1894626 (Union!9408 lt!1044614 lt!1044613))))

(assert (= (and d!849016 c!497827) b!3019052))

(assert (= (and d!849016 (not c!497827)) b!3019054))

(assert (= (and b!3019054 c!497825) b!3019035))

(assert (= (and b!3019054 (not c!497825)) b!3019040))

(assert (= (and b!3019040 c!497833) b!3019056))

(assert (= (and b!3019040 (not c!497833)) b!3019047))

(assert (= (and b!3019047 c!497823) b!3019039))

(assert (= (and b!3019047 (not c!497823)) b!3019055))

(assert (= (and b!3019039 (not res!1243341)) b!3019045))

(assert (= (and b!3019039 c!497824) b!3019048))

(assert (= (and b!3019039 (not c!497824)) b!3019053))

(assert (= (and b!3019055 c!497828) b!3019057))

(assert (= (and b!3019055 (not c!497828)) b!3019037))

(assert (= (and b!3019057 c!497832) b!3019034))

(assert (= (and b!3019057 (not c!497832)) b!3019050))

(assert (= (and b!3019050 c!497830) b!3019046))

(assert (= (and b!3019050 (not c!497830)) b!3019058))

(assert (= (and b!3019037 (not res!1243343)) b!3019043))

(assert (= (and b!3019037 c!497826) b!3019051))

(assert (= (and b!3019037 (not c!497826)) b!3019036))

(assert (= (and b!3019036 c!497831) b!3019041))

(assert (= (and b!3019036 (not c!497831)) b!3019044))

(assert (= (and b!3019044 c!497829) b!3019049))

(assert (= (and b!3019044 (not c!497829)) b!3019042))

(assert (= (or b!3019057 b!3019037) bm!204245))

(assert (= (or b!3019057 b!3019037) bm!204243))

(assert (= (or b!3019050 b!3019037) bm!204247))

(assert (= (or b!3019057 b!3019043) bm!204246))

(assert (= (or b!3019045 b!3019044) bm!204244))

(assert (= (or b!3019039 bm!204245) bm!204242))

(assert (= (or b!3019039 bm!204247) bm!204248))

(assert (= (and d!849016 res!1243342) b!3019038))

(declare-fun m!3361409 () Bool)

(assert (=> bm!204246 m!3361409))

(declare-fun m!3361411 () Bool)

(assert (=> b!3019036 m!3361411))

(declare-fun m!3361413 () Bool)

(assert (=> bm!204243 m!3361413))

(declare-fun m!3361415 () Bool)

(assert (=> b!3019038 m!3361415))

(declare-fun m!3361417 () Bool)

(assert (=> b!3019038 m!3361417))

(declare-fun m!3361419 () Bool)

(assert (=> bm!204244 m!3361419))

(declare-fun m!3361421 () Bool)

(assert (=> bm!204248 m!3361421))

(declare-fun m!3361423 () Bool)

(assert (=> bm!204242 m!3361423))

(declare-fun m!3361425 () Bool)

(assert (=> d!849016 m!3361425))

(declare-fun m!3361427 () Bool)

(assert (=> d!849016 m!3361427))

(assert (=> b!3018760 d!849016))

(declare-fun d!849024 () Bool)

(assert (=> d!849024 (= (matchR!4290 (regOne!19328 r!17423) (_1!20181 lt!1044561)) (matchR!4290 (simplify!387 (regOne!19328 r!17423)) (_1!20181 lt!1044561)))))

(declare-fun lt!1044621 () Unit!49239)

(declare-fun choose!17911 (Regex!9408 List!35273) Unit!49239)

(assert (=> d!849024 (= lt!1044621 (choose!17911 (regOne!19328 r!17423) (_1!20181 lt!1044561)))))

(assert (=> d!849024 (validRegex!4141 (regOne!19328 r!17423))))

(assert (=> d!849024 (= (lemmaSimplifySound!235 (regOne!19328 r!17423) (_1!20181 lt!1044561)) lt!1044621)))

(declare-fun bs!530108 () Bool)

(assert (= bs!530108 d!849024))

(declare-fun m!3361429 () Bool)

(assert (=> bs!530108 m!3361429))

(assert (=> bs!530108 m!3361287))

(assert (=> bs!530108 m!3361289))

(assert (=> bs!530108 m!3361287))

(assert (=> bs!530108 m!3361309))

(assert (=> bs!530108 m!3361427))

(assert (=> b!3018760 d!849024))

(declare-fun bm!204249 () Bool)

(declare-fun call!204255 () Bool)

(declare-fun call!204254 () Bool)

(assert (=> bm!204249 (= call!204255 call!204254)))

(declare-fun b!3019063 () Bool)

(declare-fun e!1894643 () Bool)

(declare-fun e!1894642 () Bool)

(assert (=> b!3019063 (= e!1894643 e!1894642)))

(declare-fun c!497834 () Bool)

(assert (=> b!3019063 (= c!497834 (is-Star!9408 r!17423))))

(declare-fun b!3019064 () Bool)

(declare-fun e!1894638 () Bool)

(assert (=> b!3019064 (= e!1894642 e!1894638)))

(declare-fun c!497835 () Bool)

(assert (=> b!3019064 (= c!497835 (is-Union!9408 r!17423))))

(declare-fun bm!204250 () Bool)

(declare-fun call!204256 () Bool)

(assert (=> bm!204250 (= call!204256 (validRegex!4141 (ite c!497835 (regTwo!19329 r!17423) (regOne!19328 r!17423))))))

(declare-fun b!3019065 () Bool)

(declare-fun res!1243351 () Bool)

(declare-fun e!1894637 () Bool)

(assert (=> b!3019065 (=> res!1243351 e!1894637)))

(assert (=> b!3019065 (= res!1243351 (not (is-Concat!14729 r!17423)))))

(assert (=> b!3019065 (= e!1894638 e!1894637)))

(declare-fun b!3019066 () Bool)

(declare-fun e!1894641 () Bool)

(assert (=> b!3019066 (= e!1894641 call!204255)))

(declare-fun b!3019067 () Bool)

(assert (=> b!3019067 (= e!1894637 e!1894641)))

(declare-fun res!1243348 () Bool)

(assert (=> b!3019067 (=> (not res!1243348) (not e!1894641))))

(assert (=> b!3019067 (= res!1243348 call!204256)))

(declare-fun d!849026 () Bool)

(declare-fun res!1243352 () Bool)

(assert (=> d!849026 (=> res!1243352 e!1894643)))

(assert (=> d!849026 (= res!1243352 (is-ElementMatch!9408 r!17423))))

(assert (=> d!849026 (= (validRegex!4141 r!17423) e!1894643)))

(declare-fun bm!204251 () Bool)

(assert (=> bm!204251 (= call!204254 (validRegex!4141 (ite c!497834 (reg!9737 r!17423) (ite c!497835 (regOne!19329 r!17423) (regTwo!19328 r!17423)))))))

(declare-fun b!3019068 () Bool)

(declare-fun e!1894639 () Bool)

(assert (=> b!3019068 (= e!1894639 call!204254)))

(declare-fun b!3019069 () Bool)

(declare-fun res!1243350 () Bool)

(declare-fun e!1894640 () Bool)

(assert (=> b!3019069 (=> (not res!1243350) (not e!1894640))))

(assert (=> b!3019069 (= res!1243350 call!204255)))

(assert (=> b!3019069 (= e!1894638 e!1894640)))

(declare-fun b!3019070 () Bool)

(assert (=> b!3019070 (= e!1894640 call!204256)))

(declare-fun b!3019071 () Bool)

(assert (=> b!3019071 (= e!1894642 e!1894639)))

(declare-fun res!1243349 () Bool)

(assert (=> b!3019071 (= res!1243349 (not (nullable!3060 (reg!9737 r!17423))))))

(assert (=> b!3019071 (=> (not res!1243349) (not e!1894639))))

(assert (= (and d!849026 (not res!1243352)) b!3019063))

(assert (= (and b!3019063 c!497834) b!3019071))

(assert (= (and b!3019063 (not c!497834)) b!3019064))

(assert (= (and b!3019071 res!1243349) b!3019068))

(assert (= (and b!3019064 c!497835) b!3019069))

(assert (= (and b!3019064 (not c!497835)) b!3019065))

(assert (= (and b!3019069 res!1243350) b!3019070))

(assert (= (and b!3019065 (not res!1243351)) b!3019067))

(assert (= (and b!3019067 res!1243348) b!3019066))

(assert (= (or b!3019069 b!3019066) bm!204249))

(assert (= (or b!3019070 b!3019067) bm!204250))

(assert (= (or b!3019068 bm!204249) bm!204251))

(declare-fun m!3361431 () Bool)

(assert (=> bm!204250 m!3361431))

(declare-fun m!3361433 () Bool)

(assert (=> bm!204251 m!3361433))

(declare-fun m!3361435 () Bool)

(assert (=> b!3019071 m!3361435))

(assert (=> start!290298 d!849026))

(declare-fun d!849028 () Bool)

(declare-fun e!1894650 () Bool)

(assert (=> d!849028 e!1894650))

(declare-fun c!497837 () Bool)

(assert (=> d!849028 (= c!497837 (is-EmptyExpr!9408 (regOne!19328 r!17423)))))

(declare-fun lt!1044622 () Bool)

(declare-fun e!1894647 () Bool)

(assert (=> d!849028 (= lt!1044622 e!1894647)))

(declare-fun c!497838 () Bool)

(assert (=> d!849028 (= c!497838 (isEmpty!19443 (_1!20181 lt!1044561)))))

(assert (=> d!849028 (validRegex!4141 (regOne!19328 r!17423))))

(assert (=> d!849028 (= (matchR!4290 (regOne!19328 r!17423) (_1!20181 lt!1044561)) lt!1044622)))

(declare-fun b!3019072 () Bool)

(declare-fun res!1243355 () Bool)

(declare-fun e!1894646 () Bool)

(assert (=> b!3019072 (=> (not res!1243355) (not e!1894646))))

(assert (=> b!3019072 (= res!1243355 (isEmpty!19443 (tail!4942 (_1!20181 lt!1044561))))))

(declare-fun bm!204252 () Bool)

(declare-fun call!204257 () Bool)

(assert (=> bm!204252 (= call!204257 (isEmpty!19443 (_1!20181 lt!1044561)))))

(declare-fun b!3019073 () Bool)

(assert (=> b!3019073 (= e!1894647 (nullable!3060 (regOne!19328 r!17423)))))

(declare-fun b!3019074 () Bool)

(assert (=> b!3019074 (= e!1894650 (= lt!1044622 call!204257))))

(declare-fun b!3019075 () Bool)

(declare-fun e!1894644 () Bool)

(assert (=> b!3019075 (= e!1894650 e!1894644)))

(declare-fun c!497836 () Bool)

(assert (=> b!3019075 (= c!497836 (is-EmptyLang!9408 (regOne!19328 r!17423)))))

(declare-fun b!3019076 () Bool)

(declare-fun e!1894649 () Bool)

(assert (=> b!3019076 (= e!1894649 (not (= (head!6716 (_1!20181 lt!1044561)) (c!497760 (regOne!19328 r!17423)))))))

(declare-fun b!3019077 () Bool)

(declare-fun res!1243359 () Bool)

(assert (=> b!3019077 (=> (not res!1243359) (not e!1894646))))

(assert (=> b!3019077 (= res!1243359 (not call!204257))))

(declare-fun b!3019078 () Bool)

(assert (=> b!3019078 (= e!1894647 (matchR!4290 (derivativeStep!2657 (regOne!19328 r!17423) (head!6716 (_1!20181 lt!1044561))) (tail!4942 (_1!20181 lt!1044561))))))

(declare-fun b!3019079 () Bool)

(declare-fun e!1894648 () Bool)

(assert (=> b!3019079 (= e!1894648 e!1894649)))

(declare-fun res!1243354 () Bool)

(assert (=> b!3019079 (=> res!1243354 e!1894649)))

(assert (=> b!3019079 (= res!1243354 call!204257)))

(declare-fun b!3019080 () Bool)

(declare-fun res!1243358 () Bool)

(declare-fun e!1894645 () Bool)

(assert (=> b!3019080 (=> res!1243358 e!1894645)))

(assert (=> b!3019080 (= res!1243358 (not (is-ElementMatch!9408 (regOne!19328 r!17423))))))

(assert (=> b!3019080 (= e!1894644 e!1894645)))

(declare-fun b!3019081 () Bool)

(assert (=> b!3019081 (= e!1894645 e!1894648)))

(declare-fun res!1243353 () Bool)

(assert (=> b!3019081 (=> (not res!1243353) (not e!1894648))))

(assert (=> b!3019081 (= res!1243353 (not lt!1044622))))

(declare-fun b!3019082 () Bool)

(declare-fun res!1243356 () Bool)

(assert (=> b!3019082 (=> res!1243356 e!1894645)))

(assert (=> b!3019082 (= res!1243356 e!1894646)))

(declare-fun res!1243360 () Bool)

(assert (=> b!3019082 (=> (not res!1243360) (not e!1894646))))

(assert (=> b!3019082 (= res!1243360 lt!1044622)))

(declare-fun b!3019083 () Bool)

(assert (=> b!3019083 (= e!1894644 (not lt!1044622))))

(declare-fun b!3019084 () Bool)

(declare-fun res!1243357 () Bool)

(assert (=> b!3019084 (=> res!1243357 e!1894649)))

(assert (=> b!3019084 (= res!1243357 (not (isEmpty!19443 (tail!4942 (_1!20181 lt!1044561)))))))

(declare-fun b!3019085 () Bool)

(assert (=> b!3019085 (= e!1894646 (= (head!6716 (_1!20181 lt!1044561)) (c!497760 (regOne!19328 r!17423))))))

(assert (= (and d!849028 c!497838) b!3019073))

(assert (= (and d!849028 (not c!497838)) b!3019078))

(assert (= (and d!849028 c!497837) b!3019074))

(assert (= (and d!849028 (not c!497837)) b!3019075))

(assert (= (and b!3019075 c!497836) b!3019083))

(assert (= (and b!3019075 (not c!497836)) b!3019080))

(assert (= (and b!3019080 (not res!1243358)) b!3019082))

(assert (= (and b!3019082 res!1243360) b!3019077))

(assert (= (and b!3019077 res!1243359) b!3019072))

(assert (= (and b!3019072 res!1243355) b!3019085))

(assert (= (and b!3019082 (not res!1243356)) b!3019081))

(assert (= (and b!3019081 res!1243353) b!3019079))

(assert (= (and b!3019079 (not res!1243354)) b!3019084))

(assert (= (and b!3019084 (not res!1243357)) b!3019076))

(assert (= (or b!3019074 b!3019077 b!3019079) bm!204252))

(assert (=> b!3019076 m!3361375))

(assert (=> d!849028 m!3361377))

(assert (=> d!849028 m!3361427))

(assert (=> b!3019084 m!3361381))

(assert (=> b!3019084 m!3361381))

(assert (=> b!3019084 m!3361383))

(assert (=> b!3019073 m!3361417))

(assert (=> b!3019078 m!3361375))

(assert (=> b!3019078 m!3361375))

(declare-fun m!3361437 () Bool)

(assert (=> b!3019078 m!3361437))

(assert (=> b!3019078 m!3361381))

(assert (=> b!3019078 m!3361437))

(assert (=> b!3019078 m!3361381))

(declare-fun m!3361439 () Bool)

(assert (=> b!3019078 m!3361439))

(assert (=> b!3019085 m!3361375))

(assert (=> b!3019072 m!3361381))

(assert (=> b!3019072 m!3361381))

(assert (=> b!3019072 m!3361383))

(assert (=> bm!204252 m!3361377))

(assert (=> b!3018764 d!849028))

(declare-fun bs!530111 () Bool)

(declare-fun d!849030 () Bool)

(assert (= bs!530111 (and d!849030 b!3018764)))

(declare-fun lambda!112911 () Int)

(assert (=> bs!530111 (= lambda!112911 lambda!112885)))

(assert (=> bs!530111 (not (= lambda!112911 lambda!112886))))

(declare-fun bs!530112 () Bool)

(assert (= bs!530112 (and d!849030 b!3018850)))

(assert (=> bs!530112 (not (= lambda!112911 lambda!112899))))

(declare-fun bs!530113 () Bool)

(assert (= bs!530113 (and d!849030 b!3018854)))

(assert (=> bs!530113 (not (= lambda!112911 lambda!112900))))

(assert (=> d!849030 true))

(assert (=> d!849030 true))

(assert (=> d!849030 true))

(declare-fun lambda!112912 () Int)

(assert (=> bs!530112 (not (= lambda!112912 lambda!112899))))

(assert (=> bs!530111 (not (= lambda!112912 lambda!112885))))

(assert (=> bs!530111 (= lambda!112912 lambda!112886)))

(assert (=> bs!530113 (= lambda!112912 lambda!112900)))

(declare-fun bs!530114 () Bool)

(assert (= bs!530114 d!849030))

(assert (=> bs!530114 (not (= lambda!112912 lambda!112911))))

(assert (=> d!849030 true))

(assert (=> d!849030 true))

(assert (=> d!849030 true))

(assert (=> d!849030 (= (Exists!1676 lambda!112911) (Exists!1676 lambda!112912))))

(declare-fun lt!1044626 () Unit!49239)

(declare-fun choose!17912 (Regex!9408 Regex!9408 List!35273) Unit!49239)

(assert (=> d!849030 (= lt!1044626 (choose!17912 (regOne!19328 r!17423) (regTwo!19328 r!17423) s!11993))))

(assert (=> d!849030 (validRegex!4141 (regOne!19328 r!17423))))

(assert (=> d!849030 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!549 (regOne!19328 r!17423) (regTwo!19328 r!17423) s!11993) lt!1044626)))

(declare-fun m!3361449 () Bool)

(assert (=> bs!530114 m!3361449))

(declare-fun m!3361451 () Bool)

(assert (=> bs!530114 m!3361451))

(declare-fun m!3361453 () Bool)

(assert (=> bs!530114 m!3361453))

(assert (=> bs!530114 m!3361427))

(assert (=> b!3018764 d!849030))

(declare-fun d!849036 () Bool)

(declare-fun choose!17913 (Int) Bool)

(assert (=> d!849036 (= (Exists!1676 lambda!112886) (choose!17913 lambda!112886))))

(declare-fun bs!530115 () Bool)

(assert (= bs!530115 d!849036))

(declare-fun m!3361455 () Bool)

(assert (=> bs!530115 m!3361455))

(assert (=> b!3018764 d!849036))

(declare-fun d!849038 () Bool)

(assert (=> d!849038 (= (get!10952 lt!1044567) (v!34914 lt!1044567))))

(assert (=> b!3018764 d!849038))

(declare-fun d!849040 () Bool)

(assert (=> d!849040 (= (Exists!1676 lambda!112885) (choose!17913 lambda!112885))))

(declare-fun bs!530116 () Bool)

(assert (= bs!530116 d!849040))

(declare-fun m!3361457 () Bool)

(assert (=> bs!530116 m!3361457))

(assert (=> b!3018764 d!849040))

(declare-fun d!849042 () Bool)

(declare-fun isEmpty!19445 (Option!6781) Bool)

(assert (=> d!849042 (= (isDefined!5332 lt!1044567) (not (isEmpty!19445 lt!1044567)))))

(declare-fun bs!530117 () Bool)

(assert (= bs!530117 d!849042))

(declare-fun m!3361459 () Bool)

(assert (=> bs!530117 m!3361459))

(assert (=> b!3018764 d!849042))

(declare-fun b!3019116 () Bool)

(declare-fun e!1894668 () Bool)

(declare-fun lt!1044633 () Option!6781)

(assert (=> b!3019116 (= e!1894668 (not (isDefined!5332 lt!1044633)))))

(declare-fun b!3019117 () Bool)

(declare-fun res!1243386 () Bool)

(declare-fun e!1894669 () Bool)

(assert (=> b!3019117 (=> (not res!1243386) (not e!1894669))))

(assert (=> b!3019117 (= res!1243386 (matchR!4290 (regTwo!19328 r!17423) (_2!20181 (get!10952 lt!1044633))))))

(declare-fun b!3019118 () Bool)

(declare-fun lt!1044634 () Unit!49239)

(declare-fun lt!1044635 () Unit!49239)

(assert (=> b!3019118 (= lt!1044634 lt!1044635)))

(declare-fun ++!8427 (List!35273 List!35273) List!35273)

(assert (=> b!3019118 (= (++!8427 (++!8427 Nil!35149 (Cons!35149 (h!40569 s!11993) Nil!35149)) (t!234338 s!11993)) s!11993)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1034 (List!35273 C!19002 List!35273 List!35273) Unit!49239)

(assert (=> b!3019118 (= lt!1044635 (lemmaMoveElementToOtherListKeepsConcatEq!1034 Nil!35149 (h!40569 s!11993) (t!234338 s!11993) s!11993))))

(declare-fun e!1894670 () Option!6781)

(assert (=> b!3019118 (= e!1894670 (findConcatSeparation!1175 (regOne!19328 r!17423) (regTwo!19328 r!17423) (++!8427 Nil!35149 (Cons!35149 (h!40569 s!11993) Nil!35149)) (t!234338 s!11993) s!11993))))

(declare-fun b!3019119 () Bool)

(declare-fun res!1243384 () Bool)

(assert (=> b!3019119 (=> (not res!1243384) (not e!1894669))))

(assert (=> b!3019119 (= res!1243384 (matchR!4290 (regOne!19328 r!17423) (_1!20181 (get!10952 lt!1044633))))))

(declare-fun b!3019120 () Bool)

(declare-fun e!1894671 () Option!6781)

(assert (=> b!3019120 (= e!1894671 e!1894670)))

(declare-fun c!497844 () Bool)

(assert (=> b!3019120 (= c!497844 (is-Nil!35149 s!11993))))

(declare-fun b!3019121 () Bool)

(assert (=> b!3019121 (= e!1894669 (= (++!8427 (_1!20181 (get!10952 lt!1044633)) (_2!20181 (get!10952 lt!1044633))) s!11993))))

(declare-fun d!849044 () Bool)

(assert (=> d!849044 e!1894668))

(declare-fun res!1243383 () Bool)

(assert (=> d!849044 (=> res!1243383 e!1894668)))

(assert (=> d!849044 (= res!1243383 e!1894669)))

(declare-fun res!1243387 () Bool)

(assert (=> d!849044 (=> (not res!1243387) (not e!1894669))))

(assert (=> d!849044 (= res!1243387 (isDefined!5332 lt!1044633))))

(assert (=> d!849044 (= lt!1044633 e!1894671)))

(declare-fun c!497843 () Bool)

(declare-fun e!1894667 () Bool)

(assert (=> d!849044 (= c!497843 e!1894667)))

(declare-fun res!1243385 () Bool)

(assert (=> d!849044 (=> (not res!1243385) (not e!1894667))))

(assert (=> d!849044 (= res!1243385 (matchR!4290 (regOne!19328 r!17423) Nil!35149))))

(assert (=> d!849044 (validRegex!4141 (regOne!19328 r!17423))))

(assert (=> d!849044 (= (findConcatSeparation!1175 (regOne!19328 r!17423) (regTwo!19328 r!17423) Nil!35149 s!11993 s!11993) lt!1044633)))

(declare-fun b!3019122 () Bool)

(assert (=> b!3019122 (= e!1894671 (Some!6780 (tuple2!34099 Nil!35149 s!11993)))))

(declare-fun b!3019123 () Bool)

(assert (=> b!3019123 (= e!1894667 (matchR!4290 (regTwo!19328 r!17423) s!11993))))

(declare-fun b!3019124 () Bool)

(assert (=> b!3019124 (= e!1894670 None!6780)))

(assert (= (and d!849044 res!1243385) b!3019123))

(assert (= (and d!849044 c!497843) b!3019122))

(assert (= (and d!849044 (not c!497843)) b!3019120))

(assert (= (and b!3019120 c!497844) b!3019124))

(assert (= (and b!3019120 (not c!497844)) b!3019118))

(assert (= (and d!849044 res!1243387) b!3019119))

(assert (= (and b!3019119 res!1243384) b!3019117))

(assert (= (and b!3019117 res!1243386) b!3019121))

(assert (= (and d!849044 (not res!1243383)) b!3019116))

(declare-fun m!3361461 () Bool)

(assert (=> b!3019119 m!3361461))

(declare-fun m!3361463 () Bool)

(assert (=> b!3019119 m!3361463))

(declare-fun m!3361465 () Bool)

(assert (=> d!849044 m!3361465))

(declare-fun m!3361467 () Bool)

(assert (=> d!849044 m!3361467))

(assert (=> d!849044 m!3361427))

(assert (=> b!3019121 m!3361461))

(declare-fun m!3361469 () Bool)

(assert (=> b!3019121 m!3361469))

(declare-fun m!3361471 () Bool)

(assert (=> b!3019123 m!3361471))

(assert (=> b!3019116 m!3361465))

(declare-fun m!3361473 () Bool)

(assert (=> b!3019118 m!3361473))

(assert (=> b!3019118 m!3361473))

(declare-fun m!3361475 () Bool)

(assert (=> b!3019118 m!3361475))

(declare-fun m!3361477 () Bool)

(assert (=> b!3019118 m!3361477))

(assert (=> b!3019118 m!3361473))

(declare-fun m!3361479 () Bool)

(assert (=> b!3019118 m!3361479))

(assert (=> b!3019117 m!3361461))

(declare-fun m!3361481 () Bool)

(assert (=> b!3019117 m!3361481))

(assert (=> b!3018764 d!849044))

(declare-fun bs!530118 () Bool)

(declare-fun d!849046 () Bool)

(assert (= bs!530118 (and d!849046 b!3018850)))

(declare-fun lambda!112915 () Int)

(assert (=> bs!530118 (not (= lambda!112915 lambda!112899))))

(declare-fun bs!530119 () Bool)

(assert (= bs!530119 (and d!849046 b!3018764)))

(assert (=> bs!530119 (= lambda!112915 lambda!112885)))

(assert (=> bs!530119 (not (= lambda!112915 lambda!112886))))

(declare-fun bs!530120 () Bool)

(assert (= bs!530120 (and d!849046 d!849030)))

(assert (=> bs!530120 (not (= lambda!112915 lambda!112912))))

(declare-fun bs!530121 () Bool)

(assert (= bs!530121 (and d!849046 b!3018854)))

(assert (=> bs!530121 (not (= lambda!112915 lambda!112900))))

(assert (=> bs!530120 (= lambda!112915 lambda!112911)))

(assert (=> d!849046 true))

(assert (=> d!849046 true))

(assert (=> d!849046 true))

(assert (=> d!849046 (= (isDefined!5332 (findConcatSeparation!1175 (regOne!19328 r!17423) (regTwo!19328 r!17423) Nil!35149 s!11993 s!11993)) (Exists!1676 lambda!112915))))

(declare-fun lt!1044644 () Unit!49239)

(declare-fun choose!17914 (Regex!9408 Regex!9408 List!35273) Unit!49239)

(assert (=> d!849046 (= lt!1044644 (choose!17914 (regOne!19328 r!17423) (regTwo!19328 r!17423) s!11993))))

(assert (=> d!849046 (validRegex!4141 (regOne!19328 r!17423))))

(assert (=> d!849046 (= (lemmaFindConcatSeparationEquivalentToExists!953 (regOne!19328 r!17423) (regTwo!19328 r!17423) s!11993) lt!1044644)))

(declare-fun bs!530122 () Bool)

(assert (= bs!530122 d!849046))

(declare-fun m!3361483 () Bool)

(assert (=> bs!530122 m!3361483))

(assert (=> bs!530122 m!3361299))

(assert (=> bs!530122 m!3361427))

(declare-fun m!3361485 () Bool)

(assert (=> bs!530122 m!3361485))

(assert (=> bs!530122 m!3361299))

(declare-fun m!3361487 () Bool)

(assert (=> bs!530122 m!3361487))

(assert (=> b!3018764 d!849046))

(declare-fun d!849048 () Bool)

(declare-fun e!1894690 () Bool)

(assert (=> d!849048 e!1894690))

(declare-fun c!497850 () Bool)

(assert (=> d!849048 (= c!497850 (is-EmptyExpr!9408 (regTwo!19328 r!17423)))))

(declare-fun lt!1044645 () Bool)

(declare-fun e!1894687 () Bool)

(assert (=> d!849048 (= lt!1044645 e!1894687)))

(declare-fun c!497851 () Bool)

(assert (=> d!849048 (= c!497851 (isEmpty!19443 (_2!20181 lt!1044561)))))

(assert (=> d!849048 (validRegex!4141 (regTwo!19328 r!17423))))

(assert (=> d!849048 (= (matchR!4290 (regTwo!19328 r!17423) (_2!20181 lt!1044561)) lt!1044645)))

(declare-fun b!3019147 () Bool)

(declare-fun res!1243404 () Bool)

(declare-fun e!1894686 () Bool)

(assert (=> b!3019147 (=> (not res!1243404) (not e!1894686))))

(assert (=> b!3019147 (= res!1243404 (isEmpty!19443 (tail!4942 (_2!20181 lt!1044561))))))

(declare-fun bm!204253 () Bool)

(declare-fun call!204258 () Bool)

(assert (=> bm!204253 (= call!204258 (isEmpty!19443 (_2!20181 lt!1044561)))))

(declare-fun b!3019148 () Bool)

(assert (=> b!3019148 (= e!1894687 (nullable!3060 (regTwo!19328 r!17423)))))

(declare-fun b!3019149 () Bool)

(assert (=> b!3019149 (= e!1894690 (= lt!1044645 call!204258))))

(declare-fun b!3019150 () Bool)

(declare-fun e!1894684 () Bool)

(assert (=> b!3019150 (= e!1894690 e!1894684)))

(declare-fun c!497849 () Bool)

(assert (=> b!3019150 (= c!497849 (is-EmptyLang!9408 (regTwo!19328 r!17423)))))

(declare-fun b!3019151 () Bool)

(declare-fun e!1894689 () Bool)

(assert (=> b!3019151 (= e!1894689 (not (= (head!6716 (_2!20181 lt!1044561)) (c!497760 (regTwo!19328 r!17423)))))))

(declare-fun b!3019152 () Bool)

(declare-fun res!1243408 () Bool)

(assert (=> b!3019152 (=> (not res!1243408) (not e!1894686))))

(assert (=> b!3019152 (= res!1243408 (not call!204258))))

(declare-fun b!3019153 () Bool)

(assert (=> b!3019153 (= e!1894687 (matchR!4290 (derivativeStep!2657 (regTwo!19328 r!17423) (head!6716 (_2!20181 lt!1044561))) (tail!4942 (_2!20181 lt!1044561))))))

(declare-fun b!3019154 () Bool)

(declare-fun e!1894688 () Bool)

(assert (=> b!3019154 (= e!1894688 e!1894689)))

(declare-fun res!1243403 () Bool)

(assert (=> b!3019154 (=> res!1243403 e!1894689)))

(assert (=> b!3019154 (= res!1243403 call!204258)))

(declare-fun b!3019155 () Bool)

(declare-fun res!1243407 () Bool)

(declare-fun e!1894685 () Bool)

(assert (=> b!3019155 (=> res!1243407 e!1894685)))

(assert (=> b!3019155 (= res!1243407 (not (is-ElementMatch!9408 (regTwo!19328 r!17423))))))

(assert (=> b!3019155 (= e!1894684 e!1894685)))

(declare-fun b!3019156 () Bool)

(assert (=> b!3019156 (= e!1894685 e!1894688)))

(declare-fun res!1243402 () Bool)

(assert (=> b!3019156 (=> (not res!1243402) (not e!1894688))))

(assert (=> b!3019156 (= res!1243402 (not lt!1044645))))

(declare-fun b!3019157 () Bool)

(declare-fun res!1243405 () Bool)

(assert (=> b!3019157 (=> res!1243405 e!1894685)))

(assert (=> b!3019157 (= res!1243405 e!1894686)))

(declare-fun res!1243409 () Bool)

(assert (=> b!3019157 (=> (not res!1243409) (not e!1894686))))

(assert (=> b!3019157 (= res!1243409 lt!1044645)))

(declare-fun b!3019158 () Bool)

(assert (=> b!3019158 (= e!1894684 (not lt!1044645))))

(declare-fun b!3019159 () Bool)

(declare-fun res!1243406 () Bool)

(assert (=> b!3019159 (=> res!1243406 e!1894689)))

(assert (=> b!3019159 (= res!1243406 (not (isEmpty!19443 (tail!4942 (_2!20181 lt!1044561)))))))

(declare-fun b!3019160 () Bool)

(assert (=> b!3019160 (= e!1894686 (= (head!6716 (_2!20181 lt!1044561)) (c!497760 (regTwo!19328 r!17423))))))

(assert (= (and d!849048 c!497851) b!3019148))

(assert (= (and d!849048 (not c!497851)) b!3019153))

(assert (= (and d!849048 c!497850) b!3019149))

(assert (= (and d!849048 (not c!497850)) b!3019150))

(assert (= (and b!3019150 c!497849) b!3019158))

(assert (= (and b!3019150 (not c!497849)) b!3019155))

(assert (= (and b!3019155 (not res!1243407)) b!3019157))

(assert (= (and b!3019157 res!1243409) b!3019152))

(assert (= (and b!3019152 res!1243408) b!3019147))

(assert (= (and b!3019147 res!1243404) b!3019160))

(assert (= (and b!3019157 (not res!1243405)) b!3019156))

(assert (= (and b!3019156 res!1243402) b!3019154))

(assert (= (and b!3019154 (not res!1243403)) b!3019159))

(assert (= (and b!3019159 (not res!1243406)) b!3019151))

(assert (= (or b!3019149 b!3019152 b!3019154) bm!204253))

(declare-fun m!3361489 () Bool)

(assert (=> b!3019151 m!3361489))

(declare-fun m!3361491 () Bool)

(assert (=> d!849048 m!3361491))

(assert (=> d!849048 m!3361285))

(declare-fun m!3361493 () Bool)

(assert (=> b!3019159 m!3361493))

(assert (=> b!3019159 m!3361493))

(declare-fun m!3361495 () Bool)

(assert (=> b!3019159 m!3361495))

(declare-fun m!3361497 () Bool)

(assert (=> b!3019148 m!3361497))

(assert (=> b!3019153 m!3361489))

(assert (=> b!3019153 m!3361489))

(declare-fun m!3361499 () Bool)

(assert (=> b!3019153 m!3361499))

(assert (=> b!3019153 m!3361493))

(assert (=> b!3019153 m!3361499))

(assert (=> b!3019153 m!3361493))

(declare-fun m!3361501 () Bool)

(assert (=> b!3019153 m!3361501))

(assert (=> b!3019160 m!3361489))

(assert (=> b!3019147 m!3361493))

(assert (=> b!3019147 m!3361493))

(assert (=> b!3019147 m!3361495))

(assert (=> bm!204253 m!3361491))

(assert (=> b!3018759 d!849048))

(declare-fun d!849050 () Bool)

(assert (=> d!849050 (= (isEmpty!19443 s!11993) (is-Nil!35149 s!11993))))

(assert (=> b!3018762 d!849050))

(declare-fun b!3019174 () Bool)

(declare-fun e!1894693 () Bool)

(declare-fun tp!957932 () Bool)

(declare-fun tp!957935 () Bool)

(assert (=> b!3019174 (= e!1894693 (and tp!957932 tp!957935))))

(declare-fun b!3019171 () Bool)

(assert (=> b!3019171 (= e!1894693 tp_is_empty!16379)))

(declare-fun b!3019173 () Bool)

(declare-fun tp!957933 () Bool)

(assert (=> b!3019173 (= e!1894693 tp!957933)))

(assert (=> b!3018757 (= tp!957903 e!1894693)))

(declare-fun b!3019172 () Bool)

(declare-fun tp!957936 () Bool)

(declare-fun tp!957934 () Bool)

(assert (=> b!3019172 (= e!1894693 (and tp!957936 tp!957934))))

(assert (= (and b!3018757 (is-ElementMatch!9408 (reg!9737 r!17423))) b!3019171))

(assert (= (and b!3018757 (is-Concat!14729 (reg!9737 r!17423))) b!3019172))

(assert (= (and b!3018757 (is-Star!9408 (reg!9737 r!17423))) b!3019173))

(assert (= (and b!3018757 (is-Union!9408 (reg!9737 r!17423))) b!3019174))

(declare-fun b!3019178 () Bool)

(declare-fun e!1894694 () Bool)

(declare-fun tp!957937 () Bool)

(declare-fun tp!957940 () Bool)

(assert (=> b!3019178 (= e!1894694 (and tp!957937 tp!957940))))

(declare-fun b!3019175 () Bool)

(assert (=> b!3019175 (= e!1894694 tp_is_empty!16379)))

(declare-fun b!3019177 () Bool)

(declare-fun tp!957938 () Bool)

(assert (=> b!3019177 (= e!1894694 tp!957938)))

(assert (=> b!3018763 (= tp!957902 e!1894694)))

(declare-fun b!3019176 () Bool)

(declare-fun tp!957941 () Bool)

(declare-fun tp!957939 () Bool)

(assert (=> b!3019176 (= e!1894694 (and tp!957941 tp!957939))))

(assert (= (and b!3018763 (is-ElementMatch!9408 (regOne!19329 r!17423))) b!3019175))

(assert (= (and b!3018763 (is-Concat!14729 (regOne!19329 r!17423))) b!3019176))

(assert (= (and b!3018763 (is-Star!9408 (regOne!19329 r!17423))) b!3019177))

(assert (= (and b!3018763 (is-Union!9408 (regOne!19329 r!17423))) b!3019178))

(declare-fun b!3019182 () Bool)

(declare-fun e!1894695 () Bool)

(declare-fun tp!957942 () Bool)

(declare-fun tp!957945 () Bool)

(assert (=> b!3019182 (= e!1894695 (and tp!957942 tp!957945))))

(declare-fun b!3019179 () Bool)

(assert (=> b!3019179 (= e!1894695 tp_is_empty!16379)))

(declare-fun b!3019181 () Bool)

(declare-fun tp!957943 () Bool)

(assert (=> b!3019181 (= e!1894695 tp!957943)))

(assert (=> b!3018763 (= tp!957899 e!1894695)))

(declare-fun b!3019180 () Bool)

(declare-fun tp!957946 () Bool)

(declare-fun tp!957944 () Bool)

(assert (=> b!3019180 (= e!1894695 (and tp!957946 tp!957944))))

(assert (= (and b!3018763 (is-ElementMatch!9408 (regTwo!19329 r!17423))) b!3019179))

(assert (= (and b!3018763 (is-Concat!14729 (regTwo!19329 r!17423))) b!3019180))

(assert (= (and b!3018763 (is-Star!9408 (regTwo!19329 r!17423))) b!3019181))

(assert (= (and b!3018763 (is-Union!9408 (regTwo!19329 r!17423))) b!3019182))

(declare-fun b!3019195 () Bool)

(declare-fun e!1894701 () Bool)

(declare-fun tp!957947 () Bool)

(declare-fun tp!957950 () Bool)

(assert (=> b!3019195 (= e!1894701 (and tp!957947 tp!957950))))

(declare-fun b!3019192 () Bool)

(assert (=> b!3019192 (= e!1894701 tp_is_empty!16379)))

(declare-fun b!3019194 () Bool)

(declare-fun tp!957948 () Bool)

(assert (=> b!3019194 (= e!1894701 tp!957948)))

(assert (=> b!3018761 (= tp!957901 e!1894701)))

(declare-fun b!3019193 () Bool)

(declare-fun tp!957951 () Bool)

(declare-fun tp!957949 () Bool)

(assert (=> b!3019193 (= e!1894701 (and tp!957951 tp!957949))))

(assert (= (and b!3018761 (is-ElementMatch!9408 (regOne!19328 r!17423))) b!3019192))

(assert (= (and b!3018761 (is-Concat!14729 (regOne!19328 r!17423))) b!3019193))

(assert (= (and b!3018761 (is-Star!9408 (regOne!19328 r!17423))) b!3019194))

(assert (= (and b!3018761 (is-Union!9408 (regOne!19328 r!17423))) b!3019195))

(declare-fun b!3019199 () Bool)

(declare-fun e!1894702 () Bool)

(declare-fun tp!957952 () Bool)

(declare-fun tp!957955 () Bool)

(assert (=> b!3019199 (= e!1894702 (and tp!957952 tp!957955))))

(declare-fun b!3019196 () Bool)

(assert (=> b!3019196 (= e!1894702 tp_is_empty!16379)))

(declare-fun b!3019198 () Bool)

(declare-fun tp!957953 () Bool)

(assert (=> b!3019198 (= e!1894702 tp!957953)))

(assert (=> b!3018761 (= tp!957900 e!1894702)))

(declare-fun b!3019197 () Bool)

(declare-fun tp!957956 () Bool)

(declare-fun tp!957954 () Bool)

(assert (=> b!3019197 (= e!1894702 (and tp!957956 tp!957954))))

(assert (= (and b!3018761 (is-ElementMatch!9408 (regTwo!19328 r!17423))) b!3019196))

(assert (= (and b!3018761 (is-Concat!14729 (regTwo!19328 r!17423))) b!3019197))

(assert (= (and b!3018761 (is-Star!9408 (regTwo!19328 r!17423))) b!3019198))

(assert (= (and b!3018761 (is-Union!9408 (regTwo!19328 r!17423))) b!3019199))

(declare-fun b!3019204 () Bool)

(declare-fun e!1894705 () Bool)

(declare-fun tp!957959 () Bool)

(assert (=> b!3019204 (= e!1894705 (and tp_is_empty!16379 tp!957959))))

(assert (=> b!3018756 (= tp!957898 e!1894705)))

(assert (= (and b!3018756 (is-Cons!35149 (t!234338 s!11993))) b!3019204))

(push 1)

(assert (not d!849016))

(assert (not b!3018955))

(assert (not bm!204252))

(assert (not b!3019197))

(assert (not bm!204242))

(assert (not d!849028))

(assert (not b!3018856))

(assert (not b!3019204))

(assert (not b!3018888))

(assert (not b!3019173))

(assert (not bm!204224))

(assert (not b!3019194))

(assert (not bm!204251))

(assert (not b!3018899))

(assert (not b!3018969))

(assert (not b!3019153))

(assert (not b!3019195))

(assert (not bm!204243))

(assert (not b!3018891))

(assert (not b!3019151))

(assert (not b!3019121))

(assert (not b!3018853))

(assert (not bm!204226))

(assert (not d!849010))

(assert (not d!849030))

(assert (not bm!204246))

(assert (not b!3019116))

(assert (not d!849046))

(assert (not b!3019178))

(assert (not b!3019180))

(assert (not d!849044))

(assert (not b!3019181))

(assert (not b!3019198))

(assert (not bm!204211))

(assert (not b!3019123))

(assert (not b!3019119))

(assert (not d!849014))

(assert (not b!3019147))

(assert (not b!3019076))

(assert (not b!3019078))

(assert tp_is_empty!16379)

(assert (not b!3019177))

(assert (not b!3018893))

(assert (not b!3019193))

(assert (not b!3019071))

(assert (not b!3018900))

(assert (not b!3019073))

(assert (not b!3019072))

(assert (not b!3018956))

(assert (not b!3018887))

(assert (not b!3019038))

(assert (not bm!204244))

(assert (not b!3019117))

(assert (not b!3019182))

(assert (not b!3019118))

(assert (not b!3019036))

(assert (not b!3019159))

(assert (not b!3018960))

(assert (not d!849024))

(assert (not b!3019085))

(assert (not d!849040))

(assert (not b!3019172))

(assert (not bm!204210))

(assert (not d!849036))

(assert (not bm!204248))

(assert (not b!3019199))

(assert (not bm!204225))

(assert (not d!849008))

(assert (not b!3019148))

(assert (not b!3019160))

(assert (not b!3018957))

(assert (not d!849048))

(assert (not b!3019084))

(assert (not b!3019176))

(assert (not bm!204214))

(assert (not bm!204253))

(assert (not d!849042))

(assert (not b!3018962))

(assert (not bm!204250))

(assert (not b!3018968))

(assert (not b!3019174))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


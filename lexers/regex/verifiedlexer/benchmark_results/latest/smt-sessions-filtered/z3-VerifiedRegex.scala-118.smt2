; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!884 () Bool)

(assert start!884)

(declare-fun b!27485 () Bool)

(declare-fun e!10998 () Bool)

(declare-fun tp!18916 () Bool)

(assert (=> b!27485 (= e!10998 tp!18916)))

(declare-fun res!25652 () Bool)

(declare-fun e!10999 () Bool)

(assert (=> start!884 (=> (not res!25652) (not e!10999))))

(declare-datatypes ((C!1316 0))(
  ( (C!1317 (val!149 Int)) )
))
(declare-datatypes ((Regex!121 0))(
  ( (ElementMatch!121 (c!14747 C!1316)) (Concat!201 (regOne!754 Regex!121) (regTwo!754 Regex!121)) (EmptyExpr!121) (Star!121 (reg!450 Regex!121)) (EmptyLang!121) (Union!121 (regOne!755 Regex!121) (regTwo!755 Regex!121)) )
))
(declare-fun r!4862 () Regex!121)

(declare-fun validRegex!2 (Regex!121) Bool)

(assert (=> start!884 (= res!25652 (validRegex!2 r!4862))))

(assert (=> start!884 e!10999))

(assert (=> start!884 e!10998))

(declare-datatypes ((List!130 0))(
  ( (Nil!128) (Cons!128 (h!5524 Regex!121) (t!14609 List!130)) )
))
(declare-datatypes ((Context!6 0))(
  ( (Context!7 (exprs!503 List!130)) )
))
(declare-fun thiss!29345 () Context!6)

(declare-fun e!10997 () Bool)

(declare-fun inv!381 (Context!6) Bool)

(assert (=> start!884 (and (inv!381 thiss!29345) e!10997)))

(declare-fun b!27486 () Bool)

(declare-fun tp!18913 () Bool)

(assert (=> b!27486 (= e!10997 tp!18913)))

(declare-fun b!27487 () Bool)

(declare-fun $colon$colon!4 (List!130 Regex!121) List!130)

(assert (=> b!27487 (= e!10999 (not (inv!381 (Context!7 ($colon$colon!4 (exprs!503 thiss!29345) r!4862)))))))

(declare-fun b!27488 () Bool)

(declare-fun tp_is_empty!287 () Bool)

(assert (=> b!27488 (= e!10998 tp_is_empty!287)))

(declare-fun b!27489 () Bool)

(declare-fun tp!18912 () Bool)

(declare-fun tp!18915 () Bool)

(assert (=> b!27489 (= e!10998 (and tp!18912 tp!18915))))

(declare-fun b!27490 () Bool)

(declare-fun tp!18914 () Bool)

(declare-fun tp!18911 () Bool)

(assert (=> b!27490 (= e!10998 (and tp!18914 tp!18911))))

(assert (= (and start!884 res!25652) b!27487))

(get-info :version)

(assert (= (and start!884 ((_ is ElementMatch!121) r!4862)) b!27488))

(assert (= (and start!884 ((_ is Concat!201) r!4862)) b!27489))

(assert (= (and start!884 ((_ is Star!121) r!4862)) b!27485))

(assert (= (and start!884 ((_ is Union!121) r!4862)) b!27490))

(assert (= start!884 b!27486))

(declare-fun m!4219 () Bool)

(assert (=> start!884 m!4219))

(declare-fun m!4221 () Bool)

(assert (=> start!884 m!4221))

(declare-fun m!4223 () Bool)

(assert (=> b!27487 m!4223))

(declare-fun m!4225 () Bool)

(assert (=> b!27487 m!4225))

(check-sat (not b!27485) (not b!27490) tp_is_empty!287 (not b!27486) (not start!884) (not b!27487) (not b!27489))
(check-sat)
(get-model)

(declare-fun b!27536 () Bool)

(declare-fun res!25682 () Bool)

(declare-fun e!11038 () Bool)

(assert (=> b!27536 (=> (not res!25682) (not e!11038))))

(declare-fun call!2526 () Bool)

(assert (=> b!27536 (= res!25682 call!2526)))

(declare-fun e!11035 () Bool)

(assert (=> b!27536 (= e!11035 e!11038)))

(declare-fun b!27537 () Bool)

(declare-fun e!11041 () Bool)

(declare-fun e!11040 () Bool)

(assert (=> b!27537 (= e!11041 e!11040)))

(declare-fun c!14758 () Bool)

(assert (=> b!27537 (= c!14758 ((_ is Star!121) r!4862))))

(declare-fun call!2527 () Bool)

(declare-fun bm!2521 () Bool)

(declare-fun c!14759 () Bool)

(assert (=> bm!2521 (= call!2527 (validRegex!2 (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862)))))))

(declare-fun bm!2522 () Bool)

(assert (=> bm!2522 (= call!2526 (validRegex!2 (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862))))))

(declare-fun b!27538 () Bool)

(assert (=> b!27538 (= e!11040 e!11035)))

(assert (=> b!27538 (= c!14759 ((_ is Union!121) r!4862))))

(declare-fun b!27539 () Bool)

(declare-fun e!11037 () Bool)

(assert (=> b!27539 (= e!11037 call!2527)))

(declare-fun b!27540 () Bool)

(assert (=> b!27540 (= e!11040 e!11037)))

(declare-fun res!25681 () Bool)

(declare-fun nullable!6 (Regex!121) Bool)

(assert (=> b!27540 (= res!25681 (not (nullable!6 (reg!450 r!4862))))))

(assert (=> b!27540 (=> (not res!25681) (not e!11037))))

(declare-fun b!27541 () Bool)

(declare-fun res!25678 () Bool)

(declare-fun e!11036 () Bool)

(assert (=> b!27541 (=> res!25678 e!11036)))

(assert (=> b!27541 (= res!25678 (not ((_ is Concat!201) r!4862)))))

(assert (=> b!27541 (= e!11035 e!11036)))

(declare-fun b!27542 () Bool)

(declare-fun e!11039 () Bool)

(assert (=> b!27542 (= e!11036 e!11039)))

(declare-fun res!25680 () Bool)

(assert (=> b!27542 (=> (not res!25680) (not e!11039))))

(assert (=> b!27542 (= res!25680 call!2526)))

(declare-fun bm!2523 () Bool)

(declare-fun call!2528 () Bool)

(assert (=> bm!2523 (= call!2528 call!2527)))

(declare-fun d!1847 () Bool)

(declare-fun res!25679 () Bool)

(assert (=> d!1847 (=> res!25679 e!11041)))

(assert (=> d!1847 (= res!25679 ((_ is ElementMatch!121) r!4862))))

(assert (=> d!1847 (= (validRegex!2 r!4862) e!11041)))

(declare-fun b!27543 () Bool)

(assert (=> b!27543 (= e!11039 call!2528)))

(declare-fun b!27544 () Bool)

(assert (=> b!27544 (= e!11038 call!2528)))

(assert (= (and d!1847 (not res!25679)) b!27537))

(assert (= (and b!27537 c!14758) b!27540))

(assert (= (and b!27537 (not c!14758)) b!27538))

(assert (= (and b!27540 res!25681) b!27539))

(assert (= (and b!27538 c!14759) b!27536))

(assert (= (and b!27538 (not c!14759)) b!27541))

(assert (= (and b!27536 res!25682) b!27544))

(assert (= (and b!27541 (not res!25678)) b!27542))

(assert (= (and b!27542 res!25680) b!27543))

(assert (= (or b!27536 b!27542) bm!2522))

(assert (= (or b!27544 b!27543) bm!2523))

(assert (= (or b!27539 bm!2523) bm!2521))

(declare-fun m!4233 () Bool)

(assert (=> bm!2521 m!4233))

(declare-fun m!4235 () Bool)

(assert (=> bm!2522 m!4235))

(declare-fun m!4237 () Bool)

(assert (=> b!27540 m!4237))

(assert (=> start!884 d!1847))

(declare-fun d!1851 () Bool)

(declare-fun lambda!9 () Int)

(declare-fun forall!13 (List!130 Int) Bool)

(assert (=> d!1851 (= (inv!381 thiss!29345) (forall!13 (exprs!503 thiss!29345) lambda!9))))

(declare-fun bs!391 () Bool)

(assert (= bs!391 d!1851))

(declare-fun m!4243 () Bool)

(assert (=> bs!391 m!4243))

(assert (=> start!884 d!1851))

(declare-fun bs!392 () Bool)

(declare-fun d!1857 () Bool)

(assert (= bs!392 (and d!1857 d!1851)))

(declare-fun lambda!10 () Int)

(assert (=> bs!392 (= lambda!10 lambda!9)))

(assert (=> d!1857 (= (inv!381 (Context!7 ($colon$colon!4 (exprs!503 thiss!29345) r!4862))) (forall!13 (exprs!503 (Context!7 ($colon$colon!4 (exprs!503 thiss!29345) r!4862))) lambda!10))))

(declare-fun bs!393 () Bool)

(assert (= bs!393 d!1857))

(declare-fun m!4245 () Bool)

(assert (=> bs!393 m!4245))

(assert (=> b!27487 d!1857))

(declare-fun d!1859 () Bool)

(assert (=> d!1859 (= ($colon$colon!4 (exprs!503 thiss!29345) r!4862) (Cons!128 r!4862 (exprs!503 thiss!29345)))))

(assert (=> b!27487 d!1859))

(declare-fun e!11054 () Bool)

(assert (=> b!27489 (= tp!18912 e!11054)))

(declare-fun b!27591 () Bool)

(declare-fun tp!18972 () Bool)

(declare-fun tp!18971 () Bool)

(assert (=> b!27591 (= e!11054 (and tp!18972 tp!18971))))

(declare-fun b!27590 () Bool)

(assert (=> b!27590 (= e!11054 tp_is_empty!287)))

(declare-fun b!27592 () Bool)

(declare-fun tp!18969 () Bool)

(assert (=> b!27592 (= e!11054 tp!18969)))

(declare-fun b!27593 () Bool)

(declare-fun tp!18970 () Bool)

(declare-fun tp!18968 () Bool)

(assert (=> b!27593 (= e!11054 (and tp!18970 tp!18968))))

(assert (= (and b!27489 ((_ is ElementMatch!121) (regOne!754 r!4862))) b!27590))

(assert (= (and b!27489 ((_ is Concat!201) (regOne!754 r!4862))) b!27591))

(assert (= (and b!27489 ((_ is Star!121) (regOne!754 r!4862))) b!27592))

(assert (= (and b!27489 ((_ is Union!121) (regOne!754 r!4862))) b!27593))

(declare-fun e!11055 () Bool)

(assert (=> b!27489 (= tp!18915 e!11055)))

(declare-fun b!27595 () Bool)

(declare-fun tp!18977 () Bool)

(declare-fun tp!18976 () Bool)

(assert (=> b!27595 (= e!11055 (and tp!18977 tp!18976))))

(declare-fun b!27594 () Bool)

(assert (=> b!27594 (= e!11055 tp_is_empty!287)))

(declare-fun b!27596 () Bool)

(declare-fun tp!18974 () Bool)

(assert (=> b!27596 (= e!11055 tp!18974)))

(declare-fun b!27597 () Bool)

(declare-fun tp!18975 () Bool)

(declare-fun tp!18973 () Bool)

(assert (=> b!27597 (= e!11055 (and tp!18975 tp!18973))))

(assert (= (and b!27489 ((_ is ElementMatch!121) (regTwo!754 r!4862))) b!27594))

(assert (= (and b!27489 ((_ is Concat!201) (regTwo!754 r!4862))) b!27595))

(assert (= (and b!27489 ((_ is Star!121) (regTwo!754 r!4862))) b!27596))

(assert (= (and b!27489 ((_ is Union!121) (regTwo!754 r!4862))) b!27597))

(declare-fun e!11056 () Bool)

(assert (=> b!27485 (= tp!18916 e!11056)))

(declare-fun b!27599 () Bool)

(declare-fun tp!18982 () Bool)

(declare-fun tp!18981 () Bool)

(assert (=> b!27599 (= e!11056 (and tp!18982 tp!18981))))

(declare-fun b!27598 () Bool)

(assert (=> b!27598 (= e!11056 tp_is_empty!287)))

(declare-fun b!27600 () Bool)

(declare-fun tp!18979 () Bool)

(assert (=> b!27600 (= e!11056 tp!18979)))

(declare-fun b!27601 () Bool)

(declare-fun tp!18980 () Bool)

(declare-fun tp!18978 () Bool)

(assert (=> b!27601 (= e!11056 (and tp!18980 tp!18978))))

(assert (= (and b!27485 ((_ is ElementMatch!121) (reg!450 r!4862))) b!27598))

(assert (= (and b!27485 ((_ is Concat!201) (reg!450 r!4862))) b!27599))

(assert (= (and b!27485 ((_ is Star!121) (reg!450 r!4862))) b!27600))

(assert (= (and b!27485 ((_ is Union!121) (reg!450 r!4862))) b!27601))

(declare-fun e!11057 () Bool)

(assert (=> b!27490 (= tp!18914 e!11057)))

(declare-fun b!27603 () Bool)

(declare-fun tp!18987 () Bool)

(declare-fun tp!18986 () Bool)

(assert (=> b!27603 (= e!11057 (and tp!18987 tp!18986))))

(declare-fun b!27602 () Bool)

(assert (=> b!27602 (= e!11057 tp_is_empty!287)))

(declare-fun b!27604 () Bool)

(declare-fun tp!18984 () Bool)

(assert (=> b!27604 (= e!11057 tp!18984)))

(declare-fun b!27605 () Bool)

(declare-fun tp!18985 () Bool)

(declare-fun tp!18983 () Bool)

(assert (=> b!27605 (= e!11057 (and tp!18985 tp!18983))))

(assert (= (and b!27490 ((_ is ElementMatch!121) (regOne!755 r!4862))) b!27602))

(assert (= (and b!27490 ((_ is Concat!201) (regOne!755 r!4862))) b!27603))

(assert (= (and b!27490 ((_ is Star!121) (regOne!755 r!4862))) b!27604))

(assert (= (and b!27490 ((_ is Union!121) (regOne!755 r!4862))) b!27605))

(declare-fun e!11058 () Bool)

(assert (=> b!27490 (= tp!18911 e!11058)))

(declare-fun b!27607 () Bool)

(declare-fun tp!18992 () Bool)

(declare-fun tp!18991 () Bool)

(assert (=> b!27607 (= e!11058 (and tp!18992 tp!18991))))

(declare-fun b!27606 () Bool)

(assert (=> b!27606 (= e!11058 tp_is_empty!287)))

(declare-fun b!27608 () Bool)

(declare-fun tp!18989 () Bool)

(assert (=> b!27608 (= e!11058 tp!18989)))

(declare-fun b!27609 () Bool)

(declare-fun tp!18990 () Bool)

(declare-fun tp!18988 () Bool)

(assert (=> b!27609 (= e!11058 (and tp!18990 tp!18988))))

(assert (= (and b!27490 ((_ is ElementMatch!121) (regTwo!755 r!4862))) b!27606))

(assert (= (and b!27490 ((_ is Concat!201) (regTwo!755 r!4862))) b!27607))

(assert (= (and b!27490 ((_ is Star!121) (regTwo!755 r!4862))) b!27608))

(assert (= (and b!27490 ((_ is Union!121) (regTwo!755 r!4862))) b!27609))

(declare-fun b!27614 () Bool)

(declare-fun e!11061 () Bool)

(declare-fun tp!18997 () Bool)

(declare-fun tp!18998 () Bool)

(assert (=> b!27614 (= e!11061 (and tp!18997 tp!18998))))

(assert (=> b!27486 (= tp!18913 e!11061)))

(assert (= (and b!27486 ((_ is Cons!128) (exprs!503 thiss!29345))) b!27614))

(check-sat (not b!27605) (not b!27614) (not bm!2521) (not b!27607) (not b!27609) (not b!27608) (not b!27601) (not b!27592) (not b!27540) (not b!27600) (not d!1851) (not b!27596) tp_is_empty!287 (not bm!2522) (not b!27603) (not b!27604) (not b!27597) (not b!27593) (not b!27595) (not b!27591) (not b!27599) (not d!1857))
(check-sat)
(get-model)

(declare-fun d!1869 () Bool)

(declare-fun nullableFct!5 (Regex!121) Bool)

(assert (=> d!1869 (= (nullable!6 (reg!450 r!4862)) (nullableFct!5 (reg!450 r!4862)))))

(declare-fun bs!395 () Bool)

(assert (= bs!395 d!1869))

(declare-fun m!4261 () Bool)

(assert (=> bs!395 m!4261))

(assert (=> b!27540 d!1869))

(declare-fun d!1871 () Bool)

(declare-fun res!25703 () Bool)

(declare-fun e!11086 () Bool)

(assert (=> d!1871 (=> res!25703 e!11086)))

(assert (=> d!1871 (= res!25703 ((_ is Nil!128) (exprs!503 (Context!7 ($colon$colon!4 (exprs!503 thiss!29345) r!4862)))))))

(assert (=> d!1871 (= (forall!13 (exprs!503 (Context!7 ($colon$colon!4 (exprs!503 thiss!29345) r!4862))) lambda!10) e!11086)))

(declare-fun b!27643 () Bool)

(declare-fun e!11087 () Bool)

(assert (=> b!27643 (= e!11086 e!11087)))

(declare-fun res!25704 () Bool)

(assert (=> b!27643 (=> (not res!25704) (not e!11087))))

(declare-fun dynLambda!0 (Int Regex!121) Bool)

(assert (=> b!27643 (= res!25704 (dynLambda!0 lambda!10 (h!5524 (exprs!503 (Context!7 ($colon$colon!4 (exprs!503 thiss!29345) r!4862))))))))

(declare-fun b!27644 () Bool)

(assert (=> b!27644 (= e!11087 (forall!13 (t!14609 (exprs!503 (Context!7 ($colon$colon!4 (exprs!503 thiss!29345) r!4862)))) lambda!10))))

(assert (= (and d!1871 (not res!25703)) b!27643))

(assert (= (and b!27643 res!25704) b!27644))

(declare-fun b_lambda!3 () Bool)

(assert (=> (not b_lambda!3) (not b!27643)))

(declare-fun m!4265 () Bool)

(assert (=> b!27643 m!4265))

(declare-fun m!4267 () Bool)

(assert (=> b!27644 m!4267))

(assert (=> d!1857 d!1871))

(declare-fun b!27647 () Bool)

(declare-fun res!25711 () Bool)

(declare-fun e!11093 () Bool)

(assert (=> b!27647 (=> (not res!25711) (not e!11093))))

(declare-fun call!2535 () Bool)

(assert (=> b!27647 (= res!25711 call!2535)))

(declare-fun e!11090 () Bool)

(assert (=> b!27647 (= e!11090 e!11093)))

(declare-fun b!27648 () Bool)

(declare-fun e!11096 () Bool)

(declare-fun e!11095 () Bool)

(assert (=> b!27648 (= e!11096 e!11095)))

(declare-fun c!14764 () Bool)

(assert (=> b!27648 (= c!14764 ((_ is Star!121) (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862)))))))

(declare-fun bm!2530 () Bool)

(declare-fun call!2536 () Bool)

(declare-fun c!14765 () Bool)

(assert (=> bm!2530 (= call!2536 (validRegex!2 (ite c!14764 (reg!450 (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862)))) (ite c!14765 (regTwo!755 (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862)))) (regTwo!754 (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862))))))))))

(declare-fun bm!2531 () Bool)

(assert (=> bm!2531 (= call!2535 (validRegex!2 (ite c!14765 (regOne!755 (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862)))) (regOne!754 (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862)))))))))

(declare-fun b!27649 () Bool)

(assert (=> b!27649 (= e!11095 e!11090)))

(assert (=> b!27649 (= c!14765 ((_ is Union!121) (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862)))))))

(declare-fun b!27650 () Bool)

(declare-fun e!11092 () Bool)

(assert (=> b!27650 (= e!11092 call!2536)))

(declare-fun b!27651 () Bool)

(assert (=> b!27651 (= e!11095 e!11092)))

(declare-fun res!25710 () Bool)

(assert (=> b!27651 (= res!25710 (not (nullable!6 (reg!450 (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862)))))))))

(assert (=> b!27651 (=> (not res!25710) (not e!11092))))

(declare-fun b!27652 () Bool)

(declare-fun res!25707 () Bool)

(declare-fun e!11091 () Bool)

(assert (=> b!27652 (=> res!25707 e!11091)))

(assert (=> b!27652 (= res!25707 (not ((_ is Concat!201) (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862))))))))

(assert (=> b!27652 (= e!11090 e!11091)))

(declare-fun b!27653 () Bool)

(declare-fun e!11094 () Bool)

(assert (=> b!27653 (= e!11091 e!11094)))

(declare-fun res!25709 () Bool)

(assert (=> b!27653 (=> (not res!25709) (not e!11094))))

(assert (=> b!27653 (= res!25709 call!2535)))

(declare-fun bm!2532 () Bool)

(declare-fun call!2537 () Bool)

(assert (=> bm!2532 (= call!2537 call!2536)))

(declare-fun d!1873 () Bool)

(declare-fun res!25708 () Bool)

(assert (=> d!1873 (=> res!25708 e!11096)))

(assert (=> d!1873 (= res!25708 ((_ is ElementMatch!121) (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862)))))))

(assert (=> d!1873 (= (validRegex!2 (ite c!14758 (reg!450 r!4862) (ite c!14759 (regTwo!755 r!4862) (regTwo!754 r!4862)))) e!11096)))

(declare-fun b!27654 () Bool)

(assert (=> b!27654 (= e!11094 call!2537)))

(declare-fun b!27655 () Bool)

(assert (=> b!27655 (= e!11093 call!2537)))

(assert (= (and d!1873 (not res!25708)) b!27648))

(assert (= (and b!27648 c!14764) b!27651))

(assert (= (and b!27648 (not c!14764)) b!27649))

(assert (= (and b!27651 res!25710) b!27650))

(assert (= (and b!27649 c!14765) b!27647))

(assert (= (and b!27649 (not c!14765)) b!27652))

(assert (= (and b!27647 res!25711) b!27655))

(assert (= (and b!27652 (not res!25707)) b!27653))

(assert (= (and b!27653 res!25709) b!27654))

(assert (= (or b!27647 b!27653) bm!2531))

(assert (= (or b!27655 b!27654) bm!2532))

(assert (= (or b!27650 bm!2532) bm!2530))

(declare-fun m!4275 () Bool)

(assert (=> bm!2530 m!4275))

(declare-fun m!4277 () Bool)

(assert (=> bm!2531 m!4277))

(declare-fun m!4279 () Bool)

(assert (=> b!27651 m!4279))

(assert (=> bm!2521 d!1873))

(declare-fun b!27660 () Bool)

(declare-fun res!25716 () Bool)

(declare-fun e!11101 () Bool)

(assert (=> b!27660 (=> (not res!25716) (not e!11101))))

(declare-fun call!2538 () Bool)

(assert (=> b!27660 (= res!25716 call!2538)))

(declare-fun e!11098 () Bool)

(assert (=> b!27660 (= e!11098 e!11101)))

(declare-fun b!27661 () Bool)

(declare-fun e!11104 () Bool)

(declare-fun e!11103 () Bool)

(assert (=> b!27661 (= e!11104 e!11103)))

(declare-fun c!14766 () Bool)

(assert (=> b!27661 (= c!14766 ((_ is Star!121) (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862))))))

(declare-fun bm!2533 () Bool)

(declare-fun c!14767 () Bool)

(declare-fun call!2539 () Bool)

(assert (=> bm!2533 (= call!2539 (validRegex!2 (ite c!14766 (reg!450 (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862))) (ite c!14767 (regTwo!755 (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862))) (regTwo!754 (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862)))))))))

(declare-fun bm!2534 () Bool)

(assert (=> bm!2534 (= call!2538 (validRegex!2 (ite c!14767 (regOne!755 (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862))) (regOne!754 (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862))))))))

(declare-fun b!27662 () Bool)

(assert (=> b!27662 (= e!11103 e!11098)))

(assert (=> b!27662 (= c!14767 ((_ is Union!121) (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862))))))

(declare-fun b!27663 () Bool)

(declare-fun e!11100 () Bool)

(assert (=> b!27663 (= e!11100 call!2539)))

(declare-fun b!27664 () Bool)

(assert (=> b!27664 (= e!11103 e!11100)))

(declare-fun res!25715 () Bool)

(assert (=> b!27664 (= res!25715 (not (nullable!6 (reg!450 (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862))))))))

(assert (=> b!27664 (=> (not res!25715) (not e!11100))))

(declare-fun b!27665 () Bool)

(declare-fun res!25712 () Bool)

(declare-fun e!11099 () Bool)

(assert (=> b!27665 (=> res!25712 e!11099)))

(assert (=> b!27665 (= res!25712 (not ((_ is Concat!201) (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862)))))))

(assert (=> b!27665 (= e!11098 e!11099)))

(declare-fun b!27666 () Bool)

(declare-fun e!11102 () Bool)

(assert (=> b!27666 (= e!11099 e!11102)))

(declare-fun res!25714 () Bool)

(assert (=> b!27666 (=> (not res!25714) (not e!11102))))

(assert (=> b!27666 (= res!25714 call!2538)))

(declare-fun bm!2535 () Bool)

(declare-fun call!2540 () Bool)

(assert (=> bm!2535 (= call!2540 call!2539)))

(declare-fun d!1877 () Bool)

(declare-fun res!25713 () Bool)

(assert (=> d!1877 (=> res!25713 e!11104)))

(assert (=> d!1877 (= res!25713 ((_ is ElementMatch!121) (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862))))))

(assert (=> d!1877 (= (validRegex!2 (ite c!14759 (regOne!755 r!4862) (regOne!754 r!4862))) e!11104)))

(declare-fun b!27667 () Bool)

(assert (=> b!27667 (= e!11102 call!2540)))

(declare-fun b!27668 () Bool)

(assert (=> b!27668 (= e!11101 call!2540)))

(assert (= (and d!1877 (not res!25713)) b!27661))

(assert (= (and b!27661 c!14766) b!27664))

(assert (= (and b!27661 (not c!14766)) b!27662))

(assert (= (and b!27664 res!25715) b!27663))

(assert (= (and b!27662 c!14767) b!27660))

(assert (= (and b!27662 (not c!14767)) b!27665))

(assert (= (and b!27660 res!25716) b!27668))

(assert (= (and b!27665 (not res!25712)) b!27666))

(assert (= (and b!27666 res!25714) b!27667))

(assert (= (or b!27660 b!27666) bm!2534))

(assert (= (or b!27668 b!27667) bm!2535))

(assert (= (or b!27663 bm!2535) bm!2533))

(declare-fun m!4281 () Bool)

(assert (=> bm!2533 m!4281))

(declare-fun m!4283 () Bool)

(assert (=> bm!2534 m!4283))

(declare-fun m!4285 () Bool)

(assert (=> b!27664 m!4285))

(assert (=> bm!2522 d!1877))

(declare-fun d!1879 () Bool)

(declare-fun res!25717 () Bool)

(declare-fun e!11108 () Bool)

(assert (=> d!1879 (=> res!25717 e!11108)))

(assert (=> d!1879 (= res!25717 ((_ is Nil!128) (exprs!503 thiss!29345)))))

(assert (=> d!1879 (= (forall!13 (exprs!503 thiss!29345) lambda!9) e!11108)))

(declare-fun b!27681 () Bool)

(declare-fun e!11109 () Bool)

(assert (=> b!27681 (= e!11108 e!11109)))

(declare-fun res!25718 () Bool)

(assert (=> b!27681 (=> (not res!25718) (not e!11109))))

(assert (=> b!27681 (= res!25718 (dynLambda!0 lambda!9 (h!5524 (exprs!503 thiss!29345))))))

(declare-fun b!27682 () Bool)

(assert (=> b!27682 (= e!11109 (forall!13 (t!14609 (exprs!503 thiss!29345)) lambda!9))))

(assert (= (and d!1879 (not res!25717)) b!27681))

(assert (= (and b!27681 res!25718) b!27682))

(declare-fun b_lambda!7 () Bool)

(assert (=> (not b_lambda!7) (not b!27681)))

(declare-fun m!4287 () Bool)

(assert (=> b!27681 m!4287))

(declare-fun m!4289 () Bool)

(assert (=> b!27682 m!4289))

(assert (=> d!1851 d!1879))

(declare-fun e!11113 () Bool)

(assert (=> b!27597 (= tp!18975 e!11113)))

(declare-fun b!27696 () Bool)

(declare-fun tp!19038 () Bool)

(declare-fun tp!19037 () Bool)

(assert (=> b!27696 (= e!11113 (and tp!19038 tp!19037))))

(declare-fun b!27695 () Bool)

(assert (=> b!27695 (= e!11113 tp_is_empty!287)))

(declare-fun b!27697 () Bool)

(declare-fun tp!19035 () Bool)

(assert (=> b!27697 (= e!11113 tp!19035)))

(declare-fun b!27698 () Bool)

(declare-fun tp!19036 () Bool)

(declare-fun tp!19034 () Bool)

(assert (=> b!27698 (= e!11113 (and tp!19036 tp!19034))))

(assert (= (and b!27597 ((_ is ElementMatch!121) (regOne!755 (regTwo!754 r!4862)))) b!27695))

(assert (= (and b!27597 ((_ is Concat!201) (regOne!755 (regTwo!754 r!4862)))) b!27696))

(assert (= (and b!27597 ((_ is Star!121) (regOne!755 (regTwo!754 r!4862)))) b!27697))

(assert (= (and b!27597 ((_ is Union!121) (regOne!755 (regTwo!754 r!4862)))) b!27698))

(declare-fun e!11115 () Bool)

(assert (=> b!27597 (= tp!18973 e!11115)))

(declare-fun b!27704 () Bool)

(declare-fun tp!19048 () Bool)

(declare-fun tp!19047 () Bool)

(assert (=> b!27704 (= e!11115 (and tp!19048 tp!19047))))

(declare-fun b!27703 () Bool)

(assert (=> b!27703 (= e!11115 tp_is_empty!287)))

(declare-fun b!27705 () Bool)

(declare-fun tp!19045 () Bool)

(assert (=> b!27705 (= e!11115 tp!19045)))

(declare-fun b!27706 () Bool)

(declare-fun tp!19046 () Bool)

(declare-fun tp!19044 () Bool)

(assert (=> b!27706 (= e!11115 (and tp!19046 tp!19044))))

(assert (= (and b!27597 ((_ is ElementMatch!121) (regTwo!755 (regTwo!754 r!4862)))) b!27703))

(assert (= (and b!27597 ((_ is Concat!201) (regTwo!755 (regTwo!754 r!4862)))) b!27704))

(assert (= (and b!27597 ((_ is Star!121) (regTwo!755 (regTwo!754 r!4862)))) b!27705))

(assert (= (and b!27597 ((_ is Union!121) (regTwo!755 (regTwo!754 r!4862)))) b!27706))

(declare-fun e!11117 () Bool)

(assert (=> b!27592 (= tp!18969 e!11117)))

(declare-fun b!27712 () Bool)

(declare-fun tp!19058 () Bool)

(declare-fun tp!19057 () Bool)

(assert (=> b!27712 (= e!11117 (and tp!19058 tp!19057))))

(declare-fun b!27711 () Bool)

(assert (=> b!27711 (= e!11117 tp_is_empty!287)))

(declare-fun b!27713 () Bool)

(declare-fun tp!19055 () Bool)

(assert (=> b!27713 (= e!11117 tp!19055)))

(declare-fun b!27714 () Bool)

(declare-fun tp!19056 () Bool)

(declare-fun tp!19054 () Bool)

(assert (=> b!27714 (= e!11117 (and tp!19056 tp!19054))))

(assert (= (and b!27592 ((_ is ElementMatch!121) (reg!450 (regOne!754 r!4862)))) b!27711))

(assert (= (and b!27592 ((_ is Concat!201) (reg!450 (regOne!754 r!4862)))) b!27712))

(assert (= (and b!27592 ((_ is Star!121) (reg!450 (regOne!754 r!4862)))) b!27713))

(assert (= (and b!27592 ((_ is Union!121) (reg!450 (regOne!754 r!4862)))) b!27714))

(declare-fun e!11119 () Bool)

(assert (=> b!27601 (= tp!18980 e!11119)))

(declare-fun b!27720 () Bool)

(declare-fun tp!19068 () Bool)

(declare-fun tp!19067 () Bool)

(assert (=> b!27720 (= e!11119 (and tp!19068 tp!19067))))

(declare-fun b!27719 () Bool)

(assert (=> b!27719 (= e!11119 tp_is_empty!287)))

(declare-fun b!27721 () Bool)

(declare-fun tp!19065 () Bool)

(assert (=> b!27721 (= e!11119 tp!19065)))

(declare-fun b!27722 () Bool)

(declare-fun tp!19066 () Bool)

(declare-fun tp!19063 () Bool)

(assert (=> b!27722 (= e!11119 (and tp!19066 tp!19063))))

(assert (= (and b!27601 ((_ is ElementMatch!121) (regOne!755 (reg!450 r!4862)))) b!27719))

(assert (= (and b!27601 ((_ is Concat!201) (regOne!755 (reg!450 r!4862)))) b!27720))

(assert (= (and b!27601 ((_ is Star!121) (regOne!755 (reg!450 r!4862)))) b!27721))

(assert (= (and b!27601 ((_ is Union!121) (regOne!755 (reg!450 r!4862)))) b!27722))

(declare-fun e!11120 () Bool)

(assert (=> b!27601 (= tp!18978 e!11120)))

(declare-fun b!27724 () Bool)

(declare-fun tp!19073 () Bool)

(declare-fun tp!19072 () Bool)

(assert (=> b!27724 (= e!11120 (and tp!19073 tp!19072))))

(declare-fun b!27723 () Bool)

(assert (=> b!27723 (= e!11120 tp_is_empty!287)))

(declare-fun b!27725 () Bool)

(declare-fun tp!19070 () Bool)

(assert (=> b!27725 (= e!11120 tp!19070)))

(declare-fun b!27726 () Bool)

(declare-fun tp!19071 () Bool)

(declare-fun tp!19069 () Bool)

(assert (=> b!27726 (= e!11120 (and tp!19071 tp!19069))))

(assert (= (and b!27601 ((_ is ElementMatch!121) (regTwo!755 (reg!450 r!4862)))) b!27723))

(assert (= (and b!27601 ((_ is Concat!201) (regTwo!755 (reg!450 r!4862)))) b!27724))

(assert (= (and b!27601 ((_ is Star!121) (regTwo!755 (reg!450 r!4862)))) b!27725))

(assert (= (and b!27601 ((_ is Union!121) (regTwo!755 (reg!450 r!4862)))) b!27726))

(declare-fun e!11122 () Bool)

(assert (=> b!27596 (= tp!18974 e!11122)))

(declare-fun b!27732 () Bool)

(declare-fun tp!19083 () Bool)

(declare-fun tp!19082 () Bool)

(assert (=> b!27732 (= e!11122 (and tp!19083 tp!19082))))

(declare-fun b!27731 () Bool)

(assert (=> b!27731 (= e!11122 tp_is_empty!287)))

(declare-fun b!27733 () Bool)

(declare-fun tp!19080 () Bool)

(assert (=> b!27733 (= e!11122 tp!19080)))

(declare-fun b!27734 () Bool)

(declare-fun tp!19081 () Bool)

(declare-fun tp!19079 () Bool)

(assert (=> b!27734 (= e!11122 (and tp!19081 tp!19079))))

(assert (= (and b!27596 ((_ is ElementMatch!121) (reg!450 (regTwo!754 r!4862)))) b!27731))

(assert (= (and b!27596 ((_ is Concat!201) (reg!450 (regTwo!754 r!4862)))) b!27732))

(assert (= (and b!27596 ((_ is Star!121) (reg!450 (regTwo!754 r!4862)))) b!27733))

(assert (= (and b!27596 ((_ is Union!121) (reg!450 (regTwo!754 r!4862)))) b!27734))

(declare-fun e!11123 () Bool)

(assert (=> b!27593 (= tp!18970 e!11123)))

(declare-fun b!27736 () Bool)

(declare-fun tp!19088 () Bool)

(declare-fun tp!19087 () Bool)

(assert (=> b!27736 (= e!11123 (and tp!19088 tp!19087))))

(declare-fun b!27735 () Bool)

(assert (=> b!27735 (= e!11123 tp_is_empty!287)))

(declare-fun b!27737 () Bool)

(declare-fun tp!19085 () Bool)

(assert (=> b!27737 (= e!11123 tp!19085)))

(declare-fun b!27738 () Bool)

(declare-fun tp!19086 () Bool)

(declare-fun tp!19084 () Bool)

(assert (=> b!27738 (= e!11123 (and tp!19086 tp!19084))))

(assert (= (and b!27593 ((_ is ElementMatch!121) (regOne!755 (regOne!754 r!4862)))) b!27735))

(assert (= (and b!27593 ((_ is Concat!201) (regOne!755 (regOne!754 r!4862)))) b!27736))

(assert (= (and b!27593 ((_ is Star!121) (regOne!755 (regOne!754 r!4862)))) b!27737))

(assert (= (and b!27593 ((_ is Union!121) (regOne!755 (regOne!754 r!4862)))) b!27738))

(declare-fun e!11124 () Bool)

(assert (=> b!27593 (= tp!18968 e!11124)))

(declare-fun b!27740 () Bool)

(declare-fun tp!19093 () Bool)

(declare-fun tp!19092 () Bool)

(assert (=> b!27740 (= e!11124 (and tp!19093 tp!19092))))

(declare-fun b!27739 () Bool)

(assert (=> b!27739 (= e!11124 tp_is_empty!287)))

(declare-fun b!27741 () Bool)

(declare-fun tp!19090 () Bool)

(assert (=> b!27741 (= e!11124 tp!19090)))

(declare-fun b!27742 () Bool)

(declare-fun tp!19091 () Bool)

(declare-fun tp!19089 () Bool)

(assert (=> b!27742 (= e!11124 (and tp!19091 tp!19089))))

(assert (= (and b!27593 ((_ is ElementMatch!121) (regTwo!755 (regOne!754 r!4862)))) b!27739))

(assert (= (and b!27593 ((_ is Concat!201) (regTwo!755 (regOne!754 r!4862)))) b!27740))

(assert (= (and b!27593 ((_ is Star!121) (regTwo!755 (regOne!754 r!4862)))) b!27741))

(assert (= (and b!27593 ((_ is Union!121) (regTwo!755 (regOne!754 r!4862)))) b!27742))

(declare-fun e!11126 () Bool)

(assert (=> b!27599 (= tp!18982 e!11126)))

(declare-fun b!27748 () Bool)

(declare-fun tp!19103 () Bool)

(declare-fun tp!19102 () Bool)

(assert (=> b!27748 (= e!11126 (and tp!19103 tp!19102))))

(declare-fun b!27747 () Bool)

(assert (=> b!27747 (= e!11126 tp_is_empty!287)))

(declare-fun b!27749 () Bool)

(declare-fun tp!19100 () Bool)

(assert (=> b!27749 (= e!11126 tp!19100)))

(declare-fun b!27750 () Bool)

(declare-fun tp!19101 () Bool)

(declare-fun tp!19098 () Bool)

(assert (=> b!27750 (= e!11126 (and tp!19101 tp!19098))))

(assert (= (and b!27599 ((_ is ElementMatch!121) (regOne!754 (reg!450 r!4862)))) b!27747))

(assert (= (and b!27599 ((_ is Concat!201) (regOne!754 (reg!450 r!4862)))) b!27748))

(assert (= (and b!27599 ((_ is Star!121) (regOne!754 (reg!450 r!4862)))) b!27749))

(assert (= (and b!27599 ((_ is Union!121) (regOne!754 (reg!450 r!4862)))) b!27750))

(declare-fun e!11127 () Bool)

(assert (=> b!27599 (= tp!18981 e!11127)))

(declare-fun b!27752 () Bool)

(declare-fun tp!19108 () Bool)

(declare-fun tp!19107 () Bool)

(assert (=> b!27752 (= e!11127 (and tp!19108 tp!19107))))

(declare-fun b!27751 () Bool)

(assert (=> b!27751 (= e!11127 tp_is_empty!287)))

(declare-fun b!27753 () Bool)

(declare-fun tp!19105 () Bool)

(assert (=> b!27753 (= e!11127 tp!19105)))

(declare-fun b!27754 () Bool)

(declare-fun tp!19106 () Bool)

(declare-fun tp!19104 () Bool)

(assert (=> b!27754 (= e!11127 (and tp!19106 tp!19104))))

(assert (= (and b!27599 ((_ is ElementMatch!121) (regTwo!754 (reg!450 r!4862)))) b!27751))

(assert (= (and b!27599 ((_ is Concat!201) (regTwo!754 (reg!450 r!4862)))) b!27752))

(assert (= (and b!27599 ((_ is Star!121) (regTwo!754 (reg!450 r!4862)))) b!27753))

(assert (= (and b!27599 ((_ is Union!121) (regTwo!754 (reg!450 r!4862)))) b!27754))

(declare-fun e!11129 () Bool)

(assert (=> b!27608 (= tp!18989 e!11129)))

(declare-fun b!27760 () Bool)

(declare-fun tp!19118 () Bool)

(declare-fun tp!19117 () Bool)

(assert (=> b!27760 (= e!11129 (and tp!19118 tp!19117))))

(declare-fun b!27759 () Bool)

(assert (=> b!27759 (= e!11129 tp_is_empty!287)))

(declare-fun b!27761 () Bool)

(declare-fun tp!19115 () Bool)

(assert (=> b!27761 (= e!11129 tp!19115)))

(declare-fun b!27762 () Bool)

(declare-fun tp!19116 () Bool)

(declare-fun tp!19114 () Bool)

(assert (=> b!27762 (= e!11129 (and tp!19116 tp!19114))))

(assert (= (and b!27608 ((_ is ElementMatch!121) (reg!450 (regTwo!755 r!4862)))) b!27759))

(assert (= (and b!27608 ((_ is Concat!201) (reg!450 (regTwo!755 r!4862)))) b!27760))

(assert (= (and b!27608 ((_ is Star!121) (reg!450 (regTwo!755 r!4862)))) b!27761))

(assert (= (and b!27608 ((_ is Union!121) (reg!450 (regTwo!755 r!4862)))) b!27762))

(declare-fun e!11130 () Bool)

(assert (=> b!27603 (= tp!18987 e!11130)))

(declare-fun b!27764 () Bool)

(declare-fun tp!19123 () Bool)

(declare-fun tp!19122 () Bool)

(assert (=> b!27764 (= e!11130 (and tp!19123 tp!19122))))

(declare-fun b!27763 () Bool)

(assert (=> b!27763 (= e!11130 tp_is_empty!287)))

(declare-fun b!27765 () Bool)

(declare-fun tp!19120 () Bool)

(assert (=> b!27765 (= e!11130 tp!19120)))

(declare-fun b!27766 () Bool)

(declare-fun tp!19121 () Bool)

(declare-fun tp!19119 () Bool)

(assert (=> b!27766 (= e!11130 (and tp!19121 tp!19119))))

(assert (= (and b!27603 ((_ is ElementMatch!121) (regOne!754 (regOne!755 r!4862)))) b!27763))

(assert (= (and b!27603 ((_ is Concat!201) (regOne!754 (regOne!755 r!4862)))) b!27764))

(assert (= (and b!27603 ((_ is Star!121) (regOne!754 (regOne!755 r!4862)))) b!27765))

(assert (= (and b!27603 ((_ is Union!121) (regOne!754 (regOne!755 r!4862)))) b!27766))

(declare-fun e!11132 () Bool)

(assert (=> b!27603 (= tp!18986 e!11132)))

(declare-fun b!27772 () Bool)

(declare-fun tp!19133 () Bool)

(declare-fun tp!19132 () Bool)

(assert (=> b!27772 (= e!11132 (and tp!19133 tp!19132))))

(declare-fun b!27771 () Bool)

(assert (=> b!27771 (= e!11132 tp_is_empty!287)))

(declare-fun b!27773 () Bool)

(declare-fun tp!19130 () Bool)

(assert (=> b!27773 (= e!11132 tp!19130)))

(declare-fun b!27774 () Bool)

(declare-fun tp!19131 () Bool)

(declare-fun tp!19129 () Bool)

(assert (=> b!27774 (= e!11132 (and tp!19131 tp!19129))))

(assert (= (and b!27603 ((_ is ElementMatch!121) (regTwo!754 (regOne!755 r!4862)))) b!27771))

(assert (= (and b!27603 ((_ is Concat!201) (regTwo!754 (regOne!755 r!4862)))) b!27772))

(assert (= (and b!27603 ((_ is Star!121) (regTwo!754 (regOne!755 r!4862)))) b!27773))

(assert (= (and b!27603 ((_ is Union!121) (regTwo!754 (regOne!755 r!4862)))) b!27774))

(declare-fun e!11134 () Bool)

(assert (=> b!27605 (= tp!18985 e!11134)))

(declare-fun b!27780 () Bool)

(declare-fun tp!19143 () Bool)

(declare-fun tp!19142 () Bool)

(assert (=> b!27780 (= e!11134 (and tp!19143 tp!19142))))

(declare-fun b!27779 () Bool)

(assert (=> b!27779 (= e!11134 tp_is_empty!287)))

(declare-fun b!27781 () Bool)

(declare-fun tp!19140 () Bool)

(assert (=> b!27781 (= e!11134 tp!19140)))

(declare-fun b!27782 () Bool)

(declare-fun tp!19141 () Bool)

(declare-fun tp!19139 () Bool)

(assert (=> b!27782 (= e!11134 (and tp!19141 tp!19139))))

(assert (= (and b!27605 ((_ is ElementMatch!121) (regOne!755 (regOne!755 r!4862)))) b!27779))

(assert (= (and b!27605 ((_ is Concat!201) (regOne!755 (regOne!755 r!4862)))) b!27780))

(assert (= (and b!27605 ((_ is Star!121) (regOne!755 (regOne!755 r!4862)))) b!27781))

(assert (= (and b!27605 ((_ is Union!121) (regOne!755 (regOne!755 r!4862)))) b!27782))

(declare-fun e!11135 () Bool)

(assert (=> b!27605 (= tp!18983 e!11135)))

(declare-fun b!27784 () Bool)

(declare-fun tp!19148 () Bool)

(declare-fun tp!19147 () Bool)

(assert (=> b!27784 (= e!11135 (and tp!19148 tp!19147))))

(declare-fun b!27783 () Bool)

(assert (=> b!27783 (= e!11135 tp_is_empty!287)))

(declare-fun b!27785 () Bool)

(declare-fun tp!19145 () Bool)

(assert (=> b!27785 (= e!11135 tp!19145)))

(declare-fun b!27786 () Bool)

(declare-fun tp!19146 () Bool)

(declare-fun tp!19144 () Bool)

(assert (=> b!27786 (= e!11135 (and tp!19146 tp!19144))))

(assert (= (and b!27605 ((_ is ElementMatch!121) (regTwo!755 (regOne!755 r!4862)))) b!27783))

(assert (= (and b!27605 ((_ is Concat!201) (regTwo!755 (regOne!755 r!4862)))) b!27784))

(assert (= (and b!27605 ((_ is Star!121) (regTwo!755 (regOne!755 r!4862)))) b!27785))

(assert (= (and b!27605 ((_ is Union!121) (regTwo!755 (regOne!755 r!4862)))) b!27786))

(declare-fun e!11137 () Bool)

(assert (=> b!27591 (= tp!18972 e!11137)))

(declare-fun b!27792 () Bool)

(declare-fun tp!19158 () Bool)

(declare-fun tp!19157 () Bool)

(assert (=> b!27792 (= e!11137 (and tp!19158 tp!19157))))

(declare-fun b!27791 () Bool)

(assert (=> b!27791 (= e!11137 tp_is_empty!287)))

(declare-fun b!27793 () Bool)

(declare-fun tp!19155 () Bool)

(assert (=> b!27793 (= e!11137 tp!19155)))

(declare-fun b!27794 () Bool)

(declare-fun tp!19156 () Bool)

(declare-fun tp!19154 () Bool)

(assert (=> b!27794 (= e!11137 (and tp!19156 tp!19154))))

(assert (= (and b!27591 ((_ is ElementMatch!121) (regOne!754 (regOne!754 r!4862)))) b!27791))

(assert (= (and b!27591 ((_ is Concat!201) (regOne!754 (regOne!754 r!4862)))) b!27792))

(assert (= (and b!27591 ((_ is Star!121) (regOne!754 (regOne!754 r!4862)))) b!27793))

(assert (= (and b!27591 ((_ is Union!121) (regOne!754 (regOne!754 r!4862)))) b!27794))

(declare-fun e!11139 () Bool)

(assert (=> b!27591 (= tp!18971 e!11139)))

(declare-fun b!27800 () Bool)

(declare-fun tp!19168 () Bool)

(declare-fun tp!19167 () Bool)

(assert (=> b!27800 (= e!11139 (and tp!19168 tp!19167))))

(declare-fun b!27799 () Bool)

(assert (=> b!27799 (= e!11139 tp_is_empty!287)))

(declare-fun b!27801 () Bool)

(declare-fun tp!19165 () Bool)

(assert (=> b!27801 (= e!11139 tp!19165)))

(declare-fun b!27802 () Bool)

(declare-fun tp!19166 () Bool)

(declare-fun tp!19164 () Bool)

(assert (=> b!27802 (= e!11139 (and tp!19166 tp!19164))))

(assert (= (and b!27591 ((_ is ElementMatch!121) (regTwo!754 (regOne!754 r!4862)))) b!27799))

(assert (= (and b!27591 ((_ is Concat!201) (regTwo!754 (regOne!754 r!4862)))) b!27800))

(assert (= (and b!27591 ((_ is Star!121) (regTwo!754 (regOne!754 r!4862)))) b!27801))

(assert (= (and b!27591 ((_ is Union!121) (regTwo!754 (regOne!754 r!4862)))) b!27802))

(declare-fun e!11142 () Bool)

(assert (=> b!27600 (= tp!18979 e!11142)))

(declare-fun b!27809 () Bool)

(declare-fun tp!19182 () Bool)

(declare-fun tp!19181 () Bool)

(assert (=> b!27809 (= e!11142 (and tp!19182 tp!19181))))

(declare-fun b!27807 () Bool)

(assert (=> b!27807 (= e!11142 tp_is_empty!287)))

(declare-fun b!27811 () Bool)

(declare-fun tp!19179 () Bool)

(assert (=> b!27811 (= e!11142 tp!19179)))

(declare-fun b!27813 () Bool)

(declare-fun tp!19180 () Bool)

(declare-fun tp!19177 () Bool)

(assert (=> b!27813 (= e!11142 (and tp!19180 tp!19177))))

(assert (= (and b!27600 ((_ is ElementMatch!121) (reg!450 (reg!450 r!4862)))) b!27807))

(assert (= (and b!27600 ((_ is Concat!201) (reg!450 (reg!450 r!4862)))) b!27809))

(assert (= (and b!27600 ((_ is Star!121) (reg!450 (reg!450 r!4862)))) b!27811))

(assert (= (and b!27600 ((_ is Union!121) (reg!450 (reg!450 r!4862)))) b!27813))

(declare-fun e!11144 () Bool)

(assert (=> b!27609 (= tp!18990 e!11144)))

(declare-fun b!27820 () Bool)

(declare-fun tp!19193 () Bool)

(declare-fun tp!19192 () Bool)

(assert (=> b!27820 (= e!11144 (and tp!19193 tp!19192))))

(declare-fun b!27819 () Bool)

(assert (=> b!27819 (= e!11144 tp_is_empty!287)))

(declare-fun b!27821 () Bool)

(declare-fun tp!19190 () Bool)

(assert (=> b!27821 (= e!11144 tp!19190)))

(declare-fun b!27822 () Bool)

(declare-fun tp!19191 () Bool)

(declare-fun tp!19189 () Bool)

(assert (=> b!27822 (= e!11144 (and tp!19191 tp!19189))))

(assert (= (and b!27609 ((_ is ElementMatch!121) (regOne!755 (regTwo!755 r!4862)))) b!27819))

(assert (= (and b!27609 ((_ is Concat!201) (regOne!755 (regTwo!755 r!4862)))) b!27820))

(assert (= (and b!27609 ((_ is Star!121) (regOne!755 (regTwo!755 r!4862)))) b!27821))

(assert (= (and b!27609 ((_ is Union!121) (regOne!755 (regTwo!755 r!4862)))) b!27822))

(declare-fun e!11146 () Bool)

(assert (=> b!27609 (= tp!18988 e!11146)))

(declare-fun b!27828 () Bool)

(declare-fun tp!19203 () Bool)

(declare-fun tp!19202 () Bool)

(assert (=> b!27828 (= e!11146 (and tp!19203 tp!19202))))

(declare-fun b!27827 () Bool)

(assert (=> b!27827 (= e!11146 tp_is_empty!287)))

(declare-fun b!27829 () Bool)

(declare-fun tp!19200 () Bool)

(assert (=> b!27829 (= e!11146 tp!19200)))

(declare-fun b!27830 () Bool)

(declare-fun tp!19201 () Bool)

(declare-fun tp!19199 () Bool)

(assert (=> b!27830 (= e!11146 (and tp!19201 tp!19199))))

(assert (= (and b!27609 ((_ is ElementMatch!121) (regTwo!755 (regTwo!755 r!4862)))) b!27827))

(assert (= (and b!27609 ((_ is Concat!201) (regTwo!755 (regTwo!755 r!4862)))) b!27828))

(assert (= (and b!27609 ((_ is Star!121) (regTwo!755 (regTwo!755 r!4862)))) b!27829))

(assert (= (and b!27609 ((_ is Union!121) (regTwo!755 (regTwo!755 r!4862)))) b!27830))

(declare-fun e!11148 () Bool)

(assert (=> b!27595 (= tp!18977 e!11148)))

(declare-fun b!27836 () Bool)

(declare-fun tp!19213 () Bool)

(declare-fun tp!19212 () Bool)

(assert (=> b!27836 (= e!11148 (and tp!19213 tp!19212))))

(declare-fun b!27835 () Bool)

(assert (=> b!27835 (= e!11148 tp_is_empty!287)))

(declare-fun b!27837 () Bool)

(declare-fun tp!19210 () Bool)

(assert (=> b!27837 (= e!11148 tp!19210)))

(declare-fun b!27838 () Bool)

(declare-fun tp!19211 () Bool)

(declare-fun tp!19209 () Bool)

(assert (=> b!27838 (= e!11148 (and tp!19211 tp!19209))))

(assert (= (and b!27595 ((_ is ElementMatch!121) (regOne!754 (regTwo!754 r!4862)))) b!27835))

(assert (= (and b!27595 ((_ is Concat!201) (regOne!754 (regTwo!754 r!4862)))) b!27836))

(assert (= (and b!27595 ((_ is Star!121) (regOne!754 (regTwo!754 r!4862)))) b!27837))

(assert (= (and b!27595 ((_ is Union!121) (regOne!754 (regTwo!754 r!4862)))) b!27838))

(declare-fun e!11150 () Bool)

(assert (=> b!27595 (= tp!18976 e!11150)))

(declare-fun b!27841 () Bool)

(declare-fun tp!19220 () Bool)

(declare-fun tp!19219 () Bool)

(assert (=> b!27841 (= e!11150 (and tp!19220 tp!19219))))

(declare-fun b!27840 () Bool)

(assert (=> b!27840 (= e!11150 tp_is_empty!287)))

(declare-fun b!27842 () Bool)

(declare-fun tp!19217 () Bool)

(assert (=> b!27842 (= e!11150 tp!19217)))

(declare-fun b!27843 () Bool)

(declare-fun tp!19218 () Bool)

(declare-fun tp!19216 () Bool)

(assert (=> b!27843 (= e!11150 (and tp!19218 tp!19216))))

(assert (= (and b!27595 ((_ is ElementMatch!121) (regTwo!754 (regTwo!754 r!4862)))) b!27840))

(assert (= (and b!27595 ((_ is Concat!201) (regTwo!754 (regTwo!754 r!4862)))) b!27841))

(assert (= (and b!27595 ((_ is Star!121) (regTwo!754 (regTwo!754 r!4862)))) b!27842))

(assert (= (and b!27595 ((_ is Union!121) (regTwo!754 (regTwo!754 r!4862)))) b!27843))

(declare-fun e!11152 () Bool)

(assert (=> b!27604 (= tp!18984 e!11152)))

(declare-fun b!27849 () Bool)

(declare-fun tp!19230 () Bool)

(declare-fun tp!19229 () Bool)

(assert (=> b!27849 (= e!11152 (and tp!19230 tp!19229))))

(declare-fun b!27848 () Bool)

(assert (=> b!27848 (= e!11152 tp_is_empty!287)))

(declare-fun b!27850 () Bool)

(declare-fun tp!19227 () Bool)

(assert (=> b!27850 (= e!11152 tp!19227)))

(declare-fun b!27851 () Bool)

(declare-fun tp!19228 () Bool)

(declare-fun tp!19226 () Bool)

(assert (=> b!27851 (= e!11152 (and tp!19228 tp!19226))))

(assert (= (and b!27604 ((_ is ElementMatch!121) (reg!450 (regOne!755 r!4862)))) b!27848))

(assert (= (and b!27604 ((_ is Concat!201) (reg!450 (regOne!755 r!4862)))) b!27849))

(assert (= (and b!27604 ((_ is Star!121) (reg!450 (regOne!755 r!4862)))) b!27850))

(assert (= (and b!27604 ((_ is Union!121) (reg!450 (regOne!755 r!4862)))) b!27851))

(declare-fun e!11154 () Bool)

(assert (=> b!27614 (= tp!18997 e!11154)))

(declare-fun b!27857 () Bool)

(declare-fun tp!19242 () Bool)

(declare-fun tp!19240 () Bool)

(assert (=> b!27857 (= e!11154 (and tp!19242 tp!19240))))

(declare-fun b!27856 () Bool)

(assert (=> b!27856 (= e!11154 tp_is_empty!287)))

(declare-fun b!27858 () Bool)

(declare-fun tp!19237 () Bool)

(assert (=> b!27858 (= e!11154 tp!19237)))

(declare-fun b!27859 () Bool)

(declare-fun tp!19238 () Bool)

(declare-fun tp!19236 () Bool)

(assert (=> b!27859 (= e!11154 (and tp!19238 tp!19236))))

(assert (= (and b!27614 ((_ is ElementMatch!121) (h!5524 (exprs!503 thiss!29345)))) b!27856))

(assert (= (and b!27614 ((_ is Concat!201) (h!5524 (exprs!503 thiss!29345)))) b!27857))

(assert (= (and b!27614 ((_ is Star!121) (h!5524 (exprs!503 thiss!29345)))) b!27858))

(assert (= (and b!27614 ((_ is Union!121) (h!5524 (exprs!503 thiss!29345)))) b!27859))

(declare-fun b!27868 () Bool)

(declare-fun e!11157 () Bool)

(declare-fun tp!19251 () Bool)

(declare-fun tp!19252 () Bool)

(assert (=> b!27868 (= e!11157 (and tp!19251 tp!19252))))

(assert (=> b!27614 (= tp!18998 e!11157)))

(assert (= (and b!27614 ((_ is Cons!128) (t!14609 (exprs!503 thiss!29345)))) b!27868))

(declare-fun e!11158 () Bool)

(assert (=> b!27607 (= tp!18992 e!11158)))

(declare-fun b!27870 () Bool)

(declare-fun tp!19257 () Bool)

(declare-fun tp!19256 () Bool)

(assert (=> b!27870 (= e!11158 (and tp!19257 tp!19256))))

(declare-fun b!27869 () Bool)

(assert (=> b!27869 (= e!11158 tp_is_empty!287)))

(declare-fun b!27871 () Bool)

(declare-fun tp!19254 () Bool)

(assert (=> b!27871 (= e!11158 tp!19254)))

(declare-fun b!27872 () Bool)

(declare-fun tp!19255 () Bool)

(declare-fun tp!19253 () Bool)

(assert (=> b!27872 (= e!11158 (and tp!19255 tp!19253))))

(assert (= (and b!27607 ((_ is ElementMatch!121) (regOne!754 (regTwo!755 r!4862)))) b!27869))

(assert (= (and b!27607 ((_ is Concat!201) (regOne!754 (regTwo!755 r!4862)))) b!27870))

(assert (= (and b!27607 ((_ is Star!121) (regOne!754 (regTwo!755 r!4862)))) b!27871))

(assert (= (and b!27607 ((_ is Union!121) (regOne!754 (regTwo!755 r!4862)))) b!27872))

(declare-fun e!11159 () Bool)

(assert (=> b!27607 (= tp!18991 e!11159)))

(declare-fun b!27874 () Bool)

(declare-fun tp!19262 () Bool)

(declare-fun tp!19261 () Bool)

(assert (=> b!27874 (= e!11159 (and tp!19262 tp!19261))))

(declare-fun b!27873 () Bool)

(assert (=> b!27873 (= e!11159 tp_is_empty!287)))

(declare-fun b!27875 () Bool)

(declare-fun tp!19259 () Bool)

(assert (=> b!27875 (= e!11159 tp!19259)))

(declare-fun b!27876 () Bool)

(declare-fun tp!19260 () Bool)

(declare-fun tp!19258 () Bool)

(assert (=> b!27876 (= e!11159 (and tp!19260 tp!19258))))

(assert (= (and b!27607 ((_ is ElementMatch!121) (regTwo!754 (regTwo!755 r!4862)))) b!27873))

(assert (= (and b!27607 ((_ is Concat!201) (regTwo!754 (regTwo!755 r!4862)))) b!27874))

(assert (= (and b!27607 ((_ is Star!121) (regTwo!754 (regTwo!755 r!4862)))) b!27875))

(assert (= (and b!27607 ((_ is Union!121) (regTwo!754 (regTwo!755 r!4862)))) b!27876))

(declare-fun b_lambda!13 () Bool)

(assert (= b_lambda!7 (or d!1851 b_lambda!13)))

(declare-fun bs!397 () Bool)

(declare-fun d!1883 () Bool)

(assert (= bs!397 (and d!1883 d!1851)))

(assert (=> bs!397 (= (dynLambda!0 lambda!9 (h!5524 (exprs!503 thiss!29345))) (validRegex!2 (h!5524 (exprs!503 thiss!29345))))))

(declare-fun m!4291 () Bool)

(assert (=> bs!397 m!4291))

(assert (=> b!27681 d!1883))

(declare-fun b_lambda!15 () Bool)

(assert (= b_lambda!3 (or d!1857 b_lambda!15)))

(declare-fun bs!398 () Bool)

(declare-fun d!1885 () Bool)

(assert (= bs!398 (and d!1885 d!1857)))

(assert (=> bs!398 (= (dynLambda!0 lambda!10 (h!5524 (exprs!503 (Context!7 ($colon$colon!4 (exprs!503 thiss!29345) r!4862))))) (validRegex!2 (h!5524 (exprs!503 (Context!7 ($colon$colon!4 (exprs!503 thiss!29345) r!4862))))))))

(declare-fun m!4295 () Bool)

(assert (=> bs!398 m!4295))

(assert (=> b!27643 d!1885))

(check-sat (not b!27801) (not b!27838) (not b!27734) (not b!27752) (not b!27830) (not b!27786) (not b!27774) (not b!27876) (not b!27842) (not b!27828) (not b!27870) (not b!27858) (not b!27794) (not bm!2533) (not b!27875) (not b!27706) (not b!27726) (not b!27793) (not b!27764) (not b!27760) (not b!27849) (not b!27773) (not b!27836) (not b!27704) (not b!27698) (not b!27872) (not b!27871) (not b!27868) (not b!27741) (not b!27725) (not b!27762) (not b!27785) (not b!27713) (not bm!2531) (not b!27765) (not b!27712) (not b!27651) (not b!27733) (not b!27737) (not b!27822) (not b!27722) (not b!27874) (not b!27782) (not b!27724) (not b!27644) (not b!27754) (not b!27837) (not b!27682) (not b!27714) (not b!27697) (not b!27750) (not b!27705) (not b!27720) (not b!27772) tp_is_empty!287 (not b!27857) (not b_lambda!15) (not b!27736) (not b!27740) (not b!27784) (not b!27780) (not b!27761) (not bm!2534) (not b!27696) (not bs!398) (not b!27813) (not b!27851) (not b!27721) (not b!27820) (not b!27742) (not b!27829) (not b!27749) (not b!27792) (not b!27753) (not b!27843) (not b!27732) (not b!27802) (not b!27748) (not b_lambda!13) (not b!27859) (not b!27850) (not b!27664) (not b!27738) (not bm!2530) (not b!27800) (not b!27811) (not b!27766) (not d!1869) (not b!27841) (not b!27821) (not bs!397) (not b!27809) (not b!27781))
(check-sat)

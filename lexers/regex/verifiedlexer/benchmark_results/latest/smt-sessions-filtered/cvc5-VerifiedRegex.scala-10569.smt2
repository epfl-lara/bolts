; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!544054 () Bool)

(assert start!544054)

(declare-fun res!2188384 () Bool)

(declare-fun e!3204820 () Bool)

(assert (=> start!544054 (=> (not res!2188384) (not e!3204820))))

(declare-datatypes ((C!29122 0))(
  ( (C!29123 (val!24213 Int)) )
))
(declare-datatypes ((Regex!14428 0))(
  ( (ElementMatch!14428 (c!884698 C!29122)) (Concat!23273 (regOne!29368 Regex!14428) (regTwo!29368 Regex!14428)) (EmptyExpr!14428) (Star!14428 (reg!14757 Regex!14428)) (EmptyLang!14428) (Union!14428 (regOne!29369 Regex!14428) (regTwo!29369 Regex!14428)) )
))
(declare-fun expr!117 () Regex!14428)

(declare-fun validRegex!6283 (Regex!14428) Bool)

(assert (=> start!544054 (= res!2188384 (validRegex!6283 expr!117))))

(assert (=> start!544054 e!3204820))

(declare-fun e!3204818 () Bool)

(assert (=> start!544054 e!3204818))

(declare-datatypes ((List!59790 0))(
  ( (Nil!59666) (Cons!59666 (h!66114 Regex!14428) (t!372821 List!59790)) )
))
(declare-datatypes ((Context!7624 0))(
  ( (Context!7625 (exprs!4312 List!59790)) )
))
(declare-fun ctx!100 () Context!7624)

(declare-fun e!3204819 () Bool)

(declare-fun inv!79252 (Context!7624) Bool)

(assert (=> start!544054 (and (inv!79252 ctx!100) e!3204819)))

(declare-fun tp_is_empty!38005 () Bool)

(assert (=> start!544054 tp_is_empty!38005))

(declare-fun b!5138032 () Bool)

(assert (=> b!5138032 (= e!3204820 (not (validRegex!6283 (regOne!29369 expr!117))))))

(declare-fun a!1296 () C!29122)

(declare-fun lostCauseZipper!1244 ((Set Context!7624)) Bool)

(declare-fun derivationStepZipperDown!125 (Regex!14428 Context!7624 C!29122) (Set Context!7624))

(assert (=> b!5138032 (lostCauseZipper!1244 (derivationStepZipperDown!125 (regTwo!29369 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151027 0))(
  ( (Unit!151028) )
))
(declare-fun lt!2119852 () Unit!151027)

(declare-fun lemmaLostCauseFixPointDerivDown!17 (Regex!14428 Context!7624 C!29122) Unit!151027)

(assert (=> b!5138032 (= lt!2119852 (lemmaLostCauseFixPointDerivDown!17 (regTwo!29369 expr!117) ctx!100 a!1296))))

(assert (=> b!5138032 (lostCauseZipper!1244 (derivationStepZipperDown!125 (regOne!29369 expr!117) ctx!100 a!1296))))

(declare-fun lt!2119851 () Unit!151027)

(assert (=> b!5138032 (= lt!2119851 (lemmaLostCauseFixPointDerivDown!17 (regOne!29369 expr!117) ctx!100 a!1296))))

(declare-fun b!5138033 () Bool)

(declare-fun e!3204821 () Bool)

(declare-fun lostCause!1408 (Context!7624) Bool)

(assert (=> b!5138033 (= e!3204821 (lostCause!1408 ctx!100))))

(declare-fun b!5138034 () Bool)

(declare-fun tp!1432948 () Bool)

(assert (=> b!5138034 (= e!3204818 tp!1432948)))

(declare-fun b!5138035 () Bool)

(assert (=> b!5138035 (= e!3204818 tp_is_empty!38005)))

(declare-fun b!5138036 () Bool)

(declare-fun res!2188382 () Bool)

(assert (=> b!5138036 (=> (not res!2188382) (not e!3204820))))

(assert (=> b!5138036 (= res!2188382 (and (or (not (is-ElementMatch!14428 expr!117)) (not (= (c!884698 expr!117) a!1296))) (is-Union!14428 expr!117)))))

(declare-fun b!5138037 () Bool)

(declare-fun tp!1432951 () Bool)

(declare-fun tp!1432950 () Bool)

(assert (=> b!5138037 (= e!3204818 (and tp!1432951 tp!1432950))))

(declare-fun b!5138038 () Bool)

(declare-fun tp!1432953 () Bool)

(assert (=> b!5138038 (= e!3204819 tp!1432953)))

(declare-fun b!5138039 () Bool)

(declare-fun res!2188383 () Bool)

(assert (=> b!5138039 (=> (not res!2188383) (not e!3204820))))

(assert (=> b!5138039 (= res!2188383 e!3204821)))

(declare-fun res!2188381 () Bool)

(assert (=> b!5138039 (=> res!2188381 e!3204821)))

(declare-fun lostCause!1409 (Regex!14428) Bool)

(assert (=> b!5138039 (= res!2188381 (lostCause!1409 expr!117))))

(declare-fun b!5138040 () Bool)

(declare-fun tp!1432952 () Bool)

(declare-fun tp!1432949 () Bool)

(assert (=> b!5138040 (= e!3204818 (and tp!1432952 tp!1432949))))

(assert (= (and start!544054 res!2188384) b!5138039))

(assert (= (and b!5138039 (not res!2188381)) b!5138033))

(assert (= (and b!5138039 res!2188383) b!5138036))

(assert (= (and b!5138036 res!2188382) b!5138032))

(assert (= (and start!544054 (is-ElementMatch!14428 expr!117)) b!5138035))

(assert (= (and start!544054 (is-Concat!23273 expr!117)) b!5138037))

(assert (= (and start!544054 (is-Star!14428 expr!117)) b!5138034))

(assert (= (and start!544054 (is-Union!14428 expr!117)) b!5138040))

(assert (= start!544054 b!5138038))

(declare-fun m!6203028 () Bool)

(assert (=> start!544054 m!6203028))

(declare-fun m!6203030 () Bool)

(assert (=> start!544054 m!6203030))

(declare-fun m!6203032 () Bool)

(assert (=> b!5138032 m!6203032))

(declare-fun m!6203034 () Bool)

(assert (=> b!5138032 m!6203034))

(assert (=> b!5138032 m!6203032))

(declare-fun m!6203036 () Bool)

(assert (=> b!5138032 m!6203036))

(declare-fun m!6203038 () Bool)

(assert (=> b!5138032 m!6203038))

(declare-fun m!6203040 () Bool)

(assert (=> b!5138032 m!6203040))

(declare-fun m!6203042 () Bool)

(assert (=> b!5138032 m!6203042))

(assert (=> b!5138032 m!6203036))

(declare-fun m!6203044 () Bool)

(assert (=> b!5138032 m!6203044))

(declare-fun m!6203046 () Bool)

(assert (=> b!5138033 m!6203046))

(declare-fun m!6203048 () Bool)

(assert (=> b!5138039 m!6203048))

(push 1)

(assert (not b!5138040))

(assert (not start!544054))

(assert (not b!5138038))

(assert (not b!5138037))

(assert tp_is_empty!38005)

(assert (not b!5138033))

(assert (not b!5138039))

(assert (not b!5138034))

(assert (not b!5138032))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1662452 () Bool)

(declare-fun lostCauseFct!339 (Regex!14428) Bool)

(assert (=> d!1662452 (= (lostCause!1409 expr!117) (lostCauseFct!339 expr!117))))

(declare-fun bs!1200494 () Bool)

(assert (= bs!1200494 d!1662452))

(declare-fun m!6203072 () Bool)

(assert (=> bs!1200494 m!6203072))

(assert (=> b!5138039 d!1662452))

(declare-fun d!1662454 () Bool)

(assert (=> d!1662454 (lostCauseZipper!1244 (derivationStepZipperDown!125 (regTwo!29369 expr!117) ctx!100 a!1296))))

(declare-fun lt!2119861 () Unit!151027)

(declare-fun choose!38031 (Regex!14428 Context!7624 C!29122) Unit!151027)

(assert (=> d!1662454 (= lt!2119861 (choose!38031 (regTwo!29369 expr!117) ctx!100 a!1296))))

(assert (=> d!1662454 (validRegex!6283 (regTwo!29369 expr!117))))

(assert (=> d!1662454 (= (lemmaLostCauseFixPointDerivDown!17 (regTwo!29369 expr!117) ctx!100 a!1296) lt!2119861)))

(declare-fun bs!1200495 () Bool)

(assert (= bs!1200495 d!1662454))

(assert (=> bs!1200495 m!6203032))

(assert (=> bs!1200495 m!6203032))

(assert (=> bs!1200495 m!6203034))

(declare-fun m!6203074 () Bool)

(assert (=> bs!1200495 m!6203074))

(declare-fun m!6203076 () Bool)

(assert (=> bs!1200495 m!6203076))

(assert (=> b!5138032 d!1662454))

(declare-fun b!5138104 () Bool)

(declare-fun res!2188421 () Bool)

(declare-fun e!3204863 () Bool)

(assert (=> b!5138104 (=> (not res!2188421) (not e!3204863))))

(declare-fun call!358398 () Bool)

(assert (=> b!5138104 (= res!2188421 call!358398)))

(declare-fun e!3204866 () Bool)

(assert (=> b!5138104 (= e!3204866 e!3204863)))

(declare-fun bm!358393 () Bool)

(declare-fun c!884709 () Bool)

(declare-fun c!884708 () Bool)

(declare-fun call!358400 () Bool)

(assert (=> bm!358393 (= call!358400 (validRegex!6283 (ite c!884708 (reg!14757 (regOne!29369 expr!117)) (ite c!884709 (regTwo!29369 (regOne!29369 expr!117)) (regTwo!29368 (regOne!29369 expr!117))))))))

(declare-fun d!1662458 () Bool)

(declare-fun res!2188420 () Bool)

(declare-fun e!3204862 () Bool)

(assert (=> d!1662458 (=> res!2188420 e!3204862)))

(assert (=> d!1662458 (= res!2188420 (is-ElementMatch!14428 (regOne!29369 expr!117)))))

(assert (=> d!1662458 (= (validRegex!6283 (regOne!29369 expr!117)) e!3204862)))

(declare-fun b!5138105 () Bool)

(declare-fun call!358399 () Bool)

(assert (=> b!5138105 (= e!3204863 call!358399)))

(declare-fun b!5138106 () Bool)

(declare-fun e!3204864 () Bool)

(declare-fun e!3204865 () Bool)

(assert (=> b!5138106 (= e!3204864 e!3204865)))

(declare-fun res!2188419 () Bool)

(assert (=> b!5138106 (=> (not res!2188419) (not e!3204865))))

(assert (=> b!5138106 (= res!2188419 call!358398)))

(declare-fun b!5138107 () Bool)

(declare-fun e!3204868 () Bool)

(assert (=> b!5138107 (= e!3204868 e!3204866)))

(assert (=> b!5138107 (= c!884709 (is-Union!14428 (regOne!29369 expr!117)))))

(declare-fun bm!358394 () Bool)

(assert (=> bm!358394 (= call!358398 (validRegex!6283 (ite c!884709 (regOne!29369 (regOne!29369 expr!117)) (regOne!29368 (regOne!29369 expr!117)))))))

(declare-fun b!5138108 () Bool)

(assert (=> b!5138108 (= e!3204865 call!358399)))

(declare-fun b!5138109 () Bool)

(declare-fun res!2188417 () Bool)

(assert (=> b!5138109 (=> res!2188417 e!3204864)))

(assert (=> b!5138109 (= res!2188417 (not (is-Concat!23273 (regOne!29369 expr!117))))))

(assert (=> b!5138109 (= e!3204866 e!3204864)))

(declare-fun b!5138110 () Bool)

(declare-fun e!3204867 () Bool)

(assert (=> b!5138110 (= e!3204868 e!3204867)))

(declare-fun res!2188418 () Bool)

(declare-fun nullable!4793 (Regex!14428) Bool)

(assert (=> b!5138110 (= res!2188418 (not (nullable!4793 (reg!14757 (regOne!29369 expr!117)))))))

(assert (=> b!5138110 (=> (not res!2188418) (not e!3204867))))

(declare-fun b!5138111 () Bool)

(assert (=> b!5138111 (= e!3204867 call!358400)))

(declare-fun b!5138112 () Bool)

(assert (=> b!5138112 (= e!3204862 e!3204868)))

(assert (=> b!5138112 (= c!884708 (is-Star!14428 (regOne!29369 expr!117)))))

(declare-fun bm!358395 () Bool)

(assert (=> bm!358395 (= call!358399 call!358400)))

(assert (= (and d!1662458 (not res!2188420)) b!5138112))

(assert (= (and b!5138112 c!884708) b!5138110))

(assert (= (and b!5138112 (not c!884708)) b!5138107))

(assert (= (and b!5138110 res!2188418) b!5138111))

(assert (= (and b!5138107 c!884709) b!5138104))

(assert (= (and b!5138107 (not c!884709)) b!5138109))

(assert (= (and b!5138104 res!2188421) b!5138105))

(assert (= (and b!5138109 (not res!2188417)) b!5138106))

(assert (= (and b!5138106 res!2188419) b!5138108))

(assert (= (or b!5138105 b!5138108) bm!358395))

(assert (= (or b!5138104 b!5138106) bm!358394))

(assert (= (or b!5138111 bm!358395) bm!358393))

(declare-fun m!6203078 () Bool)

(assert (=> bm!358393 m!6203078))

(declare-fun m!6203080 () Bool)

(assert (=> bm!358394 m!6203080))

(declare-fun m!6203082 () Bool)

(assert (=> b!5138110 m!6203082))

(assert (=> b!5138032 d!1662458))

(declare-fun bs!1200496 () Bool)

(declare-fun b!5138126 () Bool)

(declare-fun d!1662460 () Bool)

(assert (= bs!1200496 (and b!5138126 d!1662460)))

(declare-fun lambda!256218 () Int)

(declare-fun lambda!256217 () Int)

(assert (=> bs!1200496 (not (= lambda!256218 lambda!256217))))

(declare-fun bs!1200497 () Bool)

(declare-fun b!5138127 () Bool)

(assert (= bs!1200497 (and b!5138127 d!1662460)))

(declare-fun lambda!256219 () Int)

(assert (=> bs!1200497 (not (= lambda!256219 lambda!256217))))

(declare-fun bs!1200498 () Bool)

(assert (= bs!1200498 (and b!5138127 b!5138126)))

(assert (=> bs!1200498 (= lambda!256219 lambda!256218)))

(declare-datatypes ((List!59792 0))(
  ( (Nil!59668) (Cons!59668 (h!66116 Context!7624) (t!372823 List!59792)) )
))
(declare-fun call!358409 () List!59792)

(declare-fun bm!358404 () Bool)

(declare-fun toList!8376 ((Set Context!7624)) List!59792)

(assert (=> bm!358404 (= call!358409 (toList!8376 (derivationStepZipperDown!125 (regOne!29369 expr!117) ctx!100 a!1296)))))

(declare-fun lt!2119885 () List!59792)

(declare-fun c!884722 () Bool)

(declare-fun bm!358403 () Bool)

(declare-fun call!358408 () Bool)

(declare-fun lt!2119883 () List!59792)

(declare-fun exists!1764 (List!59792 Int) Bool)

(assert (=> bm!358403 (= call!358408 (exists!1764 (ite c!884722 lt!2119885 lt!2119883) (ite c!884722 lambda!256218 lambda!256219)))))

(declare-fun lt!2119881 () Bool)

(declare-datatypes ((List!59793 0))(
  ( (Nil!59669) (Cons!59669 (h!66117 C!29122) (t!372824 List!59793)) )
))
(declare-datatypes ((Option!14774 0))(
  ( (None!14773) (Some!14773 (v!50802 List!59793)) )
))
(declare-fun isEmpty!32035 (Option!14774) Bool)

(declare-fun getLanguageWitness!923 ((Set Context!7624)) Option!14774)

(assert (=> d!1662460 (= lt!2119881 (isEmpty!32035 (getLanguageWitness!923 (derivationStepZipperDown!125 (regOne!29369 expr!117) ctx!100 a!1296))))))

(declare-fun forall!13895 ((Set Context!7624) Int) Bool)

(assert (=> d!1662460 (= lt!2119881 (forall!13895 (derivationStepZipperDown!125 (regOne!29369 expr!117) ctx!100 a!1296) lambda!256217))))

(declare-fun lt!2119880 () Unit!151027)

(declare-fun e!3204882 () Unit!151027)

(assert (=> d!1662460 (= lt!2119880 e!3204882)))

(assert (=> d!1662460 (= c!884722 (not (forall!13895 (derivationStepZipperDown!125 (regOne!29369 expr!117) ctx!100 a!1296) lambda!256217)))))

(assert (=> d!1662460 (= (lostCauseZipper!1244 (derivationStepZipperDown!125 (regOne!29369 expr!117) ctx!100 a!1296)) lt!2119881)))

(declare-fun Unit!151031 () Unit!151027)

(assert (=> b!5138127 (= e!3204882 Unit!151031)))

(assert (=> b!5138127 (= lt!2119883 call!358409)))

(declare-fun lt!2119882 () Unit!151027)

(declare-fun lemmaForallThenNotExists!390 (List!59792 Int) Unit!151027)

(assert (=> b!5138127 (= lt!2119882 (lemmaForallThenNotExists!390 lt!2119883 lambda!256217))))

(assert (=> b!5138127 (not call!358408)))

(declare-fun lt!2119884 () Unit!151027)

(assert (=> b!5138127 (= lt!2119884 lt!2119882)))

(declare-fun Unit!151032 () Unit!151027)

(assert (=> b!5138126 (= e!3204882 Unit!151032)))

(assert (=> b!5138126 (= lt!2119885 call!358409)))

(declare-fun lt!2119878 () Unit!151027)

(declare-fun lemmaNotForallThenExists!423 (List!59792 Int) Unit!151027)

(assert (=> b!5138126 (= lt!2119878 (lemmaNotForallThenExists!423 lt!2119885 lambda!256217))))

(assert (=> b!5138126 call!358408))

(declare-fun lt!2119879 () Unit!151027)

(assert (=> b!5138126 (= lt!2119879 lt!2119878)))

(assert (= (and d!1662460 c!884722) b!5138126))

(assert (= (and d!1662460 (not c!884722)) b!5138127))

(assert (= (or b!5138126 b!5138127) bm!358403))

(assert (= (or b!5138126 b!5138127) bm!358404))

(declare-fun m!6203090 () Bool)

(assert (=> b!5138126 m!6203090))

(declare-fun m!6203092 () Bool)

(assert (=> b!5138127 m!6203092))

(assert (=> d!1662460 m!6203036))

(declare-fun m!6203094 () Bool)

(assert (=> d!1662460 m!6203094))

(assert (=> d!1662460 m!6203094))

(declare-fun m!6203096 () Bool)

(assert (=> d!1662460 m!6203096))

(assert (=> d!1662460 m!6203036))

(declare-fun m!6203098 () Bool)

(assert (=> d!1662460 m!6203098))

(assert (=> d!1662460 m!6203036))

(assert (=> d!1662460 m!6203098))

(declare-fun m!6203100 () Bool)

(assert (=> bm!358403 m!6203100))

(assert (=> bm!358404 m!6203036))

(declare-fun m!6203102 () Bool)

(assert (=> bm!358404 m!6203102))

(assert (=> b!5138032 d!1662460))

(declare-fun d!1662464 () Bool)

(assert (=> d!1662464 (lostCauseZipper!1244 (derivationStepZipperDown!125 (regOne!29369 expr!117) ctx!100 a!1296))))

(declare-fun lt!2119886 () Unit!151027)

(assert (=> d!1662464 (= lt!2119886 (choose!38031 (regOne!29369 expr!117) ctx!100 a!1296))))

(assert (=> d!1662464 (validRegex!6283 (regOne!29369 expr!117))))

(assert (=> d!1662464 (= (lemmaLostCauseFixPointDerivDown!17 (regOne!29369 expr!117) ctx!100 a!1296) lt!2119886)))

(declare-fun bs!1200499 () Bool)

(assert (= bs!1200499 d!1662464))

(assert (=> bs!1200499 m!6203036))

(assert (=> bs!1200499 m!6203036))

(assert (=> bs!1200499 m!6203044))

(declare-fun m!6203104 () Bool)

(assert (=> bs!1200499 m!6203104))

(assert (=> bs!1200499 m!6203042))

(assert (=> b!5138032 d!1662464))

(declare-fun bs!1200500 () Bool)

(declare-fun d!1662466 () Bool)

(assert (= bs!1200500 (and d!1662466 d!1662460)))

(declare-fun lambda!256220 () Int)

(assert (=> bs!1200500 (= lambda!256220 lambda!256217)))

(declare-fun bs!1200501 () Bool)

(assert (= bs!1200501 (and d!1662466 b!5138126)))

(assert (=> bs!1200501 (not (= lambda!256220 lambda!256218))))

(declare-fun bs!1200502 () Bool)

(assert (= bs!1200502 (and d!1662466 b!5138127)))

(assert (=> bs!1200502 (not (= lambda!256220 lambda!256219))))

(declare-fun bs!1200503 () Bool)

(declare-fun b!5138128 () Bool)

(assert (= bs!1200503 (and b!5138128 d!1662460)))

(declare-fun lambda!256221 () Int)

(assert (=> bs!1200503 (not (= lambda!256221 lambda!256217))))

(declare-fun bs!1200504 () Bool)

(assert (= bs!1200504 (and b!5138128 b!5138126)))

(assert (=> bs!1200504 (= lambda!256221 lambda!256218)))

(declare-fun bs!1200505 () Bool)

(assert (= bs!1200505 (and b!5138128 b!5138127)))

(assert (=> bs!1200505 (= lambda!256221 lambda!256219)))

(declare-fun bs!1200506 () Bool)

(assert (= bs!1200506 (and b!5138128 d!1662466)))

(assert (=> bs!1200506 (not (= lambda!256221 lambda!256220))))

(declare-fun bs!1200507 () Bool)

(declare-fun b!5138129 () Bool)

(assert (= bs!1200507 (and b!5138129 b!5138126)))

(declare-fun lambda!256222 () Int)

(assert (=> bs!1200507 (= lambda!256222 lambda!256218)))

(declare-fun bs!1200508 () Bool)

(assert (= bs!1200508 (and b!5138129 b!5138127)))

(assert (=> bs!1200508 (= lambda!256222 lambda!256219)))

(declare-fun bs!1200509 () Bool)

(assert (= bs!1200509 (and b!5138129 d!1662466)))

(assert (=> bs!1200509 (not (= lambda!256222 lambda!256220))))

(declare-fun bs!1200510 () Bool)

(assert (= bs!1200510 (and b!5138129 d!1662460)))

(assert (=> bs!1200510 (not (= lambda!256222 lambda!256217))))

(declare-fun bs!1200511 () Bool)

(assert (= bs!1200511 (and b!5138129 b!5138128)))

(assert (=> bs!1200511 (= lambda!256222 lambda!256221)))

(declare-fun call!358411 () List!59792)

(declare-fun bm!358406 () Bool)

(assert (=> bm!358406 (= call!358411 (toList!8376 (derivationStepZipperDown!125 (regTwo!29369 expr!117) ctx!100 a!1296)))))

(declare-fun lt!2119894 () List!59792)

(declare-fun c!884723 () Bool)

(declare-fun call!358410 () Bool)

(declare-fun bm!358405 () Bool)

(declare-fun lt!2119892 () List!59792)

(assert (=> bm!358405 (= call!358410 (exists!1764 (ite c!884723 lt!2119894 lt!2119892) (ite c!884723 lambda!256221 lambda!256222)))))

(declare-fun lt!2119890 () Bool)

(assert (=> d!1662466 (= lt!2119890 (isEmpty!32035 (getLanguageWitness!923 (derivationStepZipperDown!125 (regTwo!29369 expr!117) ctx!100 a!1296))))))

(assert (=> d!1662466 (= lt!2119890 (forall!13895 (derivationStepZipperDown!125 (regTwo!29369 expr!117) ctx!100 a!1296) lambda!256220))))

(declare-fun lt!2119889 () Unit!151027)

(declare-fun e!3204883 () Unit!151027)

(assert (=> d!1662466 (= lt!2119889 e!3204883)))

(assert (=> d!1662466 (= c!884723 (not (forall!13895 (derivationStepZipperDown!125 (regTwo!29369 expr!117) ctx!100 a!1296) lambda!256220)))))

(assert (=> d!1662466 (= (lostCauseZipper!1244 (derivationStepZipperDown!125 (regTwo!29369 expr!117) ctx!100 a!1296)) lt!2119890)))

(declare-fun Unit!151033 () Unit!151027)

(assert (=> b!5138129 (= e!3204883 Unit!151033)))

(assert (=> b!5138129 (= lt!2119892 call!358411)))

(declare-fun lt!2119891 () Unit!151027)

(assert (=> b!5138129 (= lt!2119891 (lemmaForallThenNotExists!390 lt!2119892 lambda!256220))))

(assert (=> b!5138129 (not call!358410)))

(declare-fun lt!2119893 () Unit!151027)

(assert (=> b!5138129 (= lt!2119893 lt!2119891)))

(declare-fun Unit!151034 () Unit!151027)

(assert (=> b!5138128 (= e!3204883 Unit!151034)))

(assert (=> b!5138128 (= lt!2119894 call!358411)))

(declare-fun lt!2119887 () Unit!151027)

(assert (=> b!5138128 (= lt!2119887 (lemmaNotForallThenExists!423 lt!2119894 lambda!256220))))

(assert (=> b!5138128 call!358410))

(declare-fun lt!2119888 () Unit!151027)

(assert (=> b!5138128 (= lt!2119888 lt!2119887)))

(assert (= (and d!1662466 c!884723) b!5138128))

(assert (= (and d!1662466 (not c!884723)) b!5138129))

(assert (= (or b!5138128 b!5138129) bm!358405))

(assert (= (or b!5138128 b!5138129) bm!358406))

(declare-fun m!6203106 () Bool)

(assert (=> b!5138128 m!6203106))

(declare-fun m!6203108 () Bool)

(assert (=> b!5138129 m!6203108))

(assert (=> d!1662466 m!6203032))

(declare-fun m!6203110 () Bool)

(assert (=> d!1662466 m!6203110))

(assert (=> d!1662466 m!6203110))

(declare-fun m!6203112 () Bool)

(assert (=> d!1662466 m!6203112))

(assert (=> d!1662466 m!6203032))

(declare-fun m!6203114 () Bool)

(assert (=> d!1662466 m!6203114))

(assert (=> d!1662466 m!6203032))

(assert (=> d!1662466 m!6203114))

(declare-fun m!6203116 () Bool)

(assert (=> bm!358405 m!6203116))

(assert (=> bm!358406 m!6203032))

(declare-fun m!6203118 () Bool)

(assert (=> bm!358406 m!6203118))

(assert (=> b!5138032 d!1662466))

(declare-fun b!5138152 () Bool)

(declare-fun e!3204898 () (Set Context!7624))

(assert (=> b!5138152 (= e!3204898 (set.insert ctx!100 (as set.empty (Set Context!7624))))))

(declare-fun call!358425 () List!59790)

(declare-fun call!358429 () (Set Context!7624))

(declare-fun bm!358419 () Bool)

(declare-fun c!884734 () Bool)

(assert (=> bm!358419 (= call!358429 (derivationStepZipperDown!125 (ite c!884734 (regTwo!29369 (regTwo!29369 expr!117)) (regOne!29368 (regTwo!29369 expr!117))) (ite c!884734 ctx!100 (Context!7625 call!358425)) a!1296))))

(declare-fun c!884738 () Bool)

(declare-fun c!884735 () Bool)

(declare-fun bm!358420 () Bool)

(declare-fun $colon$colon!1173 (List!59790 Regex!14428) List!59790)

(assert (=> bm!358420 (= call!358425 ($colon$colon!1173 (exprs!4312 ctx!100) (ite (or c!884738 c!884735) (regTwo!29368 (regTwo!29369 expr!117)) (regTwo!29369 expr!117))))))

(declare-fun b!5138153 () Bool)

(declare-fun e!3204896 () (Set Context!7624))

(declare-fun call!358424 () (Set Context!7624))

(assert (=> b!5138153 (= e!3204896 call!358424)))

(declare-fun bm!358421 () Bool)

(declare-fun call!358426 () List!59790)

(assert (=> bm!358421 (= call!358426 call!358425)))

(declare-fun b!5138154 () Bool)

(declare-fun e!3204900 () (Set Context!7624))

(assert (=> b!5138154 (= e!3204900 (as set.empty (Set Context!7624)))))

(declare-fun b!5138155 () Bool)

(declare-fun c!884737 () Bool)

(assert (=> b!5138155 (= c!884737 (is-Star!14428 (regTwo!29369 expr!117)))))

(assert (=> b!5138155 (= e!3204896 e!3204900)))

(declare-fun b!5138156 () Bool)

(declare-fun e!3204897 () (Set Context!7624))

(declare-fun call!358427 () (Set Context!7624))

(assert (=> b!5138156 (= e!3204897 (set.union call!358429 call!358427))))

(declare-fun b!5138157 () Bool)

(declare-fun e!3204901 () (Set Context!7624))

(assert (=> b!5138157 (= e!3204898 e!3204901)))

(assert (=> b!5138157 (= c!884734 (is-Union!14428 (regTwo!29369 expr!117)))))

(declare-fun b!5138158 () Bool)

(assert (=> b!5138158 (= e!3204900 call!358424)))

(declare-fun bm!358422 () Bool)

(declare-fun call!358428 () (Set Context!7624))

(assert (=> bm!358422 (= call!358427 call!358428)))

(declare-fun bm!358423 () Bool)

(assert (=> bm!358423 (= call!358428 (derivationStepZipperDown!125 (ite c!884734 (regOne!29369 (regTwo!29369 expr!117)) (ite c!884738 (regTwo!29368 (regTwo!29369 expr!117)) (ite c!884735 (regOne!29368 (regTwo!29369 expr!117)) (reg!14757 (regTwo!29369 expr!117))))) (ite (or c!884734 c!884738) ctx!100 (Context!7625 call!358426)) a!1296))))

(declare-fun d!1662468 () Bool)

(declare-fun c!884736 () Bool)

(assert (=> d!1662468 (= c!884736 (and (is-ElementMatch!14428 (regTwo!29369 expr!117)) (= (c!884698 (regTwo!29369 expr!117)) a!1296)))))

(assert (=> d!1662468 (= (derivationStepZipperDown!125 (regTwo!29369 expr!117) ctx!100 a!1296) e!3204898)))

(declare-fun b!5138159 () Bool)

(declare-fun e!3204899 () Bool)

(assert (=> b!5138159 (= c!884738 e!3204899)))

(declare-fun res!2188429 () Bool)

(assert (=> b!5138159 (=> (not res!2188429) (not e!3204899))))

(assert (=> b!5138159 (= res!2188429 (is-Concat!23273 (regTwo!29369 expr!117)))))

(assert (=> b!5138159 (= e!3204901 e!3204897)))

(declare-fun bm!358424 () Bool)

(assert (=> bm!358424 (= call!358424 call!358427)))

(declare-fun b!5138160 () Bool)

(assert (=> b!5138160 (= e!3204899 (nullable!4793 (regOne!29368 (regTwo!29369 expr!117))))))

(declare-fun b!5138161 () Bool)

(assert (=> b!5138161 (= e!3204901 (set.union call!358428 call!358429))))

(declare-fun b!5138162 () Bool)

(assert (=> b!5138162 (= e!3204897 e!3204896)))

(assert (=> b!5138162 (= c!884735 (is-Concat!23273 (regTwo!29369 expr!117)))))

(assert (= (and d!1662468 c!884736) b!5138152))

(assert (= (and d!1662468 (not c!884736)) b!5138157))

(assert (= (and b!5138157 c!884734) b!5138161))

(assert (= (and b!5138157 (not c!884734)) b!5138159))

(assert (= (and b!5138159 res!2188429) b!5138160))

(assert (= (and b!5138159 c!884738) b!5138156))

(assert (= (and b!5138159 (not c!884738)) b!5138162))

(assert (= (and b!5138162 c!884735) b!5138153))

(assert (= (and b!5138162 (not c!884735)) b!5138155))

(assert (= (and b!5138155 c!884737) b!5138158))

(assert (= (and b!5138155 (not c!884737)) b!5138154))

(assert (= (or b!5138153 b!5138158) bm!358421))

(assert (= (or b!5138153 b!5138158) bm!358424))

(assert (= (or b!5138156 bm!358421) bm!358420))

(assert (= (or b!5138156 bm!358424) bm!358422))

(assert (= (or b!5138161 b!5138156) bm!358419))

(assert (= (or b!5138161 bm!358422) bm!358423))

(declare-fun m!6203120 () Bool)

(assert (=> bm!358419 m!6203120))

(declare-fun m!6203122 () Bool)

(assert (=> b!5138160 m!6203122))

(declare-fun m!6203124 () Bool)

(assert (=> bm!358420 m!6203124))

(declare-fun m!6203126 () Bool)

(assert (=> b!5138152 m!6203126))

(declare-fun m!6203128 () Bool)

(assert (=> bm!358423 m!6203128))

(assert (=> b!5138032 d!1662468))

(declare-fun b!5138163 () Bool)

(declare-fun e!3204904 () (Set Context!7624))

(assert (=> b!5138163 (= e!3204904 (set.insert ctx!100 (as set.empty (Set Context!7624))))))

(declare-fun call!358435 () (Set Context!7624))

(declare-fun c!884739 () Bool)

(declare-fun call!358431 () List!59790)

(declare-fun bm!358425 () Bool)

(assert (=> bm!358425 (= call!358435 (derivationStepZipperDown!125 (ite c!884739 (regTwo!29369 (regOne!29369 expr!117)) (regOne!29368 (regOne!29369 expr!117))) (ite c!884739 ctx!100 (Context!7625 call!358431)) a!1296))))

(declare-fun c!884743 () Bool)

(declare-fun c!884740 () Bool)

(declare-fun bm!358426 () Bool)

(assert (=> bm!358426 (= call!358431 ($colon$colon!1173 (exprs!4312 ctx!100) (ite (or c!884743 c!884740) (regTwo!29368 (regOne!29369 expr!117)) (regOne!29369 expr!117))))))

(declare-fun b!5138164 () Bool)

(declare-fun e!3204902 () (Set Context!7624))

(declare-fun call!358430 () (Set Context!7624))

(assert (=> b!5138164 (= e!3204902 call!358430)))

(declare-fun bm!358427 () Bool)

(declare-fun call!358432 () List!59790)

(assert (=> bm!358427 (= call!358432 call!358431)))

(declare-fun b!5138165 () Bool)

(declare-fun e!3204906 () (Set Context!7624))

(assert (=> b!5138165 (= e!3204906 (as set.empty (Set Context!7624)))))

(declare-fun b!5138166 () Bool)

(declare-fun c!884742 () Bool)

(assert (=> b!5138166 (= c!884742 (is-Star!14428 (regOne!29369 expr!117)))))

(assert (=> b!5138166 (= e!3204902 e!3204906)))

(declare-fun b!5138167 () Bool)

(declare-fun e!3204903 () (Set Context!7624))

(declare-fun call!358433 () (Set Context!7624))

(assert (=> b!5138167 (= e!3204903 (set.union call!358435 call!358433))))

(declare-fun b!5138168 () Bool)

(declare-fun e!3204907 () (Set Context!7624))

(assert (=> b!5138168 (= e!3204904 e!3204907)))

(assert (=> b!5138168 (= c!884739 (is-Union!14428 (regOne!29369 expr!117)))))

(declare-fun b!5138169 () Bool)

(assert (=> b!5138169 (= e!3204906 call!358430)))

(declare-fun bm!358428 () Bool)

(declare-fun call!358434 () (Set Context!7624))

(assert (=> bm!358428 (= call!358433 call!358434)))

(declare-fun bm!358429 () Bool)

(assert (=> bm!358429 (= call!358434 (derivationStepZipperDown!125 (ite c!884739 (regOne!29369 (regOne!29369 expr!117)) (ite c!884743 (regTwo!29368 (regOne!29369 expr!117)) (ite c!884740 (regOne!29368 (regOne!29369 expr!117)) (reg!14757 (regOne!29369 expr!117))))) (ite (or c!884739 c!884743) ctx!100 (Context!7625 call!358432)) a!1296))))

(declare-fun d!1662470 () Bool)

(declare-fun c!884741 () Bool)

(assert (=> d!1662470 (= c!884741 (and (is-ElementMatch!14428 (regOne!29369 expr!117)) (= (c!884698 (regOne!29369 expr!117)) a!1296)))))

(assert (=> d!1662470 (= (derivationStepZipperDown!125 (regOne!29369 expr!117) ctx!100 a!1296) e!3204904)))

(declare-fun b!5138170 () Bool)

(declare-fun e!3204905 () Bool)

(assert (=> b!5138170 (= c!884743 e!3204905)))

(declare-fun res!2188430 () Bool)

(assert (=> b!5138170 (=> (not res!2188430) (not e!3204905))))

(assert (=> b!5138170 (= res!2188430 (is-Concat!23273 (regOne!29369 expr!117)))))

(assert (=> b!5138170 (= e!3204907 e!3204903)))

(declare-fun bm!358430 () Bool)

(assert (=> bm!358430 (= call!358430 call!358433)))

(declare-fun b!5138171 () Bool)

(assert (=> b!5138171 (= e!3204905 (nullable!4793 (regOne!29368 (regOne!29369 expr!117))))))

(declare-fun b!5138172 () Bool)

(assert (=> b!5138172 (= e!3204907 (set.union call!358434 call!358435))))

(declare-fun b!5138173 () Bool)

(assert (=> b!5138173 (= e!3204903 e!3204902)))

(assert (=> b!5138173 (= c!884740 (is-Concat!23273 (regOne!29369 expr!117)))))

(assert (= (and d!1662470 c!884741) b!5138163))

(assert (= (and d!1662470 (not c!884741)) b!5138168))

(assert (= (and b!5138168 c!884739) b!5138172))

(assert (= (and b!5138168 (not c!884739)) b!5138170))

(assert (= (and b!5138170 res!2188430) b!5138171))

(assert (= (and b!5138170 c!884743) b!5138167))

(assert (= (and b!5138170 (not c!884743)) b!5138173))

(assert (= (and b!5138173 c!884740) b!5138164))

(assert (= (and b!5138173 (not c!884740)) b!5138166))

(assert (= (and b!5138166 c!884742) b!5138169))

(assert (= (and b!5138166 (not c!884742)) b!5138165))

(assert (= (or b!5138164 b!5138169) bm!358427))

(assert (= (or b!5138164 b!5138169) bm!358430))

(assert (= (or b!5138167 bm!358427) bm!358426))

(assert (= (or b!5138167 bm!358430) bm!358428))

(assert (= (or b!5138172 b!5138167) bm!358425))

(assert (= (or b!5138172 bm!358428) bm!358429))

(declare-fun m!6203130 () Bool)

(assert (=> bm!358425 m!6203130))

(declare-fun m!6203132 () Bool)

(assert (=> b!5138171 m!6203132))

(declare-fun m!6203134 () Bool)

(assert (=> bm!358426 m!6203134))

(assert (=> b!5138163 m!6203126))

(declare-fun m!6203136 () Bool)

(assert (=> bm!358429 m!6203136))

(assert (=> b!5138032 d!1662470))

(declare-fun b!5138174 () Bool)

(declare-fun res!2188435 () Bool)

(declare-fun e!3204909 () Bool)

(assert (=> b!5138174 (=> (not res!2188435) (not e!3204909))))

(declare-fun call!358436 () Bool)

(assert (=> b!5138174 (= res!2188435 call!358436)))

(declare-fun e!3204912 () Bool)

(assert (=> b!5138174 (= e!3204912 e!3204909)))

(declare-fun c!884744 () Bool)

(declare-fun bm!358431 () Bool)

(declare-fun c!884745 () Bool)

(declare-fun call!358438 () Bool)

(assert (=> bm!358431 (= call!358438 (validRegex!6283 (ite c!884744 (reg!14757 expr!117) (ite c!884745 (regTwo!29369 expr!117) (regTwo!29368 expr!117)))))))

(declare-fun d!1662472 () Bool)

(declare-fun res!2188434 () Bool)

(declare-fun e!3204908 () Bool)

(assert (=> d!1662472 (=> res!2188434 e!3204908)))

(assert (=> d!1662472 (= res!2188434 (is-ElementMatch!14428 expr!117))))

(assert (=> d!1662472 (= (validRegex!6283 expr!117) e!3204908)))

(declare-fun b!5138175 () Bool)

(declare-fun call!358437 () Bool)

(assert (=> b!5138175 (= e!3204909 call!358437)))

(declare-fun b!5138176 () Bool)

(declare-fun e!3204910 () Bool)

(declare-fun e!3204911 () Bool)

(assert (=> b!5138176 (= e!3204910 e!3204911)))

(declare-fun res!2188433 () Bool)

(assert (=> b!5138176 (=> (not res!2188433) (not e!3204911))))

(assert (=> b!5138176 (= res!2188433 call!358436)))

(declare-fun b!5138177 () Bool)

(declare-fun e!3204914 () Bool)

(assert (=> b!5138177 (= e!3204914 e!3204912)))

(assert (=> b!5138177 (= c!884745 (is-Union!14428 expr!117))))

(declare-fun bm!358432 () Bool)

(assert (=> bm!358432 (= call!358436 (validRegex!6283 (ite c!884745 (regOne!29369 expr!117) (regOne!29368 expr!117))))))

(declare-fun b!5138178 () Bool)

(assert (=> b!5138178 (= e!3204911 call!358437)))

(declare-fun b!5138179 () Bool)

(declare-fun res!2188431 () Bool)

(assert (=> b!5138179 (=> res!2188431 e!3204910)))

(assert (=> b!5138179 (= res!2188431 (not (is-Concat!23273 expr!117)))))

(assert (=> b!5138179 (= e!3204912 e!3204910)))

(declare-fun b!5138180 () Bool)

(declare-fun e!3204913 () Bool)

(assert (=> b!5138180 (= e!3204914 e!3204913)))

(declare-fun res!2188432 () Bool)

(assert (=> b!5138180 (= res!2188432 (not (nullable!4793 (reg!14757 expr!117))))))

(assert (=> b!5138180 (=> (not res!2188432) (not e!3204913))))

(declare-fun b!5138181 () Bool)

(assert (=> b!5138181 (= e!3204913 call!358438)))

(declare-fun b!5138182 () Bool)

(assert (=> b!5138182 (= e!3204908 e!3204914)))

(assert (=> b!5138182 (= c!884744 (is-Star!14428 expr!117))))

(declare-fun bm!358433 () Bool)

(assert (=> bm!358433 (= call!358437 call!358438)))

(assert (= (and d!1662472 (not res!2188434)) b!5138182))

(assert (= (and b!5138182 c!884744) b!5138180))

(assert (= (and b!5138182 (not c!884744)) b!5138177))

(assert (= (and b!5138180 res!2188432) b!5138181))

(assert (= (and b!5138177 c!884745) b!5138174))

(assert (= (and b!5138177 (not c!884745)) b!5138179))

(assert (= (and b!5138174 res!2188435) b!5138175))

(assert (= (and b!5138179 (not res!2188431)) b!5138176))

(assert (= (and b!5138176 res!2188433) b!5138178))

(assert (= (or b!5138175 b!5138178) bm!358433))

(assert (= (or b!5138174 b!5138176) bm!358432))

(assert (= (or b!5138181 bm!358433) bm!358431))

(declare-fun m!6203138 () Bool)

(assert (=> bm!358431 m!6203138))

(declare-fun m!6203140 () Bool)

(assert (=> bm!358432 m!6203140))

(declare-fun m!6203142 () Bool)

(assert (=> b!5138180 m!6203142))

(assert (=> start!544054 d!1662472))

(declare-fun d!1662474 () Bool)

(declare-fun lambda!256225 () Int)

(declare-fun forall!13896 (List!59790 Int) Bool)

(assert (=> d!1662474 (= (inv!79252 ctx!100) (forall!13896 (exprs!4312 ctx!100) lambda!256225))))

(declare-fun bs!1200512 () Bool)

(assert (= bs!1200512 d!1662474))

(declare-fun m!6203144 () Bool)

(assert (=> bs!1200512 m!6203144))

(assert (=> start!544054 d!1662474))

(declare-fun bs!1200513 () Bool)

(declare-fun d!1662476 () Bool)

(assert (= bs!1200513 (and d!1662476 d!1662474)))

(declare-fun lambda!256228 () Int)

(assert (=> bs!1200513 (not (= lambda!256228 lambda!256225))))

(declare-fun exists!1765 (List!59790 Int) Bool)

(assert (=> d!1662476 (= (lostCause!1408 ctx!100) (exists!1765 (exprs!4312 ctx!100) lambda!256228))))

(declare-fun bs!1200514 () Bool)

(assert (= bs!1200514 d!1662476))

(declare-fun m!6203146 () Bool)

(assert (=> bs!1200514 m!6203146))

(assert (=> b!5138033 d!1662476))

(declare-fun b!5138195 () Bool)

(declare-fun e!3204917 () Bool)

(declare-fun tp!1432983 () Bool)

(assert (=> b!5138195 (= e!3204917 tp!1432983)))

(declare-fun b!5138194 () Bool)

(declare-fun tp!1432986 () Bool)

(declare-fun tp!1432985 () Bool)

(assert (=> b!5138194 (= e!3204917 (and tp!1432986 tp!1432985))))

(assert (=> b!5138034 (= tp!1432948 e!3204917)))

(declare-fun b!5138196 () Bool)

(declare-fun tp!1432982 () Bool)

(declare-fun tp!1432984 () Bool)

(assert (=> b!5138196 (= e!3204917 (and tp!1432982 tp!1432984))))

(declare-fun b!5138193 () Bool)

(assert (=> b!5138193 (= e!3204917 tp_is_empty!38005)))

(assert (= (and b!5138034 (is-ElementMatch!14428 (reg!14757 expr!117))) b!5138193))

(assert (= (and b!5138034 (is-Concat!23273 (reg!14757 expr!117))) b!5138194))

(assert (= (and b!5138034 (is-Star!14428 (reg!14757 expr!117))) b!5138195))

(assert (= (and b!5138034 (is-Union!14428 (reg!14757 expr!117))) b!5138196))

(declare-fun b!5138201 () Bool)

(declare-fun e!3204920 () Bool)

(declare-fun tp!1432991 () Bool)

(declare-fun tp!1432992 () Bool)

(assert (=> b!5138201 (= e!3204920 (and tp!1432991 tp!1432992))))

(assert (=> b!5138038 (= tp!1432953 e!3204920)))

(assert (= (and b!5138038 (is-Cons!59666 (exprs!4312 ctx!100))) b!5138201))

(declare-fun b!5138204 () Bool)

(declare-fun e!3204921 () Bool)

(declare-fun tp!1432994 () Bool)

(assert (=> b!5138204 (= e!3204921 tp!1432994)))

(declare-fun b!5138203 () Bool)

(declare-fun tp!1432997 () Bool)

(declare-fun tp!1432996 () Bool)

(assert (=> b!5138203 (= e!3204921 (and tp!1432997 tp!1432996))))

(assert (=> b!5138037 (= tp!1432951 e!3204921)))

(declare-fun b!5138205 () Bool)

(declare-fun tp!1432993 () Bool)

(declare-fun tp!1432995 () Bool)

(assert (=> b!5138205 (= e!3204921 (and tp!1432993 tp!1432995))))

(declare-fun b!5138202 () Bool)

(assert (=> b!5138202 (= e!3204921 tp_is_empty!38005)))

(assert (= (and b!5138037 (is-ElementMatch!14428 (regOne!29368 expr!117))) b!5138202))

(assert (= (and b!5138037 (is-Concat!23273 (regOne!29368 expr!117))) b!5138203))

(assert (= (and b!5138037 (is-Star!14428 (regOne!29368 expr!117))) b!5138204))

(assert (= (and b!5138037 (is-Union!14428 (regOne!29368 expr!117))) b!5138205))

(declare-fun b!5138208 () Bool)

(declare-fun e!3204922 () Bool)

(declare-fun tp!1432999 () Bool)

(assert (=> b!5138208 (= e!3204922 tp!1432999)))

(declare-fun b!5138207 () Bool)

(declare-fun tp!1433002 () Bool)

(declare-fun tp!1433001 () Bool)

(assert (=> b!5138207 (= e!3204922 (and tp!1433002 tp!1433001))))

(assert (=> b!5138037 (= tp!1432950 e!3204922)))

(declare-fun b!5138209 () Bool)

(declare-fun tp!1432998 () Bool)

(declare-fun tp!1433000 () Bool)

(assert (=> b!5138209 (= e!3204922 (and tp!1432998 tp!1433000))))

(declare-fun b!5138206 () Bool)

(assert (=> b!5138206 (= e!3204922 tp_is_empty!38005)))

(assert (= (and b!5138037 (is-ElementMatch!14428 (regTwo!29368 expr!117))) b!5138206))

(assert (= (and b!5138037 (is-Concat!23273 (regTwo!29368 expr!117))) b!5138207))

(assert (= (and b!5138037 (is-Star!14428 (regTwo!29368 expr!117))) b!5138208))

(assert (= (and b!5138037 (is-Union!14428 (regTwo!29368 expr!117))) b!5138209))

(declare-fun b!5138212 () Bool)

(declare-fun e!3204923 () Bool)

(declare-fun tp!1433004 () Bool)

(assert (=> b!5138212 (= e!3204923 tp!1433004)))

(declare-fun b!5138211 () Bool)

(declare-fun tp!1433007 () Bool)

(declare-fun tp!1433006 () Bool)

(assert (=> b!5138211 (= e!3204923 (and tp!1433007 tp!1433006))))

(assert (=> b!5138040 (= tp!1432952 e!3204923)))

(declare-fun b!5138213 () Bool)

(declare-fun tp!1433003 () Bool)

(declare-fun tp!1433005 () Bool)

(assert (=> b!5138213 (= e!3204923 (and tp!1433003 tp!1433005))))

(declare-fun b!5138210 () Bool)

(assert (=> b!5138210 (= e!3204923 tp_is_empty!38005)))

(assert (= (and b!5138040 (is-ElementMatch!14428 (regOne!29369 expr!117))) b!5138210))

(assert (= (and b!5138040 (is-Concat!23273 (regOne!29369 expr!117))) b!5138211))

(assert (= (and b!5138040 (is-Star!14428 (regOne!29369 expr!117))) b!5138212))

(assert (= (and b!5138040 (is-Union!14428 (regOne!29369 expr!117))) b!5138213))

(declare-fun b!5138216 () Bool)

(declare-fun e!3204924 () Bool)

(declare-fun tp!1433009 () Bool)

(assert (=> b!5138216 (= e!3204924 tp!1433009)))

(declare-fun b!5138215 () Bool)

(declare-fun tp!1433012 () Bool)

(declare-fun tp!1433011 () Bool)

(assert (=> b!5138215 (= e!3204924 (and tp!1433012 tp!1433011))))

(assert (=> b!5138040 (= tp!1432949 e!3204924)))

(declare-fun b!5138217 () Bool)

(declare-fun tp!1433008 () Bool)

(declare-fun tp!1433010 () Bool)

(assert (=> b!5138217 (= e!3204924 (and tp!1433008 tp!1433010))))

(declare-fun b!5138214 () Bool)

(assert (=> b!5138214 (= e!3204924 tp_is_empty!38005)))

(assert (= (and b!5138040 (is-ElementMatch!14428 (regTwo!29369 expr!117))) b!5138214))

(assert (= (and b!5138040 (is-Concat!23273 (regTwo!29369 expr!117))) b!5138215))

(assert (= (and b!5138040 (is-Star!14428 (regTwo!29369 expr!117))) b!5138216))

(assert (= (and b!5138040 (is-Union!14428 (regTwo!29369 expr!117))) b!5138217))

(push 1)

(assert (not d!1662474))

(assert (not bm!358432))

(assert (not b!5138194))

(assert (not b!5138213))

(assert (not b!5138129))

(assert (not b!5138215))

(assert (not bm!358404))

(assert (not b!5138195))

(assert (not b!5138212))

(assert (not d!1662464))

(assert (not b!5138204))

(assert tp_is_empty!38005)

(assert (not b!5138196))

(assert (not bm!358406))

(assert (not b!5138126))

(assert (not bm!358425))

(assert (not bm!358429))

(assert (not d!1662476))

(assert (not bm!358419))

(assert (not d!1662454))

(assert (not b!5138203))

(assert (not b!5138207))

(assert (not b!5138128))

(assert (not b!5138211))

(assert (not d!1662466))

(assert (not bm!358394))

(assert (not b!5138208))

(assert (not b!5138110))

(assert (not b!5138171))

(assert (not d!1662452))

(assert (not bm!358423))

(assert (not bm!358405))

(assert (not bm!358420))

(assert (not b!5138205))

(assert (not b!5138216))

(assert (not b!5138209))

(assert (not d!1662460))

(assert (not bm!358431))

(assert (not b!5138160))

(assert (not b!5138127))

(assert (not b!5138217))

(assert (not bm!358426))

(assert (not bm!358403))

(assert (not b!5138201))

(assert (not bm!358393))

(assert (not b!5138180))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230552 () Bool)

(assert start!230552)

(declare-fun res!996409 () Bool)

(declare-fun e!1495923 () Bool)

(assert (=> start!230552 (=> (not res!996409) (not e!1495923))))

(declare-datatypes ((C!13868 0))(
  ( (C!13869 (val!8094 Int)) )
))
(declare-datatypes ((Regex!6855 0))(
  ( (ElementMatch!6855 (c!371323 C!13868)) (Concat!11477 (regOne!14222 Regex!6855) (regTwo!14222 Regex!6855)) (EmptyExpr!6855) (Star!6855 (reg!7184 Regex!6855)) (EmptyLang!6855) (Union!6855 (regOne!14223 Regex!6855) (regTwo!14223 Regex!6855)) )
))
(declare-fun r!26197 () Regex!6855)

(declare-fun validRegex!2600 (Regex!6855) Bool)

(assert (=> start!230552 (= res!996409 (validRegex!2600 r!26197))))

(assert (=> start!230552 e!1495923))

(declare-fun e!1495922 () Bool)

(assert (=> start!230552 e!1495922))

(declare-fun tp_is_empty!11021 () Bool)

(assert (=> start!230552 tp_is_empty!11021))

(declare-fun b!2336374 () Bool)

(declare-datatypes ((Unit!40674 0))(
  ( (Unit!40675) )
))
(declare-fun e!1495924 () Unit!40674)

(declare-fun Unit!40676 () Unit!40674)

(assert (=> b!2336374 (= e!1495924 Unit!40676)))

(declare-fun b!2336375 () Bool)

(assert (=> b!2336375 (= e!1495922 tp_is_empty!11021)))

(declare-fun b!2336376 () Bool)

(declare-fun res!996411 () Bool)

(assert (=> b!2336376 (=> (not res!996411) (not e!1495923))))

(declare-fun c!13498 () C!13868)

(declare-fun nullable!1934 (Regex!6855) Bool)

(declare-fun derivativeStep!1594 (Regex!6855 C!13868) Regex!6855)

(assert (=> b!2336376 (= res!996411 (nullable!1934 (derivativeStep!1594 r!26197 c!13498)))))

(declare-fun b!2336377 () Bool)

(declare-fun tp!741259 () Bool)

(declare-fun tp!741261 () Bool)

(assert (=> b!2336377 (= e!1495922 (and tp!741259 tp!741261))))

(declare-fun b!2336378 () Bool)

(declare-fun e!1495926 () Bool)

(assert (=> b!2336378 (= e!1495923 e!1495926)))

(declare-fun res!996407 () Bool)

(assert (=> b!2336378 (=> (not res!996407) (not e!1495926))))

(assert (=> b!2336378 (= res!996407 (nullable!1934 (derivativeStep!1594 (regOne!14223 r!26197) c!13498)))))

(declare-fun lt!862453 () Unit!40674)

(assert (=> b!2336378 (= lt!862453 e!1495924)))

(declare-fun c!371322 () Bool)

(assert (=> b!2336378 (= c!371322 (nullable!1934 (regTwo!14223 r!26197)))))

(declare-fun lt!862452 () Unit!40674)

(declare-fun e!1495925 () Unit!40674)

(assert (=> b!2336378 (= lt!862452 e!1495925)))

(declare-fun c!371321 () Bool)

(assert (=> b!2336378 (= c!371321 (nullable!1934 (regOne!14223 r!26197)))))

(declare-fun b!2336379 () Bool)

(declare-fun Unit!40677 () Unit!40674)

(assert (=> b!2336379 (= e!1495925 Unit!40677)))

(declare-fun b!2336380 () Bool)

(declare-fun res!996410 () Bool)

(assert (=> b!2336380 (=> (not res!996410) (not e!1495923))))

(get-info :version)

(assert (=> b!2336380 (= res!996410 (and (not ((_ is EmptyExpr!6855) r!26197)) (not ((_ is EmptyLang!6855) r!26197)) (not ((_ is ElementMatch!6855) r!26197)) ((_ is Union!6855) r!26197)))))

(declare-fun b!2336381 () Bool)

(declare-fun tp!741258 () Bool)

(declare-fun tp!741260 () Bool)

(assert (=> b!2336381 (= e!1495922 (and tp!741258 tp!741260))))

(declare-fun b!2336382 () Bool)

(declare-fun Unit!40678 () Unit!40674)

(assert (=> b!2336382 (= e!1495925 Unit!40678)))

(assert (=> b!2336382 false))

(declare-fun b!2336383 () Bool)

(declare-fun tp!741257 () Bool)

(assert (=> b!2336383 (= e!1495922 tp!741257)))

(declare-fun b!2336384 () Bool)

(assert (=> b!2336384 (= e!1495926 (not (validRegex!2600 (regOne!14223 r!26197))))))

(declare-fun b!2336385 () Bool)

(declare-fun res!996408 () Bool)

(assert (=> b!2336385 (=> (not res!996408) (not e!1495923))))

(assert (=> b!2336385 (= res!996408 (not (nullable!1934 r!26197)))))

(declare-fun b!2336386 () Bool)

(declare-fun Unit!40679 () Unit!40674)

(assert (=> b!2336386 (= e!1495924 Unit!40679)))

(assert (=> b!2336386 false))

(assert (= (and start!230552 res!996409) b!2336385))

(assert (= (and b!2336385 res!996408) b!2336376))

(assert (= (and b!2336376 res!996411) b!2336380))

(assert (= (and b!2336380 res!996410) b!2336378))

(assert (= (and b!2336378 c!371321) b!2336382))

(assert (= (and b!2336378 (not c!371321)) b!2336379))

(assert (= (and b!2336378 c!371322) b!2336386))

(assert (= (and b!2336378 (not c!371322)) b!2336374))

(assert (= (and b!2336378 res!996407) b!2336384))

(assert (= (and start!230552 ((_ is ElementMatch!6855) r!26197)) b!2336375))

(assert (= (and start!230552 ((_ is Concat!11477) r!26197)) b!2336377))

(assert (= (and start!230552 ((_ is Star!6855) r!26197)) b!2336383))

(assert (= (and start!230552 ((_ is Union!6855) r!26197)) b!2336381))

(declare-fun m!2762765 () Bool)

(assert (=> b!2336384 m!2762765))

(declare-fun m!2762767 () Bool)

(assert (=> b!2336378 m!2762767))

(assert (=> b!2336378 m!2762767))

(declare-fun m!2762769 () Bool)

(assert (=> b!2336378 m!2762769))

(declare-fun m!2762771 () Bool)

(assert (=> b!2336378 m!2762771))

(declare-fun m!2762773 () Bool)

(assert (=> b!2336378 m!2762773))

(declare-fun m!2762775 () Bool)

(assert (=> start!230552 m!2762775))

(declare-fun m!2762777 () Bool)

(assert (=> b!2336385 m!2762777))

(declare-fun m!2762779 () Bool)

(assert (=> b!2336376 m!2762779))

(assert (=> b!2336376 m!2762779))

(declare-fun m!2762781 () Bool)

(assert (=> b!2336376 m!2762781))

(check-sat (not b!2336381) (not b!2336383) (not b!2336376) (not start!230552) tp_is_empty!11021 (not b!2336378) (not b!2336377) (not b!2336385) (not b!2336384))
(check-sat)
(get-model)

(declare-fun d!690547 () Bool)

(declare-fun nullableFct!490 (Regex!6855) Bool)

(assert (=> d!690547 (= (nullable!1934 (derivativeStep!1594 r!26197 c!13498)) (nullableFct!490 (derivativeStep!1594 r!26197 c!13498)))))

(declare-fun bs!459927 () Bool)

(assert (= bs!459927 d!690547))

(assert (=> bs!459927 m!2762779))

(declare-fun m!2762783 () Bool)

(assert (=> bs!459927 m!2762783))

(assert (=> b!2336376 d!690547))

(declare-fun b!2336443 () Bool)

(declare-fun e!1495965 () Regex!6855)

(declare-fun call!140124 () Regex!6855)

(assert (=> b!2336443 (= e!1495965 (Concat!11477 call!140124 r!26197))))

(declare-fun bm!140118 () Bool)

(declare-fun call!140123 () Regex!6855)

(assert (=> bm!140118 (= call!140123 call!140124)))

(declare-fun b!2336444 () Bool)

(declare-fun e!1495968 () Regex!6855)

(declare-fun call!140126 () Regex!6855)

(declare-fun call!140125 () Regex!6855)

(assert (=> b!2336444 (= e!1495968 (Union!6855 call!140126 call!140125))))

(declare-fun b!2336445 () Bool)

(assert (=> b!2336445 (= e!1495968 e!1495965)))

(declare-fun c!371343 () Bool)

(assert (=> b!2336445 (= c!371343 ((_ is Star!6855) r!26197))))

(declare-fun b!2336446 () Bool)

(declare-fun e!1495966 () Regex!6855)

(declare-fun e!1495967 () Regex!6855)

(assert (=> b!2336446 (= e!1495966 e!1495967)))

(declare-fun c!371346 () Bool)

(assert (=> b!2336446 (= c!371346 ((_ is ElementMatch!6855) r!26197))))

(declare-fun d!690551 () Bool)

(declare-fun lt!862456 () Regex!6855)

(assert (=> d!690551 (validRegex!2600 lt!862456)))

(assert (=> d!690551 (= lt!862456 e!1495966)))

(declare-fun c!371345 () Bool)

(assert (=> d!690551 (= c!371345 (or ((_ is EmptyExpr!6855) r!26197) ((_ is EmptyLang!6855) r!26197)))))

(assert (=> d!690551 (validRegex!2600 r!26197)))

(assert (=> d!690551 (= (derivativeStep!1594 r!26197 c!13498) lt!862456)))

(declare-fun b!2336447 () Bool)

(assert (=> b!2336447 (= e!1495966 EmptyLang!6855)))

(declare-fun bm!140119 () Bool)

(assert (=> bm!140119 (= call!140124 call!140125)))

(declare-fun b!2336448 () Bool)

(assert (=> b!2336448 (= e!1495967 (ite (= c!13498 (c!371323 r!26197)) EmptyExpr!6855 EmptyLang!6855))))

(declare-fun e!1495969 () Regex!6855)

(declare-fun b!2336449 () Bool)

(assert (=> b!2336449 (= e!1495969 (Union!6855 (Concat!11477 call!140123 (regTwo!14222 r!26197)) call!140126))))

(declare-fun b!2336450 () Bool)

(assert (=> b!2336450 (= e!1495969 (Union!6855 (Concat!11477 call!140123 (regTwo!14222 r!26197)) EmptyLang!6855))))

(declare-fun b!2336451 () Bool)

(declare-fun c!371344 () Bool)

(assert (=> b!2336451 (= c!371344 (nullable!1934 (regOne!14222 r!26197)))))

(assert (=> b!2336451 (= e!1495965 e!1495969)))

(declare-fun b!2336452 () Bool)

(declare-fun c!371342 () Bool)

(assert (=> b!2336452 (= c!371342 ((_ is Union!6855) r!26197))))

(assert (=> b!2336452 (= e!1495967 e!1495968)))

(declare-fun bm!140120 () Bool)

(assert (=> bm!140120 (= call!140125 (derivativeStep!1594 (ite c!371342 (regTwo!14223 r!26197) (ite c!371343 (reg!7184 r!26197) (regOne!14222 r!26197))) c!13498))))

(declare-fun bm!140121 () Bool)

(assert (=> bm!140121 (= call!140126 (derivativeStep!1594 (ite c!371342 (regOne!14223 r!26197) (regTwo!14222 r!26197)) c!13498))))

(assert (= (and d!690551 c!371345) b!2336447))

(assert (= (and d!690551 (not c!371345)) b!2336446))

(assert (= (and b!2336446 c!371346) b!2336448))

(assert (= (and b!2336446 (not c!371346)) b!2336452))

(assert (= (and b!2336452 c!371342) b!2336444))

(assert (= (and b!2336452 (not c!371342)) b!2336445))

(assert (= (and b!2336445 c!371343) b!2336443))

(assert (= (and b!2336445 (not c!371343)) b!2336451))

(assert (= (and b!2336451 c!371344) b!2336449))

(assert (= (and b!2336451 (not c!371344)) b!2336450))

(assert (= (or b!2336449 b!2336450) bm!140118))

(assert (= (or b!2336443 bm!140118) bm!140119))

(assert (= (or b!2336444 bm!140119) bm!140120))

(assert (= (or b!2336444 b!2336449) bm!140121))

(declare-fun m!2762801 () Bool)

(assert (=> d!690551 m!2762801))

(assert (=> d!690551 m!2762775))

(declare-fun m!2762803 () Bool)

(assert (=> b!2336451 m!2762803))

(declare-fun m!2762805 () Bool)

(assert (=> bm!140120 m!2762805))

(declare-fun m!2762807 () Bool)

(assert (=> bm!140121 m!2762807))

(assert (=> b!2336376 d!690551))

(declare-fun d!690561 () Bool)

(assert (=> d!690561 (= (nullable!1934 r!26197) (nullableFct!490 r!26197))))

(declare-fun bs!459930 () Bool)

(assert (= bs!459930 d!690561))

(declare-fun m!2762809 () Bool)

(assert (=> bs!459930 m!2762809))

(assert (=> b!2336385 d!690561))

(declare-fun bm!140136 () Bool)

(declare-fun call!140142 () Bool)

(declare-fun call!140141 () Bool)

(assert (=> bm!140136 (= call!140142 call!140141)))

(declare-fun b!2336491 () Bool)

(declare-fun e!1495996 () Bool)

(declare-fun e!1495997 () Bool)

(assert (=> b!2336491 (= e!1495996 e!1495997)))

(declare-fun res!996444 () Bool)

(assert (=> b!2336491 (=> (not res!996444) (not e!1495997))))

(declare-fun call!140143 () Bool)

(assert (=> b!2336491 (= res!996444 call!140143)))

(declare-fun b!2336492 () Bool)

(declare-fun e!1495999 () Bool)

(declare-fun e!1495994 () Bool)

(assert (=> b!2336492 (= e!1495999 e!1495994)))

(declare-fun c!371362 () Bool)

(assert (=> b!2336492 (= c!371362 ((_ is Star!6855) r!26197))))

(declare-fun b!2336493 () Bool)

(declare-fun e!1495998 () Bool)

(assert (=> b!2336493 (= e!1495994 e!1495998)))

(declare-fun res!996445 () Bool)

(assert (=> b!2336493 (= res!996445 (not (nullable!1934 (reg!7184 r!26197))))))

(assert (=> b!2336493 (=> (not res!996445) (not e!1495998))))

(declare-fun b!2336494 () Bool)

(declare-fun res!996443 () Bool)

(assert (=> b!2336494 (=> res!996443 e!1495996)))

(assert (=> b!2336494 (= res!996443 (not ((_ is Concat!11477) r!26197)))))

(declare-fun e!1495995 () Bool)

(assert (=> b!2336494 (= e!1495995 e!1495996)))

(declare-fun c!371361 () Bool)

(declare-fun bm!140137 () Bool)

(assert (=> bm!140137 (= call!140141 (validRegex!2600 (ite c!371362 (reg!7184 r!26197) (ite c!371361 (regTwo!14223 r!26197) (regTwo!14222 r!26197)))))))

(declare-fun d!690563 () Bool)

(declare-fun res!996442 () Bool)

(assert (=> d!690563 (=> res!996442 e!1495999)))

(assert (=> d!690563 (= res!996442 ((_ is ElementMatch!6855) r!26197))))

(assert (=> d!690563 (= (validRegex!2600 r!26197) e!1495999)))

(declare-fun b!2336495 () Bool)

(declare-fun res!996446 () Bool)

(declare-fun e!1496000 () Bool)

(assert (=> b!2336495 (=> (not res!996446) (not e!1496000))))

(assert (=> b!2336495 (= res!996446 call!140143)))

(assert (=> b!2336495 (= e!1495995 e!1496000)))

(declare-fun b!2336496 () Bool)

(assert (=> b!2336496 (= e!1496000 call!140142)))

(declare-fun b!2336497 () Bool)

(assert (=> b!2336497 (= e!1495997 call!140142)))

(declare-fun bm!140138 () Bool)

(assert (=> bm!140138 (= call!140143 (validRegex!2600 (ite c!371361 (regOne!14223 r!26197) (regOne!14222 r!26197))))))

(declare-fun b!2336498 () Bool)

(assert (=> b!2336498 (= e!1495994 e!1495995)))

(assert (=> b!2336498 (= c!371361 ((_ is Union!6855) r!26197))))

(declare-fun b!2336499 () Bool)

(assert (=> b!2336499 (= e!1495998 call!140141)))

(assert (= (and d!690563 (not res!996442)) b!2336492))

(assert (= (and b!2336492 c!371362) b!2336493))

(assert (= (and b!2336492 (not c!371362)) b!2336498))

(assert (= (and b!2336493 res!996445) b!2336499))

(assert (= (and b!2336498 c!371361) b!2336495))

(assert (= (and b!2336498 (not c!371361)) b!2336494))

(assert (= (and b!2336495 res!996446) b!2336496))

(assert (= (and b!2336494 (not res!996443)) b!2336491))

(assert (= (and b!2336491 res!996444) b!2336497))

(assert (= (or b!2336496 b!2336497) bm!140136))

(assert (= (or b!2336495 b!2336491) bm!140138))

(assert (= (or b!2336499 bm!140136) bm!140137))

(declare-fun m!2762811 () Bool)

(assert (=> b!2336493 m!2762811))

(declare-fun m!2762813 () Bool)

(assert (=> bm!140137 m!2762813))

(declare-fun m!2762815 () Bool)

(assert (=> bm!140138 m!2762815))

(assert (=> start!230552 d!690563))

(declare-fun bm!140140 () Bool)

(declare-fun call!140147 () Bool)

(declare-fun call!140146 () Bool)

(assert (=> bm!140140 (= call!140147 call!140146)))

(declare-fun b!2336502 () Bool)

(declare-fun e!1496003 () Bool)

(declare-fun e!1496006 () Bool)

(assert (=> b!2336502 (= e!1496003 e!1496006)))

(declare-fun res!996449 () Bool)

(assert (=> b!2336502 (=> (not res!996449) (not e!1496006))))

(declare-fun call!140150 () Bool)

(assert (=> b!2336502 (= res!996449 call!140150)))

(declare-fun b!2336503 () Bool)

(declare-fun e!1496011 () Bool)

(declare-fun e!1496001 () Bool)

(assert (=> b!2336503 (= e!1496011 e!1496001)))

(declare-fun c!371369 () Bool)

(assert (=> b!2336503 (= c!371369 ((_ is Star!6855) (regOne!14223 r!26197)))))

(declare-fun b!2336505 () Bool)

(declare-fun e!1496007 () Bool)

(assert (=> b!2336505 (= e!1496001 e!1496007)))

(declare-fun res!996450 () Bool)

(assert (=> b!2336505 (= res!996450 (not (nullable!1934 (reg!7184 (regOne!14223 r!26197)))))))

(assert (=> b!2336505 (=> (not res!996450) (not e!1496007))))

(declare-fun b!2336507 () Bool)

(declare-fun res!996448 () Bool)

(assert (=> b!2336507 (=> res!996448 e!1496003)))

(assert (=> b!2336507 (= res!996448 (not ((_ is Concat!11477) (regOne!14223 r!26197))))))

(declare-fun e!1496002 () Bool)

(assert (=> b!2336507 (= e!1496002 e!1496003)))

(declare-fun c!371367 () Bool)

(declare-fun bm!140142 () Bool)

(assert (=> bm!140142 (= call!140146 (validRegex!2600 (ite c!371369 (reg!7184 (regOne!14223 r!26197)) (ite c!371367 (regTwo!14223 (regOne!14223 r!26197)) (regTwo!14222 (regOne!14223 r!26197))))))))

(declare-fun d!690565 () Bool)

(declare-fun res!996447 () Bool)

(assert (=> d!690565 (=> res!996447 e!1496011)))

(assert (=> d!690565 (= res!996447 ((_ is ElementMatch!6855) (regOne!14223 r!26197)))))

(assert (=> d!690565 (= (validRegex!2600 (regOne!14223 r!26197)) e!1496011)))

(declare-fun b!2336510 () Bool)

(declare-fun res!996451 () Bool)

(declare-fun e!1496012 () Bool)

(assert (=> b!2336510 (=> (not res!996451) (not e!1496012))))

(assert (=> b!2336510 (= res!996451 call!140150)))

(assert (=> b!2336510 (= e!1496002 e!1496012)))

(declare-fun b!2336512 () Bool)

(assert (=> b!2336512 (= e!1496012 call!140147)))

(declare-fun b!2336514 () Bool)

(assert (=> b!2336514 (= e!1496006 call!140147)))

(declare-fun bm!140144 () Bool)

(assert (=> bm!140144 (= call!140150 (validRegex!2600 (ite c!371367 (regOne!14223 (regOne!14223 r!26197)) (regOne!14222 (regOne!14223 r!26197)))))))

(declare-fun b!2336515 () Bool)

(assert (=> b!2336515 (= e!1496001 e!1496002)))

(assert (=> b!2336515 (= c!371367 ((_ is Union!6855) (regOne!14223 r!26197)))))

(declare-fun b!2336517 () Bool)

(assert (=> b!2336517 (= e!1496007 call!140146)))

(assert (= (and d!690565 (not res!996447)) b!2336503))

(assert (= (and b!2336503 c!371369) b!2336505))

(assert (= (and b!2336503 (not c!371369)) b!2336515))

(assert (= (and b!2336505 res!996450) b!2336517))

(assert (= (and b!2336515 c!371367) b!2336510))

(assert (= (and b!2336515 (not c!371367)) b!2336507))

(assert (= (and b!2336510 res!996451) b!2336512))

(assert (= (and b!2336507 (not res!996448)) b!2336502))

(assert (= (and b!2336502 res!996449) b!2336514))

(assert (= (or b!2336512 b!2336514) bm!140140))

(assert (= (or b!2336510 b!2336502) bm!140144))

(assert (= (or b!2336517 bm!140140) bm!140142))

(declare-fun m!2762817 () Bool)

(assert (=> b!2336505 m!2762817))

(declare-fun m!2762819 () Bool)

(assert (=> bm!140142 m!2762819))

(declare-fun m!2762821 () Bool)

(assert (=> bm!140144 m!2762821))

(assert (=> b!2336384 d!690565))

(declare-fun d!690567 () Bool)

(assert (=> d!690567 (= (nullable!1934 (derivativeStep!1594 (regOne!14223 r!26197) c!13498)) (nullableFct!490 (derivativeStep!1594 (regOne!14223 r!26197) c!13498)))))

(declare-fun bs!459931 () Bool)

(assert (= bs!459931 d!690567))

(assert (=> bs!459931 m!2762767))

(declare-fun m!2762825 () Bool)

(assert (=> bs!459931 m!2762825))

(assert (=> b!2336378 d!690567))

(declare-fun b!2336519 () Bool)

(declare-fun e!1496013 () Regex!6855)

(declare-fun call!140152 () Regex!6855)

(assert (=> b!2336519 (= e!1496013 (Concat!11477 call!140152 (regOne!14223 r!26197)))))

(declare-fun bm!140146 () Bool)

(declare-fun call!140151 () Regex!6855)

(assert (=> bm!140146 (= call!140151 call!140152)))

(declare-fun b!2336520 () Bool)

(declare-fun e!1496016 () Regex!6855)

(declare-fun call!140154 () Regex!6855)

(declare-fun call!140153 () Regex!6855)

(assert (=> b!2336520 (= e!1496016 (Union!6855 call!140154 call!140153))))

(declare-fun b!2336521 () Bool)

(assert (=> b!2336521 (= e!1496016 e!1496013)))

(declare-fun c!371371 () Bool)

(assert (=> b!2336521 (= c!371371 ((_ is Star!6855) (regOne!14223 r!26197)))))

(declare-fun b!2336522 () Bool)

(declare-fun e!1496014 () Regex!6855)

(declare-fun e!1496015 () Regex!6855)

(assert (=> b!2336522 (= e!1496014 e!1496015)))

(declare-fun c!371374 () Bool)

(assert (=> b!2336522 (= c!371374 ((_ is ElementMatch!6855) (regOne!14223 r!26197)))))

(declare-fun d!690569 () Bool)

(declare-fun lt!862460 () Regex!6855)

(assert (=> d!690569 (validRegex!2600 lt!862460)))

(assert (=> d!690569 (= lt!862460 e!1496014)))

(declare-fun c!371373 () Bool)

(assert (=> d!690569 (= c!371373 (or ((_ is EmptyExpr!6855) (regOne!14223 r!26197)) ((_ is EmptyLang!6855) (regOne!14223 r!26197))))))

(assert (=> d!690569 (validRegex!2600 (regOne!14223 r!26197))))

(assert (=> d!690569 (= (derivativeStep!1594 (regOne!14223 r!26197) c!13498) lt!862460)))

(declare-fun b!2336523 () Bool)

(assert (=> b!2336523 (= e!1496014 EmptyLang!6855)))

(declare-fun bm!140147 () Bool)

(assert (=> bm!140147 (= call!140152 call!140153)))

(declare-fun b!2336524 () Bool)

(assert (=> b!2336524 (= e!1496015 (ite (= c!13498 (c!371323 (regOne!14223 r!26197))) EmptyExpr!6855 EmptyLang!6855))))

(declare-fun e!1496017 () Regex!6855)

(declare-fun b!2336525 () Bool)

(assert (=> b!2336525 (= e!1496017 (Union!6855 (Concat!11477 call!140151 (regTwo!14222 (regOne!14223 r!26197))) call!140154))))

(declare-fun b!2336526 () Bool)

(assert (=> b!2336526 (= e!1496017 (Union!6855 (Concat!11477 call!140151 (regTwo!14222 (regOne!14223 r!26197))) EmptyLang!6855))))

(declare-fun b!2336527 () Bool)

(declare-fun c!371372 () Bool)

(assert (=> b!2336527 (= c!371372 (nullable!1934 (regOne!14222 (regOne!14223 r!26197))))))

(assert (=> b!2336527 (= e!1496013 e!1496017)))

(declare-fun b!2336528 () Bool)

(declare-fun c!371370 () Bool)

(assert (=> b!2336528 (= c!371370 ((_ is Union!6855) (regOne!14223 r!26197)))))

(assert (=> b!2336528 (= e!1496015 e!1496016)))

(declare-fun bm!140148 () Bool)

(assert (=> bm!140148 (= call!140153 (derivativeStep!1594 (ite c!371370 (regTwo!14223 (regOne!14223 r!26197)) (ite c!371371 (reg!7184 (regOne!14223 r!26197)) (regOne!14222 (regOne!14223 r!26197)))) c!13498))))

(declare-fun bm!140149 () Bool)

(assert (=> bm!140149 (= call!140154 (derivativeStep!1594 (ite c!371370 (regOne!14223 (regOne!14223 r!26197)) (regTwo!14222 (regOne!14223 r!26197))) c!13498))))

(assert (= (and d!690569 c!371373) b!2336523))

(assert (= (and d!690569 (not c!371373)) b!2336522))

(assert (= (and b!2336522 c!371374) b!2336524))

(assert (= (and b!2336522 (not c!371374)) b!2336528))

(assert (= (and b!2336528 c!371370) b!2336520))

(assert (= (and b!2336528 (not c!371370)) b!2336521))

(assert (= (and b!2336521 c!371371) b!2336519))

(assert (= (and b!2336521 (not c!371371)) b!2336527))

(assert (= (and b!2336527 c!371372) b!2336525))

(assert (= (and b!2336527 (not c!371372)) b!2336526))

(assert (= (or b!2336525 b!2336526) bm!140146))

(assert (= (or b!2336519 bm!140146) bm!140147))

(assert (= (or b!2336520 bm!140147) bm!140148))

(assert (= (or b!2336520 b!2336525) bm!140149))

(declare-fun m!2762835 () Bool)

(assert (=> d!690569 m!2762835))

(assert (=> d!690569 m!2762765))

(declare-fun m!2762837 () Bool)

(assert (=> b!2336527 m!2762837))

(declare-fun m!2762839 () Bool)

(assert (=> bm!140148 m!2762839))

(declare-fun m!2762841 () Bool)

(assert (=> bm!140149 m!2762841))

(assert (=> b!2336378 d!690569))

(declare-fun d!690575 () Bool)

(assert (=> d!690575 (= (nullable!1934 (regTwo!14223 r!26197)) (nullableFct!490 (regTwo!14223 r!26197)))))

(declare-fun bs!459933 () Bool)

(assert (= bs!459933 d!690575))

(declare-fun m!2762843 () Bool)

(assert (=> bs!459933 m!2762843))

(assert (=> b!2336378 d!690575))

(declare-fun d!690577 () Bool)

(assert (=> d!690577 (= (nullable!1934 (regOne!14223 r!26197)) (nullableFct!490 (regOne!14223 r!26197)))))

(declare-fun bs!459934 () Bool)

(assert (= bs!459934 d!690577))

(declare-fun m!2762847 () Bool)

(assert (=> bs!459934 m!2762847))

(assert (=> b!2336378 d!690577))

(declare-fun b!2336562 () Bool)

(declare-fun e!1496027 () Bool)

(declare-fun tp!741282 () Bool)

(declare-fun tp!741283 () Bool)

(assert (=> b!2336562 (= e!1496027 (and tp!741282 tp!741283))))

(declare-fun b!2336559 () Bool)

(assert (=> b!2336559 (= e!1496027 tp_is_empty!11021)))

(declare-fun b!2336561 () Bool)

(declare-fun tp!741284 () Bool)

(assert (=> b!2336561 (= e!1496027 tp!741284)))

(declare-fun b!2336560 () Bool)

(declare-fun tp!741285 () Bool)

(declare-fun tp!741286 () Bool)

(assert (=> b!2336560 (= e!1496027 (and tp!741285 tp!741286))))

(assert (=> b!2336381 (= tp!741258 e!1496027)))

(assert (= (and b!2336381 ((_ is ElementMatch!6855) (regOne!14223 r!26197))) b!2336559))

(assert (= (and b!2336381 ((_ is Concat!11477) (regOne!14223 r!26197))) b!2336560))

(assert (= (and b!2336381 ((_ is Star!6855) (regOne!14223 r!26197))) b!2336561))

(assert (= (and b!2336381 ((_ is Union!6855) (regOne!14223 r!26197))) b!2336562))

(declare-fun b!2336570 () Bool)

(declare-fun e!1496029 () Bool)

(declare-fun tp!741292 () Bool)

(declare-fun tp!741293 () Bool)

(assert (=> b!2336570 (= e!1496029 (and tp!741292 tp!741293))))

(declare-fun b!2336567 () Bool)

(assert (=> b!2336567 (= e!1496029 tp_is_empty!11021)))

(declare-fun b!2336569 () Bool)

(declare-fun tp!741294 () Bool)

(assert (=> b!2336569 (= e!1496029 tp!741294)))

(declare-fun b!2336568 () Bool)

(declare-fun tp!741295 () Bool)

(declare-fun tp!741296 () Bool)

(assert (=> b!2336568 (= e!1496029 (and tp!741295 tp!741296))))

(assert (=> b!2336381 (= tp!741260 e!1496029)))

(assert (= (and b!2336381 ((_ is ElementMatch!6855) (regTwo!14223 r!26197))) b!2336567))

(assert (= (and b!2336381 ((_ is Concat!11477) (regTwo!14223 r!26197))) b!2336568))

(assert (= (and b!2336381 ((_ is Star!6855) (regTwo!14223 r!26197))) b!2336569))

(assert (= (and b!2336381 ((_ is Union!6855) (regTwo!14223 r!26197))) b!2336570))

(declare-fun b!2336574 () Bool)

(declare-fun e!1496030 () Bool)

(declare-fun tp!741297 () Bool)

(declare-fun tp!741298 () Bool)

(assert (=> b!2336574 (= e!1496030 (and tp!741297 tp!741298))))

(declare-fun b!2336571 () Bool)

(assert (=> b!2336571 (= e!1496030 tp_is_empty!11021)))

(declare-fun b!2336573 () Bool)

(declare-fun tp!741299 () Bool)

(assert (=> b!2336573 (= e!1496030 tp!741299)))

(declare-fun b!2336572 () Bool)

(declare-fun tp!741300 () Bool)

(declare-fun tp!741301 () Bool)

(assert (=> b!2336572 (= e!1496030 (and tp!741300 tp!741301))))

(assert (=> b!2336383 (= tp!741257 e!1496030)))

(assert (= (and b!2336383 ((_ is ElementMatch!6855) (reg!7184 r!26197))) b!2336571))

(assert (= (and b!2336383 ((_ is Concat!11477) (reg!7184 r!26197))) b!2336572))

(assert (= (and b!2336383 ((_ is Star!6855) (reg!7184 r!26197))) b!2336573))

(assert (= (and b!2336383 ((_ is Union!6855) (reg!7184 r!26197))) b!2336574))

(declare-fun b!2336582 () Bool)

(declare-fun e!1496032 () Bool)

(declare-fun tp!741307 () Bool)

(declare-fun tp!741308 () Bool)

(assert (=> b!2336582 (= e!1496032 (and tp!741307 tp!741308))))

(declare-fun b!2336579 () Bool)

(assert (=> b!2336579 (= e!1496032 tp_is_empty!11021)))

(declare-fun b!2336581 () Bool)

(declare-fun tp!741309 () Bool)

(assert (=> b!2336581 (= e!1496032 tp!741309)))

(declare-fun b!2336580 () Bool)

(declare-fun tp!741310 () Bool)

(declare-fun tp!741311 () Bool)

(assert (=> b!2336580 (= e!1496032 (and tp!741310 tp!741311))))

(assert (=> b!2336377 (= tp!741259 e!1496032)))

(assert (= (and b!2336377 ((_ is ElementMatch!6855) (regOne!14222 r!26197))) b!2336579))

(assert (= (and b!2336377 ((_ is Concat!11477) (regOne!14222 r!26197))) b!2336580))

(assert (= (and b!2336377 ((_ is Star!6855) (regOne!14222 r!26197))) b!2336581))

(assert (= (and b!2336377 ((_ is Union!6855) (regOne!14222 r!26197))) b!2336582))

(declare-fun b!2336590 () Bool)

(declare-fun e!1496034 () Bool)

(declare-fun tp!741317 () Bool)

(declare-fun tp!741318 () Bool)

(assert (=> b!2336590 (= e!1496034 (and tp!741317 tp!741318))))

(declare-fun b!2336587 () Bool)

(assert (=> b!2336587 (= e!1496034 tp_is_empty!11021)))

(declare-fun b!2336589 () Bool)

(declare-fun tp!741319 () Bool)

(assert (=> b!2336589 (= e!1496034 tp!741319)))

(declare-fun b!2336588 () Bool)

(declare-fun tp!741320 () Bool)

(declare-fun tp!741321 () Bool)

(assert (=> b!2336588 (= e!1496034 (and tp!741320 tp!741321))))

(assert (=> b!2336377 (= tp!741261 e!1496034)))

(assert (= (and b!2336377 ((_ is ElementMatch!6855) (regTwo!14222 r!26197))) b!2336587))

(assert (= (and b!2336377 ((_ is Concat!11477) (regTwo!14222 r!26197))) b!2336588))

(assert (= (and b!2336377 ((_ is Star!6855) (regTwo!14222 r!26197))) b!2336589))

(assert (= (and b!2336377 ((_ is Union!6855) (regTwo!14222 r!26197))) b!2336590))

(check-sat (not b!2336569) (not bm!140148) (not b!2336581) (not b!2336570) (not b!2336493) (not d!690575) (not d!690551) (not b!2336589) (not b!2336505) (not d!690569) (not bm!140120) (not d!690567) (not b!2336451) (not b!2336527) (not bm!140144) (not b!2336590) (not b!2336582) (not b!2336573) (not bm!140149) (not b!2336568) (not d!690547) (not b!2336561) (not b!2336580) (not bm!140121) (not b!2336572) (not bm!140142) (not b!2336574) tp_is_empty!11021 (not d!690561) (not bm!140138) (not b!2336588) (not bm!140137) (not b!2336562) (not d!690577) (not b!2336560))
(check-sat)

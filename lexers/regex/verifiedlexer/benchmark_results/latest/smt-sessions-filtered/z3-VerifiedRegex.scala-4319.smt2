; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230800 () Bool)

(assert start!230800)

(declare-fun b!2342968 () Bool)

(declare-fun e!1499196 () Bool)

(declare-fun tp!743721 () Bool)

(assert (=> b!2342968 (= e!1499196 tp!743721)))

(declare-fun b!2342969 () Bool)

(declare-fun tp!743717 () Bool)

(declare-fun tp!743718 () Bool)

(assert (=> b!2342969 (= e!1499196 (and tp!743717 tp!743718))))

(declare-fun b!2342970 () Bool)

(declare-fun res!998070 () Bool)

(declare-fun e!1499195 () Bool)

(assert (=> b!2342970 (=> (not res!998070) (not e!1499195))))

(declare-datatypes ((C!13912 0))(
  ( (C!13913 (val!8116 Int)) )
))
(declare-datatypes ((Regex!6877 0))(
  ( (ElementMatch!6877 (c!372817 C!13912)) (Concat!11499 (regOne!14266 Regex!6877) (regTwo!14266 Regex!6877)) (EmptyExpr!6877) (Star!6877 (reg!7206 Regex!6877)) (EmptyLang!6877) (Union!6877 (regOne!14267 Regex!6877) (regTwo!14267 Regex!6877)) )
))
(declare-fun r!26197 () Regex!6877)

(declare-fun c!13498 () C!13912)

(declare-fun nullable!1956 (Regex!6877) Bool)

(declare-fun derivativeStep!1616 (Regex!6877 C!13912) Regex!6877)

(assert (=> b!2342970 (= res!998070 (nullable!1956 (derivativeStep!1616 (regTwo!14266 r!26197) c!13498)))))

(declare-fun b!2342971 () Bool)

(declare-fun res!998066 () Bool)

(assert (=> b!2342971 (=> (not res!998066) (not e!1499195))))

(assert (=> b!2342971 (= res!998066 (nullable!1956 (regOne!14266 r!26197)))))

(declare-fun res!998065 () Bool)

(assert (=> start!230800 (=> (not res!998065) (not e!1499195))))

(declare-fun validRegex!2622 (Regex!6877) Bool)

(assert (=> start!230800 (= res!998065 (validRegex!2622 r!26197))))

(assert (=> start!230800 e!1499195))

(assert (=> start!230800 e!1499196))

(declare-fun tp_is_empty!11065 () Bool)

(assert (=> start!230800 tp_is_empty!11065))

(declare-fun b!2342972 () Bool)

(assert (=> b!2342972 (= e!1499196 tp_is_empty!11065)))

(declare-fun b!2342973 () Bool)

(declare-fun res!998067 () Bool)

(assert (=> b!2342973 (=> (not res!998067) (not e!1499195))))

(assert (=> b!2342973 (= res!998067 (not (nullable!1956 (Concat!11499 (derivativeStep!1616 (regOne!14266 r!26197) c!13498) (regTwo!14266 r!26197)))))))

(declare-fun b!2342974 () Bool)

(declare-fun res!998069 () Bool)

(assert (=> b!2342974 (=> (not res!998069) (not e!1499195))))

(assert (=> b!2342974 (= res!998069 (nullable!1956 (derivativeStep!1616 r!26197 c!13498)))))

(declare-fun b!2342975 () Bool)

(declare-fun res!998071 () Bool)

(assert (=> b!2342975 (=> (not res!998071) (not e!1499195))))

(get-info :version)

(assert (=> b!2342975 (= res!998071 (and (not ((_ is EmptyExpr!6877) r!26197)) (not ((_ is EmptyLang!6877) r!26197)) (not ((_ is ElementMatch!6877) r!26197)) (not ((_ is Union!6877) r!26197)) (not ((_ is Star!6877) r!26197))))))

(declare-fun b!2342976 () Bool)

(assert (=> b!2342976 (= e!1499195 (not (validRegex!2622 (regTwo!14266 r!26197))))))

(declare-fun b!2342977 () Bool)

(declare-fun res!998068 () Bool)

(assert (=> b!2342977 (=> (not res!998068) (not e!1499195))))

(assert (=> b!2342977 (= res!998068 (not (nullable!1956 r!26197)))))

(declare-fun b!2342978 () Bool)

(declare-fun tp!743719 () Bool)

(declare-fun tp!743720 () Bool)

(assert (=> b!2342978 (= e!1499196 (and tp!743719 tp!743720))))

(assert (= (and start!230800 res!998065) b!2342977))

(assert (= (and b!2342977 res!998068) b!2342974))

(assert (= (and b!2342974 res!998069) b!2342975))

(assert (= (and b!2342975 res!998071) b!2342971))

(assert (= (and b!2342971 res!998066) b!2342973))

(assert (= (and b!2342973 res!998067) b!2342970))

(assert (= (and b!2342970 res!998070) b!2342976))

(assert (= (and start!230800 ((_ is ElementMatch!6877) r!26197)) b!2342972))

(assert (= (and start!230800 ((_ is Concat!11499) r!26197)) b!2342978))

(assert (= (and start!230800 ((_ is Star!6877) r!26197)) b!2342968))

(assert (= (and start!230800 ((_ is Union!6877) r!26197)) b!2342969))

(declare-fun m!2765775 () Bool)

(assert (=> b!2342977 m!2765775))

(declare-fun m!2765777 () Bool)

(assert (=> b!2342974 m!2765777))

(assert (=> b!2342974 m!2765777))

(declare-fun m!2765779 () Bool)

(assert (=> b!2342974 m!2765779))

(declare-fun m!2765781 () Bool)

(assert (=> b!2342971 m!2765781))

(declare-fun m!2765783 () Bool)

(assert (=> b!2342970 m!2765783))

(assert (=> b!2342970 m!2765783))

(declare-fun m!2765785 () Bool)

(assert (=> b!2342970 m!2765785))

(declare-fun m!2765787 () Bool)

(assert (=> b!2342973 m!2765787))

(declare-fun m!2765789 () Bool)

(assert (=> b!2342973 m!2765789))

(declare-fun m!2765791 () Bool)

(assert (=> b!2342976 m!2765791))

(declare-fun m!2765793 () Bool)

(assert (=> start!230800 m!2765793))

(check-sat (not b!2342968) (not b!2342978) (not b!2342973) (not b!2342977) (not b!2342974) (not b!2342970) (not b!2342971) tp_is_empty!11065 (not start!230800) (not b!2342969) (not b!2342976))
(check-sat)
(get-model)

(declare-fun d!691538 () Bool)

(declare-fun nullableFct!508 (Regex!6877) Bool)

(assert (=> d!691538 (= (nullable!1956 r!26197) (nullableFct!508 r!26197))))

(declare-fun bs!460089 () Bool)

(assert (= bs!460089 d!691538))

(declare-fun m!2765795 () Bool)

(assert (=> bs!460089 m!2765795))

(assert (=> b!2342977 d!691538))

(declare-fun b!2342997 () Bool)

(declare-fun e!1499212 () Bool)

(declare-fun e!1499214 () Bool)

(assert (=> b!2342997 (= e!1499212 e!1499214)))

(declare-fun c!372822 () Bool)

(assert (=> b!2342997 (= c!372822 ((_ is Union!6877) r!26197))))

(declare-fun d!691540 () Bool)

(declare-fun res!998084 () Bool)

(declare-fun e!1499211 () Bool)

(assert (=> d!691540 (=> res!998084 e!1499211)))

(assert (=> d!691540 (= res!998084 ((_ is ElementMatch!6877) r!26197))))

(assert (=> d!691540 (= (validRegex!2622 r!26197) e!1499211)))

(declare-fun b!2342998 () Bool)

(declare-fun res!998085 () Bool)

(declare-fun e!1499217 () Bool)

(assert (=> b!2342998 (=> res!998085 e!1499217)))

(assert (=> b!2342998 (= res!998085 (not ((_ is Concat!11499) r!26197)))))

(assert (=> b!2342998 (= e!1499214 e!1499217)))

(declare-fun b!2342999 () Bool)

(declare-fun e!1499215 () Bool)

(declare-fun call!141478 () Bool)

(assert (=> b!2342999 (= e!1499215 call!141478)))

(declare-fun b!2343000 () Bool)

(assert (=> b!2343000 (= e!1499217 e!1499215)))

(declare-fun res!998082 () Bool)

(assert (=> b!2343000 (=> (not res!998082) (not e!1499215))))

(declare-fun call!141479 () Bool)

(assert (=> b!2343000 (= res!998082 call!141479)))

(declare-fun b!2343001 () Bool)

(declare-fun res!998083 () Bool)

(declare-fun e!1499213 () Bool)

(assert (=> b!2343001 (=> (not res!998083) (not e!1499213))))

(assert (=> b!2343001 (= res!998083 call!141479)))

(assert (=> b!2343001 (= e!1499214 e!1499213)))

(declare-fun b!2343002 () Bool)

(declare-fun e!1499216 () Bool)

(assert (=> b!2343002 (= e!1499212 e!1499216)))

(declare-fun res!998086 () Bool)

(assert (=> b!2343002 (= res!998086 (not (nullable!1956 (reg!7206 r!26197))))))

(assert (=> b!2343002 (=> (not res!998086) (not e!1499216))))

(declare-fun b!2343003 () Bool)

(assert (=> b!2343003 (= e!1499211 e!1499212)))

(declare-fun c!372823 () Bool)

(assert (=> b!2343003 (= c!372823 ((_ is Star!6877) r!26197))))

(declare-fun bm!141472 () Bool)

(declare-fun call!141477 () Bool)

(assert (=> bm!141472 (= call!141478 call!141477)))

(declare-fun b!2343004 () Bool)

(assert (=> b!2343004 (= e!1499216 call!141477)))

(declare-fun b!2343005 () Bool)

(assert (=> b!2343005 (= e!1499213 call!141478)))

(declare-fun bm!141473 () Bool)

(assert (=> bm!141473 (= call!141477 (validRegex!2622 (ite c!372823 (reg!7206 r!26197) (ite c!372822 (regTwo!14267 r!26197) (regTwo!14266 r!26197)))))))

(declare-fun bm!141474 () Bool)

(assert (=> bm!141474 (= call!141479 (validRegex!2622 (ite c!372822 (regOne!14267 r!26197) (regOne!14266 r!26197))))))

(assert (= (and d!691540 (not res!998084)) b!2343003))

(assert (= (and b!2343003 c!372823) b!2343002))

(assert (= (and b!2343003 (not c!372823)) b!2342997))

(assert (= (and b!2343002 res!998086) b!2343004))

(assert (= (and b!2342997 c!372822) b!2343001))

(assert (= (and b!2342997 (not c!372822)) b!2342998))

(assert (= (and b!2343001 res!998083) b!2343005))

(assert (= (and b!2342998 (not res!998085)) b!2343000))

(assert (= (and b!2343000 res!998082) b!2342999))

(assert (= (or b!2343005 b!2342999) bm!141472))

(assert (= (or b!2343001 b!2343000) bm!141474))

(assert (= (or b!2343004 bm!141472) bm!141473))

(declare-fun m!2765799 () Bool)

(assert (=> b!2343002 m!2765799))

(declare-fun m!2765801 () Bool)

(assert (=> bm!141473 m!2765801))

(declare-fun m!2765803 () Bool)

(assert (=> bm!141474 m!2765803))

(assert (=> start!230800 d!691540))

(declare-fun d!691546 () Bool)

(assert (=> d!691546 (= (nullable!1956 (derivativeStep!1616 (regTwo!14266 r!26197) c!13498)) (nullableFct!508 (derivativeStep!1616 (regTwo!14266 r!26197) c!13498)))))

(declare-fun bs!460091 () Bool)

(assert (= bs!460091 d!691546))

(assert (=> bs!460091 m!2765783))

(declare-fun m!2765805 () Bool)

(assert (=> bs!460091 m!2765805))

(assert (=> b!2342970 d!691546))

(declare-fun b!2343080 () Bool)

(declare-fun e!1499259 () Regex!6877)

(declare-fun call!141507 () Regex!6877)

(assert (=> b!2343080 (= e!1499259 (Concat!11499 call!141507 (regTwo!14266 r!26197)))))

(declare-fun call!141504 () Regex!6877)

(declare-fun bm!141499 () Bool)

(declare-fun c!372860 () Bool)

(declare-fun c!372861 () Bool)

(assert (=> bm!141499 (= call!141504 (derivativeStep!1616 (ite c!372861 (regTwo!14267 (regTwo!14266 r!26197)) (ite c!372860 (reg!7206 (regTwo!14266 r!26197)) (regOne!14266 (regTwo!14266 r!26197)))) c!13498))))

(declare-fun bm!141500 () Bool)

(declare-fun call!141506 () Regex!6877)

(assert (=> bm!141500 (= call!141506 call!141507)))

(declare-fun b!2343081 () Bool)

(declare-fun e!1499258 () Regex!6877)

(declare-fun e!1499260 () Regex!6877)

(assert (=> b!2343081 (= e!1499258 e!1499260)))

(declare-fun c!372858 () Bool)

(assert (=> b!2343081 (= c!372858 ((_ is ElementMatch!6877) (regTwo!14266 r!26197)))))

(declare-fun b!2343082 () Bool)

(declare-fun c!372859 () Bool)

(assert (=> b!2343082 (= c!372859 (nullable!1956 (regOne!14266 (regTwo!14266 r!26197))))))

(declare-fun e!1499261 () Regex!6877)

(assert (=> b!2343082 (= e!1499259 e!1499261)))

(declare-fun d!691548 () Bool)

(declare-fun lt!862818 () Regex!6877)

(assert (=> d!691548 (validRegex!2622 lt!862818)))

(assert (=> d!691548 (= lt!862818 e!1499258)))

(declare-fun c!372862 () Bool)

(assert (=> d!691548 (= c!372862 (or ((_ is EmptyExpr!6877) (regTwo!14266 r!26197)) ((_ is EmptyLang!6877) (regTwo!14266 r!26197))))))

(assert (=> d!691548 (validRegex!2622 (regTwo!14266 r!26197))))

(assert (=> d!691548 (= (derivativeStep!1616 (regTwo!14266 r!26197) c!13498) lt!862818)))

(declare-fun b!2343083 () Bool)

(assert (=> b!2343083 (= c!372861 ((_ is Union!6877) (regTwo!14266 r!26197)))))

(declare-fun e!1499262 () Regex!6877)

(assert (=> b!2343083 (= e!1499260 e!1499262)))

(declare-fun b!2343084 () Bool)

(assert (=> b!2343084 (= e!1499258 EmptyLang!6877)))

(declare-fun b!2343085 () Bool)

(assert (=> b!2343085 (= e!1499261 (Union!6877 (Concat!11499 call!141506 (regTwo!14266 (regTwo!14266 r!26197))) EmptyLang!6877))))

(declare-fun bm!141501 () Bool)

(declare-fun call!141505 () Regex!6877)

(assert (=> bm!141501 (= call!141505 (derivativeStep!1616 (ite c!372861 (regOne!14267 (regTwo!14266 r!26197)) (regTwo!14266 (regTwo!14266 r!26197))) c!13498))))

(declare-fun b!2343086 () Bool)

(assert (=> b!2343086 (= e!1499260 (ite (= c!13498 (c!372817 (regTwo!14266 r!26197))) EmptyExpr!6877 EmptyLang!6877))))

(declare-fun b!2343087 () Bool)

(assert (=> b!2343087 (= e!1499261 (Union!6877 (Concat!11499 call!141506 (regTwo!14266 (regTwo!14266 r!26197))) call!141505))))

(declare-fun b!2343088 () Bool)

(assert (=> b!2343088 (= e!1499262 e!1499259)))

(assert (=> b!2343088 (= c!372860 ((_ is Star!6877) (regTwo!14266 r!26197)))))

(declare-fun bm!141502 () Bool)

(assert (=> bm!141502 (= call!141507 call!141504)))

(declare-fun b!2343089 () Bool)

(assert (=> b!2343089 (= e!1499262 (Union!6877 call!141505 call!141504))))

(assert (= (and d!691548 c!372862) b!2343084))

(assert (= (and d!691548 (not c!372862)) b!2343081))

(assert (= (and b!2343081 c!372858) b!2343086))

(assert (= (and b!2343081 (not c!372858)) b!2343083))

(assert (= (and b!2343083 c!372861) b!2343089))

(assert (= (and b!2343083 (not c!372861)) b!2343088))

(assert (= (and b!2343088 c!372860) b!2343080))

(assert (= (and b!2343088 (not c!372860)) b!2343082))

(assert (= (and b!2343082 c!372859) b!2343087))

(assert (= (and b!2343082 (not c!372859)) b!2343085))

(assert (= (or b!2343087 b!2343085) bm!141500))

(assert (= (or b!2343080 bm!141500) bm!141502))

(assert (= (or b!2343089 bm!141502) bm!141499))

(assert (= (or b!2343089 b!2343087) bm!141501))

(declare-fun m!2765825 () Bool)

(assert (=> bm!141499 m!2765825))

(declare-fun m!2765827 () Bool)

(assert (=> b!2343082 m!2765827))

(declare-fun m!2765829 () Bool)

(assert (=> d!691548 m!2765829))

(assert (=> d!691548 m!2765791))

(declare-fun m!2765831 () Bool)

(assert (=> bm!141501 m!2765831))

(assert (=> b!2342970 d!691548))

(declare-fun d!691558 () Bool)

(assert (=> d!691558 (= (nullable!1956 (regOne!14266 r!26197)) (nullableFct!508 (regOne!14266 r!26197)))))

(declare-fun bs!460094 () Bool)

(assert (= bs!460094 d!691558))

(declare-fun m!2765833 () Bool)

(assert (=> bs!460094 m!2765833))

(assert (=> b!2342971 d!691558))

(declare-fun b!2343094 () Bool)

(declare-fun e!1499268 () Bool)

(declare-fun e!1499270 () Bool)

(assert (=> b!2343094 (= e!1499268 e!1499270)))

(declare-fun c!372863 () Bool)

(assert (=> b!2343094 (= c!372863 ((_ is Union!6877) (regTwo!14266 r!26197)))))

(declare-fun d!691560 () Bool)

(declare-fun res!998099 () Bool)

(declare-fun e!1499267 () Bool)

(assert (=> d!691560 (=> res!998099 e!1499267)))

(assert (=> d!691560 (= res!998099 ((_ is ElementMatch!6877) (regTwo!14266 r!26197)))))

(assert (=> d!691560 (= (validRegex!2622 (regTwo!14266 r!26197)) e!1499267)))

(declare-fun b!2343095 () Bool)

(declare-fun res!998100 () Bool)

(declare-fun e!1499273 () Bool)

(assert (=> b!2343095 (=> res!998100 e!1499273)))

(assert (=> b!2343095 (= res!998100 (not ((_ is Concat!11499) (regTwo!14266 r!26197))))))

(assert (=> b!2343095 (= e!1499270 e!1499273)))

(declare-fun b!2343096 () Bool)

(declare-fun e!1499271 () Bool)

(declare-fun call!141515 () Bool)

(assert (=> b!2343096 (= e!1499271 call!141515)))

(declare-fun b!2343097 () Bool)

(assert (=> b!2343097 (= e!1499273 e!1499271)))

(declare-fun res!998097 () Bool)

(assert (=> b!2343097 (=> (not res!998097) (not e!1499271))))

(declare-fun call!141516 () Bool)

(assert (=> b!2343097 (= res!998097 call!141516)))

(declare-fun b!2343098 () Bool)

(declare-fun res!998098 () Bool)

(declare-fun e!1499269 () Bool)

(assert (=> b!2343098 (=> (not res!998098) (not e!1499269))))

(assert (=> b!2343098 (= res!998098 call!141516)))

(assert (=> b!2343098 (= e!1499270 e!1499269)))

(declare-fun b!2343099 () Bool)

(declare-fun e!1499272 () Bool)

(assert (=> b!2343099 (= e!1499268 e!1499272)))

(declare-fun res!998101 () Bool)

(assert (=> b!2343099 (= res!998101 (not (nullable!1956 (reg!7206 (regTwo!14266 r!26197)))))))

(assert (=> b!2343099 (=> (not res!998101) (not e!1499272))))

(declare-fun b!2343100 () Bool)

(assert (=> b!2343100 (= e!1499267 e!1499268)))

(declare-fun c!372864 () Bool)

(assert (=> b!2343100 (= c!372864 ((_ is Star!6877) (regTwo!14266 r!26197)))))

(declare-fun bm!141509 () Bool)

(declare-fun call!141514 () Bool)

(assert (=> bm!141509 (= call!141515 call!141514)))

(declare-fun b!2343101 () Bool)

(assert (=> b!2343101 (= e!1499272 call!141514)))

(declare-fun b!2343102 () Bool)

(assert (=> b!2343102 (= e!1499269 call!141515)))

(declare-fun bm!141510 () Bool)

(assert (=> bm!141510 (= call!141514 (validRegex!2622 (ite c!372864 (reg!7206 (regTwo!14266 r!26197)) (ite c!372863 (regTwo!14267 (regTwo!14266 r!26197)) (regTwo!14266 (regTwo!14266 r!26197))))))))

(declare-fun bm!141511 () Bool)

(assert (=> bm!141511 (= call!141516 (validRegex!2622 (ite c!372863 (regOne!14267 (regTwo!14266 r!26197)) (regOne!14266 (regTwo!14266 r!26197)))))))

(assert (= (and d!691560 (not res!998099)) b!2343100))

(assert (= (and b!2343100 c!372864) b!2343099))

(assert (= (and b!2343100 (not c!372864)) b!2343094))

(assert (= (and b!2343099 res!998101) b!2343101))

(assert (= (and b!2343094 c!372863) b!2343098))

(assert (= (and b!2343094 (not c!372863)) b!2343095))

(assert (= (and b!2343098 res!998098) b!2343102))

(assert (= (and b!2343095 (not res!998100)) b!2343097))

(assert (= (and b!2343097 res!998097) b!2343096))

(assert (= (or b!2343102 b!2343096) bm!141509))

(assert (= (or b!2343098 b!2343097) bm!141511))

(assert (= (or b!2343101 bm!141509) bm!141510))

(declare-fun m!2765835 () Bool)

(assert (=> b!2343099 m!2765835))

(declare-fun m!2765837 () Bool)

(assert (=> bm!141510 m!2765837))

(declare-fun m!2765839 () Bool)

(assert (=> bm!141511 m!2765839))

(assert (=> b!2342976 d!691560))

(declare-fun d!691562 () Bool)

(assert (=> d!691562 (= (nullable!1956 (derivativeStep!1616 r!26197 c!13498)) (nullableFct!508 (derivativeStep!1616 r!26197 c!13498)))))

(declare-fun bs!460095 () Bool)

(assert (= bs!460095 d!691562))

(assert (=> bs!460095 m!2765777))

(declare-fun m!2765841 () Bool)

(assert (=> bs!460095 m!2765841))

(assert (=> b!2342974 d!691562))

(declare-fun b!2343103 () Bool)

(declare-fun e!1499275 () Regex!6877)

(declare-fun call!141520 () Regex!6877)

(assert (=> b!2343103 (= e!1499275 (Concat!11499 call!141520 r!26197))))

(declare-fun c!372867 () Bool)

(declare-fun c!372868 () Bool)

(declare-fun bm!141512 () Bool)

(declare-fun call!141517 () Regex!6877)

(assert (=> bm!141512 (= call!141517 (derivativeStep!1616 (ite c!372868 (regTwo!14267 r!26197) (ite c!372867 (reg!7206 r!26197) (regOne!14266 r!26197))) c!13498))))

(declare-fun bm!141513 () Bool)

(declare-fun call!141519 () Regex!6877)

(assert (=> bm!141513 (= call!141519 call!141520)))

(declare-fun b!2343104 () Bool)

(declare-fun e!1499274 () Regex!6877)

(declare-fun e!1499276 () Regex!6877)

(assert (=> b!2343104 (= e!1499274 e!1499276)))

(declare-fun c!372865 () Bool)

(assert (=> b!2343104 (= c!372865 ((_ is ElementMatch!6877) r!26197))))

(declare-fun b!2343105 () Bool)

(declare-fun c!372866 () Bool)

(assert (=> b!2343105 (= c!372866 (nullable!1956 (regOne!14266 r!26197)))))

(declare-fun e!1499277 () Regex!6877)

(assert (=> b!2343105 (= e!1499275 e!1499277)))

(declare-fun d!691564 () Bool)

(declare-fun lt!862819 () Regex!6877)

(assert (=> d!691564 (validRegex!2622 lt!862819)))

(assert (=> d!691564 (= lt!862819 e!1499274)))

(declare-fun c!372869 () Bool)

(assert (=> d!691564 (= c!372869 (or ((_ is EmptyExpr!6877) r!26197) ((_ is EmptyLang!6877) r!26197)))))

(assert (=> d!691564 (validRegex!2622 r!26197)))

(assert (=> d!691564 (= (derivativeStep!1616 r!26197 c!13498) lt!862819)))

(declare-fun b!2343106 () Bool)

(assert (=> b!2343106 (= c!372868 ((_ is Union!6877) r!26197))))

(declare-fun e!1499278 () Regex!6877)

(assert (=> b!2343106 (= e!1499276 e!1499278)))

(declare-fun b!2343107 () Bool)

(assert (=> b!2343107 (= e!1499274 EmptyLang!6877)))

(declare-fun b!2343108 () Bool)

(assert (=> b!2343108 (= e!1499277 (Union!6877 (Concat!11499 call!141519 (regTwo!14266 r!26197)) EmptyLang!6877))))

(declare-fun call!141518 () Regex!6877)

(declare-fun bm!141514 () Bool)

(assert (=> bm!141514 (= call!141518 (derivativeStep!1616 (ite c!372868 (regOne!14267 r!26197) (regTwo!14266 r!26197)) c!13498))))

(declare-fun b!2343109 () Bool)

(assert (=> b!2343109 (= e!1499276 (ite (= c!13498 (c!372817 r!26197)) EmptyExpr!6877 EmptyLang!6877))))

(declare-fun b!2343110 () Bool)

(assert (=> b!2343110 (= e!1499277 (Union!6877 (Concat!11499 call!141519 (regTwo!14266 r!26197)) call!141518))))

(declare-fun b!2343111 () Bool)

(assert (=> b!2343111 (= e!1499278 e!1499275)))

(assert (=> b!2343111 (= c!372867 ((_ is Star!6877) r!26197))))

(declare-fun bm!141515 () Bool)

(assert (=> bm!141515 (= call!141520 call!141517)))

(declare-fun b!2343112 () Bool)

(assert (=> b!2343112 (= e!1499278 (Union!6877 call!141518 call!141517))))

(assert (= (and d!691564 c!372869) b!2343107))

(assert (= (and d!691564 (not c!372869)) b!2343104))

(assert (= (and b!2343104 c!372865) b!2343109))

(assert (= (and b!2343104 (not c!372865)) b!2343106))

(assert (= (and b!2343106 c!372868) b!2343112))

(assert (= (and b!2343106 (not c!372868)) b!2343111))

(assert (= (and b!2343111 c!372867) b!2343103))

(assert (= (and b!2343111 (not c!372867)) b!2343105))

(assert (= (and b!2343105 c!372866) b!2343110))

(assert (= (and b!2343105 (not c!372866)) b!2343108))

(assert (= (or b!2343110 b!2343108) bm!141513))

(assert (= (or b!2343103 bm!141513) bm!141515))

(assert (= (or b!2343112 bm!141515) bm!141512))

(assert (= (or b!2343112 b!2343110) bm!141514))

(declare-fun m!2765843 () Bool)

(assert (=> bm!141512 m!2765843))

(assert (=> b!2343105 m!2765781))

(declare-fun m!2765845 () Bool)

(assert (=> d!691564 m!2765845))

(assert (=> d!691564 m!2765793))

(declare-fun m!2765847 () Bool)

(assert (=> bm!141514 m!2765847))

(assert (=> b!2342974 d!691564))

(declare-fun d!691566 () Bool)

(assert (=> d!691566 (= (nullable!1956 (Concat!11499 (derivativeStep!1616 (regOne!14266 r!26197) c!13498) (regTwo!14266 r!26197))) (nullableFct!508 (Concat!11499 (derivativeStep!1616 (regOne!14266 r!26197) c!13498) (regTwo!14266 r!26197))))))

(declare-fun bs!460096 () Bool)

(assert (= bs!460096 d!691566))

(declare-fun m!2765849 () Bool)

(assert (=> bs!460096 m!2765849))

(assert (=> b!2342973 d!691566))

(declare-fun b!2343113 () Bool)

(declare-fun e!1499280 () Regex!6877)

(declare-fun call!141524 () Regex!6877)

(assert (=> b!2343113 (= e!1499280 (Concat!11499 call!141524 (regOne!14266 r!26197)))))

(declare-fun c!372872 () Bool)

(declare-fun bm!141516 () Bool)

(declare-fun c!372873 () Bool)

(declare-fun call!141521 () Regex!6877)

(assert (=> bm!141516 (= call!141521 (derivativeStep!1616 (ite c!372873 (regTwo!14267 (regOne!14266 r!26197)) (ite c!372872 (reg!7206 (regOne!14266 r!26197)) (regOne!14266 (regOne!14266 r!26197)))) c!13498))))

(declare-fun bm!141517 () Bool)

(declare-fun call!141523 () Regex!6877)

(assert (=> bm!141517 (= call!141523 call!141524)))

(declare-fun b!2343114 () Bool)

(declare-fun e!1499279 () Regex!6877)

(declare-fun e!1499281 () Regex!6877)

(assert (=> b!2343114 (= e!1499279 e!1499281)))

(declare-fun c!372870 () Bool)

(assert (=> b!2343114 (= c!372870 ((_ is ElementMatch!6877) (regOne!14266 r!26197)))))

(declare-fun b!2343115 () Bool)

(declare-fun c!372871 () Bool)

(assert (=> b!2343115 (= c!372871 (nullable!1956 (regOne!14266 (regOne!14266 r!26197))))))

(declare-fun e!1499282 () Regex!6877)

(assert (=> b!2343115 (= e!1499280 e!1499282)))

(declare-fun d!691568 () Bool)

(declare-fun lt!862820 () Regex!6877)

(assert (=> d!691568 (validRegex!2622 lt!862820)))

(assert (=> d!691568 (= lt!862820 e!1499279)))

(declare-fun c!372874 () Bool)

(assert (=> d!691568 (= c!372874 (or ((_ is EmptyExpr!6877) (regOne!14266 r!26197)) ((_ is EmptyLang!6877) (regOne!14266 r!26197))))))

(assert (=> d!691568 (validRegex!2622 (regOne!14266 r!26197))))

(assert (=> d!691568 (= (derivativeStep!1616 (regOne!14266 r!26197) c!13498) lt!862820)))

(declare-fun b!2343116 () Bool)

(assert (=> b!2343116 (= c!372873 ((_ is Union!6877) (regOne!14266 r!26197)))))

(declare-fun e!1499283 () Regex!6877)

(assert (=> b!2343116 (= e!1499281 e!1499283)))

(declare-fun b!2343117 () Bool)

(assert (=> b!2343117 (= e!1499279 EmptyLang!6877)))

(declare-fun b!2343118 () Bool)

(assert (=> b!2343118 (= e!1499282 (Union!6877 (Concat!11499 call!141523 (regTwo!14266 (regOne!14266 r!26197))) EmptyLang!6877))))

(declare-fun call!141522 () Regex!6877)

(declare-fun bm!141518 () Bool)

(assert (=> bm!141518 (= call!141522 (derivativeStep!1616 (ite c!372873 (regOne!14267 (regOne!14266 r!26197)) (regTwo!14266 (regOne!14266 r!26197))) c!13498))))

(declare-fun b!2343119 () Bool)

(assert (=> b!2343119 (= e!1499281 (ite (= c!13498 (c!372817 (regOne!14266 r!26197))) EmptyExpr!6877 EmptyLang!6877))))

(declare-fun b!2343120 () Bool)

(assert (=> b!2343120 (= e!1499282 (Union!6877 (Concat!11499 call!141523 (regTwo!14266 (regOne!14266 r!26197))) call!141522))))

(declare-fun b!2343121 () Bool)

(assert (=> b!2343121 (= e!1499283 e!1499280)))

(assert (=> b!2343121 (= c!372872 ((_ is Star!6877) (regOne!14266 r!26197)))))

(declare-fun bm!141519 () Bool)

(assert (=> bm!141519 (= call!141524 call!141521)))

(declare-fun b!2343122 () Bool)

(assert (=> b!2343122 (= e!1499283 (Union!6877 call!141522 call!141521))))

(assert (= (and d!691568 c!372874) b!2343117))

(assert (= (and d!691568 (not c!372874)) b!2343114))

(assert (= (and b!2343114 c!372870) b!2343119))

(assert (= (and b!2343114 (not c!372870)) b!2343116))

(assert (= (and b!2343116 c!372873) b!2343122))

(assert (= (and b!2343116 (not c!372873)) b!2343121))

(assert (= (and b!2343121 c!372872) b!2343113))

(assert (= (and b!2343121 (not c!372872)) b!2343115))

(assert (= (and b!2343115 c!372871) b!2343120))

(assert (= (and b!2343115 (not c!372871)) b!2343118))

(assert (= (or b!2343120 b!2343118) bm!141517))

(assert (= (or b!2343113 bm!141517) bm!141519))

(assert (= (or b!2343122 bm!141519) bm!141516))

(assert (= (or b!2343122 b!2343120) bm!141518))

(declare-fun m!2765851 () Bool)

(assert (=> bm!141516 m!2765851))

(declare-fun m!2765853 () Bool)

(assert (=> b!2343115 m!2765853))

(declare-fun m!2765855 () Bool)

(assert (=> d!691568 m!2765855))

(declare-fun m!2765857 () Bool)

(assert (=> d!691568 m!2765857))

(declare-fun m!2765859 () Bool)

(assert (=> bm!141518 m!2765859))

(assert (=> b!2342973 d!691568))

(declare-fun b!2343142 () Bool)

(declare-fun e!1499293 () Bool)

(assert (=> b!2343142 (= e!1499293 tp_is_empty!11065)))

(declare-fun b!2343145 () Bool)

(declare-fun tp!743732 () Bool)

(declare-fun tp!743733 () Bool)

(assert (=> b!2343145 (= e!1499293 (and tp!743732 tp!743733))))

(declare-fun b!2343143 () Bool)

(declare-fun tp!743736 () Bool)

(declare-fun tp!743735 () Bool)

(assert (=> b!2343143 (= e!1499293 (and tp!743736 tp!743735))))

(assert (=> b!2342969 (= tp!743717 e!1499293)))

(declare-fun b!2343144 () Bool)

(declare-fun tp!743734 () Bool)

(assert (=> b!2343144 (= e!1499293 tp!743734)))

(assert (= (and b!2342969 ((_ is ElementMatch!6877) (regOne!14267 r!26197))) b!2343142))

(assert (= (and b!2342969 ((_ is Concat!11499) (regOne!14267 r!26197))) b!2343143))

(assert (= (and b!2342969 ((_ is Star!6877) (regOne!14267 r!26197))) b!2343144))

(assert (= (and b!2342969 ((_ is Union!6877) (regOne!14267 r!26197))) b!2343145))

(declare-fun b!2343156 () Bool)

(declare-fun e!1499299 () Bool)

(assert (=> b!2343156 (= e!1499299 tp_is_empty!11065)))

(declare-fun b!2343159 () Bool)

(declare-fun tp!743737 () Bool)

(declare-fun tp!743738 () Bool)

(assert (=> b!2343159 (= e!1499299 (and tp!743737 tp!743738))))

(declare-fun b!2343157 () Bool)

(declare-fun tp!743741 () Bool)

(declare-fun tp!743740 () Bool)

(assert (=> b!2343157 (= e!1499299 (and tp!743741 tp!743740))))

(assert (=> b!2342969 (= tp!743718 e!1499299)))

(declare-fun b!2343158 () Bool)

(declare-fun tp!743739 () Bool)

(assert (=> b!2343158 (= e!1499299 tp!743739)))

(assert (= (and b!2342969 ((_ is ElementMatch!6877) (regTwo!14267 r!26197))) b!2343156))

(assert (= (and b!2342969 ((_ is Concat!11499) (regTwo!14267 r!26197))) b!2343157))

(assert (= (and b!2342969 ((_ is Star!6877) (regTwo!14267 r!26197))) b!2343158))

(assert (= (and b!2342969 ((_ is Union!6877) (regTwo!14267 r!26197))) b!2343159))

(declare-fun b!2343160 () Bool)

(declare-fun e!1499300 () Bool)

(assert (=> b!2343160 (= e!1499300 tp_is_empty!11065)))

(declare-fun b!2343163 () Bool)

(declare-fun tp!743742 () Bool)

(declare-fun tp!743743 () Bool)

(assert (=> b!2343163 (= e!1499300 (and tp!743742 tp!743743))))

(declare-fun b!2343161 () Bool)

(declare-fun tp!743746 () Bool)

(declare-fun tp!743745 () Bool)

(assert (=> b!2343161 (= e!1499300 (and tp!743746 tp!743745))))

(assert (=> b!2342978 (= tp!743719 e!1499300)))

(declare-fun b!2343162 () Bool)

(declare-fun tp!743744 () Bool)

(assert (=> b!2343162 (= e!1499300 tp!743744)))

(assert (= (and b!2342978 ((_ is ElementMatch!6877) (regOne!14266 r!26197))) b!2343160))

(assert (= (and b!2342978 ((_ is Concat!11499) (regOne!14266 r!26197))) b!2343161))

(assert (= (and b!2342978 ((_ is Star!6877) (regOne!14266 r!26197))) b!2343162))

(assert (= (and b!2342978 ((_ is Union!6877) (regOne!14266 r!26197))) b!2343163))

(declare-fun b!2343164 () Bool)

(declare-fun e!1499301 () Bool)

(assert (=> b!2343164 (= e!1499301 tp_is_empty!11065)))

(declare-fun b!2343167 () Bool)

(declare-fun tp!743747 () Bool)

(declare-fun tp!743748 () Bool)

(assert (=> b!2343167 (= e!1499301 (and tp!743747 tp!743748))))

(declare-fun b!2343165 () Bool)

(declare-fun tp!743751 () Bool)

(declare-fun tp!743750 () Bool)

(assert (=> b!2343165 (= e!1499301 (and tp!743751 tp!743750))))

(assert (=> b!2342978 (= tp!743720 e!1499301)))

(declare-fun b!2343166 () Bool)

(declare-fun tp!743749 () Bool)

(assert (=> b!2343166 (= e!1499301 tp!743749)))

(assert (= (and b!2342978 ((_ is ElementMatch!6877) (regTwo!14266 r!26197))) b!2343164))

(assert (= (and b!2342978 ((_ is Concat!11499) (regTwo!14266 r!26197))) b!2343165))

(assert (= (and b!2342978 ((_ is Star!6877) (regTwo!14266 r!26197))) b!2343166))

(assert (= (and b!2342978 ((_ is Union!6877) (regTwo!14266 r!26197))) b!2343167))

(declare-fun b!2343168 () Bool)

(declare-fun e!1499302 () Bool)

(assert (=> b!2343168 (= e!1499302 tp_is_empty!11065)))

(declare-fun b!2343171 () Bool)

(declare-fun tp!743752 () Bool)

(declare-fun tp!743753 () Bool)

(assert (=> b!2343171 (= e!1499302 (and tp!743752 tp!743753))))

(declare-fun b!2343169 () Bool)

(declare-fun tp!743756 () Bool)

(declare-fun tp!743755 () Bool)

(assert (=> b!2343169 (= e!1499302 (and tp!743756 tp!743755))))

(assert (=> b!2342968 (= tp!743721 e!1499302)))

(declare-fun b!2343170 () Bool)

(declare-fun tp!743754 () Bool)

(assert (=> b!2343170 (= e!1499302 tp!743754)))

(assert (= (and b!2342968 ((_ is ElementMatch!6877) (reg!7206 r!26197))) b!2343168))

(assert (= (and b!2342968 ((_ is Concat!11499) (reg!7206 r!26197))) b!2343169))

(assert (= (and b!2342968 ((_ is Star!6877) (reg!7206 r!26197))) b!2343170))

(assert (= (and b!2342968 ((_ is Union!6877) (reg!7206 r!26197))) b!2343171))

(check-sat (not d!691548) (not b!2343166) (not b!2343002) (not bm!141501) (not d!691568) (not d!691566) (not b!2343163) (not bm!141512) (not b!2343105) (not bm!141499) (not b!2343167) (not b!2343170) (not bm!141474) (not b!2343115) tp_is_empty!11065 (not b!2343143) (not b!2343159) (not d!691562) (not b!2343171) (not bm!141473) (not d!691564) (not bm!141514) (not bm!141516) (not b!2343169) (not b!2343165) (not bm!141518) (not b!2343099) (not b!2343162) (not b!2343158) (not b!2343144) (not b!2343082) (not d!691538) (not bm!141510) (not b!2343145) (not b!2343157) (not b!2343161) (not d!691558) (not bm!141511) (not d!691546))
(check-sat)

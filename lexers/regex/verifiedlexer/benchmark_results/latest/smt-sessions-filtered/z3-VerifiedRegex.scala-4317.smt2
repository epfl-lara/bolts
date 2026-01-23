; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230764 () Bool)

(assert start!230764)

(declare-fun b!2341947 () Bool)

(declare-fun res!997789 () Bool)

(declare-fun e!1498706 () Bool)

(assert (=> b!2341947 (=> (not res!997789) (not e!1498706))))

(declare-datatypes ((C!13904 0))(
  ( (C!13905 (val!8112 Int)) )
))
(declare-datatypes ((Regex!6873 0))(
  ( (ElementMatch!6873 (c!372625 C!13904)) (Concat!11495 (regOne!14258 Regex!6873) (regTwo!14258 Regex!6873)) (EmptyExpr!6873) (Star!6873 (reg!7202 Regex!6873)) (EmptyLang!6873) (Union!6873 (regOne!14259 Regex!6873) (regTwo!14259 Regex!6873)) )
))
(declare-fun r!26197 () Regex!6873)

(declare-fun c!13498 () C!13904)

(declare-fun nullable!1952 (Regex!6873) Bool)

(declare-fun derivativeStep!1612 (Regex!6873 C!13904) Regex!6873)

(assert (=> b!2341947 (= res!997789 (nullable!1952 (derivativeStep!1612 r!26197 c!13498)))))

(declare-fun b!2341948 () Bool)

(declare-fun res!997793 () Bool)

(assert (=> b!2341948 (=> (not res!997793) (not e!1498706))))

(assert (=> b!2341948 (= res!997793 (nullable!1952 (regOne!14258 r!26197)))))

(declare-fun b!2341949 () Bool)

(declare-fun res!997791 () Bool)

(assert (=> b!2341949 (=> (not res!997791) (not e!1498706))))

(assert (=> b!2341949 (= res!997791 (not (nullable!1952 r!26197)))))

(declare-fun b!2341951 () Bool)

(declare-fun e!1498705 () Bool)

(declare-fun tp_is_empty!11057 () Bool)

(assert (=> b!2341951 (= e!1498705 tp_is_empty!11057)))

(declare-fun b!2341952 () Bool)

(declare-fun res!997788 () Bool)

(assert (=> b!2341952 (=> (not res!997788) (not e!1498706))))

(assert (=> b!2341952 (= res!997788 (nullable!1952 (Concat!11495 (derivativeStep!1612 (regOne!14258 r!26197) c!13498) (regTwo!14258 r!26197))))))

(declare-fun b!2341953 () Bool)

(declare-fun res!997790 () Bool)

(assert (=> b!2341953 (=> (not res!997790) (not e!1498706))))

(get-info :version)

(assert (=> b!2341953 (= res!997790 (and (not ((_ is EmptyExpr!6873) r!26197)) (not ((_ is EmptyLang!6873) r!26197)) (not ((_ is ElementMatch!6873) r!26197)) (not ((_ is Union!6873) r!26197)) (not ((_ is Star!6873) r!26197))))))

(declare-fun b!2341954 () Bool)

(declare-fun tp!743269 () Bool)

(declare-fun tp!743267 () Bool)

(assert (=> b!2341954 (= e!1498705 (and tp!743269 tp!743267))))

(declare-fun b!2341955 () Bool)

(declare-fun validRegex!2618 (Regex!6873) Bool)

(assert (=> b!2341955 (= e!1498706 (not (validRegex!2618 (regOne!14258 r!26197))))))

(declare-fun b!2341956 () Bool)

(declare-fun tp!743268 () Bool)

(assert (=> b!2341956 (= e!1498705 tp!743268)))

(declare-fun res!997792 () Bool)

(assert (=> start!230764 (=> (not res!997792) (not e!1498706))))

(assert (=> start!230764 (= res!997792 (validRegex!2618 r!26197))))

(assert (=> start!230764 e!1498706))

(assert (=> start!230764 e!1498705))

(assert (=> start!230764 tp_is_empty!11057))

(declare-fun b!2341950 () Bool)

(declare-fun tp!743271 () Bool)

(declare-fun tp!743270 () Bool)

(assert (=> b!2341950 (= e!1498705 (and tp!743271 tp!743270))))

(assert (= (and start!230764 res!997792) b!2341949))

(assert (= (and b!2341949 res!997791) b!2341947))

(assert (= (and b!2341947 res!997789) b!2341953))

(assert (= (and b!2341953 res!997790) b!2341948))

(assert (= (and b!2341948 res!997793) b!2341952))

(assert (= (and b!2341952 res!997788) b!2341955))

(assert (= (and start!230764 ((_ is ElementMatch!6873) r!26197)) b!2341951))

(assert (= (and start!230764 ((_ is Concat!11495) r!26197)) b!2341954))

(assert (= (and start!230764 ((_ is Star!6873) r!26197)) b!2341956))

(assert (= (and start!230764 ((_ is Union!6873) r!26197)) b!2341950))

(declare-fun m!2765375 () Bool)

(assert (=> b!2341947 m!2765375))

(assert (=> b!2341947 m!2765375))

(declare-fun m!2765377 () Bool)

(assert (=> b!2341947 m!2765377))

(declare-fun m!2765379 () Bool)

(assert (=> b!2341949 m!2765379))

(declare-fun m!2765381 () Bool)

(assert (=> start!230764 m!2765381))

(declare-fun m!2765383 () Bool)

(assert (=> b!2341955 m!2765383))

(declare-fun m!2765385 () Bool)

(assert (=> b!2341948 m!2765385))

(declare-fun m!2765387 () Bool)

(assert (=> b!2341952 m!2765387))

(declare-fun m!2765389 () Bool)

(assert (=> b!2341952 m!2765389))

(check-sat (not b!2341955) (not b!2341950) (not b!2341956) (not b!2341952) tp_is_empty!11057 (not b!2341948) (not b!2341954) (not b!2341949) (not b!2341947) (not start!230764))
(check-sat)
(get-model)

(declare-fun d!691404 () Bool)

(declare-fun nullableFct!504 (Regex!6873) Bool)

(assert (=> d!691404 (= (nullable!1952 (derivativeStep!1612 r!26197 c!13498)) (nullableFct!504 (derivativeStep!1612 r!26197 c!13498)))))

(declare-fun bs!460063 () Bool)

(assert (= bs!460063 d!691404))

(assert (=> bs!460063 m!2765375))

(declare-fun m!2765391 () Bool)

(assert (=> bs!460063 m!2765391))

(assert (=> b!2341947 d!691404))

(declare-fun d!691406 () Bool)

(declare-fun lt!862790 () Regex!6873)

(assert (=> d!691406 (validRegex!2618 lt!862790)))

(declare-fun e!1498746 () Regex!6873)

(assert (=> d!691406 (= lt!862790 e!1498746)))

(declare-fun c!372647 () Bool)

(assert (=> d!691406 (= c!372647 (or ((_ is EmptyExpr!6873) r!26197) ((_ is EmptyLang!6873) r!26197)))))

(assert (=> d!691406 (validRegex!2618 r!26197)))

(assert (=> d!691406 (= (derivativeStep!1612 r!26197 c!13498) lt!862790)))

(declare-fun c!372645 () Bool)

(declare-fun bm!141282 () Bool)

(declare-fun call!141289 () Regex!6873)

(assert (=> bm!141282 (= call!141289 (derivativeStep!1612 (ite c!372645 (regOne!14259 r!26197) (regTwo!14258 r!26197)) c!13498))))

(declare-fun bm!141283 () Bool)

(declare-fun call!141290 () Regex!6873)

(declare-fun call!141288 () Regex!6873)

(assert (=> bm!141283 (= call!141290 call!141288)))

(declare-fun b!2342013 () Bool)

(declare-fun c!372648 () Bool)

(assert (=> b!2342013 (= c!372648 (nullable!1952 (regOne!14258 r!26197)))))

(declare-fun e!1498748 () Regex!6873)

(declare-fun e!1498745 () Regex!6873)

(assert (=> b!2342013 (= e!1498748 e!1498745)))

(declare-fun bm!141284 () Bool)

(declare-fun call!141287 () Regex!6873)

(assert (=> bm!141284 (= call!141287 call!141290)))

(declare-fun b!2342014 () Bool)

(declare-fun e!1498747 () Regex!6873)

(assert (=> b!2342014 (= e!1498746 e!1498747)))

(declare-fun c!372646 () Bool)

(assert (=> b!2342014 (= c!372646 ((_ is ElementMatch!6873) r!26197))))

(declare-fun b!2342015 () Bool)

(declare-fun e!1498749 () Regex!6873)

(assert (=> b!2342015 (= e!1498749 (Union!6873 call!141289 call!141288))))

(declare-fun b!2342016 () Bool)

(assert (=> b!2342016 (= e!1498746 EmptyLang!6873)))

(declare-fun b!2342017 () Bool)

(assert (=> b!2342017 (= c!372645 ((_ is Union!6873) r!26197))))

(assert (=> b!2342017 (= e!1498747 e!1498749)))

(declare-fun b!2342018 () Bool)

(assert (=> b!2342018 (= e!1498748 (Concat!11495 call!141290 r!26197))))

(declare-fun c!372644 () Bool)

(declare-fun bm!141285 () Bool)

(assert (=> bm!141285 (= call!141288 (derivativeStep!1612 (ite c!372645 (regTwo!14259 r!26197) (ite c!372644 (reg!7202 r!26197) (regOne!14258 r!26197))) c!13498))))

(declare-fun b!2342019 () Bool)

(assert (=> b!2342019 (= e!1498749 e!1498748)))

(assert (=> b!2342019 (= c!372644 ((_ is Star!6873) r!26197))))

(declare-fun b!2342020 () Bool)

(assert (=> b!2342020 (= e!1498745 (Union!6873 (Concat!11495 call!141287 (regTwo!14258 r!26197)) EmptyLang!6873))))

(declare-fun b!2342021 () Bool)

(assert (=> b!2342021 (= e!1498745 (Union!6873 (Concat!11495 call!141287 (regTwo!14258 r!26197)) call!141289))))

(declare-fun b!2342022 () Bool)

(assert (=> b!2342022 (= e!1498747 (ite (= c!13498 (c!372625 r!26197)) EmptyExpr!6873 EmptyLang!6873))))

(assert (= (and d!691406 c!372647) b!2342016))

(assert (= (and d!691406 (not c!372647)) b!2342014))

(assert (= (and b!2342014 c!372646) b!2342022))

(assert (= (and b!2342014 (not c!372646)) b!2342017))

(assert (= (and b!2342017 c!372645) b!2342015))

(assert (= (and b!2342017 (not c!372645)) b!2342019))

(assert (= (and b!2342019 c!372644) b!2342018))

(assert (= (and b!2342019 (not c!372644)) b!2342013))

(assert (= (and b!2342013 c!372648) b!2342021))

(assert (= (and b!2342013 (not c!372648)) b!2342020))

(assert (= (or b!2342021 b!2342020) bm!141284))

(assert (= (or b!2342018 bm!141284) bm!141283))

(assert (= (or b!2342015 bm!141283) bm!141285))

(assert (= (or b!2342015 b!2342021) bm!141282))

(declare-fun m!2765409 () Bool)

(assert (=> d!691406 m!2765409))

(assert (=> d!691406 m!2765381))

(declare-fun m!2765411 () Bool)

(assert (=> bm!141282 m!2765411))

(assert (=> b!2342013 m!2765385))

(declare-fun m!2765413 () Bool)

(assert (=> bm!141285 m!2765413))

(assert (=> b!2341947 d!691406))

(declare-fun d!691418 () Bool)

(assert (=> d!691418 (= (nullable!1952 (regOne!14258 r!26197)) (nullableFct!504 (regOne!14258 r!26197)))))

(declare-fun bs!460066 () Bool)

(assert (= bs!460066 d!691418))

(declare-fun m!2765415 () Bool)

(assert (=> bs!460066 m!2765415))

(assert (=> b!2341948 d!691418))

(declare-fun b!2342062 () Bool)

(declare-fun e!1498776 () Bool)

(declare-fun e!1498780 () Bool)

(assert (=> b!2342062 (= e!1498776 e!1498780)))

(declare-fun res!997826 () Bool)

(assert (=> b!2342062 (= res!997826 (not (nullable!1952 (reg!7202 r!26197))))))

(assert (=> b!2342062 (=> (not res!997826) (not e!1498780))))

(declare-fun b!2342063 () Bool)

(declare-fun e!1498779 () Bool)

(declare-fun call!141305 () Bool)

(assert (=> b!2342063 (= e!1498779 call!141305)))

(declare-fun b!2342064 () Bool)

(declare-fun e!1498778 () Bool)

(assert (=> b!2342064 (= e!1498778 e!1498779)))

(declare-fun res!997827 () Bool)

(assert (=> b!2342064 (=> (not res!997827) (not e!1498779))))

(declare-fun call!141306 () Bool)

(assert (=> b!2342064 (= res!997827 call!141306)))

(declare-fun b!2342065 () Bool)

(declare-fun res!997825 () Bool)

(assert (=> b!2342065 (=> res!997825 e!1498778)))

(assert (=> b!2342065 (= res!997825 (not ((_ is Concat!11495) r!26197)))))

(declare-fun e!1498774 () Bool)

(assert (=> b!2342065 (= e!1498774 e!1498778)))

(declare-fun b!2342066 () Bool)

(declare-fun call!141307 () Bool)

(assert (=> b!2342066 (= e!1498780 call!141307)))

(declare-fun bm!141300 () Bool)

(declare-fun c!372664 () Bool)

(assert (=> bm!141300 (= call!141305 (validRegex!2618 (ite c!372664 (regTwo!14259 r!26197) (regTwo!14258 r!26197))))))

(declare-fun bm!141301 () Bool)

(assert (=> bm!141301 (= call!141306 call!141307)))

(declare-fun b!2342067 () Bool)

(assert (=> b!2342067 (= e!1498776 e!1498774)))

(assert (=> b!2342067 (= c!372664 ((_ is Union!6873) r!26197))))

(declare-fun c!372663 () Bool)

(declare-fun bm!141302 () Bool)

(assert (=> bm!141302 (= call!141307 (validRegex!2618 (ite c!372663 (reg!7202 r!26197) (ite c!372664 (regOne!14259 r!26197) (regOne!14258 r!26197)))))))

(declare-fun b!2342068 () Bool)

(declare-fun e!1498775 () Bool)

(assert (=> b!2342068 (= e!1498775 call!141305)))

(declare-fun b!2342069 () Bool)

(declare-fun res!997828 () Bool)

(assert (=> b!2342069 (=> (not res!997828) (not e!1498775))))

(assert (=> b!2342069 (= res!997828 call!141306)))

(assert (=> b!2342069 (= e!1498774 e!1498775)))

(declare-fun b!2342061 () Bool)

(declare-fun e!1498777 () Bool)

(assert (=> b!2342061 (= e!1498777 e!1498776)))

(assert (=> b!2342061 (= c!372663 ((_ is Star!6873) r!26197))))

(declare-fun d!691420 () Bool)

(declare-fun res!997824 () Bool)

(assert (=> d!691420 (=> res!997824 e!1498777)))

(assert (=> d!691420 (= res!997824 ((_ is ElementMatch!6873) r!26197))))

(assert (=> d!691420 (= (validRegex!2618 r!26197) e!1498777)))

(assert (= (and d!691420 (not res!997824)) b!2342061))

(assert (= (and b!2342061 c!372663) b!2342062))

(assert (= (and b!2342061 (not c!372663)) b!2342067))

(assert (= (and b!2342062 res!997826) b!2342066))

(assert (= (and b!2342067 c!372664) b!2342069))

(assert (= (and b!2342067 (not c!372664)) b!2342065))

(assert (= (and b!2342069 res!997828) b!2342068))

(assert (= (and b!2342065 (not res!997825)) b!2342064))

(assert (= (and b!2342064 res!997827) b!2342063))

(assert (= (or b!2342068 b!2342063) bm!141300))

(assert (= (or b!2342069 b!2342064) bm!141301))

(assert (= (or b!2342066 bm!141301) bm!141302))

(declare-fun m!2765417 () Bool)

(assert (=> b!2342062 m!2765417))

(declare-fun m!2765419 () Bool)

(assert (=> bm!141300 m!2765419))

(declare-fun m!2765421 () Bool)

(assert (=> bm!141302 m!2765421))

(assert (=> start!230764 d!691420))

(declare-fun d!691422 () Bool)

(assert (=> d!691422 (= (nullable!1952 r!26197) (nullableFct!504 r!26197))))

(declare-fun bs!460067 () Bool)

(assert (= bs!460067 d!691422))

(declare-fun m!2765423 () Bool)

(assert (=> bs!460067 m!2765423))

(assert (=> b!2341949 d!691422))

(declare-fun b!2342071 () Bool)

(declare-fun e!1498783 () Bool)

(declare-fun e!1498787 () Bool)

(assert (=> b!2342071 (= e!1498783 e!1498787)))

(declare-fun res!997831 () Bool)

(assert (=> b!2342071 (= res!997831 (not (nullable!1952 (reg!7202 (regOne!14258 r!26197)))))))

(assert (=> b!2342071 (=> (not res!997831) (not e!1498787))))

(declare-fun b!2342072 () Bool)

(declare-fun e!1498786 () Bool)

(declare-fun call!141308 () Bool)

(assert (=> b!2342072 (= e!1498786 call!141308)))

(declare-fun b!2342073 () Bool)

(declare-fun e!1498785 () Bool)

(assert (=> b!2342073 (= e!1498785 e!1498786)))

(declare-fun res!997832 () Bool)

(assert (=> b!2342073 (=> (not res!997832) (not e!1498786))))

(declare-fun call!141309 () Bool)

(assert (=> b!2342073 (= res!997832 call!141309)))

(declare-fun b!2342074 () Bool)

(declare-fun res!997830 () Bool)

(assert (=> b!2342074 (=> res!997830 e!1498785)))

(assert (=> b!2342074 (= res!997830 (not ((_ is Concat!11495) (regOne!14258 r!26197))))))

(declare-fun e!1498781 () Bool)

(assert (=> b!2342074 (= e!1498781 e!1498785)))

(declare-fun b!2342075 () Bool)

(declare-fun call!141310 () Bool)

(assert (=> b!2342075 (= e!1498787 call!141310)))

(declare-fun bm!141303 () Bool)

(declare-fun c!372666 () Bool)

(assert (=> bm!141303 (= call!141308 (validRegex!2618 (ite c!372666 (regTwo!14259 (regOne!14258 r!26197)) (regTwo!14258 (regOne!14258 r!26197)))))))

(declare-fun bm!141304 () Bool)

(assert (=> bm!141304 (= call!141309 call!141310)))

(declare-fun b!2342076 () Bool)

(assert (=> b!2342076 (= e!1498783 e!1498781)))

(assert (=> b!2342076 (= c!372666 ((_ is Union!6873) (regOne!14258 r!26197)))))

(declare-fun bm!141305 () Bool)

(declare-fun c!372665 () Bool)

(assert (=> bm!141305 (= call!141310 (validRegex!2618 (ite c!372665 (reg!7202 (regOne!14258 r!26197)) (ite c!372666 (regOne!14259 (regOne!14258 r!26197)) (regOne!14258 (regOne!14258 r!26197))))))))

(declare-fun b!2342077 () Bool)

(declare-fun e!1498782 () Bool)

(assert (=> b!2342077 (= e!1498782 call!141308)))

(declare-fun b!2342078 () Bool)

(declare-fun res!997833 () Bool)

(assert (=> b!2342078 (=> (not res!997833) (not e!1498782))))

(assert (=> b!2342078 (= res!997833 call!141309)))

(assert (=> b!2342078 (= e!1498781 e!1498782)))

(declare-fun b!2342070 () Bool)

(declare-fun e!1498784 () Bool)

(assert (=> b!2342070 (= e!1498784 e!1498783)))

(assert (=> b!2342070 (= c!372665 ((_ is Star!6873) (regOne!14258 r!26197)))))

(declare-fun d!691424 () Bool)

(declare-fun res!997829 () Bool)

(assert (=> d!691424 (=> res!997829 e!1498784)))

(assert (=> d!691424 (= res!997829 ((_ is ElementMatch!6873) (regOne!14258 r!26197)))))

(assert (=> d!691424 (= (validRegex!2618 (regOne!14258 r!26197)) e!1498784)))

(assert (= (and d!691424 (not res!997829)) b!2342070))

(assert (= (and b!2342070 c!372665) b!2342071))

(assert (= (and b!2342070 (not c!372665)) b!2342076))

(assert (= (and b!2342071 res!997831) b!2342075))

(assert (= (and b!2342076 c!372666) b!2342078))

(assert (= (and b!2342076 (not c!372666)) b!2342074))

(assert (= (and b!2342078 res!997833) b!2342077))

(assert (= (and b!2342074 (not res!997830)) b!2342073))

(assert (= (and b!2342073 res!997832) b!2342072))

(assert (= (or b!2342077 b!2342072) bm!141303))

(assert (= (or b!2342078 b!2342073) bm!141304))

(assert (= (or b!2342075 bm!141304) bm!141305))

(declare-fun m!2765425 () Bool)

(assert (=> b!2342071 m!2765425))

(declare-fun m!2765427 () Bool)

(assert (=> bm!141303 m!2765427))

(declare-fun m!2765429 () Bool)

(assert (=> bm!141305 m!2765429))

(assert (=> b!2341955 d!691424))

(declare-fun d!691426 () Bool)

(assert (=> d!691426 (= (nullable!1952 (Concat!11495 (derivativeStep!1612 (regOne!14258 r!26197) c!13498) (regTwo!14258 r!26197))) (nullableFct!504 (Concat!11495 (derivativeStep!1612 (regOne!14258 r!26197) c!13498) (regTwo!14258 r!26197))))))

(declare-fun bs!460068 () Bool)

(assert (= bs!460068 d!691426))

(declare-fun m!2765431 () Bool)

(assert (=> bs!460068 m!2765431))

(assert (=> b!2341952 d!691426))

(declare-fun d!691428 () Bool)

(declare-fun lt!862793 () Regex!6873)

(assert (=> d!691428 (validRegex!2618 lt!862793)))

(declare-fun e!1498789 () Regex!6873)

(assert (=> d!691428 (= lt!862793 e!1498789)))

(declare-fun c!372670 () Bool)

(assert (=> d!691428 (= c!372670 (or ((_ is EmptyExpr!6873) (regOne!14258 r!26197)) ((_ is EmptyLang!6873) (regOne!14258 r!26197))))))

(assert (=> d!691428 (validRegex!2618 (regOne!14258 r!26197))))

(assert (=> d!691428 (= (derivativeStep!1612 (regOne!14258 r!26197) c!13498) lt!862793)))

(declare-fun c!372668 () Bool)

(declare-fun call!141313 () Regex!6873)

(declare-fun bm!141306 () Bool)

(assert (=> bm!141306 (= call!141313 (derivativeStep!1612 (ite c!372668 (regOne!14259 (regOne!14258 r!26197)) (regTwo!14258 (regOne!14258 r!26197))) c!13498))))

(declare-fun bm!141307 () Bool)

(declare-fun call!141314 () Regex!6873)

(declare-fun call!141312 () Regex!6873)

(assert (=> bm!141307 (= call!141314 call!141312)))

(declare-fun b!2342079 () Bool)

(declare-fun c!372671 () Bool)

(assert (=> b!2342079 (= c!372671 (nullable!1952 (regOne!14258 (regOne!14258 r!26197))))))

(declare-fun e!1498791 () Regex!6873)

(declare-fun e!1498788 () Regex!6873)

(assert (=> b!2342079 (= e!1498791 e!1498788)))

(declare-fun bm!141308 () Bool)

(declare-fun call!141311 () Regex!6873)

(assert (=> bm!141308 (= call!141311 call!141314)))

(declare-fun b!2342080 () Bool)

(declare-fun e!1498790 () Regex!6873)

(assert (=> b!2342080 (= e!1498789 e!1498790)))

(declare-fun c!372669 () Bool)

(assert (=> b!2342080 (= c!372669 ((_ is ElementMatch!6873) (regOne!14258 r!26197)))))

(declare-fun b!2342081 () Bool)

(declare-fun e!1498792 () Regex!6873)

(assert (=> b!2342081 (= e!1498792 (Union!6873 call!141313 call!141312))))

(declare-fun b!2342082 () Bool)

(assert (=> b!2342082 (= e!1498789 EmptyLang!6873)))

(declare-fun b!2342083 () Bool)

(assert (=> b!2342083 (= c!372668 ((_ is Union!6873) (regOne!14258 r!26197)))))

(assert (=> b!2342083 (= e!1498790 e!1498792)))

(declare-fun b!2342084 () Bool)

(assert (=> b!2342084 (= e!1498791 (Concat!11495 call!141314 (regOne!14258 r!26197)))))

(declare-fun bm!141309 () Bool)

(declare-fun c!372667 () Bool)

(assert (=> bm!141309 (= call!141312 (derivativeStep!1612 (ite c!372668 (regTwo!14259 (regOne!14258 r!26197)) (ite c!372667 (reg!7202 (regOne!14258 r!26197)) (regOne!14258 (regOne!14258 r!26197)))) c!13498))))

(declare-fun b!2342085 () Bool)

(assert (=> b!2342085 (= e!1498792 e!1498791)))

(assert (=> b!2342085 (= c!372667 ((_ is Star!6873) (regOne!14258 r!26197)))))

(declare-fun b!2342086 () Bool)

(assert (=> b!2342086 (= e!1498788 (Union!6873 (Concat!11495 call!141311 (regTwo!14258 (regOne!14258 r!26197))) EmptyLang!6873))))

(declare-fun b!2342087 () Bool)

(assert (=> b!2342087 (= e!1498788 (Union!6873 (Concat!11495 call!141311 (regTwo!14258 (regOne!14258 r!26197))) call!141313))))

(declare-fun b!2342088 () Bool)

(assert (=> b!2342088 (= e!1498790 (ite (= c!13498 (c!372625 (regOne!14258 r!26197))) EmptyExpr!6873 EmptyLang!6873))))

(assert (= (and d!691428 c!372670) b!2342082))

(assert (= (and d!691428 (not c!372670)) b!2342080))

(assert (= (and b!2342080 c!372669) b!2342088))

(assert (= (and b!2342080 (not c!372669)) b!2342083))

(assert (= (and b!2342083 c!372668) b!2342081))

(assert (= (and b!2342083 (not c!372668)) b!2342085))

(assert (= (and b!2342085 c!372667) b!2342084))

(assert (= (and b!2342085 (not c!372667)) b!2342079))

(assert (= (and b!2342079 c!372671) b!2342087))

(assert (= (and b!2342079 (not c!372671)) b!2342086))

(assert (= (or b!2342087 b!2342086) bm!141308))

(assert (= (or b!2342084 bm!141308) bm!141307))

(assert (= (or b!2342081 bm!141307) bm!141309))

(assert (= (or b!2342081 b!2342087) bm!141306))

(declare-fun m!2765433 () Bool)

(assert (=> d!691428 m!2765433))

(assert (=> d!691428 m!2765383))

(declare-fun m!2765435 () Bool)

(assert (=> bm!141306 m!2765435))

(declare-fun m!2765437 () Bool)

(assert (=> b!2342079 m!2765437))

(declare-fun m!2765439 () Bool)

(assert (=> bm!141309 m!2765439))

(assert (=> b!2341952 d!691428))

(declare-fun b!2342122 () Bool)

(declare-fun e!1498805 () Bool)

(declare-fun tp!743284 () Bool)

(declare-fun tp!743286 () Bool)

(assert (=> b!2342122 (= e!1498805 (and tp!743284 tp!743286))))

(declare-fun b!2342119 () Bool)

(assert (=> b!2342119 (= e!1498805 tp_is_empty!11057)))

(declare-fun b!2342120 () Bool)

(declare-fun tp!743285 () Bool)

(declare-fun tp!743283 () Bool)

(assert (=> b!2342120 (= e!1498805 (and tp!743285 tp!743283))))

(assert (=> b!2341954 (= tp!743269 e!1498805)))

(declare-fun b!2342121 () Bool)

(declare-fun tp!743282 () Bool)

(assert (=> b!2342121 (= e!1498805 tp!743282)))

(assert (= (and b!2341954 ((_ is ElementMatch!6873) (regOne!14258 r!26197))) b!2342119))

(assert (= (and b!2341954 ((_ is Concat!11495) (regOne!14258 r!26197))) b!2342120))

(assert (= (and b!2341954 ((_ is Star!6873) (regOne!14258 r!26197))) b!2342121))

(assert (= (and b!2341954 ((_ is Union!6873) (regOne!14258 r!26197))) b!2342122))

(declare-fun b!2342126 () Bool)

(declare-fun e!1498806 () Bool)

(declare-fun tp!743289 () Bool)

(declare-fun tp!743291 () Bool)

(assert (=> b!2342126 (= e!1498806 (and tp!743289 tp!743291))))

(declare-fun b!2342123 () Bool)

(assert (=> b!2342123 (= e!1498806 tp_is_empty!11057)))

(declare-fun b!2342124 () Bool)

(declare-fun tp!743290 () Bool)

(declare-fun tp!743288 () Bool)

(assert (=> b!2342124 (= e!1498806 (and tp!743290 tp!743288))))

(assert (=> b!2341954 (= tp!743267 e!1498806)))

(declare-fun b!2342125 () Bool)

(declare-fun tp!743287 () Bool)

(assert (=> b!2342125 (= e!1498806 tp!743287)))

(assert (= (and b!2341954 ((_ is ElementMatch!6873) (regTwo!14258 r!26197))) b!2342123))

(assert (= (and b!2341954 ((_ is Concat!11495) (regTwo!14258 r!26197))) b!2342124))

(assert (= (and b!2341954 ((_ is Star!6873) (regTwo!14258 r!26197))) b!2342125))

(assert (= (and b!2341954 ((_ is Union!6873) (regTwo!14258 r!26197))) b!2342126))

(declare-fun b!2342136 () Bool)

(declare-fun e!1498809 () Bool)

(declare-fun tp!743296 () Bool)

(declare-fun tp!743298 () Bool)

(assert (=> b!2342136 (= e!1498809 (and tp!743296 tp!743298))))

(declare-fun b!2342133 () Bool)

(assert (=> b!2342133 (= e!1498809 tp_is_empty!11057)))

(declare-fun b!2342134 () Bool)

(declare-fun tp!743297 () Bool)

(declare-fun tp!743295 () Bool)

(assert (=> b!2342134 (= e!1498809 (and tp!743297 tp!743295))))

(assert (=> b!2341950 (= tp!743271 e!1498809)))

(declare-fun b!2342135 () Bool)

(declare-fun tp!743294 () Bool)

(assert (=> b!2342135 (= e!1498809 tp!743294)))

(assert (= (and b!2341950 ((_ is ElementMatch!6873) (regOne!14259 r!26197))) b!2342133))

(assert (= (and b!2341950 ((_ is Concat!11495) (regOne!14259 r!26197))) b!2342134))

(assert (= (and b!2341950 ((_ is Star!6873) (regOne!14259 r!26197))) b!2342135))

(assert (= (and b!2341950 ((_ is Union!6873) (regOne!14259 r!26197))) b!2342136))

(declare-fun b!2342144 () Bool)

(declare-fun e!1498810 () Bool)

(declare-fun tp!743305 () Bool)

(declare-fun tp!743307 () Bool)

(assert (=> b!2342144 (= e!1498810 (and tp!743305 tp!743307))))

(declare-fun b!2342141 () Bool)

(assert (=> b!2342141 (= e!1498810 tp_is_empty!11057)))

(declare-fun b!2342142 () Bool)

(declare-fun tp!743306 () Bool)

(declare-fun tp!743304 () Bool)

(assert (=> b!2342142 (= e!1498810 (and tp!743306 tp!743304))))

(assert (=> b!2341950 (= tp!743270 e!1498810)))

(declare-fun b!2342143 () Bool)

(declare-fun tp!743303 () Bool)

(assert (=> b!2342143 (= e!1498810 tp!743303)))

(assert (= (and b!2341950 ((_ is ElementMatch!6873) (regTwo!14259 r!26197))) b!2342141))

(assert (= (and b!2341950 ((_ is Concat!11495) (regTwo!14259 r!26197))) b!2342142))

(assert (= (and b!2341950 ((_ is Star!6873) (regTwo!14259 r!26197))) b!2342143))

(assert (= (and b!2341950 ((_ is Union!6873) (regTwo!14259 r!26197))) b!2342144))

(declare-fun b!2342148 () Bool)

(declare-fun e!1498811 () Bool)

(declare-fun tp!743314 () Bool)

(declare-fun tp!743316 () Bool)

(assert (=> b!2342148 (= e!1498811 (and tp!743314 tp!743316))))

(declare-fun b!2342145 () Bool)

(assert (=> b!2342145 (= e!1498811 tp_is_empty!11057)))

(declare-fun b!2342146 () Bool)

(declare-fun tp!743315 () Bool)

(declare-fun tp!743313 () Bool)

(assert (=> b!2342146 (= e!1498811 (and tp!743315 tp!743313))))

(assert (=> b!2341956 (= tp!743268 e!1498811)))

(declare-fun b!2342147 () Bool)

(declare-fun tp!743312 () Bool)

(assert (=> b!2342147 (= e!1498811 tp!743312)))

(assert (= (and b!2341956 ((_ is ElementMatch!6873) (reg!7202 r!26197))) b!2342145))

(assert (= (and b!2341956 ((_ is Concat!11495) (reg!7202 r!26197))) b!2342146))

(assert (= (and b!2341956 ((_ is Star!6873) (reg!7202 r!26197))) b!2342147))

(assert (= (and b!2341956 ((_ is Union!6873) (reg!7202 r!26197))) b!2342148))

(check-sat (not bm!141309) (not d!691404) (not b!2342062) (not bm!141305) (not b!2342120) (not b!2342136) (not d!691418) (not b!2342079) (not d!691406) (not b!2342122) (not b!2342148) (not b!2342134) (not bm!141303) (not b!2342143) (not b!2342144) (not bm!141302) (not bm!141306) (not b!2342126) (not bm!141282) tp_is_empty!11057 (not b!2342142) (not d!691426) (not d!691422) (not b!2342121) (not b!2342071) (not b!2342135) (not bm!141285) (not b!2342013) (not b!2342147) (not bm!141300) (not b!2342124) (not d!691428) (not b!2342146) (not b!2342125))
(check-sat)

; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230904 () Bool)

(assert start!230904)

(declare-fun res!998936 () Bool)

(declare-fun e!1500869 () Bool)

(assert (=> start!230904 (=> (not res!998936) (not e!1500869))))

(declare-datatypes ((C!13928 0))(
  ( (C!13929 (val!8124 Int)) )
))
(declare-datatypes ((Regex!6885 0))(
  ( (ElementMatch!6885 (c!373577 C!13928)) (Concat!11507 (regOne!14282 Regex!6885) (regTwo!14282 Regex!6885)) (EmptyExpr!6885) (Star!6885 (reg!7214 Regex!6885)) (EmptyLang!6885) (Union!6885 (regOne!14283 Regex!6885) (regTwo!14283 Regex!6885)) )
))
(declare-fun r!26197 () Regex!6885)

(declare-fun validRegex!2630 (Regex!6885) Bool)

(assert (=> start!230904 (= res!998936 (validRegex!2630 r!26197))))

(assert (=> start!230904 e!1500869))

(declare-fun e!1500870 () Bool)

(assert (=> start!230904 e!1500870))

(declare-fun tp_is_empty!11081 () Bool)

(assert (=> start!230904 tp_is_empty!11081))

(declare-fun b!2346268 () Bool)

(declare-fun res!998937 () Bool)

(assert (=> b!2346268 (=> (not res!998937) (not e!1500869))))

(get-info :version)

(assert (=> b!2346268 (= res!998937 (and (not ((_ is EmptyExpr!6885) r!26197)) (not ((_ is EmptyLang!6885) r!26197)) (not ((_ is ElementMatch!6885) r!26197)) (not ((_ is Union!6885) r!26197)) (not ((_ is Star!6885) r!26197))))))

(declare-fun b!2346269 () Bool)

(declare-fun res!998933 () Bool)

(assert (=> b!2346269 (=> (not res!998933) (not e!1500869))))

(declare-fun nullable!1964 (Regex!6885) Bool)

(assert (=> b!2346269 (= res!998933 (not (nullable!1964 (regOne!14282 r!26197))))))

(declare-fun b!2346270 () Bool)

(assert (=> b!2346270 (= e!1500869 (not (validRegex!2630 (regOne!14282 r!26197))))))

(declare-fun b!2346271 () Bool)

(assert (=> b!2346271 (= e!1500870 tp_is_empty!11081)))

(declare-fun b!2346272 () Bool)

(declare-fun res!998934 () Bool)

(assert (=> b!2346272 (=> (not res!998934) (not e!1500869))))

(declare-fun c!13498 () C!13928)

(declare-fun derivativeStep!1624 (Regex!6885 C!13928) Regex!6885)

(assert (=> b!2346272 (= res!998934 (nullable!1964 (derivativeStep!1624 r!26197 c!13498)))))

(declare-fun b!2346273 () Bool)

(declare-fun tp!744870 () Bool)

(declare-fun tp!744871 () Bool)

(assert (=> b!2346273 (= e!1500870 (and tp!744870 tp!744871))))

(declare-fun b!2346274 () Bool)

(declare-fun tp!744869 () Bool)

(assert (=> b!2346274 (= e!1500870 tp!744869)))

(declare-fun b!2346275 () Bool)

(declare-fun res!998935 () Bool)

(assert (=> b!2346275 (=> (not res!998935) (not e!1500869))))

(assert (=> b!2346275 (= res!998935 (not (nullable!1964 r!26197)))))

(declare-fun b!2346276 () Bool)

(declare-fun tp!744867 () Bool)

(declare-fun tp!744868 () Bool)

(assert (=> b!2346276 (= e!1500870 (and tp!744867 tp!744868))))

(assert (= (and start!230904 res!998936) b!2346275))

(assert (= (and b!2346275 res!998935) b!2346272))

(assert (= (and b!2346272 res!998934) b!2346268))

(assert (= (and b!2346268 res!998937) b!2346269))

(assert (= (and b!2346269 res!998933) b!2346270))

(assert (= (and start!230904 ((_ is ElementMatch!6885) r!26197)) b!2346271))

(assert (= (and start!230904 ((_ is Concat!11507) r!26197)) b!2346273))

(assert (= (and start!230904 ((_ is Star!6885) r!26197)) b!2346274))

(assert (= (and start!230904 ((_ is Union!6885) r!26197)) b!2346276))

(declare-fun m!2767423 () Bool)

(assert (=> start!230904 m!2767423))

(declare-fun m!2767425 () Bool)

(assert (=> b!2346275 m!2767425))

(declare-fun m!2767427 () Bool)

(assert (=> b!2346270 m!2767427))

(declare-fun m!2767429 () Bool)

(assert (=> b!2346272 m!2767429))

(assert (=> b!2346272 m!2767429))

(declare-fun m!2767431 () Bool)

(assert (=> b!2346272 m!2767431))

(declare-fun m!2767433 () Bool)

(assert (=> b!2346269 m!2767433))

(check-sat tp_is_empty!11081 (not b!2346275) (not b!2346274) (not b!2346276) (not b!2346273) (not b!2346269) (not b!2346270) (not start!230904) (not b!2346272))
(check-sat)
(get-model)

(declare-fun d!692090 () Bool)

(declare-fun nullableFct!516 (Regex!6885) Bool)

(assert (=> d!692090 (= (nullable!1964 r!26197) (nullableFct!516 r!26197))))

(declare-fun bs!460171 () Bool)

(assert (= bs!460171 d!692090))

(declare-fun m!2767435 () Bool)

(assert (=> bs!460171 m!2767435))

(assert (=> b!2346275 d!692090))

(declare-fun b!2346311 () Bool)

(declare-fun res!998948 () Bool)

(declare-fun e!1500897 () Bool)

(assert (=> b!2346311 (=> (not res!998948) (not e!1500897))))

(declare-fun call!142229 () Bool)

(assert (=> b!2346311 (= res!998948 call!142229)))

(declare-fun e!1500894 () Bool)

(assert (=> b!2346311 (= e!1500894 e!1500897)))

(declare-fun b!2346312 () Bool)

(declare-fun e!1500899 () Bool)

(declare-fun e!1500892 () Bool)

(assert (=> b!2346312 (= e!1500899 e!1500892)))

(declare-fun res!998951 () Bool)

(assert (=> b!2346312 (=> (not res!998951) (not e!1500892))))

(assert (=> b!2346312 (= res!998951 call!142229)))

(declare-fun b!2346313 () Bool)

(declare-fun call!142231 () Bool)

(assert (=> b!2346313 (= e!1500897 call!142231)))

(declare-fun bm!142224 () Bool)

(declare-fun c!373589 () Bool)

(assert (=> bm!142224 (= call!142231 (validRegex!2630 (ite c!373589 (regTwo!14283 r!26197) (regTwo!14282 r!26197))))))

(declare-fun b!2346314 () Bool)

(declare-fun e!1500896 () Bool)

(assert (=> b!2346314 (= e!1500896 e!1500894)))

(assert (=> b!2346314 (= c!373589 ((_ is Union!6885) r!26197))))

(declare-fun bm!142225 () Bool)

(declare-fun call!142230 () Bool)

(assert (=> bm!142225 (= call!142229 call!142230)))

(declare-fun b!2346315 () Bool)

(assert (=> b!2346315 (= e!1500892 call!142231)))

(declare-fun d!692094 () Bool)

(declare-fun res!998949 () Bool)

(declare-fun e!1500891 () Bool)

(assert (=> d!692094 (=> res!998949 e!1500891)))

(assert (=> d!692094 (= res!998949 ((_ is ElementMatch!6885) r!26197))))

(assert (=> d!692094 (= (validRegex!2630 r!26197) e!1500891)))

(declare-fun b!2346316 () Bool)

(assert (=> b!2346316 (= e!1500891 e!1500896)))

(declare-fun c!373591 () Bool)

(assert (=> b!2346316 (= c!373591 ((_ is Star!6885) r!26197))))

(declare-fun bm!142226 () Bool)

(assert (=> bm!142226 (= call!142230 (validRegex!2630 (ite c!373591 (reg!7214 r!26197) (ite c!373589 (regOne!14283 r!26197) (regOne!14282 r!26197)))))))

(declare-fun b!2346317 () Bool)

(declare-fun e!1500898 () Bool)

(assert (=> b!2346317 (= e!1500896 e!1500898)))

(declare-fun res!998952 () Bool)

(assert (=> b!2346317 (= res!998952 (not (nullable!1964 (reg!7214 r!26197))))))

(assert (=> b!2346317 (=> (not res!998952) (not e!1500898))))

(declare-fun b!2346318 () Bool)

(declare-fun res!998950 () Bool)

(assert (=> b!2346318 (=> res!998950 e!1500899)))

(assert (=> b!2346318 (= res!998950 (not ((_ is Concat!11507) r!26197)))))

(assert (=> b!2346318 (= e!1500894 e!1500899)))

(declare-fun b!2346319 () Bool)

(assert (=> b!2346319 (= e!1500898 call!142230)))

(assert (= (and d!692094 (not res!998949)) b!2346316))

(assert (= (and b!2346316 c!373591) b!2346317))

(assert (= (and b!2346316 (not c!373591)) b!2346314))

(assert (= (and b!2346317 res!998952) b!2346319))

(assert (= (and b!2346314 c!373589) b!2346311))

(assert (= (and b!2346314 (not c!373589)) b!2346318))

(assert (= (and b!2346311 res!998948) b!2346313))

(assert (= (and b!2346318 (not res!998950)) b!2346312))

(assert (= (and b!2346312 res!998951) b!2346315))

(assert (= (or b!2346313 b!2346315) bm!142224))

(assert (= (or b!2346311 b!2346312) bm!142225))

(assert (= (or b!2346319 bm!142225) bm!142226))

(declare-fun m!2767443 () Bool)

(assert (=> bm!142224 m!2767443))

(declare-fun m!2767445 () Bool)

(assert (=> bm!142226 m!2767445))

(declare-fun m!2767447 () Bool)

(assert (=> b!2346317 m!2767447))

(assert (=> start!230904 d!692094))

(declare-fun b!2346324 () Bool)

(declare-fun res!998953 () Bool)

(declare-fun e!1500906 () Bool)

(assert (=> b!2346324 (=> (not res!998953) (not e!1500906))))

(declare-fun call!142234 () Bool)

(assert (=> b!2346324 (= res!998953 call!142234)))

(declare-fun e!1500904 () Bool)

(assert (=> b!2346324 (= e!1500904 e!1500906)))

(declare-fun b!2346325 () Bool)

(declare-fun e!1500908 () Bool)

(declare-fun e!1500903 () Bool)

(assert (=> b!2346325 (= e!1500908 e!1500903)))

(declare-fun res!998956 () Bool)

(assert (=> b!2346325 (=> (not res!998956) (not e!1500903))))

(assert (=> b!2346325 (= res!998956 call!142234)))

(declare-fun b!2346326 () Bool)

(declare-fun call!142236 () Bool)

(assert (=> b!2346326 (= e!1500906 call!142236)))

(declare-fun bm!142229 () Bool)

(declare-fun c!373594 () Bool)

(assert (=> bm!142229 (= call!142236 (validRegex!2630 (ite c!373594 (regTwo!14283 (regOne!14282 r!26197)) (regTwo!14282 (regOne!14282 r!26197)))))))

(declare-fun b!2346327 () Bool)

(declare-fun e!1500905 () Bool)

(assert (=> b!2346327 (= e!1500905 e!1500904)))

(assert (=> b!2346327 (= c!373594 ((_ is Union!6885) (regOne!14282 r!26197)))))

(declare-fun bm!142230 () Bool)

(declare-fun call!142235 () Bool)

(assert (=> bm!142230 (= call!142234 call!142235)))

(declare-fun b!2346328 () Bool)

(assert (=> b!2346328 (= e!1500903 call!142236)))

(declare-fun d!692102 () Bool)

(declare-fun res!998954 () Bool)

(declare-fun e!1500902 () Bool)

(assert (=> d!692102 (=> res!998954 e!1500902)))

(assert (=> d!692102 (= res!998954 ((_ is ElementMatch!6885) (regOne!14282 r!26197)))))

(assert (=> d!692102 (= (validRegex!2630 (regOne!14282 r!26197)) e!1500902)))

(declare-fun b!2346329 () Bool)

(assert (=> b!2346329 (= e!1500902 e!1500905)))

(declare-fun c!373595 () Bool)

(assert (=> b!2346329 (= c!373595 ((_ is Star!6885) (regOne!14282 r!26197)))))

(declare-fun bm!142231 () Bool)

(assert (=> bm!142231 (= call!142235 (validRegex!2630 (ite c!373595 (reg!7214 (regOne!14282 r!26197)) (ite c!373594 (regOne!14283 (regOne!14282 r!26197)) (regOne!14282 (regOne!14282 r!26197))))))))

(declare-fun b!2346330 () Bool)

(declare-fun e!1500907 () Bool)

(assert (=> b!2346330 (= e!1500905 e!1500907)))

(declare-fun res!998957 () Bool)

(assert (=> b!2346330 (= res!998957 (not (nullable!1964 (reg!7214 (regOne!14282 r!26197)))))))

(assert (=> b!2346330 (=> (not res!998957) (not e!1500907))))

(declare-fun b!2346331 () Bool)

(declare-fun res!998955 () Bool)

(assert (=> b!2346331 (=> res!998955 e!1500908)))

(assert (=> b!2346331 (= res!998955 (not ((_ is Concat!11507) (regOne!14282 r!26197))))))

(assert (=> b!2346331 (= e!1500904 e!1500908)))

(declare-fun b!2346332 () Bool)

(assert (=> b!2346332 (= e!1500907 call!142235)))

(assert (= (and d!692102 (not res!998954)) b!2346329))

(assert (= (and b!2346329 c!373595) b!2346330))

(assert (= (and b!2346329 (not c!373595)) b!2346327))

(assert (= (and b!2346330 res!998957) b!2346332))

(assert (= (and b!2346327 c!373594) b!2346324))

(assert (= (and b!2346327 (not c!373594)) b!2346331))

(assert (= (and b!2346324 res!998953) b!2346326))

(assert (= (and b!2346331 (not res!998955)) b!2346325))

(assert (= (and b!2346325 res!998956) b!2346328))

(assert (= (or b!2346326 b!2346328) bm!142229))

(assert (= (or b!2346324 b!2346325) bm!142230))

(assert (= (or b!2346332 bm!142230) bm!142231))

(declare-fun m!2767449 () Bool)

(assert (=> bm!142229 m!2767449))

(declare-fun m!2767451 () Bool)

(assert (=> bm!142231 m!2767451))

(declare-fun m!2767453 () Bool)

(assert (=> b!2346330 m!2767453))

(assert (=> b!2346270 d!692102))

(declare-fun d!692104 () Bool)

(assert (=> d!692104 (= (nullable!1964 (derivativeStep!1624 r!26197 c!13498)) (nullableFct!516 (derivativeStep!1624 r!26197 c!13498)))))

(declare-fun bs!460175 () Bool)

(assert (= bs!460175 d!692104))

(assert (=> bs!460175 m!2767429))

(declare-fun m!2767455 () Bool)

(assert (=> bs!460175 m!2767455))

(assert (=> b!2346272 d!692104))

(declare-fun b!2346381 () Bool)

(declare-fun e!1500941 () Regex!6885)

(declare-fun call!142262 () Regex!6885)

(assert (=> b!2346381 (= e!1500941 (Union!6885 (Concat!11507 call!142262 (regTwo!14282 r!26197)) EmptyLang!6885))))

(declare-fun d!692106 () Bool)

(declare-fun lt!862941 () Regex!6885)

(assert (=> d!692106 (validRegex!2630 lt!862941)))

(declare-fun e!1500940 () Regex!6885)

(assert (=> d!692106 (= lt!862941 e!1500940)))

(declare-fun c!373619 () Bool)

(assert (=> d!692106 (= c!373619 (or ((_ is EmptyExpr!6885) r!26197) ((_ is EmptyLang!6885) r!26197)))))

(assert (=> d!692106 (validRegex!2630 r!26197)))

(assert (=> d!692106 (= (derivativeStep!1624 r!26197 c!13498) lt!862941)))

(declare-fun b!2346382 () Bool)

(declare-fun e!1500942 () Regex!6885)

(declare-fun call!142264 () Regex!6885)

(assert (=> b!2346382 (= e!1500942 (Concat!11507 call!142264 r!26197))))

(declare-fun call!142261 () Regex!6885)

(declare-fun bm!142256 () Bool)

(declare-fun c!373617 () Bool)

(assert (=> bm!142256 (= call!142261 (derivativeStep!1624 (ite c!373617 (regTwo!14283 r!26197) (regTwo!14282 r!26197)) c!13498))))

(declare-fun b!2346383 () Bool)

(declare-fun e!1500939 () Regex!6885)

(declare-fun call!142263 () Regex!6885)

(assert (=> b!2346383 (= e!1500939 (Union!6885 call!142263 call!142261))))

(declare-fun b!2346384 () Bool)

(declare-fun c!373615 () Bool)

(assert (=> b!2346384 (= c!373615 (nullable!1964 (regOne!14282 r!26197)))))

(assert (=> b!2346384 (= e!1500942 e!1500941)))

(declare-fun b!2346385 () Bool)

(assert (=> b!2346385 (= e!1500941 (Union!6885 (Concat!11507 call!142262 (regTwo!14282 r!26197)) call!142261))))

(declare-fun bm!142257 () Bool)

(assert (=> bm!142257 (= call!142262 call!142264)))

(declare-fun bm!142258 () Bool)

(assert (=> bm!142258 (= call!142264 call!142263)))

(declare-fun b!2346386 () Bool)

(assert (=> b!2346386 (= e!1500940 EmptyLang!6885)))

(declare-fun b!2346387 () Bool)

(assert (=> b!2346387 (= c!373617 ((_ is Union!6885) r!26197))))

(declare-fun e!1500938 () Regex!6885)

(assert (=> b!2346387 (= e!1500938 e!1500939)))

(declare-fun b!2346388 () Bool)

(assert (=> b!2346388 (= e!1500940 e!1500938)))

(declare-fun c!373616 () Bool)

(assert (=> b!2346388 (= c!373616 ((_ is ElementMatch!6885) r!26197))))

(declare-fun b!2346389 () Bool)

(assert (=> b!2346389 (= e!1500939 e!1500942)))

(declare-fun c!373618 () Bool)

(assert (=> b!2346389 (= c!373618 ((_ is Star!6885) r!26197))))

(declare-fun bm!142259 () Bool)

(assert (=> bm!142259 (= call!142263 (derivativeStep!1624 (ite c!373617 (regOne!14283 r!26197) (ite c!373618 (reg!7214 r!26197) (regOne!14282 r!26197))) c!13498))))

(declare-fun b!2346390 () Bool)

(assert (=> b!2346390 (= e!1500938 (ite (= c!13498 (c!373577 r!26197)) EmptyExpr!6885 EmptyLang!6885))))

(assert (= (and d!692106 c!373619) b!2346386))

(assert (= (and d!692106 (not c!373619)) b!2346388))

(assert (= (and b!2346388 c!373616) b!2346390))

(assert (= (and b!2346388 (not c!373616)) b!2346387))

(assert (= (and b!2346387 c!373617) b!2346383))

(assert (= (and b!2346387 (not c!373617)) b!2346389))

(assert (= (and b!2346389 c!373618) b!2346382))

(assert (= (and b!2346389 (not c!373618)) b!2346384))

(assert (= (and b!2346384 c!373615) b!2346385))

(assert (= (and b!2346384 (not c!373615)) b!2346381))

(assert (= (or b!2346385 b!2346381) bm!142257))

(assert (= (or b!2346382 bm!142257) bm!142258))

(assert (= (or b!2346383 b!2346385) bm!142256))

(assert (= (or b!2346383 bm!142258) bm!142259))

(declare-fun m!2767463 () Bool)

(assert (=> d!692106 m!2767463))

(assert (=> d!692106 m!2767423))

(declare-fun m!2767465 () Bool)

(assert (=> bm!142256 m!2767465))

(assert (=> b!2346384 m!2767433))

(declare-fun m!2767469 () Bool)

(assert (=> bm!142259 m!2767469))

(assert (=> b!2346272 d!692106))

(declare-fun d!692110 () Bool)

(assert (=> d!692110 (= (nullable!1964 (regOne!14282 r!26197)) (nullableFct!516 (regOne!14282 r!26197)))))

(declare-fun bs!460176 () Bool)

(assert (= bs!460176 d!692110))

(declare-fun m!2767475 () Bool)

(assert (=> bs!460176 m!2767475))

(assert (=> b!2346269 d!692110))

(declare-fun e!1500961 () Bool)

(assert (=> b!2346276 (= tp!744867 e!1500961)))

(declare-fun b!2346429 () Bool)

(assert (=> b!2346429 (= e!1500961 tp_is_empty!11081)))

(declare-fun b!2346431 () Bool)

(declare-fun tp!744895 () Bool)

(assert (=> b!2346431 (= e!1500961 tp!744895)))

(declare-fun b!2346432 () Bool)

(declare-fun tp!744892 () Bool)

(declare-fun tp!744894 () Bool)

(assert (=> b!2346432 (= e!1500961 (and tp!744892 tp!744894))))

(declare-fun b!2346430 () Bool)

(declare-fun tp!744896 () Bool)

(declare-fun tp!744893 () Bool)

(assert (=> b!2346430 (= e!1500961 (and tp!744896 tp!744893))))

(assert (= (and b!2346276 ((_ is ElementMatch!6885) (regOne!14283 r!26197))) b!2346429))

(assert (= (and b!2346276 ((_ is Concat!11507) (regOne!14283 r!26197))) b!2346430))

(assert (= (and b!2346276 ((_ is Star!6885) (regOne!14283 r!26197))) b!2346431))

(assert (= (and b!2346276 ((_ is Union!6885) (regOne!14283 r!26197))) b!2346432))

(declare-fun e!1500962 () Bool)

(assert (=> b!2346276 (= tp!744868 e!1500962)))

(declare-fun b!2346433 () Bool)

(assert (=> b!2346433 (= e!1500962 tp_is_empty!11081)))

(declare-fun b!2346435 () Bool)

(declare-fun tp!744900 () Bool)

(assert (=> b!2346435 (= e!1500962 tp!744900)))

(declare-fun b!2346436 () Bool)

(declare-fun tp!744897 () Bool)

(declare-fun tp!744899 () Bool)

(assert (=> b!2346436 (= e!1500962 (and tp!744897 tp!744899))))

(declare-fun b!2346434 () Bool)

(declare-fun tp!744901 () Bool)

(declare-fun tp!744898 () Bool)

(assert (=> b!2346434 (= e!1500962 (and tp!744901 tp!744898))))

(assert (= (and b!2346276 ((_ is ElementMatch!6885) (regTwo!14283 r!26197))) b!2346433))

(assert (= (and b!2346276 ((_ is Concat!11507) (regTwo!14283 r!26197))) b!2346434))

(assert (= (and b!2346276 ((_ is Star!6885) (regTwo!14283 r!26197))) b!2346435))

(assert (= (and b!2346276 ((_ is Union!6885) (regTwo!14283 r!26197))) b!2346436))

(declare-fun e!1500963 () Bool)

(assert (=> b!2346273 (= tp!744870 e!1500963)))

(declare-fun b!2346437 () Bool)

(assert (=> b!2346437 (= e!1500963 tp_is_empty!11081)))

(declare-fun b!2346439 () Bool)

(declare-fun tp!744905 () Bool)

(assert (=> b!2346439 (= e!1500963 tp!744905)))

(declare-fun b!2346440 () Bool)

(declare-fun tp!744902 () Bool)

(declare-fun tp!744904 () Bool)

(assert (=> b!2346440 (= e!1500963 (and tp!744902 tp!744904))))

(declare-fun b!2346438 () Bool)

(declare-fun tp!744906 () Bool)

(declare-fun tp!744903 () Bool)

(assert (=> b!2346438 (= e!1500963 (and tp!744906 tp!744903))))

(assert (= (and b!2346273 ((_ is ElementMatch!6885) (regOne!14282 r!26197))) b!2346437))

(assert (= (and b!2346273 ((_ is Concat!11507) (regOne!14282 r!26197))) b!2346438))

(assert (= (and b!2346273 ((_ is Star!6885) (regOne!14282 r!26197))) b!2346439))

(assert (= (and b!2346273 ((_ is Union!6885) (regOne!14282 r!26197))) b!2346440))

(declare-fun e!1500965 () Bool)

(assert (=> b!2346273 (= tp!744871 e!1500965)))

(declare-fun b!2346445 () Bool)

(assert (=> b!2346445 (= e!1500965 tp_is_empty!11081)))

(declare-fun b!2346447 () Bool)

(declare-fun tp!744915 () Bool)

(assert (=> b!2346447 (= e!1500965 tp!744915)))

(declare-fun b!2346448 () Bool)

(declare-fun tp!744912 () Bool)

(declare-fun tp!744914 () Bool)

(assert (=> b!2346448 (= e!1500965 (and tp!744912 tp!744914))))

(declare-fun b!2346446 () Bool)

(declare-fun tp!744916 () Bool)

(declare-fun tp!744913 () Bool)

(assert (=> b!2346446 (= e!1500965 (and tp!744916 tp!744913))))

(assert (= (and b!2346273 ((_ is ElementMatch!6885) (regTwo!14282 r!26197))) b!2346445))

(assert (= (and b!2346273 ((_ is Concat!11507) (regTwo!14282 r!26197))) b!2346446))

(assert (= (and b!2346273 ((_ is Star!6885) (regTwo!14282 r!26197))) b!2346447))

(assert (= (and b!2346273 ((_ is Union!6885) (regTwo!14282 r!26197))) b!2346448))

(declare-fun e!1500966 () Bool)

(assert (=> b!2346274 (= tp!744869 e!1500966)))

(declare-fun b!2346449 () Bool)

(assert (=> b!2346449 (= e!1500966 tp_is_empty!11081)))

(declare-fun b!2346451 () Bool)

(declare-fun tp!744920 () Bool)

(assert (=> b!2346451 (= e!1500966 tp!744920)))

(declare-fun b!2346452 () Bool)

(declare-fun tp!744917 () Bool)

(declare-fun tp!744919 () Bool)

(assert (=> b!2346452 (= e!1500966 (and tp!744917 tp!744919))))

(declare-fun b!2346450 () Bool)

(declare-fun tp!744921 () Bool)

(declare-fun tp!744918 () Bool)

(assert (=> b!2346450 (= e!1500966 (and tp!744921 tp!744918))))

(assert (= (and b!2346274 ((_ is ElementMatch!6885) (reg!7214 r!26197))) b!2346449))

(assert (= (and b!2346274 ((_ is Concat!11507) (reg!7214 r!26197))) b!2346450))

(assert (= (and b!2346274 ((_ is Star!6885) (reg!7214 r!26197))) b!2346451))

(assert (= (and b!2346274 ((_ is Union!6885) (reg!7214 r!26197))) b!2346452))

(check-sat tp_is_empty!11081 (not bm!142256) (not d!692104) (not b!2346447) (not b!2346452) (not b!2346451) (not bm!142259) (not b!2346330) (not b!2346448) (not d!692110) (not d!692106) (not b!2346450) (not bm!142224) (not b!2346440) (not bm!142231) (not b!2346434) (not b!2346439) (not b!2346384) (not b!2346436) (not b!2346438) (not bm!142226) (not b!2346446) (not b!2346432) (not b!2346430) (not b!2346317) (not bm!142229) (not b!2346435) (not b!2346431) (not d!692090))
(check-sat)

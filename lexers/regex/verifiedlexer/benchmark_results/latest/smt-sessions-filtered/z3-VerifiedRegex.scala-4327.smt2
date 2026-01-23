; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!230968 () Bool)

(assert start!230968)

(declare-fun b!2356362 () Bool)

(declare-fun res!1000402 () Bool)

(declare-fun e!1504865 () Bool)

(assert (=> b!2356362 (=> (not res!1000402) (not e!1504865))))

(declare-datatypes ((C!13944 0))(
  ( (C!13945 (val!8132 Int)) )
))
(declare-datatypes ((Regex!6893 0))(
  ( (ElementMatch!6893 (c!374561 C!13944)) (Concat!11515 (regOne!14298 Regex!6893) (regTwo!14298 Regex!6893)) (EmptyExpr!6893) (Star!6893 (reg!7222 Regex!6893)) (EmptyLang!6893) (Union!6893 (regOne!14299 Regex!6893) (regTwo!14299 Regex!6893)) )
))
(declare-fun r!26197 () Regex!6893)

(declare-fun c!13498 () C!13944)

(declare-fun nullable!1972 (Regex!6893) Bool)

(declare-fun derivativeStep!1632 (Regex!6893 C!13944) Regex!6893)

(assert (=> b!2356362 (= res!1000402 (nullable!1972 (derivativeStep!1632 r!26197 c!13498)))))

(declare-fun b!2356363 () Bool)

(declare-fun res!1000403 () Bool)

(assert (=> b!2356363 (=> (not res!1000403) (not e!1504865))))

(declare-fun validRegex!2638 (Regex!6893) Bool)

(assert (=> b!2356363 (= res!1000403 (validRegex!2638 (regOne!14298 r!26197)))))

(declare-fun b!2356364 () Bool)

(declare-fun res!1000400 () Bool)

(assert (=> b!2356364 (=> (not res!1000400) (not e!1504865))))

(assert (=> b!2356364 (= res!1000400 (not (nullable!1972 (regOne!14298 r!26197))))))

(declare-fun res!1000404 () Bool)

(assert (=> start!230968 (=> (not res!1000404) (not e!1504865))))

(assert (=> start!230968 (= res!1000404 (validRegex!2638 r!26197))))

(assert (=> start!230968 e!1504865))

(declare-fun e!1504866 () Bool)

(assert (=> start!230968 e!1504866))

(declare-fun tp_is_empty!11097 () Bool)

(assert (=> start!230968 tp_is_empty!11097))

(declare-fun b!2356365 () Bool)

(declare-fun tp!753197 () Bool)

(assert (=> b!2356365 (= e!1504866 tp!753197)))

(declare-fun b!2356366 () Bool)

(declare-datatypes ((List!27944 0))(
  ( (Nil!27846) (Cons!27846 (h!33247 C!13944) (t!207803 List!27944)) )
))
(declare-fun contains!4825 (List!27944 C!13944) Bool)

(declare-fun usedCharacters!444 (Regex!6893) List!27944)

(assert (=> b!2356366 (= e!1504865 (not (contains!4825 (usedCharacters!444 r!26197) c!13498)))))

(assert (=> b!2356366 (contains!4825 (usedCharacters!444 (regOne!14298 r!26197)) c!13498)))

(declare-datatypes ((Unit!40770 0))(
  ( (Unit!40771) )
))
(declare-fun lt!863043 () Unit!40770)

(declare-fun lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC!8 (Regex!6893 C!13944) Unit!40770)

(assert (=> b!2356366 (= lt!863043 (lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC!8 (regOne!14298 r!26197) c!13498))))

(declare-fun b!2356367 () Bool)

(declare-fun tp!753199 () Bool)

(declare-fun tp!753198 () Bool)

(assert (=> b!2356367 (= e!1504866 (and tp!753199 tp!753198))))

(declare-fun b!2356368 () Bool)

(declare-fun res!1000405 () Bool)

(assert (=> b!2356368 (=> (not res!1000405) (not e!1504865))))

(get-info :version)

(assert (=> b!2356368 (= res!1000405 (and (not ((_ is EmptyExpr!6893) r!26197)) (not ((_ is EmptyLang!6893) r!26197)) (not ((_ is ElementMatch!6893) r!26197)) (not ((_ is Union!6893) r!26197)) (not ((_ is Star!6893) r!26197))))))

(declare-fun b!2356369 () Bool)

(assert (=> b!2356369 (= e!1504866 tp_is_empty!11097)))

(declare-fun b!2356370 () Bool)

(declare-fun tp!753201 () Bool)

(declare-fun tp!753200 () Bool)

(assert (=> b!2356370 (= e!1504866 (and tp!753201 tp!753200))))

(declare-fun b!2356371 () Bool)

(declare-fun res!1000399 () Bool)

(assert (=> b!2356371 (=> (not res!1000399) (not e!1504865))))

(assert (=> b!2356371 (= res!1000399 (nullable!1972 (derivativeStep!1632 (regOne!14298 r!26197) c!13498)))))

(declare-fun b!2356372 () Bool)

(declare-fun res!1000401 () Bool)

(assert (=> b!2356372 (=> (not res!1000401) (not e!1504865))))

(assert (=> b!2356372 (= res!1000401 (not (nullable!1972 r!26197)))))

(assert (= (and start!230968 res!1000404) b!2356372))

(assert (= (and b!2356372 res!1000401) b!2356362))

(assert (= (and b!2356362 res!1000402) b!2356368))

(assert (= (and b!2356368 res!1000405) b!2356364))

(assert (= (and b!2356364 res!1000400) b!2356363))

(assert (= (and b!2356363 res!1000403) b!2356371))

(assert (= (and b!2356371 res!1000399) b!2356366))

(assert (= (and start!230968 ((_ is ElementMatch!6893) r!26197)) b!2356369))

(assert (= (and start!230968 ((_ is Concat!11515) r!26197)) b!2356367))

(assert (= (and start!230968 ((_ is Star!6893) r!26197)) b!2356365))

(assert (= (and start!230968 ((_ is Union!6893) r!26197)) b!2356370))

(declare-fun m!2769941 () Bool)

(assert (=> b!2356363 m!2769941))

(declare-fun m!2769943 () Bool)

(assert (=> b!2356371 m!2769943))

(assert (=> b!2356371 m!2769943))

(declare-fun m!2769945 () Bool)

(assert (=> b!2356371 m!2769945))

(declare-fun m!2769947 () Bool)

(assert (=> b!2356372 m!2769947))

(declare-fun m!2769949 () Bool)

(assert (=> start!230968 m!2769949))

(declare-fun m!2769951 () Bool)

(assert (=> b!2356366 m!2769951))

(declare-fun m!2769953 () Bool)

(assert (=> b!2356366 m!2769953))

(declare-fun m!2769955 () Bool)

(assert (=> b!2356366 m!2769955))

(assert (=> b!2356366 m!2769951))

(declare-fun m!2769957 () Bool)

(assert (=> b!2356366 m!2769957))

(assert (=> b!2356366 m!2769957))

(declare-fun m!2769959 () Bool)

(assert (=> b!2356366 m!2769959))

(declare-fun m!2769961 () Bool)

(assert (=> b!2356362 m!2769961))

(assert (=> b!2356362 m!2769961))

(declare-fun m!2769963 () Bool)

(assert (=> b!2356362 m!2769963))

(declare-fun m!2769965 () Bool)

(assert (=> b!2356364 m!2769965))

(check-sat (not b!2356371) (not b!2356362) (not b!2356364) (not b!2356367) (not start!230968) (not b!2356370) (not b!2356365) tp_is_empty!11097 (not b!2356366) (not b!2356372) (not b!2356363))
(check-sat)
(get-model)

(declare-fun b!2356409 () Bool)

(declare-fun e!1504899 () Bool)

(declare-fun call!143360 () Bool)

(assert (=> b!2356409 (= e!1504899 call!143360)))

(declare-fun b!2356410 () Bool)

(declare-fun res!1000430 () Bool)

(declare-fun e!1504901 () Bool)

(assert (=> b!2356410 (=> res!1000430 e!1504901)))

(assert (=> b!2356410 (= res!1000430 (not ((_ is Concat!11515) (regOne!14298 r!26197))))))

(declare-fun e!1504898 () Bool)

(assert (=> b!2356410 (= e!1504898 e!1504901)))

(declare-fun bm!143354 () Bool)

(declare-fun call!143359 () Bool)

(assert (=> bm!143354 (= call!143360 call!143359)))

(declare-fun b!2356411 () Bool)

(declare-fun e!1504896 () Bool)

(assert (=> b!2356411 (= e!1504896 e!1504898)))

(declare-fun c!374571 () Bool)

(assert (=> b!2356411 (= c!374571 ((_ is Union!6893) (regOne!14298 r!26197)))))

(declare-fun b!2356412 () Bool)

(assert (=> b!2356412 (= e!1504901 e!1504899)))

(declare-fun res!1000428 () Bool)

(assert (=> b!2356412 (=> (not res!1000428) (not e!1504899))))

(declare-fun call!143361 () Bool)

(assert (=> b!2356412 (= res!1000428 call!143361)))

(declare-fun b!2356413 () Bool)

(declare-fun e!1504895 () Bool)

(assert (=> b!2356413 (= e!1504895 call!143359)))

(declare-fun b!2356414 () Bool)

(declare-fun res!1000427 () Bool)

(declare-fun e!1504897 () Bool)

(assert (=> b!2356414 (=> (not res!1000427) (not e!1504897))))

(assert (=> b!2356414 (= res!1000427 call!143361)))

(assert (=> b!2356414 (= e!1504898 e!1504897)))

(declare-fun bm!143355 () Bool)

(declare-fun c!374570 () Bool)

(assert (=> bm!143355 (= call!143359 (validRegex!2638 (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))

(declare-fun d!693034 () Bool)

(declare-fun res!1000429 () Bool)

(declare-fun e!1504900 () Bool)

(assert (=> d!693034 (=> res!1000429 e!1504900)))

(assert (=> d!693034 (= res!1000429 ((_ is ElementMatch!6893) (regOne!14298 r!26197)))))

(assert (=> d!693034 (= (validRegex!2638 (regOne!14298 r!26197)) e!1504900)))

(declare-fun bm!143356 () Bool)

(assert (=> bm!143356 (= call!143361 (validRegex!2638 (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))

(declare-fun b!2356415 () Bool)

(assert (=> b!2356415 (= e!1504900 e!1504896)))

(assert (=> b!2356415 (= c!374570 ((_ is Star!6893) (regOne!14298 r!26197)))))

(declare-fun b!2356416 () Bool)

(assert (=> b!2356416 (= e!1504897 call!143360)))

(declare-fun b!2356417 () Bool)

(assert (=> b!2356417 (= e!1504896 e!1504895)))

(declare-fun res!1000426 () Bool)

(assert (=> b!2356417 (= res!1000426 (not (nullable!1972 (reg!7222 (regOne!14298 r!26197)))))))

(assert (=> b!2356417 (=> (not res!1000426) (not e!1504895))))

(assert (= (and d!693034 (not res!1000429)) b!2356415))

(assert (= (and b!2356415 c!374570) b!2356417))

(assert (= (and b!2356415 (not c!374570)) b!2356411))

(assert (= (and b!2356417 res!1000426) b!2356413))

(assert (= (and b!2356411 c!374571) b!2356414))

(assert (= (and b!2356411 (not c!374571)) b!2356410))

(assert (= (and b!2356414 res!1000427) b!2356416))

(assert (= (and b!2356410 (not res!1000430)) b!2356412))

(assert (= (and b!2356412 res!1000428) b!2356409))

(assert (= (or b!2356416 b!2356409) bm!143354))

(assert (= (or b!2356414 b!2356412) bm!143356))

(assert (= (or b!2356413 bm!143354) bm!143355))

(declare-fun m!2769967 () Bool)

(assert (=> bm!143355 m!2769967))

(declare-fun m!2769969 () Bool)

(assert (=> bm!143356 m!2769969))

(declare-fun m!2769971 () Bool)

(assert (=> b!2356417 m!2769971))

(assert (=> b!2356363 d!693034))

(declare-fun b!2356418 () Bool)

(declare-fun e!1504906 () Bool)

(declare-fun call!143363 () Bool)

(assert (=> b!2356418 (= e!1504906 call!143363)))

(declare-fun b!2356419 () Bool)

(declare-fun res!1000435 () Bool)

(declare-fun e!1504908 () Bool)

(assert (=> b!2356419 (=> res!1000435 e!1504908)))

(assert (=> b!2356419 (= res!1000435 (not ((_ is Concat!11515) r!26197)))))

(declare-fun e!1504905 () Bool)

(assert (=> b!2356419 (= e!1504905 e!1504908)))

(declare-fun bm!143357 () Bool)

(declare-fun call!143362 () Bool)

(assert (=> bm!143357 (= call!143363 call!143362)))

(declare-fun b!2356420 () Bool)

(declare-fun e!1504903 () Bool)

(assert (=> b!2356420 (= e!1504903 e!1504905)))

(declare-fun c!374573 () Bool)

(assert (=> b!2356420 (= c!374573 ((_ is Union!6893) r!26197))))

(declare-fun b!2356421 () Bool)

(assert (=> b!2356421 (= e!1504908 e!1504906)))

(declare-fun res!1000433 () Bool)

(assert (=> b!2356421 (=> (not res!1000433) (not e!1504906))))

(declare-fun call!143364 () Bool)

(assert (=> b!2356421 (= res!1000433 call!143364)))

(declare-fun b!2356422 () Bool)

(declare-fun e!1504902 () Bool)

(assert (=> b!2356422 (= e!1504902 call!143362)))

(declare-fun b!2356423 () Bool)

(declare-fun res!1000432 () Bool)

(declare-fun e!1504904 () Bool)

(assert (=> b!2356423 (=> (not res!1000432) (not e!1504904))))

(assert (=> b!2356423 (= res!1000432 call!143364)))

(assert (=> b!2356423 (= e!1504905 e!1504904)))

(declare-fun c!374572 () Bool)

(declare-fun bm!143358 () Bool)

(assert (=> bm!143358 (= call!143362 (validRegex!2638 (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))

(declare-fun d!693038 () Bool)

(declare-fun res!1000434 () Bool)

(declare-fun e!1504907 () Bool)

(assert (=> d!693038 (=> res!1000434 e!1504907)))

(assert (=> d!693038 (= res!1000434 ((_ is ElementMatch!6893) r!26197))))

(assert (=> d!693038 (= (validRegex!2638 r!26197) e!1504907)))

(declare-fun bm!143359 () Bool)

(assert (=> bm!143359 (= call!143364 (validRegex!2638 (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197))))))

(declare-fun b!2356424 () Bool)

(assert (=> b!2356424 (= e!1504907 e!1504903)))

(assert (=> b!2356424 (= c!374572 ((_ is Star!6893) r!26197))))

(declare-fun b!2356425 () Bool)

(assert (=> b!2356425 (= e!1504904 call!143363)))

(declare-fun b!2356426 () Bool)

(assert (=> b!2356426 (= e!1504903 e!1504902)))

(declare-fun res!1000431 () Bool)

(assert (=> b!2356426 (= res!1000431 (not (nullable!1972 (reg!7222 r!26197))))))

(assert (=> b!2356426 (=> (not res!1000431) (not e!1504902))))

(assert (= (and d!693038 (not res!1000434)) b!2356424))

(assert (= (and b!2356424 c!374572) b!2356426))

(assert (= (and b!2356424 (not c!374572)) b!2356420))

(assert (= (and b!2356426 res!1000431) b!2356422))

(assert (= (and b!2356420 c!374573) b!2356423))

(assert (= (and b!2356420 (not c!374573)) b!2356419))

(assert (= (and b!2356423 res!1000432) b!2356425))

(assert (= (and b!2356419 (not res!1000435)) b!2356421))

(assert (= (and b!2356421 res!1000433) b!2356418))

(assert (= (or b!2356425 b!2356418) bm!143357))

(assert (= (or b!2356423 b!2356421) bm!143359))

(assert (= (or b!2356422 bm!143357) bm!143358))

(declare-fun m!2769973 () Bool)

(assert (=> bm!143358 m!2769973))

(declare-fun m!2769975 () Bool)

(assert (=> bm!143359 m!2769975))

(declare-fun m!2769977 () Bool)

(assert (=> b!2356426 m!2769977))

(assert (=> start!230968 d!693038))

(declare-fun d!693040 () Bool)

(declare-fun nullableFct!523 (Regex!6893) Bool)

(assert (=> d!693040 (= (nullable!1972 r!26197) (nullableFct!523 r!26197))))

(declare-fun bs!460317 () Bool)

(assert (= bs!460317 d!693040))

(declare-fun m!2769979 () Bool)

(assert (=> bs!460317 m!2769979))

(assert (=> b!2356372 d!693040))

(declare-fun d!693042 () Bool)

(assert (=> d!693042 (= (nullable!1972 (derivativeStep!1632 r!26197 c!13498)) (nullableFct!523 (derivativeStep!1632 r!26197 c!13498)))))

(declare-fun bs!460318 () Bool)

(assert (= bs!460318 d!693042))

(assert (=> bs!460318 m!2769961))

(declare-fun m!2769981 () Bool)

(assert (=> bs!460318 m!2769981))

(assert (=> b!2356362 d!693042))

(declare-fun bm!143383 () Bool)

(declare-fun call!143388 () Regex!6893)

(declare-fun call!143391 () Regex!6893)

(assert (=> bm!143383 (= call!143388 call!143391)))

(declare-fun b!2356484 () Bool)

(declare-fun e!1504942 () Regex!6893)

(declare-fun e!1504943 () Regex!6893)

(assert (=> b!2356484 (= e!1504942 e!1504943)))

(declare-fun c!374600 () Bool)

(assert (=> b!2356484 (= c!374600 ((_ is Star!6893) r!26197))))

(declare-fun b!2356485 () Bool)

(declare-fun e!1504946 () Regex!6893)

(assert (=> b!2356485 (= e!1504946 (ite (= c!13498 (c!374561 r!26197)) EmptyExpr!6893 EmptyLang!6893))))

(declare-fun b!2356486 () Bool)

(declare-fun c!374598 () Bool)

(assert (=> b!2356486 (= c!374598 (nullable!1972 (regOne!14298 r!26197)))))

(declare-fun e!1504944 () Regex!6893)

(assert (=> b!2356486 (= e!1504943 e!1504944)))

(declare-fun call!143389 () Regex!6893)

(declare-fun b!2356487 () Bool)

(assert (=> b!2356487 (= e!1504944 (Union!6893 (Concat!11515 call!143388 (regTwo!14298 r!26197)) call!143389))))

(declare-fun b!2356488 () Bool)

(assert (=> b!2356488 (= e!1504944 (Union!6893 (Concat!11515 call!143388 (regTwo!14298 r!26197)) EmptyLang!6893))))

(declare-fun bm!143384 () Bool)

(declare-fun call!143390 () Regex!6893)

(assert (=> bm!143384 (= call!143391 call!143390)))

(declare-fun b!2356489 () Bool)

(declare-fun e!1504945 () Regex!6893)

(assert (=> b!2356489 (= e!1504945 e!1504946)))

(declare-fun c!374601 () Bool)

(assert (=> b!2356489 (= c!374601 ((_ is ElementMatch!6893) r!26197))))

(declare-fun b!2356490 () Bool)

(assert (=> b!2356490 (= e!1504942 (Union!6893 call!143389 call!143390))))

(declare-fun bm!143386 () Bool)

(declare-fun c!374602 () Bool)

(assert (=> bm!143386 (= call!143390 (derivativeStep!1632 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197))) c!13498))))

(declare-fun b!2356491 () Bool)

(assert (=> b!2356491 (= e!1504945 EmptyLang!6893)))

(declare-fun b!2356492 () Bool)

(assert (=> b!2356492 (= e!1504943 (Concat!11515 call!143391 r!26197))))

(declare-fun b!2356493 () Bool)

(assert (=> b!2356493 (= c!374602 ((_ is Union!6893) r!26197))))

(assert (=> b!2356493 (= e!1504946 e!1504942)))

(declare-fun d!693044 () Bool)

(declare-fun lt!863048 () Regex!6893)

(assert (=> d!693044 (validRegex!2638 lt!863048)))

(assert (=> d!693044 (= lt!863048 e!1504945)))

(declare-fun c!374599 () Bool)

(assert (=> d!693044 (= c!374599 (or ((_ is EmptyExpr!6893) r!26197) ((_ is EmptyLang!6893) r!26197)))))

(assert (=> d!693044 (validRegex!2638 r!26197)))

(assert (=> d!693044 (= (derivativeStep!1632 r!26197 c!13498) lt!863048)))

(declare-fun bm!143385 () Bool)

(assert (=> bm!143385 (= call!143389 (derivativeStep!1632 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197)) c!13498))))

(assert (= (and d!693044 c!374599) b!2356491))

(assert (= (and d!693044 (not c!374599)) b!2356489))

(assert (= (and b!2356489 c!374601) b!2356485))

(assert (= (and b!2356489 (not c!374601)) b!2356493))

(assert (= (and b!2356493 c!374602) b!2356490))

(assert (= (and b!2356493 (not c!374602)) b!2356484))

(assert (= (and b!2356484 c!374600) b!2356492))

(assert (= (and b!2356484 (not c!374600)) b!2356486))

(assert (= (and b!2356486 c!374598) b!2356487))

(assert (= (and b!2356486 (not c!374598)) b!2356488))

(assert (= (or b!2356487 b!2356488) bm!143383))

(assert (= (or b!2356492 bm!143383) bm!143384))

(assert (= (or b!2356490 bm!143384) bm!143386))

(assert (= (or b!2356490 b!2356487) bm!143385))

(assert (=> b!2356486 m!2769965))

(declare-fun m!2769999 () Bool)

(assert (=> bm!143386 m!2769999))

(declare-fun m!2770001 () Bool)

(assert (=> d!693044 m!2770001))

(assert (=> d!693044 m!2769949))

(declare-fun m!2770003 () Bool)

(assert (=> bm!143385 m!2770003))

(assert (=> b!2356362 d!693044))

(declare-fun d!693054 () Bool)

(assert (=> d!693054 (= (nullable!1972 (derivativeStep!1632 (regOne!14298 r!26197) c!13498)) (nullableFct!523 (derivativeStep!1632 (regOne!14298 r!26197) c!13498)))))

(declare-fun bs!460321 () Bool)

(assert (= bs!460321 d!693054))

(assert (=> bs!460321 m!2769943))

(declare-fun m!2770005 () Bool)

(assert (=> bs!460321 m!2770005))

(assert (=> b!2356371 d!693054))

(declare-fun bm!143387 () Bool)

(declare-fun call!143392 () Regex!6893)

(declare-fun call!143395 () Regex!6893)

(assert (=> bm!143387 (= call!143392 call!143395)))

(declare-fun b!2356496 () Bool)

(declare-fun e!1504949 () Regex!6893)

(declare-fun e!1504950 () Regex!6893)

(assert (=> b!2356496 (= e!1504949 e!1504950)))

(declare-fun c!374605 () Bool)

(assert (=> b!2356496 (= c!374605 ((_ is Star!6893) (regOne!14298 r!26197)))))

(declare-fun b!2356497 () Bool)

(declare-fun e!1504953 () Regex!6893)

(assert (=> b!2356497 (= e!1504953 (ite (= c!13498 (c!374561 (regOne!14298 r!26197))) EmptyExpr!6893 EmptyLang!6893))))

(declare-fun b!2356498 () Bool)

(declare-fun c!374603 () Bool)

(assert (=> b!2356498 (= c!374603 (nullable!1972 (regOne!14298 (regOne!14298 r!26197))))))

(declare-fun e!1504951 () Regex!6893)

(assert (=> b!2356498 (= e!1504950 e!1504951)))

(declare-fun b!2356499 () Bool)

(declare-fun call!143393 () Regex!6893)

(assert (=> b!2356499 (= e!1504951 (Union!6893 (Concat!11515 call!143392 (regTwo!14298 (regOne!14298 r!26197))) call!143393))))

(declare-fun b!2356500 () Bool)

(assert (=> b!2356500 (= e!1504951 (Union!6893 (Concat!11515 call!143392 (regTwo!14298 (regOne!14298 r!26197))) EmptyLang!6893))))

(declare-fun bm!143388 () Bool)

(declare-fun call!143394 () Regex!6893)

(assert (=> bm!143388 (= call!143395 call!143394)))

(declare-fun b!2356501 () Bool)

(declare-fun e!1504952 () Regex!6893)

(assert (=> b!2356501 (= e!1504952 e!1504953)))

(declare-fun c!374606 () Bool)

(assert (=> b!2356501 (= c!374606 ((_ is ElementMatch!6893) (regOne!14298 r!26197)))))

(declare-fun b!2356502 () Bool)

(assert (=> b!2356502 (= e!1504949 (Union!6893 call!143393 call!143394))))

(declare-fun c!374607 () Bool)

(declare-fun bm!143390 () Bool)

(assert (=> bm!143390 (= call!143394 (derivativeStep!1632 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) c!13498))))

(declare-fun b!2356503 () Bool)

(assert (=> b!2356503 (= e!1504952 EmptyLang!6893)))

(declare-fun b!2356504 () Bool)

(assert (=> b!2356504 (= e!1504950 (Concat!11515 call!143395 (regOne!14298 r!26197)))))

(declare-fun b!2356505 () Bool)

(assert (=> b!2356505 (= c!374607 ((_ is Union!6893) (regOne!14298 r!26197)))))

(assert (=> b!2356505 (= e!1504953 e!1504949)))

(declare-fun d!693056 () Bool)

(declare-fun lt!863050 () Regex!6893)

(assert (=> d!693056 (validRegex!2638 lt!863050)))

(assert (=> d!693056 (= lt!863050 e!1504952)))

(declare-fun c!374604 () Bool)

(assert (=> d!693056 (= c!374604 (or ((_ is EmptyExpr!6893) (regOne!14298 r!26197)) ((_ is EmptyLang!6893) (regOne!14298 r!26197))))))

(assert (=> d!693056 (validRegex!2638 (regOne!14298 r!26197))))

(assert (=> d!693056 (= (derivativeStep!1632 (regOne!14298 r!26197) c!13498) lt!863050)))

(declare-fun bm!143389 () Bool)

(assert (=> bm!143389 (= call!143393 (derivativeStep!1632 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))) c!13498))))

(assert (= (and d!693056 c!374604) b!2356503))

(assert (= (and d!693056 (not c!374604)) b!2356501))

(assert (= (and b!2356501 c!374606) b!2356497))

(assert (= (and b!2356501 (not c!374606)) b!2356505))

(assert (= (and b!2356505 c!374607) b!2356502))

(assert (= (and b!2356505 (not c!374607)) b!2356496))

(assert (= (and b!2356496 c!374605) b!2356504))

(assert (= (and b!2356496 (not c!374605)) b!2356498))

(assert (= (and b!2356498 c!374603) b!2356499))

(assert (= (and b!2356498 (not c!374603)) b!2356500))

(assert (= (or b!2356499 b!2356500) bm!143387))

(assert (= (or b!2356504 bm!143387) bm!143388))

(assert (= (or b!2356502 bm!143388) bm!143390))

(assert (= (or b!2356502 b!2356499) bm!143389))

(declare-fun m!2770013 () Bool)

(assert (=> b!2356498 m!2770013))

(declare-fun m!2770015 () Bool)

(assert (=> bm!143390 m!2770015))

(declare-fun m!2770017 () Bool)

(assert (=> d!693056 m!2770017))

(assert (=> d!693056 m!2769941))

(declare-fun m!2770019 () Bool)

(assert (=> bm!143389 m!2770019))

(assert (=> b!2356371 d!693056))

(declare-fun bm!143403 () Bool)

(declare-fun call!143411 () List!27944)

(declare-fun call!143410 () List!27944)

(assert (=> bm!143403 (= call!143411 call!143410)))

(declare-fun bm!143404 () Bool)

(declare-fun call!143409 () List!27944)

(declare-fun c!374624 () Bool)

(assert (=> bm!143404 (= call!143409 (usedCharacters!444 (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))

(declare-fun b!2356532 () Bool)

(declare-fun e!1504970 () List!27944)

(assert (=> b!2356532 (= e!1504970 (Cons!27846 (c!374561 (regOne!14298 r!26197)) Nil!27846))))

(declare-fun bm!143405 () Bool)

(declare-fun call!143408 () List!27944)

(declare-fun ++!6870 (List!27944 List!27944) List!27944)

(assert (=> bm!143405 (= call!143408 (++!6870 call!143409 call!143411))))

(declare-fun b!2356533 () Bool)

(declare-fun e!1504969 () List!27944)

(assert (=> b!2356533 (= e!1504969 Nil!27846)))

(declare-fun d!693060 () Bool)

(declare-fun c!374621 () Bool)

(assert (=> d!693060 (= c!374621 (or ((_ is EmptyExpr!6893) (regOne!14298 r!26197)) ((_ is EmptyLang!6893) (regOne!14298 r!26197))))))

(assert (=> d!693060 (= (usedCharacters!444 (regOne!14298 r!26197)) e!1504969)))

(declare-fun b!2356534 () Bool)

(declare-fun c!374622 () Bool)

(assert (=> b!2356534 (= c!374622 ((_ is Star!6893) (regOne!14298 r!26197)))))

(declare-fun e!1504971 () List!27944)

(assert (=> b!2356534 (= e!1504970 e!1504971)))

(declare-fun bm!143406 () Bool)

(assert (=> bm!143406 (= call!143410 (usedCharacters!444 (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))

(declare-fun b!2356535 () Bool)

(declare-fun e!1504968 () List!27944)

(assert (=> b!2356535 (= e!1504968 call!143408)))

(declare-fun b!2356536 () Bool)

(assert (=> b!2356536 (= e!1504971 e!1504968)))

(assert (=> b!2356536 (= c!374624 ((_ is Union!6893) (regOne!14298 r!26197)))))

(declare-fun b!2356537 () Bool)

(assert (=> b!2356537 (= e!1504968 call!143408)))

(declare-fun b!2356538 () Bool)

(assert (=> b!2356538 (= e!1504971 call!143410)))

(declare-fun b!2356539 () Bool)

(assert (=> b!2356539 (= e!1504969 e!1504970)))

(declare-fun c!374623 () Bool)

(assert (=> b!2356539 (= c!374623 ((_ is ElementMatch!6893) (regOne!14298 r!26197)))))

(assert (= (and d!693060 c!374621) b!2356533))

(assert (= (and d!693060 (not c!374621)) b!2356539))

(assert (= (and b!2356539 c!374623) b!2356532))

(assert (= (and b!2356539 (not c!374623)) b!2356534))

(assert (= (and b!2356534 c!374622) b!2356538))

(assert (= (and b!2356534 (not c!374622)) b!2356536))

(assert (= (and b!2356536 c!374624) b!2356537))

(assert (= (and b!2356536 (not c!374624)) b!2356535))

(assert (= (or b!2356537 b!2356535) bm!143403))

(assert (= (or b!2356537 b!2356535) bm!143404))

(assert (= (or b!2356537 b!2356535) bm!143405))

(assert (= (or b!2356538 bm!143403) bm!143406))

(declare-fun m!2770037 () Bool)

(assert (=> bm!143404 m!2770037))

(declare-fun m!2770039 () Bool)

(assert (=> bm!143405 m!2770039))

(declare-fun m!2770041 () Bool)

(assert (=> bm!143406 m!2770041))

(assert (=> b!2356366 d!693060))

(declare-fun d!693070 () Bool)

(declare-fun lt!863059 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!3779 (List!27944) (InoxSet C!13944))

(assert (=> d!693070 (= lt!863059 (select (content!3779 (usedCharacters!444 r!26197)) c!13498))))

(declare-fun e!1504986 () Bool)

(assert (=> d!693070 (= lt!863059 e!1504986)))

(declare-fun res!1000453 () Bool)

(assert (=> d!693070 (=> (not res!1000453) (not e!1504986))))

(assert (=> d!693070 (= res!1000453 ((_ is Cons!27846) (usedCharacters!444 r!26197)))))

(assert (=> d!693070 (= (contains!4825 (usedCharacters!444 r!26197) c!13498) lt!863059)))

(declare-fun b!2356564 () Bool)

(declare-fun e!1504987 () Bool)

(assert (=> b!2356564 (= e!1504986 e!1504987)))

(declare-fun res!1000454 () Bool)

(assert (=> b!2356564 (=> res!1000454 e!1504987)))

(assert (=> b!2356564 (= res!1000454 (= (h!33247 (usedCharacters!444 r!26197)) c!13498))))

(declare-fun b!2356565 () Bool)

(assert (=> b!2356565 (= e!1504987 (contains!4825 (t!207803 (usedCharacters!444 r!26197)) c!13498))))

(assert (= (and d!693070 res!1000453) b!2356564))

(assert (= (and b!2356564 (not res!1000454)) b!2356565))

(assert (=> d!693070 m!2769951))

(declare-fun m!2770043 () Bool)

(assert (=> d!693070 m!2770043))

(declare-fun m!2770045 () Bool)

(assert (=> d!693070 m!2770045))

(declare-fun m!2770047 () Bool)

(assert (=> b!2356565 m!2770047))

(assert (=> b!2356366 d!693070))

(declare-fun d!693072 () Bool)

(assert (=> d!693072 (contains!4825 (usedCharacters!444 (regOne!14298 r!26197)) c!13498)))

(declare-fun lt!863062 () Unit!40770)

(declare-fun choose!13642 (Regex!6893 C!13944) Unit!40770)

(assert (=> d!693072 (= lt!863062 (choose!13642 (regOne!14298 r!26197) c!13498))))

(assert (=> d!693072 (validRegex!2638 (regOne!14298 r!26197))))

(assert (=> d!693072 (= (lemmaRIsNotNullableDerivativeStepIsThenUsedCharContainsC!8 (regOne!14298 r!26197) c!13498) lt!863062)))

(declare-fun bs!460324 () Bool)

(assert (= bs!460324 d!693072))

(assert (=> bs!460324 m!2769957))

(assert (=> bs!460324 m!2769957))

(assert (=> bs!460324 m!2769959))

(declare-fun m!2770049 () Bool)

(assert (=> bs!460324 m!2770049))

(assert (=> bs!460324 m!2769941))

(assert (=> b!2356366 d!693072))

(declare-fun d!693074 () Bool)

(declare-fun lt!863063 () Bool)

(assert (=> d!693074 (= lt!863063 (select (content!3779 (usedCharacters!444 (regOne!14298 r!26197))) c!13498))))

(declare-fun e!1504988 () Bool)

(assert (=> d!693074 (= lt!863063 e!1504988)))

(declare-fun res!1000455 () Bool)

(assert (=> d!693074 (=> (not res!1000455) (not e!1504988))))

(assert (=> d!693074 (= res!1000455 ((_ is Cons!27846) (usedCharacters!444 (regOne!14298 r!26197))))))

(assert (=> d!693074 (= (contains!4825 (usedCharacters!444 (regOne!14298 r!26197)) c!13498) lt!863063)))

(declare-fun b!2356566 () Bool)

(declare-fun e!1504989 () Bool)

(assert (=> b!2356566 (= e!1504988 e!1504989)))

(declare-fun res!1000456 () Bool)

(assert (=> b!2356566 (=> res!1000456 e!1504989)))

(assert (=> b!2356566 (= res!1000456 (= (h!33247 (usedCharacters!444 (regOne!14298 r!26197))) c!13498))))

(declare-fun b!2356567 () Bool)

(assert (=> b!2356567 (= e!1504989 (contains!4825 (t!207803 (usedCharacters!444 (regOne!14298 r!26197))) c!13498))))

(assert (= (and d!693074 res!1000455) b!2356566))

(assert (= (and b!2356566 (not res!1000456)) b!2356567))

(assert (=> d!693074 m!2769957))

(declare-fun m!2770051 () Bool)

(assert (=> d!693074 m!2770051))

(declare-fun m!2770053 () Bool)

(assert (=> d!693074 m!2770053))

(declare-fun m!2770055 () Bool)

(assert (=> b!2356567 m!2770055))

(assert (=> b!2356366 d!693074))

(declare-fun bm!143415 () Bool)

(declare-fun call!143423 () List!27944)

(declare-fun call!143422 () List!27944)

(assert (=> bm!143415 (= call!143423 call!143422)))

(declare-fun bm!143416 () Bool)

(declare-fun call!143421 () List!27944)

(declare-fun c!374639 () Bool)

(assert (=> bm!143416 (= call!143421 (usedCharacters!444 (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))))))

(declare-fun b!2356568 () Bool)

(declare-fun e!1504992 () List!27944)

(assert (=> b!2356568 (= e!1504992 (Cons!27846 (c!374561 r!26197) Nil!27846))))

(declare-fun bm!143417 () Bool)

(declare-fun call!143420 () List!27944)

(assert (=> bm!143417 (= call!143420 (++!6870 call!143421 call!143423))))

(declare-fun b!2356569 () Bool)

(declare-fun e!1504991 () List!27944)

(assert (=> b!2356569 (= e!1504991 Nil!27846)))

(declare-fun d!693076 () Bool)

(declare-fun c!374636 () Bool)

(assert (=> d!693076 (= c!374636 (or ((_ is EmptyExpr!6893) r!26197) ((_ is EmptyLang!6893) r!26197)))))

(assert (=> d!693076 (= (usedCharacters!444 r!26197) e!1504991)))

(declare-fun b!2356570 () Bool)

(declare-fun c!374637 () Bool)

(assert (=> b!2356570 (= c!374637 ((_ is Star!6893) r!26197))))

(declare-fun e!1504993 () List!27944)

(assert (=> b!2356570 (= e!1504992 e!1504993)))

(declare-fun bm!143418 () Bool)

(assert (=> bm!143418 (= call!143422 (usedCharacters!444 (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))

(declare-fun b!2356571 () Bool)

(declare-fun e!1504990 () List!27944)

(assert (=> b!2356571 (= e!1504990 call!143420)))

(declare-fun b!2356572 () Bool)

(assert (=> b!2356572 (= e!1504993 e!1504990)))

(assert (=> b!2356572 (= c!374639 ((_ is Union!6893) r!26197))))

(declare-fun b!2356573 () Bool)

(assert (=> b!2356573 (= e!1504990 call!143420)))

(declare-fun b!2356574 () Bool)

(assert (=> b!2356574 (= e!1504993 call!143422)))

(declare-fun b!2356575 () Bool)

(assert (=> b!2356575 (= e!1504991 e!1504992)))

(declare-fun c!374638 () Bool)

(assert (=> b!2356575 (= c!374638 ((_ is ElementMatch!6893) r!26197))))

(assert (= (and d!693076 c!374636) b!2356569))

(assert (= (and d!693076 (not c!374636)) b!2356575))

(assert (= (and b!2356575 c!374638) b!2356568))

(assert (= (and b!2356575 (not c!374638)) b!2356570))

(assert (= (and b!2356570 c!374637) b!2356574))

(assert (= (and b!2356570 (not c!374637)) b!2356572))

(assert (= (and b!2356572 c!374639) b!2356573))

(assert (= (and b!2356572 (not c!374639)) b!2356571))

(assert (= (or b!2356573 b!2356571) bm!143415))

(assert (= (or b!2356573 b!2356571) bm!143416))

(assert (= (or b!2356573 b!2356571) bm!143417))

(assert (= (or b!2356574 bm!143415) bm!143418))

(declare-fun m!2770057 () Bool)

(assert (=> bm!143416 m!2770057))

(declare-fun m!2770059 () Bool)

(assert (=> bm!143417 m!2770059))

(declare-fun m!2770061 () Bool)

(assert (=> bm!143418 m!2770061))

(assert (=> b!2356366 d!693076))

(declare-fun d!693078 () Bool)

(assert (=> d!693078 (= (nullable!1972 (regOne!14298 r!26197)) (nullableFct!523 (regOne!14298 r!26197)))))

(declare-fun bs!460325 () Bool)

(assert (= bs!460325 d!693078))

(declare-fun m!2770063 () Bool)

(assert (=> bs!460325 m!2770063))

(assert (=> b!2356364 d!693078))

(declare-fun e!1505008 () Bool)

(assert (=> b!2356367 (= tp!753199 e!1505008)))

(declare-fun b!2356603 () Bool)

(assert (=> b!2356603 (= e!1505008 tp_is_empty!11097)))

(declare-fun b!2356608 () Bool)

(declare-fun tp!753215 () Bool)

(declare-fun tp!753214 () Bool)

(assert (=> b!2356608 (= e!1505008 (and tp!753215 tp!753214))))

(declare-fun b!2356607 () Bool)

(declare-fun tp!753213 () Bool)

(assert (=> b!2356607 (= e!1505008 tp!753213)))

(declare-fun b!2356605 () Bool)

(declare-fun tp!753216 () Bool)

(declare-fun tp!753212 () Bool)

(assert (=> b!2356605 (= e!1505008 (and tp!753216 tp!753212))))

(assert (= (and b!2356367 ((_ is ElementMatch!6893) (regOne!14298 r!26197))) b!2356603))

(assert (= (and b!2356367 ((_ is Concat!11515) (regOne!14298 r!26197))) b!2356605))

(assert (= (and b!2356367 ((_ is Star!6893) (regOne!14298 r!26197))) b!2356607))

(assert (= (and b!2356367 ((_ is Union!6893) (regOne!14298 r!26197))) b!2356608))

(declare-fun e!1505009 () Bool)

(assert (=> b!2356367 (= tp!753198 e!1505009)))

(declare-fun b!2356609 () Bool)

(assert (=> b!2356609 (= e!1505009 tp_is_empty!11097)))

(declare-fun b!2356612 () Bool)

(declare-fun tp!753220 () Bool)

(declare-fun tp!753219 () Bool)

(assert (=> b!2356612 (= e!1505009 (and tp!753220 tp!753219))))

(declare-fun b!2356611 () Bool)

(declare-fun tp!753218 () Bool)

(assert (=> b!2356611 (= e!1505009 tp!753218)))

(declare-fun b!2356610 () Bool)

(declare-fun tp!753221 () Bool)

(declare-fun tp!753217 () Bool)

(assert (=> b!2356610 (= e!1505009 (and tp!753221 tp!753217))))

(assert (= (and b!2356367 ((_ is ElementMatch!6893) (regTwo!14298 r!26197))) b!2356609))

(assert (= (and b!2356367 ((_ is Concat!11515) (regTwo!14298 r!26197))) b!2356610))

(assert (= (and b!2356367 ((_ is Star!6893) (regTwo!14298 r!26197))) b!2356611))

(assert (= (and b!2356367 ((_ is Union!6893) (regTwo!14298 r!26197))) b!2356612))

(declare-fun e!1505010 () Bool)

(assert (=> b!2356370 (= tp!753201 e!1505010)))

(declare-fun b!2356613 () Bool)

(assert (=> b!2356613 (= e!1505010 tp_is_empty!11097)))

(declare-fun b!2356616 () Bool)

(declare-fun tp!753225 () Bool)

(declare-fun tp!753224 () Bool)

(assert (=> b!2356616 (= e!1505010 (and tp!753225 tp!753224))))

(declare-fun b!2356615 () Bool)

(declare-fun tp!753223 () Bool)

(assert (=> b!2356615 (= e!1505010 tp!753223)))

(declare-fun b!2356614 () Bool)

(declare-fun tp!753226 () Bool)

(declare-fun tp!753222 () Bool)

(assert (=> b!2356614 (= e!1505010 (and tp!753226 tp!753222))))

(assert (= (and b!2356370 ((_ is ElementMatch!6893) (regOne!14299 r!26197))) b!2356613))

(assert (= (and b!2356370 ((_ is Concat!11515) (regOne!14299 r!26197))) b!2356614))

(assert (= (and b!2356370 ((_ is Star!6893) (regOne!14299 r!26197))) b!2356615))

(assert (= (and b!2356370 ((_ is Union!6893) (regOne!14299 r!26197))) b!2356616))

(declare-fun e!1505011 () Bool)

(assert (=> b!2356370 (= tp!753200 e!1505011)))

(declare-fun b!2356617 () Bool)

(assert (=> b!2356617 (= e!1505011 tp_is_empty!11097)))

(declare-fun b!2356620 () Bool)

(declare-fun tp!753230 () Bool)

(declare-fun tp!753229 () Bool)

(assert (=> b!2356620 (= e!1505011 (and tp!753230 tp!753229))))

(declare-fun b!2356619 () Bool)

(declare-fun tp!753228 () Bool)

(assert (=> b!2356619 (= e!1505011 tp!753228)))

(declare-fun b!2356618 () Bool)

(declare-fun tp!753231 () Bool)

(declare-fun tp!753227 () Bool)

(assert (=> b!2356618 (= e!1505011 (and tp!753231 tp!753227))))

(assert (= (and b!2356370 ((_ is ElementMatch!6893) (regTwo!14299 r!26197))) b!2356617))

(assert (= (and b!2356370 ((_ is Concat!11515) (regTwo!14299 r!26197))) b!2356618))

(assert (= (and b!2356370 ((_ is Star!6893) (regTwo!14299 r!26197))) b!2356619))

(assert (= (and b!2356370 ((_ is Union!6893) (regTwo!14299 r!26197))) b!2356620))

(declare-fun e!1505012 () Bool)

(assert (=> b!2356365 (= tp!753197 e!1505012)))

(declare-fun b!2356621 () Bool)

(assert (=> b!2356621 (= e!1505012 tp_is_empty!11097)))

(declare-fun b!2356624 () Bool)

(declare-fun tp!753235 () Bool)

(declare-fun tp!753234 () Bool)

(assert (=> b!2356624 (= e!1505012 (and tp!753235 tp!753234))))

(declare-fun b!2356623 () Bool)

(declare-fun tp!753233 () Bool)

(assert (=> b!2356623 (= e!1505012 tp!753233)))

(declare-fun b!2356622 () Bool)

(declare-fun tp!753236 () Bool)

(declare-fun tp!753232 () Bool)

(assert (=> b!2356622 (= e!1505012 (and tp!753236 tp!753232))))

(assert (= (and b!2356365 ((_ is ElementMatch!6893) (reg!7222 r!26197))) b!2356621))

(assert (= (and b!2356365 ((_ is Concat!11515) (reg!7222 r!26197))) b!2356622))

(assert (= (and b!2356365 ((_ is Star!6893) (reg!7222 r!26197))) b!2356623))

(assert (= (and b!2356365 ((_ is Union!6893) (reg!7222 r!26197))) b!2356624))

(check-sat (not b!2356623) (not bm!143355) (not b!2356610) (not b!2356622) (not b!2356616) (not bm!143389) tp_is_empty!11097 (not d!693072) (not b!2356611) (not bm!143358) (not b!2356608) (not b!2356618) (not bm!143359) (not d!693054) (not bm!143416) (not d!693044) (not bm!143390) (not b!2356615) (not bm!143404) (not b!2356417) (not bm!143386) (not b!2356624) (not d!693042) (not d!693070) (not b!2356565) (not b!2356498) (not d!693078) (not b!2356567) (not b!2356620) (not bm!143385) (not d!693056) (not b!2356426) (not b!2356612) (not b!2356614) (not d!693040) (not d!693074) (not bm!143418) (not bm!143417) (not bm!143405) (not b!2356605) (not b!2356619) (not bm!143356) (not b!2356607) (not b!2356486) (not bm!143406))
(check-sat)
(get-model)

(declare-fun d!693086 () Bool)

(assert (=> d!693086 (= (nullable!1972 (reg!7222 (regOne!14298 r!26197))) (nullableFct!523 (reg!7222 (regOne!14298 r!26197))))))

(declare-fun bs!460327 () Bool)

(assert (= bs!460327 d!693086))

(declare-fun m!2770087 () Bool)

(assert (=> bs!460327 m!2770087))

(assert (=> b!2356417 d!693086))

(declare-fun bm!143430 () Bool)

(declare-fun call!143435 () Regex!6893)

(declare-fun call!143438 () Regex!6893)

(assert (=> bm!143430 (= call!143435 call!143438)))

(declare-fun b!2356665 () Bool)

(declare-fun e!1505025 () Regex!6893)

(declare-fun e!1505026 () Regex!6893)

(assert (=> b!2356665 (= e!1505025 e!1505026)))

(declare-fun c!374654 () Bool)

(assert (=> b!2356665 (= c!374654 ((_ is Star!6893) (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197)))))))

(declare-fun b!2356666 () Bool)

(declare-fun e!1505029 () Regex!6893)

(assert (=> b!2356666 (= e!1505029 (ite (= c!13498 (c!374561 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197))))) EmptyExpr!6893 EmptyLang!6893))))

(declare-fun c!374652 () Bool)

(declare-fun b!2356667 () Bool)

(assert (=> b!2356667 (= c!374652 (nullable!1972 (regOne!14298 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197))))))))

(declare-fun e!1505027 () Regex!6893)

(assert (=> b!2356667 (= e!1505026 e!1505027)))

(declare-fun b!2356668 () Bool)

(declare-fun call!143436 () Regex!6893)

(assert (=> b!2356668 (= e!1505027 (Union!6893 (Concat!11515 call!143435 (regTwo!14298 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197))))) call!143436))))

(declare-fun b!2356669 () Bool)

(assert (=> b!2356669 (= e!1505027 (Union!6893 (Concat!11515 call!143435 (regTwo!14298 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197))))) EmptyLang!6893))))

(declare-fun bm!143431 () Bool)

(declare-fun call!143437 () Regex!6893)

(assert (=> bm!143431 (= call!143438 call!143437)))

(declare-fun b!2356670 () Bool)

(declare-fun e!1505028 () Regex!6893)

(assert (=> b!2356670 (= e!1505028 e!1505029)))

(declare-fun c!374655 () Bool)

(assert (=> b!2356670 (= c!374655 ((_ is ElementMatch!6893) (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197)))))))

(declare-fun b!2356671 () Bool)

(assert (=> b!2356671 (= e!1505025 (Union!6893 call!143436 call!143437))))

(declare-fun bm!143433 () Bool)

(declare-fun c!374656 () Bool)

(assert (=> bm!143433 (= call!143437 (derivativeStep!1632 (ite c!374656 (regTwo!14299 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197)))) (ite c!374654 (reg!7222 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197)))) (regOne!14298 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197)))))) c!13498))))

(declare-fun b!2356672 () Bool)

(assert (=> b!2356672 (= e!1505028 EmptyLang!6893)))

(declare-fun b!2356673 () Bool)

(assert (=> b!2356673 (= e!1505026 (Concat!11515 call!143438 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197)))))))

(declare-fun b!2356674 () Bool)

(assert (=> b!2356674 (= c!374656 ((_ is Union!6893) (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197)))))))

(assert (=> b!2356674 (= e!1505029 e!1505025)))

(declare-fun d!693088 () Bool)

(declare-fun lt!863066 () Regex!6893)

(assert (=> d!693088 (validRegex!2638 lt!863066)))

(assert (=> d!693088 (= lt!863066 e!1505028)))

(declare-fun c!374653 () Bool)

(assert (=> d!693088 (= c!374653 (or ((_ is EmptyExpr!6893) (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197)))) ((_ is EmptyLang!6893) (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197))))))))

(assert (=> d!693088 (validRegex!2638 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197))))))

(assert (=> d!693088 (= (derivativeStep!1632 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197))) c!13498) lt!863066)))

(declare-fun bm!143432 () Bool)

(assert (=> bm!143432 (= call!143436 (derivativeStep!1632 (ite c!374656 (regOne!14299 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197)))) (regTwo!14298 (ite c!374602 (regTwo!14299 r!26197) (ite c!374600 (reg!7222 r!26197) (regOne!14298 r!26197))))) c!13498))))

(assert (= (and d!693088 c!374653) b!2356672))

(assert (= (and d!693088 (not c!374653)) b!2356670))

(assert (= (and b!2356670 c!374655) b!2356666))

(assert (= (and b!2356670 (not c!374655)) b!2356674))

(assert (= (and b!2356674 c!374656) b!2356671))

(assert (= (and b!2356674 (not c!374656)) b!2356665))

(assert (= (and b!2356665 c!374654) b!2356673))

(assert (= (and b!2356665 (not c!374654)) b!2356667))

(assert (= (and b!2356667 c!374652) b!2356668))

(assert (= (and b!2356667 (not c!374652)) b!2356669))

(assert (= (or b!2356668 b!2356669) bm!143430))

(assert (= (or b!2356673 bm!143430) bm!143431))

(assert (= (or b!2356671 bm!143431) bm!143433))

(assert (= (or b!2356671 b!2356668) bm!143432))

(declare-fun m!2770089 () Bool)

(assert (=> b!2356667 m!2770089))

(declare-fun m!2770091 () Bool)

(assert (=> bm!143433 m!2770091))

(declare-fun m!2770093 () Bool)

(assert (=> d!693088 m!2770093))

(declare-fun m!2770095 () Bool)

(assert (=> d!693088 m!2770095))

(declare-fun m!2770097 () Bool)

(assert (=> bm!143432 m!2770097))

(assert (=> bm!143386 d!693088))

(declare-fun d!693090 () Bool)

(declare-fun lt!863067 () Bool)

(assert (=> d!693090 (= lt!863067 (select (content!3779 (t!207803 (usedCharacters!444 r!26197))) c!13498))))

(declare-fun e!1505030 () Bool)

(assert (=> d!693090 (= lt!863067 e!1505030)))

(declare-fun res!1000462 () Bool)

(assert (=> d!693090 (=> (not res!1000462) (not e!1505030))))

(assert (=> d!693090 (= res!1000462 ((_ is Cons!27846) (t!207803 (usedCharacters!444 r!26197))))))

(assert (=> d!693090 (= (contains!4825 (t!207803 (usedCharacters!444 r!26197)) c!13498) lt!863067)))

(declare-fun b!2356675 () Bool)

(declare-fun e!1505031 () Bool)

(assert (=> b!2356675 (= e!1505030 e!1505031)))

(declare-fun res!1000463 () Bool)

(assert (=> b!2356675 (=> res!1000463 e!1505031)))

(assert (=> b!2356675 (= res!1000463 (= (h!33247 (t!207803 (usedCharacters!444 r!26197))) c!13498))))

(declare-fun b!2356676 () Bool)

(assert (=> b!2356676 (= e!1505031 (contains!4825 (t!207803 (t!207803 (usedCharacters!444 r!26197))) c!13498))))

(assert (= (and d!693090 res!1000462) b!2356675))

(assert (= (and b!2356675 (not res!1000463)) b!2356676))

(declare-fun m!2770099 () Bool)

(assert (=> d!693090 m!2770099))

(declare-fun m!2770101 () Bool)

(assert (=> d!693090 m!2770101))

(declare-fun m!2770103 () Bool)

(assert (=> b!2356676 m!2770103))

(assert (=> b!2356565 d!693090))

(declare-fun b!2356691 () Bool)

(declare-fun e!1505045 () Bool)

(declare-fun e!1505046 () Bool)

(assert (=> b!2356691 (= e!1505045 e!1505046)))

(declare-fun res!1000478 () Bool)

(declare-fun call!143443 () Bool)

(assert (=> b!2356691 (= res!1000478 call!143443)))

(assert (=> b!2356691 (=> res!1000478 e!1505046)))

(declare-fun d!693092 () Bool)

(declare-fun res!1000477 () Bool)

(declare-fun e!1505049 () Bool)

(assert (=> d!693092 (=> res!1000477 e!1505049)))

(assert (=> d!693092 (= res!1000477 ((_ is EmptyExpr!6893) r!26197))))

(assert (=> d!693092 (= (nullableFct!523 r!26197) e!1505049)))

(declare-fun b!2356692 () Bool)

(declare-fun e!1505048 () Bool)

(declare-fun call!143444 () Bool)

(assert (=> b!2356692 (= e!1505048 call!143444)))

(declare-fun bm!143438 () Bool)

(declare-fun c!374659 () Bool)

(assert (=> bm!143438 (= call!143444 (nullable!1972 (ite c!374659 (regTwo!14299 r!26197) (regTwo!14298 r!26197))))))

(declare-fun b!2356693 () Bool)

(declare-fun e!1505044 () Bool)

(assert (=> b!2356693 (= e!1505044 e!1505045)))

(assert (=> b!2356693 (= c!374659 ((_ is Union!6893) r!26197))))

(declare-fun b!2356694 () Bool)

(assert (=> b!2356694 (= e!1505045 e!1505048)))

(declare-fun res!1000474 () Bool)

(assert (=> b!2356694 (= res!1000474 call!143443)))

(assert (=> b!2356694 (=> (not res!1000474) (not e!1505048))))

(declare-fun b!2356695 () Bool)

(declare-fun e!1505047 () Bool)

(assert (=> b!2356695 (= e!1505047 e!1505044)))

(declare-fun res!1000476 () Bool)

(assert (=> b!2356695 (=> res!1000476 e!1505044)))

(assert (=> b!2356695 (= res!1000476 ((_ is Star!6893) r!26197))))

(declare-fun b!2356696 () Bool)

(assert (=> b!2356696 (= e!1505046 call!143444)))

(declare-fun bm!143439 () Bool)

(assert (=> bm!143439 (= call!143443 (nullable!1972 (ite c!374659 (regOne!14299 r!26197) (regOne!14298 r!26197))))))

(declare-fun b!2356697 () Bool)

(assert (=> b!2356697 (= e!1505049 e!1505047)))

(declare-fun res!1000475 () Bool)

(assert (=> b!2356697 (=> (not res!1000475) (not e!1505047))))

(assert (=> b!2356697 (= res!1000475 (and (not ((_ is EmptyLang!6893) r!26197)) (not ((_ is ElementMatch!6893) r!26197))))))

(assert (= (and d!693092 (not res!1000477)) b!2356697))

(assert (= (and b!2356697 res!1000475) b!2356695))

(assert (= (and b!2356695 (not res!1000476)) b!2356693))

(assert (= (and b!2356693 c!374659) b!2356691))

(assert (= (and b!2356693 (not c!374659)) b!2356694))

(assert (= (and b!2356691 (not res!1000478)) b!2356696))

(assert (= (and b!2356694 res!1000474) b!2356692))

(assert (= (or b!2356691 b!2356694) bm!143439))

(assert (= (or b!2356696 b!2356692) bm!143438))

(declare-fun m!2770105 () Bool)

(assert (=> bm!143438 m!2770105))

(declare-fun m!2770107 () Bool)

(assert (=> bm!143439 m!2770107))

(assert (=> d!693040 d!693092))

(declare-fun d!693094 () Bool)

(declare-fun c!374662 () Bool)

(assert (=> d!693094 (= c!374662 ((_ is Nil!27846) (usedCharacters!444 (regOne!14298 r!26197))))))

(declare-fun e!1505052 () (InoxSet C!13944))

(assert (=> d!693094 (= (content!3779 (usedCharacters!444 (regOne!14298 r!26197))) e!1505052)))

(declare-fun b!2356702 () Bool)

(assert (=> b!2356702 (= e!1505052 ((as const (Array C!13944 Bool)) false))))

(declare-fun b!2356703 () Bool)

(assert (=> b!2356703 (= e!1505052 ((_ map or) (store ((as const (Array C!13944 Bool)) false) (h!33247 (usedCharacters!444 (regOne!14298 r!26197))) true) (content!3779 (t!207803 (usedCharacters!444 (regOne!14298 r!26197))))))))

(assert (= (and d!693094 c!374662) b!2356702))

(assert (= (and d!693094 (not c!374662)) b!2356703))

(declare-fun m!2770109 () Bool)

(assert (=> b!2356703 m!2770109))

(declare-fun m!2770111 () Bool)

(assert (=> b!2356703 m!2770111))

(assert (=> d!693074 d!693094))

(declare-fun b!2356704 () Bool)

(declare-fun e!1505057 () Bool)

(declare-fun call!143446 () Bool)

(assert (=> b!2356704 (= e!1505057 call!143446)))

(declare-fun b!2356705 () Bool)

(declare-fun res!1000483 () Bool)

(declare-fun e!1505059 () Bool)

(assert (=> b!2356705 (=> res!1000483 e!1505059)))

(assert (=> b!2356705 (= res!1000483 (not ((_ is Concat!11515) lt!863050)))))

(declare-fun e!1505056 () Bool)

(assert (=> b!2356705 (= e!1505056 e!1505059)))

(declare-fun bm!143440 () Bool)

(declare-fun call!143445 () Bool)

(assert (=> bm!143440 (= call!143446 call!143445)))

(declare-fun b!2356706 () Bool)

(declare-fun e!1505054 () Bool)

(assert (=> b!2356706 (= e!1505054 e!1505056)))

(declare-fun c!374664 () Bool)

(assert (=> b!2356706 (= c!374664 ((_ is Union!6893) lt!863050))))

(declare-fun b!2356707 () Bool)

(assert (=> b!2356707 (= e!1505059 e!1505057)))

(declare-fun res!1000481 () Bool)

(assert (=> b!2356707 (=> (not res!1000481) (not e!1505057))))

(declare-fun call!143447 () Bool)

(assert (=> b!2356707 (= res!1000481 call!143447)))

(declare-fun b!2356708 () Bool)

(declare-fun e!1505053 () Bool)

(assert (=> b!2356708 (= e!1505053 call!143445)))

(declare-fun b!2356709 () Bool)

(declare-fun res!1000480 () Bool)

(declare-fun e!1505055 () Bool)

(assert (=> b!2356709 (=> (not res!1000480) (not e!1505055))))

(assert (=> b!2356709 (= res!1000480 call!143447)))

(assert (=> b!2356709 (= e!1505056 e!1505055)))

(declare-fun c!374663 () Bool)

(declare-fun bm!143441 () Bool)

(assert (=> bm!143441 (= call!143445 (validRegex!2638 (ite c!374663 (reg!7222 lt!863050) (ite c!374664 (regTwo!14299 lt!863050) (regTwo!14298 lt!863050)))))))

(declare-fun d!693096 () Bool)

(declare-fun res!1000482 () Bool)

(declare-fun e!1505058 () Bool)

(assert (=> d!693096 (=> res!1000482 e!1505058)))

(assert (=> d!693096 (= res!1000482 ((_ is ElementMatch!6893) lt!863050))))

(assert (=> d!693096 (= (validRegex!2638 lt!863050) e!1505058)))

(declare-fun bm!143442 () Bool)

(assert (=> bm!143442 (= call!143447 (validRegex!2638 (ite c!374664 (regOne!14299 lt!863050) (regOne!14298 lt!863050))))))

(declare-fun b!2356710 () Bool)

(assert (=> b!2356710 (= e!1505058 e!1505054)))

(assert (=> b!2356710 (= c!374663 ((_ is Star!6893) lt!863050))))

(declare-fun b!2356711 () Bool)

(assert (=> b!2356711 (= e!1505055 call!143446)))

(declare-fun b!2356712 () Bool)

(assert (=> b!2356712 (= e!1505054 e!1505053)))

(declare-fun res!1000479 () Bool)

(assert (=> b!2356712 (= res!1000479 (not (nullable!1972 (reg!7222 lt!863050))))))

(assert (=> b!2356712 (=> (not res!1000479) (not e!1505053))))

(assert (= (and d!693096 (not res!1000482)) b!2356710))

(assert (= (and b!2356710 c!374663) b!2356712))

(assert (= (and b!2356710 (not c!374663)) b!2356706))

(assert (= (and b!2356712 res!1000479) b!2356708))

(assert (= (and b!2356706 c!374664) b!2356709))

(assert (= (and b!2356706 (not c!374664)) b!2356705))

(assert (= (and b!2356709 res!1000480) b!2356711))

(assert (= (and b!2356705 (not res!1000483)) b!2356707))

(assert (= (and b!2356707 res!1000481) b!2356704))

(assert (= (or b!2356711 b!2356704) bm!143440))

(assert (= (or b!2356709 b!2356707) bm!143442))

(assert (= (or b!2356708 bm!143440) bm!143441))

(declare-fun m!2770113 () Bool)

(assert (=> bm!143441 m!2770113))

(declare-fun m!2770115 () Bool)

(assert (=> bm!143442 m!2770115))

(declare-fun m!2770117 () Bool)

(assert (=> b!2356712 m!2770117))

(assert (=> d!693056 d!693096))

(assert (=> d!693056 d!693034))

(declare-fun d!693098 () Bool)

(declare-fun c!374665 () Bool)

(assert (=> d!693098 (= c!374665 ((_ is Nil!27846) (usedCharacters!444 r!26197)))))

(declare-fun e!1505060 () (InoxSet C!13944))

(assert (=> d!693098 (= (content!3779 (usedCharacters!444 r!26197)) e!1505060)))

(declare-fun b!2356713 () Bool)

(assert (=> b!2356713 (= e!1505060 ((as const (Array C!13944 Bool)) false))))

(declare-fun b!2356714 () Bool)

(assert (=> b!2356714 (= e!1505060 ((_ map or) (store ((as const (Array C!13944 Bool)) false) (h!33247 (usedCharacters!444 r!26197)) true) (content!3779 (t!207803 (usedCharacters!444 r!26197)))))))

(assert (= (and d!693098 c!374665) b!2356713))

(assert (= (and d!693098 (not c!374665)) b!2356714))

(declare-fun m!2770119 () Bool)

(assert (=> b!2356714 m!2770119))

(assert (=> b!2356714 m!2770099))

(assert (=> d!693070 d!693098))

(declare-fun d!693100 () Bool)

(assert (=> d!693100 (= (nullable!1972 (regOne!14298 (regOne!14298 r!26197))) (nullableFct!523 (regOne!14298 (regOne!14298 r!26197))))))

(declare-fun bs!460328 () Bool)

(assert (= bs!460328 d!693100))

(declare-fun m!2770121 () Bool)

(assert (=> bs!460328 m!2770121))

(assert (=> b!2356498 d!693100))

(declare-fun bm!143443 () Bool)

(declare-fun call!143451 () List!27944)

(declare-fun call!143450 () List!27944)

(assert (=> bm!143443 (= call!143451 call!143450)))

(declare-fun c!374669 () Bool)

(declare-fun call!143449 () List!27944)

(declare-fun bm!143444 () Bool)

(assert (=> bm!143444 (= call!143449 (usedCharacters!444 (ite c!374669 (regOne!14299 (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) (regOne!14298 (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))))

(declare-fun b!2356715 () Bool)

(declare-fun e!1505063 () List!27944)

(assert (=> b!2356715 (= e!1505063 (Cons!27846 (c!374561 (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) Nil!27846))))

(declare-fun bm!143445 () Bool)

(declare-fun call!143448 () List!27944)

(assert (=> bm!143445 (= call!143448 (++!6870 call!143449 call!143451))))

(declare-fun b!2356716 () Bool)

(declare-fun e!1505062 () List!27944)

(assert (=> b!2356716 (= e!1505062 Nil!27846)))

(declare-fun d!693102 () Bool)

(declare-fun c!374666 () Bool)

(assert (=> d!693102 (= c!374666 (or ((_ is EmptyExpr!6893) (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) ((_ is EmptyLang!6893) (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))))))

(assert (=> d!693102 (= (usedCharacters!444 (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) e!1505062)))

(declare-fun b!2356717 () Bool)

(declare-fun c!374667 () Bool)

(assert (=> b!2356717 (= c!374667 ((_ is Star!6893) (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))

(declare-fun e!1505064 () List!27944)

(assert (=> b!2356717 (= e!1505063 e!1505064)))

(declare-fun bm!143446 () Bool)

(assert (=> bm!143446 (= call!143450 (usedCharacters!444 (ite c!374667 (reg!7222 (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) (ite c!374669 (regTwo!14299 (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) (regTwo!14298 (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))))))))

(declare-fun b!2356718 () Bool)

(declare-fun e!1505061 () List!27944)

(assert (=> b!2356718 (= e!1505061 call!143448)))

(declare-fun b!2356719 () Bool)

(assert (=> b!2356719 (= e!1505064 e!1505061)))

(assert (=> b!2356719 (= c!374669 ((_ is Union!6893) (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))

(declare-fun b!2356720 () Bool)

(assert (=> b!2356720 (= e!1505061 call!143448)))

(declare-fun b!2356721 () Bool)

(assert (=> b!2356721 (= e!1505064 call!143450)))

(declare-fun b!2356722 () Bool)

(assert (=> b!2356722 (= e!1505062 e!1505063)))

(declare-fun c!374668 () Bool)

(assert (=> b!2356722 (= c!374668 ((_ is ElementMatch!6893) (ite c!374624 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))

(assert (= (and d!693102 c!374666) b!2356716))

(assert (= (and d!693102 (not c!374666)) b!2356722))

(assert (= (and b!2356722 c!374668) b!2356715))

(assert (= (and b!2356722 (not c!374668)) b!2356717))

(assert (= (and b!2356717 c!374667) b!2356721))

(assert (= (and b!2356717 (not c!374667)) b!2356719))

(assert (= (and b!2356719 c!374669) b!2356720))

(assert (= (and b!2356719 (not c!374669)) b!2356718))

(assert (= (or b!2356720 b!2356718) bm!143443))

(assert (= (or b!2356720 b!2356718) bm!143444))

(assert (= (or b!2356720 b!2356718) bm!143445))

(assert (= (or b!2356721 bm!143443) bm!143446))

(declare-fun m!2770123 () Bool)

(assert (=> bm!143444 m!2770123))

(declare-fun m!2770125 () Bool)

(assert (=> bm!143445 m!2770125))

(declare-fun m!2770127 () Bool)

(assert (=> bm!143446 m!2770127))

(assert (=> bm!143404 d!693102))

(declare-fun b!2356723 () Bool)

(declare-fun e!1505066 () Bool)

(declare-fun e!1505067 () Bool)

(assert (=> b!2356723 (= e!1505066 e!1505067)))

(declare-fun res!1000488 () Bool)

(declare-fun call!143452 () Bool)

(assert (=> b!2356723 (= res!1000488 call!143452)))

(assert (=> b!2356723 (=> res!1000488 e!1505067)))

(declare-fun d!693104 () Bool)

(declare-fun res!1000487 () Bool)

(declare-fun e!1505070 () Bool)

(assert (=> d!693104 (=> res!1000487 e!1505070)))

(assert (=> d!693104 (= res!1000487 ((_ is EmptyExpr!6893) (regOne!14298 r!26197)))))

(assert (=> d!693104 (= (nullableFct!523 (regOne!14298 r!26197)) e!1505070)))

(declare-fun b!2356724 () Bool)

(declare-fun e!1505069 () Bool)

(declare-fun call!143453 () Bool)

(assert (=> b!2356724 (= e!1505069 call!143453)))

(declare-fun bm!143447 () Bool)

(declare-fun c!374670 () Bool)

(assert (=> bm!143447 (= call!143453 (nullable!1972 (ite c!374670 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))))))

(declare-fun b!2356725 () Bool)

(declare-fun e!1505065 () Bool)

(assert (=> b!2356725 (= e!1505065 e!1505066)))

(assert (=> b!2356725 (= c!374670 ((_ is Union!6893) (regOne!14298 r!26197)))))

(declare-fun b!2356726 () Bool)

(assert (=> b!2356726 (= e!1505066 e!1505069)))

(declare-fun res!1000484 () Bool)

(assert (=> b!2356726 (= res!1000484 call!143452)))

(assert (=> b!2356726 (=> (not res!1000484) (not e!1505069))))

(declare-fun b!2356727 () Bool)

(declare-fun e!1505068 () Bool)

(assert (=> b!2356727 (= e!1505068 e!1505065)))

(declare-fun res!1000486 () Bool)

(assert (=> b!2356727 (=> res!1000486 e!1505065)))

(assert (=> b!2356727 (= res!1000486 ((_ is Star!6893) (regOne!14298 r!26197)))))

(declare-fun b!2356728 () Bool)

(assert (=> b!2356728 (= e!1505067 call!143453)))

(declare-fun bm!143448 () Bool)

(assert (=> bm!143448 (= call!143452 (nullable!1972 (ite c!374670 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))

(declare-fun b!2356729 () Bool)

(assert (=> b!2356729 (= e!1505070 e!1505068)))

(declare-fun res!1000485 () Bool)

(assert (=> b!2356729 (=> (not res!1000485) (not e!1505068))))

(assert (=> b!2356729 (= res!1000485 (and (not ((_ is EmptyLang!6893) (regOne!14298 r!26197))) (not ((_ is ElementMatch!6893) (regOne!14298 r!26197)))))))

(assert (= (and d!693104 (not res!1000487)) b!2356729))

(assert (= (and b!2356729 res!1000485) b!2356727))

(assert (= (and b!2356727 (not res!1000486)) b!2356725))

(assert (= (and b!2356725 c!374670) b!2356723))

(assert (= (and b!2356725 (not c!374670)) b!2356726))

(assert (= (and b!2356723 (not res!1000488)) b!2356728))

(assert (= (and b!2356726 res!1000484) b!2356724))

(assert (= (or b!2356723 b!2356726) bm!143448))

(assert (= (or b!2356728 b!2356724) bm!143447))

(declare-fun m!2770129 () Bool)

(assert (=> bm!143447 m!2770129))

(declare-fun m!2770131 () Bool)

(assert (=> bm!143448 m!2770131))

(assert (=> d!693078 d!693104))

(declare-fun d!693106 () Bool)

(declare-fun e!1505076 () Bool)

(assert (=> d!693106 e!1505076))

(declare-fun res!1000494 () Bool)

(assert (=> d!693106 (=> (not res!1000494) (not e!1505076))))

(declare-fun lt!863070 () List!27944)

(assert (=> d!693106 (= res!1000494 (= (content!3779 lt!863070) ((_ map or) (content!3779 call!143409) (content!3779 call!143411))))))

(declare-fun e!1505075 () List!27944)

(assert (=> d!693106 (= lt!863070 e!1505075)))

(declare-fun c!374673 () Bool)

(assert (=> d!693106 (= c!374673 ((_ is Nil!27846) call!143409))))

(assert (=> d!693106 (= (++!6870 call!143409 call!143411) lt!863070)))

(declare-fun b!2356741 () Bool)

(assert (=> b!2356741 (= e!1505076 (or (not (= call!143411 Nil!27846)) (= lt!863070 call!143409)))))

(declare-fun b!2356738 () Bool)

(assert (=> b!2356738 (= e!1505075 call!143411)))

(declare-fun b!2356740 () Bool)

(declare-fun res!1000493 () Bool)

(assert (=> b!2356740 (=> (not res!1000493) (not e!1505076))))

(declare-fun size!22030 (List!27944) Int)

(assert (=> b!2356740 (= res!1000493 (= (size!22030 lt!863070) (+ (size!22030 call!143409) (size!22030 call!143411))))))

(declare-fun b!2356739 () Bool)

(assert (=> b!2356739 (= e!1505075 (Cons!27846 (h!33247 call!143409) (++!6870 (t!207803 call!143409) call!143411)))))

(assert (= (and d!693106 c!374673) b!2356738))

(assert (= (and d!693106 (not c!374673)) b!2356739))

(assert (= (and d!693106 res!1000494) b!2356740))

(assert (= (and b!2356740 res!1000493) b!2356741))

(declare-fun m!2770133 () Bool)

(assert (=> d!693106 m!2770133))

(declare-fun m!2770135 () Bool)

(assert (=> d!693106 m!2770135))

(declare-fun m!2770137 () Bool)

(assert (=> d!693106 m!2770137))

(declare-fun m!2770139 () Bool)

(assert (=> b!2356740 m!2770139))

(declare-fun m!2770141 () Bool)

(assert (=> b!2356740 m!2770141))

(declare-fun m!2770143 () Bool)

(assert (=> b!2356740 m!2770143))

(declare-fun m!2770145 () Bool)

(assert (=> b!2356739 m!2770145))

(assert (=> bm!143405 d!693106))

(declare-fun bm!143449 () Bool)

(declare-fun call!143454 () Regex!6893)

(declare-fun call!143457 () Regex!6893)

(assert (=> bm!143449 (= call!143454 call!143457)))

(declare-fun b!2356742 () Bool)

(declare-fun e!1505077 () Regex!6893)

(declare-fun e!1505078 () Regex!6893)

(assert (=> b!2356742 (= e!1505077 e!1505078)))

(declare-fun c!374676 () Bool)

(assert (=> b!2356742 (= c!374676 ((_ is Star!6893) (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))))))

(declare-fun e!1505081 () Regex!6893)

(declare-fun b!2356743 () Bool)

(assert (=> b!2356743 (= e!1505081 (ite (= c!13498 (c!374561 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) EmptyExpr!6893 EmptyLang!6893))))

(declare-fun b!2356744 () Bool)

(declare-fun c!374674 () Bool)

(assert (=> b!2356744 (= c!374674 (nullable!1972 (regOne!14298 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))

(declare-fun e!1505079 () Regex!6893)

(assert (=> b!2356744 (= e!1505078 e!1505079)))

(declare-fun b!2356745 () Bool)

(declare-fun call!143455 () Regex!6893)

(assert (=> b!2356745 (= e!1505079 (Union!6893 (Concat!11515 call!143454 (regTwo!14298 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) call!143455))))

(declare-fun b!2356746 () Bool)

(assert (=> b!2356746 (= e!1505079 (Union!6893 (Concat!11515 call!143454 (regTwo!14298 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) EmptyLang!6893))))

(declare-fun bm!143450 () Bool)

(declare-fun call!143456 () Regex!6893)

(assert (=> bm!143450 (= call!143457 call!143456)))

(declare-fun b!2356747 () Bool)

(declare-fun e!1505080 () Regex!6893)

(assert (=> b!2356747 (= e!1505080 e!1505081)))

(declare-fun c!374677 () Bool)

(assert (=> b!2356747 (= c!374677 ((_ is ElementMatch!6893) (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))))))

(declare-fun b!2356748 () Bool)

(assert (=> b!2356748 (= e!1505077 (Union!6893 call!143455 call!143456))))

(declare-fun bm!143452 () Bool)

(declare-fun c!374678 () Bool)

(assert (=> bm!143452 (= call!143456 (derivativeStep!1632 (ite c!374678 (regTwo!14299 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))) (ite c!374676 (reg!7222 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))) (regOne!14298 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))))) c!13498))))

(declare-fun b!2356749 () Bool)

(assert (=> b!2356749 (= e!1505080 EmptyLang!6893)))

(declare-fun b!2356750 () Bool)

(assert (=> b!2356750 (= e!1505078 (Concat!11515 call!143457 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))))))

(declare-fun b!2356751 () Bool)

(assert (=> b!2356751 (= c!374678 ((_ is Union!6893) (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))))))

(assert (=> b!2356751 (= e!1505081 e!1505077)))

(declare-fun d!693108 () Bool)

(declare-fun lt!863071 () Regex!6893)

(assert (=> d!693108 (validRegex!2638 lt!863071)))

(assert (=> d!693108 (= lt!863071 e!1505080)))

(declare-fun c!374675 () Bool)

(assert (=> d!693108 (= c!374675 (or ((_ is EmptyExpr!6893) (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))) ((_ is EmptyLang!6893) (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))

(assert (=> d!693108 (validRegex!2638 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))

(assert (=> d!693108 (= (derivativeStep!1632 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))) c!13498) lt!863071)))

(declare-fun bm!143451 () Bool)

(assert (=> bm!143451 (= call!143455 (derivativeStep!1632 (ite c!374678 (regOne!14299 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))) (regTwo!14298 (ite c!374607 (regOne!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) c!13498))))

(assert (= (and d!693108 c!374675) b!2356749))

(assert (= (and d!693108 (not c!374675)) b!2356747))

(assert (= (and b!2356747 c!374677) b!2356743))

(assert (= (and b!2356747 (not c!374677)) b!2356751))

(assert (= (and b!2356751 c!374678) b!2356748))

(assert (= (and b!2356751 (not c!374678)) b!2356742))

(assert (= (and b!2356742 c!374676) b!2356750))

(assert (= (and b!2356742 (not c!374676)) b!2356744))

(assert (= (and b!2356744 c!374674) b!2356745))

(assert (= (and b!2356744 (not c!374674)) b!2356746))

(assert (= (or b!2356745 b!2356746) bm!143449))

(assert (= (or b!2356750 bm!143449) bm!143450))

(assert (= (or b!2356748 bm!143450) bm!143452))

(assert (= (or b!2356748 b!2356745) bm!143451))

(declare-fun m!2770147 () Bool)

(assert (=> b!2356744 m!2770147))

(declare-fun m!2770149 () Bool)

(assert (=> bm!143452 m!2770149))

(declare-fun m!2770151 () Bool)

(assert (=> d!693108 m!2770151))

(declare-fun m!2770153 () Bool)

(assert (=> d!693108 m!2770153))

(declare-fun m!2770155 () Bool)

(assert (=> bm!143451 m!2770155))

(assert (=> bm!143389 d!693108))

(declare-fun b!2356752 () Bool)

(declare-fun e!1505083 () Bool)

(declare-fun e!1505084 () Bool)

(assert (=> b!2356752 (= e!1505083 e!1505084)))

(declare-fun res!1000499 () Bool)

(declare-fun call!143458 () Bool)

(assert (=> b!2356752 (= res!1000499 call!143458)))

(assert (=> b!2356752 (=> res!1000499 e!1505084)))

(declare-fun d!693110 () Bool)

(declare-fun res!1000498 () Bool)

(declare-fun e!1505087 () Bool)

(assert (=> d!693110 (=> res!1000498 e!1505087)))

(assert (=> d!693110 (= res!1000498 ((_ is EmptyExpr!6893) (derivativeStep!1632 r!26197 c!13498)))))

(assert (=> d!693110 (= (nullableFct!523 (derivativeStep!1632 r!26197 c!13498)) e!1505087)))

(declare-fun b!2356753 () Bool)

(declare-fun e!1505086 () Bool)

(declare-fun call!143459 () Bool)

(assert (=> b!2356753 (= e!1505086 call!143459)))

(declare-fun bm!143453 () Bool)

(declare-fun c!374679 () Bool)

(assert (=> bm!143453 (= call!143459 (nullable!1972 (ite c!374679 (regTwo!14299 (derivativeStep!1632 r!26197 c!13498)) (regTwo!14298 (derivativeStep!1632 r!26197 c!13498)))))))

(declare-fun b!2356754 () Bool)

(declare-fun e!1505082 () Bool)

(assert (=> b!2356754 (= e!1505082 e!1505083)))

(assert (=> b!2356754 (= c!374679 ((_ is Union!6893) (derivativeStep!1632 r!26197 c!13498)))))

(declare-fun b!2356755 () Bool)

(assert (=> b!2356755 (= e!1505083 e!1505086)))

(declare-fun res!1000495 () Bool)

(assert (=> b!2356755 (= res!1000495 call!143458)))

(assert (=> b!2356755 (=> (not res!1000495) (not e!1505086))))

(declare-fun b!2356756 () Bool)

(declare-fun e!1505085 () Bool)

(assert (=> b!2356756 (= e!1505085 e!1505082)))

(declare-fun res!1000497 () Bool)

(assert (=> b!2356756 (=> res!1000497 e!1505082)))

(assert (=> b!2356756 (= res!1000497 ((_ is Star!6893) (derivativeStep!1632 r!26197 c!13498)))))

(declare-fun b!2356757 () Bool)

(assert (=> b!2356757 (= e!1505084 call!143459)))

(declare-fun bm!143454 () Bool)

(assert (=> bm!143454 (= call!143458 (nullable!1972 (ite c!374679 (regOne!14299 (derivativeStep!1632 r!26197 c!13498)) (regOne!14298 (derivativeStep!1632 r!26197 c!13498)))))))

(declare-fun b!2356758 () Bool)

(assert (=> b!2356758 (= e!1505087 e!1505085)))

(declare-fun res!1000496 () Bool)

(assert (=> b!2356758 (=> (not res!1000496) (not e!1505085))))

(assert (=> b!2356758 (= res!1000496 (and (not ((_ is EmptyLang!6893) (derivativeStep!1632 r!26197 c!13498))) (not ((_ is ElementMatch!6893) (derivativeStep!1632 r!26197 c!13498)))))))

(assert (= (and d!693110 (not res!1000498)) b!2356758))

(assert (= (and b!2356758 res!1000496) b!2356756))

(assert (= (and b!2356756 (not res!1000497)) b!2356754))

(assert (= (and b!2356754 c!374679) b!2356752))

(assert (= (and b!2356754 (not c!374679)) b!2356755))

(assert (= (and b!2356752 (not res!1000499)) b!2356757))

(assert (= (and b!2356755 res!1000495) b!2356753))

(assert (= (or b!2356752 b!2356755) bm!143454))

(assert (= (or b!2356757 b!2356753) bm!143453))

(declare-fun m!2770157 () Bool)

(assert (=> bm!143453 m!2770157))

(declare-fun m!2770159 () Bool)

(assert (=> bm!143454 m!2770159))

(assert (=> d!693042 d!693110))

(declare-fun d!693112 () Bool)

(declare-fun lt!863072 () Bool)

(assert (=> d!693112 (= lt!863072 (select (content!3779 (t!207803 (usedCharacters!444 (regOne!14298 r!26197)))) c!13498))))

(declare-fun e!1505088 () Bool)

(assert (=> d!693112 (= lt!863072 e!1505088)))

(declare-fun res!1000500 () Bool)

(assert (=> d!693112 (=> (not res!1000500) (not e!1505088))))

(assert (=> d!693112 (= res!1000500 ((_ is Cons!27846) (t!207803 (usedCharacters!444 (regOne!14298 r!26197)))))))

(assert (=> d!693112 (= (contains!4825 (t!207803 (usedCharacters!444 (regOne!14298 r!26197))) c!13498) lt!863072)))

(declare-fun b!2356759 () Bool)

(declare-fun e!1505089 () Bool)

(assert (=> b!2356759 (= e!1505088 e!1505089)))

(declare-fun res!1000501 () Bool)

(assert (=> b!2356759 (=> res!1000501 e!1505089)))

(assert (=> b!2356759 (= res!1000501 (= (h!33247 (t!207803 (usedCharacters!444 (regOne!14298 r!26197)))) c!13498))))

(declare-fun b!2356760 () Bool)

(assert (=> b!2356760 (= e!1505089 (contains!4825 (t!207803 (t!207803 (usedCharacters!444 (regOne!14298 r!26197)))) c!13498))))

(assert (= (and d!693112 res!1000500) b!2356759))

(assert (= (and b!2356759 (not res!1000501)) b!2356760))

(assert (=> d!693112 m!2770111))

(declare-fun m!2770161 () Bool)

(assert (=> d!693112 m!2770161))

(declare-fun m!2770163 () Bool)

(assert (=> b!2356760 m!2770163))

(assert (=> b!2356567 d!693112))

(declare-fun b!2356761 () Bool)

(declare-fun e!1505094 () Bool)

(declare-fun call!143461 () Bool)

(assert (=> b!2356761 (= e!1505094 call!143461)))

(declare-fun b!2356762 () Bool)

(declare-fun res!1000506 () Bool)

(declare-fun e!1505096 () Bool)

(assert (=> b!2356762 (=> res!1000506 e!1505096)))

(assert (=> b!2356762 (= res!1000506 (not ((_ is Concat!11515) (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197))))))))

(declare-fun e!1505093 () Bool)

(assert (=> b!2356762 (= e!1505093 e!1505096)))

(declare-fun bm!143455 () Bool)

(declare-fun call!143460 () Bool)

(assert (=> bm!143455 (= call!143461 call!143460)))

(declare-fun b!2356763 () Bool)

(declare-fun e!1505091 () Bool)

(assert (=> b!2356763 (= e!1505091 e!1505093)))

(declare-fun c!374681 () Bool)

(assert (=> b!2356763 (= c!374681 ((_ is Union!6893) (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))

(declare-fun b!2356764 () Bool)

(assert (=> b!2356764 (= e!1505096 e!1505094)))

(declare-fun res!1000504 () Bool)

(assert (=> b!2356764 (=> (not res!1000504) (not e!1505094))))

(declare-fun call!143462 () Bool)

(assert (=> b!2356764 (= res!1000504 call!143462)))

(declare-fun b!2356765 () Bool)

(declare-fun e!1505090 () Bool)

(assert (=> b!2356765 (= e!1505090 call!143460)))

(declare-fun b!2356766 () Bool)

(declare-fun res!1000503 () Bool)

(declare-fun e!1505092 () Bool)

(assert (=> b!2356766 (=> (not res!1000503) (not e!1505092))))

(assert (=> b!2356766 (= res!1000503 call!143462)))

(assert (=> b!2356766 (= e!1505093 e!1505092)))

(declare-fun bm!143456 () Bool)

(declare-fun c!374680 () Bool)

(assert (=> bm!143456 (= call!143460 (validRegex!2638 (ite c!374680 (reg!7222 (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))) (ite c!374681 (regTwo!14299 (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))) (regTwo!14298 (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197))))))))))

(declare-fun d!693114 () Bool)

(declare-fun res!1000505 () Bool)

(declare-fun e!1505095 () Bool)

(assert (=> d!693114 (=> res!1000505 e!1505095)))

(assert (=> d!693114 (= res!1000505 ((_ is ElementMatch!6893) (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))

(assert (=> d!693114 (= (validRegex!2638 (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))) e!1505095)))

(declare-fun bm!143457 () Bool)

(assert (=> bm!143457 (= call!143462 (validRegex!2638 (ite c!374681 (regOne!14299 (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))) (regOne!14298 (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))))

(declare-fun b!2356767 () Bool)

(assert (=> b!2356767 (= e!1505095 e!1505091)))

(assert (=> b!2356767 (= c!374680 ((_ is Star!6893) (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))

(declare-fun b!2356768 () Bool)

(assert (=> b!2356768 (= e!1505092 call!143461)))

(declare-fun b!2356769 () Bool)

(assert (=> b!2356769 (= e!1505091 e!1505090)))

(declare-fun res!1000502 () Bool)

(assert (=> b!2356769 (= res!1000502 (not (nullable!1972 (reg!7222 (ite c!374572 (reg!7222 r!26197) (ite c!374573 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))))

(assert (=> b!2356769 (=> (not res!1000502) (not e!1505090))))

(assert (= (and d!693114 (not res!1000505)) b!2356767))

(assert (= (and b!2356767 c!374680) b!2356769))

(assert (= (and b!2356767 (not c!374680)) b!2356763))

(assert (= (and b!2356769 res!1000502) b!2356765))

(assert (= (and b!2356763 c!374681) b!2356766))

(assert (= (and b!2356763 (not c!374681)) b!2356762))

(assert (= (and b!2356766 res!1000503) b!2356768))

(assert (= (and b!2356762 (not res!1000506)) b!2356764))

(assert (= (and b!2356764 res!1000504) b!2356761))

(assert (= (or b!2356768 b!2356761) bm!143455))

(assert (= (or b!2356766 b!2356764) bm!143457))

(assert (= (or b!2356765 bm!143455) bm!143456))

(declare-fun m!2770165 () Bool)

(assert (=> bm!143456 m!2770165))

(declare-fun m!2770167 () Bool)

(assert (=> bm!143457 m!2770167))

(declare-fun m!2770169 () Bool)

(assert (=> b!2356769 m!2770169))

(assert (=> bm!143358 d!693114))

(declare-fun bm!143458 () Bool)

(declare-fun call!143463 () Regex!6893)

(declare-fun call!143466 () Regex!6893)

(assert (=> bm!143458 (= call!143463 call!143466)))

(declare-fun b!2356770 () Bool)

(declare-fun e!1505097 () Regex!6893)

(declare-fun e!1505098 () Regex!6893)

(assert (=> b!2356770 (= e!1505097 e!1505098)))

(declare-fun c!374684 () Bool)

(assert (=> b!2356770 (= c!374684 ((_ is Star!6893) (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))))))

(declare-fun e!1505101 () Regex!6893)

(declare-fun b!2356771 () Bool)

(assert (=> b!2356771 (= e!1505101 (ite (= c!13498 (c!374561 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))) EmptyExpr!6893 EmptyLang!6893))))

(declare-fun b!2356772 () Bool)

(declare-fun c!374682 () Bool)

(assert (=> b!2356772 (= c!374682 (nullable!1972 (regOne!14298 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))))

(declare-fun e!1505099 () Regex!6893)

(assert (=> b!2356772 (= e!1505098 e!1505099)))

(declare-fun call!143464 () Regex!6893)

(declare-fun b!2356773 () Bool)

(assert (=> b!2356773 (= e!1505099 (Union!6893 (Concat!11515 call!143463 (regTwo!14298 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))) call!143464))))

(declare-fun b!2356774 () Bool)

(assert (=> b!2356774 (= e!1505099 (Union!6893 (Concat!11515 call!143463 (regTwo!14298 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))) EmptyLang!6893))))

(declare-fun bm!143459 () Bool)

(declare-fun call!143465 () Regex!6893)

(assert (=> bm!143459 (= call!143466 call!143465)))

(declare-fun b!2356775 () Bool)

(declare-fun e!1505100 () Regex!6893)

(assert (=> b!2356775 (= e!1505100 e!1505101)))

(declare-fun c!374685 () Bool)

(assert (=> b!2356775 (= c!374685 ((_ is ElementMatch!6893) (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))))))

(declare-fun b!2356776 () Bool)

(assert (=> b!2356776 (= e!1505097 (Union!6893 call!143464 call!143465))))

(declare-fun c!374686 () Bool)

(declare-fun bm!143461 () Bool)

(assert (=> bm!143461 (= call!143465 (derivativeStep!1632 (ite c!374686 (regTwo!14299 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))) (ite c!374684 (reg!7222 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))) (regOne!14298 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))))) c!13498))))

(declare-fun b!2356777 () Bool)

(assert (=> b!2356777 (= e!1505100 EmptyLang!6893)))

(declare-fun b!2356778 () Bool)

(assert (=> b!2356778 (= e!1505098 (Concat!11515 call!143466 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))))))

(declare-fun b!2356779 () Bool)

(assert (=> b!2356779 (= c!374686 ((_ is Union!6893) (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))))))

(assert (=> b!2356779 (= e!1505101 e!1505097)))

(declare-fun d!693116 () Bool)

(declare-fun lt!863073 () Regex!6893)

(assert (=> d!693116 (validRegex!2638 lt!863073)))

(assert (=> d!693116 (= lt!863073 e!1505100)))

(declare-fun c!374683 () Bool)

(assert (=> d!693116 (= c!374683 (or ((_ is EmptyExpr!6893) (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))) ((_ is EmptyLang!6893) (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))))

(assert (=> d!693116 (validRegex!2638 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))

(assert (=> d!693116 (= (derivativeStep!1632 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) c!13498) lt!863073)))

(declare-fun bm!143460 () Bool)

(assert (=> bm!143460 (= call!143464 (derivativeStep!1632 (ite c!374686 (regOne!14299 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))) (regTwo!14298 (ite c!374607 (regTwo!14299 (regOne!14298 r!26197)) (ite c!374605 (reg!7222 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))) c!13498))))

(assert (= (and d!693116 c!374683) b!2356777))

(assert (= (and d!693116 (not c!374683)) b!2356775))

(assert (= (and b!2356775 c!374685) b!2356771))

(assert (= (and b!2356775 (not c!374685)) b!2356779))

(assert (= (and b!2356779 c!374686) b!2356776))

(assert (= (and b!2356779 (not c!374686)) b!2356770))

(assert (= (and b!2356770 c!374684) b!2356778))

(assert (= (and b!2356770 (not c!374684)) b!2356772))

(assert (= (and b!2356772 c!374682) b!2356773))

(assert (= (and b!2356772 (not c!374682)) b!2356774))

(assert (= (or b!2356773 b!2356774) bm!143458))

(assert (= (or b!2356778 bm!143458) bm!143459))

(assert (= (or b!2356776 bm!143459) bm!143461))

(assert (= (or b!2356776 b!2356773) bm!143460))

(declare-fun m!2770171 () Bool)

(assert (=> b!2356772 m!2770171))

(declare-fun m!2770173 () Bool)

(assert (=> bm!143461 m!2770173))

(declare-fun m!2770175 () Bool)

(assert (=> d!693116 m!2770175))

(declare-fun m!2770177 () Bool)

(assert (=> d!693116 m!2770177))

(declare-fun m!2770179 () Bool)

(assert (=> bm!143460 m!2770179))

(assert (=> bm!143390 d!693116))

(declare-fun bm!143462 () Bool)

(declare-fun call!143470 () List!27944)

(declare-fun call!143469 () List!27944)

(assert (=> bm!143462 (= call!143470 call!143469)))

(declare-fun call!143468 () List!27944)

(declare-fun c!374690 () Bool)

(declare-fun bm!143463 () Bool)

(assert (=> bm!143463 (= call!143468 (usedCharacters!444 (ite c!374690 (regOne!14299 (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) (regOne!14298 (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))))

(declare-fun b!2356780 () Bool)

(declare-fun e!1505104 () List!27944)

(assert (=> b!2356780 (= e!1505104 (Cons!27846 (c!374561 (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) Nil!27846))))

(declare-fun bm!143464 () Bool)

(declare-fun call!143467 () List!27944)

(assert (=> bm!143464 (= call!143467 (++!6870 call!143468 call!143470))))

(declare-fun b!2356781 () Bool)

(declare-fun e!1505103 () List!27944)

(assert (=> b!2356781 (= e!1505103 Nil!27846)))

(declare-fun d!693118 () Bool)

(declare-fun c!374687 () Bool)

(assert (=> d!693118 (= c!374687 (or ((_ is EmptyExpr!6893) (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) ((_ is EmptyLang!6893) (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))))))))

(assert (=> d!693118 (= (usedCharacters!444 (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) e!1505103)))

(declare-fun b!2356782 () Bool)

(declare-fun c!374688 () Bool)

(assert (=> b!2356782 (= c!374688 ((_ is Star!6893) (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))

(declare-fun e!1505105 () List!27944)

(assert (=> b!2356782 (= e!1505104 e!1505105)))

(declare-fun bm!143465 () Bool)

(assert (=> bm!143465 (= call!143469 (usedCharacters!444 (ite c!374688 (reg!7222 (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) (ite c!374690 (regTwo!14299 (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) (regTwo!14298 (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))))))))))

(declare-fun b!2356783 () Bool)

(declare-fun e!1505102 () List!27944)

(assert (=> b!2356783 (= e!1505102 call!143467)))

(declare-fun b!2356784 () Bool)

(assert (=> b!2356784 (= e!1505105 e!1505102)))

(assert (=> b!2356784 (= c!374690 ((_ is Union!6893) (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))

(declare-fun b!2356785 () Bool)

(assert (=> b!2356785 (= e!1505102 call!143467)))

(declare-fun b!2356786 () Bool)

(assert (=> b!2356786 (= e!1505105 call!143469)))

(declare-fun b!2356787 () Bool)

(assert (=> b!2356787 (= e!1505103 e!1505104)))

(declare-fun c!374689 () Bool)

(assert (=> b!2356787 (= c!374689 ((_ is ElementMatch!6893) (ite c!374622 (reg!7222 (regOne!14298 r!26197)) (ite c!374624 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))

(assert (= (and d!693118 c!374687) b!2356781))

(assert (= (and d!693118 (not c!374687)) b!2356787))

(assert (= (and b!2356787 c!374689) b!2356780))

(assert (= (and b!2356787 (not c!374689)) b!2356782))

(assert (= (and b!2356782 c!374688) b!2356786))

(assert (= (and b!2356782 (not c!374688)) b!2356784))

(assert (= (and b!2356784 c!374690) b!2356785))

(assert (= (and b!2356784 (not c!374690)) b!2356783))

(assert (= (or b!2356785 b!2356783) bm!143462))

(assert (= (or b!2356785 b!2356783) bm!143463))

(assert (= (or b!2356785 b!2356783) bm!143464))

(assert (= (or b!2356786 bm!143462) bm!143465))

(declare-fun m!2770181 () Bool)

(assert (=> bm!143463 m!2770181))

(declare-fun m!2770183 () Bool)

(assert (=> bm!143464 m!2770183))

(declare-fun m!2770185 () Bool)

(assert (=> bm!143465 m!2770185))

(assert (=> bm!143406 d!693118))

(declare-fun bm!143466 () Bool)

(declare-fun call!143474 () List!27944)

(declare-fun call!143473 () List!27944)

(assert (=> bm!143466 (= call!143474 call!143473)))

(declare-fun c!374694 () Bool)

(declare-fun bm!143467 () Bool)

(declare-fun call!143472 () List!27944)

(assert (=> bm!143467 (= call!143472 (usedCharacters!444 (ite c!374694 (regOne!14299 (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))) (regOne!14298 (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))))))))

(declare-fun b!2356788 () Bool)

(declare-fun e!1505108 () List!27944)

(assert (=> b!2356788 (= e!1505108 (Cons!27846 (c!374561 (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))) Nil!27846))))

(declare-fun bm!143468 () Bool)

(declare-fun call!143471 () List!27944)

(assert (=> bm!143468 (= call!143471 (++!6870 call!143472 call!143474))))

(declare-fun b!2356789 () Bool)

(declare-fun e!1505107 () List!27944)

(assert (=> b!2356789 (= e!1505107 Nil!27846)))

(declare-fun d!693120 () Bool)

(declare-fun c!374691 () Bool)

(assert (=> d!693120 (= c!374691 (or ((_ is EmptyExpr!6893) (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))) ((_ is EmptyLang!6893) (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197)))))))

(assert (=> d!693120 (= (usedCharacters!444 (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))) e!1505107)))

(declare-fun b!2356790 () Bool)

(declare-fun c!374692 () Bool)

(assert (=> b!2356790 (= c!374692 ((_ is Star!6893) (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))))))

(declare-fun e!1505109 () List!27944)

(assert (=> b!2356790 (= e!1505108 e!1505109)))

(declare-fun bm!143469 () Bool)

(assert (=> bm!143469 (= call!143473 (usedCharacters!444 (ite c!374692 (reg!7222 (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))) (ite c!374694 (regTwo!14299 (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))) (regTwo!14298 (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197)))))))))

(declare-fun b!2356791 () Bool)

(declare-fun e!1505106 () List!27944)

(assert (=> b!2356791 (= e!1505106 call!143471)))

(declare-fun b!2356792 () Bool)

(assert (=> b!2356792 (= e!1505109 e!1505106)))

(assert (=> b!2356792 (= c!374694 ((_ is Union!6893) (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))))))

(declare-fun b!2356793 () Bool)

(assert (=> b!2356793 (= e!1505106 call!143471)))

(declare-fun b!2356794 () Bool)

(assert (=> b!2356794 (= e!1505109 call!143473)))

(declare-fun b!2356795 () Bool)

(assert (=> b!2356795 (= e!1505107 e!1505108)))

(declare-fun c!374693 () Bool)

(assert (=> b!2356795 (= c!374693 ((_ is ElementMatch!6893) (ite c!374639 (regOne!14299 r!26197) (regOne!14298 r!26197))))))

(assert (= (and d!693120 c!374691) b!2356789))

(assert (= (and d!693120 (not c!374691)) b!2356795))

(assert (= (and b!2356795 c!374693) b!2356788))

(assert (= (and b!2356795 (not c!374693)) b!2356790))

(assert (= (and b!2356790 c!374692) b!2356794))

(assert (= (and b!2356790 (not c!374692)) b!2356792))

(assert (= (and b!2356792 c!374694) b!2356793))

(assert (= (and b!2356792 (not c!374694)) b!2356791))

(assert (= (or b!2356793 b!2356791) bm!143466))

(assert (= (or b!2356793 b!2356791) bm!143467))

(assert (= (or b!2356793 b!2356791) bm!143468))

(assert (= (or b!2356794 bm!143466) bm!143469))

(declare-fun m!2770187 () Bool)

(assert (=> bm!143467 m!2770187))

(declare-fun m!2770189 () Bool)

(assert (=> bm!143468 m!2770189))

(declare-fun m!2770191 () Bool)

(assert (=> bm!143469 m!2770191))

(assert (=> bm!143416 d!693120))

(declare-fun b!2356796 () Bool)

(declare-fun e!1505114 () Bool)

(declare-fun call!143476 () Bool)

(assert (=> b!2356796 (= e!1505114 call!143476)))

(declare-fun b!2356797 () Bool)

(declare-fun res!1000511 () Bool)

(declare-fun e!1505116 () Bool)

(assert (=> b!2356797 (=> res!1000511 e!1505116)))

(assert (=> b!2356797 (= res!1000511 (not ((_ is Concat!11515) (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197)))))))

(declare-fun e!1505113 () Bool)

(assert (=> b!2356797 (= e!1505113 e!1505116)))

(declare-fun bm!143470 () Bool)

(declare-fun call!143475 () Bool)

(assert (=> bm!143470 (= call!143476 call!143475)))

(declare-fun b!2356798 () Bool)

(declare-fun e!1505111 () Bool)

(assert (=> b!2356798 (= e!1505111 e!1505113)))

(declare-fun c!374696 () Bool)

(assert (=> b!2356798 (= c!374696 ((_ is Union!6893) (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197))))))

(declare-fun b!2356799 () Bool)

(assert (=> b!2356799 (= e!1505116 e!1505114)))

(declare-fun res!1000509 () Bool)

(assert (=> b!2356799 (=> (not res!1000509) (not e!1505114))))

(declare-fun call!143477 () Bool)

(assert (=> b!2356799 (= res!1000509 call!143477)))

(declare-fun b!2356800 () Bool)

(declare-fun e!1505110 () Bool)

(assert (=> b!2356800 (= e!1505110 call!143475)))

(declare-fun b!2356801 () Bool)

(declare-fun res!1000508 () Bool)

(declare-fun e!1505112 () Bool)

(assert (=> b!2356801 (=> (not res!1000508) (not e!1505112))))

(assert (=> b!2356801 (= res!1000508 call!143477)))

(assert (=> b!2356801 (= e!1505113 e!1505112)))

(declare-fun bm!143471 () Bool)

(declare-fun c!374695 () Bool)

(assert (=> bm!143471 (= call!143475 (validRegex!2638 (ite c!374695 (reg!7222 (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197))) (ite c!374696 (regTwo!14299 (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197))) (regTwo!14298 (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197)))))))))

(declare-fun d!693122 () Bool)

(declare-fun res!1000510 () Bool)

(declare-fun e!1505115 () Bool)

(assert (=> d!693122 (=> res!1000510 e!1505115)))

(assert (=> d!693122 (= res!1000510 ((_ is ElementMatch!6893) (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197))))))

(assert (=> d!693122 (= (validRegex!2638 (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197))) e!1505115)))

(declare-fun bm!143472 () Bool)

(assert (=> bm!143472 (= call!143477 (validRegex!2638 (ite c!374696 (regOne!14299 (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197))) (regOne!14298 (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197))))))))

(declare-fun b!2356802 () Bool)

(assert (=> b!2356802 (= e!1505115 e!1505111)))

(assert (=> b!2356802 (= c!374695 ((_ is Star!6893) (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197))))))

(declare-fun b!2356803 () Bool)

(assert (=> b!2356803 (= e!1505112 call!143476)))

(declare-fun b!2356804 () Bool)

(assert (=> b!2356804 (= e!1505111 e!1505110)))

(declare-fun res!1000507 () Bool)

(assert (=> b!2356804 (= res!1000507 (not (nullable!1972 (reg!7222 (ite c!374573 (regOne!14299 r!26197) (regOne!14298 r!26197))))))))

(assert (=> b!2356804 (=> (not res!1000507) (not e!1505110))))

(assert (= (and d!693122 (not res!1000510)) b!2356802))

(assert (= (and b!2356802 c!374695) b!2356804))

(assert (= (and b!2356802 (not c!374695)) b!2356798))

(assert (= (and b!2356804 res!1000507) b!2356800))

(assert (= (and b!2356798 c!374696) b!2356801))

(assert (= (and b!2356798 (not c!374696)) b!2356797))

(assert (= (and b!2356801 res!1000508) b!2356803))

(assert (= (and b!2356797 (not res!1000511)) b!2356799))

(assert (= (and b!2356799 res!1000509) b!2356796))

(assert (= (or b!2356803 b!2356796) bm!143470))

(assert (= (or b!2356801 b!2356799) bm!143472))

(assert (= (or b!2356800 bm!143470) bm!143471))

(declare-fun m!2770193 () Bool)

(assert (=> bm!143471 m!2770193))

(declare-fun m!2770195 () Bool)

(assert (=> bm!143472 m!2770195))

(declare-fun m!2770197 () Bool)

(assert (=> b!2356804 m!2770197))

(assert (=> bm!143359 d!693122))

(declare-fun d!693124 () Bool)

(declare-fun e!1505118 () Bool)

(assert (=> d!693124 e!1505118))

(declare-fun res!1000513 () Bool)

(assert (=> d!693124 (=> (not res!1000513) (not e!1505118))))

(declare-fun lt!863074 () List!27944)

(assert (=> d!693124 (= res!1000513 (= (content!3779 lt!863074) ((_ map or) (content!3779 call!143421) (content!3779 call!143423))))))

(declare-fun e!1505117 () List!27944)

(assert (=> d!693124 (= lt!863074 e!1505117)))

(declare-fun c!374697 () Bool)

(assert (=> d!693124 (= c!374697 ((_ is Nil!27846) call!143421))))

(assert (=> d!693124 (= (++!6870 call!143421 call!143423) lt!863074)))

(declare-fun b!2356808 () Bool)

(assert (=> b!2356808 (= e!1505118 (or (not (= call!143423 Nil!27846)) (= lt!863074 call!143421)))))

(declare-fun b!2356805 () Bool)

(assert (=> b!2356805 (= e!1505117 call!143423)))

(declare-fun b!2356807 () Bool)

(declare-fun res!1000512 () Bool)

(assert (=> b!2356807 (=> (not res!1000512) (not e!1505118))))

(assert (=> b!2356807 (= res!1000512 (= (size!22030 lt!863074) (+ (size!22030 call!143421) (size!22030 call!143423))))))

(declare-fun b!2356806 () Bool)

(assert (=> b!2356806 (= e!1505117 (Cons!27846 (h!33247 call!143421) (++!6870 (t!207803 call!143421) call!143423)))))

(assert (= (and d!693124 c!374697) b!2356805))

(assert (= (and d!693124 (not c!374697)) b!2356806))

(assert (= (and d!693124 res!1000513) b!2356807))

(assert (= (and b!2356807 res!1000512) b!2356808))

(declare-fun m!2770199 () Bool)

(assert (=> d!693124 m!2770199))

(declare-fun m!2770201 () Bool)

(assert (=> d!693124 m!2770201))

(declare-fun m!2770203 () Bool)

(assert (=> d!693124 m!2770203))

(declare-fun m!2770205 () Bool)

(assert (=> b!2356807 m!2770205))

(declare-fun m!2770207 () Bool)

(assert (=> b!2356807 m!2770207))

(declare-fun m!2770209 () Bool)

(assert (=> b!2356807 m!2770209))

(declare-fun m!2770211 () Bool)

(assert (=> b!2356806 m!2770211))

(assert (=> bm!143417 d!693124))

(assert (=> d!693072 d!693074))

(assert (=> d!693072 d!693060))

(declare-fun d!693126 () Bool)

(assert (=> d!693126 (contains!4825 (usedCharacters!444 (regOne!14298 r!26197)) c!13498)))

(assert (=> d!693126 true))

(declare-fun _$131!71 () Unit!40770)

(assert (=> d!693126 (= (choose!13642 (regOne!14298 r!26197) c!13498) _$131!71)))

(declare-fun bs!460329 () Bool)

(assert (= bs!460329 d!693126))

(assert (=> bs!460329 m!2769957))

(assert (=> bs!460329 m!2769957))

(assert (=> bs!460329 m!2769959))

(assert (=> d!693072 d!693126))

(assert (=> d!693072 d!693034))

(assert (=> b!2356486 d!693078))

(declare-fun b!2356809 () Bool)

(declare-fun e!1505123 () Bool)

(declare-fun call!143479 () Bool)

(assert (=> b!2356809 (= e!1505123 call!143479)))

(declare-fun b!2356810 () Bool)

(declare-fun res!1000518 () Bool)

(declare-fun e!1505125 () Bool)

(assert (=> b!2356810 (=> res!1000518 e!1505125)))

(assert (=> b!2356810 (= res!1000518 (not ((_ is Concat!11515) lt!863048)))))

(declare-fun e!1505122 () Bool)

(assert (=> b!2356810 (= e!1505122 e!1505125)))

(declare-fun bm!143473 () Bool)

(declare-fun call!143478 () Bool)

(assert (=> bm!143473 (= call!143479 call!143478)))

(declare-fun b!2356811 () Bool)

(declare-fun e!1505120 () Bool)

(assert (=> b!2356811 (= e!1505120 e!1505122)))

(declare-fun c!374700 () Bool)

(assert (=> b!2356811 (= c!374700 ((_ is Union!6893) lt!863048))))

(declare-fun b!2356812 () Bool)

(assert (=> b!2356812 (= e!1505125 e!1505123)))

(declare-fun res!1000516 () Bool)

(assert (=> b!2356812 (=> (not res!1000516) (not e!1505123))))

(declare-fun call!143480 () Bool)

(assert (=> b!2356812 (= res!1000516 call!143480)))

(declare-fun b!2356813 () Bool)

(declare-fun e!1505119 () Bool)

(assert (=> b!2356813 (= e!1505119 call!143478)))

(declare-fun b!2356814 () Bool)

(declare-fun res!1000515 () Bool)

(declare-fun e!1505121 () Bool)

(assert (=> b!2356814 (=> (not res!1000515) (not e!1505121))))

(assert (=> b!2356814 (= res!1000515 call!143480)))

(assert (=> b!2356814 (= e!1505122 e!1505121)))

(declare-fun bm!143474 () Bool)

(declare-fun c!374699 () Bool)

(assert (=> bm!143474 (= call!143478 (validRegex!2638 (ite c!374699 (reg!7222 lt!863048) (ite c!374700 (regTwo!14299 lt!863048) (regTwo!14298 lt!863048)))))))

(declare-fun d!693128 () Bool)

(declare-fun res!1000517 () Bool)

(declare-fun e!1505124 () Bool)

(assert (=> d!693128 (=> res!1000517 e!1505124)))

(assert (=> d!693128 (= res!1000517 ((_ is ElementMatch!6893) lt!863048))))

(assert (=> d!693128 (= (validRegex!2638 lt!863048) e!1505124)))

(declare-fun bm!143475 () Bool)

(assert (=> bm!143475 (= call!143480 (validRegex!2638 (ite c!374700 (regOne!14299 lt!863048) (regOne!14298 lt!863048))))))

(declare-fun b!2356815 () Bool)

(assert (=> b!2356815 (= e!1505124 e!1505120)))

(assert (=> b!2356815 (= c!374699 ((_ is Star!6893) lt!863048))))

(declare-fun b!2356816 () Bool)

(assert (=> b!2356816 (= e!1505121 call!143479)))

(declare-fun b!2356817 () Bool)

(assert (=> b!2356817 (= e!1505120 e!1505119)))

(declare-fun res!1000514 () Bool)

(assert (=> b!2356817 (= res!1000514 (not (nullable!1972 (reg!7222 lt!863048))))))

(assert (=> b!2356817 (=> (not res!1000514) (not e!1505119))))

(assert (= (and d!693128 (not res!1000517)) b!2356815))

(assert (= (and b!2356815 c!374699) b!2356817))

(assert (= (and b!2356815 (not c!374699)) b!2356811))

(assert (= (and b!2356817 res!1000514) b!2356813))

(assert (= (and b!2356811 c!374700) b!2356814))

(assert (= (and b!2356811 (not c!374700)) b!2356810))

(assert (= (and b!2356814 res!1000515) b!2356816))

(assert (= (and b!2356810 (not res!1000518)) b!2356812))

(assert (= (and b!2356812 res!1000516) b!2356809))

(assert (= (or b!2356816 b!2356809) bm!143473))

(assert (= (or b!2356814 b!2356812) bm!143475))

(assert (= (or b!2356813 bm!143473) bm!143474))

(declare-fun m!2770213 () Bool)

(assert (=> bm!143474 m!2770213))

(declare-fun m!2770215 () Bool)

(assert (=> bm!143475 m!2770215))

(declare-fun m!2770217 () Bool)

(assert (=> b!2356817 m!2770217))

(assert (=> d!693044 d!693128))

(assert (=> d!693044 d!693038))

(declare-fun bm!143476 () Bool)

(declare-fun call!143484 () List!27944)

(declare-fun call!143483 () List!27944)

(assert (=> bm!143476 (= call!143484 call!143483)))

(declare-fun bm!143477 () Bool)

(declare-fun c!374704 () Bool)

(declare-fun call!143482 () List!27944)

(assert (=> bm!143477 (= call!143482 (usedCharacters!444 (ite c!374704 (regOne!14299 (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))) (regOne!14298 (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))))

(declare-fun e!1505128 () List!27944)

(declare-fun b!2356818 () Bool)

(assert (=> b!2356818 (= e!1505128 (Cons!27846 (c!374561 (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))) Nil!27846))))

(declare-fun bm!143478 () Bool)

(declare-fun call!143481 () List!27944)

(assert (=> bm!143478 (= call!143481 (++!6870 call!143482 call!143484))))

(declare-fun b!2356819 () Bool)

(declare-fun e!1505127 () List!27944)

(assert (=> b!2356819 (= e!1505127 Nil!27846)))

(declare-fun c!374701 () Bool)

(declare-fun d!693130 () Bool)

(assert (=> d!693130 (= c!374701 (or ((_ is EmptyExpr!6893) (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))) ((_ is EmptyLang!6893) (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197))))))))

(assert (=> d!693130 (= (usedCharacters!444 (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))) e!1505127)))

(declare-fun b!2356820 () Bool)

(declare-fun c!374702 () Bool)

(assert (=> b!2356820 (= c!374702 ((_ is Star!6893) (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))

(declare-fun e!1505129 () List!27944)

(assert (=> b!2356820 (= e!1505128 e!1505129)))

(declare-fun bm!143479 () Bool)

(assert (=> bm!143479 (= call!143483 (usedCharacters!444 (ite c!374702 (reg!7222 (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))) (ite c!374704 (regTwo!14299 (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))) (regTwo!14298 (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197))))))))))

(declare-fun b!2356821 () Bool)

(declare-fun e!1505126 () List!27944)

(assert (=> b!2356821 (= e!1505126 call!143481)))

(declare-fun b!2356822 () Bool)

(assert (=> b!2356822 (= e!1505129 e!1505126)))

(assert (=> b!2356822 (= c!374704 ((_ is Union!6893) (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))

(declare-fun b!2356823 () Bool)

(assert (=> b!2356823 (= e!1505126 call!143481)))

(declare-fun b!2356824 () Bool)

(assert (=> b!2356824 (= e!1505129 call!143483)))

(declare-fun b!2356825 () Bool)

(assert (=> b!2356825 (= e!1505127 e!1505128)))

(declare-fun c!374703 () Bool)

(assert (=> b!2356825 (= c!374703 ((_ is ElementMatch!6893) (ite c!374637 (reg!7222 r!26197) (ite c!374639 (regTwo!14299 r!26197) (regTwo!14298 r!26197)))))))

(assert (= (and d!693130 c!374701) b!2356819))

(assert (= (and d!693130 (not c!374701)) b!2356825))

(assert (= (and b!2356825 c!374703) b!2356818))

(assert (= (and b!2356825 (not c!374703)) b!2356820))

(assert (= (and b!2356820 c!374702) b!2356824))

(assert (= (and b!2356820 (not c!374702)) b!2356822))

(assert (= (and b!2356822 c!374704) b!2356823))

(assert (= (and b!2356822 (not c!374704)) b!2356821))

(assert (= (or b!2356823 b!2356821) bm!143476))

(assert (= (or b!2356823 b!2356821) bm!143477))

(assert (= (or b!2356823 b!2356821) bm!143478))

(assert (= (or b!2356824 bm!143476) bm!143479))

(declare-fun m!2770219 () Bool)

(assert (=> bm!143477 m!2770219))

(declare-fun m!2770221 () Bool)

(assert (=> bm!143478 m!2770221))

(declare-fun m!2770223 () Bool)

(assert (=> bm!143479 m!2770223))

(assert (=> bm!143418 d!693130))

(declare-fun d!693132 () Bool)

(assert (=> d!693132 (= (nullable!1972 (reg!7222 r!26197)) (nullableFct!523 (reg!7222 r!26197)))))

(declare-fun bs!460330 () Bool)

(assert (= bs!460330 d!693132))

(declare-fun m!2770225 () Bool)

(assert (=> bs!460330 m!2770225))

(assert (=> b!2356426 d!693132))

(declare-fun b!2356826 () Bool)

(declare-fun e!1505131 () Bool)

(declare-fun e!1505132 () Bool)

(assert (=> b!2356826 (= e!1505131 e!1505132)))

(declare-fun res!1000523 () Bool)

(declare-fun call!143485 () Bool)

(assert (=> b!2356826 (= res!1000523 call!143485)))

(assert (=> b!2356826 (=> res!1000523 e!1505132)))

(declare-fun d!693134 () Bool)

(declare-fun res!1000522 () Bool)

(declare-fun e!1505135 () Bool)

(assert (=> d!693134 (=> res!1000522 e!1505135)))

(assert (=> d!693134 (= res!1000522 ((_ is EmptyExpr!6893) (derivativeStep!1632 (regOne!14298 r!26197) c!13498)))))

(assert (=> d!693134 (= (nullableFct!523 (derivativeStep!1632 (regOne!14298 r!26197) c!13498)) e!1505135)))

(declare-fun b!2356827 () Bool)

(declare-fun e!1505134 () Bool)

(declare-fun call!143486 () Bool)

(assert (=> b!2356827 (= e!1505134 call!143486)))

(declare-fun bm!143480 () Bool)

(declare-fun c!374705 () Bool)

(assert (=> bm!143480 (= call!143486 (nullable!1972 (ite c!374705 (regTwo!14299 (derivativeStep!1632 (regOne!14298 r!26197) c!13498)) (regTwo!14298 (derivativeStep!1632 (regOne!14298 r!26197) c!13498)))))))

(declare-fun b!2356828 () Bool)

(declare-fun e!1505130 () Bool)

(assert (=> b!2356828 (= e!1505130 e!1505131)))

(assert (=> b!2356828 (= c!374705 ((_ is Union!6893) (derivativeStep!1632 (regOne!14298 r!26197) c!13498)))))

(declare-fun b!2356829 () Bool)

(assert (=> b!2356829 (= e!1505131 e!1505134)))

(declare-fun res!1000519 () Bool)

(assert (=> b!2356829 (= res!1000519 call!143485)))

(assert (=> b!2356829 (=> (not res!1000519) (not e!1505134))))

(declare-fun b!2356830 () Bool)

(declare-fun e!1505133 () Bool)

(assert (=> b!2356830 (= e!1505133 e!1505130)))

(declare-fun res!1000521 () Bool)

(assert (=> b!2356830 (=> res!1000521 e!1505130)))

(assert (=> b!2356830 (= res!1000521 ((_ is Star!6893) (derivativeStep!1632 (regOne!14298 r!26197) c!13498)))))

(declare-fun b!2356831 () Bool)

(assert (=> b!2356831 (= e!1505132 call!143486)))

(declare-fun bm!143481 () Bool)

(assert (=> bm!143481 (= call!143485 (nullable!1972 (ite c!374705 (regOne!14299 (derivativeStep!1632 (regOne!14298 r!26197) c!13498)) (regOne!14298 (derivativeStep!1632 (regOne!14298 r!26197) c!13498)))))))

(declare-fun b!2356832 () Bool)

(assert (=> b!2356832 (= e!1505135 e!1505133)))

(declare-fun res!1000520 () Bool)

(assert (=> b!2356832 (=> (not res!1000520) (not e!1505133))))

(assert (=> b!2356832 (= res!1000520 (and (not ((_ is EmptyLang!6893) (derivativeStep!1632 (regOne!14298 r!26197) c!13498))) (not ((_ is ElementMatch!6893) (derivativeStep!1632 (regOne!14298 r!26197) c!13498)))))))

(assert (= (and d!693134 (not res!1000522)) b!2356832))

(assert (= (and b!2356832 res!1000520) b!2356830))

(assert (= (and b!2356830 (not res!1000521)) b!2356828))

(assert (= (and b!2356828 c!374705) b!2356826))

(assert (= (and b!2356828 (not c!374705)) b!2356829))

(assert (= (and b!2356826 (not res!1000523)) b!2356831))

(assert (= (and b!2356829 res!1000519) b!2356827))

(assert (= (or b!2356826 b!2356829) bm!143481))

(assert (= (or b!2356831 b!2356827) bm!143480))

(declare-fun m!2770227 () Bool)

(assert (=> bm!143480 m!2770227))

(declare-fun m!2770229 () Bool)

(assert (=> bm!143481 m!2770229))

(assert (=> d!693054 d!693134))

(declare-fun b!2356833 () Bool)

(declare-fun e!1505140 () Bool)

(declare-fun call!143488 () Bool)

(assert (=> b!2356833 (= e!1505140 call!143488)))

(declare-fun b!2356834 () Bool)

(declare-fun res!1000528 () Bool)

(declare-fun e!1505142 () Bool)

(assert (=> b!2356834 (=> res!1000528 e!1505142)))

(assert (=> b!2356834 (= res!1000528 (not ((_ is Concat!11515) (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))))))))

(declare-fun e!1505139 () Bool)

(assert (=> b!2356834 (= e!1505139 e!1505142)))

(declare-fun bm!143482 () Bool)

(declare-fun call!143487 () Bool)

(assert (=> bm!143482 (= call!143488 call!143487)))

(declare-fun b!2356835 () Bool)

(declare-fun e!1505137 () Bool)

(assert (=> b!2356835 (= e!1505137 e!1505139)))

(declare-fun c!374707 () Bool)

(assert (=> b!2356835 (= c!374707 ((_ is Union!6893) (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))

(declare-fun b!2356836 () Bool)

(assert (=> b!2356836 (= e!1505142 e!1505140)))

(declare-fun res!1000526 () Bool)

(assert (=> b!2356836 (=> (not res!1000526) (not e!1505140))))

(declare-fun call!143489 () Bool)

(assert (=> b!2356836 (= res!1000526 call!143489)))

(declare-fun b!2356837 () Bool)

(declare-fun e!1505136 () Bool)

(assert (=> b!2356837 (= e!1505136 call!143487)))

(declare-fun b!2356838 () Bool)

(declare-fun res!1000525 () Bool)

(declare-fun e!1505138 () Bool)

(assert (=> b!2356838 (=> (not res!1000525) (not e!1505138))))

(assert (=> b!2356838 (= res!1000525 call!143489)))

(assert (=> b!2356838 (= e!1505139 e!1505138)))

(declare-fun c!374706 () Bool)

(declare-fun bm!143483 () Bool)

(assert (=> bm!143483 (= call!143487 (validRegex!2638 (ite c!374706 (reg!7222 (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) (ite c!374707 (regTwo!14299 (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) (regTwo!14298 (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197)))))))))))

(declare-fun d!693136 () Bool)

(declare-fun res!1000527 () Bool)

(declare-fun e!1505141 () Bool)

(assert (=> d!693136 (=> res!1000527 e!1505141)))

(assert (=> d!693136 (= res!1000527 ((_ is ElementMatch!6893) (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))

(assert (=> d!693136 (= (validRegex!2638 (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) e!1505141)))

(declare-fun bm!143484 () Bool)

(assert (=> bm!143484 (= call!143489 (validRegex!2638 (ite c!374707 (regOne!14299 (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))) (regOne!14298 (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))))

(declare-fun b!2356839 () Bool)

(assert (=> b!2356839 (= e!1505141 e!1505137)))

(assert (=> b!2356839 (= c!374706 ((_ is Star!6893) (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))

(declare-fun b!2356840 () Bool)

(assert (=> b!2356840 (= e!1505138 call!143488)))

(declare-fun b!2356841 () Bool)

(assert (=> b!2356841 (= e!1505137 e!1505136)))

(declare-fun res!1000524 () Bool)

(assert (=> b!2356841 (= res!1000524 (not (nullable!1972 (reg!7222 (ite c!374570 (reg!7222 (regOne!14298 r!26197)) (ite c!374571 (regTwo!14299 (regOne!14298 r!26197)) (regTwo!14298 (regOne!14298 r!26197))))))))))

(assert (=> b!2356841 (=> (not res!1000524) (not e!1505136))))

(assert (= (and d!693136 (not res!1000527)) b!2356839))

(assert (= (and b!2356839 c!374706) b!2356841))

(assert (= (and b!2356839 (not c!374706)) b!2356835))

(assert (= (and b!2356841 res!1000524) b!2356837))

(assert (= (and b!2356835 c!374707) b!2356838))

(assert (= (and b!2356835 (not c!374707)) b!2356834))

(assert (= (and b!2356838 res!1000525) b!2356840))

(assert (= (and b!2356834 (not res!1000528)) b!2356836))

(assert (= (and b!2356836 res!1000526) b!2356833))

(assert (= (or b!2356840 b!2356833) bm!143482))

(assert (= (or b!2356838 b!2356836) bm!143484))

(assert (= (or b!2356837 bm!143482) bm!143483))

(declare-fun m!2770231 () Bool)

(assert (=> bm!143483 m!2770231))

(declare-fun m!2770233 () Bool)

(assert (=> bm!143484 m!2770233))

(declare-fun m!2770235 () Bool)

(assert (=> b!2356841 m!2770235))

(assert (=> bm!143355 d!693136))

(declare-fun b!2356842 () Bool)

(declare-fun e!1505147 () Bool)

(declare-fun call!143491 () Bool)

(assert (=> b!2356842 (= e!1505147 call!143491)))

(declare-fun b!2356843 () Bool)

(declare-fun res!1000533 () Bool)

(declare-fun e!1505149 () Bool)

(assert (=> b!2356843 (=> res!1000533 e!1505149)))

(assert (=> b!2356843 (= res!1000533 (not ((_ is Concat!11515) (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))))))

(declare-fun e!1505146 () Bool)

(assert (=> b!2356843 (= e!1505146 e!1505149)))

(declare-fun bm!143485 () Bool)

(declare-fun call!143490 () Bool)

(assert (=> bm!143485 (= call!143491 call!143490)))

(declare-fun b!2356844 () Bool)

(declare-fun e!1505144 () Bool)

(assert (=> b!2356844 (= e!1505144 e!1505146)))

(declare-fun c!374709 () Bool)

(assert (=> b!2356844 (= c!374709 ((_ is Union!6893) (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))

(declare-fun b!2356845 () Bool)

(assert (=> b!2356845 (= e!1505149 e!1505147)))

(declare-fun res!1000531 () Bool)

(assert (=> b!2356845 (=> (not res!1000531) (not e!1505147))))

(declare-fun call!143492 () Bool)

(assert (=> b!2356845 (= res!1000531 call!143492)))

(declare-fun b!2356846 () Bool)

(declare-fun e!1505143 () Bool)

(assert (=> b!2356846 (= e!1505143 call!143490)))

(declare-fun b!2356847 () Bool)

(declare-fun res!1000530 () Bool)

(declare-fun e!1505145 () Bool)

(assert (=> b!2356847 (=> (not res!1000530) (not e!1505145))))

(assert (=> b!2356847 (= res!1000530 call!143492)))

(assert (=> b!2356847 (= e!1505146 e!1505145)))

(declare-fun bm!143486 () Bool)

(declare-fun c!374708 () Bool)

(assert (=> bm!143486 (= call!143490 (validRegex!2638 (ite c!374708 (reg!7222 (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) (ite c!374709 (regTwo!14299 (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) (regTwo!14298 (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197))))))))))

(declare-fun d!693138 () Bool)

(declare-fun res!1000532 () Bool)

(declare-fun e!1505148 () Bool)

(assert (=> d!693138 (=> res!1000532 e!1505148)))

(assert (=> d!693138 (= res!1000532 ((_ is ElementMatch!6893) (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))

(assert (=> d!693138 (= (validRegex!2638 (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) e!1505148)))

(declare-fun bm!143487 () Bool)

(assert (=> bm!143487 (= call!143492 (validRegex!2638 (ite c!374709 (regOne!14299 (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))) (regOne!14298 (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))))

(declare-fun b!2356848 () Bool)

(assert (=> b!2356848 (= e!1505148 e!1505144)))

(assert (=> b!2356848 (= c!374708 ((_ is Star!6893) (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))

(declare-fun b!2356849 () Bool)

(assert (=> b!2356849 (= e!1505145 call!143491)))

(declare-fun b!2356850 () Bool)

(assert (=> b!2356850 (= e!1505144 e!1505143)))

(declare-fun res!1000529 () Bool)

(assert (=> b!2356850 (= res!1000529 (not (nullable!1972 (reg!7222 (ite c!374571 (regOne!14299 (regOne!14298 r!26197)) (regOne!14298 (regOne!14298 r!26197)))))))))

(assert (=> b!2356850 (=> (not res!1000529) (not e!1505143))))

(assert (= (and d!693138 (not res!1000532)) b!2356848))

(assert (= (and b!2356848 c!374708) b!2356850))

(assert (= (and b!2356848 (not c!374708)) b!2356844))

(assert (= (and b!2356850 res!1000529) b!2356846))

(assert (= (and b!2356844 c!374709) b!2356847))

(assert (= (and b!2356844 (not c!374709)) b!2356843))

(assert (= (and b!2356847 res!1000530) b!2356849))

(assert (= (and b!2356843 (not res!1000533)) b!2356845))

(assert (= (and b!2356845 res!1000531) b!2356842))

(assert (= (or b!2356849 b!2356842) bm!143485))

(assert (= (or b!2356847 b!2356845) bm!143487))

(assert (= (or b!2356846 bm!143485) bm!143486))

(declare-fun m!2770237 () Bool)

(assert (=> bm!143486 m!2770237))

(declare-fun m!2770239 () Bool)

(assert (=> bm!143487 m!2770239))

(declare-fun m!2770241 () Bool)

(assert (=> b!2356850 m!2770241))

(assert (=> bm!143356 d!693138))

(declare-fun bm!143488 () Bool)

(declare-fun call!143493 () Regex!6893)

(declare-fun call!143496 () Regex!6893)

(assert (=> bm!143488 (= call!143493 call!143496)))

(declare-fun b!2356851 () Bool)

(declare-fun e!1505150 () Regex!6893)

(declare-fun e!1505151 () Regex!6893)

(assert (=> b!2356851 (= e!1505150 e!1505151)))

(declare-fun c!374712 () Bool)

(assert (=> b!2356851 (= c!374712 ((_ is Star!6893) (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197))))))

(declare-fun e!1505154 () Regex!6893)

(declare-fun b!2356852 () Bool)

(assert (=> b!2356852 (= e!1505154 (ite (= c!13498 (c!374561 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197)))) EmptyExpr!6893 EmptyLang!6893))))

(declare-fun b!2356853 () Bool)

(declare-fun c!374710 () Bool)

(assert (=> b!2356853 (= c!374710 (nullable!1972 (regOne!14298 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197)))))))

(declare-fun e!1505152 () Regex!6893)

(assert (=> b!2356853 (= e!1505151 e!1505152)))

(declare-fun b!2356854 () Bool)

(declare-fun call!143494 () Regex!6893)

(assert (=> b!2356854 (= e!1505152 (Union!6893 (Concat!11515 call!143493 (regTwo!14298 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197)))) call!143494))))

(declare-fun b!2356855 () Bool)

(assert (=> b!2356855 (= e!1505152 (Union!6893 (Concat!11515 call!143493 (regTwo!14298 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197)))) EmptyLang!6893))))

(declare-fun bm!143489 () Bool)

(declare-fun call!143495 () Regex!6893)

(assert (=> bm!143489 (= call!143496 call!143495)))

(declare-fun b!2356856 () Bool)

(declare-fun e!1505153 () Regex!6893)

(assert (=> b!2356856 (= e!1505153 e!1505154)))

(declare-fun c!374713 () Bool)

(assert (=> b!2356856 (= c!374713 ((_ is ElementMatch!6893) (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197))))))

(declare-fun b!2356857 () Bool)

(assert (=> b!2356857 (= e!1505150 (Union!6893 call!143494 call!143495))))

(declare-fun c!374714 () Bool)

(declare-fun bm!143491 () Bool)

(assert (=> bm!143491 (= call!143495 (derivativeStep!1632 (ite c!374714 (regTwo!14299 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197))) (ite c!374712 (reg!7222 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197))) (regOne!14298 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197))))) c!13498))))

(declare-fun b!2356858 () Bool)

(assert (=> b!2356858 (= e!1505153 EmptyLang!6893)))

(declare-fun b!2356859 () Bool)

(assert (=> b!2356859 (= e!1505151 (Concat!11515 call!143496 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197))))))

(declare-fun b!2356860 () Bool)

(assert (=> b!2356860 (= c!374714 ((_ is Union!6893) (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197))))))

(assert (=> b!2356860 (= e!1505154 e!1505150)))

(declare-fun d!693140 () Bool)

(declare-fun lt!863075 () Regex!6893)

(assert (=> d!693140 (validRegex!2638 lt!863075)))

(assert (=> d!693140 (= lt!863075 e!1505153)))

(declare-fun c!374711 () Bool)

(assert (=> d!693140 (= c!374711 (or ((_ is EmptyExpr!6893) (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197))) ((_ is EmptyLang!6893) (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197)))))))

(assert (=> d!693140 (validRegex!2638 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197)))))

(assert (=> d!693140 (= (derivativeStep!1632 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197)) c!13498) lt!863075)))

(declare-fun bm!143490 () Bool)

(assert (=> bm!143490 (= call!143494 (derivativeStep!1632 (ite c!374714 (regOne!14299 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197))) (regTwo!14298 (ite c!374602 (regOne!14299 r!26197) (regTwo!14298 r!26197)))) c!13498))))

(assert (= (and d!693140 c!374711) b!2356858))

(assert (= (and d!693140 (not c!374711)) b!2356856))

(assert (= (and b!2356856 c!374713) b!2356852))

(assert (= (and b!2356856 (not c!374713)) b!2356860))

(assert (= (and b!2356860 c!374714) b!2356857))

(assert (= (and b!2356860 (not c!374714)) b!2356851))

(assert (= (and b!2356851 c!374712) b!2356859))

(assert (= (and b!2356851 (not c!374712)) b!2356853))

(assert (= (and b!2356853 c!374710) b!2356854))

(assert (= (and b!2356853 (not c!374710)) b!2356855))

(assert (= (or b!2356854 b!2356855) bm!143488))

(assert (= (or b!2356859 bm!143488) bm!143489))

(assert (= (or b!2356857 bm!143489) bm!143491))

(assert (= (or b!2356857 b!2356854) bm!143490))

(declare-fun m!2770243 () Bool)

(assert (=> b!2356853 m!2770243))

(declare-fun m!2770245 () Bool)

(assert (=> bm!143491 m!2770245))

(declare-fun m!2770247 () Bool)

(assert (=> d!693140 m!2770247))

(declare-fun m!2770249 () Bool)

(assert (=> d!693140 m!2770249))

(declare-fun m!2770251 () Bool)

(assert (=> bm!143490 m!2770251))

(assert (=> bm!143385 d!693140))

(declare-fun e!1505155 () Bool)

(assert (=> b!2356620 (= tp!753230 e!1505155)))

(declare-fun b!2356861 () Bool)

(assert (=> b!2356861 (= e!1505155 tp_is_empty!11097)))

(declare-fun b!2356864 () Bool)

(declare-fun tp!753275 () Bool)

(declare-fun tp!753274 () Bool)

(assert (=> b!2356864 (= e!1505155 (and tp!753275 tp!753274))))

(declare-fun b!2356863 () Bool)

(declare-fun tp!753273 () Bool)

(assert (=> b!2356863 (= e!1505155 tp!753273)))

(declare-fun b!2356862 () Bool)

(declare-fun tp!753276 () Bool)

(declare-fun tp!753272 () Bool)

(assert (=> b!2356862 (= e!1505155 (and tp!753276 tp!753272))))

(assert (= (and b!2356620 ((_ is ElementMatch!6893) (regOne!14299 (regTwo!14299 r!26197)))) b!2356861))

(assert (= (and b!2356620 ((_ is Concat!11515) (regOne!14299 (regTwo!14299 r!26197)))) b!2356862))

(assert (= (and b!2356620 ((_ is Star!6893) (regOne!14299 (regTwo!14299 r!26197)))) b!2356863))

(assert (= (and b!2356620 ((_ is Union!6893) (regOne!14299 (regTwo!14299 r!26197)))) b!2356864))

(declare-fun e!1505156 () Bool)

(assert (=> b!2356620 (= tp!753229 e!1505156)))

(declare-fun b!2356865 () Bool)

(assert (=> b!2356865 (= e!1505156 tp_is_empty!11097)))

(declare-fun b!2356868 () Bool)

(declare-fun tp!753280 () Bool)

(declare-fun tp!753279 () Bool)

(assert (=> b!2356868 (= e!1505156 (and tp!753280 tp!753279))))

(declare-fun b!2356867 () Bool)

(declare-fun tp!753278 () Bool)

(assert (=> b!2356867 (= e!1505156 tp!753278)))

(declare-fun b!2356866 () Bool)

(declare-fun tp!753281 () Bool)

(declare-fun tp!753277 () Bool)

(assert (=> b!2356866 (= e!1505156 (and tp!753281 tp!753277))))

(assert (= (and b!2356620 ((_ is ElementMatch!6893) (regTwo!14299 (regTwo!14299 r!26197)))) b!2356865))

(assert (= (and b!2356620 ((_ is Concat!11515) (regTwo!14299 (regTwo!14299 r!26197)))) b!2356866))

(assert (= (and b!2356620 ((_ is Star!6893) (regTwo!14299 (regTwo!14299 r!26197)))) b!2356867))

(assert (= (and b!2356620 ((_ is Union!6893) (regTwo!14299 (regTwo!14299 r!26197)))) b!2356868))

(declare-fun e!1505157 () Bool)

(assert (=> b!2356614 (= tp!753226 e!1505157)))

(declare-fun b!2356869 () Bool)

(assert (=> b!2356869 (= e!1505157 tp_is_empty!11097)))

(declare-fun b!2356872 () Bool)

(declare-fun tp!753285 () Bool)

(declare-fun tp!753284 () Bool)

(assert (=> b!2356872 (= e!1505157 (and tp!753285 tp!753284))))

(declare-fun b!2356871 () Bool)

(declare-fun tp!753283 () Bool)

(assert (=> b!2356871 (= e!1505157 tp!753283)))

(declare-fun b!2356870 () Bool)

(declare-fun tp!753286 () Bool)

(declare-fun tp!753282 () Bool)

(assert (=> b!2356870 (= e!1505157 (and tp!753286 tp!753282))))

(assert (= (and b!2356614 ((_ is ElementMatch!6893) (regOne!14298 (regOne!14299 r!26197)))) b!2356869))

(assert (= (and b!2356614 ((_ is Concat!11515) (regOne!14298 (regOne!14299 r!26197)))) b!2356870))

(assert (= (and b!2356614 ((_ is Star!6893) (regOne!14298 (regOne!14299 r!26197)))) b!2356871))

(assert (= (and b!2356614 ((_ is Union!6893) (regOne!14298 (regOne!14299 r!26197)))) b!2356872))

(declare-fun e!1505158 () Bool)

(assert (=> b!2356614 (= tp!753222 e!1505158)))

(declare-fun b!2356873 () Bool)

(assert (=> b!2356873 (= e!1505158 tp_is_empty!11097)))

(declare-fun b!2356876 () Bool)

(declare-fun tp!753290 () Bool)

(declare-fun tp!753289 () Bool)

(assert (=> b!2356876 (= e!1505158 (and tp!753290 tp!753289))))

(declare-fun b!2356875 () Bool)

(declare-fun tp!753288 () Bool)

(assert (=> b!2356875 (= e!1505158 tp!753288)))

(declare-fun b!2356874 () Bool)

(declare-fun tp!753291 () Bool)

(declare-fun tp!753287 () Bool)

(assert (=> b!2356874 (= e!1505158 (and tp!753291 tp!753287))))

(assert (= (and b!2356614 ((_ is ElementMatch!6893) (regTwo!14298 (regOne!14299 r!26197)))) b!2356873))

(assert (= (and b!2356614 ((_ is Concat!11515) (regTwo!14298 (regOne!14299 r!26197)))) b!2356874))

(assert (= (and b!2356614 ((_ is Star!6893) (regTwo!14298 (regOne!14299 r!26197)))) b!2356875))

(assert (= (and b!2356614 ((_ is Union!6893) (regTwo!14298 (regOne!14299 r!26197)))) b!2356876))

(declare-fun e!1505159 () Bool)

(assert (=> b!2356615 (= tp!753223 e!1505159)))

(declare-fun b!2356877 () Bool)

(assert (=> b!2356877 (= e!1505159 tp_is_empty!11097)))

(declare-fun b!2356880 () Bool)

(declare-fun tp!753295 () Bool)

(declare-fun tp!753294 () Bool)

(assert (=> b!2356880 (= e!1505159 (and tp!753295 tp!753294))))

(declare-fun b!2356879 () Bool)

(declare-fun tp!753293 () Bool)

(assert (=> b!2356879 (= e!1505159 tp!753293)))

(declare-fun b!2356878 () Bool)

(declare-fun tp!753296 () Bool)

(declare-fun tp!753292 () Bool)

(assert (=> b!2356878 (= e!1505159 (and tp!753296 tp!753292))))

(assert (= (and b!2356615 ((_ is ElementMatch!6893) (reg!7222 (regOne!14299 r!26197)))) b!2356877))

(assert (= (and b!2356615 ((_ is Concat!11515) (reg!7222 (regOne!14299 r!26197)))) b!2356878))

(assert (= (and b!2356615 ((_ is Star!6893) (reg!7222 (regOne!14299 r!26197)))) b!2356879))

(assert (= (and b!2356615 ((_ is Union!6893) (reg!7222 (regOne!14299 r!26197)))) b!2356880))

(declare-fun e!1505160 () Bool)

(assert (=> b!2356622 (= tp!753236 e!1505160)))

(declare-fun b!2356881 () Bool)

(assert (=> b!2356881 (= e!1505160 tp_is_empty!11097)))

(declare-fun b!2356884 () Bool)

(declare-fun tp!753300 () Bool)

(declare-fun tp!753299 () Bool)

(assert (=> b!2356884 (= e!1505160 (and tp!753300 tp!753299))))

(declare-fun b!2356883 () Bool)

(declare-fun tp!753298 () Bool)

(assert (=> b!2356883 (= e!1505160 tp!753298)))

(declare-fun b!2356882 () Bool)

(declare-fun tp!753301 () Bool)

(declare-fun tp!753297 () Bool)

(assert (=> b!2356882 (= e!1505160 (and tp!753301 tp!753297))))

(assert (= (and b!2356622 ((_ is ElementMatch!6893) (regOne!14298 (reg!7222 r!26197)))) b!2356881))

(assert (= (and b!2356622 ((_ is Concat!11515) (regOne!14298 (reg!7222 r!26197)))) b!2356882))

(assert (= (and b!2356622 ((_ is Star!6893) (regOne!14298 (reg!7222 r!26197)))) b!2356883))

(assert (= (and b!2356622 ((_ is Union!6893) (regOne!14298 (reg!7222 r!26197)))) b!2356884))

(declare-fun e!1505161 () Bool)

(assert (=> b!2356622 (= tp!753232 e!1505161)))

(declare-fun b!2356885 () Bool)

(assert (=> b!2356885 (= e!1505161 tp_is_empty!11097)))

(declare-fun b!2356888 () Bool)

(declare-fun tp!753305 () Bool)

(declare-fun tp!753304 () Bool)

(assert (=> b!2356888 (= e!1505161 (and tp!753305 tp!753304))))

(declare-fun b!2356887 () Bool)

(declare-fun tp!753303 () Bool)

(assert (=> b!2356887 (= e!1505161 tp!753303)))

(declare-fun b!2356886 () Bool)

(declare-fun tp!753306 () Bool)

(declare-fun tp!753302 () Bool)

(assert (=> b!2356886 (= e!1505161 (and tp!753306 tp!753302))))

(assert (= (and b!2356622 ((_ is ElementMatch!6893) (regTwo!14298 (reg!7222 r!26197)))) b!2356885))

(assert (= (and b!2356622 ((_ is Concat!11515) (regTwo!14298 (reg!7222 r!26197)))) b!2356886))

(assert (= (and b!2356622 ((_ is Star!6893) (regTwo!14298 (reg!7222 r!26197)))) b!2356887))

(assert (= (and b!2356622 ((_ is Union!6893) (regTwo!14298 (reg!7222 r!26197)))) b!2356888))

(declare-fun e!1505162 () Bool)

(assert (=> b!2356610 (= tp!753221 e!1505162)))

(declare-fun b!2356889 () Bool)

(assert (=> b!2356889 (= e!1505162 tp_is_empty!11097)))

(declare-fun b!2356892 () Bool)

(declare-fun tp!753310 () Bool)

(declare-fun tp!753309 () Bool)

(assert (=> b!2356892 (= e!1505162 (and tp!753310 tp!753309))))

(declare-fun b!2356891 () Bool)

(declare-fun tp!753308 () Bool)

(assert (=> b!2356891 (= e!1505162 tp!753308)))

(declare-fun b!2356890 () Bool)

(declare-fun tp!753311 () Bool)

(declare-fun tp!753307 () Bool)

(assert (=> b!2356890 (= e!1505162 (and tp!753311 tp!753307))))

(assert (= (and b!2356610 ((_ is ElementMatch!6893) (regOne!14298 (regTwo!14298 r!26197)))) b!2356889))

(assert (= (and b!2356610 ((_ is Concat!11515) (regOne!14298 (regTwo!14298 r!26197)))) b!2356890))

(assert (= (and b!2356610 ((_ is Star!6893) (regOne!14298 (regTwo!14298 r!26197)))) b!2356891))

(assert (= (and b!2356610 ((_ is Union!6893) (regOne!14298 (regTwo!14298 r!26197)))) b!2356892))

(declare-fun e!1505163 () Bool)

(assert (=> b!2356610 (= tp!753217 e!1505163)))

(declare-fun b!2356893 () Bool)

(assert (=> b!2356893 (= e!1505163 tp_is_empty!11097)))

(declare-fun b!2356896 () Bool)

(declare-fun tp!753315 () Bool)

(declare-fun tp!753314 () Bool)

(assert (=> b!2356896 (= e!1505163 (and tp!753315 tp!753314))))

(declare-fun b!2356895 () Bool)

(declare-fun tp!753313 () Bool)

(assert (=> b!2356895 (= e!1505163 tp!753313)))

(declare-fun b!2356894 () Bool)

(declare-fun tp!753316 () Bool)

(declare-fun tp!753312 () Bool)

(assert (=> b!2356894 (= e!1505163 (and tp!753316 tp!753312))))

(assert (= (and b!2356610 ((_ is ElementMatch!6893) (regTwo!14298 (regTwo!14298 r!26197)))) b!2356893))

(assert (= (and b!2356610 ((_ is Concat!11515) (regTwo!14298 (regTwo!14298 r!26197)))) b!2356894))

(assert (= (and b!2356610 ((_ is Star!6893) (regTwo!14298 (regTwo!14298 r!26197)))) b!2356895))

(assert (= (and b!2356610 ((_ is Union!6893) (regTwo!14298 (regTwo!14298 r!26197)))) b!2356896))

(declare-fun e!1505164 () Bool)

(assert (=> b!2356605 (= tp!753216 e!1505164)))

(declare-fun b!2356897 () Bool)

(assert (=> b!2356897 (= e!1505164 tp_is_empty!11097)))

(declare-fun b!2356900 () Bool)

(declare-fun tp!753320 () Bool)

(declare-fun tp!753319 () Bool)

(assert (=> b!2356900 (= e!1505164 (and tp!753320 tp!753319))))

(declare-fun b!2356899 () Bool)

(declare-fun tp!753318 () Bool)

(assert (=> b!2356899 (= e!1505164 tp!753318)))

(declare-fun b!2356898 () Bool)

(declare-fun tp!753321 () Bool)

(declare-fun tp!753317 () Bool)

(assert (=> b!2356898 (= e!1505164 (and tp!753321 tp!753317))))

(assert (= (and b!2356605 ((_ is ElementMatch!6893) (regOne!14298 (regOne!14298 r!26197)))) b!2356897))

(assert (= (and b!2356605 ((_ is Concat!11515) (regOne!14298 (regOne!14298 r!26197)))) b!2356898))

(assert (= (and b!2356605 ((_ is Star!6893) (regOne!14298 (regOne!14298 r!26197)))) b!2356899))

(assert (= (and b!2356605 ((_ is Union!6893) (regOne!14298 (regOne!14298 r!26197)))) b!2356900))

(declare-fun e!1505165 () Bool)

(assert (=> b!2356605 (= tp!753212 e!1505165)))

(declare-fun b!2356901 () Bool)

(assert (=> b!2356901 (= e!1505165 tp_is_empty!11097)))

(declare-fun b!2356904 () Bool)

(declare-fun tp!753325 () Bool)

(declare-fun tp!753324 () Bool)

(assert (=> b!2356904 (= e!1505165 (and tp!753325 tp!753324))))

(declare-fun b!2356903 () Bool)

(declare-fun tp!753323 () Bool)

(assert (=> b!2356903 (= e!1505165 tp!753323)))

(declare-fun b!2356902 () Bool)

(declare-fun tp!753326 () Bool)

(declare-fun tp!753322 () Bool)

(assert (=> b!2356902 (= e!1505165 (and tp!753326 tp!753322))))

(assert (= (and b!2356605 ((_ is ElementMatch!6893) (regTwo!14298 (regOne!14298 r!26197)))) b!2356901))

(assert (= (and b!2356605 ((_ is Concat!11515) (regTwo!14298 (regOne!14298 r!26197)))) b!2356902))

(assert (= (and b!2356605 ((_ is Star!6893) (regTwo!14298 (regOne!14298 r!26197)))) b!2356903))

(assert (= (and b!2356605 ((_ is Union!6893) (regTwo!14298 (regOne!14298 r!26197)))) b!2356904))

(declare-fun e!1505166 () Bool)

(assert (=> b!2356612 (= tp!753220 e!1505166)))

(declare-fun b!2356905 () Bool)

(assert (=> b!2356905 (= e!1505166 tp_is_empty!11097)))

(declare-fun b!2356908 () Bool)

(declare-fun tp!753330 () Bool)

(declare-fun tp!753329 () Bool)

(assert (=> b!2356908 (= e!1505166 (and tp!753330 tp!753329))))

(declare-fun b!2356907 () Bool)

(declare-fun tp!753328 () Bool)

(assert (=> b!2356907 (= e!1505166 tp!753328)))

(declare-fun b!2356906 () Bool)

(declare-fun tp!753331 () Bool)

(declare-fun tp!753327 () Bool)

(assert (=> b!2356906 (= e!1505166 (and tp!753331 tp!753327))))

(assert (= (and b!2356612 ((_ is ElementMatch!6893) (regOne!14299 (regTwo!14298 r!26197)))) b!2356905))

(assert (= (and b!2356612 ((_ is Concat!11515) (regOne!14299 (regTwo!14298 r!26197)))) b!2356906))

(assert (= (and b!2356612 ((_ is Star!6893) (regOne!14299 (regTwo!14298 r!26197)))) b!2356907))

(assert (= (and b!2356612 ((_ is Union!6893) (regOne!14299 (regTwo!14298 r!26197)))) b!2356908))

(declare-fun e!1505167 () Bool)

(assert (=> b!2356612 (= tp!753219 e!1505167)))

(declare-fun b!2356909 () Bool)

(assert (=> b!2356909 (= e!1505167 tp_is_empty!11097)))

(declare-fun b!2356912 () Bool)

(declare-fun tp!753335 () Bool)

(declare-fun tp!753334 () Bool)

(assert (=> b!2356912 (= e!1505167 (and tp!753335 tp!753334))))

(declare-fun b!2356911 () Bool)

(declare-fun tp!753333 () Bool)

(assert (=> b!2356911 (= e!1505167 tp!753333)))

(declare-fun b!2356910 () Bool)

(declare-fun tp!753336 () Bool)

(declare-fun tp!753332 () Bool)

(assert (=> b!2356910 (= e!1505167 (and tp!753336 tp!753332))))

(assert (= (and b!2356612 ((_ is ElementMatch!6893) (regTwo!14299 (regTwo!14298 r!26197)))) b!2356909))

(assert (= (and b!2356612 ((_ is Concat!11515) (regTwo!14299 (regTwo!14298 r!26197)))) b!2356910))

(assert (= (and b!2356612 ((_ is Star!6893) (regTwo!14299 (regTwo!14298 r!26197)))) b!2356911))

(assert (= (and b!2356612 ((_ is Union!6893) (regTwo!14299 (regTwo!14298 r!26197)))) b!2356912))

(declare-fun e!1505168 () Bool)

(assert (=> b!2356607 (= tp!753213 e!1505168)))

(declare-fun b!2356913 () Bool)

(assert (=> b!2356913 (= e!1505168 tp_is_empty!11097)))

(declare-fun b!2356916 () Bool)

(declare-fun tp!753340 () Bool)

(declare-fun tp!753339 () Bool)

(assert (=> b!2356916 (= e!1505168 (and tp!753340 tp!753339))))

(declare-fun b!2356915 () Bool)

(declare-fun tp!753338 () Bool)

(assert (=> b!2356915 (= e!1505168 tp!753338)))

(declare-fun b!2356914 () Bool)

(declare-fun tp!753341 () Bool)

(declare-fun tp!753337 () Bool)

(assert (=> b!2356914 (= e!1505168 (and tp!753341 tp!753337))))

(assert (= (and b!2356607 ((_ is ElementMatch!6893) (reg!7222 (regOne!14298 r!26197)))) b!2356913))

(assert (= (and b!2356607 ((_ is Concat!11515) (reg!7222 (regOne!14298 r!26197)))) b!2356914))

(assert (= (and b!2356607 ((_ is Star!6893) (reg!7222 (regOne!14298 r!26197)))) b!2356915))

(assert (= (and b!2356607 ((_ is Union!6893) (reg!7222 (regOne!14298 r!26197)))) b!2356916))

(declare-fun e!1505169 () Bool)

(assert (=> b!2356616 (= tp!753225 e!1505169)))

(declare-fun b!2356917 () Bool)

(assert (=> b!2356917 (= e!1505169 tp_is_empty!11097)))

(declare-fun b!2356920 () Bool)

(declare-fun tp!753345 () Bool)

(declare-fun tp!753344 () Bool)

(assert (=> b!2356920 (= e!1505169 (and tp!753345 tp!753344))))

(declare-fun b!2356919 () Bool)

(declare-fun tp!753343 () Bool)

(assert (=> b!2356919 (= e!1505169 tp!753343)))

(declare-fun b!2356918 () Bool)

(declare-fun tp!753346 () Bool)

(declare-fun tp!753342 () Bool)

(assert (=> b!2356918 (= e!1505169 (and tp!753346 tp!753342))))

(assert (= (and b!2356616 ((_ is ElementMatch!6893) (regOne!14299 (regOne!14299 r!26197)))) b!2356917))

(assert (= (and b!2356616 ((_ is Concat!11515) (regOne!14299 (regOne!14299 r!26197)))) b!2356918))

(assert (= (and b!2356616 ((_ is Star!6893) (regOne!14299 (regOne!14299 r!26197)))) b!2356919))

(assert (= (and b!2356616 ((_ is Union!6893) (regOne!14299 (regOne!14299 r!26197)))) b!2356920))

(declare-fun e!1505170 () Bool)

(assert (=> b!2356616 (= tp!753224 e!1505170)))

(declare-fun b!2356921 () Bool)

(assert (=> b!2356921 (= e!1505170 tp_is_empty!11097)))

(declare-fun b!2356924 () Bool)

(declare-fun tp!753350 () Bool)

(declare-fun tp!753349 () Bool)

(assert (=> b!2356924 (= e!1505170 (and tp!753350 tp!753349))))

(declare-fun b!2356923 () Bool)

(declare-fun tp!753348 () Bool)

(assert (=> b!2356923 (= e!1505170 tp!753348)))

(declare-fun b!2356922 () Bool)

(declare-fun tp!753351 () Bool)

(declare-fun tp!753347 () Bool)

(assert (=> b!2356922 (= e!1505170 (and tp!753351 tp!753347))))

(assert (= (and b!2356616 ((_ is ElementMatch!6893) (regTwo!14299 (regOne!14299 r!26197)))) b!2356921))

(assert (= (and b!2356616 ((_ is Concat!11515) (regTwo!14299 (regOne!14299 r!26197)))) b!2356922))

(assert (= (and b!2356616 ((_ is Star!6893) (regTwo!14299 (regOne!14299 r!26197)))) b!2356923))

(assert (= (and b!2356616 ((_ is Union!6893) (regTwo!14299 (regOne!14299 r!26197)))) b!2356924))

(declare-fun e!1505171 () Bool)

(assert (=> b!2356623 (= tp!753233 e!1505171)))

(declare-fun b!2356925 () Bool)

(assert (=> b!2356925 (= e!1505171 tp_is_empty!11097)))

(declare-fun b!2356928 () Bool)

(declare-fun tp!753355 () Bool)

(declare-fun tp!753354 () Bool)

(assert (=> b!2356928 (= e!1505171 (and tp!753355 tp!753354))))

(declare-fun b!2356927 () Bool)

(declare-fun tp!753353 () Bool)

(assert (=> b!2356927 (= e!1505171 tp!753353)))

(declare-fun b!2356926 () Bool)

(declare-fun tp!753356 () Bool)

(declare-fun tp!753352 () Bool)

(assert (=> b!2356926 (= e!1505171 (and tp!753356 tp!753352))))

(assert (= (and b!2356623 ((_ is ElementMatch!6893) (reg!7222 (reg!7222 r!26197)))) b!2356925))

(assert (= (and b!2356623 ((_ is Concat!11515) (reg!7222 (reg!7222 r!26197)))) b!2356926))

(assert (= (and b!2356623 ((_ is Star!6893) (reg!7222 (reg!7222 r!26197)))) b!2356927))

(assert (= (and b!2356623 ((_ is Union!6893) (reg!7222 (reg!7222 r!26197)))) b!2356928))

(declare-fun e!1505172 () Bool)

(assert (=> b!2356611 (= tp!753218 e!1505172)))

(declare-fun b!2356929 () Bool)

(assert (=> b!2356929 (= e!1505172 tp_is_empty!11097)))

(declare-fun b!2356932 () Bool)

(declare-fun tp!753360 () Bool)

(declare-fun tp!753359 () Bool)

(assert (=> b!2356932 (= e!1505172 (and tp!753360 tp!753359))))

(declare-fun b!2356931 () Bool)

(declare-fun tp!753358 () Bool)

(assert (=> b!2356931 (= e!1505172 tp!753358)))

(declare-fun b!2356930 () Bool)

(declare-fun tp!753361 () Bool)

(declare-fun tp!753357 () Bool)

(assert (=> b!2356930 (= e!1505172 (and tp!753361 tp!753357))))

(assert (= (and b!2356611 ((_ is ElementMatch!6893) (reg!7222 (regTwo!14298 r!26197)))) b!2356929))

(assert (= (and b!2356611 ((_ is Concat!11515) (reg!7222 (regTwo!14298 r!26197)))) b!2356930))

(assert (= (and b!2356611 ((_ is Star!6893) (reg!7222 (regTwo!14298 r!26197)))) b!2356931))

(assert (= (and b!2356611 ((_ is Union!6893) (reg!7222 (regTwo!14298 r!26197)))) b!2356932))

(declare-fun e!1505173 () Bool)

(assert (=> b!2356608 (= tp!753215 e!1505173)))

(declare-fun b!2356933 () Bool)

(assert (=> b!2356933 (= e!1505173 tp_is_empty!11097)))

(declare-fun b!2356936 () Bool)

(declare-fun tp!753365 () Bool)

(declare-fun tp!753364 () Bool)

(assert (=> b!2356936 (= e!1505173 (and tp!753365 tp!753364))))

(declare-fun b!2356935 () Bool)

(declare-fun tp!753363 () Bool)

(assert (=> b!2356935 (= e!1505173 tp!753363)))

(declare-fun b!2356934 () Bool)

(declare-fun tp!753366 () Bool)

(declare-fun tp!753362 () Bool)

(assert (=> b!2356934 (= e!1505173 (and tp!753366 tp!753362))))

(assert (= (and b!2356608 ((_ is ElementMatch!6893) (regOne!14299 (regOne!14298 r!26197)))) b!2356933))

(assert (= (and b!2356608 ((_ is Concat!11515) (regOne!14299 (regOne!14298 r!26197)))) b!2356934))

(assert (= (and b!2356608 ((_ is Star!6893) (regOne!14299 (regOne!14298 r!26197)))) b!2356935))

(assert (= (and b!2356608 ((_ is Union!6893) (regOne!14299 (regOne!14298 r!26197)))) b!2356936))

(declare-fun e!1505174 () Bool)

(assert (=> b!2356608 (= tp!753214 e!1505174)))

(declare-fun b!2356937 () Bool)

(assert (=> b!2356937 (= e!1505174 tp_is_empty!11097)))

(declare-fun b!2356940 () Bool)

(declare-fun tp!753370 () Bool)

(declare-fun tp!753369 () Bool)

(assert (=> b!2356940 (= e!1505174 (and tp!753370 tp!753369))))

(declare-fun b!2356939 () Bool)

(declare-fun tp!753368 () Bool)

(assert (=> b!2356939 (= e!1505174 tp!753368)))

(declare-fun b!2356938 () Bool)

(declare-fun tp!753371 () Bool)

(declare-fun tp!753367 () Bool)

(assert (=> b!2356938 (= e!1505174 (and tp!753371 tp!753367))))

(assert (= (and b!2356608 ((_ is ElementMatch!6893) (regTwo!14299 (regOne!14298 r!26197)))) b!2356937))

(assert (= (and b!2356608 ((_ is Concat!11515) (regTwo!14299 (regOne!14298 r!26197)))) b!2356938))

(assert (= (and b!2356608 ((_ is Star!6893) (regTwo!14299 (regOne!14298 r!26197)))) b!2356939))

(assert (= (and b!2356608 ((_ is Union!6893) (regTwo!14299 (regOne!14298 r!26197)))) b!2356940))

(declare-fun e!1505175 () Bool)

(assert (=> b!2356624 (= tp!753235 e!1505175)))

(declare-fun b!2356941 () Bool)

(assert (=> b!2356941 (= e!1505175 tp_is_empty!11097)))

(declare-fun b!2356944 () Bool)

(declare-fun tp!753375 () Bool)

(declare-fun tp!753374 () Bool)

(assert (=> b!2356944 (= e!1505175 (and tp!753375 tp!753374))))

(declare-fun b!2356943 () Bool)

(declare-fun tp!753373 () Bool)

(assert (=> b!2356943 (= e!1505175 tp!753373)))

(declare-fun b!2356942 () Bool)

(declare-fun tp!753376 () Bool)

(declare-fun tp!753372 () Bool)

(assert (=> b!2356942 (= e!1505175 (and tp!753376 tp!753372))))

(assert (= (and b!2356624 ((_ is ElementMatch!6893) (regOne!14299 (reg!7222 r!26197)))) b!2356941))

(assert (= (and b!2356624 ((_ is Concat!11515) (regOne!14299 (reg!7222 r!26197)))) b!2356942))

(assert (= (and b!2356624 ((_ is Star!6893) (regOne!14299 (reg!7222 r!26197)))) b!2356943))

(assert (= (and b!2356624 ((_ is Union!6893) (regOne!14299 (reg!7222 r!26197)))) b!2356944))

(declare-fun e!1505176 () Bool)

(assert (=> b!2356624 (= tp!753234 e!1505176)))

(declare-fun b!2356945 () Bool)

(assert (=> b!2356945 (= e!1505176 tp_is_empty!11097)))

(declare-fun b!2356948 () Bool)

(declare-fun tp!753380 () Bool)

(declare-fun tp!753379 () Bool)

(assert (=> b!2356948 (= e!1505176 (and tp!753380 tp!753379))))

(declare-fun b!2356947 () Bool)

(declare-fun tp!753378 () Bool)

(assert (=> b!2356947 (= e!1505176 tp!753378)))

(declare-fun b!2356946 () Bool)

(declare-fun tp!753381 () Bool)

(declare-fun tp!753377 () Bool)

(assert (=> b!2356946 (= e!1505176 (and tp!753381 tp!753377))))

(assert (= (and b!2356624 ((_ is ElementMatch!6893) (regTwo!14299 (reg!7222 r!26197)))) b!2356945))

(assert (= (and b!2356624 ((_ is Concat!11515) (regTwo!14299 (reg!7222 r!26197)))) b!2356946))

(assert (= (and b!2356624 ((_ is Star!6893) (regTwo!14299 (reg!7222 r!26197)))) b!2356947))

(assert (= (and b!2356624 ((_ is Union!6893) (regTwo!14299 (reg!7222 r!26197)))) b!2356948))

(declare-fun e!1505177 () Bool)

(assert (=> b!2356618 (= tp!753231 e!1505177)))

(declare-fun b!2356949 () Bool)

(assert (=> b!2356949 (= e!1505177 tp_is_empty!11097)))

(declare-fun b!2356952 () Bool)

(declare-fun tp!753385 () Bool)

(declare-fun tp!753384 () Bool)

(assert (=> b!2356952 (= e!1505177 (and tp!753385 tp!753384))))

(declare-fun b!2356951 () Bool)

(declare-fun tp!753383 () Bool)

(assert (=> b!2356951 (= e!1505177 tp!753383)))

(declare-fun b!2356950 () Bool)

(declare-fun tp!753386 () Bool)

(declare-fun tp!753382 () Bool)

(assert (=> b!2356950 (= e!1505177 (and tp!753386 tp!753382))))

(assert (= (and b!2356618 ((_ is ElementMatch!6893) (regOne!14298 (regTwo!14299 r!26197)))) b!2356949))

(assert (= (and b!2356618 ((_ is Concat!11515) (regOne!14298 (regTwo!14299 r!26197)))) b!2356950))

(assert (= (and b!2356618 ((_ is Star!6893) (regOne!14298 (regTwo!14299 r!26197)))) b!2356951))

(assert (= (and b!2356618 ((_ is Union!6893) (regOne!14298 (regTwo!14299 r!26197)))) b!2356952))

(declare-fun e!1505178 () Bool)

(assert (=> b!2356618 (= tp!753227 e!1505178)))

(declare-fun b!2356953 () Bool)

(assert (=> b!2356953 (= e!1505178 tp_is_empty!11097)))

(declare-fun b!2356956 () Bool)

(declare-fun tp!753390 () Bool)

(declare-fun tp!753389 () Bool)

(assert (=> b!2356956 (= e!1505178 (and tp!753390 tp!753389))))

(declare-fun b!2356955 () Bool)

(declare-fun tp!753388 () Bool)

(assert (=> b!2356955 (= e!1505178 tp!753388)))

(declare-fun b!2356954 () Bool)

(declare-fun tp!753391 () Bool)

(declare-fun tp!753387 () Bool)

(assert (=> b!2356954 (= e!1505178 (and tp!753391 tp!753387))))

(assert (= (and b!2356618 ((_ is ElementMatch!6893) (regTwo!14298 (regTwo!14299 r!26197)))) b!2356953))

(assert (= (and b!2356618 ((_ is Concat!11515) (regTwo!14298 (regTwo!14299 r!26197)))) b!2356954))

(assert (= (and b!2356618 ((_ is Star!6893) (regTwo!14298 (regTwo!14299 r!26197)))) b!2356955))

(assert (= (and b!2356618 ((_ is Union!6893) (regTwo!14298 (regTwo!14299 r!26197)))) b!2356956))

(declare-fun e!1505179 () Bool)

(assert (=> b!2356619 (= tp!753228 e!1505179)))

(declare-fun b!2356957 () Bool)

(assert (=> b!2356957 (= e!1505179 tp_is_empty!11097)))

(declare-fun b!2356960 () Bool)

(declare-fun tp!753395 () Bool)

(declare-fun tp!753394 () Bool)

(assert (=> b!2356960 (= e!1505179 (and tp!753395 tp!753394))))

(declare-fun b!2356959 () Bool)

(declare-fun tp!753393 () Bool)

(assert (=> b!2356959 (= e!1505179 tp!753393)))

(declare-fun b!2356958 () Bool)

(declare-fun tp!753396 () Bool)

(declare-fun tp!753392 () Bool)

(assert (=> b!2356958 (= e!1505179 (and tp!753396 tp!753392))))

(assert (= (and b!2356619 ((_ is ElementMatch!6893) (reg!7222 (regTwo!14299 r!26197)))) b!2356957))

(assert (= (and b!2356619 ((_ is Concat!11515) (reg!7222 (regTwo!14299 r!26197)))) b!2356958))

(assert (= (and b!2356619 ((_ is Star!6893) (reg!7222 (regTwo!14299 r!26197)))) b!2356959))

(assert (= (and b!2356619 ((_ is Union!6893) (reg!7222 (regTwo!14299 r!26197)))) b!2356960))

(check-sat (not bm!143441) (not b!2356906) (not bm!143474) (not b!2356938) (not b!2356891) (not b!2356882) (not bm!143442) (not b!2356932) (not bm!143456) (not bm!143454) (not b!2356916) (not bm!143479) (not b!2356910) (not bm!143471) (not b!2356955) (not b!2356899) (not b!2356883) (not bm!143460) (not bm!143472) (not bm!143461) (not b!2356760) (not b!2356946) (not b!2356959) (not bm!143467) (not bm!143447) (not d!693112) (not d!693108) (not b!2356880) (not bm!143439) (not b!2356740) (not b!2356806) (not b!2356922) (not d!693124) (not bm!143457) (not b!2356772) (not b!2356863) (not b!2356900) (not b!2356870) (not b!2356744) (not d!693126) (not b!2356896) (not b!2356958) (not b!2356914) (not bm!143486) (not b!2356769) (not b!2356934) (not bm!143444) (not b!2356951) (not bm!143468) (not d!693088) (not b!2356926) (not b!2356908) (not b!2356890) (not bm!143465) (not b!2356807) (not bm!143483) (not b!2356887) (not b!2356902) (not bm!143490) (not b!2356739) (not b!2356903) (not b!2356867) (not bm!143464) (not b!2356919) (not bm!143491) (not b!2356714) (not bm!143432) (not b!2356676) (not d!693086) (not b!2356923) (not bm!143469) (not b!2356703) (not b!2356942) (not d!693116) (not b!2356884) (not bm!143445) (not b!2356853) (not bm!143481) (not b!2356864) (not d!693090) (not b!2356904) (not bm!143433) (not d!693132) (not b!2356879) (not d!693100) (not b!2356943) (not b!2356894) (not b!2356888) (not b!2356948) (not b!2356868) (not b!2356954) (not b!2356850) (not b!2356930) (not b!2356927) (not b!2356936) (not bm!143487) (not b!2356944) (not bm!143452) (not b!2356947) (not b!2356872) (not b!2356956) (not b!2356876) (not bm!143475) (not b!2356915) (not b!2356874) (not bm!143480) (not b!2356940) (not b!2356935) (not d!693106) (not b!2356920) (not b!2356878) (not b!2356950) (not d!693140) (not b!2356960) (not b!2356841) (not b!2356871) (not b!2356939) (not b!2356866) (not b!2356862) (not bm!143478) (not bm!143438) (not bm!143448) (not b!2356712) (not b!2356912) (not b!2356931) (not b!2356918) tp_is_empty!11097 (not bm!143451) (not b!2356886) (not b!2356804) (not bm!143477) (not b!2356928) (not bm!143453) (not b!2356892) (not b!2356875) (not b!2356952) (not bm!143446) (not bm!143463) (not b!2356667) (not bm!143484) (not b!2356911) (not b!2356895) (not b!2356898) (not b!2356924) (not b!2356907) (not b!2356817))
(check-sat)

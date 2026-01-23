; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45984 () Bool)

(assert start!45984)

(declare-fun b!500364 () Bool)

(declare-fun e!300816 () Bool)

(declare-fun tp!150828 () Bool)

(assert (=> b!500364 (= e!300816 tp!150828)))

(declare-fun res!215092 () Bool)

(declare-fun e!300814 () Bool)

(assert (=> start!45984 (=> (not res!215092) (not e!300814))))

(declare-datatypes ((C!3292 0))(
  ( (C!3293 (val!1632 Int)) )
))
(declare-datatypes ((Regex!1185 0))(
  ( (ElementMatch!1185 (c!98204 C!3292)) (Concat!2085 (regOne!2882 Regex!1185) (regTwo!2882 Regex!1185)) (EmptyExpr!1185) (Star!1185 (reg!1514 Regex!1185)) (EmptyLang!1185) (Union!1185 (regOne!2883 Regex!1185) (regTwo!2883 Regex!1185)) )
))
(declare-fun r!20230 () Regex!1185)

(declare-fun validRegex!413 (Regex!1185) Bool)

(assert (=> start!45984 (= res!215092 (validRegex!413 r!20230))))

(assert (=> start!45984 e!300814))

(assert (=> start!45984 e!300816))

(declare-fun b!500365 () Bool)

(declare-fun res!215093 () Bool)

(declare-fun e!300817 () Bool)

(assert (=> b!500365 (=> (not res!215093) (not e!300817))))

(declare-fun nullable!320 (Regex!1185) Bool)

(assert (=> b!500365 (= res!215093 (not (nullable!320 (regOne!2882 r!20230))))))

(declare-fun b!500366 () Bool)

(declare-fun res!215095 () Bool)

(assert (=> b!500366 (=> (not res!215095) (not e!300817))))

(assert (=> b!500366 (= res!215095 (validRegex!413 (regTwo!2882 r!20230)))))

(declare-fun b!500367 () Bool)

(declare-fun regexDepth!12 (Regex!1185) Int)

(assert (=> b!500367 (= e!300817 (>= (regexDepth!12 (regTwo!2882 r!20230)) (regexDepth!12 r!20230)))))

(declare-fun b!500368 () Bool)

(declare-fun res!215090 () Bool)

(assert (=> b!500368 (=> (not res!215090) (not e!300817))))

(declare-fun lt!211464 () Bool)

(assert (=> b!500368 (= res!215090 (not lt!211464))))

(declare-fun b!500369 () Bool)

(declare-fun tp_is_empty!2367 () Bool)

(assert (=> b!500369 (= e!300816 tp_is_empty!2367)))

(declare-fun b!500370 () Bool)

(assert (=> b!500370 (= e!300814 e!300817)))

(declare-fun res!215096 () Bool)

(assert (=> b!500370 (=> (not res!215096) (not e!300817))))

(declare-fun e!300815 () Bool)

(assert (=> b!500370 (= res!215096 e!300815)))

(declare-fun res!215097 () Bool)

(assert (=> b!500370 (=> res!215097 e!300815)))

(assert (=> b!500370 (= res!215097 lt!211464)))

(declare-fun lostCause!179 (Regex!1185) Bool)

(assert (=> b!500370 (= lt!211464 (lostCause!179 (regOne!2882 r!20230)))))

(declare-fun b!500371 () Bool)

(assert (=> b!500371 (= e!300815 (lostCause!179 (regTwo!2882 r!20230)))))

(declare-fun b!500372 () Bool)

(declare-fun res!215094 () Bool)

(assert (=> b!500372 (=> (not res!215094) (not e!300814))))

(assert (=> b!500372 (= res!215094 (lostCause!179 r!20230))))

(declare-fun b!500373 () Bool)

(declare-fun res!215089 () Bool)

(assert (=> b!500373 (=> (not res!215089) (not e!300814))))

(get-info :version)

(assert (=> b!500373 (= res!215089 (and (not ((_ is EmptyLang!1185) r!20230)) (not ((_ is EmptyExpr!1185) r!20230)) (not ((_ is ElementMatch!1185) r!20230)) (not ((_ is Union!1185) r!20230)) (not ((_ is Star!1185) r!20230))))))

(declare-fun b!500374 () Bool)

(declare-fun tp!150831 () Bool)

(declare-fun tp!150829 () Bool)

(assert (=> b!500374 (= e!300816 (and tp!150831 tp!150829))))

(declare-fun b!500375 () Bool)

(declare-fun res!215091 () Bool)

(assert (=> b!500375 (=> (not res!215091) (not e!300817))))

(assert (=> b!500375 (= res!215091 (lostCause!179 (regTwo!2882 r!20230)))))

(declare-fun b!500376 () Bool)

(declare-fun tp!150830 () Bool)

(declare-fun tp!150827 () Bool)

(assert (=> b!500376 (= e!300816 (and tp!150830 tp!150827))))

(assert (= (and start!45984 res!215092) b!500372))

(assert (= (and b!500372 res!215094) b!500373))

(assert (= (and b!500373 res!215089) b!500370))

(assert (= (and b!500370 (not res!215097)) b!500371))

(assert (= (and b!500370 res!215096) b!500365))

(assert (= (and b!500365 res!215093) b!500368))

(assert (= (and b!500368 res!215090) b!500366))

(assert (= (and b!500366 res!215095) b!500375))

(assert (= (and b!500375 res!215091) b!500367))

(assert (= (and start!45984 ((_ is ElementMatch!1185) r!20230)) b!500369))

(assert (= (and start!45984 ((_ is Concat!2085) r!20230)) b!500374))

(assert (= (and start!45984 ((_ is Star!1185) r!20230)) b!500364))

(assert (= (and start!45984 ((_ is Union!1185) r!20230)) b!500376))

(declare-fun m!754515 () Bool)

(assert (=> b!500365 m!754515))

(declare-fun m!754517 () Bool)

(assert (=> b!500367 m!754517))

(declare-fun m!754519 () Bool)

(assert (=> b!500367 m!754519))

(declare-fun m!754521 () Bool)

(assert (=> b!500375 m!754521))

(assert (=> b!500371 m!754521))

(declare-fun m!754523 () Bool)

(assert (=> start!45984 m!754523))

(declare-fun m!754525 () Bool)

(assert (=> b!500370 m!754525))

(declare-fun m!754527 () Bool)

(assert (=> b!500366 m!754527))

(declare-fun m!754529 () Bool)

(assert (=> b!500372 m!754529))

(check-sat (not b!500372) (not b!500375) (not b!500364) (not b!500376) tp_is_empty!2367 (not b!500371) (not b!500374) (not b!500366) (not b!500370) (not b!500367) (not b!500365) (not start!45984))
(check-sat)
(get-model)

(declare-fun bm!36137 () Bool)

(declare-fun call!36144 () Bool)

(declare-fun c!98210 () Bool)

(assert (=> bm!36137 (= call!36144 (validRegex!413 (ite c!98210 (regOne!2883 r!20230) (regTwo!2882 r!20230))))))

(declare-fun b!500395 () Bool)

(declare-fun e!300836 () Bool)

(declare-fun e!300838 () Bool)

(assert (=> b!500395 (= e!300836 e!300838)))

(declare-fun res!215112 () Bool)

(assert (=> b!500395 (= res!215112 (not (nullable!320 (reg!1514 r!20230))))))

(assert (=> b!500395 (=> (not res!215112) (not e!300838))))

(declare-fun b!500396 () Bool)

(declare-fun e!300834 () Bool)

(assert (=> b!500396 (= e!300834 e!300836)))

(declare-fun c!98209 () Bool)

(assert (=> b!500396 (= c!98209 ((_ is Star!1185) r!20230))))

(declare-fun b!500397 () Bool)

(declare-fun e!300835 () Bool)

(assert (=> b!500397 (= e!300835 call!36144)))

(declare-fun d!182485 () Bool)

(declare-fun res!215108 () Bool)

(assert (=> d!182485 (=> res!215108 e!300834)))

(assert (=> d!182485 (= res!215108 ((_ is ElementMatch!1185) r!20230))))

(assert (=> d!182485 (= (validRegex!413 r!20230) e!300834)))

(declare-fun bm!36138 () Bool)

(declare-fun call!36143 () Bool)

(declare-fun call!36142 () Bool)

(assert (=> bm!36138 (= call!36143 call!36142)))

(declare-fun b!500398 () Bool)

(declare-fun e!300833 () Bool)

(assert (=> b!500398 (= e!300836 e!300833)))

(assert (=> b!500398 (= c!98210 ((_ is Union!1185) r!20230))))

(declare-fun b!500399 () Bool)

(declare-fun e!300832 () Bool)

(assert (=> b!500399 (= e!300832 e!300835)))

(declare-fun res!215109 () Bool)

(assert (=> b!500399 (=> (not res!215109) (not e!300835))))

(assert (=> b!500399 (= res!215109 call!36143)))

(declare-fun b!500400 () Bool)

(declare-fun res!215111 () Bool)

(assert (=> b!500400 (=> res!215111 e!300832)))

(assert (=> b!500400 (= res!215111 (not ((_ is Concat!2085) r!20230)))))

(assert (=> b!500400 (= e!300833 e!300832)))

(declare-fun b!500401 () Bool)

(declare-fun res!215110 () Bool)

(declare-fun e!300837 () Bool)

(assert (=> b!500401 (=> (not res!215110) (not e!300837))))

(assert (=> b!500401 (= res!215110 call!36144)))

(assert (=> b!500401 (= e!300833 e!300837)))

(declare-fun bm!36139 () Bool)

(assert (=> bm!36139 (= call!36142 (validRegex!413 (ite c!98209 (reg!1514 r!20230) (ite c!98210 (regTwo!2883 r!20230) (regOne!2882 r!20230)))))))

(declare-fun b!500402 () Bool)

(assert (=> b!500402 (= e!300838 call!36142)))

(declare-fun b!500403 () Bool)

(assert (=> b!500403 (= e!300837 call!36143)))

(assert (= (and d!182485 (not res!215108)) b!500396))

(assert (= (and b!500396 c!98209) b!500395))

(assert (= (and b!500396 (not c!98209)) b!500398))

(assert (= (and b!500395 res!215112) b!500402))

(assert (= (and b!500398 c!98210) b!500401))

(assert (= (and b!500398 (not c!98210)) b!500400))

(assert (= (and b!500401 res!215110) b!500403))

(assert (= (and b!500400 (not res!215111)) b!500399))

(assert (= (and b!500399 res!215109) b!500397))

(assert (= (or b!500403 b!500399) bm!36138))

(assert (= (or b!500401 b!500397) bm!36137))

(assert (= (or b!500402 bm!36138) bm!36139))

(declare-fun m!754531 () Bool)

(assert (=> bm!36137 m!754531))

(declare-fun m!754533 () Bool)

(assert (=> b!500395 m!754533))

(declare-fun m!754535 () Bool)

(assert (=> bm!36139 m!754535))

(assert (=> start!45984 d!182485))

(declare-fun b!500506 () Bool)

(declare-fun e!300907 () Bool)

(declare-fun lt!211471 () Int)

(declare-fun call!36192 () Int)

(assert (=> b!500506 (= e!300907 (> lt!211471 call!36192))))

(declare-fun b!500507 () Bool)

(declare-fun e!300903 () Bool)

(declare-fun e!300904 () Bool)

(assert (=> b!500507 (= e!300903 e!300904)))

(declare-fun c!98257 () Bool)

(assert (=> b!500507 (= c!98257 ((_ is Concat!2085) (regTwo!2882 r!20230)))))

(declare-fun b!500508 () Bool)

(declare-fun e!300906 () Bool)

(assert (=> b!500508 (= e!300906 e!300903)))

(declare-fun c!98256 () Bool)

(assert (=> b!500508 (= c!98256 ((_ is Union!1185) (regTwo!2882 r!20230)))))

(declare-fun bm!36182 () Bool)

(declare-fun call!36191 () Int)

(declare-fun call!36187 () Int)

(assert (=> bm!36182 (= call!36191 call!36187)))

(declare-fun b!500509 () Bool)

(declare-fun e!300905 () Bool)

(assert (=> b!500509 (= e!300905 (> lt!211471 call!36192))))

(declare-fun b!500510 () Bool)

(declare-fun e!300899 () Bool)

(assert (=> b!500510 (= e!300899 (= lt!211471 1))))

(declare-fun b!500511 () Bool)

(declare-fun res!215132 () Bool)

(assert (=> b!500511 (=> (not res!215132) (not e!300907))))

(declare-fun call!36189 () Int)

(assert (=> b!500511 (= res!215132 (> lt!211471 call!36189))))

(assert (=> b!500511 (= e!300904 e!300907)))

(declare-fun b!500512 () Bool)

(declare-fun e!300908 () Int)

(declare-fun call!36188 () Int)

(assert (=> b!500512 (= e!300908 (+ 1 call!36188))))

(declare-fun b!500513 () Bool)

(declare-fun e!300900 () Int)

(assert (=> b!500513 (= e!300900 (+ 1 call!36188))))

(declare-fun bm!36183 () Bool)

(assert (=> bm!36183 (= call!36192 (regexDepth!12 (ite c!98256 (regTwo!2883 (regTwo!2882 r!20230)) (regTwo!2882 (regTwo!2882 r!20230)))))))

(declare-fun b!500515 () Bool)

(declare-fun e!300902 () Int)

(declare-fun e!300901 () Int)

(assert (=> b!500515 (= e!300902 e!300901)))

(declare-fun c!98259 () Bool)

(assert (=> b!500515 (= c!98259 ((_ is Star!1185) (regTwo!2882 r!20230)))))

(declare-fun b!500516 () Bool)

(declare-fun c!98258 () Bool)

(assert (=> b!500516 (= c!98258 ((_ is Union!1185) (regTwo!2882 r!20230)))))

(assert (=> b!500516 (= e!300901 e!300900)))

(declare-fun bm!36184 () Bool)

(assert (=> bm!36184 (= call!36187 (regexDepth!12 (ite c!98259 (reg!1514 (regTwo!2882 r!20230)) (ite c!98258 (regOne!2883 (regTwo!2882 r!20230)) (regTwo!2882 (regTwo!2882 r!20230))))))))

(declare-fun call!36193 () Int)

(declare-fun bm!36185 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!36185 (= call!36188 (maxBigInt!0 (ite c!98258 call!36191 call!36193) (ite c!98258 call!36193 call!36191)))))

(declare-fun call!36190 () Int)

(declare-fun bm!36186 () Bool)

(assert (=> bm!36186 (= call!36190 (regexDepth!12 (ite c!98256 (regOne!2883 (regTwo!2882 r!20230)) (ite c!98257 (regOne!2882 (regTwo!2882 r!20230)) (reg!1514 (regTwo!2882 r!20230))))))))

(declare-fun bm!36187 () Bool)

(assert (=> bm!36187 (= call!36193 (regexDepth!12 (ite c!98258 (regTwo!2883 (regTwo!2882 r!20230)) (regOne!2882 (regTwo!2882 r!20230)))))))

(declare-fun bm!36188 () Bool)

(assert (=> bm!36188 (= call!36189 call!36190)))

(declare-fun b!500517 () Bool)

(assert (=> b!500517 (= e!300900 e!300908)))

(declare-fun c!98254 () Bool)

(assert (=> b!500517 (= c!98254 ((_ is Concat!2085) (regTwo!2882 r!20230)))))

(declare-fun b!500518 () Bool)

(assert (=> b!500518 (= e!300903 e!300905)))

(declare-fun res!215133 () Bool)

(assert (=> b!500518 (= res!215133 (> lt!211471 call!36190))))

(assert (=> b!500518 (=> (not res!215133) (not e!300905))))

(declare-fun d!182489 () Bool)

(assert (=> d!182489 e!300906))

(declare-fun res!215131 () Bool)

(assert (=> d!182489 (=> (not res!215131) (not e!300906))))

(assert (=> d!182489 (= res!215131 (> lt!211471 0))))

(assert (=> d!182489 (= lt!211471 e!300902)))

(declare-fun c!98255 () Bool)

(assert (=> d!182489 (= c!98255 ((_ is ElementMatch!1185) (regTwo!2882 r!20230)))))

(assert (=> d!182489 (= (regexDepth!12 (regTwo!2882 r!20230)) lt!211471)))

(declare-fun b!500514 () Bool)

(assert (=> b!500514 (= e!300899 (> lt!211471 call!36189))))

(declare-fun b!500519 () Bool)

(assert (=> b!500519 (= e!300902 1)))

(declare-fun b!500520 () Bool)

(declare-fun c!98253 () Bool)

(assert (=> b!500520 (= c!98253 ((_ is Star!1185) (regTwo!2882 r!20230)))))

(assert (=> b!500520 (= e!300904 e!300899)))

(declare-fun b!500521 () Bool)

(assert (=> b!500521 (= e!300908 1)))

(declare-fun b!500522 () Bool)

(assert (=> b!500522 (= e!300901 (+ 1 call!36187))))

(assert (= (and d!182489 c!98255) b!500519))

(assert (= (and d!182489 (not c!98255)) b!500515))

(assert (= (and b!500515 c!98259) b!500522))

(assert (= (and b!500515 (not c!98259)) b!500516))

(assert (= (and b!500516 c!98258) b!500513))

(assert (= (and b!500516 (not c!98258)) b!500517))

(assert (= (and b!500517 c!98254) b!500512))

(assert (= (and b!500517 (not c!98254)) b!500521))

(assert (= (or b!500513 b!500512) bm!36187))

(assert (= (or b!500513 b!500512) bm!36182))

(assert (= (or b!500513 b!500512) bm!36185))

(assert (= (or b!500522 bm!36182) bm!36184))

(assert (= (and d!182489 res!215131) b!500508))

(assert (= (and b!500508 c!98256) b!500518))

(assert (= (and b!500508 (not c!98256)) b!500507))

(assert (= (and b!500518 res!215133) b!500509))

(assert (= (and b!500507 c!98257) b!500511))

(assert (= (and b!500507 (not c!98257)) b!500520))

(assert (= (and b!500511 res!215132) b!500506))

(assert (= (and b!500520 c!98253) b!500514))

(assert (= (and b!500520 (not c!98253)) b!500510))

(assert (= (or b!500511 b!500514) bm!36188))

(assert (= (or b!500509 b!500506) bm!36183))

(assert (= (or b!500518 bm!36188) bm!36186))

(declare-fun m!754559 () Bool)

(assert (=> bm!36183 m!754559))

(declare-fun m!754561 () Bool)

(assert (=> bm!36184 m!754561))

(declare-fun m!754563 () Bool)

(assert (=> bm!36186 m!754563))

(declare-fun m!754565 () Bool)

(assert (=> bm!36187 m!754565))

(declare-fun m!754567 () Bool)

(assert (=> bm!36185 m!754567))

(assert (=> b!500367 d!182489))

(declare-fun b!500531 () Bool)

(declare-fun e!300923 () Bool)

(declare-fun lt!211472 () Int)

(declare-fun call!36199 () Int)

(assert (=> b!500531 (= e!300923 (> lt!211472 call!36199))))

(declare-fun b!500532 () Bool)

(declare-fun e!300917 () Bool)

(declare-fun e!300918 () Bool)

(assert (=> b!500532 (= e!300917 e!300918)))

(declare-fun c!98266 () Bool)

(assert (=> b!500532 (= c!98266 ((_ is Concat!2085) r!20230))))

(declare-fun b!500533 () Bool)

(declare-fun e!300922 () Bool)

(assert (=> b!500533 (= e!300922 e!300917)))

(declare-fun c!98265 () Bool)

(assert (=> b!500533 (= c!98265 ((_ is Union!1185) r!20230))))

(declare-fun bm!36189 () Bool)

(declare-fun call!36198 () Int)

(declare-fun call!36194 () Int)

(assert (=> bm!36189 (= call!36198 call!36194)))

(declare-fun b!500534 () Bool)

(declare-fun e!300919 () Bool)

(assert (=> b!500534 (= e!300919 (> lt!211472 call!36199))))

(declare-fun b!500535 () Bool)

(declare-fun e!300913 () Bool)

(assert (=> b!500535 (= e!300913 (= lt!211472 1))))

(declare-fun b!500536 () Bool)

(declare-fun res!215139 () Bool)

(assert (=> b!500536 (=> (not res!215139) (not e!300923))))

(declare-fun call!36196 () Int)

(assert (=> b!500536 (= res!215139 (> lt!211472 call!36196))))

(assert (=> b!500536 (= e!300918 e!300923)))

(declare-fun b!500537 () Bool)

(declare-fun e!300924 () Int)

(declare-fun call!36195 () Int)

(assert (=> b!500537 (= e!300924 (+ 1 call!36195))))

(declare-fun b!500538 () Bool)

(declare-fun e!300914 () Int)

(assert (=> b!500538 (= e!300914 (+ 1 call!36195))))

(declare-fun bm!36190 () Bool)

(assert (=> bm!36190 (= call!36199 (regexDepth!12 (ite c!98265 (regTwo!2883 r!20230) (regTwo!2882 r!20230))))))

(declare-fun b!500540 () Bool)

(declare-fun e!300916 () Int)

(declare-fun e!300915 () Int)

(assert (=> b!500540 (= e!300916 e!300915)))

(declare-fun c!98268 () Bool)

(assert (=> b!500540 (= c!98268 ((_ is Star!1185) r!20230))))

(declare-fun b!500541 () Bool)

(declare-fun c!98267 () Bool)

(assert (=> b!500541 (= c!98267 ((_ is Union!1185) r!20230))))

(assert (=> b!500541 (= e!300915 e!300914)))

(declare-fun bm!36191 () Bool)

(assert (=> bm!36191 (= call!36194 (regexDepth!12 (ite c!98268 (reg!1514 r!20230) (ite c!98267 (regOne!2883 r!20230) (regTwo!2882 r!20230)))))))

(declare-fun call!36200 () Int)

(declare-fun bm!36192 () Bool)

(assert (=> bm!36192 (= call!36195 (maxBigInt!0 (ite c!98267 call!36198 call!36200) (ite c!98267 call!36200 call!36198)))))

(declare-fun bm!36193 () Bool)

(declare-fun call!36197 () Int)

(assert (=> bm!36193 (= call!36197 (regexDepth!12 (ite c!98265 (regOne!2883 r!20230) (ite c!98266 (regOne!2882 r!20230) (reg!1514 r!20230)))))))

(declare-fun bm!36194 () Bool)

(assert (=> bm!36194 (= call!36200 (regexDepth!12 (ite c!98267 (regTwo!2883 r!20230) (regOne!2882 r!20230))))))

(declare-fun bm!36195 () Bool)

(assert (=> bm!36195 (= call!36196 call!36197)))

(declare-fun b!500542 () Bool)

(assert (=> b!500542 (= e!300914 e!300924)))

(declare-fun c!98263 () Bool)

(assert (=> b!500542 (= c!98263 ((_ is Concat!2085) r!20230))))

(declare-fun b!500543 () Bool)

(assert (=> b!500543 (= e!300917 e!300919)))

(declare-fun res!215140 () Bool)

(assert (=> b!500543 (= res!215140 (> lt!211472 call!36197))))

(assert (=> b!500543 (=> (not res!215140) (not e!300919))))

(declare-fun d!182497 () Bool)

(assert (=> d!182497 e!300922))

(declare-fun res!215136 () Bool)

(assert (=> d!182497 (=> (not res!215136) (not e!300922))))

(assert (=> d!182497 (= res!215136 (> lt!211472 0))))

(assert (=> d!182497 (= lt!211472 e!300916)))

(declare-fun c!98264 () Bool)

(assert (=> d!182497 (= c!98264 ((_ is ElementMatch!1185) r!20230))))

(assert (=> d!182497 (= (regexDepth!12 r!20230) lt!211472)))

(declare-fun b!500539 () Bool)

(assert (=> b!500539 (= e!300913 (> lt!211472 call!36196))))

(declare-fun b!500544 () Bool)

(assert (=> b!500544 (= e!300916 1)))

(declare-fun b!500545 () Bool)

(declare-fun c!98262 () Bool)

(assert (=> b!500545 (= c!98262 ((_ is Star!1185) r!20230))))

(assert (=> b!500545 (= e!300918 e!300913)))

(declare-fun b!500546 () Bool)

(assert (=> b!500546 (= e!300924 1)))

(declare-fun b!500547 () Bool)

(assert (=> b!500547 (= e!300915 (+ 1 call!36194))))

(assert (= (and d!182497 c!98264) b!500544))

(assert (= (and d!182497 (not c!98264)) b!500540))

(assert (= (and b!500540 c!98268) b!500547))

(assert (= (and b!500540 (not c!98268)) b!500541))

(assert (= (and b!500541 c!98267) b!500538))

(assert (= (and b!500541 (not c!98267)) b!500542))

(assert (= (and b!500542 c!98263) b!500537))

(assert (= (and b!500542 (not c!98263)) b!500546))

(assert (= (or b!500538 b!500537) bm!36194))

(assert (= (or b!500538 b!500537) bm!36189))

(assert (= (or b!500538 b!500537) bm!36192))

(assert (= (or b!500547 bm!36189) bm!36191))

(assert (= (and d!182497 res!215136) b!500533))

(assert (= (and b!500533 c!98265) b!500543))

(assert (= (and b!500533 (not c!98265)) b!500532))

(assert (= (and b!500543 res!215140) b!500534))

(assert (= (and b!500532 c!98266) b!500536))

(assert (= (and b!500532 (not c!98266)) b!500545))

(assert (= (and b!500536 res!215139) b!500531))

(assert (= (and b!500545 c!98262) b!500539))

(assert (= (and b!500545 (not c!98262)) b!500535))

(assert (= (or b!500536 b!500539) bm!36195))

(assert (= (or b!500534 b!500531) bm!36190))

(assert (= (or b!500543 bm!36195) bm!36193))

(declare-fun m!754569 () Bool)

(assert (=> bm!36190 m!754569))

(declare-fun m!754571 () Bool)

(assert (=> bm!36191 m!754571))

(declare-fun m!754573 () Bool)

(assert (=> bm!36193 m!754573))

(declare-fun m!754575 () Bool)

(assert (=> bm!36194 m!754575))

(declare-fun m!754577 () Bool)

(assert (=> bm!36192 m!754577))

(assert (=> b!500367 d!182497))

(declare-fun bm!36200 () Bool)

(declare-fun call!36209 () Bool)

(declare-fun c!98272 () Bool)

(assert (=> bm!36200 (= call!36209 (validRegex!413 (ite c!98272 (regOne!2883 (regTwo!2882 r!20230)) (regTwo!2882 (regTwo!2882 r!20230)))))))

(declare-fun b!500558 () Bool)

(declare-fun e!300937 () Bool)

(declare-fun e!300939 () Bool)

(assert (=> b!500558 (= e!300937 e!300939)))

(declare-fun res!215151 () Bool)

(assert (=> b!500558 (= res!215151 (not (nullable!320 (reg!1514 (regTwo!2882 r!20230)))))))

(assert (=> b!500558 (=> (not res!215151) (not e!300939))))

(declare-fun b!500559 () Bool)

(declare-fun e!300935 () Bool)

(assert (=> b!500559 (= e!300935 e!300937)))

(declare-fun c!98271 () Bool)

(assert (=> b!500559 (= c!98271 ((_ is Star!1185) (regTwo!2882 r!20230)))))

(declare-fun b!500560 () Bool)

(declare-fun e!300936 () Bool)

(assert (=> b!500560 (= e!300936 call!36209)))

(declare-fun d!182499 () Bool)

(declare-fun res!215147 () Bool)

(assert (=> d!182499 (=> res!215147 e!300935)))

(assert (=> d!182499 (= res!215147 ((_ is ElementMatch!1185) (regTwo!2882 r!20230)))))

(assert (=> d!182499 (= (validRegex!413 (regTwo!2882 r!20230)) e!300935)))

(declare-fun bm!36201 () Bool)

(declare-fun call!36208 () Bool)

(declare-fun call!36207 () Bool)

(assert (=> bm!36201 (= call!36208 call!36207)))

(declare-fun b!500561 () Bool)

(declare-fun e!300934 () Bool)

(assert (=> b!500561 (= e!300937 e!300934)))

(assert (=> b!500561 (= c!98272 ((_ is Union!1185) (regTwo!2882 r!20230)))))

(declare-fun b!500562 () Bool)

(declare-fun e!300933 () Bool)

(assert (=> b!500562 (= e!300933 e!300936)))

(declare-fun res!215148 () Bool)

(assert (=> b!500562 (=> (not res!215148) (not e!300936))))

(assert (=> b!500562 (= res!215148 call!36208)))

(declare-fun b!500563 () Bool)

(declare-fun res!215150 () Bool)

(assert (=> b!500563 (=> res!215150 e!300933)))

(assert (=> b!500563 (= res!215150 (not ((_ is Concat!2085) (regTwo!2882 r!20230))))))

(assert (=> b!500563 (= e!300934 e!300933)))

(declare-fun b!500564 () Bool)

(declare-fun res!215149 () Bool)

(declare-fun e!300938 () Bool)

(assert (=> b!500564 (=> (not res!215149) (not e!300938))))

(assert (=> b!500564 (= res!215149 call!36209)))

(assert (=> b!500564 (= e!300934 e!300938)))

(declare-fun bm!36202 () Bool)

(assert (=> bm!36202 (= call!36207 (validRegex!413 (ite c!98271 (reg!1514 (regTwo!2882 r!20230)) (ite c!98272 (regTwo!2883 (regTwo!2882 r!20230)) (regOne!2882 (regTwo!2882 r!20230))))))))

(declare-fun b!500565 () Bool)

(assert (=> b!500565 (= e!300939 call!36207)))

(declare-fun b!500566 () Bool)

(assert (=> b!500566 (= e!300938 call!36208)))

(assert (= (and d!182499 (not res!215147)) b!500559))

(assert (= (and b!500559 c!98271) b!500558))

(assert (= (and b!500559 (not c!98271)) b!500561))

(assert (= (and b!500558 res!215151) b!500565))

(assert (= (and b!500561 c!98272) b!500564))

(assert (= (and b!500561 (not c!98272)) b!500563))

(assert (= (and b!500564 res!215149) b!500566))

(assert (= (and b!500563 (not res!215150)) b!500562))

(assert (= (and b!500562 res!215148) b!500560))

(assert (= (or b!500566 b!500562) bm!36201))

(assert (= (or b!500564 b!500560) bm!36200))

(assert (= (or b!500565 bm!36201) bm!36202))

(declare-fun m!754579 () Bool)

(assert (=> bm!36200 m!754579))

(declare-fun m!754581 () Bool)

(assert (=> b!500558 m!754581))

(declare-fun m!754583 () Bool)

(assert (=> bm!36202 m!754583))

(assert (=> b!500366 d!182499))

(declare-fun d!182501 () Bool)

(declare-fun lostCauseFct!85 (Regex!1185) Bool)

(assert (=> d!182501 (= (lostCause!179 (regTwo!2882 r!20230)) (lostCauseFct!85 (regTwo!2882 r!20230)))))

(declare-fun bs!59147 () Bool)

(assert (= bs!59147 d!182501))

(declare-fun m!754585 () Bool)

(assert (=> bs!59147 m!754585))

(assert (=> b!500371 d!182501))

(declare-fun d!182503 () Bool)

(assert (=> d!182503 (= (lostCause!179 r!20230) (lostCauseFct!85 r!20230))))

(declare-fun bs!59148 () Bool)

(assert (= bs!59148 d!182503))

(declare-fun m!754587 () Bool)

(assert (=> bs!59148 m!754587))

(assert (=> b!500372 d!182503))

(declare-fun d!182505 () Bool)

(assert (=> d!182505 (= (lostCause!179 (regOne!2882 r!20230)) (lostCauseFct!85 (regOne!2882 r!20230)))))

(declare-fun bs!59149 () Bool)

(assert (= bs!59149 d!182505))

(declare-fun m!754589 () Bool)

(assert (=> bs!59149 m!754589))

(assert (=> b!500370 d!182505))

(assert (=> b!500375 d!182501))

(declare-fun d!182507 () Bool)

(declare-fun nullableFct!122 (Regex!1185) Bool)

(assert (=> d!182507 (= (nullable!320 (regOne!2882 r!20230)) (nullableFct!122 (regOne!2882 r!20230)))))

(declare-fun bs!59150 () Bool)

(assert (= bs!59150 d!182507))

(declare-fun m!754591 () Bool)

(assert (=> bs!59150 m!754591))

(assert (=> b!500365 d!182507))

(declare-fun b!500595 () Bool)

(declare-fun e!300956 () Bool)

(assert (=> b!500595 (= e!300956 tp_is_empty!2367)))

(declare-fun b!500597 () Bool)

(declare-fun tp!150845 () Bool)

(assert (=> b!500597 (= e!300956 tp!150845)))

(declare-fun b!500596 () Bool)

(declare-fun tp!150844 () Bool)

(declare-fun tp!150846 () Bool)

(assert (=> b!500596 (= e!300956 (and tp!150844 tp!150846))))

(declare-fun b!500598 () Bool)

(declare-fun tp!150842 () Bool)

(declare-fun tp!150843 () Bool)

(assert (=> b!500598 (= e!300956 (and tp!150842 tp!150843))))

(assert (=> b!500374 (= tp!150831 e!300956)))

(assert (= (and b!500374 ((_ is ElementMatch!1185) (regOne!2882 r!20230))) b!500595))

(assert (= (and b!500374 ((_ is Concat!2085) (regOne!2882 r!20230))) b!500596))

(assert (= (and b!500374 ((_ is Star!1185) (regOne!2882 r!20230))) b!500597))

(assert (= (and b!500374 ((_ is Union!1185) (regOne!2882 r!20230))) b!500598))

(declare-fun b!500599 () Bool)

(declare-fun e!300957 () Bool)

(assert (=> b!500599 (= e!300957 tp_is_empty!2367)))

(declare-fun b!500601 () Bool)

(declare-fun tp!150850 () Bool)

(assert (=> b!500601 (= e!300957 tp!150850)))

(declare-fun b!500600 () Bool)

(declare-fun tp!150849 () Bool)

(declare-fun tp!150851 () Bool)

(assert (=> b!500600 (= e!300957 (and tp!150849 tp!150851))))

(declare-fun b!500602 () Bool)

(declare-fun tp!150847 () Bool)

(declare-fun tp!150848 () Bool)

(assert (=> b!500602 (= e!300957 (and tp!150847 tp!150848))))

(assert (=> b!500374 (= tp!150829 e!300957)))

(assert (= (and b!500374 ((_ is ElementMatch!1185) (regTwo!2882 r!20230))) b!500599))

(assert (= (and b!500374 ((_ is Concat!2085) (regTwo!2882 r!20230))) b!500600))

(assert (= (and b!500374 ((_ is Star!1185) (regTwo!2882 r!20230))) b!500601))

(assert (= (and b!500374 ((_ is Union!1185) (regTwo!2882 r!20230))) b!500602))

(declare-fun b!500603 () Bool)

(declare-fun e!300958 () Bool)

(assert (=> b!500603 (= e!300958 tp_is_empty!2367)))

(declare-fun b!500605 () Bool)

(declare-fun tp!150855 () Bool)

(assert (=> b!500605 (= e!300958 tp!150855)))

(declare-fun b!500604 () Bool)

(declare-fun tp!150854 () Bool)

(declare-fun tp!150856 () Bool)

(assert (=> b!500604 (= e!300958 (and tp!150854 tp!150856))))

(declare-fun b!500606 () Bool)

(declare-fun tp!150852 () Bool)

(declare-fun tp!150853 () Bool)

(assert (=> b!500606 (= e!300958 (and tp!150852 tp!150853))))

(assert (=> b!500364 (= tp!150828 e!300958)))

(assert (= (and b!500364 ((_ is ElementMatch!1185) (reg!1514 r!20230))) b!500603))

(assert (= (and b!500364 ((_ is Concat!2085) (reg!1514 r!20230))) b!500604))

(assert (= (and b!500364 ((_ is Star!1185) (reg!1514 r!20230))) b!500605))

(assert (= (and b!500364 ((_ is Union!1185) (reg!1514 r!20230))) b!500606))

(declare-fun b!500607 () Bool)

(declare-fun e!300959 () Bool)

(assert (=> b!500607 (= e!300959 tp_is_empty!2367)))

(declare-fun b!500609 () Bool)

(declare-fun tp!150860 () Bool)

(assert (=> b!500609 (= e!300959 tp!150860)))

(declare-fun b!500608 () Bool)

(declare-fun tp!150859 () Bool)

(declare-fun tp!150861 () Bool)

(assert (=> b!500608 (= e!300959 (and tp!150859 tp!150861))))

(declare-fun b!500610 () Bool)

(declare-fun tp!150857 () Bool)

(declare-fun tp!150858 () Bool)

(assert (=> b!500610 (= e!300959 (and tp!150857 tp!150858))))

(assert (=> b!500376 (= tp!150830 e!300959)))

(assert (= (and b!500376 ((_ is ElementMatch!1185) (regOne!2883 r!20230))) b!500607))

(assert (= (and b!500376 ((_ is Concat!2085) (regOne!2883 r!20230))) b!500608))

(assert (= (and b!500376 ((_ is Star!1185) (regOne!2883 r!20230))) b!500609))

(assert (= (and b!500376 ((_ is Union!1185) (regOne!2883 r!20230))) b!500610))

(declare-fun b!500611 () Bool)

(declare-fun e!300960 () Bool)

(assert (=> b!500611 (= e!300960 tp_is_empty!2367)))

(declare-fun b!500613 () Bool)

(declare-fun tp!150865 () Bool)

(assert (=> b!500613 (= e!300960 tp!150865)))

(declare-fun b!500612 () Bool)

(declare-fun tp!150864 () Bool)

(declare-fun tp!150866 () Bool)

(assert (=> b!500612 (= e!300960 (and tp!150864 tp!150866))))

(declare-fun b!500614 () Bool)

(declare-fun tp!150862 () Bool)

(declare-fun tp!150863 () Bool)

(assert (=> b!500614 (= e!300960 (and tp!150862 tp!150863))))

(assert (=> b!500376 (= tp!150827 e!300960)))

(assert (= (and b!500376 ((_ is ElementMatch!1185) (regTwo!2883 r!20230))) b!500611))

(assert (= (and b!500376 ((_ is Concat!2085) (regTwo!2883 r!20230))) b!500612))

(assert (= (and b!500376 ((_ is Star!1185) (regTwo!2883 r!20230))) b!500613))

(assert (= (and b!500376 ((_ is Union!1185) (regTwo!2883 r!20230))) b!500614))

(check-sat (not d!182501) (not b!500605) (not bm!36202) (not bm!36139) (not bm!36193) (not b!500614) (not bm!36185) (not bm!36200) (not bm!36184) (not b!500608) (not bm!36194) (not bm!36183) (not d!182507) (not bm!36137) (not bm!36186) (not d!182505) (not b!500596) (not b!500604) tp_is_empty!2367 (not b!500606) (not bm!36187) (not b!500600) (not b!500612) (not b!500610) (not b!500558) (not b!500602) (not b!500597) (not bm!36192) (not b!500613) (not b!500395) (not d!182503) (not bm!36190) (not bm!36191) (not b!500601) (not b!500609) (not b!500598))
(check-sat)

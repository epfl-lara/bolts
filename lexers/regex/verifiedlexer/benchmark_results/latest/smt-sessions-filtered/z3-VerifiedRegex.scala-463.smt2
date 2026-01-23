; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!13370 () Bool)

(assert start!13370)

(declare-fun res!59368 () Bool)

(declare-fun e!74303 () Bool)

(assert (=> start!13370 (=> (not res!59368) (not e!74303))))

(declare-fun lt!38580 () Int)

(assert (=> start!13370 (= res!59368 (> lt!38580 0))))

(declare-datatypes ((B!673 0))(
  ( (B!674 (val!822 Int)) )
))
(declare-datatypes ((List!2140 0))(
  ( (Nil!2134) (Cons!2134 (h!7531 B!673) (t!22726 List!2140)) )
))
(declare-fun l!3350 () List!2140)

(declare-fun size!1977 (List!2140) Int)

(assert (=> start!13370 (= lt!38580 (size!1977 l!3350))))

(assert (=> start!13370 e!74303))

(declare-fun e!74302 () Bool)

(assert (=> start!13370 e!74302))

(declare-fun b!129031 () Bool)

(declare-fun removeLast!10 (List!2140) List!2140)

(assert (=> b!129031 (= e!74303 (>= (size!1977 (removeLast!10 l!3350)) lt!38580))))

(declare-fun b!129032 () Bool)

(declare-fun tp_is_empty!1317 () Bool)

(declare-fun tp!70084 () Bool)

(assert (=> b!129032 (= e!74302 (and tp_is_empty!1317 tp!70084))))

(assert (= (and start!13370 res!59368) b!129031))

(get-info :version)

(assert (= (and start!13370 ((_ is Cons!2134) l!3350)) b!129032))

(declare-fun m!113547 () Bool)

(assert (=> start!13370 m!113547))

(declare-fun m!113549 () Bool)

(assert (=> b!129031 m!113549))

(assert (=> b!129031 m!113549))

(declare-fun m!113551 () Bool)

(assert (=> b!129031 m!113551))

(check-sat (not b!129031) (not start!13370) (not b!129032) tp_is_empty!1317)
(check-sat)
(get-model)

(declare-fun d!30412 () Bool)

(declare-fun lt!38585 () Int)

(assert (=> d!30412 (>= lt!38585 0)))

(declare-fun e!74308 () Int)

(assert (=> d!30412 (= lt!38585 e!74308)))

(declare-fun c!28139 () Bool)

(assert (=> d!30412 (= c!28139 ((_ is Nil!2134) (removeLast!10 l!3350)))))

(assert (=> d!30412 (= (size!1977 (removeLast!10 l!3350)) lt!38585)))

(declare-fun b!129041 () Bool)

(assert (=> b!129041 (= e!74308 0)))

(declare-fun b!129042 () Bool)

(assert (=> b!129042 (= e!74308 (+ 1 (size!1977 (t!22726 (removeLast!10 l!3350)))))))

(assert (= (and d!30412 c!28139) b!129041))

(assert (= (and d!30412 (not c!28139)) b!129042))

(declare-fun m!113553 () Bool)

(assert (=> b!129042 m!113553))

(assert (=> b!129031 d!30412))

(declare-fun d!30416 () Bool)

(declare-fun lt!38592 () List!2140)

(declare-fun ++!417 (List!2140 List!2140) List!2140)

(declare-fun last!14 (List!2140) B!673)

(assert (=> d!30416 (= (++!417 lt!38592 (Cons!2134 (last!14 l!3350) Nil!2134)) l!3350)))

(declare-fun e!74315 () List!2140)

(assert (=> d!30416 (= lt!38592 e!74315)))

(declare-fun c!28146 () Bool)

(assert (=> d!30416 (= c!28146 (and ((_ is Cons!2134) l!3350) ((_ is Nil!2134) (t!22726 l!3350))))))

(declare-fun isEmpty!855 (List!2140) Bool)

(assert (=> d!30416 (not (isEmpty!855 l!3350))))

(assert (=> d!30416 (= (removeLast!10 l!3350) lt!38592)))

(declare-fun b!129055 () Bool)

(assert (=> b!129055 (= e!74315 Nil!2134)))

(declare-fun b!129056 () Bool)

(assert (=> b!129056 (= e!74315 (Cons!2134 (h!7531 l!3350) (removeLast!10 (t!22726 l!3350))))))

(assert (= (and d!30416 c!28146) b!129055))

(assert (= (and d!30416 (not c!28146)) b!129056))

(declare-fun m!113559 () Bool)

(assert (=> d!30416 m!113559))

(declare-fun m!113561 () Bool)

(assert (=> d!30416 m!113561))

(declare-fun m!113563 () Bool)

(assert (=> d!30416 m!113563))

(declare-fun m!113565 () Bool)

(assert (=> b!129056 m!113565))

(assert (=> b!129031 d!30416))

(declare-fun d!30422 () Bool)

(declare-fun lt!38594 () Int)

(assert (=> d!30422 (>= lt!38594 0)))

(declare-fun e!74317 () Int)

(assert (=> d!30422 (= lt!38594 e!74317)))

(declare-fun c!28148 () Bool)

(assert (=> d!30422 (= c!28148 ((_ is Nil!2134) l!3350))))

(assert (=> d!30422 (= (size!1977 l!3350) lt!38594)))

(declare-fun b!129059 () Bool)

(assert (=> b!129059 (= e!74317 0)))

(declare-fun b!129060 () Bool)

(assert (=> b!129060 (= e!74317 (+ 1 (size!1977 (t!22726 l!3350))))))

(assert (= (and d!30422 c!28148) b!129059))

(assert (= (and d!30422 (not c!28148)) b!129060))

(declare-fun m!113575 () Bool)

(assert (=> b!129060 m!113575))

(assert (=> start!13370 d!30422))

(declare-fun b!129070 () Bool)

(declare-fun e!74323 () Bool)

(declare-fun tp!70090 () Bool)

(assert (=> b!129070 (= e!74323 (and tp_is_empty!1317 tp!70090))))

(assert (=> b!129032 (= tp!70084 e!74323)))

(assert (= (and b!129032 ((_ is Cons!2134) (t!22726 l!3350))) b!129070))

(check-sat (not b!129060) (not d!30416) (not b!129042) (not b!129070) (not b!129056) tp_is_empty!1317)
(check-sat)
(get-model)

(declare-fun d!30424 () Bool)

(declare-fun e!74329 () Bool)

(assert (=> d!30424 e!74329))

(declare-fun res!59373 () Bool)

(assert (=> d!30424 (=> (not res!59373) (not e!74329))))

(declare-fun lt!38597 () List!2140)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!256 (List!2140) (InoxSet B!673))

(assert (=> d!30424 (= res!59373 (= (content!256 lt!38597) ((_ map or) (content!256 lt!38592) (content!256 (Cons!2134 (last!14 l!3350) Nil!2134)))))))

(declare-fun e!74328 () List!2140)

(assert (=> d!30424 (= lt!38597 e!74328)))

(declare-fun c!28151 () Bool)

(assert (=> d!30424 (= c!28151 ((_ is Nil!2134) lt!38592))))

(assert (=> d!30424 (= (++!417 lt!38592 (Cons!2134 (last!14 l!3350) Nil!2134)) lt!38597)))

(declare-fun b!129081 () Bool)

(declare-fun res!59374 () Bool)

(assert (=> b!129081 (=> (not res!59374) (not e!74329))))

(assert (=> b!129081 (= res!59374 (= (size!1977 lt!38597) (+ (size!1977 lt!38592) (size!1977 (Cons!2134 (last!14 l!3350) Nil!2134)))))))

(declare-fun b!129080 () Bool)

(assert (=> b!129080 (= e!74328 (Cons!2134 (h!7531 lt!38592) (++!417 (t!22726 lt!38592) (Cons!2134 (last!14 l!3350) Nil!2134))))))

(declare-fun b!129079 () Bool)

(assert (=> b!129079 (= e!74328 (Cons!2134 (last!14 l!3350) Nil!2134))))

(declare-fun b!129082 () Bool)

(assert (=> b!129082 (= e!74329 (or (not (= (Cons!2134 (last!14 l!3350) Nil!2134) Nil!2134)) (= lt!38597 lt!38592)))))

(assert (= (and d!30424 c!28151) b!129079))

(assert (= (and d!30424 (not c!28151)) b!129080))

(assert (= (and d!30424 res!59373) b!129081))

(assert (= (and b!129081 res!59374) b!129082))

(declare-fun m!113577 () Bool)

(assert (=> d!30424 m!113577))

(declare-fun m!113579 () Bool)

(assert (=> d!30424 m!113579))

(declare-fun m!113581 () Bool)

(assert (=> d!30424 m!113581))

(declare-fun m!113583 () Bool)

(assert (=> b!129081 m!113583))

(declare-fun m!113585 () Bool)

(assert (=> b!129081 m!113585))

(declare-fun m!113587 () Bool)

(assert (=> b!129081 m!113587))

(declare-fun m!113589 () Bool)

(assert (=> b!129080 m!113589))

(assert (=> d!30416 d!30424))

(declare-fun d!30426 () Bool)

(declare-fun lt!38601 () B!673)

(declare-fun contains!313 (List!2140 B!673) Bool)

(assert (=> d!30426 (contains!313 l!3350 lt!38601)))

(declare-fun e!74333 () B!673)

(assert (=> d!30426 (= lt!38601 e!74333)))

(declare-fun c!28155 () Bool)

(assert (=> d!30426 (= c!28155 (and ((_ is Cons!2134) l!3350) ((_ is Nil!2134) (t!22726 l!3350))))))

(assert (=> d!30426 (not (isEmpty!855 l!3350))))

(assert (=> d!30426 (= (last!14 l!3350) lt!38601)))

(declare-fun b!129089 () Bool)

(assert (=> b!129089 (= e!74333 (h!7531 l!3350))))

(declare-fun b!129090 () Bool)

(assert (=> b!129090 (= e!74333 (last!14 (t!22726 l!3350)))))

(assert (= (and d!30426 c!28155) b!129089))

(assert (= (and d!30426 (not c!28155)) b!129090))

(declare-fun m!113591 () Bool)

(assert (=> d!30426 m!113591))

(assert (=> d!30426 m!113563))

(declare-fun m!113593 () Bool)

(assert (=> b!129090 m!113593))

(assert (=> d!30416 d!30426))

(declare-fun d!30430 () Bool)

(assert (=> d!30430 (= (isEmpty!855 l!3350) ((_ is Nil!2134) l!3350))))

(assert (=> d!30416 d!30430))

(declare-fun d!30436 () Bool)

(declare-fun lt!38604 () Int)

(assert (=> d!30436 (>= lt!38604 0)))

(declare-fun e!74336 () Int)

(assert (=> d!30436 (= lt!38604 e!74336)))

(declare-fun c!28158 () Bool)

(assert (=> d!30436 (= c!28158 ((_ is Nil!2134) (t!22726 l!3350)))))

(assert (=> d!30436 (= (size!1977 (t!22726 l!3350)) lt!38604)))

(declare-fun b!129095 () Bool)

(assert (=> b!129095 (= e!74336 0)))

(declare-fun b!129096 () Bool)

(assert (=> b!129096 (= e!74336 (+ 1 (size!1977 (t!22726 (t!22726 l!3350)))))))

(assert (= (and d!30436 c!28158) b!129095))

(assert (= (and d!30436 (not c!28158)) b!129096))

(declare-fun m!113607 () Bool)

(assert (=> b!129096 m!113607))

(assert (=> b!129060 d!30436))

(declare-fun d!30440 () Bool)

(declare-fun lt!38605 () Int)

(assert (=> d!30440 (>= lt!38605 0)))

(declare-fun e!74337 () Int)

(assert (=> d!30440 (= lt!38605 e!74337)))

(declare-fun c!28159 () Bool)

(assert (=> d!30440 (= c!28159 ((_ is Nil!2134) (t!22726 (removeLast!10 l!3350))))))

(assert (=> d!30440 (= (size!1977 (t!22726 (removeLast!10 l!3350))) lt!38605)))

(declare-fun b!129097 () Bool)

(assert (=> b!129097 (= e!74337 0)))

(declare-fun b!129098 () Bool)

(assert (=> b!129098 (= e!74337 (+ 1 (size!1977 (t!22726 (t!22726 (removeLast!10 l!3350))))))))

(assert (= (and d!30440 c!28159) b!129097))

(assert (= (and d!30440 (not c!28159)) b!129098))

(declare-fun m!113609 () Bool)

(assert (=> b!129098 m!113609))

(assert (=> b!129042 d!30440))

(declare-fun d!30442 () Bool)

(declare-fun lt!38606 () List!2140)

(assert (=> d!30442 (= (++!417 lt!38606 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)) (t!22726 l!3350))))

(declare-fun e!74338 () List!2140)

(assert (=> d!30442 (= lt!38606 e!74338)))

(declare-fun c!28160 () Bool)

(assert (=> d!30442 (= c!28160 (and ((_ is Cons!2134) (t!22726 l!3350)) ((_ is Nil!2134) (t!22726 (t!22726 l!3350)))))))

(assert (=> d!30442 (not (isEmpty!855 (t!22726 l!3350)))))

(assert (=> d!30442 (= (removeLast!10 (t!22726 l!3350)) lt!38606)))

(declare-fun b!129099 () Bool)

(assert (=> b!129099 (= e!74338 Nil!2134)))

(declare-fun b!129100 () Bool)

(assert (=> b!129100 (= e!74338 (Cons!2134 (h!7531 (t!22726 l!3350)) (removeLast!10 (t!22726 (t!22726 l!3350)))))))

(assert (= (and d!30442 c!28160) b!129099))

(assert (= (and d!30442 (not c!28160)) b!129100))

(assert (=> d!30442 m!113593))

(declare-fun m!113611 () Bool)

(assert (=> d!30442 m!113611))

(declare-fun m!113613 () Bool)

(assert (=> d!30442 m!113613))

(declare-fun m!113615 () Bool)

(assert (=> b!129100 m!113615))

(assert (=> b!129056 d!30442))

(declare-fun b!129101 () Bool)

(declare-fun e!74339 () Bool)

(declare-fun tp!70091 () Bool)

(assert (=> b!129101 (= e!74339 (and tp_is_empty!1317 tp!70091))))

(assert (=> b!129070 (= tp!70090 e!74339)))

(assert (= (and b!129070 ((_ is Cons!2134) (t!22726 (t!22726 l!3350)))) b!129101))

(check-sat (not d!30426) (not b!129096) (not d!30424) (not b!129090) (not b!129080) tp_is_empty!1317 (not b!129081) (not b!129101) (not b!129098) (not d!30442) (not b!129100))
(check-sat)
(get-model)

(declare-fun d!30448 () Bool)

(declare-fun lt!38613 () B!673)

(assert (=> d!30448 (contains!313 (t!22726 l!3350) lt!38613)))

(declare-fun e!74350 () B!673)

(assert (=> d!30448 (= lt!38613 e!74350)))

(declare-fun c!28167 () Bool)

(assert (=> d!30448 (= c!28167 (and ((_ is Cons!2134) (t!22726 l!3350)) ((_ is Nil!2134) (t!22726 (t!22726 l!3350)))))))

(assert (=> d!30448 (not (isEmpty!855 (t!22726 l!3350)))))

(assert (=> d!30448 (= (last!14 (t!22726 l!3350)) lt!38613)))

(declare-fun b!129121 () Bool)

(assert (=> b!129121 (= e!74350 (h!7531 (t!22726 l!3350)))))

(declare-fun b!129122 () Bool)

(assert (=> b!129122 (= e!74350 (last!14 (t!22726 (t!22726 l!3350))))))

(assert (= (and d!30448 c!28167) b!129121))

(assert (= (and d!30448 (not c!28167)) b!129122))

(declare-fun m!113633 () Bool)

(assert (=> d!30448 m!113633))

(assert (=> d!30448 m!113613))

(declare-fun m!113635 () Bool)

(assert (=> b!129122 m!113635))

(assert (=> b!129090 d!30448))

(declare-fun d!30450 () Bool)

(declare-fun lt!38614 () Int)

(assert (=> d!30450 (>= lt!38614 0)))

(declare-fun e!74351 () Int)

(assert (=> d!30450 (= lt!38614 e!74351)))

(declare-fun c!28168 () Bool)

(assert (=> d!30450 (= c!28168 ((_ is Nil!2134) (t!22726 (t!22726 (removeLast!10 l!3350)))))))

(assert (=> d!30450 (= (size!1977 (t!22726 (t!22726 (removeLast!10 l!3350)))) lt!38614)))

(declare-fun b!129123 () Bool)

(assert (=> b!129123 (= e!74351 0)))

(declare-fun b!129124 () Bool)

(assert (=> b!129124 (= e!74351 (+ 1 (size!1977 (t!22726 (t!22726 (t!22726 (removeLast!10 l!3350)))))))))

(assert (= (and d!30450 c!28168) b!129123))

(assert (= (and d!30450 (not c!28168)) b!129124))

(declare-fun m!113637 () Bool)

(assert (=> b!129124 m!113637))

(assert (=> b!129098 d!30450))

(declare-fun d!30452 () Bool)

(declare-fun e!74353 () Bool)

(assert (=> d!30452 e!74353))

(declare-fun res!59381 () Bool)

(assert (=> d!30452 (=> (not res!59381) (not e!74353))))

(declare-fun lt!38615 () List!2140)

(assert (=> d!30452 (= res!59381 (= (content!256 lt!38615) ((_ map or) (content!256 (t!22726 lt!38592)) (content!256 (Cons!2134 (last!14 l!3350) Nil!2134)))))))

(declare-fun e!74352 () List!2140)

(assert (=> d!30452 (= lt!38615 e!74352)))

(declare-fun c!28169 () Bool)

(assert (=> d!30452 (= c!28169 ((_ is Nil!2134) (t!22726 lt!38592)))))

(assert (=> d!30452 (= (++!417 (t!22726 lt!38592) (Cons!2134 (last!14 l!3350) Nil!2134)) lt!38615)))

(declare-fun b!129127 () Bool)

(declare-fun res!59382 () Bool)

(assert (=> b!129127 (=> (not res!59382) (not e!74353))))

(assert (=> b!129127 (= res!59382 (= (size!1977 lt!38615) (+ (size!1977 (t!22726 lt!38592)) (size!1977 (Cons!2134 (last!14 l!3350) Nil!2134)))))))

(declare-fun b!129126 () Bool)

(assert (=> b!129126 (= e!74352 (Cons!2134 (h!7531 (t!22726 lt!38592)) (++!417 (t!22726 (t!22726 lt!38592)) (Cons!2134 (last!14 l!3350) Nil!2134))))))

(declare-fun b!129125 () Bool)

(assert (=> b!129125 (= e!74352 (Cons!2134 (last!14 l!3350) Nil!2134))))

(declare-fun b!129128 () Bool)

(assert (=> b!129128 (= e!74353 (or (not (= (Cons!2134 (last!14 l!3350) Nil!2134) Nil!2134)) (= lt!38615 (t!22726 lt!38592))))))

(assert (= (and d!30452 c!28169) b!129125))

(assert (= (and d!30452 (not c!28169)) b!129126))

(assert (= (and d!30452 res!59381) b!129127))

(assert (= (and b!129127 res!59382) b!129128))

(declare-fun m!113639 () Bool)

(assert (=> d!30452 m!113639))

(declare-fun m!113641 () Bool)

(assert (=> d!30452 m!113641))

(assert (=> d!30452 m!113581))

(declare-fun m!113643 () Bool)

(assert (=> b!129127 m!113643))

(declare-fun m!113645 () Bool)

(assert (=> b!129127 m!113645))

(assert (=> b!129127 m!113587))

(declare-fun m!113647 () Bool)

(assert (=> b!129126 m!113647))

(assert (=> b!129080 d!30452))

(declare-fun d!30454 () Bool)

(declare-fun c!28172 () Bool)

(assert (=> d!30454 (= c!28172 ((_ is Nil!2134) lt!38597))))

(declare-fun e!74356 () (InoxSet B!673))

(assert (=> d!30454 (= (content!256 lt!38597) e!74356)))

(declare-fun b!129133 () Bool)

(assert (=> b!129133 (= e!74356 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129134 () Bool)

(assert (=> b!129134 (= e!74356 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 lt!38597) true) (content!256 (t!22726 lt!38597))))))

(assert (= (and d!30454 c!28172) b!129133))

(assert (= (and d!30454 (not c!28172)) b!129134))

(declare-fun m!113649 () Bool)

(assert (=> b!129134 m!113649))

(declare-fun m!113651 () Bool)

(assert (=> b!129134 m!113651))

(assert (=> d!30424 d!30454))

(declare-fun d!30456 () Bool)

(declare-fun c!28173 () Bool)

(assert (=> d!30456 (= c!28173 ((_ is Nil!2134) lt!38592))))

(declare-fun e!74357 () (InoxSet B!673))

(assert (=> d!30456 (= (content!256 lt!38592) e!74357)))

(declare-fun b!129135 () Bool)

(assert (=> b!129135 (= e!74357 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129136 () Bool)

(assert (=> b!129136 (= e!74357 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 lt!38592) true) (content!256 (t!22726 lt!38592))))))

(assert (= (and d!30456 c!28173) b!129135))

(assert (= (and d!30456 (not c!28173)) b!129136))

(declare-fun m!113653 () Bool)

(assert (=> b!129136 m!113653))

(assert (=> b!129136 m!113641))

(assert (=> d!30424 d!30456))

(declare-fun d!30458 () Bool)

(declare-fun c!28174 () Bool)

(assert (=> d!30458 (= c!28174 ((_ is Nil!2134) (Cons!2134 (last!14 l!3350) Nil!2134)))))

(declare-fun e!74358 () (InoxSet B!673))

(assert (=> d!30458 (= (content!256 (Cons!2134 (last!14 l!3350) Nil!2134)) e!74358)))

(declare-fun b!129137 () Bool)

(assert (=> b!129137 (= e!74358 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129138 () Bool)

(assert (=> b!129138 (= e!74358 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 (Cons!2134 (last!14 l!3350) Nil!2134)) true) (content!256 (t!22726 (Cons!2134 (last!14 l!3350) Nil!2134)))))))

(assert (= (and d!30458 c!28174) b!129137))

(assert (= (and d!30458 (not c!28174)) b!129138))

(declare-fun m!113655 () Bool)

(assert (=> b!129138 m!113655))

(declare-fun m!113657 () Bool)

(assert (=> b!129138 m!113657))

(assert (=> d!30424 d!30458))

(declare-fun d!30460 () Bool)

(declare-fun lt!38616 () Int)

(assert (=> d!30460 (>= lt!38616 0)))

(declare-fun e!74359 () Int)

(assert (=> d!30460 (= lt!38616 e!74359)))

(declare-fun c!28175 () Bool)

(assert (=> d!30460 (= c!28175 ((_ is Nil!2134) lt!38597))))

(assert (=> d!30460 (= (size!1977 lt!38597) lt!38616)))

(declare-fun b!129139 () Bool)

(assert (=> b!129139 (= e!74359 0)))

(declare-fun b!129140 () Bool)

(assert (=> b!129140 (= e!74359 (+ 1 (size!1977 (t!22726 lt!38597))))))

(assert (= (and d!30460 c!28175) b!129139))

(assert (= (and d!30460 (not c!28175)) b!129140))

(declare-fun m!113659 () Bool)

(assert (=> b!129140 m!113659))

(assert (=> b!129081 d!30460))

(declare-fun d!30462 () Bool)

(declare-fun lt!38617 () Int)

(assert (=> d!30462 (>= lt!38617 0)))

(declare-fun e!74360 () Int)

(assert (=> d!30462 (= lt!38617 e!74360)))

(declare-fun c!28176 () Bool)

(assert (=> d!30462 (= c!28176 ((_ is Nil!2134) lt!38592))))

(assert (=> d!30462 (= (size!1977 lt!38592) lt!38617)))

(declare-fun b!129141 () Bool)

(assert (=> b!129141 (= e!74360 0)))

(declare-fun b!129142 () Bool)

(assert (=> b!129142 (= e!74360 (+ 1 (size!1977 (t!22726 lt!38592))))))

(assert (= (and d!30462 c!28176) b!129141))

(assert (= (and d!30462 (not c!28176)) b!129142))

(assert (=> b!129142 m!113645))

(assert (=> b!129081 d!30462))

(declare-fun d!30464 () Bool)

(declare-fun lt!38618 () Int)

(assert (=> d!30464 (>= lt!38618 0)))

(declare-fun e!74361 () Int)

(assert (=> d!30464 (= lt!38618 e!74361)))

(declare-fun c!28177 () Bool)

(assert (=> d!30464 (= c!28177 ((_ is Nil!2134) (Cons!2134 (last!14 l!3350) Nil!2134)))))

(assert (=> d!30464 (= (size!1977 (Cons!2134 (last!14 l!3350) Nil!2134)) lt!38618)))

(declare-fun b!129143 () Bool)

(assert (=> b!129143 (= e!74361 0)))

(declare-fun b!129144 () Bool)

(assert (=> b!129144 (= e!74361 (+ 1 (size!1977 (t!22726 (Cons!2134 (last!14 l!3350) Nil!2134)))))))

(assert (= (and d!30464 c!28177) b!129143))

(assert (= (and d!30464 (not c!28177)) b!129144))

(declare-fun m!113661 () Bool)

(assert (=> b!129144 m!113661))

(assert (=> b!129081 d!30464))

(declare-fun d!30466 () Bool)

(declare-fun e!74363 () Bool)

(assert (=> d!30466 e!74363))

(declare-fun res!59383 () Bool)

(assert (=> d!30466 (=> (not res!59383) (not e!74363))))

(declare-fun lt!38619 () List!2140)

(assert (=> d!30466 (= res!59383 (= (content!256 lt!38619) ((_ map or) (content!256 lt!38606) (content!256 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)))))))

(declare-fun e!74362 () List!2140)

(assert (=> d!30466 (= lt!38619 e!74362)))

(declare-fun c!28178 () Bool)

(assert (=> d!30466 (= c!28178 ((_ is Nil!2134) lt!38606))))

(assert (=> d!30466 (= (++!417 lt!38606 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)) lt!38619)))

(declare-fun b!129147 () Bool)

(declare-fun res!59384 () Bool)

(assert (=> b!129147 (=> (not res!59384) (not e!74363))))

(assert (=> b!129147 (= res!59384 (= (size!1977 lt!38619) (+ (size!1977 lt!38606) (size!1977 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)))))))

(declare-fun b!129146 () Bool)

(assert (=> b!129146 (= e!74362 (Cons!2134 (h!7531 lt!38606) (++!417 (t!22726 lt!38606) (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134))))))

(declare-fun b!129145 () Bool)

(assert (=> b!129145 (= e!74362 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134))))

(declare-fun b!129148 () Bool)

(assert (=> b!129148 (= e!74363 (or (not (= (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134) Nil!2134)) (= lt!38619 lt!38606)))))

(assert (= (and d!30466 c!28178) b!129145))

(assert (= (and d!30466 (not c!28178)) b!129146))

(assert (= (and d!30466 res!59383) b!129147))

(assert (= (and b!129147 res!59384) b!129148))

(declare-fun m!113663 () Bool)

(assert (=> d!30466 m!113663))

(declare-fun m!113665 () Bool)

(assert (=> d!30466 m!113665))

(declare-fun m!113667 () Bool)

(assert (=> d!30466 m!113667))

(declare-fun m!113669 () Bool)

(assert (=> b!129147 m!113669))

(declare-fun m!113671 () Bool)

(assert (=> b!129147 m!113671))

(declare-fun m!113673 () Bool)

(assert (=> b!129147 m!113673))

(declare-fun m!113675 () Bool)

(assert (=> b!129146 m!113675))

(assert (=> d!30442 d!30466))

(assert (=> d!30442 d!30448))

(declare-fun d!30468 () Bool)

(assert (=> d!30468 (= (isEmpty!855 (t!22726 l!3350)) ((_ is Nil!2134) (t!22726 l!3350)))))

(assert (=> d!30442 d!30468))

(declare-fun d!30470 () Bool)

(declare-fun lt!38620 () Int)

(assert (=> d!30470 (>= lt!38620 0)))

(declare-fun e!74364 () Int)

(assert (=> d!30470 (= lt!38620 e!74364)))

(declare-fun c!28179 () Bool)

(assert (=> d!30470 (= c!28179 ((_ is Nil!2134) (t!22726 (t!22726 l!3350))))))

(assert (=> d!30470 (= (size!1977 (t!22726 (t!22726 l!3350))) lt!38620)))

(declare-fun b!129149 () Bool)

(assert (=> b!129149 (= e!74364 0)))

(declare-fun b!129150 () Bool)

(assert (=> b!129150 (= e!74364 (+ 1 (size!1977 (t!22726 (t!22726 (t!22726 l!3350))))))))

(assert (= (and d!30470 c!28179) b!129149))

(assert (= (and d!30470 (not c!28179)) b!129150))

(declare-fun m!113677 () Bool)

(assert (=> b!129150 m!113677))

(assert (=> b!129096 d!30470))

(declare-fun d!30472 () Bool)

(declare-fun lt!38621 () List!2140)

(assert (=> d!30472 (= (++!417 lt!38621 (Cons!2134 (last!14 (t!22726 (t!22726 l!3350))) Nil!2134)) (t!22726 (t!22726 l!3350)))))

(declare-fun e!74365 () List!2140)

(assert (=> d!30472 (= lt!38621 e!74365)))

(declare-fun c!28180 () Bool)

(assert (=> d!30472 (= c!28180 (and ((_ is Cons!2134) (t!22726 (t!22726 l!3350))) ((_ is Nil!2134) (t!22726 (t!22726 (t!22726 l!3350))))))))

(assert (=> d!30472 (not (isEmpty!855 (t!22726 (t!22726 l!3350))))))

(assert (=> d!30472 (= (removeLast!10 (t!22726 (t!22726 l!3350))) lt!38621)))

(declare-fun b!129151 () Bool)

(assert (=> b!129151 (= e!74365 Nil!2134)))

(declare-fun b!129152 () Bool)

(assert (=> b!129152 (= e!74365 (Cons!2134 (h!7531 (t!22726 (t!22726 l!3350))) (removeLast!10 (t!22726 (t!22726 (t!22726 l!3350))))))))

(assert (= (and d!30472 c!28180) b!129151))

(assert (= (and d!30472 (not c!28180)) b!129152))

(assert (=> d!30472 m!113635))

(declare-fun m!113679 () Bool)

(assert (=> d!30472 m!113679))

(declare-fun m!113681 () Bool)

(assert (=> d!30472 m!113681))

(declare-fun m!113683 () Bool)

(assert (=> b!129152 m!113683))

(assert (=> b!129100 d!30472))

(declare-fun d!30474 () Bool)

(declare-fun lt!38624 () Bool)

(assert (=> d!30474 (= lt!38624 (select (content!256 l!3350) lt!38601))))

(declare-fun e!74371 () Bool)

(assert (=> d!30474 (= lt!38624 e!74371)))

(declare-fun res!59390 () Bool)

(assert (=> d!30474 (=> (not res!59390) (not e!74371))))

(assert (=> d!30474 (= res!59390 ((_ is Cons!2134) l!3350))))

(assert (=> d!30474 (= (contains!313 l!3350 lt!38601) lt!38624)))

(declare-fun b!129157 () Bool)

(declare-fun e!74370 () Bool)

(assert (=> b!129157 (= e!74371 e!74370)))

(declare-fun res!59389 () Bool)

(assert (=> b!129157 (=> res!59389 e!74370)))

(assert (=> b!129157 (= res!59389 (= (h!7531 l!3350) lt!38601))))

(declare-fun b!129158 () Bool)

(assert (=> b!129158 (= e!74370 (contains!313 (t!22726 l!3350) lt!38601))))

(assert (= (and d!30474 res!59390) b!129157))

(assert (= (and b!129157 (not res!59389)) b!129158))

(declare-fun m!113685 () Bool)

(assert (=> d!30474 m!113685))

(declare-fun m!113687 () Bool)

(assert (=> d!30474 m!113687))

(declare-fun m!113689 () Bool)

(assert (=> b!129158 m!113689))

(assert (=> d!30426 d!30474))

(assert (=> d!30426 d!30430))

(declare-fun b!129159 () Bool)

(declare-fun e!74372 () Bool)

(declare-fun tp!70093 () Bool)

(assert (=> b!129159 (= e!74372 (and tp_is_empty!1317 tp!70093))))

(assert (=> b!129101 (= tp!70091 e!74372)))

(assert (= (and b!129101 ((_ is Cons!2134) (t!22726 (t!22726 (t!22726 l!3350))))) b!129159))

(check-sat (not b!129127) (not d!30472) (not d!30452) (not b!129150) (not d!30474) (not b!129142) (not b!129126) (not b!129159) (not b!129124) (not b!129138) (not b!129147) tp_is_empty!1317 (not b!129144) (not b!129146) (not b!129158) (not b!129152) (not b!129140) (not b!129136) (not b!129122) (not b!129134) (not d!30448) (not d!30466))
(check-sat)
(get-model)

(declare-fun d!30504 () Bool)

(declare-fun e!74397 () Bool)

(assert (=> d!30504 e!74397))

(declare-fun res!59401 () Bool)

(assert (=> d!30504 (=> (not res!59401) (not e!74397))))

(declare-fun lt!38637 () List!2140)

(assert (=> d!30504 (= res!59401 (= (content!256 lt!38637) ((_ map or) (content!256 (t!22726 (t!22726 lt!38592))) (content!256 (Cons!2134 (last!14 l!3350) Nil!2134)))))))

(declare-fun e!74396 () List!2140)

(assert (=> d!30504 (= lt!38637 e!74396)))

(declare-fun c!28195 () Bool)

(assert (=> d!30504 (= c!28195 ((_ is Nil!2134) (t!22726 (t!22726 lt!38592))))))

(assert (=> d!30504 (= (++!417 (t!22726 (t!22726 lt!38592)) (Cons!2134 (last!14 l!3350) Nil!2134)) lt!38637)))

(declare-fun b!129201 () Bool)

(declare-fun res!59402 () Bool)

(assert (=> b!129201 (=> (not res!59402) (not e!74397))))

(assert (=> b!129201 (= res!59402 (= (size!1977 lt!38637) (+ (size!1977 (t!22726 (t!22726 lt!38592))) (size!1977 (Cons!2134 (last!14 l!3350) Nil!2134)))))))

(declare-fun b!129200 () Bool)

(assert (=> b!129200 (= e!74396 (Cons!2134 (h!7531 (t!22726 (t!22726 lt!38592))) (++!417 (t!22726 (t!22726 (t!22726 lt!38592))) (Cons!2134 (last!14 l!3350) Nil!2134))))))

(declare-fun b!129199 () Bool)

(assert (=> b!129199 (= e!74396 (Cons!2134 (last!14 l!3350) Nil!2134))))

(declare-fun b!129202 () Bool)

(assert (=> b!129202 (= e!74397 (or (not (= (Cons!2134 (last!14 l!3350) Nil!2134) Nil!2134)) (= lt!38637 (t!22726 (t!22726 lt!38592)))))))

(assert (= (and d!30504 c!28195) b!129199))

(assert (= (and d!30504 (not c!28195)) b!129200))

(assert (= (and d!30504 res!59401) b!129201))

(assert (= (and b!129201 res!59402) b!129202))

(declare-fun m!113749 () Bool)

(assert (=> d!30504 m!113749))

(declare-fun m!113751 () Bool)

(assert (=> d!30504 m!113751))

(assert (=> d!30504 m!113581))

(declare-fun m!113753 () Bool)

(assert (=> b!129201 m!113753))

(declare-fun m!113755 () Bool)

(assert (=> b!129201 m!113755))

(assert (=> b!129201 m!113587))

(declare-fun m!113757 () Bool)

(assert (=> b!129200 m!113757))

(assert (=> b!129126 d!30504))

(declare-fun d!30506 () Bool)

(declare-fun c!28196 () Bool)

(assert (=> d!30506 (= c!28196 ((_ is Nil!2134) (t!22726 lt!38597)))))

(declare-fun e!74398 () (InoxSet B!673))

(assert (=> d!30506 (= (content!256 (t!22726 lt!38597)) e!74398)))

(declare-fun b!129203 () Bool)

(assert (=> b!129203 (= e!74398 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129204 () Bool)

(assert (=> b!129204 (= e!74398 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 (t!22726 lt!38597)) true) (content!256 (t!22726 (t!22726 lt!38597)))))))

(assert (= (and d!30506 c!28196) b!129203))

(assert (= (and d!30506 (not c!28196)) b!129204))

(declare-fun m!113759 () Bool)

(assert (=> b!129204 m!113759))

(declare-fun m!113761 () Bool)

(assert (=> b!129204 m!113761))

(assert (=> b!129134 d!30506))

(declare-fun d!30508 () Bool)

(declare-fun e!74400 () Bool)

(assert (=> d!30508 e!74400))

(declare-fun res!59403 () Bool)

(assert (=> d!30508 (=> (not res!59403) (not e!74400))))

(declare-fun lt!38638 () List!2140)

(assert (=> d!30508 (= res!59403 (= (content!256 lt!38638) ((_ map or) (content!256 lt!38621) (content!256 (Cons!2134 (last!14 (t!22726 (t!22726 l!3350))) Nil!2134)))))))

(declare-fun e!74399 () List!2140)

(assert (=> d!30508 (= lt!38638 e!74399)))

(declare-fun c!28197 () Bool)

(assert (=> d!30508 (= c!28197 ((_ is Nil!2134) lt!38621))))

(assert (=> d!30508 (= (++!417 lt!38621 (Cons!2134 (last!14 (t!22726 (t!22726 l!3350))) Nil!2134)) lt!38638)))

(declare-fun b!129207 () Bool)

(declare-fun res!59404 () Bool)

(assert (=> b!129207 (=> (not res!59404) (not e!74400))))

(assert (=> b!129207 (= res!59404 (= (size!1977 lt!38638) (+ (size!1977 lt!38621) (size!1977 (Cons!2134 (last!14 (t!22726 (t!22726 l!3350))) Nil!2134)))))))

(declare-fun b!129206 () Bool)

(assert (=> b!129206 (= e!74399 (Cons!2134 (h!7531 lt!38621) (++!417 (t!22726 lt!38621) (Cons!2134 (last!14 (t!22726 (t!22726 l!3350))) Nil!2134))))))

(declare-fun b!129205 () Bool)

(assert (=> b!129205 (= e!74399 (Cons!2134 (last!14 (t!22726 (t!22726 l!3350))) Nil!2134))))

(declare-fun b!129208 () Bool)

(assert (=> b!129208 (= e!74400 (or (not (= (Cons!2134 (last!14 (t!22726 (t!22726 l!3350))) Nil!2134) Nil!2134)) (= lt!38638 lt!38621)))))

(assert (= (and d!30508 c!28197) b!129205))

(assert (= (and d!30508 (not c!28197)) b!129206))

(assert (= (and d!30508 res!59403) b!129207))

(assert (= (and b!129207 res!59404) b!129208))

(declare-fun m!113763 () Bool)

(assert (=> d!30508 m!113763))

(declare-fun m!113765 () Bool)

(assert (=> d!30508 m!113765))

(declare-fun m!113767 () Bool)

(assert (=> d!30508 m!113767))

(declare-fun m!113769 () Bool)

(assert (=> b!129207 m!113769))

(declare-fun m!113771 () Bool)

(assert (=> b!129207 m!113771))

(declare-fun m!113773 () Bool)

(assert (=> b!129207 m!113773))

(declare-fun m!113775 () Bool)

(assert (=> b!129206 m!113775))

(assert (=> d!30472 d!30508))

(declare-fun d!30510 () Bool)

(declare-fun lt!38639 () B!673)

(assert (=> d!30510 (contains!313 (t!22726 (t!22726 l!3350)) lt!38639)))

(declare-fun e!74401 () B!673)

(assert (=> d!30510 (= lt!38639 e!74401)))

(declare-fun c!28198 () Bool)

(assert (=> d!30510 (= c!28198 (and ((_ is Cons!2134) (t!22726 (t!22726 l!3350))) ((_ is Nil!2134) (t!22726 (t!22726 (t!22726 l!3350))))))))

(assert (=> d!30510 (not (isEmpty!855 (t!22726 (t!22726 l!3350))))))

(assert (=> d!30510 (= (last!14 (t!22726 (t!22726 l!3350))) lt!38639)))

(declare-fun b!129209 () Bool)

(assert (=> b!129209 (= e!74401 (h!7531 (t!22726 (t!22726 l!3350))))))

(declare-fun b!129210 () Bool)

(assert (=> b!129210 (= e!74401 (last!14 (t!22726 (t!22726 (t!22726 l!3350)))))))

(assert (= (and d!30510 c!28198) b!129209))

(assert (= (and d!30510 (not c!28198)) b!129210))

(declare-fun m!113777 () Bool)

(assert (=> d!30510 m!113777))

(assert (=> d!30510 m!113681))

(declare-fun m!113779 () Bool)

(assert (=> b!129210 m!113779))

(assert (=> d!30472 d!30510))

(declare-fun d!30512 () Bool)

(assert (=> d!30512 (= (isEmpty!855 (t!22726 (t!22726 l!3350))) ((_ is Nil!2134) (t!22726 (t!22726 l!3350))))))

(assert (=> d!30472 d!30512))

(declare-fun d!30514 () Bool)

(declare-fun lt!38640 () Int)

(assert (=> d!30514 (>= lt!38640 0)))

(declare-fun e!74402 () Int)

(assert (=> d!30514 (= lt!38640 e!74402)))

(declare-fun c!28199 () Bool)

(assert (=> d!30514 (= c!28199 ((_ is Nil!2134) (t!22726 (t!22726 (t!22726 (removeLast!10 l!3350))))))))

(assert (=> d!30514 (= (size!1977 (t!22726 (t!22726 (t!22726 (removeLast!10 l!3350))))) lt!38640)))

(declare-fun b!129211 () Bool)

(assert (=> b!129211 (= e!74402 0)))

(declare-fun b!129212 () Bool)

(assert (=> b!129212 (= e!74402 (+ 1 (size!1977 (t!22726 (t!22726 (t!22726 (t!22726 (removeLast!10 l!3350))))))))))

(assert (= (and d!30514 c!28199) b!129211))

(assert (= (and d!30514 (not c!28199)) b!129212))

(declare-fun m!113781 () Bool)

(assert (=> b!129212 m!113781))

(assert (=> b!129124 d!30514))

(assert (=> b!129122 d!30510))

(declare-fun d!30516 () Bool)

(declare-fun e!74404 () Bool)

(assert (=> d!30516 e!74404))

(declare-fun res!59405 () Bool)

(assert (=> d!30516 (=> (not res!59405) (not e!74404))))

(declare-fun lt!38641 () List!2140)

(assert (=> d!30516 (= res!59405 (= (content!256 lt!38641) ((_ map or) (content!256 (t!22726 lt!38606)) (content!256 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)))))))

(declare-fun e!74403 () List!2140)

(assert (=> d!30516 (= lt!38641 e!74403)))

(declare-fun c!28200 () Bool)

(assert (=> d!30516 (= c!28200 ((_ is Nil!2134) (t!22726 lt!38606)))))

(assert (=> d!30516 (= (++!417 (t!22726 lt!38606) (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)) lt!38641)))

(declare-fun b!129215 () Bool)

(declare-fun res!59406 () Bool)

(assert (=> b!129215 (=> (not res!59406) (not e!74404))))

(assert (=> b!129215 (= res!59406 (= (size!1977 lt!38641) (+ (size!1977 (t!22726 lt!38606)) (size!1977 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)))))))

(declare-fun b!129214 () Bool)

(assert (=> b!129214 (= e!74403 (Cons!2134 (h!7531 (t!22726 lt!38606)) (++!417 (t!22726 (t!22726 lt!38606)) (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134))))))

(declare-fun b!129213 () Bool)

(assert (=> b!129213 (= e!74403 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134))))

(declare-fun b!129216 () Bool)

(assert (=> b!129216 (= e!74404 (or (not (= (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134) Nil!2134)) (= lt!38641 (t!22726 lt!38606))))))

(assert (= (and d!30516 c!28200) b!129213))

(assert (= (and d!30516 (not c!28200)) b!129214))

(assert (= (and d!30516 res!59405) b!129215))

(assert (= (and b!129215 res!59406) b!129216))

(declare-fun m!113783 () Bool)

(assert (=> d!30516 m!113783))

(declare-fun m!113785 () Bool)

(assert (=> d!30516 m!113785))

(assert (=> d!30516 m!113667))

(declare-fun m!113787 () Bool)

(assert (=> b!129215 m!113787))

(declare-fun m!113789 () Bool)

(assert (=> b!129215 m!113789))

(assert (=> b!129215 m!113673))

(declare-fun m!113791 () Bool)

(assert (=> b!129214 m!113791))

(assert (=> b!129146 d!30516))

(declare-fun d!30518 () Bool)

(declare-fun lt!38642 () Int)

(assert (=> d!30518 (>= lt!38642 0)))

(declare-fun e!74405 () Int)

(assert (=> d!30518 (= lt!38642 e!74405)))

(declare-fun c!28201 () Bool)

(assert (=> d!30518 (= c!28201 ((_ is Nil!2134) lt!38619))))

(assert (=> d!30518 (= (size!1977 lt!38619) lt!38642)))

(declare-fun b!129217 () Bool)

(assert (=> b!129217 (= e!74405 0)))

(declare-fun b!129218 () Bool)

(assert (=> b!129218 (= e!74405 (+ 1 (size!1977 (t!22726 lt!38619))))))

(assert (= (and d!30518 c!28201) b!129217))

(assert (= (and d!30518 (not c!28201)) b!129218))

(declare-fun m!113793 () Bool)

(assert (=> b!129218 m!113793))

(assert (=> b!129147 d!30518))

(declare-fun d!30520 () Bool)

(declare-fun lt!38643 () Int)

(assert (=> d!30520 (>= lt!38643 0)))

(declare-fun e!74406 () Int)

(assert (=> d!30520 (= lt!38643 e!74406)))

(declare-fun c!28202 () Bool)

(assert (=> d!30520 (= c!28202 ((_ is Nil!2134) lt!38606))))

(assert (=> d!30520 (= (size!1977 lt!38606) lt!38643)))

(declare-fun b!129219 () Bool)

(assert (=> b!129219 (= e!74406 0)))

(declare-fun b!129220 () Bool)

(assert (=> b!129220 (= e!74406 (+ 1 (size!1977 (t!22726 lt!38606))))))

(assert (= (and d!30520 c!28202) b!129219))

(assert (= (and d!30520 (not c!28202)) b!129220))

(assert (=> b!129220 m!113789))

(assert (=> b!129147 d!30520))

(declare-fun d!30522 () Bool)

(declare-fun lt!38644 () Int)

(assert (=> d!30522 (>= lt!38644 0)))

(declare-fun e!74407 () Int)

(assert (=> d!30522 (= lt!38644 e!74407)))

(declare-fun c!28203 () Bool)

(assert (=> d!30522 (= c!28203 ((_ is Nil!2134) (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)))))

(assert (=> d!30522 (= (size!1977 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)) lt!38644)))

(declare-fun b!129221 () Bool)

(assert (=> b!129221 (= e!74407 0)))

(declare-fun b!129222 () Bool)

(assert (=> b!129222 (= e!74407 (+ 1 (size!1977 (t!22726 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)))))))

(assert (= (and d!30522 c!28203) b!129221))

(assert (= (and d!30522 (not c!28203)) b!129222))

(declare-fun m!113795 () Bool)

(assert (=> b!129222 m!113795))

(assert (=> b!129147 d!30522))

(declare-fun d!30524 () Bool)

(declare-fun c!28204 () Bool)

(assert (=> d!30524 (= c!28204 ((_ is Nil!2134) lt!38615))))

(declare-fun e!74408 () (InoxSet B!673))

(assert (=> d!30524 (= (content!256 lt!38615) e!74408)))

(declare-fun b!129223 () Bool)

(assert (=> b!129223 (= e!74408 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129224 () Bool)

(assert (=> b!129224 (= e!74408 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 lt!38615) true) (content!256 (t!22726 lt!38615))))))

(assert (= (and d!30524 c!28204) b!129223))

(assert (= (and d!30524 (not c!28204)) b!129224))

(declare-fun m!113797 () Bool)

(assert (=> b!129224 m!113797))

(declare-fun m!113799 () Bool)

(assert (=> b!129224 m!113799))

(assert (=> d!30452 d!30524))

(declare-fun d!30526 () Bool)

(declare-fun c!28205 () Bool)

(assert (=> d!30526 (= c!28205 ((_ is Nil!2134) (t!22726 lt!38592)))))

(declare-fun e!74409 () (InoxSet B!673))

(assert (=> d!30526 (= (content!256 (t!22726 lt!38592)) e!74409)))

(declare-fun b!129225 () Bool)

(assert (=> b!129225 (= e!74409 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129226 () Bool)

(assert (=> b!129226 (= e!74409 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 (t!22726 lt!38592)) true) (content!256 (t!22726 (t!22726 lt!38592)))))))

(assert (= (and d!30526 c!28205) b!129225))

(assert (= (and d!30526 (not c!28205)) b!129226))

(declare-fun m!113801 () Bool)

(assert (=> b!129226 m!113801))

(assert (=> b!129226 m!113751))

(assert (=> d!30452 d!30526))

(assert (=> d!30452 d!30458))

(declare-fun d!30528 () Bool)

(declare-fun lt!38645 () Int)

(assert (=> d!30528 (>= lt!38645 0)))

(declare-fun e!74410 () Int)

(assert (=> d!30528 (= lt!38645 e!74410)))

(declare-fun c!28206 () Bool)

(assert (=> d!30528 (= c!28206 ((_ is Nil!2134) (t!22726 (Cons!2134 (last!14 l!3350) Nil!2134))))))

(assert (=> d!30528 (= (size!1977 (t!22726 (Cons!2134 (last!14 l!3350) Nil!2134))) lt!38645)))

(declare-fun b!129227 () Bool)

(assert (=> b!129227 (= e!74410 0)))

(declare-fun b!129228 () Bool)

(assert (=> b!129228 (= e!74410 (+ 1 (size!1977 (t!22726 (t!22726 (Cons!2134 (last!14 l!3350) Nil!2134))))))))

(assert (= (and d!30528 c!28206) b!129227))

(assert (= (and d!30528 (not c!28206)) b!129228))

(declare-fun m!113803 () Bool)

(assert (=> b!129228 m!113803))

(assert (=> b!129144 d!30528))

(declare-fun d!30530 () Bool)

(declare-fun c!28207 () Bool)

(assert (=> d!30530 (= c!28207 ((_ is Nil!2134) l!3350))))

(declare-fun e!74411 () (InoxSet B!673))

(assert (=> d!30530 (= (content!256 l!3350) e!74411)))

(declare-fun b!129229 () Bool)

(assert (=> b!129229 (= e!74411 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129230 () Bool)

(assert (=> b!129230 (= e!74411 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 l!3350) true) (content!256 (t!22726 l!3350))))))

(assert (= (and d!30530 c!28207) b!129229))

(assert (= (and d!30530 (not c!28207)) b!129230))

(declare-fun m!113805 () Bool)

(assert (=> b!129230 m!113805))

(declare-fun m!113807 () Bool)

(assert (=> b!129230 m!113807))

(assert (=> d!30474 d!30530))

(declare-fun d!30532 () Bool)

(declare-fun lt!38646 () Int)

(assert (=> d!30532 (>= lt!38646 0)))

(declare-fun e!74412 () Int)

(assert (=> d!30532 (= lt!38646 e!74412)))

(declare-fun c!28208 () Bool)

(assert (=> d!30532 (= c!28208 ((_ is Nil!2134) lt!38615))))

(assert (=> d!30532 (= (size!1977 lt!38615) lt!38646)))

(declare-fun b!129231 () Bool)

(assert (=> b!129231 (= e!74412 0)))

(declare-fun b!129232 () Bool)

(assert (=> b!129232 (= e!74412 (+ 1 (size!1977 (t!22726 lt!38615))))))

(assert (= (and d!30532 c!28208) b!129231))

(assert (= (and d!30532 (not c!28208)) b!129232))

(declare-fun m!113809 () Bool)

(assert (=> b!129232 m!113809))

(assert (=> b!129127 d!30532))

(declare-fun d!30534 () Bool)

(declare-fun lt!38647 () Int)

(assert (=> d!30534 (>= lt!38647 0)))

(declare-fun e!74413 () Int)

(assert (=> d!30534 (= lt!38647 e!74413)))

(declare-fun c!28209 () Bool)

(assert (=> d!30534 (= c!28209 ((_ is Nil!2134) (t!22726 lt!38592)))))

(assert (=> d!30534 (= (size!1977 (t!22726 lt!38592)) lt!38647)))

(declare-fun b!129233 () Bool)

(assert (=> b!129233 (= e!74413 0)))

(declare-fun b!129234 () Bool)

(assert (=> b!129234 (= e!74413 (+ 1 (size!1977 (t!22726 (t!22726 lt!38592)))))))

(assert (= (and d!30534 c!28209) b!129233))

(assert (= (and d!30534 (not c!28209)) b!129234))

(assert (=> b!129234 m!113755))

(assert (=> b!129127 d!30534))

(assert (=> b!129127 d!30464))

(declare-fun d!30536 () Bool)

(declare-fun lt!38648 () Bool)

(assert (=> d!30536 (= lt!38648 (select (content!256 (t!22726 l!3350)) lt!38601))))

(declare-fun e!74415 () Bool)

(assert (=> d!30536 (= lt!38648 e!74415)))

(declare-fun res!59408 () Bool)

(assert (=> d!30536 (=> (not res!59408) (not e!74415))))

(assert (=> d!30536 (= res!59408 ((_ is Cons!2134) (t!22726 l!3350)))))

(assert (=> d!30536 (= (contains!313 (t!22726 l!3350) lt!38601) lt!38648)))

(declare-fun b!129235 () Bool)

(declare-fun e!74414 () Bool)

(assert (=> b!129235 (= e!74415 e!74414)))

(declare-fun res!59407 () Bool)

(assert (=> b!129235 (=> res!59407 e!74414)))

(assert (=> b!129235 (= res!59407 (= (h!7531 (t!22726 l!3350)) lt!38601))))

(declare-fun b!129236 () Bool)

(assert (=> b!129236 (= e!74414 (contains!313 (t!22726 (t!22726 l!3350)) lt!38601))))

(assert (= (and d!30536 res!59408) b!129235))

(assert (= (and b!129235 (not res!59407)) b!129236))

(assert (=> d!30536 m!113807))

(declare-fun m!113811 () Bool)

(assert (=> d!30536 m!113811))

(declare-fun m!113813 () Bool)

(assert (=> b!129236 m!113813))

(assert (=> b!129158 d!30536))

(declare-fun d!30538 () Bool)

(declare-fun c!28210 () Bool)

(assert (=> d!30538 (= c!28210 ((_ is Nil!2134) lt!38619))))

(declare-fun e!74416 () (InoxSet B!673))

(assert (=> d!30538 (= (content!256 lt!38619) e!74416)))

(declare-fun b!129237 () Bool)

(assert (=> b!129237 (= e!74416 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129238 () Bool)

(assert (=> b!129238 (= e!74416 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 lt!38619) true) (content!256 (t!22726 lt!38619))))))

(assert (= (and d!30538 c!28210) b!129237))

(assert (= (and d!30538 (not c!28210)) b!129238))

(declare-fun m!113815 () Bool)

(assert (=> b!129238 m!113815))

(declare-fun m!113817 () Bool)

(assert (=> b!129238 m!113817))

(assert (=> d!30466 d!30538))

(declare-fun d!30540 () Bool)

(declare-fun c!28211 () Bool)

(assert (=> d!30540 (= c!28211 ((_ is Nil!2134) lt!38606))))

(declare-fun e!74417 () (InoxSet B!673))

(assert (=> d!30540 (= (content!256 lt!38606) e!74417)))

(declare-fun b!129239 () Bool)

(assert (=> b!129239 (= e!74417 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129240 () Bool)

(assert (=> b!129240 (= e!74417 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 lt!38606) true) (content!256 (t!22726 lt!38606))))))

(assert (= (and d!30540 c!28211) b!129239))

(assert (= (and d!30540 (not c!28211)) b!129240))

(declare-fun m!113819 () Bool)

(assert (=> b!129240 m!113819))

(assert (=> b!129240 m!113785))

(assert (=> d!30466 d!30540))

(declare-fun d!30542 () Bool)

(declare-fun c!28212 () Bool)

(assert (=> d!30542 (= c!28212 ((_ is Nil!2134) (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)))))

(declare-fun e!74418 () (InoxSet B!673))

(assert (=> d!30542 (= (content!256 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)) e!74418)))

(declare-fun b!129241 () Bool)

(assert (=> b!129241 (= e!74418 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129242 () Bool)

(assert (=> b!129242 (= e!74418 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)) true) (content!256 (t!22726 (Cons!2134 (last!14 (t!22726 l!3350)) Nil!2134)))))))

(assert (= (and d!30542 c!28212) b!129241))

(assert (= (and d!30542 (not c!28212)) b!129242))

(declare-fun m!113821 () Bool)

(assert (=> b!129242 m!113821))

(declare-fun m!113823 () Bool)

(assert (=> b!129242 m!113823))

(assert (=> d!30466 d!30542))

(declare-fun d!30544 () Bool)

(declare-fun c!28213 () Bool)

(assert (=> d!30544 (= c!28213 ((_ is Nil!2134) (t!22726 (Cons!2134 (last!14 l!3350) Nil!2134))))))

(declare-fun e!74419 () (InoxSet B!673))

(assert (=> d!30544 (= (content!256 (t!22726 (Cons!2134 (last!14 l!3350) Nil!2134))) e!74419)))

(declare-fun b!129243 () Bool)

(assert (=> b!129243 (= e!74419 ((as const (Array B!673 Bool)) false))))

(declare-fun b!129244 () Bool)

(assert (=> b!129244 (= e!74419 ((_ map or) (store ((as const (Array B!673 Bool)) false) (h!7531 (t!22726 (Cons!2134 (last!14 l!3350) Nil!2134))) true) (content!256 (t!22726 (t!22726 (Cons!2134 (last!14 l!3350) Nil!2134))))))))

(assert (= (and d!30544 c!28213) b!129243))

(assert (= (and d!30544 (not c!28213)) b!129244))

(declare-fun m!113825 () Bool)

(assert (=> b!129244 m!113825))

(declare-fun m!113827 () Bool)

(assert (=> b!129244 m!113827))

(assert (=> b!129138 d!30544))

(declare-fun d!30546 () Bool)

(declare-fun lt!38649 () Int)

(assert (=> d!30546 (>= lt!38649 0)))

(declare-fun e!74420 () Int)

(assert (=> d!30546 (= lt!38649 e!74420)))

(declare-fun c!28214 () Bool)

(assert (=> d!30546 (= c!28214 ((_ is Nil!2134) (t!22726 (t!22726 (t!22726 l!3350)))))))

(assert (=> d!30546 (= (size!1977 (t!22726 (t!22726 (t!22726 l!3350)))) lt!38649)))

(declare-fun b!129245 () Bool)

(assert (=> b!129245 (= e!74420 0)))

(declare-fun b!129246 () Bool)

(assert (=> b!129246 (= e!74420 (+ 1 (size!1977 (t!22726 (t!22726 (t!22726 (t!22726 l!3350)))))))))

(assert (= (and d!30546 c!28214) b!129245))

(assert (= (and d!30546 (not c!28214)) b!129246))

(declare-fun m!113829 () Bool)

(assert (=> b!129246 m!113829))

(assert (=> b!129150 d!30546))

(assert (=> b!129142 d!30534))

(declare-fun d!30548 () Bool)

(declare-fun lt!38650 () Bool)

(assert (=> d!30548 (= lt!38650 (select (content!256 (t!22726 l!3350)) lt!38613))))

(declare-fun e!74422 () Bool)

(assert (=> d!30548 (= lt!38650 e!74422)))

(declare-fun res!59410 () Bool)

(assert (=> d!30548 (=> (not res!59410) (not e!74422))))

(assert (=> d!30548 (= res!59410 ((_ is Cons!2134) (t!22726 l!3350)))))

(assert (=> d!30548 (= (contains!313 (t!22726 l!3350) lt!38613) lt!38650)))

(declare-fun b!129247 () Bool)

(declare-fun e!74421 () Bool)

(assert (=> b!129247 (= e!74422 e!74421)))

(declare-fun res!59409 () Bool)

(assert (=> b!129247 (=> res!59409 e!74421)))

(assert (=> b!129247 (= res!59409 (= (h!7531 (t!22726 l!3350)) lt!38613))))

(declare-fun b!129248 () Bool)

(assert (=> b!129248 (= e!74421 (contains!313 (t!22726 (t!22726 l!3350)) lt!38613))))

(assert (= (and d!30548 res!59410) b!129247))

(assert (= (and b!129247 (not res!59409)) b!129248))

(assert (=> d!30548 m!113807))

(declare-fun m!113831 () Bool)

(assert (=> d!30548 m!113831))

(declare-fun m!113833 () Bool)

(assert (=> b!129248 m!113833))

(assert (=> d!30448 d!30548))

(assert (=> d!30448 d!30468))

(declare-fun d!30550 () Bool)

(declare-fun lt!38651 () List!2140)

(assert (=> d!30550 (= (++!417 lt!38651 (Cons!2134 (last!14 (t!22726 (t!22726 (t!22726 l!3350)))) Nil!2134)) (t!22726 (t!22726 (t!22726 l!3350))))))

(declare-fun e!74423 () List!2140)

(assert (=> d!30550 (= lt!38651 e!74423)))

(declare-fun c!28215 () Bool)

(assert (=> d!30550 (= c!28215 (and ((_ is Cons!2134) (t!22726 (t!22726 (t!22726 l!3350)))) ((_ is Nil!2134) (t!22726 (t!22726 (t!22726 (t!22726 l!3350)))))))))

(assert (=> d!30550 (not (isEmpty!855 (t!22726 (t!22726 (t!22726 l!3350)))))))

(assert (=> d!30550 (= (removeLast!10 (t!22726 (t!22726 (t!22726 l!3350)))) lt!38651)))

(declare-fun b!129249 () Bool)

(assert (=> b!129249 (= e!74423 Nil!2134)))

(declare-fun b!129250 () Bool)

(assert (=> b!129250 (= e!74423 (Cons!2134 (h!7531 (t!22726 (t!22726 (t!22726 l!3350)))) (removeLast!10 (t!22726 (t!22726 (t!22726 (t!22726 l!3350)))))))))

(assert (= (and d!30550 c!28215) b!129249))

(assert (= (and d!30550 (not c!28215)) b!129250))

(assert (=> d!30550 m!113779))

(declare-fun m!113835 () Bool)

(assert (=> d!30550 m!113835))

(declare-fun m!113837 () Bool)

(assert (=> d!30550 m!113837))

(declare-fun m!113839 () Bool)

(assert (=> b!129250 m!113839))

(assert (=> b!129152 d!30550))

(assert (=> b!129136 d!30526))

(declare-fun d!30552 () Bool)

(declare-fun lt!38652 () Int)

(assert (=> d!30552 (>= lt!38652 0)))

(declare-fun e!74424 () Int)

(assert (=> d!30552 (= lt!38652 e!74424)))

(declare-fun c!28216 () Bool)

(assert (=> d!30552 (= c!28216 ((_ is Nil!2134) (t!22726 lt!38597)))))

(assert (=> d!30552 (= (size!1977 (t!22726 lt!38597)) lt!38652)))

(declare-fun b!129251 () Bool)

(assert (=> b!129251 (= e!74424 0)))

(declare-fun b!129252 () Bool)

(assert (=> b!129252 (= e!74424 (+ 1 (size!1977 (t!22726 (t!22726 lt!38597)))))))

(assert (= (and d!30552 c!28216) b!129251))

(assert (= (and d!30552 (not c!28216)) b!129252))

(declare-fun m!113841 () Bool)

(assert (=> b!129252 m!113841))

(assert (=> b!129140 d!30552))

(declare-fun b!129253 () Bool)

(declare-fun e!74425 () Bool)

(declare-fun tp!70095 () Bool)

(assert (=> b!129253 (= e!74425 (and tp_is_empty!1317 tp!70095))))

(assert (=> b!129159 (= tp!70093 e!74425)))

(assert (= (and b!129159 ((_ is Cons!2134) (t!22726 (t!22726 (t!22726 (t!22726 l!3350)))))) b!129253))

(check-sat (not b!129226) (not b!129224) (not b!129253) (not b!129240) (not b!129234) (not b!129220) (not d!30516) (not b!129246) (not b!129250) (not b!129200) (not b!129230) (not b!129252) (not b!129214) (not b!129236) (not b!129218) (not b!129242) (not d!30504) (not d!30536) (not b!129244) (not b!129206) (not b!129215) (not b!129248) (not d!30510) (not d!30550) (not d!30508) (not b!129207) (not b!129212) (not b!129201) (not b!129238) (not b!129210) tp_is_empty!1317 (not b!129228) (not d!30548) (not b!129222) (not b!129204) (not b!129232))
(check-sat)

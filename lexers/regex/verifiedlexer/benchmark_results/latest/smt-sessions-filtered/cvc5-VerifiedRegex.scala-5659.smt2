; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!282520 () Bool)

(assert start!282520)

(declare-fun b!2902303 () Bool)

(declare-fun res!1199158 () Bool)

(declare-fun e!1832668 () Bool)

(assert (=> b!2902303 (=> (not res!1199158) (not e!1832668))))

(declare-datatypes ((C!17926 0))(
  ( (C!17927 (val!10997 Int)) )
))
(declare-datatypes ((Regex!8872 0))(
  ( (ElementMatch!8872 (c!472977 C!17926)) (Concat!14193 (regOne!18256 Regex!8872) (regTwo!18256 Regex!8872)) (EmptyExpr!8872) (Star!8872 (reg!9201 Regex!8872)) (EmptyLang!8872) (Union!8872 (regOne!18257 Regex!8872) (regTwo!18257 Regex!8872)) )
))
(declare-fun r!19097 () Regex!8872)

(declare-datatypes ((List!34673 0))(
  ( (Nil!34549) (Cons!34549 (h!39969 C!17926) (t!233716 List!34673)) )
))
(declare-fun prefix!1456 () List!34673)

(declare-fun prefixMatch!930 (Regex!8872 List!34673) Bool)

(assert (=> b!2902303 (= res!1199158 (not (prefixMatch!930 r!19097 prefix!1456)))))

(declare-fun b!2902304 () Bool)

(declare-fun e!1832667 () Bool)

(declare-fun tp_is_empty!15331 () Bool)

(declare-fun tp!931495 () Bool)

(assert (=> b!2902304 (= e!1832667 (and tp_is_empty!15331 tp!931495))))

(declare-fun b!2902305 () Bool)

(declare-fun s!13418 () List!34673)

(assert (=> b!2902305 (= e!1832668 (= s!13418 Nil!34549))))

(declare-fun lt!1022299 () Regex!8872)

(declare-fun derivativeStep!2379 (Regex!8872 C!17926) Regex!8872)

(assert (=> b!2902305 (= lt!1022299 (derivativeStep!2379 r!19097 (h!39969 prefix!1456)))))

(declare-fun b!2902306 () Bool)

(declare-fun res!1199159 () Bool)

(assert (=> b!2902306 (=> (not res!1199159) (not e!1832668))))

(assert (=> b!2902306 (= res!1199159 (not (is-Nil!34549 prefix!1456)))))

(declare-fun b!2902307 () Bool)

(declare-fun e!1832666 () Bool)

(assert (=> b!2902307 (= e!1832666 tp_is_empty!15331)))

(declare-fun b!2902308 () Bool)

(declare-fun tp!931494 () Bool)

(declare-fun tp!931490 () Bool)

(assert (=> b!2902308 (= e!1832666 (and tp!931494 tp!931490))))

(declare-fun b!2902310 () Bool)

(declare-fun res!1199156 () Bool)

(assert (=> b!2902310 (=> (not res!1199156) (not e!1832668))))

(declare-fun isPrefix!2709 (List!34673 List!34673) Bool)

(assert (=> b!2902310 (= res!1199156 (isPrefix!2709 prefix!1456 s!13418))))

(declare-fun b!2902311 () Bool)

(declare-fun tp!931496 () Bool)

(assert (=> b!2902311 (= e!1832666 tp!931496)))

(declare-fun b!2902312 () Bool)

(declare-fun tp!931491 () Bool)

(declare-fun tp!931493 () Bool)

(assert (=> b!2902312 (= e!1832666 (and tp!931491 tp!931493))))

(declare-fun b!2902309 () Bool)

(declare-fun e!1832669 () Bool)

(declare-fun tp!931492 () Bool)

(assert (=> b!2902309 (= e!1832669 (and tp_is_empty!15331 tp!931492))))

(declare-fun res!1199157 () Bool)

(assert (=> start!282520 (=> (not res!1199157) (not e!1832668))))

(declare-fun validRegex!3645 (Regex!8872) Bool)

(assert (=> start!282520 (= res!1199157 (validRegex!3645 r!19097))))

(assert (=> start!282520 e!1832668))

(assert (=> start!282520 e!1832666))

(assert (=> start!282520 e!1832667))

(assert (=> start!282520 e!1832669))

(assert (= (and start!282520 res!1199157) b!2902310))

(assert (= (and b!2902310 res!1199156) b!2902303))

(assert (= (and b!2902303 res!1199158) b!2902306))

(assert (= (and b!2902306 res!1199159) b!2902305))

(assert (= (and start!282520 (is-ElementMatch!8872 r!19097)) b!2902307))

(assert (= (and start!282520 (is-Concat!14193 r!19097)) b!2902308))

(assert (= (and start!282520 (is-Star!8872 r!19097)) b!2902311))

(assert (= (and start!282520 (is-Union!8872 r!19097)) b!2902312))

(assert (= (and start!282520 (is-Cons!34549 prefix!1456)) b!2902304))

(assert (= (and start!282520 (is-Cons!34549 s!13418)) b!2902309))

(declare-fun m!3306591 () Bool)

(assert (=> b!2902303 m!3306591))

(declare-fun m!3306593 () Bool)

(assert (=> b!2902305 m!3306593))

(declare-fun m!3306595 () Bool)

(assert (=> b!2902310 m!3306595))

(declare-fun m!3306597 () Bool)

(assert (=> start!282520 m!3306597))

(push 1)

(assert (not b!2902312))

(assert (not b!2902304))

(assert tp_is_empty!15331)

(assert (not start!282520))

(assert (not b!2902308))

(assert (not b!2902311))

(assert (not b!2902309))

(assert (not b!2902310))

(assert (not b!2902303))

(assert (not b!2902305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!189145 () Bool)

(declare-fun bm!189140 () Bool)

(declare-fun c!472984 () Bool)

(declare-fun c!472983 () Bool)

(assert (=> bm!189140 (= call!189145 (validRegex!3645 (ite c!472984 (reg!9201 r!19097) (ite c!472983 (regTwo!18257 r!19097) (regTwo!18256 r!19097)))))))

(declare-fun bm!189141 () Bool)

(declare-fun call!189146 () Bool)

(assert (=> bm!189141 (= call!189146 call!189145)))

(declare-fun b!2902361 () Bool)

(declare-fun res!1199183 () Bool)

(declare-fun e!1832697 () Bool)

(assert (=> b!2902361 (=> res!1199183 e!1832697)))

(assert (=> b!2902361 (= res!1199183 (not (is-Concat!14193 r!19097)))))

(declare-fun e!1832696 () Bool)

(assert (=> b!2902361 (= e!1832696 e!1832697)))

(declare-fun b!2902362 () Bool)

(declare-fun e!1832698 () Bool)

(assert (=> b!2902362 (= e!1832698 e!1832696)))

(assert (=> b!2902362 (= c!472983 (is-Union!8872 r!19097))))

(declare-fun b!2902363 () Bool)

(declare-fun e!1832699 () Bool)

(assert (=> b!2902363 (= e!1832699 e!1832698)))

(assert (=> b!2902363 (= c!472984 (is-Star!8872 r!19097))))

(declare-fun b!2902364 () Bool)

(declare-fun e!1832700 () Bool)

(assert (=> b!2902364 (= e!1832700 call!189146)))

(declare-fun b!2902365 () Bool)

(assert (=> b!2902365 (= e!1832697 e!1832700)))

(declare-fun res!1199184 () Bool)

(assert (=> b!2902365 (=> (not res!1199184) (not e!1832700))))

(declare-fun call!189147 () Bool)

(assert (=> b!2902365 (= res!1199184 call!189147)))

(declare-fun b!2902366 () Bool)

(declare-fun res!1199182 () Bool)

(declare-fun e!1832701 () Bool)

(assert (=> b!2902366 (=> (not res!1199182) (not e!1832701))))

(assert (=> b!2902366 (= res!1199182 call!189147)))

(assert (=> b!2902366 (= e!1832696 e!1832701)))

(declare-fun b!2902367 () Bool)

(assert (=> b!2902367 (= e!1832701 call!189146)))

(declare-fun b!2902369 () Bool)

(declare-fun e!1832702 () Bool)

(assert (=> b!2902369 (= e!1832702 call!189145)))

(declare-fun bm!189142 () Bool)

(assert (=> bm!189142 (= call!189147 (validRegex!3645 (ite c!472983 (regOne!18257 r!19097) (regOne!18256 r!19097))))))

(declare-fun d!835568 () Bool)

(declare-fun res!1199186 () Bool)

(assert (=> d!835568 (=> res!1199186 e!1832699)))

(assert (=> d!835568 (= res!1199186 (is-ElementMatch!8872 r!19097))))

(assert (=> d!835568 (= (validRegex!3645 r!19097) e!1832699)))

(declare-fun b!2902368 () Bool)

(assert (=> b!2902368 (= e!1832698 e!1832702)))

(declare-fun res!1199185 () Bool)

(declare-fun nullable!2766 (Regex!8872) Bool)

(assert (=> b!2902368 (= res!1199185 (not (nullable!2766 (reg!9201 r!19097))))))

(assert (=> b!2902368 (=> (not res!1199185) (not e!1832702))))

(assert (= (and d!835568 (not res!1199186)) b!2902363))

(assert (= (and b!2902363 c!472984) b!2902368))

(assert (= (and b!2902363 (not c!472984)) b!2902362))

(assert (= (and b!2902368 res!1199185) b!2902369))

(assert (= (and b!2902362 c!472983) b!2902366))

(assert (= (and b!2902362 (not c!472983)) b!2902361))

(assert (= (and b!2902366 res!1199182) b!2902367))

(assert (= (and b!2902361 (not res!1199183)) b!2902365))

(assert (= (and b!2902365 res!1199184) b!2902364))

(assert (= (or b!2902366 b!2902365) bm!189142))

(assert (= (or b!2902367 b!2902364) bm!189141))

(assert (= (or b!2902369 bm!189141) bm!189140))

(declare-fun m!3306607 () Bool)

(assert (=> bm!189140 m!3306607))

(declare-fun m!3306609 () Bool)

(assert (=> bm!189142 m!3306609))

(declare-fun m!3306611 () Bool)

(assert (=> b!2902368 m!3306611))

(assert (=> start!282520 d!835568))

(declare-fun bm!189159 () Bool)

(declare-fun call!189165 () Regex!8872)

(declare-fun call!189167 () Regex!8872)

(assert (=> bm!189159 (= call!189165 call!189167)))

(declare-fun b!2902410 () Bool)

(declare-fun e!1832726 () Regex!8872)

(declare-fun e!1832724 () Regex!8872)

(assert (=> b!2902410 (= e!1832726 e!1832724)))

(declare-fun c!473007 () Bool)

(assert (=> b!2902410 (= c!473007 (is-Star!8872 r!19097))))

(declare-fun bm!189160 () Bool)

(declare-fun call!189166 () Regex!8872)

(assert (=> bm!189160 (= call!189166 call!189165)))

(declare-fun bm!189161 () Bool)

(declare-fun c!473006 () Bool)

(declare-fun call!189164 () Regex!8872)

(assert (=> bm!189161 (= call!189164 (derivativeStep!2379 (ite c!473006 (regTwo!18257 r!19097) (regTwo!18256 r!19097)) (h!39969 prefix!1456)))))

(declare-fun e!1832725 () Regex!8872)

(declare-fun b!2902412 () Bool)

(assert (=> b!2902412 (= e!1832725 (Union!8872 (Concat!14193 call!189166 (regTwo!18256 r!19097)) call!189164))))

(declare-fun bm!189162 () Bool)

(assert (=> bm!189162 (= call!189167 (derivativeStep!2379 (ite c!473006 (regOne!18257 r!19097) (ite c!473007 (reg!9201 r!19097) (regOne!18256 r!19097))) (h!39969 prefix!1456)))))

(declare-fun b!2902413 () Bool)

(declare-fun e!1832723 () Regex!8872)

(assert (=> b!2902413 (= e!1832723 (ite (= (h!39969 prefix!1456) (c!472977 r!19097)) EmptyExpr!8872 EmptyLang!8872))))

(declare-fun b!2902414 () Bool)

(declare-fun c!473008 () Bool)

(assert (=> b!2902414 (= c!473008 (nullable!2766 (regOne!18256 r!19097)))))

(assert (=> b!2902414 (= e!1832724 e!1832725)))

(declare-fun b!2902415 () Bool)

(assert (=> b!2902415 (= e!1832726 (Union!8872 call!189167 call!189164))))

(declare-fun b!2902416 () Bool)

(declare-fun e!1832727 () Regex!8872)

(assert (=> b!2902416 (= e!1832727 EmptyLang!8872)))

(declare-fun b!2902417 () Bool)

(assert (=> b!2902417 (= e!1832725 (Union!8872 (Concat!14193 call!189166 (regTwo!18256 r!19097)) EmptyLang!8872))))

(declare-fun d!835572 () Bool)

(declare-fun lt!1022307 () Regex!8872)

(assert (=> d!835572 (validRegex!3645 lt!1022307)))

(assert (=> d!835572 (= lt!1022307 e!1832727)))

(declare-fun c!473009 () Bool)

(assert (=> d!835572 (= c!473009 (or (is-EmptyExpr!8872 r!19097) (is-EmptyLang!8872 r!19097)))))

(assert (=> d!835572 (validRegex!3645 r!19097)))

(assert (=> d!835572 (= (derivativeStep!2379 r!19097 (h!39969 prefix!1456)) lt!1022307)))

(declare-fun b!2902411 () Bool)

(assert (=> b!2902411 (= c!473006 (is-Union!8872 r!19097))))

(assert (=> b!2902411 (= e!1832723 e!1832726)))

(declare-fun b!2902418 () Bool)

(assert (=> b!2902418 (= e!1832727 e!1832723)))

(declare-fun c!473005 () Bool)

(assert (=> b!2902418 (= c!473005 (is-ElementMatch!8872 r!19097))))

(declare-fun b!2902419 () Bool)

(assert (=> b!2902419 (= e!1832724 (Concat!14193 call!189165 r!19097))))

(assert (= (and d!835572 c!473009) b!2902416))

(assert (= (and d!835572 (not c!473009)) b!2902418))

(assert (= (and b!2902418 c!473005) b!2902413))

(assert (= (and b!2902418 (not c!473005)) b!2902411))

(assert (= (and b!2902411 c!473006) b!2902415))

(assert (= (and b!2902411 (not c!473006)) b!2902410))

(assert (= (and b!2902410 c!473007) b!2902419))

(assert (= (and b!2902410 (not c!473007)) b!2902414))

(assert (= (and b!2902414 c!473008) b!2902412))

(assert (= (and b!2902414 (not c!473008)) b!2902417))

(assert (= (or b!2902412 b!2902417) bm!189160))

(assert (= (or b!2902419 bm!189160) bm!189159))

(assert (= (or b!2902415 bm!189159) bm!189162))

(assert (= (or b!2902415 b!2902412) bm!189161))

(declare-fun m!3306613 () Bool)

(assert (=> bm!189161 m!3306613))

(declare-fun m!3306615 () Bool)

(assert (=> bm!189162 m!3306615))

(declare-fun m!3306617 () Bool)

(assert (=> b!2902414 m!3306617))

(declare-fun m!3306619 () Bool)

(assert (=> d!835572 m!3306619))

(assert (=> d!835572 m!3306597))

(assert (=> b!2902305 d!835572))

(declare-fun b!2902429 () Bool)

(declare-fun res!1199195 () Bool)

(declare-fun e!1832735 () Bool)

(assert (=> b!2902429 (=> (not res!1199195) (not e!1832735))))

(declare-fun head!6408 (List!34673) C!17926)

(assert (=> b!2902429 (= res!1199195 (= (head!6408 prefix!1456) (head!6408 s!13418)))))

(declare-fun b!2902430 () Bool)

(declare-fun tail!4633 (List!34673) List!34673)

(assert (=> b!2902430 (= e!1832735 (isPrefix!2709 (tail!4633 prefix!1456) (tail!4633 s!13418)))))

(declare-fun b!2902428 () Bool)

(declare-fun e!1832736 () Bool)

(assert (=> b!2902428 (= e!1832736 e!1832735)))

(declare-fun res!1199197 () Bool)

(assert (=> b!2902428 (=> (not res!1199197) (not e!1832735))))

(assert (=> b!2902428 (= res!1199197 (not (is-Nil!34549 s!13418)))))

(declare-fun d!835574 () Bool)

(declare-fun e!1832734 () Bool)

(assert (=> d!835574 e!1832734))

(declare-fun res!1199196 () Bool)

(assert (=> d!835574 (=> res!1199196 e!1832734)))

(declare-fun lt!1022310 () Bool)

(assert (=> d!835574 (= res!1199196 (not lt!1022310))))

(assert (=> d!835574 (= lt!1022310 e!1832736)))

(declare-fun res!1199198 () Bool)

(assert (=> d!835574 (=> res!1199198 e!1832736)))

(assert (=> d!835574 (= res!1199198 (is-Nil!34549 prefix!1456))))

(assert (=> d!835574 (= (isPrefix!2709 prefix!1456 s!13418) lt!1022310)))

(declare-fun b!2902431 () Bool)

(declare-fun size!26357 (List!34673) Int)

(assert (=> b!2902431 (= e!1832734 (>= (size!26357 s!13418) (size!26357 prefix!1456)))))

(assert (= (and d!835574 (not res!1199198)) b!2902428))

(assert (= (and b!2902428 res!1199197) b!2902429))

(assert (= (and b!2902429 res!1199195) b!2902430))

(assert (= (and d!835574 (not res!1199196)) b!2902431))

(declare-fun m!3306621 () Bool)

(assert (=> b!2902429 m!3306621))

(declare-fun m!3306623 () Bool)

(assert (=> b!2902429 m!3306623))

(declare-fun m!3306625 () Bool)

(assert (=> b!2902430 m!3306625))

(declare-fun m!3306627 () Bool)

(assert (=> b!2902430 m!3306627))

(assert (=> b!2902430 m!3306625))

(assert (=> b!2902430 m!3306627))

(declare-fun m!3306629 () Bool)

(assert (=> b!2902430 m!3306629))

(declare-fun m!3306631 () Bool)

(assert (=> b!2902431 m!3306631))

(declare-fun m!3306633 () Bool)

(assert (=> b!2902431 m!3306633))

(assert (=> b!2902310 d!835574))

(declare-fun d!835576 () Bool)

(declare-fun c!473017 () Bool)

(declare-fun isEmpty!18864 (List!34673) Bool)

(assert (=> d!835576 (= c!473017 (isEmpty!18864 prefix!1456))))

(declare-fun e!1832744 () Bool)

(assert (=> d!835576 (= (prefixMatch!930 r!19097 prefix!1456) e!1832744)))

(declare-fun b!2902446 () Bool)

(declare-fun lostCause!856 (Regex!8872) Bool)

(assert (=> b!2902446 (= e!1832744 (not (lostCause!856 r!19097)))))

(declare-fun b!2902447 () Bool)

(assert (=> b!2902447 (= e!1832744 (prefixMatch!930 (derivativeStep!2379 r!19097 (head!6408 prefix!1456)) (tail!4633 prefix!1456)))))

(assert (= (and d!835576 c!473017) b!2902446))

(assert (= (and d!835576 (not c!473017)) b!2902447))

(declare-fun m!3306643 () Bool)

(assert (=> d!835576 m!3306643))

(declare-fun m!3306645 () Bool)

(assert (=> b!2902446 m!3306645))

(assert (=> b!2902447 m!3306621))

(assert (=> b!2902447 m!3306621))

(declare-fun m!3306647 () Bool)

(assert (=> b!2902447 m!3306647))

(assert (=> b!2902447 m!3306625))

(assert (=> b!2902447 m!3306647))

(assert (=> b!2902447 m!3306625))

(declare-fun m!3306649 () Bool)

(assert (=> b!2902447 m!3306649))

(assert (=> b!2902303 d!835576))

(declare-fun b!2902460 () Bool)

(declare-fun e!1832747 () Bool)

(declare-fun tp!931529 () Bool)

(assert (=> b!2902460 (= e!1832747 tp!931529)))

(declare-fun b!2902459 () Bool)

(declare-fun tp!931530 () Bool)

(declare-fun tp!931528 () Bool)

(assert (=> b!2902459 (= e!1832747 (and tp!931530 tp!931528))))

(declare-fun b!2902458 () Bool)

(assert (=> b!2902458 (= e!1832747 tp_is_empty!15331)))

(declare-fun b!2902461 () Bool)

(declare-fun tp!931531 () Bool)

(declare-fun tp!931532 () Bool)

(assert (=> b!2902461 (= e!1832747 (and tp!931531 tp!931532))))

(assert (=> b!2902312 (= tp!931491 e!1832747)))

(assert (= (and b!2902312 (is-ElementMatch!8872 (regOne!18257 r!19097))) b!2902458))

(assert (= (and b!2902312 (is-Concat!14193 (regOne!18257 r!19097))) b!2902459))

(assert (= (and b!2902312 (is-Star!8872 (regOne!18257 r!19097))) b!2902460))

(assert (= (and b!2902312 (is-Union!8872 (regOne!18257 r!19097))) b!2902461))

(declare-fun b!2902464 () Bool)

(declare-fun e!1832748 () Bool)

(declare-fun tp!931534 () Bool)

(assert (=> b!2902464 (= e!1832748 tp!931534)))

(declare-fun b!2902463 () Bool)

(declare-fun tp!931535 () Bool)

(declare-fun tp!931533 () Bool)

(assert (=> b!2902463 (= e!1832748 (and tp!931535 tp!931533))))

(declare-fun b!2902462 () Bool)

(assert (=> b!2902462 (= e!1832748 tp_is_empty!15331)))

(declare-fun b!2902465 () Bool)

(declare-fun tp!931536 () Bool)

(declare-fun tp!931537 () Bool)

(assert (=> b!2902465 (= e!1832748 (and tp!931536 tp!931537))))

(assert (=> b!2902312 (= tp!931493 e!1832748)))

(assert (= (and b!2902312 (is-ElementMatch!8872 (regTwo!18257 r!19097))) b!2902462))

(assert (= (and b!2902312 (is-Concat!14193 (regTwo!18257 r!19097))) b!2902463))

(assert (= (and b!2902312 (is-Star!8872 (regTwo!18257 r!19097))) b!2902464))

(assert (= (and b!2902312 (is-Union!8872 (regTwo!18257 r!19097))) b!2902465))

(declare-fun b!2902468 () Bool)

(declare-fun e!1832749 () Bool)

(declare-fun tp!931539 () Bool)

(assert (=> b!2902468 (= e!1832749 tp!931539)))

(declare-fun b!2902467 () Bool)

(declare-fun tp!931540 () Bool)

(declare-fun tp!931538 () Bool)

(assert (=> b!2902467 (= e!1832749 (and tp!931540 tp!931538))))

(declare-fun b!2902466 () Bool)

(assert (=> b!2902466 (= e!1832749 tp_is_empty!15331)))

(declare-fun b!2902469 () Bool)

(declare-fun tp!931541 () Bool)

(declare-fun tp!931542 () Bool)

(assert (=> b!2902469 (= e!1832749 (and tp!931541 tp!931542))))

(assert (=> b!2902311 (= tp!931496 e!1832749)))

(assert (= (and b!2902311 (is-ElementMatch!8872 (reg!9201 r!19097))) b!2902466))

(assert (= (and b!2902311 (is-Concat!14193 (reg!9201 r!19097))) b!2902467))

(assert (= (and b!2902311 (is-Star!8872 (reg!9201 r!19097))) b!2902468))

(assert (= (and b!2902311 (is-Union!8872 (reg!9201 r!19097))) b!2902469))

(declare-fun b!2902474 () Bool)

(declare-fun e!1832752 () Bool)

(declare-fun tp!931545 () Bool)

(assert (=> b!2902474 (= e!1832752 (and tp_is_empty!15331 tp!931545))))

(assert (=> b!2902304 (= tp!931495 e!1832752)))

(assert (= (and b!2902304 (is-Cons!34549 (t!233716 prefix!1456))) b!2902474))

(declare-fun b!2902475 () Bool)

(declare-fun e!1832753 () Bool)

(declare-fun tp!931546 () Bool)

(assert (=> b!2902475 (= e!1832753 (and tp_is_empty!15331 tp!931546))))

(assert (=> b!2902309 (= tp!931492 e!1832753)))

(assert (= (and b!2902309 (is-Cons!34549 (t!233716 s!13418))) b!2902475))

(declare-fun b!2902478 () Bool)

(declare-fun e!1832754 () Bool)

(declare-fun tp!931548 () Bool)

(assert (=> b!2902478 (= e!1832754 tp!931548)))

(declare-fun b!2902477 () Bool)

(declare-fun tp!931549 () Bool)

(declare-fun tp!931547 () Bool)

(assert (=> b!2902477 (= e!1832754 (and tp!931549 tp!931547))))

(declare-fun b!2902476 () Bool)

(assert (=> b!2902476 (= e!1832754 tp_is_empty!15331)))

(declare-fun b!2902479 () Bool)

(declare-fun tp!931550 () Bool)

(declare-fun tp!931551 () Bool)

(assert (=> b!2902479 (= e!1832754 (and tp!931550 tp!931551))))

(assert (=> b!2902308 (= tp!931494 e!1832754)))

(assert (= (and b!2902308 (is-ElementMatch!8872 (regOne!18256 r!19097))) b!2902476))

(assert (= (and b!2902308 (is-Concat!14193 (regOne!18256 r!19097))) b!2902477))

(assert (= (and b!2902308 (is-Star!8872 (regOne!18256 r!19097))) b!2902478))

(assert (= (and b!2902308 (is-Union!8872 (regOne!18256 r!19097))) b!2902479))

(declare-fun b!2902482 () Bool)

(declare-fun e!1832755 () Bool)

(declare-fun tp!931553 () Bool)

(assert (=> b!2902482 (= e!1832755 tp!931553)))

(declare-fun b!2902481 () Bool)

(declare-fun tp!931554 () Bool)

(declare-fun tp!931552 () Bool)

(assert (=> b!2902481 (= e!1832755 (and tp!931554 tp!931552))))

(declare-fun b!2902480 () Bool)

(assert (=> b!2902480 (= e!1832755 tp_is_empty!15331)))

(declare-fun b!2902483 () Bool)

(declare-fun tp!931555 () Bool)

(declare-fun tp!931556 () Bool)

(assert (=> b!2902483 (= e!1832755 (and tp!931555 tp!931556))))

(assert (=> b!2902308 (= tp!931490 e!1832755)))

(assert (= (and b!2902308 (is-ElementMatch!8872 (regTwo!18256 r!19097))) b!2902480))

(assert (= (and b!2902308 (is-Concat!14193 (regTwo!18256 r!19097))) b!2902481))

(assert (= (and b!2902308 (is-Star!8872 (regTwo!18256 r!19097))) b!2902482))

(assert (= (and b!2902308 (is-Union!8872 (regTwo!18256 r!19097))) b!2902483))

(push 1)

(assert (not d!835572))

(assert (not b!2902463))

(assert tp_is_empty!15331)

(assert (not b!2902479))

(assert (not b!2902446))

(assert (not b!2902368))

(assert (not b!2902468))

(assert (not bm!189162))

(assert (not b!2902469))

(assert (not b!2902430))

(assert (not b!2902478))

(assert (not b!2902465))

(assert (not b!2902483))

(assert (not b!2902474))

(assert (not b!2902447))

(assert (not b!2902467))

(assert (not b!2902464))

(assert (not b!2902482))

(assert (not b!2902414))

(assert (not b!2902460))

(assert (not b!2902481))

(assert (not b!2902475))

(assert (not b!2902429))

(assert (not bm!189140))

(assert (not b!2902461))

(assert (not d!835576))

(assert (not b!2902477))

(assert (not bm!189142))

(assert (not bm!189161))

(assert (not b!2902459))

(assert (not b!2902431))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!45476 () Bool)

(assert start!45476)

(declare-fun b!473561 () Bool)

(declare-fun e!289451 () Bool)

(declare-datatypes ((C!3196 0))(
  ( (C!3197 (val!1584 Int)) )
))
(declare-datatypes ((Regex!1137 0))(
  ( (ElementMatch!1137 (c!94938 C!3196)) (Concat!2037 (regOne!2786 Regex!1137) (regTwo!2786 Regex!1137)) (EmptyExpr!1137) (Star!1137 (reg!1466 Regex!1137)) (EmptyLang!1137) (Union!1137 (regOne!2787 Regex!1137) (regTwo!2787 Regex!1137)) )
))
(declare-fun r!20230 () Regex!1137)

(declare-fun lostCause!131 (Regex!1137) Bool)

(assert (=> b!473561 (= e!289451 (not (lostCause!131 (regTwo!2786 r!20230))))))

(declare-fun b!473562 () Bool)

(declare-fun e!289450 () Bool)

(declare-fun tp!131389 () Bool)

(assert (=> b!473562 (= e!289450 tp!131389)))

(declare-fun b!473563 () Bool)

(declare-fun tp_is_empty!2271 () Bool)

(assert (=> b!473563 (= e!289450 tp_is_empty!2271)))

(declare-fun b!473564 () Bool)

(declare-fun res!210320 () Bool)

(assert (=> b!473564 (=> (not res!210320) (not e!289451))))

(get-info :version)

(assert (=> b!473564 (= res!210320 (and (not ((_ is EmptyLang!1137) r!20230)) (not ((_ is EmptyExpr!1137) r!20230)) (not ((_ is ElementMatch!1137) r!20230)) (not ((_ is Union!1137) r!20230)) (not ((_ is Star!1137) r!20230))))))

(declare-fun b!473565 () Bool)

(declare-fun tp!131387 () Bool)

(declare-fun tp!131391 () Bool)

(assert (=> b!473565 (= e!289450 (and tp!131387 tp!131391))))

(declare-fun res!210321 () Bool)

(assert (=> start!45476 (=> (not res!210321) (not e!289451))))

(declare-fun validRegex!365 (Regex!1137) Bool)

(assert (=> start!45476 (= res!210321 (validRegex!365 r!20230))))

(assert (=> start!45476 e!289451))

(assert (=> start!45476 e!289450))

(declare-fun b!473566 () Bool)

(declare-fun res!210319 () Bool)

(assert (=> b!473566 (=> (not res!210319) (not e!289451))))

(assert (=> b!473566 (= res!210319 (not (lostCause!131 (regOne!2786 r!20230))))))

(declare-fun b!473567 () Bool)

(declare-fun res!210318 () Bool)

(assert (=> b!473567 (=> (not res!210318) (not e!289451))))

(assert (=> b!473567 (= res!210318 (lostCause!131 r!20230))))

(declare-fun b!473568 () Bool)

(declare-fun tp!131388 () Bool)

(declare-fun tp!131390 () Bool)

(assert (=> b!473568 (= e!289450 (and tp!131388 tp!131390))))

(assert (= (and start!45476 res!210321) b!473567))

(assert (= (and b!473567 res!210318) b!473564))

(assert (= (and b!473564 res!210320) b!473566))

(assert (= (and b!473566 res!210319) b!473561))

(assert (= (and start!45476 ((_ is ElementMatch!1137) r!20230)) b!473563))

(assert (= (and start!45476 ((_ is Concat!2037) r!20230)) b!473565))

(assert (= (and start!45476 ((_ is Star!1137) r!20230)) b!473562))

(assert (= (and start!45476 ((_ is Union!1137) r!20230)) b!473568))

(declare-fun m!746691 () Bool)

(assert (=> b!473561 m!746691))

(declare-fun m!746693 () Bool)

(assert (=> start!45476 m!746693))

(declare-fun m!746695 () Bool)

(assert (=> b!473566 m!746695))

(declare-fun m!746697 () Bool)

(assert (=> b!473567 m!746697))

(check-sat (not start!45476) tp_is_empty!2271 (not b!473561) (not b!473566) (not b!473562) (not b!473568) (not b!473565) (not b!473567))
(check-sat)
(get-model)

(declare-fun b!473605 () Bool)

(declare-fun e!289485 () Bool)

(declare-fun e!289484 () Bool)

(assert (=> b!473605 (= e!289485 e!289484)))

(declare-fun c!94948 () Bool)

(assert (=> b!473605 (= c!94948 ((_ is Union!1137) r!20230))))

(declare-fun b!473606 () Bool)

(declare-fun e!289483 () Bool)

(declare-fun call!32831 () Bool)

(assert (=> b!473606 (= e!289483 call!32831)))

(declare-fun b!473607 () Bool)

(declare-fun res!210345 () Bool)

(declare-fun e!289482 () Bool)

(assert (=> b!473607 (=> res!210345 e!289482)))

(assert (=> b!473607 (= res!210345 (not ((_ is Concat!2037) r!20230)))))

(assert (=> b!473607 (= e!289484 e!289482)))

(declare-fun bm!32825 () Bool)

(declare-fun call!32832 () Bool)

(assert (=> bm!32825 (= call!32832 (validRegex!365 (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230))))))

(declare-fun b!473608 () Bool)

(declare-fun e!289480 () Bool)

(assert (=> b!473608 (= e!289480 call!32832)))

(declare-fun call!32830 () Bool)

(declare-fun c!94947 () Bool)

(declare-fun bm!32826 () Bool)

(assert (=> bm!32826 (= call!32830 (validRegex!365 (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230)))))))

(declare-fun bm!32827 () Bool)

(assert (=> bm!32827 (= call!32831 call!32830)))

(declare-fun b!473610 () Bool)

(declare-fun e!289486 () Bool)

(assert (=> b!473610 (= e!289485 e!289486)))

(declare-fun res!210343 () Bool)

(declare-fun nullable!271 (Regex!1137) Bool)

(assert (=> b!473610 (= res!210343 (not (nullable!271 (reg!1466 r!20230))))))

(assert (=> b!473610 (=> (not res!210343) (not e!289486))))

(declare-fun b!473611 () Bool)

(declare-fun e!289481 () Bool)

(assert (=> b!473611 (= e!289481 e!289485)))

(assert (=> b!473611 (= c!94947 ((_ is Star!1137) r!20230))))

(declare-fun b!473612 () Bool)

(assert (=> b!473612 (= e!289482 e!289483)))

(declare-fun res!210342 () Bool)

(assert (=> b!473612 (=> (not res!210342) (not e!289483))))

(assert (=> b!473612 (= res!210342 call!32832)))

(declare-fun b!473613 () Bool)

(declare-fun res!210344 () Bool)

(assert (=> b!473613 (=> (not res!210344) (not e!289480))))

(assert (=> b!473613 (= res!210344 call!32831)))

(assert (=> b!473613 (= e!289484 e!289480)))

(declare-fun d!179737 () Bool)

(declare-fun res!210346 () Bool)

(assert (=> d!179737 (=> res!210346 e!289481)))

(assert (=> d!179737 (= res!210346 ((_ is ElementMatch!1137) r!20230))))

(assert (=> d!179737 (= (validRegex!365 r!20230) e!289481)))

(declare-fun b!473609 () Bool)

(assert (=> b!473609 (= e!289486 call!32830)))

(assert (= (and d!179737 (not res!210346)) b!473611))

(assert (= (and b!473611 c!94947) b!473610))

(assert (= (and b!473611 (not c!94947)) b!473605))

(assert (= (and b!473610 res!210343) b!473609))

(assert (= (and b!473605 c!94948) b!473613))

(assert (= (and b!473605 (not c!94948)) b!473607))

(assert (= (and b!473613 res!210344) b!473608))

(assert (= (and b!473607 (not res!210345)) b!473612))

(assert (= (and b!473612 res!210342) b!473606))

(assert (= (or b!473608 b!473612) bm!32825))

(assert (= (or b!473613 b!473606) bm!32827))

(assert (= (or b!473609 bm!32827) bm!32826))

(declare-fun m!746705 () Bool)

(assert (=> bm!32825 m!746705))

(declare-fun m!746707 () Bool)

(assert (=> bm!32826 m!746707))

(declare-fun m!746709 () Bool)

(assert (=> b!473610 m!746709))

(assert (=> start!45476 d!179737))

(declare-fun d!179747 () Bool)

(declare-fun lostCauseFct!43 (Regex!1137) Bool)

(assert (=> d!179747 (= (lostCause!131 r!20230) (lostCauseFct!43 r!20230))))

(declare-fun bs!58661 () Bool)

(assert (= bs!58661 d!179747))

(declare-fun m!746711 () Bool)

(assert (=> bs!58661 m!746711))

(assert (=> b!473567 d!179747))

(declare-fun d!179749 () Bool)

(assert (=> d!179749 (= (lostCause!131 (regTwo!2786 r!20230)) (lostCauseFct!43 (regTwo!2786 r!20230)))))

(declare-fun bs!58662 () Bool)

(assert (= bs!58662 d!179749))

(declare-fun m!746713 () Bool)

(assert (=> bs!58662 m!746713))

(assert (=> b!473561 d!179749))

(declare-fun d!179751 () Bool)

(assert (=> d!179751 (= (lostCause!131 (regOne!2786 r!20230)) (lostCauseFct!43 (regOne!2786 r!20230)))))

(declare-fun bs!58663 () Bool)

(assert (= bs!58663 d!179751))

(declare-fun m!746715 () Bool)

(assert (=> bs!58663 m!746715))

(assert (=> b!473566 d!179751))

(declare-fun b!473643 () Bool)

(declare-fun e!289498 () Bool)

(assert (=> b!473643 (= e!289498 tp_is_empty!2271)))

(declare-fun b!473646 () Bool)

(declare-fun tp!131413 () Bool)

(declare-fun tp!131414 () Bool)

(assert (=> b!473646 (= e!289498 (and tp!131413 tp!131414))))

(declare-fun b!473645 () Bool)

(declare-fun tp!131415 () Bool)

(assert (=> b!473645 (= e!289498 tp!131415)))

(declare-fun b!473644 () Bool)

(declare-fun tp!131412 () Bool)

(declare-fun tp!131416 () Bool)

(assert (=> b!473644 (= e!289498 (and tp!131412 tp!131416))))

(assert (=> b!473565 (= tp!131387 e!289498)))

(assert (= (and b!473565 ((_ is ElementMatch!1137) (regOne!2786 r!20230))) b!473643))

(assert (= (and b!473565 ((_ is Concat!2037) (regOne!2786 r!20230))) b!473644))

(assert (= (and b!473565 ((_ is Star!1137) (regOne!2786 r!20230))) b!473645))

(assert (= (and b!473565 ((_ is Union!1137) (regOne!2786 r!20230))) b!473646))

(declare-fun b!473647 () Bool)

(declare-fun e!289499 () Bool)

(assert (=> b!473647 (= e!289499 tp_is_empty!2271)))

(declare-fun b!473650 () Bool)

(declare-fun tp!131418 () Bool)

(declare-fun tp!131419 () Bool)

(assert (=> b!473650 (= e!289499 (and tp!131418 tp!131419))))

(declare-fun b!473649 () Bool)

(declare-fun tp!131420 () Bool)

(assert (=> b!473649 (= e!289499 tp!131420)))

(declare-fun b!473648 () Bool)

(declare-fun tp!131417 () Bool)

(declare-fun tp!131421 () Bool)

(assert (=> b!473648 (= e!289499 (and tp!131417 tp!131421))))

(assert (=> b!473565 (= tp!131391 e!289499)))

(assert (= (and b!473565 ((_ is ElementMatch!1137) (regTwo!2786 r!20230))) b!473647))

(assert (= (and b!473565 ((_ is Concat!2037) (regTwo!2786 r!20230))) b!473648))

(assert (= (and b!473565 ((_ is Star!1137) (regTwo!2786 r!20230))) b!473649))

(assert (= (and b!473565 ((_ is Union!1137) (regTwo!2786 r!20230))) b!473650))

(declare-fun b!473655 () Bool)

(declare-fun e!289501 () Bool)

(assert (=> b!473655 (= e!289501 tp_is_empty!2271)))

(declare-fun b!473658 () Bool)

(declare-fun tp!131428 () Bool)

(declare-fun tp!131429 () Bool)

(assert (=> b!473658 (= e!289501 (and tp!131428 tp!131429))))

(declare-fun b!473657 () Bool)

(declare-fun tp!131430 () Bool)

(assert (=> b!473657 (= e!289501 tp!131430)))

(declare-fun b!473656 () Bool)

(declare-fun tp!131427 () Bool)

(declare-fun tp!131431 () Bool)

(assert (=> b!473656 (= e!289501 (and tp!131427 tp!131431))))

(assert (=> b!473568 (= tp!131388 e!289501)))

(assert (= (and b!473568 ((_ is ElementMatch!1137) (regOne!2787 r!20230))) b!473655))

(assert (= (and b!473568 ((_ is Concat!2037) (regOne!2787 r!20230))) b!473656))

(assert (= (and b!473568 ((_ is Star!1137) (regOne!2787 r!20230))) b!473657))

(assert (= (and b!473568 ((_ is Union!1137) (regOne!2787 r!20230))) b!473658))

(declare-fun b!473663 () Bool)

(declare-fun e!289503 () Bool)

(assert (=> b!473663 (= e!289503 tp_is_empty!2271)))

(declare-fun b!473666 () Bool)

(declare-fun tp!131438 () Bool)

(declare-fun tp!131439 () Bool)

(assert (=> b!473666 (= e!289503 (and tp!131438 tp!131439))))

(declare-fun b!473665 () Bool)

(declare-fun tp!131440 () Bool)

(assert (=> b!473665 (= e!289503 tp!131440)))

(declare-fun b!473664 () Bool)

(declare-fun tp!131437 () Bool)

(declare-fun tp!131441 () Bool)

(assert (=> b!473664 (= e!289503 (and tp!131437 tp!131441))))

(assert (=> b!473568 (= tp!131390 e!289503)))

(assert (= (and b!473568 ((_ is ElementMatch!1137) (regTwo!2787 r!20230))) b!473663))

(assert (= (and b!473568 ((_ is Concat!2037) (regTwo!2787 r!20230))) b!473664))

(assert (= (and b!473568 ((_ is Star!1137) (regTwo!2787 r!20230))) b!473665))

(assert (= (and b!473568 ((_ is Union!1137) (regTwo!2787 r!20230))) b!473666))

(declare-fun b!473671 () Bool)

(declare-fun e!289505 () Bool)

(assert (=> b!473671 (= e!289505 tp_is_empty!2271)))

(declare-fun b!473674 () Bool)

(declare-fun tp!131448 () Bool)

(declare-fun tp!131449 () Bool)

(assert (=> b!473674 (= e!289505 (and tp!131448 tp!131449))))

(declare-fun b!473673 () Bool)

(declare-fun tp!131450 () Bool)

(assert (=> b!473673 (= e!289505 tp!131450)))

(declare-fun b!473672 () Bool)

(declare-fun tp!131447 () Bool)

(declare-fun tp!131451 () Bool)

(assert (=> b!473672 (= e!289505 (and tp!131447 tp!131451))))

(assert (=> b!473562 (= tp!131389 e!289505)))

(assert (= (and b!473562 ((_ is ElementMatch!1137) (reg!1466 r!20230))) b!473671))

(assert (= (and b!473562 ((_ is Concat!2037) (reg!1466 r!20230))) b!473672))

(assert (= (and b!473562 ((_ is Star!1137) (reg!1466 r!20230))) b!473673))

(assert (= (and b!473562 ((_ is Union!1137) (reg!1466 r!20230))) b!473674))

(check-sat (not b!473664) (not b!473645) (not bm!32825) (not b!473648) (not b!473657) (not b!473665) (not b!473646) (not d!179747) (not b!473610) (not b!473644) (not b!473650) tp_is_empty!2271 (not b!473649) (not b!473674) (not b!473658) (not b!473672) (not d!179751) (not b!473673) (not b!473666) (not bm!32826) (not b!473656) (not d!179749))
(check-sat)
(get-model)

(declare-fun b!473683 () Bool)

(declare-fun e!289513 () Bool)

(declare-fun e!289512 () Bool)

(assert (=> b!473683 (= e!289513 e!289512)))

(declare-fun c!94952 () Bool)

(assert (=> b!473683 (= c!94952 ((_ is Union!1137) (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230)))))))

(declare-fun b!473684 () Bool)

(declare-fun e!289511 () Bool)

(declare-fun call!32837 () Bool)

(assert (=> b!473684 (= e!289511 call!32837)))

(declare-fun b!473685 () Bool)

(declare-fun res!210355 () Bool)

(declare-fun e!289510 () Bool)

(assert (=> b!473685 (=> res!210355 e!289510)))

(assert (=> b!473685 (= res!210355 (not ((_ is Concat!2037) (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230))))))))

(assert (=> b!473685 (= e!289512 e!289510)))

(declare-fun bm!32831 () Bool)

(declare-fun call!32838 () Bool)

(assert (=> bm!32831 (= call!32838 (validRegex!365 (ite c!94952 (regTwo!2787 (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230)))) (regOne!2786 (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230)))))))))

(declare-fun b!473686 () Bool)

(declare-fun e!289508 () Bool)

(assert (=> b!473686 (= e!289508 call!32838)))

(declare-fun bm!32832 () Bool)

(declare-fun call!32836 () Bool)

(declare-fun c!94951 () Bool)

(assert (=> bm!32832 (= call!32836 (validRegex!365 (ite c!94951 (reg!1466 (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230)))) (ite c!94952 (regOne!2787 (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230)))) (regTwo!2786 (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230))))))))))

(declare-fun bm!32833 () Bool)

(assert (=> bm!32833 (= call!32837 call!32836)))

(declare-fun b!473688 () Bool)

(declare-fun e!289514 () Bool)

(assert (=> b!473688 (= e!289513 e!289514)))

(declare-fun res!210353 () Bool)

(assert (=> b!473688 (= res!210353 (not (nullable!271 (reg!1466 (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230)))))))))

(assert (=> b!473688 (=> (not res!210353) (not e!289514))))

(declare-fun b!473689 () Bool)

(declare-fun e!289509 () Bool)

(assert (=> b!473689 (= e!289509 e!289513)))

(assert (=> b!473689 (= c!94951 ((_ is Star!1137) (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230)))))))

(declare-fun b!473690 () Bool)

(assert (=> b!473690 (= e!289510 e!289511)))

(declare-fun res!210352 () Bool)

(assert (=> b!473690 (=> (not res!210352) (not e!289511))))

(assert (=> b!473690 (= res!210352 call!32838)))

(declare-fun b!473691 () Bool)

(declare-fun res!210354 () Bool)

(assert (=> b!473691 (=> (not res!210354) (not e!289508))))

(assert (=> b!473691 (= res!210354 call!32837)))

(assert (=> b!473691 (= e!289512 e!289508)))

(declare-fun d!179753 () Bool)

(declare-fun res!210356 () Bool)

(assert (=> d!179753 (=> res!210356 e!289509)))

(assert (=> d!179753 (= res!210356 ((_ is ElementMatch!1137) (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230)))))))

(assert (=> d!179753 (= (validRegex!365 (ite c!94947 (reg!1466 r!20230) (ite c!94948 (regOne!2787 r!20230) (regTwo!2786 r!20230)))) e!289509)))

(declare-fun b!473687 () Bool)

(assert (=> b!473687 (= e!289514 call!32836)))

(assert (= (and d!179753 (not res!210356)) b!473689))

(assert (= (and b!473689 c!94951) b!473688))

(assert (= (and b!473689 (not c!94951)) b!473683))

(assert (= (and b!473688 res!210353) b!473687))

(assert (= (and b!473683 c!94952) b!473691))

(assert (= (and b!473683 (not c!94952)) b!473685))

(assert (= (and b!473691 res!210354) b!473686))

(assert (= (and b!473685 (not res!210355)) b!473690))

(assert (= (and b!473690 res!210352) b!473684))

(assert (= (or b!473686 b!473690) bm!32831))

(assert (= (or b!473691 b!473684) bm!32833))

(assert (= (or b!473687 bm!32833) bm!32832))

(declare-fun m!746723 () Bool)

(assert (=> bm!32831 m!746723))

(declare-fun m!746725 () Bool)

(assert (=> bm!32832 m!746725))

(declare-fun m!746727 () Bool)

(assert (=> b!473688 m!746727))

(assert (=> bm!32826 d!179753))

(declare-fun bm!32838 () Bool)

(declare-fun call!32844 () Bool)

(declare-fun c!94955 () Bool)

(assert (=> bm!32838 (= call!32844 (lostCause!131 (ite c!94955 (regTwo!2787 r!20230) (regTwo!2786 r!20230))))))

(declare-fun b!473706 () Bool)

(declare-fun e!289532 () Bool)

(declare-fun e!289528 () Bool)

(assert (=> b!473706 (= e!289532 e!289528)))

(declare-fun res!210371 () Bool)

(assert (=> b!473706 (=> res!210371 e!289528)))

(assert (=> b!473706 (= res!210371 ((_ is EmptyLang!1137) r!20230))))

(declare-fun b!473707 () Bool)

(declare-fun e!289530 () Bool)

(assert (=> b!473707 (= e!289530 call!32844)))

(declare-fun d!179755 () Bool)

(declare-fun lt!210661 () Bool)

(declare-datatypes ((List!4588 0))(
  ( (Nil!4578) (Cons!4578 (h!9975 C!3196) (t!73106 List!4588)) )
))
(declare-datatypes ((Option!1206 0))(
  ( (None!1205) (Some!1205 (v!15617 List!4588)) )
))
(declare-fun isEmpty!3532 (Option!1206) Bool)

(declare-fun getLanguageWitness!41 (Regex!1137) Option!1206)

(assert (=> d!179755 (= lt!210661 (isEmpty!3532 (getLanguageWitness!41 r!20230)))))

(assert (=> d!179755 (= lt!210661 e!289532)))

(declare-fun res!210368 () Bool)

(assert (=> d!179755 (=> (not res!210368) (not e!289532))))

(assert (=> d!179755 (= res!210368 (not ((_ is EmptyExpr!1137) r!20230)))))

(assert (=> d!179755 (= (lostCauseFct!43 r!20230) lt!210661)))

(declare-fun b!473708 () Bool)

(declare-fun e!289527 () Bool)

(assert (=> b!473708 (= e!289527 e!289530)))

(declare-fun res!210367 () Bool)

(declare-fun call!32843 () Bool)

(assert (=> b!473708 (= res!210367 call!32843)))

(assert (=> b!473708 (=> res!210367 e!289530)))

(declare-fun bm!32839 () Bool)

(assert (=> bm!32839 (= call!32843 (lostCause!131 (ite c!94955 (regOne!2787 r!20230) (regOne!2786 r!20230))))))

(declare-fun b!473709 () Bool)

(declare-fun e!289531 () Bool)

(assert (=> b!473709 (= e!289528 e!289531)))

(declare-fun res!210369 () Bool)

(assert (=> b!473709 (=> (not res!210369) (not e!289531))))

(assert (=> b!473709 (= res!210369 (and (not ((_ is ElementMatch!1137) r!20230)) (not ((_ is Star!1137) r!20230))))))

(declare-fun b!473710 () Bool)

(declare-fun e!289529 () Bool)

(assert (=> b!473710 (= e!289529 call!32844)))

(declare-fun b!473711 () Bool)

(assert (=> b!473711 (= e!289531 e!289527)))

(assert (=> b!473711 (= c!94955 ((_ is Union!1137) r!20230))))

(declare-fun b!473712 () Bool)

(assert (=> b!473712 (= e!289527 e!289529)))

(declare-fun res!210370 () Bool)

(assert (=> b!473712 (= res!210370 call!32843)))

(assert (=> b!473712 (=> (not res!210370) (not e!289529))))

(assert (= (and d!179755 res!210368) b!473706))

(assert (= (and b!473706 (not res!210371)) b!473709))

(assert (= (and b!473709 res!210369) b!473711))

(assert (= (and b!473711 c!94955) b!473712))

(assert (= (and b!473711 (not c!94955)) b!473708))

(assert (= (and b!473712 res!210370) b!473710))

(assert (= (and b!473708 (not res!210367)) b!473707))

(assert (= (or b!473712 b!473708) bm!32839))

(assert (= (or b!473710 b!473707) bm!32838))

(declare-fun m!746729 () Bool)

(assert (=> bm!32838 m!746729))

(declare-fun m!746731 () Bool)

(assert (=> d!179755 m!746731))

(assert (=> d!179755 m!746731))

(declare-fun m!746733 () Bool)

(assert (=> d!179755 m!746733))

(declare-fun m!746735 () Bool)

(assert (=> bm!32839 m!746735))

(assert (=> d!179747 d!179755))

(declare-fun b!473713 () Bool)

(declare-fun e!289538 () Bool)

(declare-fun e!289537 () Bool)

(assert (=> b!473713 (= e!289538 e!289537)))

(declare-fun c!94957 () Bool)

(assert (=> b!473713 (= c!94957 ((_ is Union!1137) (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230))))))

(declare-fun b!473714 () Bool)

(declare-fun e!289536 () Bool)

(declare-fun call!32846 () Bool)

(assert (=> b!473714 (= e!289536 call!32846)))

(declare-fun b!473715 () Bool)

(declare-fun res!210375 () Bool)

(declare-fun e!289535 () Bool)

(assert (=> b!473715 (=> res!210375 e!289535)))

(assert (=> b!473715 (= res!210375 (not ((_ is Concat!2037) (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230)))))))

(assert (=> b!473715 (= e!289537 e!289535)))

(declare-fun call!32847 () Bool)

(declare-fun bm!32840 () Bool)

(assert (=> bm!32840 (= call!32847 (validRegex!365 (ite c!94957 (regTwo!2787 (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230))) (regOne!2786 (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230))))))))

(declare-fun b!473716 () Bool)

(declare-fun e!289533 () Bool)

(assert (=> b!473716 (= e!289533 call!32847)))

(declare-fun c!94956 () Bool)

(declare-fun call!32845 () Bool)

(declare-fun bm!32841 () Bool)

(assert (=> bm!32841 (= call!32845 (validRegex!365 (ite c!94956 (reg!1466 (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230))) (ite c!94957 (regOne!2787 (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230))) (regTwo!2786 (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230)))))))))

(declare-fun bm!32842 () Bool)

(assert (=> bm!32842 (= call!32846 call!32845)))

(declare-fun b!473718 () Bool)

(declare-fun e!289539 () Bool)

(assert (=> b!473718 (= e!289538 e!289539)))

(declare-fun res!210373 () Bool)

(assert (=> b!473718 (= res!210373 (not (nullable!271 (reg!1466 (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230))))))))

(assert (=> b!473718 (=> (not res!210373) (not e!289539))))

(declare-fun b!473719 () Bool)

(declare-fun e!289534 () Bool)

(assert (=> b!473719 (= e!289534 e!289538)))

(assert (=> b!473719 (= c!94956 ((_ is Star!1137) (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230))))))

(declare-fun b!473720 () Bool)

(assert (=> b!473720 (= e!289535 e!289536)))

(declare-fun res!210372 () Bool)

(assert (=> b!473720 (=> (not res!210372) (not e!289536))))

(assert (=> b!473720 (= res!210372 call!32847)))

(declare-fun b!473721 () Bool)

(declare-fun res!210374 () Bool)

(assert (=> b!473721 (=> (not res!210374) (not e!289533))))

(assert (=> b!473721 (= res!210374 call!32846)))

(assert (=> b!473721 (= e!289537 e!289533)))

(declare-fun d!179757 () Bool)

(declare-fun res!210376 () Bool)

(assert (=> d!179757 (=> res!210376 e!289534)))

(assert (=> d!179757 (= res!210376 ((_ is ElementMatch!1137) (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230))))))

(assert (=> d!179757 (= (validRegex!365 (ite c!94948 (regTwo!2787 r!20230) (regOne!2786 r!20230))) e!289534)))

(declare-fun b!473717 () Bool)

(assert (=> b!473717 (= e!289539 call!32845)))

(assert (= (and d!179757 (not res!210376)) b!473719))

(assert (= (and b!473719 c!94956) b!473718))

(assert (= (and b!473719 (not c!94956)) b!473713))

(assert (= (and b!473718 res!210373) b!473717))

(assert (= (and b!473713 c!94957) b!473721))

(assert (= (and b!473713 (not c!94957)) b!473715))

(assert (= (and b!473721 res!210374) b!473716))

(assert (= (and b!473715 (not res!210375)) b!473720))

(assert (= (and b!473720 res!210372) b!473714))

(assert (= (or b!473716 b!473720) bm!32840))

(assert (= (or b!473721 b!473714) bm!32842))

(assert (= (or b!473717 bm!32842) bm!32841))

(declare-fun m!746737 () Bool)

(assert (=> bm!32840 m!746737))

(declare-fun m!746739 () Bool)

(assert (=> bm!32841 m!746739))

(declare-fun m!746741 () Bool)

(assert (=> b!473718 m!746741))

(assert (=> bm!32825 d!179757))

(declare-fun bm!32843 () Bool)

(declare-fun call!32849 () Bool)

(declare-fun c!94958 () Bool)

(assert (=> bm!32843 (= call!32849 (lostCause!131 (ite c!94958 (regTwo!2787 (regTwo!2786 r!20230)) (regTwo!2786 (regTwo!2786 r!20230)))))))

(declare-fun b!473722 () Bool)

(declare-fun e!289545 () Bool)

(declare-fun e!289541 () Bool)

(assert (=> b!473722 (= e!289545 e!289541)))

(declare-fun res!210381 () Bool)

(assert (=> b!473722 (=> res!210381 e!289541)))

(assert (=> b!473722 (= res!210381 ((_ is EmptyLang!1137) (regTwo!2786 r!20230)))))

(declare-fun b!473723 () Bool)

(declare-fun e!289543 () Bool)

(assert (=> b!473723 (= e!289543 call!32849)))

(declare-fun d!179759 () Bool)

(declare-fun lt!210662 () Bool)

(assert (=> d!179759 (= lt!210662 (isEmpty!3532 (getLanguageWitness!41 (regTwo!2786 r!20230))))))

(assert (=> d!179759 (= lt!210662 e!289545)))

(declare-fun res!210378 () Bool)

(assert (=> d!179759 (=> (not res!210378) (not e!289545))))

(assert (=> d!179759 (= res!210378 (not ((_ is EmptyExpr!1137) (regTwo!2786 r!20230))))))

(assert (=> d!179759 (= (lostCauseFct!43 (regTwo!2786 r!20230)) lt!210662)))

(declare-fun b!473724 () Bool)

(declare-fun e!289540 () Bool)

(assert (=> b!473724 (= e!289540 e!289543)))

(declare-fun res!210377 () Bool)

(declare-fun call!32848 () Bool)

(assert (=> b!473724 (= res!210377 call!32848)))

(assert (=> b!473724 (=> res!210377 e!289543)))

(declare-fun bm!32844 () Bool)

(assert (=> bm!32844 (= call!32848 (lostCause!131 (ite c!94958 (regOne!2787 (regTwo!2786 r!20230)) (regOne!2786 (regTwo!2786 r!20230)))))))

(declare-fun b!473725 () Bool)

(declare-fun e!289544 () Bool)

(assert (=> b!473725 (= e!289541 e!289544)))

(declare-fun res!210379 () Bool)

(assert (=> b!473725 (=> (not res!210379) (not e!289544))))

(assert (=> b!473725 (= res!210379 (and (not ((_ is ElementMatch!1137) (regTwo!2786 r!20230))) (not ((_ is Star!1137) (regTwo!2786 r!20230)))))))

(declare-fun b!473726 () Bool)

(declare-fun e!289542 () Bool)

(assert (=> b!473726 (= e!289542 call!32849)))

(declare-fun b!473727 () Bool)

(assert (=> b!473727 (= e!289544 e!289540)))

(assert (=> b!473727 (= c!94958 ((_ is Union!1137) (regTwo!2786 r!20230)))))

(declare-fun b!473728 () Bool)

(assert (=> b!473728 (= e!289540 e!289542)))

(declare-fun res!210380 () Bool)

(assert (=> b!473728 (= res!210380 call!32848)))

(assert (=> b!473728 (=> (not res!210380) (not e!289542))))

(assert (= (and d!179759 res!210378) b!473722))

(assert (= (and b!473722 (not res!210381)) b!473725))

(assert (= (and b!473725 res!210379) b!473727))

(assert (= (and b!473727 c!94958) b!473728))

(assert (= (and b!473727 (not c!94958)) b!473724))

(assert (= (and b!473728 res!210380) b!473726))

(assert (= (and b!473724 (not res!210377)) b!473723))

(assert (= (or b!473728 b!473724) bm!32844))

(assert (= (or b!473726 b!473723) bm!32843))

(declare-fun m!746743 () Bool)

(assert (=> bm!32843 m!746743))

(declare-fun m!746745 () Bool)

(assert (=> d!179759 m!746745))

(assert (=> d!179759 m!746745))

(declare-fun m!746747 () Bool)

(assert (=> d!179759 m!746747))

(declare-fun m!746749 () Bool)

(assert (=> bm!32844 m!746749))

(assert (=> d!179749 d!179759))

(declare-fun d!179761 () Bool)

(declare-fun nullableFct!93 (Regex!1137) Bool)

(assert (=> d!179761 (= (nullable!271 (reg!1466 r!20230)) (nullableFct!93 (reg!1466 r!20230)))))

(declare-fun bs!58664 () Bool)

(assert (= bs!58664 d!179761))

(declare-fun m!746751 () Bool)

(assert (=> bs!58664 m!746751))

(assert (=> b!473610 d!179761))

(declare-fun bm!32845 () Bool)

(declare-fun call!32851 () Bool)

(declare-fun c!94959 () Bool)

(assert (=> bm!32845 (= call!32851 (lostCause!131 (ite c!94959 (regTwo!2787 (regOne!2786 r!20230)) (regTwo!2786 (regOne!2786 r!20230)))))))

(declare-fun b!473729 () Bool)

(declare-fun e!289551 () Bool)

(declare-fun e!289547 () Bool)

(assert (=> b!473729 (= e!289551 e!289547)))

(declare-fun res!210386 () Bool)

(assert (=> b!473729 (=> res!210386 e!289547)))

(assert (=> b!473729 (= res!210386 ((_ is EmptyLang!1137) (regOne!2786 r!20230)))))

(declare-fun b!473730 () Bool)

(declare-fun e!289549 () Bool)

(assert (=> b!473730 (= e!289549 call!32851)))

(declare-fun d!179763 () Bool)

(declare-fun lt!210663 () Bool)

(assert (=> d!179763 (= lt!210663 (isEmpty!3532 (getLanguageWitness!41 (regOne!2786 r!20230))))))

(assert (=> d!179763 (= lt!210663 e!289551)))

(declare-fun res!210383 () Bool)

(assert (=> d!179763 (=> (not res!210383) (not e!289551))))

(assert (=> d!179763 (= res!210383 (not ((_ is EmptyExpr!1137) (regOne!2786 r!20230))))))

(assert (=> d!179763 (= (lostCauseFct!43 (regOne!2786 r!20230)) lt!210663)))

(declare-fun b!473731 () Bool)

(declare-fun e!289546 () Bool)

(assert (=> b!473731 (= e!289546 e!289549)))

(declare-fun res!210382 () Bool)

(declare-fun call!32850 () Bool)

(assert (=> b!473731 (= res!210382 call!32850)))

(assert (=> b!473731 (=> res!210382 e!289549)))

(declare-fun bm!32846 () Bool)

(assert (=> bm!32846 (= call!32850 (lostCause!131 (ite c!94959 (regOne!2787 (regOne!2786 r!20230)) (regOne!2786 (regOne!2786 r!20230)))))))

(declare-fun b!473732 () Bool)

(declare-fun e!289550 () Bool)

(assert (=> b!473732 (= e!289547 e!289550)))

(declare-fun res!210384 () Bool)

(assert (=> b!473732 (=> (not res!210384) (not e!289550))))

(assert (=> b!473732 (= res!210384 (and (not ((_ is ElementMatch!1137) (regOne!2786 r!20230))) (not ((_ is Star!1137) (regOne!2786 r!20230)))))))

(declare-fun b!473733 () Bool)

(declare-fun e!289548 () Bool)

(assert (=> b!473733 (= e!289548 call!32851)))

(declare-fun b!473734 () Bool)

(assert (=> b!473734 (= e!289550 e!289546)))

(assert (=> b!473734 (= c!94959 ((_ is Union!1137) (regOne!2786 r!20230)))))

(declare-fun b!473735 () Bool)

(assert (=> b!473735 (= e!289546 e!289548)))

(declare-fun res!210385 () Bool)

(assert (=> b!473735 (= res!210385 call!32850)))

(assert (=> b!473735 (=> (not res!210385) (not e!289548))))

(assert (= (and d!179763 res!210383) b!473729))

(assert (= (and b!473729 (not res!210386)) b!473732))

(assert (= (and b!473732 res!210384) b!473734))

(assert (= (and b!473734 c!94959) b!473735))

(assert (= (and b!473734 (not c!94959)) b!473731))

(assert (= (and b!473735 res!210385) b!473733))

(assert (= (and b!473731 (not res!210382)) b!473730))

(assert (= (or b!473735 b!473731) bm!32846))

(assert (= (or b!473733 b!473730) bm!32845))

(declare-fun m!746753 () Bool)

(assert (=> bm!32845 m!746753))

(declare-fun m!746755 () Bool)

(assert (=> d!179763 m!746755))

(assert (=> d!179763 m!746755))

(declare-fun m!746757 () Bool)

(assert (=> d!179763 m!746757))

(declare-fun m!746759 () Bool)

(assert (=> bm!32846 m!746759))

(assert (=> d!179751 d!179763))

(declare-fun b!473736 () Bool)

(declare-fun e!289552 () Bool)

(assert (=> b!473736 (= e!289552 tp_is_empty!2271)))

(declare-fun b!473739 () Bool)

(declare-fun tp!131463 () Bool)

(declare-fun tp!131464 () Bool)

(assert (=> b!473739 (= e!289552 (and tp!131463 tp!131464))))

(declare-fun b!473738 () Bool)

(declare-fun tp!131465 () Bool)

(assert (=> b!473738 (= e!289552 tp!131465)))

(declare-fun b!473737 () Bool)

(declare-fun tp!131462 () Bool)

(declare-fun tp!131466 () Bool)

(assert (=> b!473737 (= e!289552 (and tp!131462 tp!131466))))

(assert (=> b!473657 (= tp!131430 e!289552)))

(assert (= (and b!473657 ((_ is ElementMatch!1137) (reg!1466 (regOne!2787 r!20230)))) b!473736))

(assert (= (and b!473657 ((_ is Concat!2037) (reg!1466 (regOne!2787 r!20230)))) b!473737))

(assert (= (and b!473657 ((_ is Star!1137) (reg!1466 (regOne!2787 r!20230)))) b!473738))

(assert (= (and b!473657 ((_ is Union!1137) (reg!1466 (regOne!2787 r!20230)))) b!473739))

(declare-fun b!473740 () Bool)

(declare-fun e!289553 () Bool)

(assert (=> b!473740 (= e!289553 tp_is_empty!2271)))

(declare-fun b!473743 () Bool)

(declare-fun tp!131468 () Bool)

(declare-fun tp!131469 () Bool)

(assert (=> b!473743 (= e!289553 (and tp!131468 tp!131469))))

(declare-fun b!473742 () Bool)

(declare-fun tp!131470 () Bool)

(assert (=> b!473742 (= e!289553 tp!131470)))

(declare-fun b!473741 () Bool)

(declare-fun tp!131467 () Bool)

(declare-fun tp!131471 () Bool)

(assert (=> b!473741 (= e!289553 (and tp!131467 tp!131471))))

(assert (=> b!473648 (= tp!131417 e!289553)))

(assert (= (and b!473648 ((_ is ElementMatch!1137) (regOne!2786 (regTwo!2786 r!20230)))) b!473740))

(assert (= (and b!473648 ((_ is Concat!2037) (regOne!2786 (regTwo!2786 r!20230)))) b!473741))

(assert (= (and b!473648 ((_ is Star!1137) (regOne!2786 (regTwo!2786 r!20230)))) b!473742))

(assert (= (and b!473648 ((_ is Union!1137) (regOne!2786 (regTwo!2786 r!20230)))) b!473743))

(declare-fun b!473744 () Bool)

(declare-fun e!289554 () Bool)

(assert (=> b!473744 (= e!289554 tp_is_empty!2271)))

(declare-fun b!473747 () Bool)

(declare-fun tp!131473 () Bool)

(declare-fun tp!131474 () Bool)

(assert (=> b!473747 (= e!289554 (and tp!131473 tp!131474))))

(declare-fun b!473746 () Bool)

(declare-fun tp!131475 () Bool)

(assert (=> b!473746 (= e!289554 tp!131475)))

(declare-fun b!473745 () Bool)

(declare-fun tp!131472 () Bool)

(declare-fun tp!131476 () Bool)

(assert (=> b!473745 (= e!289554 (and tp!131472 tp!131476))))

(assert (=> b!473648 (= tp!131421 e!289554)))

(assert (= (and b!473648 ((_ is ElementMatch!1137) (regTwo!2786 (regTwo!2786 r!20230)))) b!473744))

(assert (= (and b!473648 ((_ is Concat!2037) (regTwo!2786 (regTwo!2786 r!20230)))) b!473745))

(assert (= (and b!473648 ((_ is Star!1137) (regTwo!2786 (regTwo!2786 r!20230)))) b!473746))

(assert (= (and b!473648 ((_ is Union!1137) (regTwo!2786 (regTwo!2786 r!20230)))) b!473747))

(declare-fun b!473748 () Bool)

(declare-fun e!289555 () Bool)

(assert (=> b!473748 (= e!289555 tp_is_empty!2271)))

(declare-fun b!473751 () Bool)

(declare-fun tp!131478 () Bool)

(declare-fun tp!131479 () Bool)

(assert (=> b!473751 (= e!289555 (and tp!131478 tp!131479))))

(declare-fun b!473750 () Bool)

(declare-fun tp!131480 () Bool)

(assert (=> b!473750 (= e!289555 tp!131480)))

(declare-fun b!473749 () Bool)

(declare-fun tp!131477 () Bool)

(declare-fun tp!131481 () Bool)

(assert (=> b!473749 (= e!289555 (and tp!131477 tp!131481))))

(assert (=> b!473666 (= tp!131438 e!289555)))

(assert (= (and b!473666 ((_ is ElementMatch!1137) (regOne!2787 (regTwo!2787 r!20230)))) b!473748))

(assert (= (and b!473666 ((_ is Concat!2037) (regOne!2787 (regTwo!2787 r!20230)))) b!473749))

(assert (= (and b!473666 ((_ is Star!1137) (regOne!2787 (regTwo!2787 r!20230)))) b!473750))

(assert (= (and b!473666 ((_ is Union!1137) (regOne!2787 (regTwo!2787 r!20230)))) b!473751))

(declare-fun b!473752 () Bool)

(declare-fun e!289556 () Bool)

(assert (=> b!473752 (= e!289556 tp_is_empty!2271)))

(declare-fun b!473755 () Bool)

(declare-fun tp!131483 () Bool)

(declare-fun tp!131484 () Bool)

(assert (=> b!473755 (= e!289556 (and tp!131483 tp!131484))))

(declare-fun b!473754 () Bool)

(declare-fun tp!131485 () Bool)

(assert (=> b!473754 (= e!289556 tp!131485)))

(declare-fun b!473753 () Bool)

(declare-fun tp!131482 () Bool)

(declare-fun tp!131486 () Bool)

(assert (=> b!473753 (= e!289556 (and tp!131482 tp!131486))))

(assert (=> b!473666 (= tp!131439 e!289556)))

(assert (= (and b!473666 ((_ is ElementMatch!1137) (regTwo!2787 (regTwo!2787 r!20230)))) b!473752))

(assert (= (and b!473666 ((_ is Concat!2037) (regTwo!2787 (regTwo!2787 r!20230)))) b!473753))

(assert (= (and b!473666 ((_ is Star!1137) (regTwo!2787 (regTwo!2787 r!20230)))) b!473754))

(assert (= (and b!473666 ((_ is Union!1137) (regTwo!2787 (regTwo!2787 r!20230)))) b!473755))

(declare-fun b!473756 () Bool)

(declare-fun e!289557 () Bool)

(assert (=> b!473756 (= e!289557 tp_is_empty!2271)))

(declare-fun b!473759 () Bool)

(declare-fun tp!131488 () Bool)

(declare-fun tp!131489 () Bool)

(assert (=> b!473759 (= e!289557 (and tp!131488 tp!131489))))

(declare-fun b!473758 () Bool)

(declare-fun tp!131490 () Bool)

(assert (=> b!473758 (= e!289557 tp!131490)))

(declare-fun b!473757 () Bool)

(declare-fun tp!131487 () Bool)

(declare-fun tp!131491 () Bool)

(assert (=> b!473757 (= e!289557 (and tp!131487 tp!131491))))

(assert (=> b!473665 (= tp!131440 e!289557)))

(assert (= (and b!473665 ((_ is ElementMatch!1137) (reg!1466 (regTwo!2787 r!20230)))) b!473756))

(assert (= (and b!473665 ((_ is Concat!2037) (reg!1466 (regTwo!2787 r!20230)))) b!473757))

(assert (= (and b!473665 ((_ is Star!1137) (reg!1466 (regTwo!2787 r!20230)))) b!473758))

(assert (= (and b!473665 ((_ is Union!1137) (reg!1466 (regTwo!2787 r!20230)))) b!473759))

(declare-fun b!473760 () Bool)

(declare-fun e!289558 () Bool)

(assert (=> b!473760 (= e!289558 tp_is_empty!2271)))

(declare-fun b!473763 () Bool)

(declare-fun tp!131493 () Bool)

(declare-fun tp!131494 () Bool)

(assert (=> b!473763 (= e!289558 (and tp!131493 tp!131494))))

(declare-fun b!473762 () Bool)

(declare-fun tp!131495 () Bool)

(assert (=> b!473762 (= e!289558 tp!131495)))

(declare-fun b!473761 () Bool)

(declare-fun tp!131492 () Bool)

(declare-fun tp!131496 () Bool)

(assert (=> b!473761 (= e!289558 (and tp!131492 tp!131496))))

(assert (=> b!473656 (= tp!131427 e!289558)))

(assert (= (and b!473656 ((_ is ElementMatch!1137) (regOne!2786 (regOne!2787 r!20230)))) b!473760))

(assert (= (and b!473656 ((_ is Concat!2037) (regOne!2786 (regOne!2787 r!20230)))) b!473761))

(assert (= (and b!473656 ((_ is Star!1137) (regOne!2786 (regOne!2787 r!20230)))) b!473762))

(assert (= (and b!473656 ((_ is Union!1137) (regOne!2786 (regOne!2787 r!20230)))) b!473763))

(declare-fun b!473764 () Bool)

(declare-fun e!289559 () Bool)

(assert (=> b!473764 (= e!289559 tp_is_empty!2271)))

(declare-fun b!473767 () Bool)

(declare-fun tp!131498 () Bool)

(declare-fun tp!131499 () Bool)

(assert (=> b!473767 (= e!289559 (and tp!131498 tp!131499))))

(declare-fun b!473766 () Bool)

(declare-fun tp!131500 () Bool)

(assert (=> b!473766 (= e!289559 tp!131500)))

(declare-fun b!473765 () Bool)

(declare-fun tp!131497 () Bool)

(declare-fun tp!131501 () Bool)

(assert (=> b!473765 (= e!289559 (and tp!131497 tp!131501))))

(assert (=> b!473656 (= tp!131431 e!289559)))

(assert (= (and b!473656 ((_ is ElementMatch!1137) (regTwo!2786 (regOne!2787 r!20230)))) b!473764))

(assert (= (and b!473656 ((_ is Concat!2037) (regTwo!2786 (regOne!2787 r!20230)))) b!473765))

(assert (= (and b!473656 ((_ is Star!1137) (regTwo!2786 (regOne!2787 r!20230)))) b!473766))

(assert (= (and b!473656 ((_ is Union!1137) (regTwo!2786 (regOne!2787 r!20230)))) b!473767))

(declare-fun b!473768 () Bool)

(declare-fun e!289560 () Bool)

(assert (=> b!473768 (= e!289560 tp_is_empty!2271)))

(declare-fun b!473771 () Bool)

(declare-fun tp!131503 () Bool)

(declare-fun tp!131504 () Bool)

(assert (=> b!473771 (= e!289560 (and tp!131503 tp!131504))))

(declare-fun b!473770 () Bool)

(declare-fun tp!131505 () Bool)

(assert (=> b!473770 (= e!289560 tp!131505)))

(declare-fun b!473769 () Bool)

(declare-fun tp!131502 () Bool)

(declare-fun tp!131506 () Bool)

(assert (=> b!473769 (= e!289560 (and tp!131502 tp!131506))))

(assert (=> b!473674 (= tp!131448 e!289560)))

(assert (= (and b!473674 ((_ is ElementMatch!1137) (regOne!2787 (reg!1466 r!20230)))) b!473768))

(assert (= (and b!473674 ((_ is Concat!2037) (regOne!2787 (reg!1466 r!20230)))) b!473769))

(assert (= (and b!473674 ((_ is Star!1137) (regOne!2787 (reg!1466 r!20230)))) b!473770))

(assert (= (and b!473674 ((_ is Union!1137) (regOne!2787 (reg!1466 r!20230)))) b!473771))

(declare-fun b!473772 () Bool)

(declare-fun e!289561 () Bool)

(assert (=> b!473772 (= e!289561 tp_is_empty!2271)))

(declare-fun b!473775 () Bool)

(declare-fun tp!131508 () Bool)

(declare-fun tp!131509 () Bool)

(assert (=> b!473775 (= e!289561 (and tp!131508 tp!131509))))

(declare-fun b!473774 () Bool)

(declare-fun tp!131510 () Bool)

(assert (=> b!473774 (= e!289561 tp!131510)))

(declare-fun b!473773 () Bool)

(declare-fun tp!131507 () Bool)

(declare-fun tp!131511 () Bool)

(assert (=> b!473773 (= e!289561 (and tp!131507 tp!131511))))

(assert (=> b!473674 (= tp!131449 e!289561)))

(assert (= (and b!473674 ((_ is ElementMatch!1137) (regTwo!2787 (reg!1466 r!20230)))) b!473772))

(assert (= (and b!473674 ((_ is Concat!2037) (regTwo!2787 (reg!1466 r!20230)))) b!473773))

(assert (= (and b!473674 ((_ is Star!1137) (regTwo!2787 (reg!1466 r!20230)))) b!473774))

(assert (= (and b!473674 ((_ is Union!1137) (regTwo!2787 (reg!1466 r!20230)))) b!473775))

(declare-fun b!473776 () Bool)

(declare-fun e!289562 () Bool)

(assert (=> b!473776 (= e!289562 tp_is_empty!2271)))

(declare-fun b!473779 () Bool)

(declare-fun tp!131513 () Bool)

(declare-fun tp!131514 () Bool)

(assert (=> b!473779 (= e!289562 (and tp!131513 tp!131514))))

(declare-fun b!473778 () Bool)

(declare-fun tp!131515 () Bool)

(assert (=> b!473778 (= e!289562 tp!131515)))

(declare-fun b!473777 () Bool)

(declare-fun tp!131512 () Bool)

(declare-fun tp!131516 () Bool)

(assert (=> b!473777 (= e!289562 (and tp!131512 tp!131516))))

(assert (=> b!473673 (= tp!131450 e!289562)))

(assert (= (and b!473673 ((_ is ElementMatch!1137) (reg!1466 (reg!1466 r!20230)))) b!473776))

(assert (= (and b!473673 ((_ is Concat!2037) (reg!1466 (reg!1466 r!20230)))) b!473777))

(assert (= (and b!473673 ((_ is Star!1137) (reg!1466 (reg!1466 r!20230)))) b!473778))

(assert (= (and b!473673 ((_ is Union!1137) (reg!1466 (reg!1466 r!20230)))) b!473779))

(declare-fun b!473780 () Bool)

(declare-fun e!289563 () Bool)

(assert (=> b!473780 (= e!289563 tp_is_empty!2271)))

(declare-fun b!473783 () Bool)

(declare-fun tp!131518 () Bool)

(declare-fun tp!131519 () Bool)

(assert (=> b!473783 (= e!289563 (and tp!131518 tp!131519))))

(declare-fun b!473782 () Bool)

(declare-fun tp!131520 () Bool)

(assert (=> b!473782 (= e!289563 tp!131520)))

(declare-fun b!473781 () Bool)

(declare-fun tp!131517 () Bool)

(declare-fun tp!131521 () Bool)

(assert (=> b!473781 (= e!289563 (and tp!131517 tp!131521))))

(assert (=> b!473664 (= tp!131437 e!289563)))

(assert (= (and b!473664 ((_ is ElementMatch!1137) (regOne!2786 (regTwo!2787 r!20230)))) b!473780))

(assert (= (and b!473664 ((_ is Concat!2037) (regOne!2786 (regTwo!2787 r!20230)))) b!473781))

(assert (= (and b!473664 ((_ is Star!1137) (regOne!2786 (regTwo!2787 r!20230)))) b!473782))

(assert (= (and b!473664 ((_ is Union!1137) (regOne!2786 (regTwo!2787 r!20230)))) b!473783))

(declare-fun b!473784 () Bool)

(declare-fun e!289564 () Bool)

(assert (=> b!473784 (= e!289564 tp_is_empty!2271)))

(declare-fun b!473787 () Bool)

(declare-fun tp!131523 () Bool)

(declare-fun tp!131524 () Bool)

(assert (=> b!473787 (= e!289564 (and tp!131523 tp!131524))))

(declare-fun b!473786 () Bool)

(declare-fun tp!131525 () Bool)

(assert (=> b!473786 (= e!289564 tp!131525)))

(declare-fun b!473785 () Bool)

(declare-fun tp!131522 () Bool)

(declare-fun tp!131526 () Bool)

(assert (=> b!473785 (= e!289564 (and tp!131522 tp!131526))))

(assert (=> b!473664 (= tp!131441 e!289564)))

(assert (= (and b!473664 ((_ is ElementMatch!1137) (regTwo!2786 (regTwo!2787 r!20230)))) b!473784))

(assert (= (and b!473664 ((_ is Concat!2037) (regTwo!2786 (regTwo!2787 r!20230)))) b!473785))

(assert (= (and b!473664 ((_ is Star!1137) (regTwo!2786 (regTwo!2787 r!20230)))) b!473786))

(assert (= (and b!473664 ((_ is Union!1137) (regTwo!2786 (regTwo!2787 r!20230)))) b!473787))

(declare-fun b!473788 () Bool)

(declare-fun e!289565 () Bool)

(assert (=> b!473788 (= e!289565 tp_is_empty!2271)))

(declare-fun b!473791 () Bool)

(declare-fun tp!131528 () Bool)

(declare-fun tp!131529 () Bool)

(assert (=> b!473791 (= e!289565 (and tp!131528 tp!131529))))

(declare-fun b!473790 () Bool)

(declare-fun tp!131530 () Bool)

(assert (=> b!473790 (= e!289565 tp!131530)))

(declare-fun b!473789 () Bool)

(declare-fun tp!131527 () Bool)

(declare-fun tp!131531 () Bool)

(assert (=> b!473789 (= e!289565 (and tp!131527 tp!131531))))

(assert (=> b!473672 (= tp!131447 e!289565)))

(assert (= (and b!473672 ((_ is ElementMatch!1137) (regOne!2786 (reg!1466 r!20230)))) b!473788))

(assert (= (and b!473672 ((_ is Concat!2037) (regOne!2786 (reg!1466 r!20230)))) b!473789))

(assert (= (and b!473672 ((_ is Star!1137) (regOne!2786 (reg!1466 r!20230)))) b!473790))

(assert (= (and b!473672 ((_ is Union!1137) (regOne!2786 (reg!1466 r!20230)))) b!473791))

(declare-fun b!473792 () Bool)

(declare-fun e!289566 () Bool)

(assert (=> b!473792 (= e!289566 tp_is_empty!2271)))

(declare-fun b!473795 () Bool)

(declare-fun tp!131533 () Bool)

(declare-fun tp!131534 () Bool)

(assert (=> b!473795 (= e!289566 (and tp!131533 tp!131534))))

(declare-fun b!473794 () Bool)

(declare-fun tp!131535 () Bool)

(assert (=> b!473794 (= e!289566 tp!131535)))

(declare-fun b!473793 () Bool)

(declare-fun tp!131532 () Bool)

(declare-fun tp!131536 () Bool)

(assert (=> b!473793 (= e!289566 (and tp!131532 tp!131536))))

(assert (=> b!473672 (= tp!131451 e!289566)))

(assert (= (and b!473672 ((_ is ElementMatch!1137) (regTwo!2786 (reg!1466 r!20230)))) b!473792))

(assert (= (and b!473672 ((_ is Concat!2037) (regTwo!2786 (reg!1466 r!20230)))) b!473793))

(assert (= (and b!473672 ((_ is Star!1137) (regTwo!2786 (reg!1466 r!20230)))) b!473794))

(assert (= (and b!473672 ((_ is Union!1137) (regTwo!2786 (reg!1466 r!20230)))) b!473795))

(declare-fun b!473796 () Bool)

(declare-fun e!289567 () Bool)

(assert (=> b!473796 (= e!289567 tp_is_empty!2271)))

(declare-fun b!473799 () Bool)

(declare-fun tp!131538 () Bool)

(declare-fun tp!131539 () Bool)

(assert (=> b!473799 (= e!289567 (and tp!131538 tp!131539))))

(declare-fun b!473798 () Bool)

(declare-fun tp!131540 () Bool)

(assert (=> b!473798 (= e!289567 tp!131540)))

(declare-fun b!473797 () Bool)

(declare-fun tp!131537 () Bool)

(declare-fun tp!131541 () Bool)

(assert (=> b!473797 (= e!289567 (and tp!131537 tp!131541))))

(assert (=> b!473646 (= tp!131413 e!289567)))

(assert (= (and b!473646 ((_ is ElementMatch!1137) (regOne!2787 (regOne!2786 r!20230)))) b!473796))

(assert (= (and b!473646 ((_ is Concat!2037) (regOne!2787 (regOne!2786 r!20230)))) b!473797))

(assert (= (and b!473646 ((_ is Star!1137) (regOne!2787 (regOne!2786 r!20230)))) b!473798))

(assert (= (and b!473646 ((_ is Union!1137) (regOne!2787 (regOne!2786 r!20230)))) b!473799))

(declare-fun b!473800 () Bool)

(declare-fun e!289568 () Bool)

(assert (=> b!473800 (= e!289568 tp_is_empty!2271)))

(declare-fun b!473803 () Bool)

(declare-fun tp!131543 () Bool)

(declare-fun tp!131544 () Bool)

(assert (=> b!473803 (= e!289568 (and tp!131543 tp!131544))))

(declare-fun b!473802 () Bool)

(declare-fun tp!131545 () Bool)

(assert (=> b!473802 (= e!289568 tp!131545)))

(declare-fun b!473801 () Bool)

(declare-fun tp!131542 () Bool)

(declare-fun tp!131546 () Bool)

(assert (=> b!473801 (= e!289568 (and tp!131542 tp!131546))))

(assert (=> b!473646 (= tp!131414 e!289568)))

(assert (= (and b!473646 ((_ is ElementMatch!1137) (regTwo!2787 (regOne!2786 r!20230)))) b!473800))

(assert (= (and b!473646 ((_ is Concat!2037) (regTwo!2787 (regOne!2786 r!20230)))) b!473801))

(assert (= (and b!473646 ((_ is Star!1137) (regTwo!2787 (regOne!2786 r!20230)))) b!473802))

(assert (= (and b!473646 ((_ is Union!1137) (regTwo!2787 (regOne!2786 r!20230)))) b!473803))

(declare-fun b!473804 () Bool)

(declare-fun e!289569 () Bool)

(assert (=> b!473804 (= e!289569 tp_is_empty!2271)))

(declare-fun b!473807 () Bool)

(declare-fun tp!131548 () Bool)

(declare-fun tp!131549 () Bool)

(assert (=> b!473807 (= e!289569 (and tp!131548 tp!131549))))

(declare-fun b!473806 () Bool)

(declare-fun tp!131550 () Bool)

(assert (=> b!473806 (= e!289569 tp!131550)))

(declare-fun b!473805 () Bool)

(declare-fun tp!131547 () Bool)

(declare-fun tp!131551 () Bool)

(assert (=> b!473805 (= e!289569 (and tp!131547 tp!131551))))

(assert (=> b!473645 (= tp!131415 e!289569)))

(assert (= (and b!473645 ((_ is ElementMatch!1137) (reg!1466 (regOne!2786 r!20230)))) b!473804))

(assert (= (and b!473645 ((_ is Concat!2037) (reg!1466 (regOne!2786 r!20230)))) b!473805))

(assert (= (and b!473645 ((_ is Star!1137) (reg!1466 (regOne!2786 r!20230)))) b!473806))

(assert (= (and b!473645 ((_ is Union!1137) (reg!1466 (regOne!2786 r!20230)))) b!473807))

(declare-fun b!473808 () Bool)

(declare-fun e!289570 () Bool)

(assert (=> b!473808 (= e!289570 tp_is_empty!2271)))

(declare-fun b!473811 () Bool)

(declare-fun tp!131553 () Bool)

(declare-fun tp!131554 () Bool)

(assert (=> b!473811 (= e!289570 (and tp!131553 tp!131554))))

(declare-fun b!473810 () Bool)

(declare-fun tp!131555 () Bool)

(assert (=> b!473810 (= e!289570 tp!131555)))

(declare-fun b!473809 () Bool)

(declare-fun tp!131552 () Bool)

(declare-fun tp!131556 () Bool)

(assert (=> b!473809 (= e!289570 (and tp!131552 tp!131556))))

(assert (=> b!473650 (= tp!131418 e!289570)))

(assert (= (and b!473650 ((_ is ElementMatch!1137) (regOne!2787 (regTwo!2786 r!20230)))) b!473808))

(assert (= (and b!473650 ((_ is Concat!2037) (regOne!2787 (regTwo!2786 r!20230)))) b!473809))

(assert (= (and b!473650 ((_ is Star!1137) (regOne!2787 (regTwo!2786 r!20230)))) b!473810))

(assert (= (and b!473650 ((_ is Union!1137) (regOne!2787 (regTwo!2786 r!20230)))) b!473811))

(declare-fun b!473812 () Bool)

(declare-fun e!289571 () Bool)

(assert (=> b!473812 (= e!289571 tp_is_empty!2271)))

(declare-fun b!473815 () Bool)

(declare-fun tp!131558 () Bool)

(declare-fun tp!131559 () Bool)

(assert (=> b!473815 (= e!289571 (and tp!131558 tp!131559))))

(declare-fun b!473814 () Bool)

(declare-fun tp!131560 () Bool)

(assert (=> b!473814 (= e!289571 tp!131560)))

(declare-fun b!473813 () Bool)

(declare-fun tp!131557 () Bool)

(declare-fun tp!131561 () Bool)

(assert (=> b!473813 (= e!289571 (and tp!131557 tp!131561))))

(assert (=> b!473650 (= tp!131419 e!289571)))

(assert (= (and b!473650 ((_ is ElementMatch!1137) (regTwo!2787 (regTwo!2786 r!20230)))) b!473812))

(assert (= (and b!473650 ((_ is Concat!2037) (regTwo!2787 (regTwo!2786 r!20230)))) b!473813))

(assert (= (and b!473650 ((_ is Star!1137) (regTwo!2787 (regTwo!2786 r!20230)))) b!473814))

(assert (= (and b!473650 ((_ is Union!1137) (regTwo!2787 (regTwo!2786 r!20230)))) b!473815))

(declare-fun b!473816 () Bool)

(declare-fun e!289572 () Bool)

(assert (=> b!473816 (= e!289572 tp_is_empty!2271)))

(declare-fun b!473819 () Bool)

(declare-fun tp!131563 () Bool)

(declare-fun tp!131564 () Bool)

(assert (=> b!473819 (= e!289572 (and tp!131563 tp!131564))))

(declare-fun b!473818 () Bool)

(declare-fun tp!131565 () Bool)

(assert (=> b!473818 (= e!289572 tp!131565)))

(declare-fun b!473817 () Bool)

(declare-fun tp!131562 () Bool)

(declare-fun tp!131566 () Bool)

(assert (=> b!473817 (= e!289572 (and tp!131562 tp!131566))))

(assert (=> b!473649 (= tp!131420 e!289572)))

(assert (= (and b!473649 ((_ is ElementMatch!1137) (reg!1466 (regTwo!2786 r!20230)))) b!473816))

(assert (= (and b!473649 ((_ is Concat!2037) (reg!1466 (regTwo!2786 r!20230)))) b!473817))

(assert (= (and b!473649 ((_ is Star!1137) (reg!1466 (regTwo!2786 r!20230)))) b!473818))

(assert (= (and b!473649 ((_ is Union!1137) (reg!1466 (regTwo!2786 r!20230)))) b!473819))

(declare-fun b!473820 () Bool)

(declare-fun e!289573 () Bool)

(assert (=> b!473820 (= e!289573 tp_is_empty!2271)))

(declare-fun b!473823 () Bool)

(declare-fun tp!131568 () Bool)

(declare-fun tp!131569 () Bool)

(assert (=> b!473823 (= e!289573 (and tp!131568 tp!131569))))

(declare-fun b!473822 () Bool)

(declare-fun tp!131570 () Bool)

(assert (=> b!473822 (= e!289573 tp!131570)))

(declare-fun b!473821 () Bool)

(declare-fun tp!131567 () Bool)

(declare-fun tp!131571 () Bool)

(assert (=> b!473821 (= e!289573 (and tp!131567 tp!131571))))

(assert (=> b!473658 (= tp!131428 e!289573)))

(assert (= (and b!473658 ((_ is ElementMatch!1137) (regOne!2787 (regOne!2787 r!20230)))) b!473820))

(assert (= (and b!473658 ((_ is Concat!2037) (regOne!2787 (regOne!2787 r!20230)))) b!473821))

(assert (= (and b!473658 ((_ is Star!1137) (regOne!2787 (regOne!2787 r!20230)))) b!473822))

(assert (= (and b!473658 ((_ is Union!1137) (regOne!2787 (regOne!2787 r!20230)))) b!473823))

(declare-fun b!473824 () Bool)

(declare-fun e!289574 () Bool)

(assert (=> b!473824 (= e!289574 tp_is_empty!2271)))

(declare-fun b!473827 () Bool)

(declare-fun tp!131573 () Bool)

(declare-fun tp!131574 () Bool)

(assert (=> b!473827 (= e!289574 (and tp!131573 tp!131574))))

(declare-fun b!473826 () Bool)

(declare-fun tp!131575 () Bool)

(assert (=> b!473826 (= e!289574 tp!131575)))

(declare-fun b!473825 () Bool)

(declare-fun tp!131572 () Bool)

(declare-fun tp!131576 () Bool)

(assert (=> b!473825 (= e!289574 (and tp!131572 tp!131576))))

(assert (=> b!473658 (= tp!131429 e!289574)))

(assert (= (and b!473658 ((_ is ElementMatch!1137) (regTwo!2787 (regOne!2787 r!20230)))) b!473824))

(assert (= (and b!473658 ((_ is Concat!2037) (regTwo!2787 (regOne!2787 r!20230)))) b!473825))

(assert (= (and b!473658 ((_ is Star!1137) (regTwo!2787 (regOne!2787 r!20230)))) b!473826))

(assert (= (and b!473658 ((_ is Union!1137) (regTwo!2787 (regOne!2787 r!20230)))) b!473827))

(declare-fun b!473828 () Bool)

(declare-fun e!289575 () Bool)

(assert (=> b!473828 (= e!289575 tp_is_empty!2271)))

(declare-fun b!473831 () Bool)

(declare-fun tp!131578 () Bool)

(declare-fun tp!131579 () Bool)

(assert (=> b!473831 (= e!289575 (and tp!131578 tp!131579))))

(declare-fun b!473830 () Bool)

(declare-fun tp!131580 () Bool)

(assert (=> b!473830 (= e!289575 tp!131580)))

(declare-fun b!473829 () Bool)

(declare-fun tp!131577 () Bool)

(declare-fun tp!131581 () Bool)

(assert (=> b!473829 (= e!289575 (and tp!131577 tp!131581))))

(assert (=> b!473644 (= tp!131412 e!289575)))

(assert (= (and b!473644 ((_ is ElementMatch!1137) (regOne!2786 (regOne!2786 r!20230)))) b!473828))

(assert (= (and b!473644 ((_ is Concat!2037) (regOne!2786 (regOne!2786 r!20230)))) b!473829))

(assert (= (and b!473644 ((_ is Star!1137) (regOne!2786 (regOne!2786 r!20230)))) b!473830))

(assert (= (and b!473644 ((_ is Union!1137) (regOne!2786 (regOne!2786 r!20230)))) b!473831))

(declare-fun b!473832 () Bool)

(declare-fun e!289576 () Bool)

(assert (=> b!473832 (= e!289576 tp_is_empty!2271)))

(declare-fun b!473835 () Bool)

(declare-fun tp!131583 () Bool)

(declare-fun tp!131584 () Bool)

(assert (=> b!473835 (= e!289576 (and tp!131583 tp!131584))))

(declare-fun b!473834 () Bool)

(declare-fun tp!131585 () Bool)

(assert (=> b!473834 (= e!289576 tp!131585)))

(declare-fun b!473833 () Bool)

(declare-fun tp!131582 () Bool)

(declare-fun tp!131586 () Bool)

(assert (=> b!473833 (= e!289576 (and tp!131582 tp!131586))))

(assert (=> b!473644 (= tp!131416 e!289576)))

(assert (= (and b!473644 ((_ is ElementMatch!1137) (regTwo!2786 (regOne!2786 r!20230)))) b!473832))

(assert (= (and b!473644 ((_ is Concat!2037) (regTwo!2786 (regOne!2786 r!20230)))) b!473833))

(assert (= (and b!473644 ((_ is Star!1137) (regTwo!2786 (regOne!2786 r!20230)))) b!473834))

(assert (= (and b!473644 ((_ is Union!1137) (regTwo!2786 (regOne!2786 r!20230)))) b!473835))

(check-sat (not bm!32832) (not d!179763) (not b!473789) (not b!473794) (not b!473738) (not d!179759) (not b!473751) (not b!473775) (not b!473802) (not b!473806) (not b!473785) (not b!473770) (not b!473688) (not b!473818) (not b!473739) (not b!473758) (not b!473769) (not b!473797) (not b!473801) (not b!473777) (not b!473783) (not b!473830) (not b!473781) (not b!473737) (not b!473765) (not b!473767) (not b!473811) (not b!473810) (not b!473813) tp_is_empty!2271 (not b!473787) (not b!473807) (not b!473834) (not bm!32838) (not b!473742) (not b!473822) (not b!473771) (not b!473763) (not b!473778) (not bm!32839) (not b!473745) (not b!473762) (not b!473795) (not b!473791) (not b!473718) (not b!473782) (not b!473747) (not b!473805) (not b!473799) (not bm!32845) (not d!179755) (not b!473759) (not b!473817) (not bm!32841) (not b!473815) (not b!473835) (not b!473746) (not b!473829) (not b!473814) (not b!473749) (not bm!32843) (not b!473743) (not b!473827) (not b!473798) (not b!473821) (not bm!32844) (not b!473766) (not b!473774) (not b!473809) (not b!473786) (not b!473831) (not b!473803) (not b!473823) (not b!473790) (not b!473754) (not b!473773) (not b!473819) (not b!473753) (not b!473757) (not bm!32831) (not b!473741) (not b!473755) (not b!473833) (not d!179761) (not bm!32840) (not b!473761) (not b!473750) (not b!473779) (not b!473826) (not b!473825) (not bm!32846) (not b!473793))
(check-sat)

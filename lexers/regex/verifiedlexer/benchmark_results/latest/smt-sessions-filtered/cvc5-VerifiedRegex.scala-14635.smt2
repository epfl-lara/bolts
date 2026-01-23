; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756678 () Bool)

(assert start!756678)

(declare-fun b!8033422 () Bool)

(declare-fun e!4732441 () Bool)

(declare-datatypes ((C!43782 0))(
  ( (C!43783 (val!32667 Int)) )
))
(declare-datatypes ((Regex!21722 0))(
  ( (ElementMatch!21722 (c!1473703 C!43782)) (Concat!30725 (regOne!43956 Regex!21722) (regTwo!43956 Regex!21722)) (EmptyExpr!21722) (Star!21722 (reg!22051 Regex!21722)) (EmptyLang!21722) (Union!21722 (regOne!43957 Regex!21722) (regTwo!43957 Regex!21722)) )
))
(declare-fun r!13107 () Regex!21722)

(declare-fun validRegex!12018 (Regex!21722) Bool)

(assert (=> b!8033422 (= e!4732441 (not (validRegex!12018 (regOne!43956 r!13107))))))

(declare-fun b!8033423 () Bool)

(declare-fun res!3176682 () Bool)

(assert (=> b!8033423 (=> (not res!3176682) (not e!4732441))))

(assert (=> b!8033423 (= res!3176682 (and (not (is-EmptyExpr!21722 r!13107)) (not (is-EmptyLang!21722 r!13107)) (not (is-ElementMatch!21722 r!13107)) (not (is-Union!21722 r!13107)) (not (is-Star!21722 r!13107))))))

(declare-fun b!8033424 () Bool)

(declare-fun e!4732440 () Bool)

(declare-fun tp!2404755 () Bool)

(assert (=> b!8033424 (= e!4732440 tp!2404755)))

(declare-fun b!8033425 () Bool)

(declare-fun tp!2404757 () Bool)

(declare-fun tp!2404758 () Bool)

(assert (=> b!8033425 (= e!4732440 (and tp!2404757 tp!2404758))))

(declare-fun res!3176683 () Bool)

(assert (=> start!756678 (=> (not res!3176683) (not e!4732441))))

(assert (=> start!756678 (= res!3176683 (validRegex!12018 r!13107))))

(assert (=> start!756678 e!4732441))

(assert (=> start!756678 e!4732440))

(declare-fun b!8033426 () Bool)

(declare-fun tp!2404754 () Bool)

(declare-fun tp!2404756 () Bool)

(assert (=> b!8033426 (= e!4732440 (and tp!2404754 tp!2404756))))

(declare-fun b!8033427 () Bool)

(declare-fun res!3176684 () Bool)

(assert (=> b!8033427 (=> (not res!3176684) (not e!4732441))))

(declare-fun nullable!9755 (Regex!21722) Bool)

(assert (=> b!8033427 (= res!3176684 (not (nullable!9755 (regOne!43956 r!13107))))))

(declare-fun b!8033428 () Bool)

(declare-fun tp_is_empty!54439 () Bool)

(assert (=> b!8033428 (= e!4732440 tp_is_empty!54439)))

(assert (= (and start!756678 res!3176683) b!8033423))

(assert (= (and b!8033423 res!3176682) b!8033427))

(assert (= (and b!8033427 res!3176684) b!8033422))

(assert (= (and start!756678 (is-ElementMatch!21722 r!13107)) b!8033428))

(assert (= (and start!756678 (is-Concat!30725 r!13107)) b!8033426))

(assert (= (and start!756678 (is-Star!21722 r!13107)) b!8033424))

(assert (= (and start!756678 (is-Union!21722 r!13107)) b!8033425))

(declare-fun m!8392730 () Bool)

(assert (=> b!8033422 m!8392730))

(declare-fun m!8392732 () Bool)

(assert (=> start!756678 m!8392732))

(declare-fun m!8392734 () Bool)

(assert (=> b!8033427 m!8392734))

(push 1)

(assert (not b!8033425))

(assert (not b!8033426))

(assert (not b!8033427))

(assert (not b!8033422))

(assert (not b!8033424))

(assert (not start!756678))

(assert tp_is_empty!54439)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!8033468 () Bool)

(declare-fun e!4732468 () Bool)

(declare-fun call!745306 () Bool)

(assert (=> b!8033468 (= e!4732468 call!745306)))

(declare-fun b!8033469 () Bool)

(declare-fun e!4732464 () Bool)

(assert (=> b!8033469 (= e!4732464 e!4732468)))

(declare-fun res!3176707 () Bool)

(assert (=> b!8033469 (= res!3176707 (not (nullable!9755 (reg!22051 r!13107))))))

(assert (=> b!8033469 (=> (not res!3176707) (not e!4732468))))

(declare-fun d!2394826 () Bool)

(declare-fun res!3176705 () Bool)

(declare-fun e!4732465 () Bool)

(assert (=> d!2394826 (=> res!3176705 e!4732465)))

(assert (=> d!2394826 (= res!3176705 (is-ElementMatch!21722 r!13107))))

(assert (=> d!2394826 (= (validRegex!12018 r!13107) e!4732465)))

(declare-fun b!8033470 () Bool)

(declare-fun e!4732466 () Bool)

(declare-fun call!745307 () Bool)

(assert (=> b!8033470 (= e!4732466 call!745307)))

(declare-fun b!8033471 () Bool)

(declare-fun e!4732467 () Bool)

(declare-fun e!4732463 () Bool)

(assert (=> b!8033471 (= e!4732467 e!4732463)))

(declare-fun res!3176708 () Bool)

(assert (=> b!8033471 (=> (not res!3176708) (not e!4732463))))

(declare-fun call!745305 () Bool)

(assert (=> b!8033471 (= res!3176708 call!745305)))

(declare-fun b!8033472 () Bool)

(declare-fun res!3176704 () Bool)

(assert (=> b!8033472 (=> (not res!3176704) (not e!4732466))))

(assert (=> b!8033472 (= res!3176704 call!745305)))

(declare-fun e!4732462 () Bool)

(assert (=> b!8033472 (= e!4732462 e!4732466)))

(declare-fun b!8033473 () Bool)

(assert (=> b!8033473 (= e!4732465 e!4732464)))

(declare-fun c!1473709 () Bool)

(assert (=> b!8033473 (= c!1473709 (is-Star!21722 r!13107))))

(declare-fun bm!745300 () Bool)

(assert (=> bm!745300 (= call!745307 call!745306)))

(declare-fun b!8033474 () Bool)

(declare-fun res!3176706 () Bool)

(assert (=> b!8033474 (=> res!3176706 e!4732467)))

(assert (=> b!8033474 (= res!3176706 (not (is-Concat!30725 r!13107)))))

(assert (=> b!8033474 (= e!4732462 e!4732467)))

(declare-fun b!8033475 () Bool)

(assert (=> b!8033475 (= e!4732464 e!4732462)))

(declare-fun c!1473710 () Bool)

(assert (=> b!8033475 (= c!1473710 (is-Union!21722 r!13107))))

(declare-fun bm!745301 () Bool)

(assert (=> bm!745301 (= call!745306 (validRegex!12018 (ite c!1473709 (reg!22051 r!13107) (ite c!1473710 (regTwo!43957 r!13107) (regTwo!43956 r!13107)))))))

(declare-fun bm!745302 () Bool)

(assert (=> bm!745302 (= call!745305 (validRegex!12018 (ite c!1473710 (regOne!43957 r!13107) (regOne!43956 r!13107))))))

(declare-fun b!8033476 () Bool)

(assert (=> b!8033476 (= e!4732463 call!745307)))

(assert (= (and d!2394826 (not res!3176705)) b!8033473))

(assert (= (and b!8033473 c!1473709) b!8033469))

(assert (= (and b!8033473 (not c!1473709)) b!8033475))

(assert (= (and b!8033469 res!3176707) b!8033468))

(assert (= (and b!8033475 c!1473710) b!8033472))

(assert (= (and b!8033475 (not c!1473710)) b!8033474))

(assert (= (and b!8033472 res!3176704) b!8033470))

(assert (= (and b!8033474 (not res!3176706)) b!8033471))

(assert (= (and b!8033471 res!3176708) b!8033476))

(assert (= (or b!8033470 b!8033476) bm!745300))

(assert (= (or b!8033472 b!8033471) bm!745302))

(assert (= (or b!8033468 bm!745300) bm!745301))

(declare-fun m!8392744 () Bool)

(assert (=> b!8033469 m!8392744))

(declare-fun m!8392746 () Bool)

(assert (=> bm!745301 m!8392746))

(declare-fun m!8392748 () Bool)

(assert (=> bm!745302 m!8392748))

(assert (=> start!756678 d!2394826))

(declare-fun b!8033477 () Bool)

(declare-fun e!4732475 () Bool)

(declare-fun call!745309 () Bool)

(assert (=> b!8033477 (= e!4732475 call!745309)))

(declare-fun b!8033478 () Bool)

(declare-fun e!4732471 () Bool)

(assert (=> b!8033478 (= e!4732471 e!4732475)))

(declare-fun res!3176712 () Bool)

(assert (=> b!8033478 (= res!3176712 (not (nullable!9755 (reg!22051 (regOne!43956 r!13107)))))))

(assert (=> b!8033478 (=> (not res!3176712) (not e!4732475))))

(declare-fun d!2394832 () Bool)

(declare-fun res!3176710 () Bool)

(declare-fun e!4732472 () Bool)

(assert (=> d!2394832 (=> res!3176710 e!4732472)))

(assert (=> d!2394832 (= res!3176710 (is-ElementMatch!21722 (regOne!43956 r!13107)))))

(assert (=> d!2394832 (= (validRegex!12018 (regOne!43956 r!13107)) e!4732472)))

(declare-fun b!8033479 () Bool)

(declare-fun e!4732473 () Bool)

(declare-fun call!745310 () Bool)

(assert (=> b!8033479 (= e!4732473 call!745310)))

(declare-fun b!8033480 () Bool)

(declare-fun e!4732474 () Bool)

(declare-fun e!4732470 () Bool)

(assert (=> b!8033480 (= e!4732474 e!4732470)))

(declare-fun res!3176713 () Bool)

(assert (=> b!8033480 (=> (not res!3176713) (not e!4732470))))

(declare-fun call!745308 () Bool)

(assert (=> b!8033480 (= res!3176713 call!745308)))

(declare-fun b!8033481 () Bool)

(declare-fun res!3176709 () Bool)

(assert (=> b!8033481 (=> (not res!3176709) (not e!4732473))))

(assert (=> b!8033481 (= res!3176709 call!745308)))

(declare-fun e!4732469 () Bool)

(assert (=> b!8033481 (= e!4732469 e!4732473)))

(declare-fun b!8033482 () Bool)

(assert (=> b!8033482 (= e!4732472 e!4732471)))

(declare-fun c!1473711 () Bool)

(assert (=> b!8033482 (= c!1473711 (is-Star!21722 (regOne!43956 r!13107)))))

(declare-fun bm!745303 () Bool)

(assert (=> bm!745303 (= call!745310 call!745309)))

(declare-fun b!8033483 () Bool)

(declare-fun res!3176711 () Bool)

(assert (=> b!8033483 (=> res!3176711 e!4732474)))

(assert (=> b!8033483 (= res!3176711 (not (is-Concat!30725 (regOne!43956 r!13107))))))

(assert (=> b!8033483 (= e!4732469 e!4732474)))

(declare-fun b!8033484 () Bool)

(assert (=> b!8033484 (= e!4732471 e!4732469)))

(declare-fun c!1473712 () Bool)

(assert (=> b!8033484 (= c!1473712 (is-Union!21722 (regOne!43956 r!13107)))))

(declare-fun bm!745304 () Bool)

(assert (=> bm!745304 (= call!745309 (validRegex!12018 (ite c!1473711 (reg!22051 (regOne!43956 r!13107)) (ite c!1473712 (regTwo!43957 (regOne!43956 r!13107)) (regTwo!43956 (regOne!43956 r!13107))))))))

(declare-fun bm!745305 () Bool)

(assert (=> bm!745305 (= call!745308 (validRegex!12018 (ite c!1473712 (regOne!43957 (regOne!43956 r!13107)) (regOne!43956 (regOne!43956 r!13107)))))))

(declare-fun b!8033485 () Bool)

(assert (=> b!8033485 (= e!4732470 call!745310)))

(assert (= (and d!2394832 (not res!3176710)) b!8033482))

(assert (= (and b!8033482 c!1473711) b!8033478))

(assert (= (and b!8033482 (not c!1473711)) b!8033484))

(assert (= (and b!8033478 res!3176712) b!8033477))

(assert (= (and b!8033484 c!1473712) b!8033481))

(assert (= (and b!8033484 (not c!1473712)) b!8033483))

(assert (= (and b!8033481 res!3176709) b!8033479))

(assert (= (and b!8033483 (not res!3176711)) b!8033480))

(assert (= (and b!8033480 res!3176713) b!8033485))

(assert (= (or b!8033479 b!8033485) bm!745303))

(assert (= (or b!8033481 b!8033480) bm!745305))

(assert (= (or b!8033477 bm!745303) bm!745304))

(declare-fun m!8392750 () Bool)

(assert (=> b!8033478 m!8392750))

(declare-fun m!8392752 () Bool)

(assert (=> bm!745304 m!8392752))

(declare-fun m!8392754 () Bool)

(assert (=> bm!745305 m!8392754))

(assert (=> b!8033422 d!2394832))

(declare-fun d!2394834 () Bool)

(declare-fun nullableFct!3857 (Regex!21722) Bool)

(assert (=> d!2394834 (= (nullable!9755 (regOne!43956 r!13107)) (nullableFct!3857 (regOne!43956 r!13107)))))

(declare-fun bs!1971476 () Bool)

(assert (= bs!1971476 d!2394834))

(declare-fun m!8392756 () Bool)

(assert (=> bs!1971476 m!8392756))

(assert (=> b!8033427 d!2394834))

(declare-fun e!4732480 () Bool)

(assert (=> b!8033426 (= tp!2404754 e!4732480)))

(declare-fun b!8033499 () Bool)

(declare-fun tp!2404788 () Bool)

(declare-fun tp!2404787 () Bool)

(assert (=> b!8033499 (= e!4732480 (and tp!2404788 tp!2404787))))

(declare-fun b!8033498 () Bool)

(assert (=> b!8033498 (= e!4732480 tp_is_empty!54439)))

(declare-fun b!8033500 () Bool)

(declare-fun tp!2404786 () Bool)

(assert (=> b!8033500 (= e!4732480 tp!2404786)))

(declare-fun b!8033501 () Bool)

(declare-fun tp!2404785 () Bool)

(declare-fun tp!2404784 () Bool)

(assert (=> b!8033501 (= e!4732480 (and tp!2404785 tp!2404784))))

(assert (= (and b!8033426 (is-ElementMatch!21722 (regOne!43956 r!13107))) b!8033498))

(assert (= (and b!8033426 (is-Concat!30725 (regOne!43956 r!13107))) b!8033499))

(assert (= (and b!8033426 (is-Star!21722 (regOne!43956 r!13107))) b!8033500))

(assert (= (and b!8033426 (is-Union!21722 (regOne!43956 r!13107))) b!8033501))

(declare-fun e!4732482 () Bool)

(assert (=> b!8033426 (= tp!2404756 e!4732482)))

(declare-fun b!8033507 () Bool)

(declare-fun tp!2404793 () Bool)

(declare-fun tp!2404792 () Bool)

(assert (=> b!8033507 (= e!4732482 (and tp!2404793 tp!2404792))))

(declare-fun b!8033506 () Bool)

(assert (=> b!8033506 (= e!4732482 tp_is_empty!54439)))

(declare-fun b!8033508 () Bool)

(declare-fun tp!2404791 () Bool)

(assert (=> b!8033508 (= e!4732482 tp!2404791)))

(declare-fun b!8033509 () Bool)

(declare-fun tp!2404790 () Bool)

(declare-fun tp!2404789 () Bool)

(assert (=> b!8033509 (= e!4732482 (and tp!2404790 tp!2404789))))

(assert (= (and b!8033426 (is-ElementMatch!21722 (regTwo!43956 r!13107))) b!8033506))

(assert (= (and b!8033426 (is-Concat!30725 (regTwo!43956 r!13107))) b!8033507))

(assert (= (and b!8033426 (is-Star!21722 (regTwo!43956 r!13107))) b!8033508))

(assert (= (and b!8033426 (is-Union!21722 (regTwo!43956 r!13107))) b!8033509))

(declare-fun e!4732486 () Bool)

(assert (=> b!8033425 (= tp!2404757 e!4732486)))

(declare-fun b!8033513 () Bool)

(declare-fun tp!2404798 () Bool)

(declare-fun tp!2404797 () Bool)

(assert (=> b!8033513 (= e!4732486 (and tp!2404798 tp!2404797))))

(declare-fun b!8033512 () Bool)

(assert (=> b!8033512 (= e!4732486 tp_is_empty!54439)))

(declare-fun b!8033514 () Bool)

(declare-fun tp!2404796 () Bool)

(assert (=> b!8033514 (= e!4732486 tp!2404796)))

(declare-fun b!8033515 () Bool)

(declare-fun tp!2404795 () Bool)

(declare-fun tp!2404794 () Bool)

(assert (=> b!8033515 (= e!4732486 (and tp!2404795 tp!2404794))))

(assert (= (and b!8033425 (is-ElementMatch!21722 (regOne!43957 r!13107))) b!8033512))

(assert (= (and b!8033425 (is-Concat!30725 (regOne!43957 r!13107))) b!8033513))

(assert (= (and b!8033425 (is-Star!21722 (regOne!43957 r!13107))) b!8033514))

(assert (= (and b!8033425 (is-Union!21722 (regOne!43957 r!13107))) b!8033515))

(declare-fun e!4732489 () Bool)

(assert (=> b!8033425 (= tp!2404758 e!4732489)))

(declare-fun b!8033521 () Bool)

(declare-fun tp!2404803 () Bool)

(declare-fun tp!2404802 () Bool)

(assert (=> b!8033521 (= e!4732489 (and tp!2404803 tp!2404802))))

(declare-fun b!8033520 () Bool)

(assert (=> b!8033520 (= e!4732489 tp_is_empty!54439)))

(declare-fun b!8033522 () Bool)

(declare-fun tp!2404801 () Bool)

(assert (=> b!8033522 (= e!4732489 tp!2404801)))

(declare-fun b!8033523 () Bool)

(declare-fun tp!2404800 () Bool)

(declare-fun tp!2404799 () Bool)

(assert (=> b!8033523 (= e!4732489 (and tp!2404800 tp!2404799))))

(assert (= (and b!8033425 (is-ElementMatch!21722 (regTwo!43957 r!13107))) b!8033520))

(assert (= (and b!8033425 (is-Concat!30725 (regTwo!43957 r!13107))) b!8033521))

(assert (= (and b!8033425 (is-Star!21722 (regTwo!43957 r!13107))) b!8033522))

(assert (= (and b!8033425 (is-Union!21722 (regTwo!43957 r!13107))) b!8033523))

(declare-fun e!4732494 () Bool)

(assert (=> b!8033424 (= tp!2404755 e!4732494)))

(declare-fun b!8033529 () Bool)

(declare-fun tp!2404808 () Bool)

(declare-fun tp!2404807 () Bool)

(assert (=> b!8033529 (= e!4732494 (and tp!2404808 tp!2404807))))

(declare-fun b!8033528 () Bool)

(assert (=> b!8033528 (= e!4732494 tp_is_empty!54439)))

(declare-fun b!8033530 () Bool)

(declare-fun tp!2404806 () Bool)

(assert (=> b!8033530 (= e!4732494 tp!2404806)))

(declare-fun b!8033531 () Bool)

(declare-fun tp!2404805 () Bool)

(declare-fun tp!2404804 () Bool)

(assert (=> b!8033531 (= e!4732494 (and tp!2404805 tp!2404804))))

(assert (= (and b!8033424 (is-ElementMatch!21722 (reg!22051 r!13107))) b!8033528))

(assert (= (and b!8033424 (is-Concat!30725 (reg!22051 r!13107))) b!8033529))

(assert (= (and b!8033424 (is-Star!21722 (reg!22051 r!13107))) b!8033530))

(assert (= (and b!8033424 (is-Union!21722 (reg!22051 r!13107))) b!8033531))

(push 1)

(assert (not b!8033523))

(assert (not b!8033522))

(assert (not b!8033478))

(assert (not b!8033530))

(assert (not b!8033529))

(assert (not d!2394834))

(assert (not b!8033521))

(assert (not b!8033507))

(assert (not b!8033515))

(assert (not b!8033514))

(assert (not b!8033513))

(assert (not bm!745305))

(assert (not b!8033531))

(assert (not bm!745304))

(assert (not b!8033469))

(assert (not b!8033509))

(assert (not bm!745302))

(assert (not b!8033500))

(assert (not bm!745301))

(assert (not b!8033499))

(assert (not b!8033508))

(assert tp_is_empty!54439)

(assert (not b!8033501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


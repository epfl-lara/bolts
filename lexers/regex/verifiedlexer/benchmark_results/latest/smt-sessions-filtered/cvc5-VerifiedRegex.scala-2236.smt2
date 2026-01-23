; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!110320 () Bool)

(assert start!110320)

(declare-fun res!552995 () Bool)

(declare-fun e!790575 () Bool)

(assert (=> start!110320 (=> (not res!552995) (not e!790575))))

(declare-datatypes ((C!7210 0))(
  ( (C!7211 (val!4135 Int)) )
))
(declare-datatypes ((Regex!3446 0))(
  ( (ElementMatch!3446 (c!206455 C!7210)) (Concat!5676 (regOne!7404 Regex!3446) (regTwo!7404 Regex!3446)) (EmptyExpr!3446) (Star!3446 (reg!3775 Regex!3446)) (EmptyLang!3446) (Union!3446 (regOne!7405 Regex!3446) (regTwo!7405 Regex!3446)) )
))
(declare-fun r!15719 () Regex!3446)

(declare-fun validRegex!1482 (Regex!3446) Bool)

(assert (=> start!110320 (= res!552995 (validRegex!1482 r!15719))))

(assert (=> start!110320 e!790575))

(declare-fun e!790576 () Bool)

(assert (=> start!110320 e!790576))

(declare-fun b!1234466 () Bool)

(declare-fun regexDepth!47 (Regex!3446) Int)

(assert (=> b!1234466 (= e!790575 (< (regexDepth!47 r!15719) 0))))

(declare-fun b!1234467 () Bool)

(declare-fun tp_is_empty!6413 () Bool)

(assert (=> b!1234467 (= e!790576 tp_is_empty!6413)))

(declare-fun b!1234468 () Bool)

(declare-fun tp!352664 () Bool)

(assert (=> b!1234468 (= e!790576 tp!352664)))

(declare-fun b!1234469 () Bool)

(declare-fun tp!352660 () Bool)

(declare-fun tp!352663 () Bool)

(assert (=> b!1234469 (= e!790576 (and tp!352660 tp!352663))))

(declare-fun b!1234470 () Bool)

(declare-fun tp!352661 () Bool)

(declare-fun tp!352662 () Bool)

(assert (=> b!1234470 (= e!790576 (and tp!352661 tp!352662))))

(assert (= (and start!110320 res!552995) b!1234466))

(assert (= (and start!110320 (is-ElementMatch!3446 r!15719)) b!1234467))

(assert (= (and start!110320 (is-Concat!5676 r!15719)) b!1234470))

(assert (= (and start!110320 (is-Star!3446 r!15719)) b!1234468))

(assert (= (and start!110320 (is-Union!3446 r!15719)) b!1234469))

(declare-fun m!1409187 () Bool)

(assert (=> start!110320 m!1409187))

(declare-fun m!1409189 () Bool)

(assert (=> b!1234466 m!1409189))

(push 1)

(assert (not b!1234468))

(assert tp_is_empty!6413)

(assert (not b!1234469))

(assert (not b!1234470))

(assert (not b!1234466))

(assert (not start!110320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!1234538 () Bool)

(declare-fun e!790626 () Int)

(declare-fun call!85682 () Int)

(assert (=> b!1234538 (= e!790626 (+ 1 call!85682))))

(declare-fun b!1234539 () Bool)

(declare-fun c!206478 () Bool)

(assert (=> b!1234539 (= c!206478 (is-Union!3446 r!15719))))

(declare-fun e!790619 () Int)

(assert (=> b!1234539 (= e!790626 e!790619)))

(declare-fun bm!85675 () Bool)

(declare-fun call!85686 () Int)

(declare-fun c!206480 () Bool)

(assert (=> bm!85675 (= call!85686 (regexDepth!47 (ite c!206480 (regTwo!7405 r!15719) (regTwo!7404 r!15719))))))

(declare-fun b!1234540 () Bool)

(declare-fun e!790622 () Int)

(assert (=> b!1234540 (= e!790622 e!790626)))

(declare-fun c!206475 () Bool)

(assert (=> b!1234540 (= c!206475 (is-Star!3446 r!15719))))

(declare-fun b!1234541 () Bool)

(assert (=> b!1234541 (= e!790622 1)))

(declare-fun b!1234542 () Bool)

(declare-fun e!790618 () Bool)

(declare-fun lt!420104 () Int)

(assert (=> b!1234542 (= e!790618 (= lt!420104 1))))

(declare-fun d!353191 () Bool)

(declare-fun e!790620 () Bool)

(assert (=> d!353191 e!790620))

(declare-fun res!553016 () Bool)

(assert (=> d!353191 (=> (not res!553016) (not e!790620))))

(assert (=> d!353191 (= res!553016 (> lt!420104 0))))

(assert (=> d!353191 (= lt!420104 e!790622)))

(declare-fun c!206477 () Bool)

(assert (=> d!353191 (= c!206477 (is-ElementMatch!3446 r!15719))))

(assert (=> d!353191 (= (regexDepth!47 r!15719) lt!420104)))

(declare-fun bm!85676 () Bool)

(declare-fun call!85681 () Int)

(declare-fun call!85683 () Int)

(declare-fun call!85680 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!85676 (= call!85681 (maxBigInt!0 call!85683 call!85680))))

(declare-fun b!1234543 () Bool)

(declare-fun call!85685 () Int)

(assert (=> b!1234543 (= e!790618 (> lt!420104 call!85685))))

(declare-fun b!1234544 () Bool)

(declare-fun e!790625 () Int)

(assert (=> b!1234544 (= e!790619 e!790625)))

(declare-fun c!206479 () Bool)

(assert (=> b!1234544 (= c!206479 (is-Concat!5676 r!15719))))

(declare-fun b!1234545 () Bool)

(declare-fun e!790617 () Bool)

(assert (=> b!1234545 (= e!790617 (> lt!420104 call!85686))))

(declare-fun b!1234546 () Bool)

(declare-fun e!790621 () Bool)

(assert (=> b!1234546 (= e!790621 (> lt!420104 call!85686))))

(declare-fun bm!85677 () Bool)

(assert (=> bm!85677 (= call!85683 (regexDepth!47 (ite c!206478 (regOne!7405 r!15719) (regOne!7404 r!15719))))))

(declare-fun b!1234547 () Bool)

(declare-fun e!790623 () Bool)

(assert (=> b!1234547 (= e!790620 e!790623)))

(assert (=> b!1234547 (= c!206480 (is-Union!3446 r!15719))))

(declare-fun bm!85678 () Bool)

(assert (=> bm!85678 (= call!85680 call!85682)))

(declare-fun bm!85679 () Bool)

(declare-fun call!85684 () Int)

(assert (=> bm!85679 (= call!85685 call!85684)))

(declare-fun b!1234548 () Bool)

(assert (=> b!1234548 (= e!790625 1)))

(declare-fun b!1234549 () Bool)

(declare-fun c!206481 () Bool)

(assert (=> b!1234549 (= c!206481 (is-Star!3446 r!15719))))

(declare-fun e!790624 () Bool)

(assert (=> b!1234549 (= e!790624 e!790618)))

(declare-fun b!1234550 () Bool)

(assert (=> b!1234550 (= e!790625 (+ 1 call!85681))))

(declare-fun b!1234551 () Bool)

(assert (=> b!1234551 (= e!790619 (+ 1 call!85681))))

(declare-fun b!1234552 () Bool)

(declare-fun res!553015 () Bool)

(assert (=> b!1234552 (=> (not res!553015) (not e!790621))))

(assert (=> b!1234552 (= res!553015 (> lt!420104 call!85685))))

(assert (=> b!1234552 (= e!790624 e!790621)))

(declare-fun bm!85680 () Bool)

(declare-fun c!206476 () Bool)

(assert (=> bm!85680 (= call!85684 (regexDepth!47 (ite c!206480 (regOne!7405 r!15719) (ite c!206476 (regOne!7404 r!15719) (reg!3775 r!15719)))))))

(declare-fun b!1234553 () Bool)

(assert (=> b!1234553 (= e!790623 e!790617)))

(declare-fun res!553017 () Bool)

(assert (=> b!1234553 (= res!553017 (> lt!420104 call!85684))))

(assert (=> b!1234553 (=> (not res!553017) (not e!790617))))

(declare-fun b!1234554 () Bool)

(assert (=> b!1234554 (= e!790623 e!790624)))

(assert (=> b!1234554 (= c!206476 (is-Concat!5676 r!15719))))

(declare-fun bm!85681 () Bool)

(assert (=> bm!85681 (= call!85682 (regexDepth!47 (ite c!206475 (reg!3775 r!15719) (ite c!206478 (regTwo!7405 r!15719) (regTwo!7404 r!15719)))))))

(assert (= (and d!353191 c!206477) b!1234541))

(assert (= (and d!353191 (not c!206477)) b!1234540))

(assert (= (and b!1234540 c!206475) b!1234538))

(assert (= (and b!1234540 (not c!206475)) b!1234539))

(assert (= (and b!1234539 c!206478) b!1234551))

(assert (= (and b!1234539 (not c!206478)) b!1234544))

(assert (= (and b!1234544 c!206479) b!1234550))

(assert (= (and b!1234544 (not c!206479)) b!1234548))

(assert (= (or b!1234551 b!1234550) bm!85677))

(assert (= (or b!1234551 b!1234550) bm!85678))

(assert (= (or b!1234551 b!1234550) bm!85676))

(assert (= (or b!1234538 bm!85678) bm!85681))

(assert (= (and d!353191 res!553016) b!1234547))

(assert (= (and b!1234547 c!206480) b!1234553))

(assert (= (and b!1234547 (not c!206480)) b!1234554))

(assert (= (and b!1234553 res!553017) b!1234545))

(assert (= (and b!1234554 c!206476) b!1234552))

(assert (= (and b!1234554 (not c!206476)) b!1234549))

(assert (= (and b!1234552 res!553015) b!1234546))

(assert (= (and b!1234549 c!206481) b!1234543))

(assert (= (and b!1234549 (not c!206481)) b!1234542))

(assert (= (or b!1234552 b!1234543) bm!85679))

(assert (= (or b!1234553 bm!85679) bm!85680))

(assert (= (or b!1234545 b!1234546) bm!85675))

(declare-fun m!1409195 () Bool)

(assert (=> bm!85675 m!1409195))

(declare-fun m!1409197 () Bool)

(assert (=> bm!85676 m!1409197))

(declare-fun m!1409199 () Bool)

(assert (=> bm!85681 m!1409199))

(declare-fun m!1409201 () Bool)

(assert (=> bm!85680 m!1409201))

(declare-fun m!1409203 () Bool)

(assert (=> bm!85677 m!1409203))

(assert (=> b!1234466 d!353191))

(declare-fun b!1234582 () Bool)

(declare-fun res!553037 () Bool)

(declare-fun e!790652 () Bool)

(assert (=> b!1234582 (=> (not res!553037) (not e!790652))))

(declare-fun call!85697 () Bool)

(assert (=> b!1234582 (= res!553037 call!85697)))

(declare-fun e!790653 () Bool)

(assert (=> b!1234582 (= e!790653 e!790652)))

(declare-fun bm!85691 () Bool)

(declare-fun c!206489 () Bool)

(assert (=> bm!85691 (= call!85697 (validRegex!1482 (ite c!206489 (regOne!7405 r!15719) (regOne!7404 r!15719))))))

(declare-fun d!353195 () Bool)

(declare-fun res!553036 () Bool)

(declare-fun e!790649 () Bool)

(assert (=> d!353195 (=> res!553036 e!790649)))

(assert (=> d!353195 (= res!553036 (is-ElementMatch!3446 r!15719))))

(assert (=> d!353195 (= (validRegex!1482 r!15719) e!790649)))

(declare-fun b!1234583 () Bool)

(declare-fun res!553034 () Bool)

(declare-fun e!790651 () Bool)

(assert (=> b!1234583 (=> res!553034 e!790651)))

(assert (=> b!1234583 (= res!553034 (not (is-Concat!5676 r!15719)))))

(assert (=> b!1234583 (= e!790653 e!790651)))

(declare-fun b!1234584 () Bool)

(declare-fun call!85698 () Bool)

(assert (=> b!1234584 (= e!790652 call!85698)))

(declare-fun c!206488 () Bool)

(declare-fun call!85696 () Bool)

(declare-fun bm!85692 () Bool)

(assert (=> bm!85692 (= call!85696 (validRegex!1482 (ite c!206488 (reg!3775 r!15719) (ite c!206489 (regTwo!7405 r!15719) (regTwo!7404 r!15719)))))))

(declare-fun b!1234585 () Bool)

(declare-fun e!790654 () Bool)

(assert (=> b!1234585 (= e!790654 call!85698)))

(declare-fun bm!85693 () Bool)

(assert (=> bm!85693 (= call!85698 call!85696)))

(declare-fun b!1234586 () Bool)

(declare-fun e!790648 () Bool)

(assert (=> b!1234586 (= e!790648 call!85696)))

(declare-fun b!1234587 () Bool)

(declare-fun e!790650 () Bool)

(assert (=> b!1234587 (= e!790649 e!790650)))

(assert (=> b!1234587 (= c!206488 (is-Star!3446 r!15719))))

(declare-fun b!1234588 () Bool)

(assert (=> b!1234588 (= e!790651 e!790654)))

(declare-fun res!553033 () Bool)

(assert (=> b!1234588 (=> (not res!553033) (not e!790654))))

(assert (=> b!1234588 (= res!553033 call!85697)))

(declare-fun b!1234589 () Bool)

(assert (=> b!1234589 (= e!790650 e!790648)))

(declare-fun res!553035 () Bool)

(declare-fun nullable!1084 (Regex!3446) Bool)

(assert (=> b!1234589 (= res!553035 (not (nullable!1084 (reg!3775 r!15719))))))

(assert (=> b!1234589 (=> (not res!553035) (not e!790648))))

(declare-fun b!1234590 () Bool)

(assert (=> b!1234590 (= e!790650 e!790653)))

(assert (=> b!1234590 (= c!206489 (is-Union!3446 r!15719))))

(assert (= (and d!353195 (not res!553036)) b!1234587))

(assert (= (and b!1234587 c!206488) b!1234589))

(assert (= (and b!1234587 (not c!206488)) b!1234590))

(assert (= (and b!1234589 res!553035) b!1234586))

(assert (= (and b!1234590 c!206489) b!1234582))

(assert (= (and b!1234590 (not c!206489)) b!1234583))

(assert (= (and b!1234582 res!553037) b!1234584))

(assert (= (and b!1234583 (not res!553034)) b!1234588))

(assert (= (and b!1234588 res!553033) b!1234585))

(assert (= (or b!1234584 b!1234585) bm!85693))

(assert (= (or b!1234582 b!1234588) bm!85691))

(assert (= (or b!1234586 bm!85693) bm!85692))

(declare-fun m!1409211 () Bool)

(assert (=> bm!85691 m!1409211))

(declare-fun m!1409213 () Bool)

(assert (=> bm!85692 m!1409213))

(declare-fun m!1409215 () Bool)

(assert (=> b!1234589 m!1409215))

(assert (=> start!110320 d!353195))

(declare-fun b!1234604 () Bool)

(declare-fun e!790657 () Bool)

(declare-fun tp!352691 () Bool)

(declare-fun tp!352694 () Bool)

(assert (=> b!1234604 (= e!790657 (and tp!352691 tp!352694))))

(assert (=> b!1234468 (= tp!352664 e!790657)))

(declare-fun b!1234603 () Bool)

(declare-fun tp!352692 () Bool)

(assert (=> b!1234603 (= e!790657 tp!352692)))

(declare-fun b!1234602 () Bool)

(declare-fun tp!352690 () Bool)

(declare-fun tp!352693 () Bool)

(assert (=> b!1234602 (= e!790657 (and tp!352690 tp!352693))))

(declare-fun b!1234601 () Bool)

(assert (=> b!1234601 (= e!790657 tp_is_empty!6413)))

(assert (= (and b!1234468 (is-ElementMatch!3446 (reg!3775 r!15719))) b!1234601))

(assert (= (and b!1234468 (is-Concat!5676 (reg!3775 r!15719))) b!1234602))

(assert (= (and b!1234468 (is-Star!3446 (reg!3775 r!15719))) b!1234603))

(assert (= (and b!1234468 (is-Union!3446 (reg!3775 r!15719))) b!1234604))

(declare-fun b!1234608 () Bool)

(declare-fun e!790658 () Bool)

(declare-fun tp!352696 () Bool)

(declare-fun tp!352699 () Bool)

(assert (=> b!1234608 (= e!790658 (and tp!352696 tp!352699))))

(assert (=> b!1234470 (= tp!352661 e!790658)))

(declare-fun b!1234607 () Bool)

(declare-fun tp!352697 () Bool)

(assert (=> b!1234607 (= e!790658 tp!352697)))

(declare-fun b!1234606 () Bool)

(declare-fun tp!352695 () Bool)

(declare-fun tp!352698 () Bool)

(assert (=> b!1234606 (= e!790658 (and tp!352695 tp!352698))))

(declare-fun b!1234605 () Bool)

(assert (=> b!1234605 (= e!790658 tp_is_empty!6413)))

(assert (= (and b!1234470 (is-ElementMatch!3446 (regOne!7404 r!15719))) b!1234605))

(assert (= (and b!1234470 (is-Concat!5676 (regOne!7404 r!15719))) b!1234606))

(assert (= (and b!1234470 (is-Star!3446 (regOne!7404 r!15719))) b!1234607))

(assert (= (and b!1234470 (is-Union!3446 (regOne!7404 r!15719))) b!1234608))

(declare-fun b!1234612 () Bool)

(declare-fun e!790659 () Bool)

(declare-fun tp!352701 () Bool)

(declare-fun tp!352704 () Bool)

(assert (=> b!1234612 (= e!790659 (and tp!352701 tp!352704))))

(assert (=> b!1234470 (= tp!352662 e!790659)))

(declare-fun b!1234611 () Bool)

(declare-fun tp!352702 () Bool)

(assert (=> b!1234611 (= e!790659 tp!352702)))

(declare-fun b!1234610 () Bool)

(declare-fun tp!352700 () Bool)

(declare-fun tp!352703 () Bool)

(assert (=> b!1234610 (= e!790659 (and tp!352700 tp!352703))))

(declare-fun b!1234609 () Bool)

(assert (=> b!1234609 (= e!790659 tp_is_empty!6413)))

(assert (= (and b!1234470 (is-ElementMatch!3446 (regTwo!7404 r!15719))) b!1234609))

(assert (= (and b!1234470 (is-Concat!5676 (regTwo!7404 r!15719))) b!1234610))

(assert (= (and b!1234470 (is-Star!3446 (regTwo!7404 r!15719))) b!1234611))

(assert (= (and b!1234470 (is-Union!3446 (regTwo!7404 r!15719))) b!1234612))

(declare-fun b!1234616 () Bool)

(declare-fun e!790660 () Bool)

(declare-fun tp!352706 () Bool)

(declare-fun tp!352709 () Bool)

(assert (=> b!1234616 (= e!790660 (and tp!352706 tp!352709))))

(assert (=> b!1234469 (= tp!352660 e!790660)))

(declare-fun b!1234615 () Bool)

(declare-fun tp!352707 () Bool)

(assert (=> b!1234615 (= e!790660 tp!352707)))

(declare-fun b!1234614 () Bool)

(declare-fun tp!352705 () Bool)

(declare-fun tp!352708 () Bool)

(assert (=> b!1234614 (= e!790660 (and tp!352705 tp!352708))))

(declare-fun b!1234613 () Bool)

(assert (=> b!1234613 (= e!790660 tp_is_empty!6413)))

(assert (= (and b!1234469 (is-ElementMatch!3446 (regOne!7405 r!15719))) b!1234613))

(assert (= (and b!1234469 (is-Concat!5676 (regOne!7405 r!15719))) b!1234614))

(assert (= (and b!1234469 (is-Star!3446 (regOne!7405 r!15719))) b!1234615))

(assert (= (and b!1234469 (is-Union!3446 (regOne!7405 r!15719))) b!1234616))

(declare-fun b!1234620 () Bool)

(declare-fun e!790661 () Bool)

(declare-fun tp!352711 () Bool)

(declare-fun tp!352714 () Bool)

(assert (=> b!1234620 (= e!790661 (and tp!352711 tp!352714))))

(assert (=> b!1234469 (= tp!352663 e!790661)))

(declare-fun b!1234619 () Bool)

(declare-fun tp!352712 () Bool)

(assert (=> b!1234619 (= e!790661 tp!352712)))

(declare-fun b!1234618 () Bool)

(declare-fun tp!352710 () Bool)

(declare-fun tp!352713 () Bool)

(assert (=> b!1234618 (= e!790661 (and tp!352710 tp!352713))))

(declare-fun b!1234617 () Bool)

(assert (=> b!1234617 (= e!790661 tp_is_empty!6413)))

(assert (= (and b!1234469 (is-ElementMatch!3446 (regTwo!7405 r!15719))) b!1234617))

(assert (= (and b!1234469 (is-Concat!5676 (regTwo!7405 r!15719))) b!1234618))

(assert (= (and b!1234469 (is-Star!3446 (regTwo!7405 r!15719))) b!1234619))

(assert (= (and b!1234469 (is-Union!3446 (regTwo!7405 r!15719))) b!1234620))

(push 1)

(assert (not bm!85681))

(assert (not bm!85692))

(assert (not b!1234608))

(assert (not bm!85691))

(assert (not bm!85675))

(assert (not b!1234616))

(assert (not b!1234604))

(assert (not b!1234611))

(assert (not b!1234612))

(assert (not b!1234618))

(assert (not b!1234602))

(assert (not bm!85680))

(assert (not b!1234589))

(assert (not b!1234620))

(assert (not b!1234614))

(assert (not bm!85677))

(assert tp_is_empty!6413)

(assert (not b!1234615))

(assert (not b!1234610))

(assert (not b!1234603))

(assert (not b!1234619))

(assert (not b!1234606))

(assert (not bm!85676))

(assert (not b!1234607))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


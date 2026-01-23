; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!749468 () Bool)

(assert start!749468)

(declare-fun b!7940425 () Bool)

(declare-fun res!3149965 () Bool)

(declare-fun e!4685225 () Bool)

(assert (=> b!7940425 (=> (not res!3149965) (not e!4685225))))

(declare-datatypes ((C!43130 0))(
  ( (C!43131 (val!32113 Int)) )
))
(declare-datatypes ((Regex!21396 0))(
  ( (ElementMatch!21396 (c!1458831 C!43130)) (Concat!30395 (regOne!43304 Regex!21396) (regTwo!43304 Regex!21396)) (EmptyExpr!21396) (Star!21396 (reg!21725 Regex!21396)) (EmptyLang!21396) (Union!21396 (regOne!43305 Regex!21396) (regTwo!43305 Regex!21396)) )
))
(declare-fun r!15654 () Regex!21396)

(declare-datatypes ((List!74625 0))(
  ( (Nil!74501) (Cons!74501 (h!80949 C!43130) (t!390368 List!74625)) )
))
(declare-fun derivative!584 (Regex!21396 List!74625) Regex!21396)

(assert (=> b!7940425 (= res!3149965 (= (derivative!584 r!15654 Nil!74501) r!15654))))

(declare-fun res!3149968 () Bool)

(assert (=> start!749468 (=> (not res!3149968) (not e!4685225))))

(declare-fun validRegex!11700 (Regex!21396) Bool)

(assert (=> start!749468 (= res!3149968 (validRegex!11700 r!15654))))

(assert (=> start!749468 e!4685225))

(declare-fun e!4685227 () Bool)

(assert (=> start!749468 e!4685227))

(declare-fun e!4685228 () Bool)

(assert (=> start!749468 e!4685228))

(declare-fun b!7940426 () Bool)

(declare-fun input!6711 () List!74625)

(declare-fun ++!18294 (List!74625 List!74625) List!74625)

(assert (=> b!7940426 (= e!4685225 (not (= (++!18294 Nil!74501 input!6711) input!6711)))))

(declare-fun e!4685226 () Bool)

(assert (=> b!7940426 e!4685226))

(declare-fun res!3149966 () Bool)

(assert (=> b!7940426 (=> res!3149966 e!4685226)))

(declare-datatypes ((tuple2!70482 0))(
  ( (tuple2!70483 (_1!38544 List!74625) (_2!38544 List!74625)) )
))
(declare-fun lt!2696114 () tuple2!70482)

(declare-fun isEmpty!42816 (List!74625) Bool)

(assert (=> b!7940426 (= res!3149966 (isEmpty!42816 (_1!38544 lt!2696114)))))

(declare-fun findLongestMatchInner!2191 (Regex!21396 List!74625 Int List!74625 List!74625 Int) tuple2!70482)

(declare-fun size!43333 (List!74625) Int)

(declare-fun getSuffix!3707 (List!74625 List!74625) List!74625)

(assert (=> b!7940426 (= lt!2696114 (findLongestMatchInner!2191 r!15654 Nil!74501 (size!43333 Nil!74501) (getSuffix!3707 input!6711 Nil!74501) input!6711 (size!43333 input!6711)))))

(declare-datatypes ((Unit!169617 0))(
  ( (Unit!169618) )
))
(declare-fun lt!2696113 () Unit!169617)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRec!34 (Regex!21396 Regex!21396 List!74625 List!74625) Unit!169617)

(assert (=> b!7940426 (= lt!2696113 (longestMatchIsAcceptedByMatchOrIsEmptyRec!34 r!15654 r!15654 Nil!74501 input!6711))))

(declare-fun b!7940427 () Bool)

(declare-fun tp_is_empty!53335 () Bool)

(declare-fun tp!2360946 () Bool)

(assert (=> b!7940427 (= e!4685228 (and tp_is_empty!53335 tp!2360946))))

(declare-fun b!7940428 () Bool)

(declare-fun matchR!10703 (Regex!21396 List!74625) Bool)

(assert (=> b!7940428 (= e!4685226 (matchR!10703 r!15654 (_1!38544 lt!2696114)))))

(declare-fun b!7940429 () Bool)

(declare-fun tp!2360944 () Bool)

(assert (=> b!7940429 (= e!4685227 tp!2360944)))

(declare-fun b!7940430 () Bool)

(declare-fun tp!2360947 () Bool)

(declare-fun tp!2360943 () Bool)

(assert (=> b!7940430 (= e!4685227 (and tp!2360947 tp!2360943))))

(declare-fun b!7940431 () Bool)

(declare-fun tp!2360948 () Bool)

(declare-fun tp!2360945 () Bool)

(assert (=> b!7940431 (= e!4685227 (and tp!2360948 tp!2360945))))

(declare-fun b!7940432 () Bool)

(assert (=> b!7940432 (= e!4685227 tp_is_empty!53335)))

(declare-fun b!7940433 () Bool)

(declare-fun res!3149967 () Bool)

(assert (=> b!7940433 (=> (not res!3149967) (not e!4685225))))

(declare-fun isPrefix!6496 (List!74625 List!74625) Bool)

(assert (=> b!7940433 (= res!3149967 (isPrefix!6496 Nil!74501 input!6711))))

(assert (= (and start!749468 res!3149968) b!7940433))

(assert (= (and b!7940433 res!3149967) b!7940425))

(assert (= (and b!7940425 res!3149965) b!7940426))

(assert (= (and b!7940426 (not res!3149966)) b!7940428))

(assert (= (and start!749468 (is-ElementMatch!21396 r!15654)) b!7940432))

(assert (= (and start!749468 (is-Concat!30395 r!15654)) b!7940431))

(assert (= (and start!749468 (is-Star!21396 r!15654)) b!7940429))

(assert (= (and start!749468 (is-Union!21396 r!15654)) b!7940430))

(assert (= (and start!749468 (is-Cons!74501 input!6711)) b!7940427))

(declare-fun m!8329624 () Bool)

(assert (=> start!749468 m!8329624))

(declare-fun m!8329626 () Bool)

(assert (=> b!7940433 m!8329626))

(declare-fun m!8329628 () Bool)

(assert (=> b!7940428 m!8329628))

(declare-fun m!8329630 () Bool)

(assert (=> b!7940426 m!8329630))

(declare-fun m!8329632 () Bool)

(assert (=> b!7940426 m!8329632))

(assert (=> b!7940426 m!8329630))

(declare-fun m!8329634 () Bool)

(assert (=> b!7940426 m!8329634))

(declare-fun m!8329636 () Bool)

(assert (=> b!7940426 m!8329636))

(declare-fun m!8329638 () Bool)

(assert (=> b!7940426 m!8329638))

(assert (=> b!7940426 m!8329632))

(declare-fun m!8329640 () Bool)

(assert (=> b!7940426 m!8329640))

(declare-fun m!8329642 () Bool)

(assert (=> b!7940426 m!8329642))

(assert (=> b!7940426 m!8329634))

(declare-fun m!8329644 () Bool)

(assert (=> b!7940425 m!8329644))

(push 1)

(assert (not b!7940431))

(assert (not b!7940425))

(assert (not b!7940429))

(assert (not b!7940427))

(assert (not b!7940428))

(assert (not start!749468))

(assert (not b!7940426))

(assert (not b!7940430))

(assert (not b!7940433))

(assert tp_is_empty!53335)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2375009 () Bool)

(declare-fun lt!2696123 () Regex!21396)

(assert (=> d!2375009 (validRegex!11700 lt!2696123)))

(declare-fun e!4685243 () Regex!21396)

(assert (=> d!2375009 (= lt!2696123 e!4685243)))

(declare-fun c!1458835 () Bool)

(assert (=> d!2375009 (= c!1458835 (is-Cons!74501 Nil!74501))))

(assert (=> d!2375009 (validRegex!11700 r!15654)))

(assert (=> d!2375009 (= (derivative!584 r!15654 Nil!74501) lt!2696123)))

(declare-fun b!7940465 () Bool)

(declare-fun derivativeStep!6463 (Regex!21396 C!43130) Regex!21396)

(assert (=> b!7940465 (= e!4685243 (derivative!584 (derivativeStep!6463 r!15654 (h!80949 Nil!74501)) (t!390368 Nil!74501)))))

(declare-fun b!7940466 () Bool)

(assert (=> b!7940466 (= e!4685243 r!15654)))

(assert (= (and d!2375009 c!1458835) b!7940465))

(assert (= (and d!2375009 (not c!1458835)) b!7940466))

(declare-fun m!8329668 () Bool)

(assert (=> d!2375009 m!8329668))

(assert (=> d!2375009 m!8329624))

(declare-fun m!8329670 () Bool)

(assert (=> b!7940465 m!8329670))

(assert (=> b!7940465 m!8329670))

(declare-fun m!8329672 () Bool)

(assert (=> b!7940465 m!8329672))

(assert (=> b!7940425 d!2375009))

(declare-fun b!7940503 () Bool)

(declare-fun e!4685277 () Bool)

(declare-fun call!735802 () Bool)

(assert (=> b!7940503 (= e!4685277 call!735802)))

(declare-fun b!7940504 () Bool)

(declare-fun e!4685274 () Bool)

(declare-fun e!4685272 () Bool)

(assert (=> b!7940504 (= e!4685274 e!4685272)))

(declare-fun c!1458844 () Bool)

(assert (=> b!7940504 (= c!1458844 (is-Star!21396 r!15654))))

(declare-fun b!7940505 () Bool)

(declare-fun e!4685275 () Bool)

(assert (=> b!7940505 (= e!4685272 e!4685275)))

(declare-fun res!3150001 () Bool)

(declare-fun nullable!9525 (Regex!21396) Bool)

(assert (=> b!7940505 (= res!3150001 (not (nullable!9525 (reg!21725 r!15654))))))

(assert (=> b!7940505 (=> (not res!3150001) (not e!4685275))))

(declare-fun bm!735796 () Bool)

(declare-fun call!735803 () Bool)

(declare-fun c!1458845 () Bool)

(assert (=> bm!735796 (= call!735803 (validRegex!11700 (ite c!1458845 (regOne!43305 r!15654) (regTwo!43304 r!15654))))))

(declare-fun b!7940506 () Bool)

(declare-fun e!4685278 () Bool)

(assert (=> b!7940506 (= e!4685272 e!4685278)))

(assert (=> b!7940506 (= c!1458845 (is-Union!21396 r!15654))))

(declare-fun b!7940507 () Bool)

(declare-fun res!3150004 () Bool)

(declare-fun e!4685273 () Bool)

(assert (=> b!7940507 (=> res!3150004 e!4685273)))

(assert (=> b!7940507 (= res!3150004 (not (is-Concat!30395 r!15654)))))

(assert (=> b!7940507 (= e!4685278 e!4685273)))

(declare-fun d!2375013 () Bool)

(declare-fun res!3150003 () Bool)

(assert (=> d!2375013 (=> res!3150003 e!4685274)))

(assert (=> d!2375013 (= res!3150003 (is-ElementMatch!21396 r!15654))))

(assert (=> d!2375013 (= (validRegex!11700 r!15654) e!4685274)))

(declare-fun call!735801 () Bool)

(declare-fun bm!735797 () Bool)

(assert (=> bm!735797 (= call!735801 (validRegex!11700 (ite c!1458844 (reg!21725 r!15654) (ite c!1458845 (regTwo!43305 r!15654) (regOne!43304 r!15654)))))))

(declare-fun b!7940508 () Bool)

(assert (=> b!7940508 (= e!4685275 call!735801)))

(declare-fun b!7940509 () Bool)

(declare-fun e!4685276 () Bool)

(assert (=> b!7940509 (= e!4685273 e!4685276)))

(declare-fun res!3150002 () Bool)

(assert (=> b!7940509 (=> (not res!3150002) (not e!4685276))))

(assert (=> b!7940509 (= res!3150002 call!735802)))

(declare-fun bm!735798 () Bool)

(assert (=> bm!735798 (= call!735802 call!735801)))

(declare-fun b!7940510 () Bool)

(declare-fun res!3150005 () Bool)

(assert (=> b!7940510 (=> (not res!3150005) (not e!4685277))))

(assert (=> b!7940510 (= res!3150005 call!735803)))

(assert (=> b!7940510 (= e!4685278 e!4685277)))

(declare-fun b!7940511 () Bool)

(assert (=> b!7940511 (= e!4685276 call!735803)))

(assert (= (and d!2375013 (not res!3150003)) b!7940504))

(assert (= (and b!7940504 c!1458844) b!7940505))

(assert (= (and b!7940504 (not c!1458844)) b!7940506))

(assert (= (and b!7940505 res!3150001) b!7940508))

(assert (= (and b!7940506 c!1458845) b!7940510))

(assert (= (and b!7940506 (not c!1458845)) b!7940507))

(assert (= (and b!7940510 res!3150005) b!7940503))

(assert (= (and b!7940507 (not res!3150004)) b!7940509))

(assert (= (and b!7940509 res!3150002) b!7940511))

(assert (= (or b!7940510 b!7940511) bm!735796))

(assert (= (or b!7940503 b!7940509) bm!735798))

(assert (= (or b!7940508 bm!735798) bm!735797))

(declare-fun m!8329674 () Bool)

(assert (=> b!7940505 m!8329674))

(declare-fun m!8329676 () Bool)

(assert (=> bm!735796 m!8329676))

(declare-fun m!8329678 () Bool)

(assert (=> bm!735797 m!8329678))

(assert (=> start!749468 d!2375013))

(declare-fun b!7940521 () Bool)

(declare-fun res!3150015 () Bool)

(declare-fun e!4685286 () Bool)

(assert (=> b!7940521 (=> (not res!3150015) (not e!4685286))))

(declare-fun head!16184 (List!74625) C!43130)

(assert (=> b!7940521 (= res!3150015 (= (head!16184 Nil!74501) (head!16184 input!6711)))))

(declare-fun b!7940523 () Bool)

(declare-fun e!4685287 () Bool)

(assert (=> b!7940523 (= e!4685287 (>= (size!43333 input!6711) (size!43333 Nil!74501)))))

(declare-fun b!7940520 () Bool)

(declare-fun e!4685285 () Bool)

(assert (=> b!7940520 (= e!4685285 e!4685286)))

(declare-fun res!3150014 () Bool)

(assert (=> b!7940520 (=> (not res!3150014) (not e!4685286))))

(assert (=> b!7940520 (= res!3150014 (not (is-Nil!74501 input!6711)))))

(declare-fun b!7940522 () Bool)

(declare-fun tail!15727 (List!74625) List!74625)

(assert (=> b!7940522 (= e!4685286 (isPrefix!6496 (tail!15727 Nil!74501) (tail!15727 input!6711)))))

(declare-fun d!2375015 () Bool)

(assert (=> d!2375015 e!4685287))

(declare-fun res!3150016 () Bool)

(assert (=> d!2375015 (=> res!3150016 e!4685287)))

(declare-fun lt!2696126 () Bool)

(assert (=> d!2375015 (= res!3150016 (not lt!2696126))))

(assert (=> d!2375015 (= lt!2696126 e!4685285)))

(declare-fun res!3150017 () Bool)

(assert (=> d!2375015 (=> res!3150017 e!4685285)))

(assert (=> d!2375015 (= res!3150017 (is-Nil!74501 Nil!74501))))

(assert (=> d!2375015 (= (isPrefix!6496 Nil!74501 input!6711) lt!2696126)))

(assert (= (and d!2375015 (not res!3150017)) b!7940520))

(assert (= (and b!7940520 res!3150014) b!7940521))

(assert (= (and b!7940521 res!3150015) b!7940522))

(assert (= (and d!2375015 (not res!3150016)) b!7940523))

(declare-fun m!8329680 () Bool)

(assert (=> b!7940521 m!8329680))

(declare-fun m!8329682 () Bool)

(assert (=> b!7940521 m!8329682))

(assert (=> b!7940523 m!8329634))

(assert (=> b!7940523 m!8329632))

(declare-fun m!8329684 () Bool)

(assert (=> b!7940522 m!8329684))

(declare-fun m!8329686 () Bool)

(assert (=> b!7940522 m!8329686))

(assert (=> b!7940522 m!8329684))

(assert (=> b!7940522 m!8329686))

(declare-fun m!8329688 () Bool)

(assert (=> b!7940522 m!8329688))

(assert (=> b!7940433 d!2375015))

(declare-fun b!7940561 () Bool)

(declare-fun e!4685313 () Bool)

(assert (=> b!7940561 (= e!4685313 (matchR!10703 (derivativeStep!6463 r!15654 (head!16184 (_1!38544 lt!2696114))) (tail!15727 (_1!38544 lt!2696114))))))

(declare-fun b!7940562 () Bool)

(declare-fun e!4685310 () Bool)

(declare-fun e!4685314 () Bool)

(assert (=> b!7940562 (= e!4685310 e!4685314)))

(declare-fun c!1458855 () Bool)

(assert (=> b!7940562 (= c!1458855 (is-EmptyLang!21396 r!15654))))

(declare-fun b!7940563 () Bool)

(declare-fun lt!2696129 () Bool)

(declare-fun call!735811 () Bool)

(assert (=> b!7940563 (= e!4685310 (= lt!2696129 call!735811))))

(declare-fun b!7940564 () Bool)

(assert (=> b!7940564 (= e!4685314 (not lt!2696129))))

(declare-fun b!7940565 () Bool)

(declare-fun e!4685309 () Bool)

(assert (=> b!7940565 (= e!4685309 (= (head!16184 (_1!38544 lt!2696114)) (c!1458831 r!15654)))))

(declare-fun b!7940566 () Bool)

(declare-fun e!4685312 () Bool)

(assert (=> b!7940566 (= e!4685312 (not (= (head!16184 (_1!38544 lt!2696114)) (c!1458831 r!15654))))))

(declare-fun b!7940568 () Bool)

(declare-fun res!3150041 () Bool)

(declare-fun e!4685315 () Bool)

(assert (=> b!7940568 (=> res!3150041 e!4685315)))

(assert (=> b!7940568 (= res!3150041 e!4685309)))

(declare-fun res!3150042 () Bool)

(assert (=> b!7940568 (=> (not res!3150042) (not e!4685309))))

(assert (=> b!7940568 (= res!3150042 lt!2696129)))

(declare-fun b!7940569 () Bool)

(declare-fun res!3150045 () Bool)

(assert (=> b!7940569 (=> res!3150045 e!4685312)))

(assert (=> b!7940569 (= res!3150045 (not (isEmpty!42816 (tail!15727 (_1!38544 lt!2696114)))))))

(declare-fun b!7940570 () Bool)

(declare-fun e!4685311 () Bool)

(assert (=> b!7940570 (= e!4685311 e!4685312)))

(declare-fun res!3150046 () Bool)

(assert (=> b!7940570 (=> res!3150046 e!4685312)))

(assert (=> b!7940570 (= res!3150046 call!735811)))

(declare-fun b!7940571 () Bool)

(assert (=> b!7940571 (= e!4685313 (nullable!9525 r!15654))))

(declare-fun b!7940572 () Bool)

(declare-fun res!3150040 () Bool)

(assert (=> b!7940572 (=> (not res!3150040) (not e!4685309))))

(assert (=> b!7940572 (= res!3150040 (not call!735811))))

(declare-fun bm!735806 () Bool)

(assert (=> bm!735806 (= call!735811 (isEmpty!42816 (_1!38544 lt!2696114)))))

(declare-fun b!7940573 () Bool)

(declare-fun res!3150043 () Bool)

(assert (=> b!7940573 (=> res!3150043 e!4685315)))

(assert (=> b!7940573 (= res!3150043 (not (is-ElementMatch!21396 r!15654)))))

(assert (=> b!7940573 (= e!4685314 e!4685315)))

(declare-fun b!7940574 () Bool)

(assert (=> b!7940574 (= e!4685315 e!4685311)))

(declare-fun res!3150039 () Bool)

(assert (=> b!7940574 (=> (not res!3150039) (not e!4685311))))

(assert (=> b!7940574 (= res!3150039 (not lt!2696129))))

(declare-fun d!2375017 () Bool)

(assert (=> d!2375017 e!4685310))

(declare-fun c!1458854 () Bool)

(assert (=> d!2375017 (= c!1458854 (is-EmptyExpr!21396 r!15654))))

(assert (=> d!2375017 (= lt!2696129 e!4685313)))

(declare-fun c!1458856 () Bool)

(assert (=> d!2375017 (= c!1458856 (isEmpty!42816 (_1!38544 lt!2696114)))))

(assert (=> d!2375017 (validRegex!11700 r!15654)))

(assert (=> d!2375017 (= (matchR!10703 r!15654 (_1!38544 lt!2696114)) lt!2696129)))

(declare-fun b!7940567 () Bool)

(declare-fun res!3150044 () Bool)

(assert (=> b!7940567 (=> (not res!3150044) (not e!4685309))))

(assert (=> b!7940567 (= res!3150044 (isEmpty!42816 (tail!15727 (_1!38544 lt!2696114))))))

(assert (= (and d!2375017 c!1458856) b!7940571))

(assert (= (and d!2375017 (not c!1458856)) b!7940561))

(assert (= (and d!2375017 c!1458854) b!7940563))

(assert (= (and d!2375017 (not c!1458854)) b!7940562))

(assert (= (and b!7940562 c!1458855) b!7940564))

(assert (= (and b!7940562 (not c!1458855)) b!7940573))

(assert (= (and b!7940573 (not res!3150043)) b!7940568))

(assert (= (and b!7940568 res!3150042) b!7940572))

(assert (= (and b!7940572 res!3150040) b!7940567))

(assert (= (and b!7940567 res!3150044) b!7940565))

(assert (= (and b!7940568 (not res!3150041)) b!7940574))

(assert (= (and b!7940574 res!3150039) b!7940570))

(assert (= (and b!7940570 (not res!3150046)) b!7940569))

(assert (= (and b!7940569 (not res!3150045)) b!7940566))

(assert (= (or b!7940563 b!7940572 b!7940570) bm!735806))

(declare-fun m!8329696 () Bool)

(assert (=> b!7940561 m!8329696))

(assert (=> b!7940561 m!8329696))

(declare-fun m!8329698 () Bool)

(assert (=> b!7940561 m!8329698))

(declare-fun m!8329700 () Bool)

(assert (=> b!7940561 m!8329700))

(assert (=> b!7940561 m!8329698))

(assert (=> b!7940561 m!8329700))

(declare-fun m!8329702 () Bool)

(assert (=> b!7940561 m!8329702))

(assert (=> bm!735806 m!8329642))

(declare-fun m!8329704 () Bool)

(assert (=> b!7940571 m!8329704))

(assert (=> b!7940565 m!8329696))

(assert (=> b!7940566 m!8329696))

(assert (=> b!7940569 m!8329700))

(assert (=> b!7940569 m!8329700))

(declare-fun m!8329706 () Bool)

(assert (=> b!7940569 m!8329706))

(assert (=> d!2375017 m!8329642))

(assert (=> d!2375017 m!8329624))

(assert (=> b!7940567 m!8329700))

(assert (=> b!7940567 m!8329700))

(assert (=> b!7940567 m!8329706))

(assert (=> b!7940428 d!2375017))

(declare-fun d!2375021 () Bool)

(declare-fun e!4685320 () Bool)

(assert (=> d!2375021 e!4685320))

(declare-fun res!3150051 () Bool)

(assert (=> d!2375021 (=> res!3150051 e!4685320)))

(assert (=> d!2375021 (= res!3150051 (isEmpty!42816 (_1!38544 (findLongestMatchInner!2191 r!15654 Nil!74501 (size!43333 Nil!74501) (getSuffix!3707 input!6711 Nil!74501) input!6711 (size!43333 input!6711)))))))

(declare-fun lt!2696134 () Unit!169617)

(declare-fun choose!59872 (Regex!21396 Regex!21396 List!74625 List!74625) Unit!169617)

(assert (=> d!2375021 (= lt!2696134 (choose!59872 r!15654 r!15654 Nil!74501 input!6711))))

(assert (=> d!2375021 (validRegex!11700 r!15654)))

(assert (=> d!2375021 (= (longestMatchIsAcceptedByMatchOrIsEmptyRec!34 r!15654 r!15654 Nil!74501 input!6711) lt!2696134)))

(declare-fun b!7940577 () Bool)

(assert (=> b!7940577 (= e!4685320 (matchR!10703 r!15654 (_1!38544 (findLongestMatchInner!2191 r!15654 Nil!74501 (size!43333 Nil!74501) (getSuffix!3707 input!6711 Nil!74501) input!6711 (size!43333 input!6711)))))))

(assert (= (and d!2375021 (not res!3150051)) b!7940577))

(assert (=> d!2375021 m!8329634))

(assert (=> d!2375021 m!8329632))

(declare-fun m!8329708 () Bool)

(assert (=> d!2375021 m!8329708))

(assert (=> d!2375021 m!8329624))

(assert (=> d!2375021 m!8329632))

(assert (=> d!2375021 m!8329630))

(assert (=> d!2375021 m!8329634))

(assert (=> d!2375021 m!8329636))

(declare-fun m!8329710 () Bool)

(assert (=> d!2375021 m!8329710))

(assert (=> d!2375021 m!8329630))

(assert (=> b!7940577 m!8329634))

(declare-fun m!8329712 () Bool)

(assert (=> b!7940577 m!8329712))

(assert (=> b!7940577 m!8329632))

(assert (=> b!7940577 m!8329632))

(assert (=> b!7940577 m!8329630))

(assert (=> b!7940577 m!8329634))

(assert (=> b!7940577 m!8329636))

(assert (=> b!7940577 m!8329630))

(assert (=> b!7940426 d!2375021))

(declare-fun d!2375023 () Bool)

(declare-fun lt!2696137 () List!74625)

(assert (=> d!2375023 (= (++!18294 Nil!74501 lt!2696137) input!6711)))

(declare-fun e!4685323 () List!74625)

(assert (=> d!2375023 (= lt!2696137 e!4685323)))

(declare-fun c!1458859 () Bool)

(assert (=> d!2375023 (= c!1458859 (is-Cons!74501 Nil!74501))))

(assert (=> d!2375023 (>= (size!43333 input!6711) (size!43333 Nil!74501))))

(assert (=> d!2375023 (= (getSuffix!3707 input!6711 Nil!74501) lt!2696137)))

(declare-fun b!7940584 () Bool)

(assert (=> b!7940584 (= e!4685323 (getSuffix!3707 (tail!15727 input!6711) (t!390368 Nil!74501)))))

(declare-fun b!7940585 () Bool)

(assert (=> b!7940585 (= e!4685323 input!6711)))

(assert (= (and d!2375023 c!1458859) b!7940584))

(assert (= (and d!2375023 (not c!1458859)) b!7940585))

(declare-fun m!8329714 () Bool)

(assert (=> d!2375023 m!8329714))

(assert (=> d!2375023 m!8329634))

(assert (=> d!2375023 m!8329632))

(assert (=> b!7940584 m!8329686))

(assert (=> b!7940584 m!8329686))

(declare-fun m!8329716 () Bool)

(assert (=> b!7940584 m!8329716))

(assert (=> b!7940426 d!2375023))

(declare-fun d!2375025 () Bool)

(assert (=> d!2375025 (= (isEmpty!42816 (_1!38544 lt!2696114)) (is-Nil!74501 (_1!38544 lt!2696114)))))

(assert (=> b!7940426 d!2375025))

(declare-fun b!7940598 () Bool)

(declare-fun e!4685330 () Bool)

(declare-fun lt!2696141 () List!74625)

(assert (=> b!7940598 (= e!4685330 (or (not (= input!6711 Nil!74501)) (= lt!2696141 Nil!74501)))))

(declare-fun b!7940596 () Bool)

(declare-fun e!4685329 () List!74625)

(assert (=> b!7940596 (= e!4685329 (Cons!74501 (h!80949 Nil!74501) (++!18294 (t!390368 Nil!74501) input!6711)))))

(declare-fun b!7940595 () Bool)

(assert (=> b!7940595 (= e!4685329 input!6711)))

(declare-fun b!7940597 () Bool)

(declare-fun res!3150058 () Bool)

(assert (=> b!7940597 (=> (not res!3150058) (not e!4685330))))

(assert (=> b!7940597 (= res!3150058 (= (size!43333 lt!2696141) (+ (size!43333 Nil!74501) (size!43333 input!6711))))))

(declare-fun d!2375027 () Bool)

(assert (=> d!2375027 e!4685330))

(declare-fun res!3150057 () Bool)

(assert (=> d!2375027 (=> (not res!3150057) (not e!4685330))))

(declare-fun content!15812 (List!74625) (Set C!43130))

(assert (=> d!2375027 (= res!3150057 (= (content!15812 lt!2696141) (set.union (content!15812 Nil!74501) (content!15812 input!6711))))))

(assert (=> d!2375027 (= lt!2696141 e!4685329)))

(declare-fun c!1458862 () Bool)

(assert (=> d!2375027 (= c!1458862 (is-Nil!74501 Nil!74501))))

(assert (=> d!2375027 (= (++!18294 Nil!74501 input!6711) lt!2696141)))

(assert (= (and d!2375027 c!1458862) b!7940595))

(assert (= (and d!2375027 (not c!1458862)) b!7940596))

(assert (= (and d!2375027 res!3150057) b!7940597))

(assert (= (and b!7940597 res!3150058) b!7940598))

(declare-fun m!8329724 () Bool)

(assert (=> b!7940596 m!8329724))

(declare-fun m!8329726 () Bool)

(assert (=> b!7940597 m!8329726))

(assert (=> b!7940597 m!8329632))

(assert (=> b!7940597 m!8329634))

(declare-fun m!8329728 () Bool)

(assert (=> d!2375027 m!8329728))

(declare-fun m!8329730 () Bool)

(assert (=> d!2375027 m!8329730))

(declare-fun m!8329732 () Bool)

(assert (=> d!2375027 m!8329732))

(assert (=> b!7940426 d!2375027))

(declare-fun d!2375031 () Bool)

(declare-fun lt!2696146 () Int)

(assert (=> d!2375031 (>= lt!2696146 0)))

(declare-fun e!4685335 () Int)

(assert (=> d!2375031 (= lt!2696146 e!4685335)))

(declare-fun c!1458867 () Bool)

(assert (=> d!2375031 (= c!1458867 (is-Nil!74501 Nil!74501))))

(assert (=> d!2375031 (= (size!43333 Nil!74501) lt!2696146)))

(declare-fun b!7940607 () Bool)

(assert (=> b!7940607 (= e!4685335 0)))

(declare-fun b!7940608 () Bool)

(assert (=> b!7940608 (= e!4685335 (+ 1 (size!43333 (t!390368 Nil!74501))))))

(assert (= (and d!2375031 c!1458867) b!7940607))

(assert (= (and d!2375031 (not c!1458867)) b!7940608))

(declare-fun m!8329734 () Bool)

(assert (=> b!7940608 m!8329734))

(assert (=> b!7940426 d!2375031))

(declare-fun d!2375033 () Bool)

(declare-fun lt!2696147 () Int)

(assert (=> d!2375033 (>= lt!2696147 0)))

(declare-fun e!4685336 () Int)

(assert (=> d!2375033 (= lt!2696147 e!4685336)))

(declare-fun c!1458868 () Bool)

(assert (=> d!2375033 (= c!1458868 (is-Nil!74501 input!6711))))

(assert (=> d!2375033 (= (size!43333 input!6711) lt!2696147)))

(declare-fun b!7940609 () Bool)

(assert (=> b!7940609 (= e!4685336 0)))

(declare-fun b!7940610 () Bool)

(assert (=> b!7940610 (= e!4685336 (+ 1 (size!43333 (t!390368 input!6711))))))

(assert (= (and d!2375033 c!1458868) b!7940609))

(assert (= (and d!2375033 (not c!1458868)) b!7940610))

(declare-fun m!8329736 () Bool)

(assert (=> b!7940610 m!8329736))

(assert (=> b!7940426 d!2375033))

(declare-fun b!7940661 () Bool)

(declare-fun e!4685368 () tuple2!70482)

(assert (=> b!7940661 (= e!4685368 (tuple2!70483 Nil!74501 input!6711))))

(declare-fun b!7940662 () Bool)

(declare-fun e!4685371 () Bool)

(declare-fun lt!2696213 () tuple2!70482)

(assert (=> b!7940662 (= e!4685371 (>= (size!43333 (_1!38544 lt!2696213)) (size!43333 Nil!74501)))))

(declare-fun bm!735823 () Bool)

(declare-fun call!735829 () Regex!21396)

(declare-fun call!735830 () C!43130)

(assert (=> bm!735823 (= call!735829 (derivativeStep!6463 r!15654 call!735830))))

(declare-fun b!7940663 () Bool)

(declare-fun e!4685367 () tuple2!70482)

(declare-fun e!4685369 () tuple2!70482)

(assert (=> b!7940663 (= e!4685367 e!4685369)))

(declare-fun lt!2696232 () tuple2!70482)

(declare-fun call!735833 () tuple2!70482)

(assert (=> b!7940663 (= lt!2696232 call!735833)))

(declare-fun c!1458891 () Bool)

(assert (=> b!7940663 (= c!1458891 (isEmpty!42816 (_1!38544 lt!2696232)))))

(declare-fun bm!735824 () Bool)

(declare-fun lt!2696230 () List!74625)

(declare-fun call!735835 () List!74625)

(assert (=> bm!735824 (= call!735833 (findLongestMatchInner!2191 call!735829 lt!2696230 (+ (size!43333 Nil!74501) 1) call!735835 input!6711 (size!43333 input!6711)))))

(declare-fun b!7940664 () Bool)

(declare-fun e!4685366 () Bool)

(assert (=> b!7940664 (= e!4685366 e!4685371)))

(declare-fun res!3150069 () Bool)

(assert (=> b!7940664 (=> res!3150069 e!4685371)))

(assert (=> b!7940664 (= res!3150069 (isEmpty!42816 (_1!38544 lt!2696213)))))

(declare-fun bm!735825 () Bool)

(assert (=> bm!735825 (= call!735835 (tail!15727 (getSuffix!3707 input!6711 Nil!74501)))))

(declare-fun bm!735826 () Bool)

(declare-fun call!735831 () Bool)

(assert (=> bm!735826 (= call!735831 (isPrefix!6496 input!6711 input!6711))))

(declare-fun bm!735827 () Bool)

(declare-fun call!735832 () Bool)

(assert (=> bm!735827 (= call!735832 (nullable!9525 r!15654))))

(declare-fun d!2375035 () Bool)

(assert (=> d!2375035 e!4685366))

(declare-fun res!3150070 () Bool)

(assert (=> d!2375035 (=> (not res!3150070) (not e!4685366))))

(assert (=> d!2375035 (= res!3150070 (= (++!18294 (_1!38544 lt!2696213) (_2!38544 lt!2696213)) input!6711))))

(declare-fun e!4685370 () tuple2!70482)

(assert (=> d!2375035 (= lt!2696213 e!4685370)))

(declare-fun c!1458892 () Bool)

(declare-fun lostCause!1936 (Regex!21396) Bool)

(assert (=> d!2375035 (= c!1458892 (lostCause!1936 r!15654))))

(declare-fun lt!2696235 () Unit!169617)

(declare-fun Unit!169621 () Unit!169617)

(assert (=> d!2375035 (= lt!2696235 Unit!169621)))

(assert (=> d!2375035 (= (getSuffix!3707 input!6711 Nil!74501) (getSuffix!3707 input!6711 Nil!74501))))

(declare-fun lt!2696223 () Unit!169617)

(declare-fun lt!2696224 () Unit!169617)

(assert (=> d!2375035 (= lt!2696223 lt!2696224)))

(declare-fun lt!2696218 () List!74625)

(assert (=> d!2375035 (= (getSuffix!3707 input!6711 Nil!74501) lt!2696218)))

(declare-fun lemmaSamePrefixThenSameSuffix!2952 (List!74625 List!74625 List!74625 List!74625 List!74625) Unit!169617)

(assert (=> d!2375035 (= lt!2696224 (lemmaSamePrefixThenSameSuffix!2952 Nil!74501 (getSuffix!3707 input!6711 Nil!74501) Nil!74501 lt!2696218 input!6711))))

(assert (=> d!2375035 (= lt!2696218 (getSuffix!3707 input!6711 Nil!74501))))

(declare-fun lt!2696216 () Unit!169617)

(declare-fun lt!2696237 () Unit!169617)

(assert (=> d!2375035 (= lt!2696216 lt!2696237)))

(assert (=> d!2375035 (isPrefix!6496 Nil!74501 (++!18294 Nil!74501 (getSuffix!3707 input!6711 Nil!74501)))))

(declare-fun lemmaConcatTwoListThenFirstIsPrefix!3814 (List!74625 List!74625) Unit!169617)

(assert (=> d!2375035 (= lt!2696237 (lemmaConcatTwoListThenFirstIsPrefix!3814 Nil!74501 (getSuffix!3707 input!6711 Nil!74501)))))

(assert (=> d!2375035 (validRegex!11700 r!15654)))

(assert (=> d!2375035 (= (findLongestMatchInner!2191 r!15654 Nil!74501 (size!43333 Nil!74501) (getSuffix!3707 input!6711 Nil!74501) input!6711 (size!43333 input!6711)) lt!2696213)))

(declare-fun b!7940665 () Bool)

(assert (=> b!7940665 (= e!4685367 call!735833)))

(declare-fun bm!735828 () Bool)

(declare-fun call!735828 () Unit!169617)

(declare-fun lemmaIsPrefixSameLengthThenSameList!1585 (List!74625 List!74625 List!74625) Unit!169617)

(assert (=> bm!735828 (= call!735828 (lemmaIsPrefixSameLengthThenSameList!1585 input!6711 Nil!74501 input!6711))))

(declare-fun b!7940666 () Bool)

(assert (=> b!7940666 (= e!4685368 (tuple2!70483 Nil!74501 Nil!74501))))

(declare-fun bm!735829 () Bool)

(declare-fun call!735834 () Unit!169617)

(declare-fun lemmaIsPrefixRefl!4003 (List!74625 List!74625) Unit!169617)

(assert (=> bm!735829 (= call!735834 (lemmaIsPrefixRefl!4003 input!6711 input!6711))))

(declare-fun b!7940667 () Bool)

(declare-fun e!4685365 () Unit!169617)

(declare-fun Unit!169622 () Unit!169617)

(assert (=> b!7940667 (= e!4685365 Unit!169622)))

(declare-fun lt!2696229 () Unit!169617)

(assert (=> b!7940667 (= lt!2696229 call!735834)))

(assert (=> b!7940667 call!735831))

(declare-fun lt!2696238 () Unit!169617)

(assert (=> b!7940667 (= lt!2696238 lt!2696229)))

(declare-fun lt!2696221 () Unit!169617)

(assert (=> b!7940667 (= lt!2696221 call!735828)))

(assert (=> b!7940667 (= input!6711 Nil!74501)))

(declare-fun lt!2696227 () Unit!169617)

(assert (=> b!7940667 (= lt!2696227 lt!2696221)))

(assert (=> b!7940667 false))

(declare-fun b!7940668 () Bool)

(assert (=> b!7940668 (= e!4685369 lt!2696232)))

(declare-fun b!7940669 () Bool)

(declare-fun c!1458893 () Bool)

(assert (=> b!7940669 (= c!1458893 call!735832)))

(declare-fun lt!2696217 () Unit!169617)

(declare-fun lt!2696231 () Unit!169617)

(assert (=> b!7940669 (= lt!2696217 lt!2696231)))

(assert (=> b!7940669 (= input!6711 Nil!74501)))

(assert (=> b!7940669 (= lt!2696231 call!735828)))

(declare-fun lt!2696214 () Unit!169617)

(declare-fun lt!2696228 () Unit!169617)

(assert (=> b!7940669 (= lt!2696214 lt!2696228)))

(assert (=> b!7940669 call!735831))

(assert (=> b!7940669 (= lt!2696228 call!735834)))

(declare-fun e!4685364 () tuple2!70482)

(assert (=> b!7940669 (= e!4685364 e!4685368)))

(declare-fun b!7940670 () Bool)

(declare-fun Unit!169623 () Unit!169617)

(assert (=> b!7940670 (= e!4685365 Unit!169623)))

(declare-fun b!7940671 () Bool)

(assert (=> b!7940671 (= e!4685370 e!4685364)))

(declare-fun c!1458890 () Bool)

(assert (=> b!7940671 (= c!1458890 (= (size!43333 Nil!74501) (size!43333 input!6711)))))

(declare-fun b!7940672 () Bool)

(declare-fun c!1458894 () Bool)

(assert (=> b!7940672 (= c!1458894 call!735832)))

(declare-fun lt!2696239 () Unit!169617)

(declare-fun lt!2696222 () Unit!169617)

(assert (=> b!7940672 (= lt!2696239 lt!2696222)))

(declare-fun lt!2696234 () C!43130)

(declare-fun lt!2696219 () List!74625)

(assert (=> b!7940672 (= (++!18294 (++!18294 Nil!74501 (Cons!74501 lt!2696234 Nil!74501)) lt!2696219) input!6711)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3492 (List!74625 C!43130 List!74625 List!74625) Unit!169617)

(assert (=> b!7940672 (= lt!2696222 (lemmaMoveElementToOtherListKeepsConcatEq!3492 Nil!74501 lt!2696234 lt!2696219 input!6711))))

(assert (=> b!7940672 (= lt!2696219 (tail!15727 (getSuffix!3707 input!6711 Nil!74501)))))

(assert (=> b!7940672 (= lt!2696234 (head!16184 (getSuffix!3707 input!6711 Nil!74501)))))

(declare-fun lt!2696215 () Unit!169617)

(declare-fun lt!2696212 () Unit!169617)

(assert (=> b!7940672 (= lt!2696215 lt!2696212)))

(assert (=> b!7940672 (isPrefix!6496 (++!18294 Nil!74501 (Cons!74501 (head!16184 (getSuffix!3707 input!6711 Nil!74501)) Nil!74501)) input!6711)))

(declare-fun lemmaAddHeadSuffixToPrefixStillPrefix!1270 (List!74625 List!74625) Unit!169617)

(assert (=> b!7940672 (= lt!2696212 (lemmaAddHeadSuffixToPrefixStillPrefix!1270 Nil!74501 input!6711))))

(declare-fun lt!2696236 () Unit!169617)

(declare-fun lt!2696233 () Unit!169617)

(assert (=> b!7940672 (= lt!2696236 lt!2696233)))

(assert (=> b!7940672 (= lt!2696233 (lemmaAddHeadSuffixToPrefixStillPrefix!1270 Nil!74501 input!6711))))

(assert (=> b!7940672 (= lt!2696230 (++!18294 Nil!74501 (Cons!74501 (head!16184 (getSuffix!3707 input!6711 Nil!74501)) Nil!74501)))))

(declare-fun lt!2696225 () Unit!169617)

(assert (=> b!7940672 (= lt!2696225 e!4685365)))

(declare-fun c!1458889 () Bool)

(assert (=> b!7940672 (= c!1458889 (= (size!43333 Nil!74501) (size!43333 input!6711)))))

(declare-fun lt!2696226 () Unit!169617)

(declare-fun lt!2696220 () Unit!169617)

(assert (=> b!7940672 (= lt!2696226 lt!2696220)))

(assert (=> b!7940672 (<= (size!43333 Nil!74501) (size!43333 input!6711))))

(declare-fun lemmaIsPrefixThenSmallerEqSize!1050 (List!74625 List!74625) Unit!169617)

(assert (=> b!7940672 (= lt!2696220 (lemmaIsPrefixThenSmallerEqSize!1050 Nil!74501 input!6711))))

(assert (=> b!7940672 (= e!4685364 e!4685367)))

(declare-fun bm!735830 () Bool)

(assert (=> bm!735830 (= call!735830 (head!16184 (getSuffix!3707 input!6711 Nil!74501)))))

(declare-fun b!7940673 () Bool)

(assert (=> b!7940673 (= e!4685369 (tuple2!70483 Nil!74501 (getSuffix!3707 input!6711 Nil!74501)))))

(declare-fun b!7940674 () Bool)

(assert (=> b!7940674 (= e!4685370 (tuple2!70483 Nil!74501 input!6711))))

(assert (= (and d!2375035 c!1458892) b!7940674))

(assert (= (and d!2375035 (not c!1458892)) b!7940671))

(assert (= (and b!7940671 c!1458890) b!7940669))

(assert (= (and b!7940671 (not c!1458890)) b!7940672))

(assert (= (and b!7940669 c!1458893) b!7940666))

(assert (= (and b!7940669 (not c!1458893)) b!7940661))

(assert (= (and b!7940672 c!1458889) b!7940667))

(assert (= (and b!7940672 (not c!1458889)) b!7940670))

(assert (= (and b!7940672 c!1458894) b!7940663))

(assert (= (and b!7940672 (not c!1458894)) b!7940665))

(assert (= (and b!7940663 c!1458891) b!7940673))

(assert (= (and b!7940663 (not c!1458891)) b!7940668))

(assert (= (or b!7940663 b!7940665) bm!735825))

(assert (= (or b!7940663 b!7940665) bm!735830))

(assert (= (or b!7940663 b!7940665) bm!735823))

(assert (= (or b!7940663 b!7940665) bm!735824))

(assert (= (or b!7940669 b!7940667) bm!735826))

(assert (= (or b!7940669 b!7940672) bm!735827))

(assert (= (or b!7940669 b!7940667) bm!735829))

(assert (= (or b!7940669 b!7940667) bm!735828))

(assert (= (and d!2375035 res!3150070) b!7940664))

(assert (= (and b!7940664 (not res!3150069)) b!7940662))

(declare-fun m!8329758 () Bool)

(assert (=> bm!735829 m!8329758))

(assert (=> bm!735825 m!8329630))

(declare-fun m!8329760 () Bool)

(assert (=> bm!735825 m!8329760))

(declare-fun m!8329762 () Bool)

(assert (=> b!7940664 m!8329762))

(assert (=> bm!735827 m!8329704))

(declare-fun m!8329764 () Bool)

(assert (=> b!7940663 m!8329764))

(declare-fun m!8329766 () Bool)

(assert (=> bm!735828 m!8329766))

(assert (=> d!2375035 m!8329630))

(assert (=> d!2375035 m!8329624))

(assert (=> d!2375035 m!8329630))

(declare-fun m!8329768 () Bool)

(assert (=> d!2375035 m!8329768))

(declare-fun m!8329770 () Bool)

(assert (=> d!2375035 m!8329770))

(assert (=> d!2375035 m!8329630))

(declare-fun m!8329772 () Bool)

(assert (=> d!2375035 m!8329772))

(declare-fun m!8329774 () Bool)

(assert (=> d!2375035 m!8329774))

(declare-fun m!8329776 () Bool)

(assert (=> d!2375035 m!8329776))

(declare-fun m!8329778 () Bool)

(assert (=> d!2375035 m!8329778))

(assert (=> d!2375035 m!8329630))

(assert (=> d!2375035 m!8329774))

(assert (=> b!7940672 m!8329630))

(declare-fun m!8329780 () Bool)

(assert (=> b!7940672 m!8329780))

(declare-fun m!8329782 () Bool)

(assert (=> b!7940672 m!8329782))

(declare-fun m!8329784 () Bool)

(assert (=> b!7940672 m!8329784))

(declare-fun m!8329786 () Bool)

(assert (=> b!7940672 m!8329786))

(assert (=> b!7940672 m!8329786))

(declare-fun m!8329788 () Bool)

(assert (=> b!7940672 m!8329788))

(assert (=> b!7940672 m!8329630))

(assert (=> b!7940672 m!8329760))

(assert (=> b!7940672 m!8329786))

(assert (=> b!7940672 m!8329634))

(assert (=> b!7940672 m!8329632))

(assert (=> b!7940672 m!8329782))

(declare-fun m!8329790 () Bool)

(assert (=> b!7940672 m!8329790))

(assert (=> b!7940672 m!8329630))

(declare-fun m!8329792 () Bool)

(assert (=> b!7940672 m!8329792))

(assert (=> b!7940672 m!8329630))

(assert (=> b!7940672 m!8329792))

(declare-fun m!8329794 () Bool)

(assert (=> b!7940672 m!8329794))

(declare-fun m!8329796 () Bool)

(assert (=> bm!735826 m!8329796))

(declare-fun m!8329798 () Bool)

(assert (=> bm!735823 m!8329798))

(assert (=> bm!735824 m!8329634))

(declare-fun m!8329800 () Bool)

(assert (=> bm!735824 m!8329800))

(declare-fun m!8329802 () Bool)

(assert (=> b!7940662 m!8329802))

(assert (=> b!7940662 m!8329632))

(assert (=> bm!735830 m!8329630))

(assert (=> bm!735830 m!8329792))

(assert (=> b!7940426 d!2375035))

(declare-fun b!7940688 () Bool)

(declare-fun e!4685374 () Bool)

(declare-fun tp!2360978 () Bool)

(declare-fun tp!2360981 () Bool)

(assert (=> b!7940688 (= e!4685374 (and tp!2360978 tp!2360981))))

(declare-fun b!7940686 () Bool)

(declare-fun tp!2360979 () Bool)

(declare-fun tp!2360977 () Bool)

(assert (=> b!7940686 (= e!4685374 (and tp!2360979 tp!2360977))))

(assert (=> b!7940430 (= tp!2360947 e!4685374)))

(declare-fun b!7940685 () Bool)

(assert (=> b!7940685 (= e!4685374 tp_is_empty!53335)))

(declare-fun b!7940687 () Bool)

(declare-fun tp!2360980 () Bool)

(assert (=> b!7940687 (= e!4685374 tp!2360980)))

(assert (= (and b!7940430 (is-ElementMatch!21396 (regOne!43305 r!15654))) b!7940685))

(assert (= (and b!7940430 (is-Concat!30395 (regOne!43305 r!15654))) b!7940686))

(assert (= (and b!7940430 (is-Star!21396 (regOne!43305 r!15654))) b!7940687))

(assert (= (and b!7940430 (is-Union!21396 (regOne!43305 r!15654))) b!7940688))

(declare-fun b!7940692 () Bool)

(declare-fun e!4685375 () Bool)

(declare-fun tp!2360983 () Bool)

(declare-fun tp!2360986 () Bool)

(assert (=> b!7940692 (= e!4685375 (and tp!2360983 tp!2360986))))

(declare-fun b!7940690 () Bool)

(declare-fun tp!2360984 () Bool)

(declare-fun tp!2360982 () Bool)

(assert (=> b!7940690 (= e!4685375 (and tp!2360984 tp!2360982))))

(assert (=> b!7940430 (= tp!2360943 e!4685375)))

(declare-fun b!7940689 () Bool)

(assert (=> b!7940689 (= e!4685375 tp_is_empty!53335)))

(declare-fun b!7940691 () Bool)

(declare-fun tp!2360985 () Bool)

(assert (=> b!7940691 (= e!4685375 tp!2360985)))

(assert (= (and b!7940430 (is-ElementMatch!21396 (regTwo!43305 r!15654))) b!7940689))

(assert (= (and b!7940430 (is-Concat!30395 (regTwo!43305 r!15654))) b!7940690))

(assert (= (and b!7940430 (is-Star!21396 (regTwo!43305 r!15654))) b!7940691))

(assert (= (and b!7940430 (is-Union!21396 (regTwo!43305 r!15654))) b!7940692))

(declare-fun b!7940696 () Bool)

(declare-fun e!4685376 () Bool)

(declare-fun tp!2360988 () Bool)

(declare-fun tp!2360991 () Bool)

(assert (=> b!7940696 (= e!4685376 (and tp!2360988 tp!2360991))))

(declare-fun b!7940694 () Bool)

(declare-fun tp!2360989 () Bool)

(declare-fun tp!2360987 () Bool)

(assert (=> b!7940694 (= e!4685376 (and tp!2360989 tp!2360987))))

(assert (=> b!7940431 (= tp!2360948 e!4685376)))

(declare-fun b!7940693 () Bool)

(assert (=> b!7940693 (= e!4685376 tp_is_empty!53335)))

(declare-fun b!7940695 () Bool)

(declare-fun tp!2360990 () Bool)

(assert (=> b!7940695 (= e!4685376 tp!2360990)))

(assert (= (and b!7940431 (is-ElementMatch!21396 (regOne!43304 r!15654))) b!7940693))

(assert (= (and b!7940431 (is-Concat!30395 (regOne!43304 r!15654))) b!7940694))

(assert (= (and b!7940431 (is-Star!21396 (regOne!43304 r!15654))) b!7940695))

(assert (= (and b!7940431 (is-Union!21396 (regOne!43304 r!15654))) b!7940696))

(declare-fun b!7940700 () Bool)

(declare-fun e!4685377 () Bool)

(declare-fun tp!2360993 () Bool)

(declare-fun tp!2360996 () Bool)

(assert (=> b!7940700 (= e!4685377 (and tp!2360993 tp!2360996))))

(declare-fun b!7940698 () Bool)

(declare-fun tp!2360994 () Bool)

(declare-fun tp!2360992 () Bool)

(assert (=> b!7940698 (= e!4685377 (and tp!2360994 tp!2360992))))

(assert (=> b!7940431 (= tp!2360945 e!4685377)))

(declare-fun b!7940697 () Bool)

(assert (=> b!7940697 (= e!4685377 tp_is_empty!53335)))

(declare-fun b!7940699 () Bool)

(declare-fun tp!2360995 () Bool)

(assert (=> b!7940699 (= e!4685377 tp!2360995)))

(assert (= (and b!7940431 (is-ElementMatch!21396 (regTwo!43304 r!15654))) b!7940697))

(assert (= (and b!7940431 (is-Concat!30395 (regTwo!43304 r!15654))) b!7940698))

(assert (= (and b!7940431 (is-Star!21396 (regTwo!43304 r!15654))) b!7940699))

(assert (= (and b!7940431 (is-Union!21396 (regTwo!43304 r!15654))) b!7940700))

(declare-fun b!7940704 () Bool)

(declare-fun e!4685378 () Bool)

(declare-fun tp!2360998 () Bool)

(declare-fun tp!2361001 () Bool)

(assert (=> b!7940704 (= e!4685378 (and tp!2360998 tp!2361001))))

(declare-fun b!7940702 () Bool)

(declare-fun tp!2360999 () Bool)

(declare-fun tp!2360997 () Bool)

(assert (=> b!7940702 (= e!4685378 (and tp!2360999 tp!2360997))))

(assert (=> b!7940429 (= tp!2360944 e!4685378)))

(declare-fun b!7940701 () Bool)

(assert (=> b!7940701 (= e!4685378 tp_is_empty!53335)))

(declare-fun b!7940703 () Bool)

(declare-fun tp!2361000 () Bool)

(assert (=> b!7940703 (= e!4685378 tp!2361000)))

(assert (= (and b!7940429 (is-ElementMatch!21396 (reg!21725 r!15654))) b!7940701))

(assert (= (and b!7940429 (is-Concat!30395 (reg!21725 r!15654))) b!7940702))

(assert (= (and b!7940429 (is-Star!21396 (reg!21725 r!15654))) b!7940703))

(assert (= (and b!7940429 (is-Union!21396 (reg!21725 r!15654))) b!7940704))

(declare-fun b!7940709 () Bool)

(declare-fun e!4685381 () Bool)

(declare-fun tp!2361004 () Bool)

(assert (=> b!7940709 (= e!4685381 (and tp_is_empty!53335 tp!2361004))))

(assert (=> b!7940427 (= tp!2360946 e!4685381)))

(assert (= (and b!7940427 (is-Cons!74501 (t!390368 input!6711))) b!7940709))

(push 1)

(assert (not b!7940700))

(assert (not b!7940523))

(assert (not b!7940566))

(assert (not b!7940662))

(assert (not b!7940577))

(assert (not bm!735830))

(assert (not b!7940561))

(assert (not b!7940521))

(assert (not b!7940610))

(assert (not bm!735827))

(assert (not bm!735825))

(assert tp_is_empty!53335)

(assert (not b!7940584))

(assert (not bm!735826))

(assert (not b!7940567))

(assert (not d!2375027))

(assert (not b!7940703))

(assert (not d!2375023))

(assert (not b!7940522))

(assert (not b!7940597))

(assert (not bm!735796))

(assert (not b!7940465))

(assert (not b!7940672))

(assert (not b!7940690))

(assert (not d!2375009))

(assert (not b!7940699))

(assert (not b!7940571))

(assert (not bm!735823))

(assert (not bm!735797))

(assert (not b!7940663))

(assert (not d!2375017))

(assert (not b!7940664))

(assert (not b!7940709))

(assert (not bm!735824))

(assert (not bm!735806))

(assert (not b!7940702))

(assert (not bm!735829))

(assert (not b!7940569))

(assert (not b!7940696))

(assert (not b!7940608))

(assert (not b!7940596))

(assert (not b!7940695))

(assert (not b!7940688))

(assert (not b!7940694))

(assert (not b!7940505))

(assert (not d!2375021))

(assert (not d!2375035))

(assert (not bm!735828))

(assert (not b!7940692))

(assert (not b!7940687))

(assert (not b!7940704))

(assert (not b!7940698))

(assert (not b!7940565))

(assert (not b!7940686))

(assert (not b!7940691))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


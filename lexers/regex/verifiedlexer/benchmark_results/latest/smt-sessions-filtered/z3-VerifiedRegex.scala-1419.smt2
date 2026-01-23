; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74334 () Bool)

(assert start!74334)

(declare-fun b!837423 () Bool)

(declare-fun e!550546 () Bool)

(declare-fun tp!262697 () Bool)

(declare-fun tp!262696 () Bool)

(assert (=> b!837423 (= e!550546 (and tp!262697 tp!262696))))

(declare-fun b!837424 () Bool)

(declare-fun res!382937 () Bool)

(declare-fun e!550547 () Bool)

(assert (=> b!837424 (=> (not res!382937) (not e!550547))))

(declare-datatypes ((C!4764 0))(
  ( (C!4765 (val!2630 Int)) )
))
(declare-datatypes ((Regex!2097 0))(
  ( (ElementMatch!2097 (c!136820 C!4764)) (Concat!3828 (regOne!4706 Regex!2097) (regTwo!4706 Regex!2097)) (EmptyExpr!2097) (Star!2097 (reg!2426 Regex!2097)) (EmptyLang!2097) (Union!2097 (regOne!4707 Regex!2097) (regTwo!4707 Regex!2097)) )
))
(declare-fun r!24850 () Regex!2097)

(declare-fun validRegex!650 (Regex!2097) Bool)

(assert (=> b!837424 (= res!382937 (validRegex!650 r!24850))))

(declare-fun b!837425 () Bool)

(declare-fun res!382936 () Bool)

(assert (=> b!837425 (=> (not res!382936) (not e!550547))))

(declare-fun c!13022 () C!4764)

(assert (=> b!837425 (= res!382936 (= r!24850 (ElementMatch!2097 c!13022)))))

(declare-fun b!837426 () Bool)

(declare-fun tp_is_empty!3917 () Bool)

(assert (=> b!837426 (= e!550546 tp_is_empty!3917)))

(declare-fun b!837427 () Bool)

(declare-fun res!382934 () Bool)

(assert (=> b!837427 (=> (not res!382934) (not e!550547))))

(declare-datatypes ((List!8923 0))(
  ( (Nil!8907) (Cons!8907 (h!14308 C!4764) (t!93215 List!8923)) )
))
(declare-fun s!14218 () List!8923)

(declare-fun isEmpty!5269 (List!8923) Bool)

(assert (=> b!837427 (= res!382934 (not (isEmpty!5269 s!14218)))))

(declare-fun b!837428 () Bool)

(declare-fun matchR!737 (Regex!2097 List!8923) Bool)

(assert (=> b!837428 (= e!550547 (matchR!737 r!24850 (Cons!8907 c!13022 s!14218)))))

(declare-fun b!837429 () Bool)

(declare-fun tp!262700 () Bool)

(declare-fun tp!262698 () Bool)

(assert (=> b!837429 (= e!550546 (and tp!262700 tp!262698))))

(declare-fun b!837430 () Bool)

(declare-fun tp!262695 () Bool)

(assert (=> b!837430 (= e!550546 tp!262695)))

(declare-fun res!382935 () Bool)

(assert (=> start!74334 (=> (not res!382935) (not e!550547))))

(get-info :version)

(assert (=> start!74334 (= res!382935 ((_ is ElementMatch!2097) r!24850))))

(assert (=> start!74334 e!550547))

(assert (=> start!74334 e!550546))

(assert (=> start!74334 tp_is_empty!3917))

(declare-fun e!550545 () Bool)

(assert (=> start!74334 e!550545))

(declare-fun b!837431 () Bool)

(declare-fun tp!262699 () Bool)

(assert (=> b!837431 (= e!550545 (and tp_is_empty!3917 tp!262699))))

(assert (= (and start!74334 res!382935) b!837424))

(assert (= (and b!837424 res!382937) b!837425))

(assert (= (and b!837425 res!382936) b!837427))

(assert (= (and b!837427 res!382934) b!837428))

(assert (= (and start!74334 ((_ is ElementMatch!2097) r!24850)) b!837426))

(assert (= (and start!74334 ((_ is Concat!3828) r!24850)) b!837423))

(assert (= (and start!74334 ((_ is Star!2097) r!24850)) b!837430))

(assert (= (and start!74334 ((_ is Union!2097) r!24850)) b!837429))

(assert (= (and start!74334 ((_ is Cons!8907) s!14218)) b!837431))

(declare-fun m!1071019 () Bool)

(assert (=> b!837424 m!1071019))

(declare-fun m!1071021 () Bool)

(assert (=> b!837427 m!1071021))

(declare-fun m!1071023 () Bool)

(assert (=> b!837428 m!1071023))

(check-sat (not b!837430) (not b!837431) (not b!837429) (not b!837428) tp_is_empty!3917 (not b!837424) (not b!837427) (not b!837423))
(check-sat)
(get-model)

(declare-fun b!837487 () Bool)

(declare-fun e!550588 () Bool)

(declare-fun lt!317990 () Bool)

(assert (=> b!837487 (= e!550588 (not lt!317990))))

(declare-fun b!837488 () Bool)

(declare-fun e!550587 () Bool)

(declare-fun nullable!546 (Regex!2097) Bool)

(assert (=> b!837488 (= e!550587 (nullable!546 r!24850))))

(declare-fun e!550583 () Bool)

(declare-fun b!837489 () Bool)

(declare-fun head!1433 (List!8923) C!4764)

(assert (=> b!837489 (= e!550583 (not (= (head!1433 (Cons!8907 c!13022 s!14218)) (c!136820 r!24850))))))

(declare-fun b!837490 () Bool)

(declare-fun derivativeStep!360 (Regex!2097 C!4764) Regex!2097)

(declare-fun tail!989 (List!8923) List!8923)

(assert (=> b!837490 (= e!550587 (matchR!737 (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218))) (tail!989 (Cons!8907 c!13022 s!14218))))))

(declare-fun b!837491 () Bool)

(declare-fun res!382976 () Bool)

(declare-fun e!550585 () Bool)

(assert (=> b!837491 (=> (not res!382976) (not e!550585))))

(declare-fun call!50421 () Bool)

(assert (=> b!837491 (= res!382976 (not call!50421))))

(declare-fun d!261194 () Bool)

(declare-fun e!550589 () Bool)

(assert (=> d!261194 e!550589))

(declare-fun c!136835 () Bool)

(assert (=> d!261194 (= c!136835 ((_ is EmptyExpr!2097) r!24850))))

(assert (=> d!261194 (= lt!317990 e!550587)))

(declare-fun c!136833 () Bool)

(assert (=> d!261194 (= c!136833 (isEmpty!5269 (Cons!8907 c!13022 s!14218)))))

(assert (=> d!261194 (validRegex!650 r!24850)))

(assert (=> d!261194 (= (matchR!737 r!24850 (Cons!8907 c!13022 s!14218)) lt!317990)))

(declare-fun b!837494 () Bool)

(declare-fun res!382974 () Bool)

(declare-fun e!550584 () Bool)

(assert (=> b!837494 (=> res!382974 e!550584)))

(assert (=> b!837494 (= res!382974 (not ((_ is ElementMatch!2097) r!24850)))))

(assert (=> b!837494 (= e!550588 e!550584)))

(declare-fun bm!50416 () Bool)

(assert (=> bm!50416 (= call!50421 (isEmpty!5269 (Cons!8907 c!13022 s!14218)))))

(declare-fun b!837495 () Bool)

(assert (=> b!837495 (= e!550589 e!550588)))

(declare-fun c!136834 () Bool)

(assert (=> b!837495 (= c!136834 ((_ is EmptyLang!2097) r!24850))))

(declare-fun b!837496 () Bool)

(declare-fun res!382969 () Bool)

(assert (=> b!837496 (=> (not res!382969) (not e!550585))))

(assert (=> b!837496 (= res!382969 (isEmpty!5269 (tail!989 (Cons!8907 c!13022 s!14218))))))

(declare-fun b!837497 () Bool)

(declare-fun e!550586 () Bool)

(assert (=> b!837497 (= e!550584 e!550586)))

(declare-fun res!382970 () Bool)

(assert (=> b!837497 (=> (not res!382970) (not e!550586))))

(assert (=> b!837497 (= res!382970 (not lt!317990))))

(declare-fun b!837498 () Bool)

(declare-fun res!382971 () Bool)

(assert (=> b!837498 (=> res!382971 e!550583)))

(assert (=> b!837498 (= res!382971 (not (isEmpty!5269 (tail!989 (Cons!8907 c!13022 s!14218)))))))

(declare-fun b!837499 () Bool)

(assert (=> b!837499 (= e!550586 e!550583)))

(declare-fun res!382973 () Bool)

(assert (=> b!837499 (=> res!382973 e!550583)))

(assert (=> b!837499 (= res!382973 call!50421)))

(declare-fun b!837500 () Bool)

(assert (=> b!837500 (= e!550585 (= (head!1433 (Cons!8907 c!13022 s!14218)) (c!136820 r!24850)))))

(declare-fun b!837501 () Bool)

(declare-fun res!382975 () Bool)

(assert (=> b!837501 (=> res!382975 e!550584)))

(assert (=> b!837501 (= res!382975 e!550585)))

(declare-fun res!382972 () Bool)

(assert (=> b!837501 (=> (not res!382972) (not e!550585))))

(assert (=> b!837501 (= res!382972 lt!317990)))

(declare-fun b!837502 () Bool)

(assert (=> b!837502 (= e!550589 (= lt!317990 call!50421))))

(assert (= (and d!261194 c!136833) b!837488))

(assert (= (and d!261194 (not c!136833)) b!837490))

(assert (= (and d!261194 c!136835) b!837502))

(assert (= (and d!261194 (not c!136835)) b!837495))

(assert (= (and b!837495 c!136834) b!837487))

(assert (= (and b!837495 (not c!136834)) b!837494))

(assert (= (and b!837494 (not res!382974)) b!837501))

(assert (= (and b!837501 res!382972) b!837491))

(assert (= (and b!837491 res!382976) b!837496))

(assert (= (and b!837496 res!382969) b!837500))

(assert (= (and b!837501 (not res!382975)) b!837497))

(assert (= (and b!837497 res!382970) b!837499))

(assert (= (and b!837499 (not res!382973)) b!837498))

(assert (= (and b!837498 (not res!382971)) b!837489))

(assert (= (or b!837502 b!837491 b!837499) bm!50416))

(declare-fun m!1071031 () Bool)

(assert (=> b!837490 m!1071031))

(assert (=> b!837490 m!1071031))

(declare-fun m!1071033 () Bool)

(assert (=> b!837490 m!1071033))

(declare-fun m!1071035 () Bool)

(assert (=> b!837490 m!1071035))

(assert (=> b!837490 m!1071033))

(assert (=> b!837490 m!1071035))

(declare-fun m!1071037 () Bool)

(assert (=> b!837490 m!1071037))

(assert (=> b!837500 m!1071031))

(declare-fun m!1071039 () Bool)

(assert (=> b!837488 m!1071039))

(assert (=> b!837498 m!1071035))

(assert (=> b!837498 m!1071035))

(declare-fun m!1071041 () Bool)

(assert (=> b!837498 m!1071041))

(assert (=> b!837489 m!1071031))

(declare-fun m!1071043 () Bool)

(assert (=> d!261194 m!1071043))

(assert (=> d!261194 m!1071019))

(assert (=> bm!50416 m!1071043))

(assert (=> b!837496 m!1071035))

(assert (=> b!837496 m!1071035))

(assert (=> b!837496 m!1071041))

(assert (=> b!837428 d!261194))

(declare-fun bm!50426 () Bool)

(declare-fun call!50431 () Bool)

(declare-fun call!50433 () Bool)

(assert (=> bm!50426 (= call!50431 call!50433)))

(declare-fun b!837561 () Bool)

(declare-fun e!550628 () Bool)

(declare-fun call!50432 () Bool)

(assert (=> b!837561 (= e!550628 call!50432)))

(declare-fun b!837562 () Bool)

(declare-fun e!550625 () Bool)

(assert (=> b!837562 (= e!550625 call!50433)))

(declare-fun b!837563 () Bool)

(declare-fun e!550629 () Bool)

(declare-fun e!550627 () Bool)

(assert (=> b!837563 (= e!550629 e!550627)))

(declare-fun c!136850 () Bool)

(assert (=> b!837563 (= c!136850 ((_ is Union!2097) r!24850))))

(declare-fun b!837564 () Bool)

(declare-fun res!383014 () Bool)

(assert (=> b!837564 (=> (not res!383014) (not e!550628))))

(assert (=> b!837564 (= res!383014 call!50431)))

(assert (=> b!837564 (= e!550627 e!550628)))

(declare-fun b!837565 () Bool)

(declare-fun e!550626 () Bool)

(assert (=> b!837565 (= e!550626 e!550629)))

(declare-fun c!136849 () Bool)

(assert (=> b!837565 (= c!136849 ((_ is Star!2097) r!24850))))

(declare-fun b!837566 () Bool)

(declare-fun e!550631 () Bool)

(declare-fun e!550630 () Bool)

(assert (=> b!837566 (= e!550631 e!550630)))

(declare-fun res!383011 () Bool)

(assert (=> b!837566 (=> (not res!383011) (not e!550630))))

(assert (=> b!837566 (= res!383011 call!50431)))

(declare-fun b!837567 () Bool)

(assert (=> b!837567 (= e!550630 call!50432)))

(declare-fun bm!50428 () Bool)

(assert (=> bm!50428 (= call!50433 (validRegex!650 (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850)))))))

(declare-fun b!837568 () Bool)

(assert (=> b!837568 (= e!550629 e!550625)))

(declare-fun res!383012 () Bool)

(assert (=> b!837568 (= res!383012 (not (nullable!546 (reg!2426 r!24850))))))

(assert (=> b!837568 (=> (not res!383012) (not e!550625))))

(declare-fun b!837569 () Bool)

(declare-fun res!383013 () Bool)

(assert (=> b!837569 (=> res!383013 e!550631)))

(assert (=> b!837569 (= res!383013 (not ((_ is Concat!3828) r!24850)))))

(assert (=> b!837569 (= e!550627 e!550631)))

(declare-fun d!261198 () Bool)

(declare-fun res!383015 () Bool)

(assert (=> d!261198 (=> res!383015 e!550626)))

(assert (=> d!261198 (= res!383015 ((_ is ElementMatch!2097) r!24850))))

(assert (=> d!261198 (= (validRegex!650 r!24850) e!550626)))

(declare-fun bm!50427 () Bool)

(assert (=> bm!50427 (= call!50432 (validRegex!650 (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850))))))

(assert (= (and d!261198 (not res!383015)) b!837565))

(assert (= (and b!837565 c!136849) b!837568))

(assert (= (and b!837565 (not c!136849)) b!837563))

(assert (= (and b!837568 res!383012) b!837562))

(assert (= (and b!837563 c!136850) b!837564))

(assert (= (and b!837563 (not c!136850)) b!837569))

(assert (= (and b!837564 res!383014) b!837561))

(assert (= (and b!837569 (not res!383013)) b!837566))

(assert (= (and b!837566 res!383011) b!837567))

(assert (= (or b!837564 b!837566) bm!50426))

(assert (= (or b!837561 b!837567) bm!50427))

(assert (= (or b!837562 bm!50426) bm!50428))

(declare-fun m!1071059 () Bool)

(assert (=> bm!50428 m!1071059))

(declare-fun m!1071061 () Bool)

(assert (=> b!837568 m!1071061))

(declare-fun m!1071063 () Bool)

(assert (=> bm!50427 m!1071063))

(assert (=> b!837424 d!261198))

(declare-fun d!261202 () Bool)

(assert (=> d!261202 (= (isEmpty!5269 s!14218) ((_ is Nil!8907) s!14218))))

(assert (=> b!837427 d!261202))

(declare-fun e!550643 () Bool)

(assert (=> b!837423 (= tp!262697 e!550643)))

(declare-fun b!837614 () Bool)

(declare-fun tp!262749 () Bool)

(declare-fun tp!262746 () Bool)

(assert (=> b!837614 (= e!550643 (and tp!262749 tp!262746))))

(declare-fun b!837612 () Bool)

(declare-fun tp!262745 () Bool)

(declare-fun tp!262744 () Bool)

(assert (=> b!837612 (= e!550643 (and tp!262745 tp!262744))))

(declare-fun b!837611 () Bool)

(assert (=> b!837611 (= e!550643 tp_is_empty!3917)))

(declare-fun b!837613 () Bool)

(declare-fun tp!262747 () Bool)

(assert (=> b!837613 (= e!550643 tp!262747)))

(assert (= (and b!837423 ((_ is ElementMatch!2097) (regOne!4706 r!24850))) b!837611))

(assert (= (and b!837423 ((_ is Concat!3828) (regOne!4706 r!24850))) b!837612))

(assert (= (and b!837423 ((_ is Star!2097) (regOne!4706 r!24850))) b!837613))

(assert (= (and b!837423 ((_ is Union!2097) (regOne!4706 r!24850))) b!837614))

(declare-fun e!550645 () Bool)

(assert (=> b!837423 (= tp!262696 e!550645)))

(declare-fun b!837622 () Bool)

(declare-fun tp!262758 () Bool)

(declare-fun tp!262756 () Bool)

(assert (=> b!837622 (= e!550645 (and tp!262758 tp!262756))))

(declare-fun b!837620 () Bool)

(declare-fun tp!262755 () Bool)

(declare-fun tp!262754 () Bool)

(assert (=> b!837620 (= e!550645 (and tp!262755 tp!262754))))

(declare-fun b!837619 () Bool)

(assert (=> b!837619 (= e!550645 tp_is_empty!3917)))

(declare-fun b!837621 () Bool)

(declare-fun tp!262757 () Bool)

(assert (=> b!837621 (= e!550645 tp!262757)))

(assert (= (and b!837423 ((_ is ElementMatch!2097) (regTwo!4706 r!24850))) b!837619))

(assert (= (and b!837423 ((_ is Concat!3828) (regTwo!4706 r!24850))) b!837620))

(assert (= (and b!837423 ((_ is Star!2097) (regTwo!4706 r!24850))) b!837621))

(assert (= (and b!837423 ((_ is Union!2097) (regTwo!4706 r!24850))) b!837622))

(declare-fun e!550646 () Bool)

(assert (=> b!837429 (= tp!262700 e!550646)))

(declare-fun b!837626 () Bool)

(declare-fun tp!262763 () Bool)

(declare-fun tp!262761 () Bool)

(assert (=> b!837626 (= e!550646 (and tp!262763 tp!262761))))

(declare-fun b!837624 () Bool)

(declare-fun tp!262760 () Bool)

(declare-fun tp!262759 () Bool)

(assert (=> b!837624 (= e!550646 (and tp!262760 tp!262759))))

(declare-fun b!837623 () Bool)

(assert (=> b!837623 (= e!550646 tp_is_empty!3917)))

(declare-fun b!837625 () Bool)

(declare-fun tp!262762 () Bool)

(assert (=> b!837625 (= e!550646 tp!262762)))

(assert (= (and b!837429 ((_ is ElementMatch!2097) (regOne!4707 r!24850))) b!837623))

(assert (= (and b!837429 ((_ is Concat!3828) (regOne!4707 r!24850))) b!837624))

(assert (= (and b!837429 ((_ is Star!2097) (regOne!4707 r!24850))) b!837625))

(assert (= (and b!837429 ((_ is Union!2097) (regOne!4707 r!24850))) b!837626))

(declare-fun e!550647 () Bool)

(assert (=> b!837429 (= tp!262698 e!550647)))

(declare-fun b!837630 () Bool)

(declare-fun tp!262768 () Bool)

(declare-fun tp!262766 () Bool)

(assert (=> b!837630 (= e!550647 (and tp!262768 tp!262766))))

(declare-fun b!837628 () Bool)

(declare-fun tp!262765 () Bool)

(declare-fun tp!262764 () Bool)

(assert (=> b!837628 (= e!550647 (and tp!262765 tp!262764))))

(declare-fun b!837627 () Bool)

(assert (=> b!837627 (= e!550647 tp_is_empty!3917)))

(declare-fun b!837629 () Bool)

(declare-fun tp!262767 () Bool)

(assert (=> b!837629 (= e!550647 tp!262767)))

(assert (= (and b!837429 ((_ is ElementMatch!2097) (regTwo!4707 r!24850))) b!837627))

(assert (= (and b!837429 ((_ is Concat!3828) (regTwo!4707 r!24850))) b!837628))

(assert (= (and b!837429 ((_ is Star!2097) (regTwo!4707 r!24850))) b!837629))

(assert (= (and b!837429 ((_ is Union!2097) (regTwo!4707 r!24850))) b!837630))

(declare-fun b!837635 () Bool)

(declare-fun e!550650 () Bool)

(declare-fun tp!262771 () Bool)

(assert (=> b!837635 (= e!550650 (and tp_is_empty!3917 tp!262771))))

(assert (=> b!837431 (= tp!262699 e!550650)))

(assert (= (and b!837431 ((_ is Cons!8907) (t!93215 s!14218))) b!837635))

(declare-fun e!550651 () Bool)

(assert (=> b!837430 (= tp!262695 e!550651)))

(declare-fun b!837639 () Bool)

(declare-fun tp!262776 () Bool)

(declare-fun tp!262774 () Bool)

(assert (=> b!837639 (= e!550651 (and tp!262776 tp!262774))))

(declare-fun b!837637 () Bool)

(declare-fun tp!262773 () Bool)

(declare-fun tp!262772 () Bool)

(assert (=> b!837637 (= e!550651 (and tp!262773 tp!262772))))

(declare-fun b!837636 () Bool)

(assert (=> b!837636 (= e!550651 tp_is_empty!3917)))

(declare-fun b!837638 () Bool)

(declare-fun tp!262775 () Bool)

(assert (=> b!837638 (= e!550651 tp!262775)))

(assert (= (and b!837430 ((_ is ElementMatch!2097) (reg!2426 r!24850))) b!837636))

(assert (= (and b!837430 ((_ is Concat!3828) (reg!2426 r!24850))) b!837637))

(assert (= (and b!837430 ((_ is Star!2097) (reg!2426 r!24850))) b!837638))

(assert (= (and b!837430 ((_ is Union!2097) (reg!2426 r!24850))) b!837639))

(check-sat (not b!837620) (not b!837635) (not b!837613) (not b!837628) (not b!837629) (not b!837621) (not b!837489) (not b!837496) (not bm!50427) (not b!837637) (not b!837622) (not b!837498) tp_is_empty!3917 (not b!837500) (not b!837626) (not bm!50428) (not b!837488) (not b!837490) (not b!837639) (not b!837638) (not b!837624) (not d!261194) (not b!837614) (not b!837612) (not b!837630) (not b!837625) (not b!837568) (not bm!50416))
(check-sat)
(get-model)

(declare-fun d!261204 () Bool)

(assert (=> d!261204 (= (head!1433 (Cons!8907 c!13022 s!14218)) (h!14308 (Cons!8907 c!13022 s!14218)))))

(assert (=> b!837500 d!261204))

(declare-fun d!261206 () Bool)

(assert (=> d!261206 (= (isEmpty!5269 (Cons!8907 c!13022 s!14218)) ((_ is Nil!8907) (Cons!8907 c!13022 s!14218)))))

(assert (=> d!261194 d!261206))

(assert (=> d!261194 d!261198))

(declare-fun bm!50429 () Bool)

(declare-fun call!50434 () Bool)

(declare-fun call!50436 () Bool)

(assert (=> bm!50429 (= call!50434 call!50436)))

(declare-fun b!837640 () Bool)

(declare-fun e!550655 () Bool)

(declare-fun call!50435 () Bool)

(assert (=> b!837640 (= e!550655 call!50435)))

(declare-fun b!837641 () Bool)

(declare-fun e!550652 () Bool)

(assert (=> b!837641 (= e!550652 call!50436)))

(declare-fun b!837642 () Bool)

(declare-fun e!550656 () Bool)

(declare-fun e!550654 () Bool)

(assert (=> b!837642 (= e!550656 e!550654)))

(declare-fun c!136852 () Bool)

(assert (=> b!837642 (= c!136852 ((_ is Union!2097) (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850)))))))

(declare-fun b!837643 () Bool)

(declare-fun res!383019 () Bool)

(assert (=> b!837643 (=> (not res!383019) (not e!550655))))

(assert (=> b!837643 (= res!383019 call!50434)))

(assert (=> b!837643 (= e!550654 e!550655)))

(declare-fun b!837644 () Bool)

(declare-fun e!550653 () Bool)

(assert (=> b!837644 (= e!550653 e!550656)))

(declare-fun c!136851 () Bool)

(assert (=> b!837644 (= c!136851 ((_ is Star!2097) (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850)))))))

(declare-fun b!837645 () Bool)

(declare-fun e!550658 () Bool)

(declare-fun e!550657 () Bool)

(assert (=> b!837645 (= e!550658 e!550657)))

(declare-fun res!383016 () Bool)

(assert (=> b!837645 (=> (not res!383016) (not e!550657))))

(assert (=> b!837645 (= res!383016 call!50434)))

(declare-fun b!837646 () Bool)

(assert (=> b!837646 (= e!550657 call!50435)))

(declare-fun bm!50431 () Bool)

(assert (=> bm!50431 (= call!50436 (validRegex!650 (ite c!136851 (reg!2426 (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850)))) (ite c!136852 (regOne!4707 (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850)))) (regOne!4706 (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850))))))))))

(declare-fun b!837647 () Bool)

(assert (=> b!837647 (= e!550656 e!550652)))

(declare-fun res!383017 () Bool)

(assert (=> b!837647 (= res!383017 (not (nullable!546 (reg!2426 (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850)))))))))

(assert (=> b!837647 (=> (not res!383017) (not e!550652))))

(declare-fun b!837648 () Bool)

(declare-fun res!383018 () Bool)

(assert (=> b!837648 (=> res!383018 e!550658)))

(assert (=> b!837648 (= res!383018 (not ((_ is Concat!3828) (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850))))))))

(assert (=> b!837648 (= e!550654 e!550658)))

(declare-fun d!261208 () Bool)

(declare-fun res!383020 () Bool)

(assert (=> d!261208 (=> res!383020 e!550653)))

(assert (=> d!261208 (= res!383020 ((_ is ElementMatch!2097) (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850)))))))

(assert (=> d!261208 (= (validRegex!650 (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850)))) e!550653)))

(declare-fun bm!50430 () Bool)

(assert (=> bm!50430 (= call!50435 (validRegex!650 (ite c!136852 (regTwo!4707 (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850)))) (regTwo!4706 (ite c!136849 (reg!2426 r!24850) (ite c!136850 (regOne!4707 r!24850) (regOne!4706 r!24850)))))))))

(assert (= (and d!261208 (not res!383020)) b!837644))

(assert (= (and b!837644 c!136851) b!837647))

(assert (= (and b!837644 (not c!136851)) b!837642))

(assert (= (and b!837647 res!383017) b!837641))

(assert (= (and b!837642 c!136852) b!837643))

(assert (= (and b!837642 (not c!136852)) b!837648))

(assert (= (and b!837643 res!383019) b!837640))

(assert (= (and b!837648 (not res!383018)) b!837645))

(assert (= (and b!837645 res!383016) b!837646))

(assert (= (or b!837643 b!837645) bm!50429))

(assert (= (or b!837640 b!837646) bm!50430))

(assert (= (or b!837641 bm!50429) bm!50431))

(declare-fun m!1071065 () Bool)

(assert (=> bm!50431 m!1071065))

(declare-fun m!1071067 () Bool)

(assert (=> b!837647 m!1071067))

(declare-fun m!1071069 () Bool)

(assert (=> bm!50430 m!1071069))

(assert (=> bm!50428 d!261208))

(declare-fun bm!50432 () Bool)

(declare-fun call!50437 () Bool)

(declare-fun call!50439 () Bool)

(assert (=> bm!50432 (= call!50437 call!50439)))

(declare-fun b!837649 () Bool)

(declare-fun e!550662 () Bool)

(declare-fun call!50438 () Bool)

(assert (=> b!837649 (= e!550662 call!50438)))

(declare-fun b!837650 () Bool)

(declare-fun e!550659 () Bool)

(assert (=> b!837650 (= e!550659 call!50439)))

(declare-fun b!837651 () Bool)

(declare-fun e!550663 () Bool)

(declare-fun e!550661 () Bool)

(assert (=> b!837651 (= e!550663 e!550661)))

(declare-fun c!136854 () Bool)

(assert (=> b!837651 (= c!136854 ((_ is Union!2097) (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850))))))

(declare-fun b!837652 () Bool)

(declare-fun res!383024 () Bool)

(assert (=> b!837652 (=> (not res!383024) (not e!550662))))

(assert (=> b!837652 (= res!383024 call!50437)))

(assert (=> b!837652 (= e!550661 e!550662)))

(declare-fun b!837653 () Bool)

(declare-fun e!550660 () Bool)

(assert (=> b!837653 (= e!550660 e!550663)))

(declare-fun c!136853 () Bool)

(assert (=> b!837653 (= c!136853 ((_ is Star!2097) (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850))))))

(declare-fun b!837654 () Bool)

(declare-fun e!550665 () Bool)

(declare-fun e!550664 () Bool)

(assert (=> b!837654 (= e!550665 e!550664)))

(declare-fun res!383021 () Bool)

(assert (=> b!837654 (=> (not res!383021) (not e!550664))))

(assert (=> b!837654 (= res!383021 call!50437)))

(declare-fun b!837655 () Bool)

(assert (=> b!837655 (= e!550664 call!50438)))

(declare-fun bm!50434 () Bool)

(assert (=> bm!50434 (= call!50439 (validRegex!650 (ite c!136853 (reg!2426 (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850))) (ite c!136854 (regOne!4707 (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850))) (regOne!4706 (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850)))))))))

(declare-fun b!837656 () Bool)

(assert (=> b!837656 (= e!550663 e!550659)))

(declare-fun res!383022 () Bool)

(assert (=> b!837656 (= res!383022 (not (nullable!546 (reg!2426 (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850))))))))

(assert (=> b!837656 (=> (not res!383022) (not e!550659))))

(declare-fun b!837657 () Bool)

(declare-fun res!383023 () Bool)

(assert (=> b!837657 (=> res!383023 e!550665)))

(assert (=> b!837657 (= res!383023 (not ((_ is Concat!3828) (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850)))))))

(assert (=> b!837657 (= e!550661 e!550665)))

(declare-fun d!261210 () Bool)

(declare-fun res!383025 () Bool)

(assert (=> d!261210 (=> res!383025 e!550660)))

(assert (=> d!261210 (= res!383025 ((_ is ElementMatch!2097) (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850))))))

(assert (=> d!261210 (= (validRegex!650 (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850))) e!550660)))

(declare-fun bm!50433 () Bool)

(assert (=> bm!50433 (= call!50438 (validRegex!650 (ite c!136854 (regTwo!4707 (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850))) (regTwo!4706 (ite c!136850 (regTwo!4707 r!24850) (regTwo!4706 r!24850))))))))

(assert (= (and d!261210 (not res!383025)) b!837653))

(assert (= (and b!837653 c!136853) b!837656))

(assert (= (and b!837653 (not c!136853)) b!837651))

(assert (= (and b!837656 res!383022) b!837650))

(assert (= (and b!837651 c!136854) b!837652))

(assert (= (and b!837651 (not c!136854)) b!837657))

(assert (= (and b!837652 res!383024) b!837649))

(assert (= (and b!837657 (not res!383023)) b!837654))

(assert (= (and b!837654 res!383021) b!837655))

(assert (= (or b!837652 b!837654) bm!50432))

(assert (= (or b!837649 b!837655) bm!50433))

(assert (= (or b!837650 bm!50432) bm!50434))

(declare-fun m!1071071 () Bool)

(assert (=> bm!50434 m!1071071))

(declare-fun m!1071073 () Bool)

(assert (=> b!837656 m!1071073))

(declare-fun m!1071075 () Bool)

(assert (=> bm!50433 m!1071075))

(assert (=> bm!50427 d!261210))

(declare-fun d!261212 () Bool)

(assert (=> d!261212 (= (isEmpty!5269 (tail!989 (Cons!8907 c!13022 s!14218))) ((_ is Nil!8907) (tail!989 (Cons!8907 c!13022 s!14218))))))

(assert (=> b!837496 d!261212))

(declare-fun d!261214 () Bool)

(assert (=> d!261214 (= (tail!989 (Cons!8907 c!13022 s!14218)) (t!93215 (Cons!8907 c!13022 s!14218)))))

(assert (=> b!837496 d!261214))

(assert (=> b!837498 d!261212))

(assert (=> b!837498 d!261214))

(declare-fun d!261216 () Bool)

(declare-fun nullableFct!183 (Regex!2097) Bool)

(assert (=> d!261216 (= (nullable!546 (reg!2426 r!24850)) (nullableFct!183 (reg!2426 r!24850)))))

(declare-fun bs!229746 () Bool)

(assert (= bs!229746 d!261216))

(declare-fun m!1071077 () Bool)

(assert (=> bs!229746 m!1071077))

(assert (=> b!837568 d!261216))

(declare-fun d!261218 () Bool)

(assert (=> d!261218 (= (nullable!546 r!24850) (nullableFct!183 r!24850))))

(declare-fun bs!229747 () Bool)

(assert (= bs!229747 d!261218))

(declare-fun m!1071079 () Bool)

(assert (=> bs!229747 m!1071079))

(assert (=> b!837488 d!261218))

(assert (=> bm!50416 d!261206))

(declare-fun b!837658 () Bool)

(declare-fun e!550671 () Bool)

(declare-fun lt!317994 () Bool)

(assert (=> b!837658 (= e!550671 (not lt!317994))))

(declare-fun e!550670 () Bool)

(declare-fun b!837659 () Bool)

(assert (=> b!837659 (= e!550670 (nullable!546 (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218)))))))

(declare-fun e!550666 () Bool)

(declare-fun b!837660 () Bool)

(assert (=> b!837660 (= e!550666 (not (= (head!1433 (tail!989 (Cons!8907 c!13022 s!14218))) (c!136820 (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218)))))))))

(declare-fun b!837661 () Bool)

(assert (=> b!837661 (= e!550670 (matchR!737 (derivativeStep!360 (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218))) (head!1433 (tail!989 (Cons!8907 c!13022 s!14218)))) (tail!989 (tail!989 (Cons!8907 c!13022 s!14218)))))))

(declare-fun b!837662 () Bool)

(declare-fun res!383033 () Bool)

(declare-fun e!550668 () Bool)

(assert (=> b!837662 (=> (not res!383033) (not e!550668))))

(declare-fun call!50440 () Bool)

(assert (=> b!837662 (= res!383033 (not call!50440))))

(declare-fun d!261220 () Bool)

(declare-fun e!550672 () Bool)

(assert (=> d!261220 e!550672))

(declare-fun c!136857 () Bool)

(assert (=> d!261220 (= c!136857 ((_ is EmptyExpr!2097) (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218)))))))

(assert (=> d!261220 (= lt!317994 e!550670)))

(declare-fun c!136855 () Bool)

(assert (=> d!261220 (= c!136855 (isEmpty!5269 (tail!989 (Cons!8907 c!13022 s!14218))))))

(assert (=> d!261220 (validRegex!650 (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218))))))

(assert (=> d!261220 (= (matchR!737 (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218))) (tail!989 (Cons!8907 c!13022 s!14218))) lt!317994)))

(declare-fun b!837663 () Bool)

(declare-fun res!383031 () Bool)

(declare-fun e!550667 () Bool)

(assert (=> b!837663 (=> res!383031 e!550667)))

(assert (=> b!837663 (= res!383031 (not ((_ is ElementMatch!2097) (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218))))))))

(assert (=> b!837663 (= e!550671 e!550667)))

(declare-fun bm!50435 () Bool)

(assert (=> bm!50435 (= call!50440 (isEmpty!5269 (tail!989 (Cons!8907 c!13022 s!14218))))))

(declare-fun b!837664 () Bool)

(assert (=> b!837664 (= e!550672 e!550671)))

(declare-fun c!136856 () Bool)

(assert (=> b!837664 (= c!136856 ((_ is EmptyLang!2097) (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218)))))))

(declare-fun b!837665 () Bool)

(declare-fun res!383026 () Bool)

(assert (=> b!837665 (=> (not res!383026) (not e!550668))))

(assert (=> b!837665 (= res!383026 (isEmpty!5269 (tail!989 (tail!989 (Cons!8907 c!13022 s!14218)))))))

(declare-fun b!837666 () Bool)

(declare-fun e!550669 () Bool)

(assert (=> b!837666 (= e!550667 e!550669)))

(declare-fun res!383027 () Bool)

(assert (=> b!837666 (=> (not res!383027) (not e!550669))))

(assert (=> b!837666 (= res!383027 (not lt!317994))))

(declare-fun b!837667 () Bool)

(declare-fun res!383028 () Bool)

(assert (=> b!837667 (=> res!383028 e!550666)))

(assert (=> b!837667 (= res!383028 (not (isEmpty!5269 (tail!989 (tail!989 (Cons!8907 c!13022 s!14218))))))))

(declare-fun b!837668 () Bool)

(assert (=> b!837668 (= e!550669 e!550666)))

(declare-fun res!383030 () Bool)

(assert (=> b!837668 (=> res!383030 e!550666)))

(assert (=> b!837668 (= res!383030 call!50440)))

(declare-fun b!837669 () Bool)

(assert (=> b!837669 (= e!550668 (= (head!1433 (tail!989 (Cons!8907 c!13022 s!14218))) (c!136820 (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218))))))))

(declare-fun b!837670 () Bool)

(declare-fun res!383032 () Bool)

(assert (=> b!837670 (=> res!383032 e!550667)))

(assert (=> b!837670 (= res!383032 e!550668)))

(declare-fun res!383029 () Bool)

(assert (=> b!837670 (=> (not res!383029) (not e!550668))))

(assert (=> b!837670 (= res!383029 lt!317994)))

(declare-fun b!837671 () Bool)

(assert (=> b!837671 (= e!550672 (= lt!317994 call!50440))))

(assert (= (and d!261220 c!136855) b!837659))

(assert (= (and d!261220 (not c!136855)) b!837661))

(assert (= (and d!261220 c!136857) b!837671))

(assert (= (and d!261220 (not c!136857)) b!837664))

(assert (= (and b!837664 c!136856) b!837658))

(assert (= (and b!837664 (not c!136856)) b!837663))

(assert (= (and b!837663 (not res!383031)) b!837670))

(assert (= (and b!837670 res!383029) b!837662))

(assert (= (and b!837662 res!383033) b!837665))

(assert (= (and b!837665 res!383026) b!837669))

(assert (= (and b!837670 (not res!383032)) b!837666))

(assert (= (and b!837666 res!383027) b!837668))

(assert (= (and b!837668 (not res!383030)) b!837667))

(assert (= (and b!837667 (not res!383028)) b!837660))

(assert (= (or b!837671 b!837662 b!837668) bm!50435))

(assert (=> b!837661 m!1071035))

(declare-fun m!1071081 () Bool)

(assert (=> b!837661 m!1071081))

(assert (=> b!837661 m!1071033))

(assert (=> b!837661 m!1071081))

(declare-fun m!1071083 () Bool)

(assert (=> b!837661 m!1071083))

(assert (=> b!837661 m!1071035))

(declare-fun m!1071085 () Bool)

(assert (=> b!837661 m!1071085))

(assert (=> b!837661 m!1071083))

(assert (=> b!837661 m!1071085))

(declare-fun m!1071087 () Bool)

(assert (=> b!837661 m!1071087))

(assert (=> b!837669 m!1071035))

(assert (=> b!837669 m!1071081))

(assert (=> b!837659 m!1071033))

(declare-fun m!1071089 () Bool)

(assert (=> b!837659 m!1071089))

(assert (=> b!837667 m!1071035))

(assert (=> b!837667 m!1071085))

(assert (=> b!837667 m!1071085))

(declare-fun m!1071091 () Bool)

(assert (=> b!837667 m!1071091))

(assert (=> b!837660 m!1071035))

(assert (=> b!837660 m!1071081))

(assert (=> d!261220 m!1071035))

(assert (=> d!261220 m!1071041))

(assert (=> d!261220 m!1071033))

(declare-fun m!1071093 () Bool)

(assert (=> d!261220 m!1071093))

(assert (=> bm!50435 m!1071035))

(assert (=> bm!50435 m!1071041))

(assert (=> b!837665 m!1071035))

(assert (=> b!837665 m!1071085))

(assert (=> b!837665 m!1071085))

(assert (=> b!837665 m!1071091))

(assert (=> b!837490 d!261220))

(declare-fun e!550694 () Regex!2097)

(declare-fun b!837701 () Bool)

(assert (=> b!837701 (= e!550694 (ite (= (head!1433 (Cons!8907 c!13022 s!14218)) (c!136820 r!24850)) EmptyExpr!2097 EmptyLang!2097))))

(declare-fun b!837702 () Bool)

(declare-fun e!550692 () Regex!2097)

(declare-fun call!50452 () Regex!2097)

(declare-fun call!50455 () Regex!2097)

(assert (=> b!837702 (= e!550692 (Union!2097 call!50452 call!50455))))

(declare-fun b!837703 () Bool)

(declare-fun e!550693 () Regex!2097)

(assert (=> b!837703 (= e!550693 EmptyLang!2097)))

(declare-fun c!136872 () Bool)

(declare-fun c!136871 () Bool)

(declare-fun c!136870 () Bool)

(declare-fun bm!50447 () Bool)

(assert (=> bm!50447 (= call!50455 (derivativeStep!360 (ite c!136870 (regTwo!4707 r!24850) (ite c!136871 (reg!2426 r!24850) (ite c!136872 (regTwo!4706 r!24850) (regOne!4706 r!24850)))) (head!1433 (Cons!8907 c!13022 s!14218))))))

(declare-fun bm!50448 () Bool)

(assert (=> bm!50448 (= call!50452 (derivativeStep!360 (ite c!136870 (regOne!4707 r!24850) (regOne!4706 r!24850)) (head!1433 (Cons!8907 c!13022 s!14218))))))

(declare-fun bm!50449 () Bool)

(declare-fun call!50454 () Regex!2097)

(assert (=> bm!50449 (= call!50454 call!50455)))

(declare-fun d!261222 () Bool)

(declare-fun lt!317997 () Regex!2097)

(assert (=> d!261222 (validRegex!650 lt!317997)))

(assert (=> d!261222 (= lt!317997 e!550693)))

(declare-fun c!136874 () Bool)

(assert (=> d!261222 (= c!136874 (or ((_ is EmptyExpr!2097) r!24850) ((_ is EmptyLang!2097) r!24850)))))

(assert (=> d!261222 (validRegex!650 r!24850)))

(assert (=> d!261222 (= (derivativeStep!360 r!24850 (head!1433 (Cons!8907 c!13022 s!14218))) lt!317997)))

(declare-fun b!837704 () Bool)

(declare-fun e!550691 () Regex!2097)

(assert (=> b!837704 (= e!550691 (Concat!3828 call!50454 r!24850))))

(declare-fun b!837705 () Bool)

(assert (=> b!837705 (= c!136870 ((_ is Union!2097) r!24850))))

(assert (=> b!837705 (= e!550694 e!550692)))

(declare-fun b!837706 () Bool)

(declare-fun e!550690 () Regex!2097)

(declare-fun call!50453 () Regex!2097)

(assert (=> b!837706 (= e!550690 (Union!2097 (Concat!3828 call!50453 (regTwo!4706 r!24850)) EmptyLang!2097))))

(declare-fun b!837707 () Bool)

(assert (=> b!837707 (= c!136872 (nullable!546 (regOne!4706 r!24850)))))

(assert (=> b!837707 (= e!550691 e!550690)))

(declare-fun b!837708 () Bool)

(assert (=> b!837708 (= e!550693 e!550694)))

(declare-fun c!136873 () Bool)

(assert (=> b!837708 (= c!136873 ((_ is ElementMatch!2097) r!24850))))

(declare-fun bm!50450 () Bool)

(assert (=> bm!50450 (= call!50453 call!50454)))

(declare-fun b!837709 () Bool)

(assert (=> b!837709 (= e!550690 (Union!2097 (Concat!3828 call!50452 (regTwo!4706 r!24850)) call!50453))))

(declare-fun b!837710 () Bool)

(assert (=> b!837710 (= e!550692 e!550691)))

(assert (=> b!837710 (= c!136871 ((_ is Star!2097) r!24850))))

(assert (= (and d!261222 c!136874) b!837703))

(assert (= (and d!261222 (not c!136874)) b!837708))

(assert (= (and b!837708 c!136873) b!837701))

(assert (= (and b!837708 (not c!136873)) b!837705))

(assert (= (and b!837705 c!136870) b!837702))

(assert (= (and b!837705 (not c!136870)) b!837710))

(assert (= (and b!837710 c!136871) b!837704))

(assert (= (and b!837710 (not c!136871)) b!837707))

(assert (= (and b!837707 c!136872) b!837709))

(assert (= (and b!837707 (not c!136872)) b!837706))

(assert (= (or b!837709 b!837706) bm!50450))

(assert (= (or b!837704 bm!50450) bm!50449))

(assert (= (or b!837702 bm!50449) bm!50447))

(assert (= (or b!837702 b!837709) bm!50448))

(assert (=> bm!50447 m!1071031))

(declare-fun m!1071101 () Bool)

(assert (=> bm!50447 m!1071101))

(assert (=> bm!50448 m!1071031))

(declare-fun m!1071103 () Bool)

(assert (=> bm!50448 m!1071103))

(declare-fun m!1071105 () Bool)

(assert (=> d!261222 m!1071105))

(assert (=> d!261222 m!1071019))

(declare-fun m!1071107 () Bool)

(assert (=> b!837707 m!1071107))

(assert (=> b!837490 d!261222))

(assert (=> b!837490 d!261204))

(assert (=> b!837490 d!261214))

(assert (=> b!837489 d!261204))

(declare-fun e!550695 () Bool)

(assert (=> b!837620 (= tp!262755 e!550695)))

(declare-fun b!837714 () Bool)

(declare-fun tp!262781 () Bool)

(declare-fun tp!262779 () Bool)

(assert (=> b!837714 (= e!550695 (and tp!262781 tp!262779))))

(declare-fun b!837712 () Bool)

(declare-fun tp!262778 () Bool)

(declare-fun tp!262777 () Bool)

(assert (=> b!837712 (= e!550695 (and tp!262778 tp!262777))))

(declare-fun b!837711 () Bool)

(assert (=> b!837711 (= e!550695 tp_is_empty!3917)))

(declare-fun b!837713 () Bool)

(declare-fun tp!262780 () Bool)

(assert (=> b!837713 (= e!550695 tp!262780)))

(assert (= (and b!837620 ((_ is ElementMatch!2097) (regOne!4706 (regTwo!4706 r!24850)))) b!837711))

(assert (= (and b!837620 ((_ is Concat!3828) (regOne!4706 (regTwo!4706 r!24850)))) b!837712))

(assert (= (and b!837620 ((_ is Star!2097) (regOne!4706 (regTwo!4706 r!24850)))) b!837713))

(assert (= (and b!837620 ((_ is Union!2097) (regOne!4706 (regTwo!4706 r!24850)))) b!837714))

(declare-fun e!550696 () Bool)

(assert (=> b!837620 (= tp!262754 e!550696)))

(declare-fun b!837718 () Bool)

(declare-fun tp!262786 () Bool)

(declare-fun tp!262784 () Bool)

(assert (=> b!837718 (= e!550696 (and tp!262786 tp!262784))))

(declare-fun b!837716 () Bool)

(declare-fun tp!262783 () Bool)

(declare-fun tp!262782 () Bool)

(assert (=> b!837716 (= e!550696 (and tp!262783 tp!262782))))

(declare-fun b!837715 () Bool)

(assert (=> b!837715 (= e!550696 tp_is_empty!3917)))

(declare-fun b!837717 () Bool)

(declare-fun tp!262785 () Bool)

(assert (=> b!837717 (= e!550696 tp!262785)))

(assert (= (and b!837620 ((_ is ElementMatch!2097) (regTwo!4706 (regTwo!4706 r!24850)))) b!837715))

(assert (= (and b!837620 ((_ is Concat!3828) (regTwo!4706 (regTwo!4706 r!24850)))) b!837716))

(assert (= (and b!837620 ((_ is Star!2097) (regTwo!4706 (regTwo!4706 r!24850)))) b!837717))

(assert (= (and b!837620 ((_ is Union!2097) (regTwo!4706 (regTwo!4706 r!24850)))) b!837718))

(declare-fun e!550697 () Bool)

(assert (=> b!837625 (= tp!262762 e!550697)))

(declare-fun b!837722 () Bool)

(declare-fun tp!262791 () Bool)

(declare-fun tp!262789 () Bool)

(assert (=> b!837722 (= e!550697 (and tp!262791 tp!262789))))

(declare-fun b!837720 () Bool)

(declare-fun tp!262788 () Bool)

(declare-fun tp!262787 () Bool)

(assert (=> b!837720 (= e!550697 (and tp!262788 tp!262787))))

(declare-fun b!837719 () Bool)

(assert (=> b!837719 (= e!550697 tp_is_empty!3917)))

(declare-fun b!837721 () Bool)

(declare-fun tp!262790 () Bool)

(assert (=> b!837721 (= e!550697 tp!262790)))

(assert (= (and b!837625 ((_ is ElementMatch!2097) (reg!2426 (regOne!4707 r!24850)))) b!837719))

(assert (= (and b!837625 ((_ is Concat!3828) (reg!2426 (regOne!4707 r!24850)))) b!837720))

(assert (= (and b!837625 ((_ is Star!2097) (reg!2426 (regOne!4707 r!24850)))) b!837721))

(assert (= (and b!837625 ((_ is Union!2097) (reg!2426 (regOne!4707 r!24850)))) b!837722))

(declare-fun e!550698 () Bool)

(assert (=> b!837624 (= tp!262760 e!550698)))

(declare-fun b!837726 () Bool)

(declare-fun tp!262796 () Bool)

(declare-fun tp!262794 () Bool)

(assert (=> b!837726 (= e!550698 (and tp!262796 tp!262794))))

(declare-fun b!837724 () Bool)

(declare-fun tp!262793 () Bool)

(declare-fun tp!262792 () Bool)

(assert (=> b!837724 (= e!550698 (and tp!262793 tp!262792))))

(declare-fun b!837723 () Bool)

(assert (=> b!837723 (= e!550698 tp_is_empty!3917)))

(declare-fun b!837725 () Bool)

(declare-fun tp!262795 () Bool)

(assert (=> b!837725 (= e!550698 tp!262795)))

(assert (= (and b!837624 ((_ is ElementMatch!2097) (regOne!4706 (regOne!4707 r!24850)))) b!837723))

(assert (= (and b!837624 ((_ is Concat!3828) (regOne!4706 (regOne!4707 r!24850)))) b!837724))

(assert (= (and b!837624 ((_ is Star!2097) (regOne!4706 (regOne!4707 r!24850)))) b!837725))

(assert (= (and b!837624 ((_ is Union!2097) (regOne!4706 (regOne!4707 r!24850)))) b!837726))

(declare-fun e!550699 () Bool)

(assert (=> b!837624 (= tp!262759 e!550699)))

(declare-fun b!837730 () Bool)

(declare-fun tp!262801 () Bool)

(declare-fun tp!262799 () Bool)

(assert (=> b!837730 (= e!550699 (and tp!262801 tp!262799))))

(declare-fun b!837728 () Bool)

(declare-fun tp!262798 () Bool)

(declare-fun tp!262797 () Bool)

(assert (=> b!837728 (= e!550699 (and tp!262798 tp!262797))))

(declare-fun b!837727 () Bool)

(assert (=> b!837727 (= e!550699 tp_is_empty!3917)))

(declare-fun b!837729 () Bool)

(declare-fun tp!262800 () Bool)

(assert (=> b!837729 (= e!550699 tp!262800)))

(assert (= (and b!837624 ((_ is ElementMatch!2097) (regTwo!4706 (regOne!4707 r!24850)))) b!837727))

(assert (= (and b!837624 ((_ is Concat!3828) (regTwo!4706 (regOne!4707 r!24850)))) b!837728))

(assert (= (and b!837624 ((_ is Star!2097) (regTwo!4706 (regOne!4707 r!24850)))) b!837729))

(assert (= (and b!837624 ((_ is Union!2097) (regTwo!4706 (regOne!4707 r!24850)))) b!837730))

(declare-fun e!550703 () Bool)

(assert (=> b!837629 (= tp!262767 e!550703)))

(declare-fun b!837734 () Bool)

(declare-fun tp!262806 () Bool)

(declare-fun tp!262804 () Bool)

(assert (=> b!837734 (= e!550703 (and tp!262806 tp!262804))))

(declare-fun b!837732 () Bool)

(declare-fun tp!262803 () Bool)

(declare-fun tp!262802 () Bool)

(assert (=> b!837732 (= e!550703 (and tp!262803 tp!262802))))

(declare-fun b!837731 () Bool)

(assert (=> b!837731 (= e!550703 tp_is_empty!3917)))

(declare-fun b!837733 () Bool)

(declare-fun tp!262805 () Bool)

(assert (=> b!837733 (= e!550703 tp!262805)))

(assert (= (and b!837629 ((_ is ElementMatch!2097) (reg!2426 (regTwo!4707 r!24850)))) b!837731))

(assert (= (and b!837629 ((_ is Concat!3828) (reg!2426 (regTwo!4707 r!24850)))) b!837732))

(assert (= (and b!837629 ((_ is Star!2097) (reg!2426 (regTwo!4707 r!24850)))) b!837733))

(assert (= (and b!837629 ((_ is Union!2097) (reg!2426 (regTwo!4707 r!24850)))) b!837734))

(declare-fun e!550708 () Bool)

(assert (=> b!837626 (= tp!262763 e!550708)))

(declare-fun b!837752 () Bool)

(declare-fun tp!262811 () Bool)

(declare-fun tp!262809 () Bool)

(assert (=> b!837752 (= e!550708 (and tp!262811 tp!262809))))

(declare-fun b!837750 () Bool)

(declare-fun tp!262808 () Bool)

(declare-fun tp!262807 () Bool)

(assert (=> b!837750 (= e!550708 (and tp!262808 tp!262807))))

(declare-fun b!837749 () Bool)

(assert (=> b!837749 (= e!550708 tp_is_empty!3917)))

(declare-fun b!837751 () Bool)

(declare-fun tp!262810 () Bool)

(assert (=> b!837751 (= e!550708 tp!262810)))

(assert (= (and b!837626 ((_ is ElementMatch!2097) (regOne!4707 (regOne!4707 r!24850)))) b!837749))

(assert (= (and b!837626 ((_ is Concat!3828) (regOne!4707 (regOne!4707 r!24850)))) b!837750))

(assert (= (and b!837626 ((_ is Star!2097) (regOne!4707 (regOne!4707 r!24850)))) b!837751))

(assert (= (and b!837626 ((_ is Union!2097) (regOne!4707 (regOne!4707 r!24850)))) b!837752))

(declare-fun e!550709 () Bool)

(assert (=> b!837626 (= tp!262761 e!550709)))

(declare-fun b!837756 () Bool)

(declare-fun tp!262816 () Bool)

(declare-fun tp!262814 () Bool)

(assert (=> b!837756 (= e!550709 (and tp!262816 tp!262814))))

(declare-fun b!837754 () Bool)

(declare-fun tp!262813 () Bool)

(declare-fun tp!262812 () Bool)

(assert (=> b!837754 (= e!550709 (and tp!262813 tp!262812))))

(declare-fun b!837753 () Bool)

(assert (=> b!837753 (= e!550709 tp_is_empty!3917)))

(declare-fun b!837755 () Bool)

(declare-fun tp!262815 () Bool)

(assert (=> b!837755 (= e!550709 tp!262815)))

(assert (= (and b!837626 ((_ is ElementMatch!2097) (regTwo!4707 (regOne!4707 r!24850)))) b!837753))

(assert (= (and b!837626 ((_ is Concat!3828) (regTwo!4707 (regOne!4707 r!24850)))) b!837754))

(assert (= (and b!837626 ((_ is Star!2097) (regTwo!4707 (regOne!4707 r!24850)))) b!837755))

(assert (= (and b!837626 ((_ is Union!2097) (regTwo!4707 (regOne!4707 r!24850)))) b!837756))

(declare-fun e!550710 () Bool)

(assert (=> b!837630 (= tp!262768 e!550710)))

(declare-fun b!837760 () Bool)

(declare-fun tp!262821 () Bool)

(declare-fun tp!262819 () Bool)

(assert (=> b!837760 (= e!550710 (and tp!262821 tp!262819))))

(declare-fun b!837758 () Bool)

(declare-fun tp!262818 () Bool)

(declare-fun tp!262817 () Bool)

(assert (=> b!837758 (= e!550710 (and tp!262818 tp!262817))))

(declare-fun b!837757 () Bool)

(assert (=> b!837757 (= e!550710 tp_is_empty!3917)))

(declare-fun b!837759 () Bool)

(declare-fun tp!262820 () Bool)

(assert (=> b!837759 (= e!550710 tp!262820)))

(assert (= (and b!837630 ((_ is ElementMatch!2097) (regOne!4707 (regTwo!4707 r!24850)))) b!837757))

(assert (= (and b!837630 ((_ is Concat!3828) (regOne!4707 (regTwo!4707 r!24850)))) b!837758))

(assert (= (and b!837630 ((_ is Star!2097) (regOne!4707 (regTwo!4707 r!24850)))) b!837759))

(assert (= (and b!837630 ((_ is Union!2097) (regOne!4707 (regTwo!4707 r!24850)))) b!837760))

(declare-fun e!550711 () Bool)

(assert (=> b!837630 (= tp!262766 e!550711)))

(declare-fun b!837764 () Bool)

(declare-fun tp!262826 () Bool)

(declare-fun tp!262824 () Bool)

(assert (=> b!837764 (= e!550711 (and tp!262826 tp!262824))))

(declare-fun b!837762 () Bool)

(declare-fun tp!262823 () Bool)

(declare-fun tp!262822 () Bool)

(assert (=> b!837762 (= e!550711 (and tp!262823 tp!262822))))

(declare-fun b!837761 () Bool)

(assert (=> b!837761 (= e!550711 tp_is_empty!3917)))

(declare-fun b!837763 () Bool)

(declare-fun tp!262825 () Bool)

(assert (=> b!837763 (= e!550711 tp!262825)))

(assert (= (and b!837630 ((_ is ElementMatch!2097) (regTwo!4707 (regTwo!4707 r!24850)))) b!837761))

(assert (= (and b!837630 ((_ is Concat!3828) (regTwo!4707 (regTwo!4707 r!24850)))) b!837762))

(assert (= (and b!837630 ((_ is Star!2097) (regTwo!4707 (regTwo!4707 r!24850)))) b!837763))

(assert (= (and b!837630 ((_ is Union!2097) (regTwo!4707 (regTwo!4707 r!24850)))) b!837764))

(declare-fun e!550712 () Bool)

(assert (=> b!837621 (= tp!262757 e!550712)))

(declare-fun b!837768 () Bool)

(declare-fun tp!262831 () Bool)

(declare-fun tp!262829 () Bool)

(assert (=> b!837768 (= e!550712 (and tp!262831 tp!262829))))

(declare-fun b!837766 () Bool)

(declare-fun tp!262828 () Bool)

(declare-fun tp!262827 () Bool)

(assert (=> b!837766 (= e!550712 (and tp!262828 tp!262827))))

(declare-fun b!837765 () Bool)

(assert (=> b!837765 (= e!550712 tp_is_empty!3917)))

(declare-fun b!837767 () Bool)

(declare-fun tp!262830 () Bool)

(assert (=> b!837767 (= e!550712 tp!262830)))

(assert (= (and b!837621 ((_ is ElementMatch!2097) (reg!2426 (regTwo!4706 r!24850)))) b!837765))

(assert (= (and b!837621 ((_ is Concat!3828) (reg!2426 (regTwo!4706 r!24850)))) b!837766))

(assert (= (and b!837621 ((_ is Star!2097) (reg!2426 (regTwo!4706 r!24850)))) b!837767))

(assert (= (and b!837621 ((_ is Union!2097) (reg!2426 (regTwo!4706 r!24850)))) b!837768))

(declare-fun e!550713 () Bool)

(assert (=> b!837622 (= tp!262758 e!550713)))

(declare-fun b!837772 () Bool)

(declare-fun tp!262836 () Bool)

(declare-fun tp!262834 () Bool)

(assert (=> b!837772 (= e!550713 (and tp!262836 tp!262834))))

(declare-fun b!837770 () Bool)

(declare-fun tp!262833 () Bool)

(declare-fun tp!262832 () Bool)

(assert (=> b!837770 (= e!550713 (and tp!262833 tp!262832))))

(declare-fun b!837769 () Bool)

(assert (=> b!837769 (= e!550713 tp_is_empty!3917)))

(declare-fun b!837771 () Bool)

(declare-fun tp!262835 () Bool)

(assert (=> b!837771 (= e!550713 tp!262835)))

(assert (= (and b!837622 ((_ is ElementMatch!2097) (regOne!4707 (regTwo!4706 r!24850)))) b!837769))

(assert (= (and b!837622 ((_ is Concat!3828) (regOne!4707 (regTwo!4706 r!24850)))) b!837770))

(assert (= (and b!837622 ((_ is Star!2097) (regOne!4707 (regTwo!4706 r!24850)))) b!837771))

(assert (= (and b!837622 ((_ is Union!2097) (regOne!4707 (regTwo!4706 r!24850)))) b!837772))

(declare-fun e!550714 () Bool)

(assert (=> b!837622 (= tp!262756 e!550714)))

(declare-fun b!837776 () Bool)

(declare-fun tp!262841 () Bool)

(declare-fun tp!262839 () Bool)

(assert (=> b!837776 (= e!550714 (and tp!262841 tp!262839))))

(declare-fun b!837774 () Bool)

(declare-fun tp!262838 () Bool)

(declare-fun tp!262837 () Bool)

(assert (=> b!837774 (= e!550714 (and tp!262838 tp!262837))))

(declare-fun b!837773 () Bool)

(assert (=> b!837773 (= e!550714 tp_is_empty!3917)))

(declare-fun b!837775 () Bool)

(declare-fun tp!262840 () Bool)

(assert (=> b!837775 (= e!550714 tp!262840)))

(assert (= (and b!837622 ((_ is ElementMatch!2097) (regTwo!4707 (regTwo!4706 r!24850)))) b!837773))

(assert (= (and b!837622 ((_ is Concat!3828) (regTwo!4707 (regTwo!4706 r!24850)))) b!837774))

(assert (= (and b!837622 ((_ is Star!2097) (regTwo!4707 (regTwo!4706 r!24850)))) b!837775))

(assert (= (and b!837622 ((_ is Union!2097) (regTwo!4707 (regTwo!4706 r!24850)))) b!837776))

(declare-fun e!550715 () Bool)

(assert (=> b!837638 (= tp!262775 e!550715)))

(declare-fun b!837780 () Bool)

(declare-fun tp!262846 () Bool)

(declare-fun tp!262844 () Bool)

(assert (=> b!837780 (= e!550715 (and tp!262846 tp!262844))))

(declare-fun b!837778 () Bool)

(declare-fun tp!262843 () Bool)

(declare-fun tp!262842 () Bool)

(assert (=> b!837778 (= e!550715 (and tp!262843 tp!262842))))

(declare-fun b!837777 () Bool)

(assert (=> b!837777 (= e!550715 tp_is_empty!3917)))

(declare-fun b!837779 () Bool)

(declare-fun tp!262845 () Bool)

(assert (=> b!837779 (= e!550715 tp!262845)))

(assert (= (and b!837638 ((_ is ElementMatch!2097) (reg!2426 (reg!2426 r!24850)))) b!837777))

(assert (= (and b!837638 ((_ is Concat!3828) (reg!2426 (reg!2426 r!24850)))) b!837778))

(assert (= (and b!837638 ((_ is Star!2097) (reg!2426 (reg!2426 r!24850)))) b!837779))

(assert (= (and b!837638 ((_ is Union!2097) (reg!2426 (reg!2426 r!24850)))) b!837780))

(declare-fun e!550716 () Bool)

(assert (=> b!837612 (= tp!262745 e!550716)))

(declare-fun b!837784 () Bool)

(declare-fun tp!262851 () Bool)

(declare-fun tp!262849 () Bool)

(assert (=> b!837784 (= e!550716 (and tp!262851 tp!262849))))

(declare-fun b!837782 () Bool)

(declare-fun tp!262848 () Bool)

(declare-fun tp!262847 () Bool)

(assert (=> b!837782 (= e!550716 (and tp!262848 tp!262847))))

(declare-fun b!837781 () Bool)

(assert (=> b!837781 (= e!550716 tp_is_empty!3917)))

(declare-fun b!837783 () Bool)

(declare-fun tp!262850 () Bool)

(assert (=> b!837783 (= e!550716 tp!262850)))

(assert (= (and b!837612 ((_ is ElementMatch!2097) (regOne!4706 (regOne!4706 r!24850)))) b!837781))

(assert (= (and b!837612 ((_ is Concat!3828) (regOne!4706 (regOne!4706 r!24850)))) b!837782))

(assert (= (and b!837612 ((_ is Star!2097) (regOne!4706 (regOne!4706 r!24850)))) b!837783))

(assert (= (and b!837612 ((_ is Union!2097) (regOne!4706 (regOne!4706 r!24850)))) b!837784))

(declare-fun e!550717 () Bool)

(assert (=> b!837612 (= tp!262744 e!550717)))

(declare-fun b!837788 () Bool)

(declare-fun tp!262856 () Bool)

(declare-fun tp!262854 () Bool)

(assert (=> b!837788 (= e!550717 (and tp!262856 tp!262854))))

(declare-fun b!837786 () Bool)

(declare-fun tp!262853 () Bool)

(declare-fun tp!262852 () Bool)

(assert (=> b!837786 (= e!550717 (and tp!262853 tp!262852))))

(declare-fun b!837785 () Bool)

(assert (=> b!837785 (= e!550717 tp_is_empty!3917)))

(declare-fun b!837787 () Bool)

(declare-fun tp!262855 () Bool)

(assert (=> b!837787 (= e!550717 tp!262855)))

(assert (= (and b!837612 ((_ is ElementMatch!2097) (regTwo!4706 (regOne!4706 r!24850)))) b!837785))

(assert (= (and b!837612 ((_ is Concat!3828) (regTwo!4706 (regOne!4706 r!24850)))) b!837786))

(assert (= (and b!837612 ((_ is Star!2097) (regTwo!4706 (regOne!4706 r!24850)))) b!837787))

(assert (= (and b!837612 ((_ is Union!2097) (regTwo!4706 (regOne!4706 r!24850)))) b!837788))

(declare-fun e!550718 () Bool)

(assert (=> b!837637 (= tp!262773 e!550718)))

(declare-fun b!837792 () Bool)

(declare-fun tp!262861 () Bool)

(declare-fun tp!262859 () Bool)

(assert (=> b!837792 (= e!550718 (and tp!262861 tp!262859))))

(declare-fun b!837790 () Bool)

(declare-fun tp!262858 () Bool)

(declare-fun tp!262857 () Bool)

(assert (=> b!837790 (= e!550718 (and tp!262858 tp!262857))))

(declare-fun b!837789 () Bool)

(assert (=> b!837789 (= e!550718 tp_is_empty!3917)))

(declare-fun b!837791 () Bool)

(declare-fun tp!262860 () Bool)

(assert (=> b!837791 (= e!550718 tp!262860)))

(assert (= (and b!837637 ((_ is ElementMatch!2097) (regOne!4706 (reg!2426 r!24850)))) b!837789))

(assert (= (and b!837637 ((_ is Concat!3828) (regOne!4706 (reg!2426 r!24850)))) b!837790))

(assert (= (and b!837637 ((_ is Star!2097) (regOne!4706 (reg!2426 r!24850)))) b!837791))

(assert (= (and b!837637 ((_ is Union!2097) (regOne!4706 (reg!2426 r!24850)))) b!837792))

(declare-fun e!550719 () Bool)

(assert (=> b!837637 (= tp!262772 e!550719)))

(declare-fun b!837796 () Bool)

(declare-fun tp!262866 () Bool)

(declare-fun tp!262864 () Bool)

(assert (=> b!837796 (= e!550719 (and tp!262866 tp!262864))))

(declare-fun b!837794 () Bool)

(declare-fun tp!262863 () Bool)

(declare-fun tp!262862 () Bool)

(assert (=> b!837794 (= e!550719 (and tp!262863 tp!262862))))

(declare-fun b!837793 () Bool)

(assert (=> b!837793 (= e!550719 tp_is_empty!3917)))

(declare-fun b!837795 () Bool)

(declare-fun tp!262865 () Bool)

(assert (=> b!837795 (= e!550719 tp!262865)))

(assert (= (and b!837637 ((_ is ElementMatch!2097) (regTwo!4706 (reg!2426 r!24850)))) b!837793))

(assert (= (and b!837637 ((_ is Concat!3828) (regTwo!4706 (reg!2426 r!24850)))) b!837794))

(assert (= (and b!837637 ((_ is Star!2097) (regTwo!4706 (reg!2426 r!24850)))) b!837795))

(assert (= (and b!837637 ((_ is Union!2097) (regTwo!4706 (reg!2426 r!24850)))) b!837796))

(declare-fun e!550720 () Bool)

(assert (=> b!837639 (= tp!262776 e!550720)))

(declare-fun b!837800 () Bool)

(declare-fun tp!262871 () Bool)

(declare-fun tp!262869 () Bool)

(assert (=> b!837800 (= e!550720 (and tp!262871 tp!262869))))

(declare-fun b!837798 () Bool)

(declare-fun tp!262868 () Bool)

(declare-fun tp!262867 () Bool)

(assert (=> b!837798 (= e!550720 (and tp!262868 tp!262867))))

(declare-fun b!837797 () Bool)

(assert (=> b!837797 (= e!550720 tp_is_empty!3917)))

(declare-fun b!837799 () Bool)

(declare-fun tp!262870 () Bool)

(assert (=> b!837799 (= e!550720 tp!262870)))

(assert (= (and b!837639 ((_ is ElementMatch!2097) (regOne!4707 (reg!2426 r!24850)))) b!837797))

(assert (= (and b!837639 ((_ is Concat!3828) (regOne!4707 (reg!2426 r!24850)))) b!837798))

(assert (= (and b!837639 ((_ is Star!2097) (regOne!4707 (reg!2426 r!24850)))) b!837799))

(assert (= (and b!837639 ((_ is Union!2097) (regOne!4707 (reg!2426 r!24850)))) b!837800))

(declare-fun e!550721 () Bool)

(assert (=> b!837639 (= tp!262774 e!550721)))

(declare-fun b!837804 () Bool)

(declare-fun tp!262876 () Bool)

(declare-fun tp!262874 () Bool)

(assert (=> b!837804 (= e!550721 (and tp!262876 tp!262874))))

(declare-fun b!837802 () Bool)

(declare-fun tp!262873 () Bool)

(declare-fun tp!262872 () Bool)

(assert (=> b!837802 (= e!550721 (and tp!262873 tp!262872))))

(declare-fun b!837801 () Bool)

(assert (=> b!837801 (= e!550721 tp_is_empty!3917)))

(declare-fun b!837803 () Bool)

(declare-fun tp!262875 () Bool)

(assert (=> b!837803 (= e!550721 tp!262875)))

(assert (= (and b!837639 ((_ is ElementMatch!2097) (regTwo!4707 (reg!2426 r!24850)))) b!837801))

(assert (= (and b!837639 ((_ is Concat!3828) (regTwo!4707 (reg!2426 r!24850)))) b!837802))

(assert (= (and b!837639 ((_ is Star!2097) (regTwo!4707 (reg!2426 r!24850)))) b!837803))

(assert (= (and b!837639 ((_ is Union!2097) (regTwo!4707 (reg!2426 r!24850)))) b!837804))

(declare-fun b!837805 () Bool)

(declare-fun e!550722 () Bool)

(declare-fun tp!262877 () Bool)

(assert (=> b!837805 (= e!550722 (and tp_is_empty!3917 tp!262877))))

(assert (=> b!837635 (= tp!262771 e!550722)))

(assert (= (and b!837635 ((_ is Cons!8907) (t!93215 (t!93215 s!14218)))) b!837805))

(declare-fun e!550723 () Bool)

(assert (=> b!837613 (= tp!262747 e!550723)))

(declare-fun b!837809 () Bool)

(declare-fun tp!262882 () Bool)

(declare-fun tp!262880 () Bool)

(assert (=> b!837809 (= e!550723 (and tp!262882 tp!262880))))

(declare-fun b!837807 () Bool)

(declare-fun tp!262879 () Bool)

(declare-fun tp!262878 () Bool)

(assert (=> b!837807 (= e!550723 (and tp!262879 tp!262878))))

(declare-fun b!837806 () Bool)

(assert (=> b!837806 (= e!550723 tp_is_empty!3917)))

(declare-fun b!837808 () Bool)

(declare-fun tp!262881 () Bool)

(assert (=> b!837808 (= e!550723 tp!262881)))

(assert (= (and b!837613 ((_ is ElementMatch!2097) (reg!2426 (regOne!4706 r!24850)))) b!837806))

(assert (= (and b!837613 ((_ is Concat!3828) (reg!2426 (regOne!4706 r!24850)))) b!837807))

(assert (= (and b!837613 ((_ is Star!2097) (reg!2426 (regOne!4706 r!24850)))) b!837808))

(assert (= (and b!837613 ((_ is Union!2097) (reg!2426 (regOne!4706 r!24850)))) b!837809))

(declare-fun e!550724 () Bool)

(assert (=> b!837614 (= tp!262749 e!550724)))

(declare-fun b!837813 () Bool)

(declare-fun tp!262887 () Bool)

(declare-fun tp!262885 () Bool)

(assert (=> b!837813 (= e!550724 (and tp!262887 tp!262885))))

(declare-fun b!837811 () Bool)

(declare-fun tp!262884 () Bool)

(declare-fun tp!262883 () Bool)

(assert (=> b!837811 (= e!550724 (and tp!262884 tp!262883))))

(declare-fun b!837810 () Bool)

(assert (=> b!837810 (= e!550724 tp_is_empty!3917)))

(declare-fun b!837812 () Bool)

(declare-fun tp!262886 () Bool)

(assert (=> b!837812 (= e!550724 tp!262886)))

(assert (= (and b!837614 ((_ is ElementMatch!2097) (regOne!4707 (regOne!4706 r!24850)))) b!837810))

(assert (= (and b!837614 ((_ is Concat!3828) (regOne!4707 (regOne!4706 r!24850)))) b!837811))

(assert (= (and b!837614 ((_ is Star!2097) (regOne!4707 (regOne!4706 r!24850)))) b!837812))

(assert (= (and b!837614 ((_ is Union!2097) (regOne!4707 (regOne!4706 r!24850)))) b!837813))

(declare-fun e!550725 () Bool)

(assert (=> b!837614 (= tp!262746 e!550725)))

(declare-fun b!837817 () Bool)

(declare-fun tp!262892 () Bool)

(declare-fun tp!262890 () Bool)

(assert (=> b!837817 (= e!550725 (and tp!262892 tp!262890))))

(declare-fun b!837815 () Bool)

(declare-fun tp!262889 () Bool)

(declare-fun tp!262888 () Bool)

(assert (=> b!837815 (= e!550725 (and tp!262889 tp!262888))))

(declare-fun b!837814 () Bool)

(assert (=> b!837814 (= e!550725 tp_is_empty!3917)))

(declare-fun b!837816 () Bool)

(declare-fun tp!262891 () Bool)

(assert (=> b!837816 (= e!550725 tp!262891)))

(assert (= (and b!837614 ((_ is ElementMatch!2097) (regTwo!4707 (regOne!4706 r!24850)))) b!837814))

(assert (= (and b!837614 ((_ is Concat!3828) (regTwo!4707 (regOne!4706 r!24850)))) b!837815))

(assert (= (and b!837614 ((_ is Star!2097) (regTwo!4707 (regOne!4706 r!24850)))) b!837816))

(assert (= (and b!837614 ((_ is Union!2097) (regTwo!4707 (regOne!4706 r!24850)))) b!837817))

(declare-fun e!550726 () Bool)

(assert (=> b!837628 (= tp!262765 e!550726)))

(declare-fun b!837821 () Bool)

(declare-fun tp!262897 () Bool)

(declare-fun tp!262895 () Bool)

(assert (=> b!837821 (= e!550726 (and tp!262897 tp!262895))))

(declare-fun b!837819 () Bool)

(declare-fun tp!262894 () Bool)

(declare-fun tp!262893 () Bool)

(assert (=> b!837819 (= e!550726 (and tp!262894 tp!262893))))

(declare-fun b!837818 () Bool)

(assert (=> b!837818 (= e!550726 tp_is_empty!3917)))

(declare-fun b!837820 () Bool)

(declare-fun tp!262896 () Bool)

(assert (=> b!837820 (= e!550726 tp!262896)))

(assert (= (and b!837628 ((_ is ElementMatch!2097) (regOne!4706 (regTwo!4707 r!24850)))) b!837818))

(assert (= (and b!837628 ((_ is Concat!3828) (regOne!4706 (regTwo!4707 r!24850)))) b!837819))

(assert (= (and b!837628 ((_ is Star!2097) (regOne!4706 (regTwo!4707 r!24850)))) b!837820))

(assert (= (and b!837628 ((_ is Union!2097) (regOne!4706 (regTwo!4707 r!24850)))) b!837821))

(declare-fun e!550727 () Bool)

(assert (=> b!837628 (= tp!262764 e!550727)))

(declare-fun b!837825 () Bool)

(declare-fun tp!262902 () Bool)

(declare-fun tp!262900 () Bool)

(assert (=> b!837825 (= e!550727 (and tp!262902 tp!262900))))

(declare-fun b!837823 () Bool)

(declare-fun tp!262899 () Bool)

(declare-fun tp!262898 () Bool)

(assert (=> b!837823 (= e!550727 (and tp!262899 tp!262898))))

(declare-fun b!837822 () Bool)

(assert (=> b!837822 (= e!550727 tp_is_empty!3917)))

(declare-fun b!837824 () Bool)

(declare-fun tp!262901 () Bool)

(assert (=> b!837824 (= e!550727 tp!262901)))

(assert (= (and b!837628 ((_ is ElementMatch!2097) (regTwo!4706 (regTwo!4707 r!24850)))) b!837822))

(assert (= (and b!837628 ((_ is Concat!3828) (regTwo!4706 (regTwo!4707 r!24850)))) b!837823))

(assert (= (and b!837628 ((_ is Star!2097) (regTwo!4706 (regTwo!4707 r!24850)))) b!837824))

(assert (= (and b!837628 ((_ is Union!2097) (regTwo!4706 (regTwo!4707 r!24850)))) b!837825))

(check-sat (not b!837707) (not b!837754) (not b!837796) (not b!837764) (not b!837728) (not b!837729) (not b!837817) (not b!837726) (not b!837732) (not bm!50431) (not b!837788) (not b!837774) (not b!837790) (not b!837669) (not b!837795) (not b!837820) (not b!837809) (not b!837776) (not d!261216) (not b!837805) (not b!837730) (not bm!50430) (not bm!50448) (not b!837724) (not b!837775) (not b!837821) tp_is_empty!3917 (not b!837661) (not b!837799) (not b!837718) (not b!837816) (not b!837759) (not b!837784) (not b!837802) (not b!837798) (not b!837792) (not b!837714) (not b!837825) (not b!837720) (not b!837791) (not b!837725) (not b!837722) (not b!837800) (not b!837665) (not b!837778) (not b!837750) (not b!837815) (not b!837824) (not bm!50447) (not b!837667) (not bm!50433) (not b!837807) (not b!837733) (not b!837717) (not b!837756) (not d!261220) (not b!837734) (not b!837755) (not b!837812) (not b!837770) (not d!261218) (not b!837786) (not b!837647) (not b!837767) (not b!837758) (not b!837823) (not bm!50435) (not b!837760) (not b!837779) (not b!837660) (not b!837751) (not b!837787) (not b!837811) (not b!837768) (not b!837819) (not b!837766) (not bm!50434) (not b!837783) (not b!837772) (not d!261222) (not b!837808) (not b!837813) (not b!837794) (not b!837752) (not b!837780) (not b!837656) (not b!837713) (not b!837762) (not b!837763) (not b!837659) (not b!837804) (not b!837716) (not b!837712) (not b!837771) (not b!837721) (not b!837803) (not b!837782))
(check-sat)

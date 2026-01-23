; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!74250 () Bool)

(assert start!74250)

(declare-fun b!835588 () Bool)

(declare-fun e!549652 () Bool)

(declare-datatypes ((C!4752 0))(
  ( (C!4753 (val!2624 Int)) )
))
(declare-datatypes ((Regex!2091 0))(
  ( (ElementMatch!2091 (c!136390 C!4752)) (Concat!3822 (regOne!4694 Regex!2091) (regTwo!4694 Regex!2091)) (EmptyExpr!2091) (Star!2091 (reg!2420 Regex!2091)) (EmptyLang!2091) (Union!2091 (regOne!4695 Regex!2091) (regTwo!4695 Regex!2091)) )
))
(declare-fun r!27177 () Regex!2091)

(declare-fun RegexPrimitiveSize!98 (Regex!2091) Int)

(assert (=> b!835588 (= e!549652 (>= (RegexPrimitiveSize!98 (regOne!4694 r!27177)) (RegexPrimitiveSize!98 r!27177)))))

(declare-fun b!835589 () Bool)

(declare-fun e!549653 () Bool)

(declare-fun tp!261960 () Bool)

(declare-fun tp!261961 () Bool)

(assert (=> b!835589 (= e!549653 (and tp!261960 tp!261961))))

(declare-fun b!835590 () Bool)

(declare-fun res!382536 () Bool)

(assert (=> b!835590 (=> (not res!382536) (not e!549652))))

(declare-fun c!13916 () C!4752)

(declare-datatypes ((List!8917 0))(
  ( (Nil!8901) (Cons!8901 (h!14302 C!4752) (t!93209 List!8917)) )
))
(declare-fun contains!1682 (List!8917 C!4752) Bool)

(declare-fun firstChars!62 (Regex!2091) List!8917)

(assert (=> b!835590 (= res!382536 (contains!1682 (firstChars!62 (regOne!4694 r!27177)) c!13916))))

(declare-fun b!835591 () Bool)

(declare-fun res!382541 () Bool)

(assert (=> b!835591 (=> (not res!382541) (not e!549652))))

(declare-fun nullable!542 (Regex!2091) Bool)

(assert (=> b!835591 (= res!382541 (not (nullable!542 (regOne!4694 r!27177))))))

(declare-fun b!835592 () Bool)

(declare-fun tp!261962 () Bool)

(assert (=> b!835592 (= e!549653 tp!261962)))

(declare-fun res!382540 () Bool)

(assert (=> start!74250 (=> (not res!382540) (not e!549652))))

(declare-fun validRegex!644 (Regex!2091) Bool)

(assert (=> start!74250 (= res!382540 (validRegex!644 r!27177))))

(assert (=> start!74250 e!549652))

(assert (=> start!74250 e!549653))

(declare-fun tp_is_empty!3905 () Bool)

(assert (=> start!74250 tp_is_empty!3905))

(declare-fun b!835593 () Bool)

(assert (=> b!835593 (= e!549653 tp_is_empty!3905)))

(declare-fun b!835594 () Bool)

(declare-fun res!382537 () Bool)

(assert (=> b!835594 (=> (not res!382537) (not e!549652))))

(assert (=> b!835594 (= res!382537 (contains!1682 (firstChars!62 r!27177) c!13916))))

(declare-fun b!835595 () Bool)

(declare-fun tp!261964 () Bool)

(declare-fun tp!261963 () Bool)

(assert (=> b!835595 (= e!549653 (and tp!261964 tp!261963))))

(declare-fun b!835596 () Bool)

(declare-fun res!382538 () Bool)

(assert (=> b!835596 (=> (not res!382538) (not e!549652))))

(assert (=> b!835596 (= res!382538 (validRegex!644 (regOne!4694 r!27177)))))

(declare-fun b!835597 () Bool)

(declare-fun res!382539 () Bool)

(assert (=> b!835597 (=> (not res!382539) (not e!549652))))

(get-info :version)

(assert (=> b!835597 (= res!382539 (and (not ((_ is EmptyExpr!2091) r!27177)) (not ((_ is EmptyLang!2091) r!27177)) (not ((_ is ElementMatch!2091) r!27177)) (not ((_ is Star!2091) r!27177)) (not ((_ is Union!2091) r!27177))))))

(assert (= (and start!74250 res!382540) b!835594))

(assert (= (and b!835594 res!382537) b!835597))

(assert (= (and b!835597 res!382539) b!835591))

(assert (= (and b!835591 res!382541) b!835596))

(assert (= (and b!835596 res!382538) b!835590))

(assert (= (and b!835590 res!382536) b!835588))

(assert (= (and start!74250 ((_ is ElementMatch!2091) r!27177)) b!835593))

(assert (= (and start!74250 ((_ is Concat!3822) r!27177)) b!835595))

(assert (= (and start!74250 ((_ is Star!2091) r!27177)) b!835592))

(assert (= (and start!74250 ((_ is Union!2091) r!27177)) b!835589))

(declare-fun m!1070099 () Bool)

(assert (=> b!835594 m!1070099))

(assert (=> b!835594 m!1070099))

(declare-fun m!1070101 () Bool)

(assert (=> b!835594 m!1070101))

(declare-fun m!1070103 () Bool)

(assert (=> b!835590 m!1070103))

(assert (=> b!835590 m!1070103))

(declare-fun m!1070105 () Bool)

(assert (=> b!835590 m!1070105))

(declare-fun m!1070107 () Bool)

(assert (=> b!835588 m!1070107))

(declare-fun m!1070109 () Bool)

(assert (=> b!835588 m!1070109))

(declare-fun m!1070111 () Bool)

(assert (=> start!74250 m!1070111))

(declare-fun m!1070113 () Bool)

(assert (=> b!835596 m!1070113))

(declare-fun m!1070115 () Bool)

(assert (=> b!835591 m!1070115))

(check-sat (not b!835590) (not b!835596) (not b!835595) (not b!835594) (not b!835589) (not b!835591) (not start!74250) (not b!835592) (not b!835588) tp_is_empty!3905)
(check-sat)
(get-model)

(declare-fun d!260901 () Bool)

(declare-fun lt!317910 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1329 (List!8917) (InoxSet C!4752))

(assert (=> d!260901 (= lt!317910 (select (content!1329 (firstChars!62 (regOne!4694 r!27177))) c!13916))))

(declare-fun e!549658 () Bool)

(assert (=> d!260901 (= lt!317910 e!549658)))

(declare-fun res!382547 () Bool)

(assert (=> d!260901 (=> (not res!382547) (not e!549658))))

(assert (=> d!260901 (= res!382547 ((_ is Cons!8901) (firstChars!62 (regOne!4694 r!27177))))))

(assert (=> d!260901 (= (contains!1682 (firstChars!62 (regOne!4694 r!27177)) c!13916) lt!317910)))

(declare-fun b!835602 () Bool)

(declare-fun e!549659 () Bool)

(assert (=> b!835602 (= e!549658 e!549659)))

(declare-fun res!382546 () Bool)

(assert (=> b!835602 (=> res!382546 e!549659)))

(assert (=> b!835602 (= res!382546 (= (h!14302 (firstChars!62 (regOne!4694 r!27177))) c!13916))))

(declare-fun b!835603 () Bool)

(assert (=> b!835603 (= e!549659 (contains!1682 (t!93209 (firstChars!62 (regOne!4694 r!27177))) c!13916))))

(assert (= (and d!260901 res!382547) b!835602))

(assert (= (and b!835602 (not res!382546)) b!835603))

(assert (=> d!260901 m!1070103))

(declare-fun m!1070117 () Bool)

(assert (=> d!260901 m!1070117))

(declare-fun m!1070119 () Bool)

(assert (=> d!260901 m!1070119))

(declare-fun m!1070121 () Bool)

(assert (=> b!835603 m!1070121))

(assert (=> b!835590 d!260901))

(declare-fun b!835651 () Bool)

(declare-fun e!549694 () List!8917)

(assert (=> b!835651 (= e!549694 (Cons!8901 (c!136390 (regOne!4694 r!27177)) Nil!8901))))

(declare-fun b!835652 () Bool)

(declare-fun e!549695 () List!8917)

(declare-fun call!50039 () List!8917)

(assert (=> b!835652 (= e!549695 call!50039)))

(declare-fun call!50040 () List!8917)

(declare-fun call!50041 () List!8917)

(declare-fun bm!50032 () Bool)

(declare-fun c!136411 () Bool)

(declare-fun call!50038 () List!8917)

(declare-fun ++!2317 (List!8917 List!8917) List!8917)

(assert (=> bm!50032 (= call!50039 (++!2317 (ite c!136411 call!50041 call!50040) (ite c!136411 call!50038 call!50041)))))

(declare-fun bm!50033 () Bool)

(assert (=> bm!50033 (= call!50040 call!50038)))

(declare-fun b!835653 () Bool)

(declare-fun e!549693 () List!8917)

(assert (=> b!835653 (= e!549693 e!549695)))

(assert (=> b!835653 (= c!136411 ((_ is Union!2091) (regOne!4694 r!27177)))))

(declare-fun c!136409 () Bool)

(declare-fun bm!50034 () Bool)

(declare-fun call!50037 () List!8917)

(assert (=> bm!50034 (= call!50037 (firstChars!62 (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))))))

(declare-fun bm!50035 () Bool)

(assert (=> bm!50035 (= call!50038 call!50037)))

(declare-fun d!260905 () Bool)

(declare-fun c!136410 () Bool)

(assert (=> d!260905 (= c!136410 (or ((_ is EmptyExpr!2091) (regOne!4694 r!27177)) ((_ is EmptyLang!2091) (regOne!4694 r!27177))))))

(declare-fun e!549692 () List!8917)

(assert (=> d!260905 (= (firstChars!62 (regOne!4694 r!27177)) e!549692)))

(declare-fun b!835654 () Bool)

(declare-fun e!549691 () List!8917)

(assert (=> b!835654 (= e!549691 call!50039)))

(declare-fun b!835655 () Bool)

(assert (=> b!835655 (= e!549692 e!549694)))

(declare-fun c!136408 () Bool)

(assert (=> b!835655 (= c!136408 ((_ is ElementMatch!2091) (regOne!4694 r!27177)))))

(declare-fun b!835656 () Bool)

(assert (=> b!835656 (= e!549692 Nil!8901)))

(declare-fun bm!50036 () Bool)

(assert (=> bm!50036 (= call!50041 (firstChars!62 (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))))))

(declare-fun b!835657 () Bool)

(assert (=> b!835657 (= c!136409 ((_ is Star!2091) (regOne!4694 r!27177)))))

(assert (=> b!835657 (= e!549694 e!549693)))

(declare-fun b!835658 () Bool)

(assert (=> b!835658 (= e!549691 call!50040)))

(declare-fun b!835659 () Bool)

(declare-fun c!136407 () Bool)

(assert (=> b!835659 (= c!136407 (nullable!542 (regOne!4694 (regOne!4694 r!27177))))))

(assert (=> b!835659 (= e!549695 e!549691)))

(declare-fun b!835660 () Bool)

(assert (=> b!835660 (= e!549693 call!50037)))

(assert (= (and d!260905 c!136410) b!835656))

(assert (= (and d!260905 (not c!136410)) b!835655))

(assert (= (and b!835655 c!136408) b!835651))

(assert (= (and b!835655 (not c!136408)) b!835657))

(assert (= (and b!835657 c!136409) b!835660))

(assert (= (and b!835657 (not c!136409)) b!835653))

(assert (= (and b!835653 c!136411) b!835652))

(assert (= (and b!835653 (not c!136411)) b!835659))

(assert (= (and b!835659 c!136407) b!835654))

(assert (= (and b!835659 (not c!136407)) b!835658))

(assert (= (or b!835654 b!835658) bm!50033))

(assert (= (or b!835652 bm!50033) bm!50035))

(assert (= (or b!835652 b!835654) bm!50036))

(assert (= (or b!835652 b!835654) bm!50032))

(assert (= (or b!835660 bm!50035) bm!50034))

(declare-fun m!1070131 () Bool)

(assert (=> bm!50032 m!1070131))

(declare-fun m!1070133 () Bool)

(assert (=> bm!50034 m!1070133))

(declare-fun m!1070135 () Bool)

(assert (=> bm!50036 m!1070135))

(declare-fun m!1070137 () Bool)

(assert (=> b!835659 m!1070137))

(assert (=> b!835590 d!260905))

(declare-fun b!835705 () Bool)

(declare-fun e!549730 () Bool)

(declare-fun e!549727 () Bool)

(assert (=> b!835705 (= e!549730 e!549727)))

(declare-fun c!136426 () Bool)

(assert (=> b!835705 (= c!136426 ((_ is Star!2091) r!27177))))

(declare-fun b!835706 () Bool)

(declare-fun res!382579 () Bool)

(declare-fun e!549732 () Bool)

(assert (=> b!835706 (=> (not res!382579) (not e!549732))))

(declare-fun call!50059 () Bool)

(assert (=> b!835706 (= res!382579 call!50059)))

(declare-fun e!549729 () Bool)

(assert (=> b!835706 (= e!549729 e!549732)))

(declare-fun b!835707 () Bool)

(declare-fun res!382583 () Bool)

(declare-fun e!549728 () Bool)

(assert (=> b!835707 (=> res!382583 e!549728)))

(assert (=> b!835707 (= res!382583 (not ((_ is Concat!3822) r!27177)))))

(assert (=> b!835707 (= e!549729 e!549728)))

(declare-fun b!835708 () Bool)

(declare-fun call!50058 () Bool)

(assert (=> b!835708 (= e!549732 call!50058)))

(declare-fun b!835709 () Bool)

(assert (=> b!835709 (= e!549727 e!549729)))

(declare-fun c!136427 () Bool)

(assert (=> b!835709 (= c!136427 ((_ is Union!2091) r!27177))))

(declare-fun d!260911 () Bool)

(declare-fun res!382582 () Bool)

(assert (=> d!260911 (=> res!382582 e!549730)))

(assert (=> d!260911 (= res!382582 ((_ is ElementMatch!2091) r!27177))))

(assert (=> d!260911 (= (validRegex!644 r!27177) e!549730)))

(declare-fun b!835710 () Bool)

(declare-fun e!549731 () Bool)

(assert (=> b!835710 (= e!549727 e!549731)))

(declare-fun res!382580 () Bool)

(assert (=> b!835710 (= res!382580 (not (nullable!542 (reg!2420 r!27177))))))

(assert (=> b!835710 (=> (not res!382580) (not e!549731))))

(declare-fun b!835711 () Bool)

(declare-fun e!549726 () Bool)

(assert (=> b!835711 (= e!549728 e!549726)))

(declare-fun res!382581 () Bool)

(assert (=> b!835711 (=> (not res!382581) (not e!549726))))

(assert (=> b!835711 (= res!382581 call!50058)))

(declare-fun bm!50053 () Bool)

(assert (=> bm!50053 (= call!50058 (validRegex!644 (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177))))))

(declare-fun b!835712 () Bool)

(declare-fun call!50060 () Bool)

(assert (=> b!835712 (= e!549731 call!50060)))

(declare-fun bm!50054 () Bool)

(assert (=> bm!50054 (= call!50059 call!50060)))

(declare-fun bm!50055 () Bool)

(assert (=> bm!50055 (= call!50060 (validRegex!644 (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177)))))))

(declare-fun b!835713 () Bool)

(assert (=> b!835713 (= e!549726 call!50059)))

(assert (= (and d!260911 (not res!382582)) b!835705))

(assert (= (and b!835705 c!136426) b!835710))

(assert (= (and b!835705 (not c!136426)) b!835709))

(assert (= (and b!835710 res!382580) b!835712))

(assert (= (and b!835709 c!136427) b!835706))

(assert (= (and b!835709 (not c!136427)) b!835707))

(assert (= (and b!835706 res!382579) b!835708))

(assert (= (and b!835707 (not res!382583)) b!835711))

(assert (= (and b!835711 res!382581) b!835713))

(assert (= (or b!835706 b!835713) bm!50054))

(assert (= (or b!835708 b!835711) bm!50053))

(assert (= (or b!835712 bm!50054) bm!50055))

(declare-fun m!1070145 () Bool)

(assert (=> b!835710 m!1070145))

(declare-fun m!1070147 () Bool)

(assert (=> bm!50053 m!1070147))

(declare-fun m!1070149 () Bool)

(assert (=> bm!50055 m!1070149))

(assert (=> start!74250 d!260911))

(declare-fun d!260915 () Bool)

(declare-fun nullableFct!180 (Regex!2091) Bool)

(assert (=> d!260915 (= (nullable!542 (regOne!4694 r!27177)) (nullableFct!180 (regOne!4694 r!27177)))))

(declare-fun bs!229721 () Bool)

(assert (= bs!229721 d!260915))

(declare-fun m!1070151 () Bool)

(assert (=> bs!229721 m!1070151))

(assert (=> b!835591 d!260915))

(declare-fun b!835714 () Bool)

(declare-fun e!549737 () Bool)

(declare-fun e!549734 () Bool)

(assert (=> b!835714 (= e!549737 e!549734)))

(declare-fun c!136428 () Bool)

(assert (=> b!835714 (= c!136428 ((_ is Star!2091) (regOne!4694 r!27177)))))

(declare-fun b!835715 () Bool)

(declare-fun res!382584 () Bool)

(declare-fun e!549739 () Bool)

(assert (=> b!835715 (=> (not res!382584) (not e!549739))))

(declare-fun call!50062 () Bool)

(assert (=> b!835715 (= res!382584 call!50062)))

(declare-fun e!549736 () Bool)

(assert (=> b!835715 (= e!549736 e!549739)))

(declare-fun b!835716 () Bool)

(declare-fun res!382588 () Bool)

(declare-fun e!549735 () Bool)

(assert (=> b!835716 (=> res!382588 e!549735)))

(assert (=> b!835716 (= res!382588 (not ((_ is Concat!3822) (regOne!4694 r!27177))))))

(assert (=> b!835716 (= e!549736 e!549735)))

(declare-fun b!835717 () Bool)

(declare-fun call!50061 () Bool)

(assert (=> b!835717 (= e!549739 call!50061)))

(declare-fun b!835718 () Bool)

(assert (=> b!835718 (= e!549734 e!549736)))

(declare-fun c!136429 () Bool)

(assert (=> b!835718 (= c!136429 ((_ is Union!2091) (regOne!4694 r!27177)))))

(declare-fun d!260917 () Bool)

(declare-fun res!382587 () Bool)

(assert (=> d!260917 (=> res!382587 e!549737)))

(assert (=> d!260917 (= res!382587 ((_ is ElementMatch!2091) (regOne!4694 r!27177)))))

(assert (=> d!260917 (= (validRegex!644 (regOne!4694 r!27177)) e!549737)))

(declare-fun b!835719 () Bool)

(declare-fun e!549738 () Bool)

(assert (=> b!835719 (= e!549734 e!549738)))

(declare-fun res!382585 () Bool)

(assert (=> b!835719 (= res!382585 (not (nullable!542 (reg!2420 (regOne!4694 r!27177)))))))

(assert (=> b!835719 (=> (not res!382585) (not e!549738))))

(declare-fun b!835720 () Bool)

(declare-fun e!549733 () Bool)

(assert (=> b!835720 (= e!549735 e!549733)))

(declare-fun res!382586 () Bool)

(assert (=> b!835720 (=> (not res!382586) (not e!549733))))

(assert (=> b!835720 (= res!382586 call!50061)))

(declare-fun bm!50056 () Bool)

(assert (=> bm!50056 (= call!50061 (validRegex!644 (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))))))

(declare-fun b!835721 () Bool)

(declare-fun call!50063 () Bool)

(assert (=> b!835721 (= e!549738 call!50063)))

(declare-fun bm!50057 () Bool)

(assert (=> bm!50057 (= call!50062 call!50063)))

(declare-fun bm!50058 () Bool)

(assert (=> bm!50058 (= call!50063 (validRegex!644 (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))))))

(declare-fun b!835722 () Bool)

(assert (=> b!835722 (= e!549733 call!50062)))

(assert (= (and d!260917 (not res!382587)) b!835714))

(assert (= (and b!835714 c!136428) b!835719))

(assert (= (and b!835714 (not c!136428)) b!835718))

(assert (= (and b!835719 res!382585) b!835721))

(assert (= (and b!835718 c!136429) b!835715))

(assert (= (and b!835718 (not c!136429)) b!835716))

(assert (= (and b!835715 res!382584) b!835717))

(assert (= (and b!835716 (not res!382588)) b!835720))

(assert (= (and b!835720 res!382586) b!835722))

(assert (= (or b!835715 b!835722) bm!50057))

(assert (= (or b!835717 b!835720) bm!50056))

(assert (= (or b!835721 bm!50057) bm!50058))

(declare-fun m!1070153 () Bool)

(assert (=> b!835719 m!1070153))

(declare-fun m!1070155 () Bool)

(assert (=> bm!50056 m!1070155))

(declare-fun m!1070157 () Bool)

(assert (=> bm!50058 m!1070157))

(assert (=> b!835596 d!260917))

(declare-fun c!136465 () Bool)

(declare-fun bm!50080 () Bool)

(declare-fun call!50085 () Int)

(declare-fun c!136466 () Bool)

(assert (=> bm!50080 (= call!50085 (RegexPrimitiveSize!98 (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))))))

(declare-fun b!835794 () Bool)

(declare-fun e!549779 () Int)

(declare-fun call!50087 () Int)

(assert (=> b!835794 (= e!549779 (+ 1 call!50087))))

(declare-fun bm!50081 () Bool)

(declare-fun call!50086 () Int)

(assert (=> bm!50081 (= call!50086 (RegexPrimitiveSize!98 (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))))))

(declare-fun b!835795 () Bool)

(declare-fun c!136463 () Bool)

(assert (=> b!835795 (= c!136463 ((_ is EmptyExpr!2091) (regOne!4694 r!27177)))))

(declare-fun e!549783 () Int)

(declare-fun e!549780 () Int)

(assert (=> b!835795 (= e!549783 e!549780)))

(declare-fun b!835796 () Bool)

(declare-fun e!549782 () Int)

(assert (=> b!835796 (= e!549782 0)))

(declare-fun b!835797 () Bool)

(declare-fun e!549781 () Int)

(assert (=> b!835797 (= e!549781 1)))

(declare-fun b!835798 () Bool)

(assert (=> b!835798 (= e!549782 (+ 1 call!50087 call!50086))))

(declare-fun d!260919 () Bool)

(declare-fun lt!317919 () Int)

(assert (=> d!260919 (>= lt!317919 0)))

(assert (=> d!260919 (= lt!317919 e!549781)))

(declare-fun c!136462 () Bool)

(assert (=> d!260919 (= c!136462 ((_ is ElementMatch!2091) (regOne!4694 r!27177)))))

(assert (=> d!260919 (= (RegexPrimitiveSize!98 (regOne!4694 r!27177)) lt!317919)))

(declare-fun b!835799 () Bool)

(assert (=> b!835799 (= e!549781 e!549783)))

(assert (=> b!835799 (= c!136465 ((_ is Concat!3822) (regOne!4694 r!27177)))))

(declare-fun b!835800 () Bool)

(assert (=> b!835800 (= e!549780 e!549779)))

(assert (=> b!835800 (= c!136466 ((_ is Star!2091) (regOne!4694 r!27177)))))

(declare-fun b!835801 () Bool)

(declare-fun c!136464 () Bool)

(assert (=> b!835801 (= c!136464 ((_ is EmptyLang!2091) (regOne!4694 r!27177)))))

(assert (=> b!835801 (= e!549779 e!549782)))

(declare-fun bm!50082 () Bool)

(assert (=> bm!50082 (= call!50087 call!50085)))

(declare-fun b!835802 () Bool)

(assert (=> b!835802 (= e!549783 (+ 1 call!50085 call!50086))))

(declare-fun b!835803 () Bool)

(assert (=> b!835803 (= e!549780 0)))

(assert (= (and d!260919 c!136462) b!835797))

(assert (= (and d!260919 (not c!136462)) b!835799))

(assert (= (and b!835799 c!136465) b!835802))

(assert (= (and b!835799 (not c!136465)) b!835795))

(assert (= (and b!835795 c!136463) b!835803))

(assert (= (and b!835795 (not c!136463)) b!835800))

(assert (= (and b!835800 c!136466) b!835794))

(assert (= (and b!835800 (not c!136466)) b!835801))

(assert (= (and b!835801 c!136464) b!835796))

(assert (= (and b!835801 (not c!136464)) b!835798))

(assert (= (or b!835794 b!835798) bm!50082))

(assert (= (or b!835802 bm!50082) bm!50080))

(assert (= (or b!835802 b!835798) bm!50081))

(declare-fun m!1070185 () Bool)

(assert (=> bm!50080 m!1070185))

(declare-fun m!1070187 () Bool)

(assert (=> bm!50081 m!1070187))

(assert (=> b!835588 d!260919))

(declare-fun c!136470 () Bool)

(declare-fun bm!50085 () Bool)

(declare-fun c!136471 () Bool)

(declare-fun call!50090 () Int)

(assert (=> bm!50085 (= call!50090 (RegexPrimitiveSize!98 (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))))))

(declare-fun b!835804 () Bool)

(declare-fun e!549784 () Int)

(declare-fun call!50094 () Int)

(assert (=> b!835804 (= e!549784 (+ 1 call!50094))))

(declare-fun bm!50086 () Bool)

(declare-fun call!50091 () Int)

(assert (=> bm!50086 (= call!50091 (RegexPrimitiveSize!98 (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))))))

(declare-fun b!835805 () Bool)

(declare-fun c!136468 () Bool)

(assert (=> b!835805 (= c!136468 ((_ is EmptyExpr!2091) r!27177))))

(declare-fun e!549788 () Int)

(declare-fun e!549785 () Int)

(assert (=> b!835805 (= e!549788 e!549785)))

(declare-fun b!835806 () Bool)

(declare-fun e!549787 () Int)

(assert (=> b!835806 (= e!549787 0)))

(declare-fun b!835807 () Bool)

(declare-fun e!549786 () Int)

(assert (=> b!835807 (= e!549786 1)))

(declare-fun b!835808 () Bool)

(assert (=> b!835808 (= e!549787 (+ 1 call!50094 call!50091))))

(declare-fun d!260929 () Bool)

(declare-fun lt!317920 () Int)

(assert (=> d!260929 (>= lt!317920 0)))

(assert (=> d!260929 (= lt!317920 e!549786)))

(declare-fun c!136467 () Bool)

(assert (=> d!260929 (= c!136467 ((_ is ElementMatch!2091) r!27177))))

(assert (=> d!260929 (= (RegexPrimitiveSize!98 r!27177) lt!317920)))

(declare-fun b!835809 () Bool)

(assert (=> b!835809 (= e!549786 e!549788)))

(assert (=> b!835809 (= c!136470 ((_ is Concat!3822) r!27177))))

(declare-fun b!835810 () Bool)

(assert (=> b!835810 (= e!549785 e!549784)))

(assert (=> b!835810 (= c!136471 ((_ is Star!2091) r!27177))))

(declare-fun b!835811 () Bool)

(declare-fun c!136469 () Bool)

(assert (=> b!835811 (= c!136469 ((_ is EmptyLang!2091) r!27177))))

(assert (=> b!835811 (= e!549784 e!549787)))

(declare-fun bm!50087 () Bool)

(assert (=> bm!50087 (= call!50094 call!50090)))

(declare-fun b!835812 () Bool)

(assert (=> b!835812 (= e!549788 (+ 1 call!50090 call!50091))))

(declare-fun b!835813 () Bool)

(assert (=> b!835813 (= e!549785 0)))

(assert (= (and d!260929 c!136467) b!835807))

(assert (= (and d!260929 (not c!136467)) b!835809))

(assert (= (and b!835809 c!136470) b!835812))

(assert (= (and b!835809 (not c!136470)) b!835805))

(assert (= (and b!835805 c!136468) b!835813))

(assert (= (and b!835805 (not c!136468)) b!835810))

(assert (= (and b!835810 c!136471) b!835804))

(assert (= (and b!835810 (not c!136471)) b!835811))

(assert (= (and b!835811 c!136469) b!835806))

(assert (= (and b!835811 (not c!136469)) b!835808))

(assert (= (or b!835804 b!835808) bm!50087))

(assert (= (or b!835812 bm!50087) bm!50085))

(assert (= (or b!835812 b!835808) bm!50086))

(declare-fun m!1070189 () Bool)

(assert (=> bm!50085 m!1070189))

(declare-fun m!1070191 () Bool)

(assert (=> bm!50086 m!1070191))

(assert (=> b!835588 d!260929))

(declare-fun d!260931 () Bool)

(declare-fun lt!317921 () Bool)

(assert (=> d!260931 (= lt!317921 (select (content!1329 (firstChars!62 r!27177)) c!13916))))

(declare-fun e!549789 () Bool)

(assert (=> d!260931 (= lt!317921 e!549789)))

(declare-fun res!382597 () Bool)

(assert (=> d!260931 (=> (not res!382597) (not e!549789))))

(assert (=> d!260931 (= res!382597 ((_ is Cons!8901) (firstChars!62 r!27177)))))

(assert (=> d!260931 (= (contains!1682 (firstChars!62 r!27177) c!13916) lt!317921)))

(declare-fun b!835814 () Bool)

(declare-fun e!549790 () Bool)

(assert (=> b!835814 (= e!549789 e!549790)))

(declare-fun res!382596 () Bool)

(assert (=> b!835814 (=> res!382596 e!549790)))

(assert (=> b!835814 (= res!382596 (= (h!14302 (firstChars!62 r!27177)) c!13916))))

(declare-fun b!835815 () Bool)

(assert (=> b!835815 (= e!549790 (contains!1682 (t!93209 (firstChars!62 r!27177)) c!13916))))

(assert (= (and d!260931 res!382597) b!835814))

(assert (= (and b!835814 (not res!382596)) b!835815))

(assert (=> d!260931 m!1070099))

(declare-fun m!1070193 () Bool)

(assert (=> d!260931 m!1070193))

(declare-fun m!1070195 () Bool)

(assert (=> d!260931 m!1070195))

(declare-fun m!1070197 () Bool)

(assert (=> b!835815 m!1070197))

(assert (=> b!835594 d!260931))

(declare-fun b!835816 () Bool)

(declare-fun e!549794 () List!8917)

(assert (=> b!835816 (= e!549794 (Cons!8901 (c!136390 r!27177) Nil!8901))))

(declare-fun b!835817 () Bool)

(declare-fun e!549795 () List!8917)

(declare-fun call!50097 () List!8917)

(assert (=> b!835817 (= e!549795 call!50097)))

(declare-fun call!50099 () List!8917)

(declare-fun c!136476 () Bool)

(declare-fun call!50096 () List!8917)

(declare-fun bm!50090 () Bool)

(declare-fun call!50098 () List!8917)

(assert (=> bm!50090 (= call!50097 (++!2317 (ite c!136476 call!50099 call!50098) (ite c!136476 call!50096 call!50099)))))

(declare-fun bm!50091 () Bool)

(assert (=> bm!50091 (= call!50098 call!50096)))

(declare-fun b!835818 () Bool)

(declare-fun e!549793 () List!8917)

(assert (=> b!835818 (= e!549793 e!549795)))

(assert (=> b!835818 (= c!136476 ((_ is Union!2091) r!27177))))

(declare-fun call!50095 () List!8917)

(declare-fun bm!50092 () Bool)

(declare-fun c!136474 () Bool)

(assert (=> bm!50092 (= call!50095 (firstChars!62 (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))))))

(declare-fun bm!50093 () Bool)

(assert (=> bm!50093 (= call!50096 call!50095)))

(declare-fun d!260933 () Bool)

(declare-fun c!136475 () Bool)

(assert (=> d!260933 (= c!136475 (or ((_ is EmptyExpr!2091) r!27177) ((_ is EmptyLang!2091) r!27177)))))

(declare-fun e!549792 () List!8917)

(assert (=> d!260933 (= (firstChars!62 r!27177) e!549792)))

(declare-fun b!835819 () Bool)

(declare-fun e!549791 () List!8917)

(assert (=> b!835819 (= e!549791 call!50097)))

(declare-fun b!835820 () Bool)

(assert (=> b!835820 (= e!549792 e!549794)))

(declare-fun c!136473 () Bool)

(assert (=> b!835820 (= c!136473 ((_ is ElementMatch!2091) r!27177))))

(declare-fun b!835821 () Bool)

(assert (=> b!835821 (= e!549792 Nil!8901)))

(declare-fun bm!50094 () Bool)

(assert (=> bm!50094 (= call!50099 (firstChars!62 (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))))))

(declare-fun b!835822 () Bool)

(assert (=> b!835822 (= c!136474 ((_ is Star!2091) r!27177))))

(assert (=> b!835822 (= e!549794 e!549793)))

(declare-fun b!835823 () Bool)

(assert (=> b!835823 (= e!549791 call!50098)))

(declare-fun b!835824 () Bool)

(declare-fun c!136472 () Bool)

(assert (=> b!835824 (= c!136472 (nullable!542 (regOne!4694 r!27177)))))

(assert (=> b!835824 (= e!549795 e!549791)))

(declare-fun b!835825 () Bool)

(assert (=> b!835825 (= e!549793 call!50095)))

(assert (= (and d!260933 c!136475) b!835821))

(assert (= (and d!260933 (not c!136475)) b!835820))

(assert (= (and b!835820 c!136473) b!835816))

(assert (= (and b!835820 (not c!136473)) b!835822))

(assert (= (and b!835822 c!136474) b!835825))

(assert (= (and b!835822 (not c!136474)) b!835818))

(assert (= (and b!835818 c!136476) b!835817))

(assert (= (and b!835818 (not c!136476)) b!835824))

(assert (= (and b!835824 c!136472) b!835819))

(assert (= (and b!835824 (not c!136472)) b!835823))

(assert (= (or b!835819 b!835823) bm!50091))

(assert (= (or b!835817 bm!50091) bm!50093))

(assert (= (or b!835817 b!835819) bm!50094))

(assert (= (or b!835817 b!835819) bm!50090))

(assert (= (or b!835825 bm!50093) bm!50092))

(declare-fun m!1070199 () Bool)

(assert (=> bm!50090 m!1070199))

(declare-fun m!1070201 () Bool)

(assert (=> bm!50092 m!1070201))

(declare-fun m!1070203 () Bool)

(assert (=> bm!50094 m!1070203))

(assert (=> b!835824 m!1070115))

(assert (=> b!835594 d!260933))

(declare-fun b!835837 () Bool)

(declare-fun e!549798 () Bool)

(declare-fun tp!261975 () Bool)

(declare-fun tp!261977 () Bool)

(assert (=> b!835837 (= e!549798 (and tp!261975 tp!261977))))

(declare-fun b!835839 () Bool)

(declare-fun tp!261976 () Bool)

(declare-fun tp!261979 () Bool)

(assert (=> b!835839 (= e!549798 (and tp!261976 tp!261979))))

(declare-fun b!835836 () Bool)

(assert (=> b!835836 (= e!549798 tp_is_empty!3905)))

(declare-fun b!835838 () Bool)

(declare-fun tp!261978 () Bool)

(assert (=> b!835838 (= e!549798 tp!261978)))

(assert (=> b!835595 (= tp!261964 e!549798)))

(assert (= (and b!835595 ((_ is ElementMatch!2091) (regOne!4694 r!27177))) b!835836))

(assert (= (and b!835595 ((_ is Concat!3822) (regOne!4694 r!27177))) b!835837))

(assert (= (and b!835595 ((_ is Star!2091) (regOne!4694 r!27177))) b!835838))

(assert (= (and b!835595 ((_ is Union!2091) (regOne!4694 r!27177))) b!835839))

(declare-fun b!835851 () Bool)

(declare-fun e!549804 () Bool)

(declare-fun tp!261980 () Bool)

(declare-fun tp!261982 () Bool)

(assert (=> b!835851 (= e!549804 (and tp!261980 tp!261982))))

(declare-fun b!835853 () Bool)

(declare-fun tp!261981 () Bool)

(declare-fun tp!261984 () Bool)

(assert (=> b!835853 (= e!549804 (and tp!261981 tp!261984))))

(declare-fun b!835850 () Bool)

(assert (=> b!835850 (= e!549804 tp_is_empty!3905)))

(declare-fun b!835852 () Bool)

(declare-fun tp!261983 () Bool)

(assert (=> b!835852 (= e!549804 tp!261983)))

(assert (=> b!835595 (= tp!261963 e!549804)))

(assert (= (and b!835595 ((_ is ElementMatch!2091) (regTwo!4694 r!27177))) b!835850))

(assert (= (and b!835595 ((_ is Concat!3822) (regTwo!4694 r!27177))) b!835851))

(assert (= (and b!835595 ((_ is Star!2091) (regTwo!4694 r!27177))) b!835852))

(assert (= (and b!835595 ((_ is Union!2091) (regTwo!4694 r!27177))) b!835853))

(declare-fun b!835855 () Bool)

(declare-fun e!549805 () Bool)

(declare-fun tp!261985 () Bool)

(declare-fun tp!261987 () Bool)

(assert (=> b!835855 (= e!549805 (and tp!261985 tp!261987))))

(declare-fun b!835857 () Bool)

(declare-fun tp!261986 () Bool)

(declare-fun tp!261989 () Bool)

(assert (=> b!835857 (= e!549805 (and tp!261986 tp!261989))))

(declare-fun b!835854 () Bool)

(assert (=> b!835854 (= e!549805 tp_is_empty!3905)))

(declare-fun b!835856 () Bool)

(declare-fun tp!261988 () Bool)

(assert (=> b!835856 (= e!549805 tp!261988)))

(assert (=> b!835592 (= tp!261962 e!549805)))

(assert (= (and b!835592 ((_ is ElementMatch!2091) (reg!2420 r!27177))) b!835854))

(assert (= (and b!835592 ((_ is Concat!3822) (reg!2420 r!27177))) b!835855))

(assert (= (and b!835592 ((_ is Star!2091) (reg!2420 r!27177))) b!835856))

(assert (= (and b!835592 ((_ is Union!2091) (reg!2420 r!27177))) b!835857))

(declare-fun b!835859 () Bool)

(declare-fun e!549806 () Bool)

(declare-fun tp!261990 () Bool)

(declare-fun tp!261992 () Bool)

(assert (=> b!835859 (= e!549806 (and tp!261990 tp!261992))))

(declare-fun b!835861 () Bool)

(declare-fun tp!261991 () Bool)

(declare-fun tp!261994 () Bool)

(assert (=> b!835861 (= e!549806 (and tp!261991 tp!261994))))

(declare-fun b!835858 () Bool)

(assert (=> b!835858 (= e!549806 tp_is_empty!3905)))

(declare-fun b!835860 () Bool)

(declare-fun tp!261993 () Bool)

(assert (=> b!835860 (= e!549806 tp!261993)))

(assert (=> b!835589 (= tp!261960 e!549806)))

(assert (= (and b!835589 ((_ is ElementMatch!2091) (regOne!4695 r!27177))) b!835858))

(assert (= (and b!835589 ((_ is Concat!3822) (regOne!4695 r!27177))) b!835859))

(assert (= (and b!835589 ((_ is Star!2091) (regOne!4695 r!27177))) b!835860))

(assert (= (and b!835589 ((_ is Union!2091) (regOne!4695 r!27177))) b!835861))

(declare-fun b!835873 () Bool)

(declare-fun e!549812 () Bool)

(declare-fun tp!261995 () Bool)

(declare-fun tp!261997 () Bool)

(assert (=> b!835873 (= e!549812 (and tp!261995 tp!261997))))

(declare-fun b!835875 () Bool)

(declare-fun tp!261996 () Bool)

(declare-fun tp!261999 () Bool)

(assert (=> b!835875 (= e!549812 (and tp!261996 tp!261999))))

(declare-fun b!835872 () Bool)

(assert (=> b!835872 (= e!549812 tp_is_empty!3905)))

(declare-fun b!835874 () Bool)

(declare-fun tp!261998 () Bool)

(assert (=> b!835874 (= e!549812 tp!261998)))

(assert (=> b!835589 (= tp!261961 e!549812)))

(assert (= (and b!835589 ((_ is ElementMatch!2091) (regTwo!4695 r!27177))) b!835872))

(assert (= (and b!835589 ((_ is Concat!3822) (regTwo!4695 r!27177))) b!835873))

(assert (= (and b!835589 ((_ is Star!2091) (regTwo!4695 r!27177))) b!835874))

(assert (= (and b!835589 ((_ is Union!2091) (regTwo!4695 r!27177))) b!835875))

(check-sat (not b!835855) (not b!835861) (not bm!50092) (not b!835710) (not b!835824) (not bm!50058) (not b!835659) (not d!260901) (not b!835857) (not b!835603) (not bm!50053) (not b!835719) (not b!835851) (not b!835859) (not bm!50032) (not bm!50056) (not bm!50081) (not bm!50036) (not d!260915) (not bm!50055) (not bm!50034) (not b!835873) (not b!835815) (not b!835838) (not bm!50094) (not b!835839) (not bm!50085) (not b!835837) (not b!835860) (not bm!50086) (not b!835856) (not b!835852) (not b!835875) tp_is_empty!3905 (not b!835853) (not bm!50090) (not d!260931) (not bm!50080) (not b!835874))
(check-sat)
(get-model)

(declare-fun d!260937 () Bool)

(declare-fun c!136489 () Bool)

(assert (=> d!260937 (= c!136489 ((_ is Nil!8901) (firstChars!62 (regOne!4694 r!27177))))))

(declare-fun e!549822 () (InoxSet C!4752))

(assert (=> d!260937 (= (content!1329 (firstChars!62 (regOne!4694 r!27177))) e!549822)))

(declare-fun b!835910 () Bool)

(assert (=> b!835910 (= e!549822 ((as const (Array C!4752 Bool)) false))))

(declare-fun b!835911 () Bool)

(assert (=> b!835911 (= e!549822 ((_ map or) (store ((as const (Array C!4752 Bool)) false) (h!14302 (firstChars!62 (regOne!4694 r!27177))) true) (content!1329 (t!93209 (firstChars!62 (regOne!4694 r!27177))))))))

(assert (= (and d!260937 c!136489) b!835910))

(assert (= (and d!260937 (not c!136489)) b!835911))

(declare-fun m!1070213 () Bool)

(assert (=> b!835911 m!1070213))

(declare-fun m!1070215 () Bool)

(assert (=> b!835911 m!1070215))

(assert (=> d!260901 d!260937))

(declare-fun d!260939 () Bool)

(assert (=> d!260939 (= (nullable!542 (reg!2420 (regOne!4694 r!27177))) (nullableFct!180 (reg!2420 (regOne!4694 r!27177))))))

(declare-fun bs!229722 () Bool)

(assert (= bs!229722 d!260939))

(declare-fun m!1070217 () Bool)

(assert (=> bs!229722 m!1070217))

(assert (=> b!835719 d!260939))

(declare-fun d!260941 () Bool)

(declare-fun lt!317924 () Bool)

(assert (=> d!260941 (= lt!317924 (select (content!1329 (t!93209 (firstChars!62 r!27177))) c!13916))))

(declare-fun e!549823 () Bool)

(assert (=> d!260941 (= lt!317924 e!549823)))

(declare-fun res!382599 () Bool)

(assert (=> d!260941 (=> (not res!382599) (not e!549823))))

(assert (=> d!260941 (= res!382599 ((_ is Cons!8901) (t!93209 (firstChars!62 r!27177))))))

(assert (=> d!260941 (= (contains!1682 (t!93209 (firstChars!62 r!27177)) c!13916) lt!317924)))

(declare-fun b!835912 () Bool)

(declare-fun e!549824 () Bool)

(assert (=> b!835912 (= e!549823 e!549824)))

(declare-fun res!382598 () Bool)

(assert (=> b!835912 (=> res!382598 e!549824)))

(assert (=> b!835912 (= res!382598 (= (h!14302 (t!93209 (firstChars!62 r!27177))) c!13916))))

(declare-fun b!835913 () Bool)

(assert (=> b!835913 (= e!549824 (contains!1682 (t!93209 (t!93209 (firstChars!62 r!27177))) c!13916))))

(assert (= (and d!260941 res!382599) b!835912))

(assert (= (and b!835912 (not res!382598)) b!835913))

(declare-fun m!1070219 () Bool)

(assert (=> d!260941 m!1070219))

(declare-fun m!1070221 () Bool)

(assert (=> d!260941 m!1070221))

(declare-fun m!1070223 () Bool)

(assert (=> b!835913 m!1070223))

(assert (=> b!835815 d!260941))

(declare-fun call!50106 () Int)

(declare-fun bm!50101 () Bool)

(declare-fun c!136493 () Bool)

(declare-fun c!136494 () Bool)

(assert (=> bm!50101 (= call!50106 (RegexPrimitiveSize!98 (ite c!136493 (regOne!4694 (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))) (ite c!136494 (reg!2420 (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))) (regOne!4695 (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177))))))))))

(declare-fun b!835914 () Bool)

(declare-fun e!549825 () Int)

(declare-fun call!50108 () Int)

(assert (=> b!835914 (= e!549825 (+ 1 call!50108))))

(declare-fun bm!50102 () Bool)

(declare-fun call!50107 () Int)

(assert (=> bm!50102 (= call!50107 (RegexPrimitiveSize!98 (ite c!136493 (regTwo!4694 (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))) (regTwo!4695 (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))))))))

(declare-fun b!835915 () Bool)

(declare-fun c!136491 () Bool)

(assert (=> b!835915 (= c!136491 ((_ is EmptyExpr!2091) (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))))))

(declare-fun e!549829 () Int)

(declare-fun e!549826 () Int)

(assert (=> b!835915 (= e!549829 e!549826)))

(declare-fun b!835916 () Bool)

(declare-fun e!549828 () Int)

(assert (=> b!835916 (= e!549828 0)))

(declare-fun b!835917 () Bool)

(declare-fun e!549827 () Int)

(assert (=> b!835917 (= e!549827 1)))

(declare-fun b!835918 () Bool)

(assert (=> b!835918 (= e!549828 (+ 1 call!50108 call!50107))))

(declare-fun d!260943 () Bool)

(declare-fun lt!317925 () Int)

(assert (=> d!260943 (>= lt!317925 0)))

(assert (=> d!260943 (= lt!317925 e!549827)))

(declare-fun c!136490 () Bool)

(assert (=> d!260943 (= c!136490 ((_ is ElementMatch!2091) (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))))))

(assert (=> d!260943 (= (RegexPrimitiveSize!98 (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))) lt!317925)))

(declare-fun b!835919 () Bool)

(assert (=> b!835919 (= e!549827 e!549829)))

(assert (=> b!835919 (= c!136493 ((_ is Concat!3822) (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))))))

(declare-fun b!835920 () Bool)

(assert (=> b!835920 (= e!549826 e!549825)))

(assert (=> b!835920 (= c!136494 ((_ is Star!2091) (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))))))

(declare-fun b!835921 () Bool)

(declare-fun c!136492 () Bool)

(assert (=> b!835921 (= c!136492 ((_ is EmptyLang!2091) (ite c!136465 (regTwo!4694 (regOne!4694 r!27177)) (regTwo!4695 (regOne!4694 r!27177)))))))

(assert (=> b!835921 (= e!549825 e!549828)))

(declare-fun bm!50103 () Bool)

(assert (=> bm!50103 (= call!50108 call!50106)))

(declare-fun b!835922 () Bool)

(assert (=> b!835922 (= e!549829 (+ 1 call!50106 call!50107))))

(declare-fun b!835923 () Bool)

(assert (=> b!835923 (= e!549826 0)))

(assert (= (and d!260943 c!136490) b!835917))

(assert (= (and d!260943 (not c!136490)) b!835919))

(assert (= (and b!835919 c!136493) b!835922))

(assert (= (and b!835919 (not c!136493)) b!835915))

(assert (= (and b!835915 c!136491) b!835923))

(assert (= (and b!835915 (not c!136491)) b!835920))

(assert (= (and b!835920 c!136494) b!835914))

(assert (= (and b!835920 (not c!136494)) b!835921))

(assert (= (and b!835921 c!136492) b!835916))

(assert (= (and b!835921 (not c!136492)) b!835918))

(assert (= (or b!835914 b!835918) bm!50103))

(assert (= (or b!835922 bm!50103) bm!50101))

(assert (= (or b!835922 b!835918) bm!50102))

(declare-fun m!1070225 () Bool)

(assert (=> bm!50101 m!1070225))

(declare-fun m!1070227 () Bool)

(assert (=> bm!50102 m!1070227))

(assert (=> bm!50081 d!260943))

(declare-fun d!260945 () Bool)

(declare-fun res!382610 () Bool)

(declare-fun e!549843 () Bool)

(assert (=> d!260945 (=> res!382610 e!549843)))

(assert (=> d!260945 (= res!382610 ((_ is EmptyExpr!2091) (regOne!4694 r!27177)))))

(assert (=> d!260945 (= (nullableFct!180 (regOne!4694 r!27177)) e!549843)))

(declare-fun bm!50108 () Bool)

(declare-fun call!50114 () Bool)

(declare-fun c!136497 () Bool)

(assert (=> bm!50108 (= call!50114 (nullable!542 (ite c!136497 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))))))

(declare-fun bm!50109 () Bool)

(declare-fun call!50113 () Bool)

(assert (=> bm!50109 (= call!50113 (nullable!542 (ite c!136497 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))))))

(declare-fun b!835938 () Bool)

(declare-fun e!549845 () Bool)

(assert (=> b!835938 (= e!549845 call!50114)))

(declare-fun b!835939 () Bool)

(declare-fun e!549844 () Bool)

(declare-fun e!549847 () Bool)

(assert (=> b!835939 (= e!549844 e!549847)))

(assert (=> b!835939 (= c!136497 ((_ is Union!2091) (regOne!4694 r!27177)))))

(declare-fun b!835940 () Bool)

(declare-fun e!549846 () Bool)

(assert (=> b!835940 (= e!549847 e!549846)))

(declare-fun res!382611 () Bool)

(assert (=> b!835940 (= res!382611 call!50114)))

(assert (=> b!835940 (=> (not res!382611) (not e!549846))))

(declare-fun b!835941 () Bool)

(declare-fun e!549842 () Bool)

(assert (=> b!835941 (= e!549843 e!549842)))

(declare-fun res!382612 () Bool)

(assert (=> b!835941 (=> (not res!382612) (not e!549842))))

(assert (=> b!835941 (= res!382612 (and (not ((_ is EmptyLang!2091) (regOne!4694 r!27177))) (not ((_ is ElementMatch!2091) (regOne!4694 r!27177)))))))

(declare-fun b!835942 () Bool)

(assert (=> b!835942 (= e!549847 e!549845)))

(declare-fun res!382613 () Bool)

(assert (=> b!835942 (= res!382613 call!50113)))

(assert (=> b!835942 (=> res!382613 e!549845)))

(declare-fun b!835943 () Bool)

(assert (=> b!835943 (= e!549846 call!50113)))

(declare-fun b!835944 () Bool)

(assert (=> b!835944 (= e!549842 e!549844)))

(declare-fun res!382614 () Bool)

(assert (=> b!835944 (=> res!382614 e!549844)))

(assert (=> b!835944 (= res!382614 ((_ is Star!2091) (regOne!4694 r!27177)))))

(assert (= (and d!260945 (not res!382610)) b!835941))

(assert (= (and b!835941 res!382612) b!835944))

(assert (= (and b!835944 (not res!382614)) b!835939))

(assert (= (and b!835939 c!136497) b!835942))

(assert (= (and b!835939 (not c!136497)) b!835940))

(assert (= (and b!835942 (not res!382613)) b!835938))

(assert (= (and b!835940 res!382611) b!835943))

(assert (= (or b!835942 b!835943) bm!50109))

(assert (= (or b!835938 b!835940) bm!50108))

(declare-fun m!1070229 () Bool)

(assert (=> bm!50108 m!1070229))

(declare-fun m!1070231 () Bool)

(assert (=> bm!50109 m!1070231))

(assert (=> d!260915 d!260945))

(declare-fun b!835945 () Bool)

(declare-fun e!549851 () List!8917)

(assert (=> b!835945 (= e!549851 (Cons!8901 (c!136390 (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))) Nil!8901))))

(declare-fun b!835946 () Bool)

(declare-fun e!549852 () List!8917)

(declare-fun call!50117 () List!8917)

(assert (=> b!835946 (= e!549852 call!50117)))

(declare-fun call!50116 () List!8917)

(declare-fun bm!50110 () Bool)

(declare-fun call!50119 () List!8917)

(declare-fun c!136502 () Bool)

(declare-fun call!50118 () List!8917)

(assert (=> bm!50110 (= call!50117 (++!2317 (ite c!136502 call!50119 call!50118) (ite c!136502 call!50116 call!50119)))))

(declare-fun bm!50111 () Bool)

(assert (=> bm!50111 (= call!50118 call!50116)))

(declare-fun b!835947 () Bool)

(declare-fun e!549850 () List!8917)

(assert (=> b!835947 (= e!549850 e!549852)))

(assert (=> b!835947 (= c!136502 ((_ is Union!2091) (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))))))

(declare-fun bm!50112 () Bool)

(declare-fun c!136500 () Bool)

(declare-fun call!50115 () List!8917)

(assert (=> bm!50112 (= call!50115 (firstChars!62 (ite c!136500 (reg!2420 (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))) (ite c!136502 (regTwo!4695 (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))) (regOne!4694 (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))))))))))

(declare-fun bm!50113 () Bool)

(assert (=> bm!50113 (= call!50116 call!50115)))

(declare-fun c!136501 () Bool)

(declare-fun d!260947 () Bool)

(assert (=> d!260947 (= c!136501 (or ((_ is EmptyExpr!2091) (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))) ((_ is EmptyLang!2091) (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))))))))

(declare-fun e!549849 () List!8917)

(assert (=> d!260947 (= (firstChars!62 (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))) e!549849)))

(declare-fun b!835948 () Bool)

(declare-fun e!549848 () List!8917)

(assert (=> b!835948 (= e!549848 call!50117)))

(declare-fun b!835949 () Bool)

(assert (=> b!835949 (= e!549849 e!549851)))

(declare-fun c!136499 () Bool)

(assert (=> b!835949 (= c!136499 ((_ is ElementMatch!2091) (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))))))

(declare-fun b!835950 () Bool)

(assert (=> b!835950 (= e!549849 Nil!8901)))

(declare-fun bm!50114 () Bool)

(assert (=> bm!50114 (= call!50119 (firstChars!62 (ite c!136502 (regOne!4695 (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))) (regTwo!4694 (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))))))))

(declare-fun b!835951 () Bool)

(assert (=> b!835951 (= c!136500 ((_ is Star!2091) (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))))))

(assert (=> b!835951 (= e!549851 e!549850)))

(declare-fun b!835952 () Bool)

(assert (=> b!835952 (= e!549848 call!50118)))

(declare-fun c!136498 () Bool)

(declare-fun b!835953 () Bool)

(assert (=> b!835953 (= c!136498 (nullable!542 (regOne!4694 (ite c!136409 (reg!2420 (regOne!4694 r!27177)) (ite c!136411 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))))))))

(assert (=> b!835953 (= e!549852 e!549848)))

(declare-fun b!835954 () Bool)

(assert (=> b!835954 (= e!549850 call!50115)))

(assert (= (and d!260947 c!136501) b!835950))

(assert (= (and d!260947 (not c!136501)) b!835949))

(assert (= (and b!835949 c!136499) b!835945))

(assert (= (and b!835949 (not c!136499)) b!835951))

(assert (= (and b!835951 c!136500) b!835954))

(assert (= (and b!835951 (not c!136500)) b!835947))

(assert (= (and b!835947 c!136502) b!835946))

(assert (= (and b!835947 (not c!136502)) b!835953))

(assert (= (and b!835953 c!136498) b!835948))

(assert (= (and b!835953 (not c!136498)) b!835952))

(assert (= (or b!835948 b!835952) bm!50111))

(assert (= (or b!835946 bm!50111) bm!50113))

(assert (= (or b!835946 b!835948) bm!50114))

(assert (= (or b!835946 b!835948) bm!50110))

(assert (= (or b!835954 bm!50113) bm!50112))

(declare-fun m!1070233 () Bool)

(assert (=> bm!50110 m!1070233))

(declare-fun m!1070235 () Bool)

(assert (=> bm!50112 m!1070235))

(declare-fun m!1070237 () Bool)

(assert (=> bm!50114 m!1070237))

(declare-fun m!1070239 () Bool)

(assert (=> b!835953 m!1070239))

(assert (=> bm!50034 d!260947))

(declare-fun b!835955 () Bool)

(declare-fun e!549857 () Bool)

(declare-fun e!549854 () Bool)

(assert (=> b!835955 (= e!549857 e!549854)))

(declare-fun c!136503 () Bool)

(assert (=> b!835955 (= c!136503 ((_ is Star!2091) (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))))))

(declare-fun b!835956 () Bool)

(declare-fun res!382615 () Bool)

(declare-fun e!549859 () Bool)

(assert (=> b!835956 (=> (not res!382615) (not e!549859))))

(declare-fun call!50121 () Bool)

(assert (=> b!835956 (= res!382615 call!50121)))

(declare-fun e!549856 () Bool)

(assert (=> b!835956 (= e!549856 e!549859)))

(declare-fun b!835957 () Bool)

(declare-fun res!382619 () Bool)

(declare-fun e!549855 () Bool)

(assert (=> b!835957 (=> res!382619 e!549855)))

(assert (=> b!835957 (= res!382619 (not ((_ is Concat!3822) (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))))))

(assert (=> b!835957 (= e!549856 e!549855)))

(declare-fun b!835958 () Bool)

(declare-fun call!50120 () Bool)

(assert (=> b!835958 (= e!549859 call!50120)))

(declare-fun b!835959 () Bool)

(assert (=> b!835959 (= e!549854 e!549856)))

(declare-fun c!136504 () Bool)

(assert (=> b!835959 (= c!136504 ((_ is Union!2091) (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))))))

(declare-fun d!260949 () Bool)

(declare-fun res!382618 () Bool)

(assert (=> d!260949 (=> res!382618 e!549857)))

(assert (=> d!260949 (= res!382618 ((_ is ElementMatch!2091) (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))))))

(assert (=> d!260949 (= (validRegex!644 (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))) e!549857)))

(declare-fun b!835960 () Bool)

(declare-fun e!549858 () Bool)

(assert (=> b!835960 (= e!549854 e!549858)))

(declare-fun res!382616 () Bool)

(assert (=> b!835960 (= res!382616 (not (nullable!542 (reg!2420 (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))))))))

(assert (=> b!835960 (=> (not res!382616) (not e!549858))))

(declare-fun b!835961 () Bool)

(declare-fun e!549853 () Bool)

(assert (=> b!835961 (= e!549855 e!549853)))

(declare-fun res!382617 () Bool)

(assert (=> b!835961 (=> (not res!382617) (not e!549853))))

(assert (=> b!835961 (= res!382617 call!50120)))

(declare-fun bm!50115 () Bool)

(assert (=> bm!50115 (= call!50120 (validRegex!644 (ite c!136504 (regTwo!4695 (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))) (regOne!4694 (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))))))))

(declare-fun b!835962 () Bool)

(declare-fun call!50122 () Bool)

(assert (=> b!835962 (= e!549858 call!50122)))

(declare-fun bm!50116 () Bool)

(assert (=> bm!50116 (= call!50121 call!50122)))

(declare-fun bm!50117 () Bool)

(assert (=> bm!50117 (= call!50122 (validRegex!644 (ite c!136503 (reg!2420 (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))) (ite c!136504 (regOne!4695 (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177)))) (regTwo!4694 (ite c!136429 (regTwo!4695 (regOne!4694 r!27177)) (regOne!4694 (regOne!4694 r!27177))))))))))

(declare-fun b!835963 () Bool)

(assert (=> b!835963 (= e!549853 call!50121)))

(assert (= (and d!260949 (not res!382618)) b!835955))

(assert (= (and b!835955 c!136503) b!835960))

(assert (= (and b!835955 (not c!136503)) b!835959))

(assert (= (and b!835960 res!382616) b!835962))

(assert (= (and b!835959 c!136504) b!835956))

(assert (= (and b!835959 (not c!136504)) b!835957))

(assert (= (and b!835956 res!382615) b!835958))

(assert (= (and b!835957 (not res!382619)) b!835961))

(assert (= (and b!835961 res!382617) b!835963))

(assert (= (or b!835956 b!835963) bm!50116))

(assert (= (or b!835958 b!835961) bm!50115))

(assert (= (or b!835962 bm!50116) bm!50117))

(declare-fun m!1070241 () Bool)

(assert (=> b!835960 m!1070241))

(declare-fun m!1070243 () Bool)

(assert (=> bm!50115 m!1070243))

(declare-fun m!1070245 () Bool)

(assert (=> bm!50117 m!1070245))

(assert (=> bm!50056 d!260949))

(declare-fun b!835964 () Bool)

(declare-fun e!549863 () List!8917)

(assert (=> b!835964 (= e!549863 (Cons!8901 (c!136390 (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))) Nil!8901))))

(declare-fun b!835965 () Bool)

(declare-fun e!549864 () List!8917)

(declare-fun call!50125 () List!8917)

(assert (=> b!835965 (= e!549864 call!50125)))

(declare-fun bm!50118 () Bool)

(declare-fun call!50124 () List!8917)

(declare-fun call!50126 () List!8917)

(declare-fun c!136509 () Bool)

(declare-fun call!50127 () List!8917)

(assert (=> bm!50118 (= call!50125 (++!2317 (ite c!136509 call!50127 call!50126) (ite c!136509 call!50124 call!50127)))))

(declare-fun bm!50119 () Bool)

(assert (=> bm!50119 (= call!50126 call!50124)))

(declare-fun b!835966 () Bool)

(declare-fun e!549862 () List!8917)

(assert (=> b!835966 (= e!549862 e!549864)))

(assert (=> b!835966 (= c!136509 ((_ is Union!2091) (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))))))

(declare-fun c!136507 () Bool)

(declare-fun bm!50120 () Bool)

(declare-fun call!50123 () List!8917)

(assert (=> bm!50120 (= call!50123 (firstChars!62 (ite c!136507 (reg!2420 (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))) (ite c!136509 (regTwo!4695 (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))) (regOne!4694 (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177)))))))))

(declare-fun bm!50121 () Bool)

(assert (=> bm!50121 (= call!50124 call!50123)))

(declare-fun d!260951 () Bool)

(declare-fun c!136508 () Bool)

(assert (=> d!260951 (= c!136508 (or ((_ is EmptyExpr!2091) (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))) ((_ is EmptyLang!2091) (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177)))))))

(declare-fun e!549861 () List!8917)

(assert (=> d!260951 (= (firstChars!62 (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))) e!549861)))

(declare-fun b!835967 () Bool)

(declare-fun e!549860 () List!8917)

(assert (=> b!835967 (= e!549860 call!50125)))

(declare-fun b!835968 () Bool)

(assert (=> b!835968 (= e!549861 e!549863)))

(declare-fun c!136506 () Bool)

(assert (=> b!835968 (= c!136506 ((_ is ElementMatch!2091) (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))))))

(declare-fun b!835969 () Bool)

(assert (=> b!835969 (= e!549861 Nil!8901)))

(declare-fun bm!50122 () Bool)

(assert (=> bm!50122 (= call!50127 (firstChars!62 (ite c!136509 (regOne!4695 (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))) (regTwo!4694 (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))))))))

(declare-fun b!835970 () Bool)

(assert (=> b!835970 (= c!136507 ((_ is Star!2091) (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177))))))

(assert (=> b!835970 (= e!549863 e!549862)))

(declare-fun b!835971 () Bool)

(assert (=> b!835971 (= e!549860 call!50126)))

(declare-fun b!835972 () Bool)

(declare-fun c!136505 () Bool)

(assert (=> b!835972 (= c!136505 (nullable!542 (regOne!4694 (ite c!136476 (regOne!4695 r!27177) (regTwo!4694 r!27177)))))))

(assert (=> b!835972 (= e!549864 e!549860)))

(declare-fun b!835973 () Bool)

(assert (=> b!835973 (= e!549862 call!50123)))

(assert (= (and d!260951 c!136508) b!835969))

(assert (= (and d!260951 (not c!136508)) b!835968))

(assert (= (and b!835968 c!136506) b!835964))

(assert (= (and b!835968 (not c!136506)) b!835970))

(assert (= (and b!835970 c!136507) b!835973))

(assert (= (and b!835970 (not c!136507)) b!835966))

(assert (= (and b!835966 c!136509) b!835965))

(assert (= (and b!835966 (not c!136509)) b!835972))

(assert (= (and b!835972 c!136505) b!835967))

(assert (= (and b!835972 (not c!136505)) b!835971))

(assert (= (or b!835967 b!835971) bm!50119))

(assert (= (or b!835965 bm!50119) bm!50121))

(assert (= (or b!835965 b!835967) bm!50122))

(assert (= (or b!835965 b!835967) bm!50118))

(assert (= (or b!835973 bm!50121) bm!50120))

(declare-fun m!1070247 () Bool)

(assert (=> bm!50118 m!1070247))

(declare-fun m!1070249 () Bool)

(assert (=> bm!50120 m!1070249))

(declare-fun m!1070251 () Bool)

(assert (=> bm!50122 m!1070251))

(declare-fun m!1070253 () Bool)

(assert (=> b!835972 m!1070253))

(assert (=> bm!50094 d!260951))

(declare-fun e!549868 () List!8917)

(declare-fun b!835974 () Bool)

(assert (=> b!835974 (= e!549868 (Cons!8901 (c!136390 (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))) Nil!8901))))

(declare-fun b!835975 () Bool)

(declare-fun e!549869 () List!8917)

(declare-fun call!50130 () List!8917)

(assert (=> b!835975 (= e!549869 call!50130)))

(declare-fun bm!50123 () Bool)

(declare-fun call!50129 () List!8917)

(declare-fun call!50131 () List!8917)

(declare-fun call!50132 () List!8917)

(declare-fun c!136514 () Bool)

(assert (=> bm!50123 (= call!50130 (++!2317 (ite c!136514 call!50132 call!50131) (ite c!136514 call!50129 call!50132)))))

(declare-fun bm!50124 () Bool)

(assert (=> bm!50124 (= call!50131 call!50129)))

(declare-fun b!835976 () Bool)

(declare-fun e!549867 () List!8917)

(assert (=> b!835976 (= e!549867 e!549869)))

(assert (=> b!835976 (= c!136514 ((_ is Union!2091) (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))))))

(declare-fun c!136512 () Bool)

(declare-fun call!50128 () List!8917)

(declare-fun bm!50125 () Bool)

(assert (=> bm!50125 (= call!50128 (firstChars!62 (ite c!136512 (reg!2420 (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))) (ite c!136514 (regTwo!4695 (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))) (regOne!4694 (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177))))))))))

(declare-fun bm!50126 () Bool)

(assert (=> bm!50126 (= call!50129 call!50128)))

(declare-fun c!136513 () Bool)

(declare-fun d!260953 () Bool)

(assert (=> d!260953 (= c!136513 (or ((_ is EmptyExpr!2091) (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))) ((_ is EmptyLang!2091) (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177))))))))

(declare-fun e!549866 () List!8917)

(assert (=> d!260953 (= (firstChars!62 (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))) e!549866)))

(declare-fun b!835977 () Bool)

(declare-fun e!549865 () List!8917)

(assert (=> b!835977 (= e!549865 call!50130)))

(declare-fun b!835978 () Bool)

(assert (=> b!835978 (= e!549866 e!549868)))

(declare-fun c!136511 () Bool)

(assert (=> b!835978 (= c!136511 ((_ is ElementMatch!2091) (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))))))

(declare-fun b!835979 () Bool)

(assert (=> b!835979 (= e!549866 Nil!8901)))

(declare-fun bm!50127 () Bool)

(assert (=> bm!50127 (= call!50132 (firstChars!62 (ite c!136514 (regOne!4695 (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))) (regTwo!4694 (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))))))))

(declare-fun b!835980 () Bool)

(assert (=> b!835980 (= c!136512 ((_ is Star!2091) (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177)))))))

(assert (=> b!835980 (= e!549868 e!549867)))

(declare-fun b!835981 () Bool)

(assert (=> b!835981 (= e!549865 call!50131)))

(declare-fun c!136510 () Bool)

(declare-fun b!835982 () Bool)

(assert (=> b!835982 (= c!136510 (nullable!542 (regOne!4694 (ite c!136474 (reg!2420 r!27177) (ite c!136476 (regTwo!4695 r!27177) (regOne!4694 r!27177))))))))

(assert (=> b!835982 (= e!549869 e!549865)))

(declare-fun b!835983 () Bool)

(assert (=> b!835983 (= e!549867 call!50128)))

(assert (= (and d!260953 c!136513) b!835979))

(assert (= (and d!260953 (not c!136513)) b!835978))

(assert (= (and b!835978 c!136511) b!835974))

(assert (= (and b!835978 (not c!136511)) b!835980))

(assert (= (and b!835980 c!136512) b!835983))

(assert (= (and b!835980 (not c!136512)) b!835976))

(assert (= (and b!835976 c!136514) b!835975))

(assert (= (and b!835976 (not c!136514)) b!835982))

(assert (= (and b!835982 c!136510) b!835977))

(assert (= (and b!835982 (not c!136510)) b!835981))

(assert (= (or b!835977 b!835981) bm!50124))

(assert (= (or b!835975 bm!50124) bm!50126))

(assert (= (or b!835975 b!835977) bm!50127))

(assert (= (or b!835975 b!835977) bm!50123))

(assert (= (or b!835983 bm!50126) bm!50125))

(declare-fun m!1070255 () Bool)

(assert (=> bm!50123 m!1070255))

(declare-fun m!1070257 () Bool)

(assert (=> bm!50125 m!1070257))

(declare-fun m!1070259 () Bool)

(assert (=> bm!50127 m!1070259))

(declare-fun m!1070261 () Bool)

(assert (=> b!835982 m!1070261))

(assert (=> bm!50092 d!260953))

(declare-fun d!260955 () Bool)

(assert (=> d!260955 (= (nullable!542 (reg!2420 r!27177)) (nullableFct!180 (reg!2420 r!27177)))))

(declare-fun bs!229723 () Bool)

(assert (= bs!229723 d!260955))

(declare-fun m!1070263 () Bool)

(assert (=> bs!229723 m!1070263))

(assert (=> b!835710 d!260955))

(declare-fun bm!50128 () Bool)

(declare-fun c!136518 () Bool)

(declare-fun c!136519 () Bool)

(declare-fun call!50133 () Int)

(assert (=> bm!50128 (= call!50133 (RegexPrimitiveSize!98 (ite c!136518 (regOne!4694 (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))) (ite c!136519 (reg!2420 (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))) (regOne!4695 (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177)))))))))))

(declare-fun b!835984 () Bool)

(declare-fun e!549870 () Int)

(declare-fun call!50135 () Int)

(assert (=> b!835984 (= e!549870 (+ 1 call!50135))))

(declare-fun bm!50129 () Bool)

(declare-fun call!50134 () Int)

(assert (=> bm!50129 (= call!50134 (RegexPrimitiveSize!98 (ite c!136518 (regTwo!4694 (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))) (regTwo!4695 (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))))))))

(declare-fun c!136516 () Bool)

(declare-fun b!835985 () Bool)

(assert (=> b!835985 (= c!136516 ((_ is EmptyExpr!2091) (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))))))

(declare-fun e!549874 () Int)

(declare-fun e!549871 () Int)

(assert (=> b!835985 (= e!549874 e!549871)))

(declare-fun b!835986 () Bool)

(declare-fun e!549873 () Int)

(assert (=> b!835986 (= e!549873 0)))

(declare-fun b!835987 () Bool)

(declare-fun e!549872 () Int)

(assert (=> b!835987 (= e!549872 1)))

(declare-fun b!835988 () Bool)

(assert (=> b!835988 (= e!549873 (+ 1 call!50135 call!50134))))

(declare-fun d!260957 () Bool)

(declare-fun lt!317926 () Int)

(assert (=> d!260957 (>= lt!317926 0)))

(assert (=> d!260957 (= lt!317926 e!549872)))

(declare-fun c!136515 () Bool)

(assert (=> d!260957 (= c!136515 ((_ is ElementMatch!2091) (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))))))

(assert (=> d!260957 (= (RegexPrimitiveSize!98 (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))) lt!317926)))

(declare-fun b!835989 () Bool)

(assert (=> b!835989 (= e!549872 e!549874)))

(assert (=> b!835989 (= c!136518 ((_ is Concat!3822) (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))))))

(declare-fun b!835990 () Bool)

(assert (=> b!835990 (= e!549871 e!549870)))

(assert (=> b!835990 (= c!136519 ((_ is Star!2091) (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))))))

(declare-fun c!136517 () Bool)

(declare-fun b!835991 () Bool)

(assert (=> b!835991 (= c!136517 ((_ is EmptyLang!2091) (ite c!136465 (regOne!4694 (regOne!4694 r!27177)) (ite c!136466 (reg!2420 (regOne!4694 r!27177)) (regOne!4695 (regOne!4694 r!27177))))))))

(assert (=> b!835991 (= e!549870 e!549873)))

(declare-fun bm!50130 () Bool)

(assert (=> bm!50130 (= call!50135 call!50133)))

(declare-fun b!835992 () Bool)

(assert (=> b!835992 (= e!549874 (+ 1 call!50133 call!50134))))

(declare-fun b!835993 () Bool)

(assert (=> b!835993 (= e!549871 0)))

(assert (= (and d!260957 c!136515) b!835987))

(assert (= (and d!260957 (not c!136515)) b!835989))

(assert (= (and b!835989 c!136518) b!835992))

(assert (= (and b!835989 (not c!136518)) b!835985))

(assert (= (and b!835985 c!136516) b!835993))

(assert (= (and b!835985 (not c!136516)) b!835990))

(assert (= (and b!835990 c!136519) b!835984))

(assert (= (and b!835990 (not c!136519)) b!835991))

(assert (= (and b!835991 c!136517) b!835986))

(assert (= (and b!835991 (not c!136517)) b!835988))

(assert (= (or b!835984 b!835988) bm!50130))

(assert (= (or b!835992 bm!50130) bm!50128))

(assert (= (or b!835992 b!835988) bm!50129))

(declare-fun m!1070265 () Bool)

(assert (=> bm!50128 m!1070265))

(declare-fun m!1070267 () Bool)

(assert (=> bm!50129 m!1070267))

(assert (=> bm!50080 d!260957))

(declare-fun d!260959 () Bool)

(declare-fun e!549880 () Bool)

(assert (=> d!260959 e!549880))

(declare-fun res!382625 () Bool)

(assert (=> d!260959 (=> (not res!382625) (not e!549880))))

(declare-fun lt!317929 () List!8917)

(assert (=> d!260959 (= res!382625 (= (content!1329 lt!317929) ((_ map or) (content!1329 (ite c!136411 call!50041 call!50040)) (content!1329 (ite c!136411 call!50038 call!50041)))))))

(declare-fun e!549879 () List!8917)

(assert (=> d!260959 (= lt!317929 e!549879)))

(declare-fun c!136522 () Bool)

(assert (=> d!260959 (= c!136522 ((_ is Nil!8901) (ite c!136411 call!50041 call!50040)))))

(assert (=> d!260959 (= (++!2317 (ite c!136411 call!50041 call!50040) (ite c!136411 call!50038 call!50041)) lt!317929)))

(declare-fun b!836004 () Bool)

(declare-fun res!382624 () Bool)

(assert (=> b!836004 (=> (not res!382624) (not e!549880))))

(declare-fun size!7488 (List!8917) Int)

(assert (=> b!836004 (= res!382624 (= (size!7488 lt!317929) (+ (size!7488 (ite c!136411 call!50041 call!50040)) (size!7488 (ite c!136411 call!50038 call!50041)))))))

(declare-fun b!836005 () Bool)

(assert (=> b!836005 (= e!549880 (or (not (= (ite c!136411 call!50038 call!50041) Nil!8901)) (= lt!317929 (ite c!136411 call!50041 call!50040))))))

(declare-fun b!836002 () Bool)

(assert (=> b!836002 (= e!549879 (ite c!136411 call!50038 call!50041))))

(declare-fun b!836003 () Bool)

(assert (=> b!836003 (= e!549879 (Cons!8901 (h!14302 (ite c!136411 call!50041 call!50040)) (++!2317 (t!93209 (ite c!136411 call!50041 call!50040)) (ite c!136411 call!50038 call!50041))))))

(assert (= (and d!260959 c!136522) b!836002))

(assert (= (and d!260959 (not c!136522)) b!836003))

(assert (= (and d!260959 res!382625) b!836004))

(assert (= (and b!836004 res!382624) b!836005))

(declare-fun m!1070269 () Bool)

(assert (=> d!260959 m!1070269))

(declare-fun m!1070271 () Bool)

(assert (=> d!260959 m!1070271))

(declare-fun m!1070273 () Bool)

(assert (=> d!260959 m!1070273))

(declare-fun m!1070275 () Bool)

(assert (=> b!836004 m!1070275))

(declare-fun m!1070277 () Bool)

(assert (=> b!836004 m!1070277))

(declare-fun m!1070279 () Bool)

(assert (=> b!836004 m!1070279))

(declare-fun m!1070281 () Bool)

(assert (=> b!836003 m!1070281))

(assert (=> bm!50032 d!260959))

(declare-fun d!260961 () Bool)

(assert (=> d!260961 (= (nullable!542 (regOne!4694 (regOne!4694 r!27177))) (nullableFct!180 (regOne!4694 (regOne!4694 r!27177))))))

(declare-fun bs!229724 () Bool)

(assert (= bs!229724 d!260961))

(declare-fun m!1070283 () Bool)

(assert (=> bs!229724 m!1070283))

(assert (=> b!835659 d!260961))

(declare-fun b!836006 () Bool)

(declare-fun e!549885 () Bool)

(declare-fun e!549882 () Bool)

(assert (=> b!836006 (= e!549885 e!549882)))

(declare-fun c!136523 () Bool)

(assert (=> b!836006 (= c!136523 ((_ is Star!2091) (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177))))))

(declare-fun b!836007 () Bool)

(declare-fun res!382626 () Bool)

(declare-fun e!549887 () Bool)

(assert (=> b!836007 (=> (not res!382626) (not e!549887))))

(declare-fun call!50137 () Bool)

(assert (=> b!836007 (= res!382626 call!50137)))

(declare-fun e!549884 () Bool)

(assert (=> b!836007 (= e!549884 e!549887)))

(declare-fun b!836008 () Bool)

(declare-fun res!382630 () Bool)

(declare-fun e!549883 () Bool)

(assert (=> b!836008 (=> res!382630 e!549883)))

(assert (=> b!836008 (= res!382630 (not ((_ is Concat!3822) (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177)))))))

(assert (=> b!836008 (= e!549884 e!549883)))

(declare-fun b!836009 () Bool)

(declare-fun call!50136 () Bool)

(assert (=> b!836009 (= e!549887 call!50136)))

(declare-fun b!836010 () Bool)

(assert (=> b!836010 (= e!549882 e!549884)))

(declare-fun c!136524 () Bool)

(assert (=> b!836010 (= c!136524 ((_ is Union!2091) (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177))))))

(declare-fun d!260963 () Bool)

(declare-fun res!382629 () Bool)

(assert (=> d!260963 (=> res!382629 e!549885)))

(assert (=> d!260963 (= res!382629 ((_ is ElementMatch!2091) (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177))))))

(assert (=> d!260963 (= (validRegex!644 (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177))) e!549885)))

(declare-fun b!836011 () Bool)

(declare-fun e!549886 () Bool)

(assert (=> b!836011 (= e!549882 e!549886)))

(declare-fun res!382627 () Bool)

(assert (=> b!836011 (= res!382627 (not (nullable!542 (reg!2420 (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177))))))))

(assert (=> b!836011 (=> (not res!382627) (not e!549886))))

(declare-fun b!836012 () Bool)

(declare-fun e!549881 () Bool)

(assert (=> b!836012 (= e!549883 e!549881)))

(declare-fun res!382628 () Bool)

(assert (=> b!836012 (=> (not res!382628) (not e!549881))))

(assert (=> b!836012 (= res!382628 call!50136)))

(declare-fun bm!50131 () Bool)

(assert (=> bm!50131 (= call!50136 (validRegex!644 (ite c!136524 (regTwo!4695 (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177))) (regOne!4694 (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177))))))))

(declare-fun b!836013 () Bool)

(declare-fun call!50138 () Bool)

(assert (=> b!836013 (= e!549886 call!50138)))

(declare-fun bm!50132 () Bool)

(assert (=> bm!50132 (= call!50137 call!50138)))

(declare-fun bm!50133 () Bool)

(assert (=> bm!50133 (= call!50138 (validRegex!644 (ite c!136523 (reg!2420 (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177))) (ite c!136524 (regOne!4695 (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177))) (regTwo!4694 (ite c!136427 (regTwo!4695 r!27177) (regOne!4694 r!27177)))))))))

(declare-fun b!836014 () Bool)

(assert (=> b!836014 (= e!549881 call!50137)))

(assert (= (and d!260963 (not res!382629)) b!836006))

(assert (= (and b!836006 c!136523) b!836011))

(assert (= (and b!836006 (not c!136523)) b!836010))

(assert (= (and b!836011 res!382627) b!836013))

(assert (= (and b!836010 c!136524) b!836007))

(assert (= (and b!836010 (not c!136524)) b!836008))

(assert (= (and b!836007 res!382626) b!836009))

(assert (= (and b!836008 (not res!382630)) b!836012))

(assert (= (and b!836012 res!382628) b!836014))

(assert (= (or b!836007 b!836014) bm!50132))

(assert (= (or b!836009 b!836012) bm!50131))

(assert (= (or b!836013 bm!50132) bm!50133))

(declare-fun m!1070285 () Bool)

(assert (=> b!836011 m!1070285))

(declare-fun m!1070287 () Bool)

(assert (=> bm!50131 m!1070287))

(declare-fun m!1070289 () Bool)

(assert (=> bm!50133 m!1070289))

(assert (=> bm!50053 d!260963))

(assert (=> b!835824 d!260915))

(declare-fun c!136529 () Bool)

(declare-fun c!136528 () Bool)

(declare-fun bm!50134 () Bool)

(declare-fun call!50139 () Int)

(assert (=> bm!50134 (= call!50139 (RegexPrimitiveSize!98 (ite c!136528 (regOne!4694 (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))) (ite c!136529 (reg!2420 (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))) (regOne!4695 (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177))))))))))

(declare-fun b!836015 () Bool)

(declare-fun e!549888 () Int)

(declare-fun call!50141 () Int)

(assert (=> b!836015 (= e!549888 (+ 1 call!50141))))

(declare-fun call!50140 () Int)

(declare-fun bm!50135 () Bool)

(assert (=> bm!50135 (= call!50140 (RegexPrimitiveSize!98 (ite c!136528 (regTwo!4694 (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))) (regTwo!4695 (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))))))))

(declare-fun b!836016 () Bool)

(declare-fun c!136526 () Bool)

(assert (=> b!836016 (= c!136526 ((_ is EmptyExpr!2091) (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))))))

(declare-fun e!549892 () Int)

(declare-fun e!549889 () Int)

(assert (=> b!836016 (= e!549892 e!549889)))

(declare-fun b!836017 () Bool)

(declare-fun e!549891 () Int)

(assert (=> b!836017 (= e!549891 0)))

(declare-fun b!836018 () Bool)

(declare-fun e!549890 () Int)

(assert (=> b!836018 (= e!549890 1)))

(declare-fun b!836019 () Bool)

(assert (=> b!836019 (= e!549891 (+ 1 call!50141 call!50140))))

(declare-fun d!260965 () Bool)

(declare-fun lt!317930 () Int)

(assert (=> d!260965 (>= lt!317930 0)))

(assert (=> d!260965 (= lt!317930 e!549890)))

(declare-fun c!136525 () Bool)

(assert (=> d!260965 (= c!136525 ((_ is ElementMatch!2091) (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))))))

(assert (=> d!260965 (= (RegexPrimitiveSize!98 (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))) lt!317930)))

(declare-fun b!836020 () Bool)

(assert (=> b!836020 (= e!549890 e!549892)))

(assert (=> b!836020 (= c!136528 ((_ is Concat!3822) (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))))))

(declare-fun b!836021 () Bool)

(assert (=> b!836021 (= e!549889 e!549888)))

(assert (=> b!836021 (= c!136529 ((_ is Star!2091) (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))))))

(declare-fun b!836022 () Bool)

(declare-fun c!136527 () Bool)

(assert (=> b!836022 (= c!136527 ((_ is EmptyLang!2091) (ite c!136470 (regOne!4694 r!27177) (ite c!136471 (reg!2420 r!27177) (regOne!4695 r!27177)))))))

(assert (=> b!836022 (= e!549888 e!549891)))

(declare-fun bm!50136 () Bool)

(assert (=> bm!50136 (= call!50141 call!50139)))

(declare-fun b!836023 () Bool)

(assert (=> b!836023 (= e!549892 (+ 1 call!50139 call!50140))))

(declare-fun b!836024 () Bool)

(assert (=> b!836024 (= e!549889 0)))

(assert (= (and d!260965 c!136525) b!836018))

(assert (= (and d!260965 (not c!136525)) b!836020))

(assert (= (and b!836020 c!136528) b!836023))

(assert (= (and b!836020 (not c!136528)) b!836016))

(assert (= (and b!836016 c!136526) b!836024))

(assert (= (and b!836016 (not c!136526)) b!836021))

(assert (= (and b!836021 c!136529) b!836015))

(assert (= (and b!836021 (not c!136529)) b!836022))

(assert (= (and b!836022 c!136527) b!836017))

(assert (= (and b!836022 (not c!136527)) b!836019))

(assert (= (or b!836015 b!836019) bm!50136))

(assert (= (or b!836023 bm!50136) bm!50134))

(assert (= (or b!836023 b!836019) bm!50135))

(declare-fun m!1070291 () Bool)

(assert (=> bm!50134 m!1070291))

(declare-fun m!1070293 () Bool)

(assert (=> bm!50135 m!1070293))

(assert (=> bm!50085 d!260965))

(declare-fun d!260967 () Bool)

(declare-fun lt!317931 () Bool)

(assert (=> d!260967 (= lt!317931 (select (content!1329 (t!93209 (firstChars!62 (regOne!4694 r!27177)))) c!13916))))

(declare-fun e!549893 () Bool)

(assert (=> d!260967 (= lt!317931 e!549893)))

(declare-fun res!382632 () Bool)

(assert (=> d!260967 (=> (not res!382632) (not e!549893))))

(assert (=> d!260967 (= res!382632 ((_ is Cons!8901) (t!93209 (firstChars!62 (regOne!4694 r!27177)))))))

(assert (=> d!260967 (= (contains!1682 (t!93209 (firstChars!62 (regOne!4694 r!27177))) c!13916) lt!317931)))

(declare-fun b!836025 () Bool)

(declare-fun e!549894 () Bool)

(assert (=> b!836025 (= e!549893 e!549894)))

(declare-fun res!382631 () Bool)

(assert (=> b!836025 (=> res!382631 e!549894)))

(assert (=> b!836025 (= res!382631 (= (h!14302 (t!93209 (firstChars!62 (regOne!4694 r!27177)))) c!13916))))

(declare-fun b!836026 () Bool)

(assert (=> b!836026 (= e!549894 (contains!1682 (t!93209 (t!93209 (firstChars!62 (regOne!4694 r!27177)))) c!13916))))

(assert (= (and d!260967 res!382632) b!836025))

(assert (= (and b!836025 (not res!382631)) b!836026))

(assert (=> d!260967 m!1070215))

(declare-fun m!1070295 () Bool)

(assert (=> d!260967 m!1070295))

(declare-fun m!1070297 () Bool)

(assert (=> b!836026 m!1070297))

(assert (=> b!835603 d!260967))

(declare-fun b!836027 () Bool)

(declare-fun e!549898 () List!8917)

(assert (=> b!836027 (= e!549898 (Cons!8901 (c!136390 (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))) Nil!8901))))

(declare-fun b!836028 () Bool)

(declare-fun e!549899 () List!8917)

(declare-fun call!50144 () List!8917)

(assert (=> b!836028 (= e!549899 call!50144)))

(declare-fun bm!50137 () Bool)

(declare-fun call!50146 () List!8917)

(declare-fun call!50143 () List!8917)

(declare-fun call!50145 () List!8917)

(declare-fun c!136534 () Bool)

(assert (=> bm!50137 (= call!50144 (++!2317 (ite c!136534 call!50146 call!50145) (ite c!136534 call!50143 call!50146)))))

(declare-fun bm!50138 () Bool)

(assert (=> bm!50138 (= call!50145 call!50143)))

(declare-fun b!836029 () Bool)

(declare-fun e!549897 () List!8917)

(assert (=> b!836029 (= e!549897 e!549899)))

(assert (=> b!836029 (= c!136534 ((_ is Union!2091) (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))))))

(declare-fun call!50142 () List!8917)

(declare-fun c!136532 () Bool)

(declare-fun bm!50139 () Bool)

(assert (=> bm!50139 (= call!50142 (firstChars!62 (ite c!136532 (reg!2420 (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))) (ite c!136534 (regTwo!4695 (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))) (regOne!4694 (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))))))))

(declare-fun bm!50140 () Bool)

(assert (=> bm!50140 (= call!50143 call!50142)))

(declare-fun d!260969 () Bool)

(declare-fun c!136533 () Bool)

(assert (=> d!260969 (= c!136533 (or ((_ is EmptyExpr!2091) (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))) ((_ is EmptyLang!2091) (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))))))

(declare-fun e!549896 () List!8917)

(assert (=> d!260969 (= (firstChars!62 (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))) e!549896)))

(declare-fun b!836030 () Bool)

(declare-fun e!549895 () List!8917)

(assert (=> b!836030 (= e!549895 call!50144)))

(declare-fun b!836031 () Bool)

(assert (=> b!836031 (= e!549896 e!549898)))

(declare-fun c!136531 () Bool)

(assert (=> b!836031 (= c!136531 ((_ is ElementMatch!2091) (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))))))

(declare-fun b!836032 () Bool)

(assert (=> b!836032 (= e!549896 Nil!8901)))

(declare-fun bm!50141 () Bool)

(assert (=> bm!50141 (= call!50146 (firstChars!62 (ite c!136534 (regOne!4695 (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))) (regTwo!4694 (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))))))))

(declare-fun b!836033 () Bool)

(assert (=> b!836033 (= c!136532 ((_ is Star!2091) (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))))))

(assert (=> b!836033 (= e!549898 e!549897)))

(declare-fun b!836034 () Bool)

(assert (=> b!836034 (= e!549895 call!50145)))

(declare-fun b!836035 () Bool)

(declare-fun c!136530 () Bool)

(assert (=> b!836035 (= c!136530 (nullable!542 (regOne!4694 (ite c!136411 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))))))

(assert (=> b!836035 (= e!549899 e!549895)))

(declare-fun b!836036 () Bool)

(assert (=> b!836036 (= e!549897 call!50142)))

(assert (= (and d!260969 c!136533) b!836032))

(assert (= (and d!260969 (not c!136533)) b!836031))

(assert (= (and b!836031 c!136531) b!836027))

(assert (= (and b!836031 (not c!136531)) b!836033))

(assert (= (and b!836033 c!136532) b!836036))

(assert (= (and b!836033 (not c!136532)) b!836029))

(assert (= (and b!836029 c!136534) b!836028))

(assert (= (and b!836029 (not c!136534)) b!836035))

(assert (= (and b!836035 c!136530) b!836030))

(assert (= (and b!836035 (not c!136530)) b!836034))

(assert (= (or b!836030 b!836034) bm!50138))

(assert (= (or b!836028 bm!50138) bm!50140))

(assert (= (or b!836028 b!836030) bm!50141))

(assert (= (or b!836028 b!836030) bm!50137))

(assert (= (or b!836036 bm!50140) bm!50139))

(declare-fun m!1070299 () Bool)

(assert (=> bm!50137 m!1070299))

(declare-fun m!1070301 () Bool)

(assert (=> bm!50139 m!1070301))

(declare-fun m!1070303 () Bool)

(assert (=> bm!50141 m!1070303))

(declare-fun m!1070305 () Bool)

(assert (=> b!836035 m!1070305))

(assert (=> bm!50036 d!260969))

(declare-fun bm!50142 () Bool)

(declare-fun call!50147 () Int)

(declare-fun c!136539 () Bool)

(declare-fun c!136538 () Bool)

(assert (=> bm!50142 (= call!50147 (RegexPrimitiveSize!98 (ite c!136538 (regOne!4694 (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))) (ite c!136539 (reg!2420 (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))) (regOne!4695 (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177)))))))))

(declare-fun b!836037 () Bool)

(declare-fun e!549900 () Int)

(declare-fun call!50149 () Int)

(assert (=> b!836037 (= e!549900 (+ 1 call!50149))))

(declare-fun bm!50143 () Bool)

(declare-fun call!50148 () Int)

(assert (=> bm!50143 (= call!50148 (RegexPrimitiveSize!98 (ite c!136538 (regTwo!4694 (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))) (regTwo!4695 (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))))))))

(declare-fun b!836038 () Bool)

(declare-fun c!136536 () Bool)

(assert (=> b!836038 (= c!136536 ((_ is EmptyExpr!2091) (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))))))

(declare-fun e!549904 () Int)

(declare-fun e!549901 () Int)

(assert (=> b!836038 (= e!549904 e!549901)))

(declare-fun b!836039 () Bool)

(declare-fun e!549903 () Int)

(assert (=> b!836039 (= e!549903 0)))

(declare-fun b!836040 () Bool)

(declare-fun e!549902 () Int)

(assert (=> b!836040 (= e!549902 1)))

(declare-fun b!836041 () Bool)

(assert (=> b!836041 (= e!549903 (+ 1 call!50149 call!50148))))

(declare-fun d!260971 () Bool)

(declare-fun lt!317932 () Int)

(assert (=> d!260971 (>= lt!317932 0)))

(assert (=> d!260971 (= lt!317932 e!549902)))

(declare-fun c!136535 () Bool)

(assert (=> d!260971 (= c!136535 ((_ is ElementMatch!2091) (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))))))

(assert (=> d!260971 (= (RegexPrimitiveSize!98 (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))) lt!317932)))

(declare-fun b!836042 () Bool)

(assert (=> b!836042 (= e!549902 e!549904)))

(assert (=> b!836042 (= c!136538 ((_ is Concat!3822) (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))))))

(declare-fun b!836043 () Bool)

(assert (=> b!836043 (= e!549901 e!549900)))

(assert (=> b!836043 (= c!136539 ((_ is Star!2091) (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))))))

(declare-fun b!836044 () Bool)

(declare-fun c!136537 () Bool)

(assert (=> b!836044 (= c!136537 ((_ is EmptyLang!2091) (ite c!136470 (regTwo!4694 r!27177) (regTwo!4695 r!27177))))))

(assert (=> b!836044 (= e!549900 e!549903)))

(declare-fun bm!50144 () Bool)

(assert (=> bm!50144 (= call!50149 call!50147)))

(declare-fun b!836045 () Bool)

(assert (=> b!836045 (= e!549904 (+ 1 call!50147 call!50148))))

(declare-fun b!836046 () Bool)

(assert (=> b!836046 (= e!549901 0)))

(assert (= (and d!260971 c!136535) b!836040))

(assert (= (and d!260971 (not c!136535)) b!836042))

(assert (= (and b!836042 c!136538) b!836045))

(assert (= (and b!836042 (not c!136538)) b!836038))

(assert (= (and b!836038 c!136536) b!836046))

(assert (= (and b!836038 (not c!136536)) b!836043))

(assert (= (and b!836043 c!136539) b!836037))

(assert (= (and b!836043 (not c!136539)) b!836044))

(assert (= (and b!836044 c!136537) b!836039))

(assert (= (and b!836044 (not c!136537)) b!836041))

(assert (= (or b!836037 b!836041) bm!50144))

(assert (= (or b!836045 bm!50144) bm!50142))

(assert (= (or b!836045 b!836041) bm!50143))

(declare-fun m!1070307 () Bool)

(assert (=> bm!50142 m!1070307))

(declare-fun m!1070309 () Bool)

(assert (=> bm!50143 m!1070309))

(assert (=> bm!50086 d!260971))

(declare-fun b!836047 () Bool)

(declare-fun e!549909 () Bool)

(declare-fun e!549906 () Bool)

(assert (=> b!836047 (= e!549909 e!549906)))

(declare-fun c!136540 () Bool)

(assert (=> b!836047 (= c!136540 ((_ is Star!2091) (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177)))))))

(declare-fun b!836048 () Bool)

(declare-fun res!382633 () Bool)

(declare-fun e!549911 () Bool)

(assert (=> b!836048 (=> (not res!382633) (not e!549911))))

(declare-fun call!50151 () Bool)

(assert (=> b!836048 (= res!382633 call!50151)))

(declare-fun e!549908 () Bool)

(assert (=> b!836048 (= e!549908 e!549911)))

(declare-fun b!836049 () Bool)

(declare-fun res!382637 () Bool)

(declare-fun e!549907 () Bool)

(assert (=> b!836049 (=> res!382637 e!549907)))

(assert (=> b!836049 (= res!382637 (not ((_ is Concat!3822) (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177))))))))

(assert (=> b!836049 (= e!549908 e!549907)))

(declare-fun b!836050 () Bool)

(declare-fun call!50150 () Bool)

(assert (=> b!836050 (= e!549911 call!50150)))

(declare-fun b!836051 () Bool)

(assert (=> b!836051 (= e!549906 e!549908)))

(declare-fun c!136541 () Bool)

(assert (=> b!836051 (= c!136541 ((_ is Union!2091) (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177)))))))

(declare-fun d!260973 () Bool)

(declare-fun res!382636 () Bool)

(assert (=> d!260973 (=> res!382636 e!549909)))

(assert (=> d!260973 (= res!382636 ((_ is ElementMatch!2091) (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177)))))))

(assert (=> d!260973 (= (validRegex!644 (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177)))) e!549909)))

(declare-fun b!836052 () Bool)

(declare-fun e!549910 () Bool)

(assert (=> b!836052 (= e!549906 e!549910)))

(declare-fun res!382634 () Bool)

(assert (=> b!836052 (= res!382634 (not (nullable!542 (reg!2420 (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177)))))))))

(assert (=> b!836052 (=> (not res!382634) (not e!549910))))

(declare-fun b!836053 () Bool)

(declare-fun e!549905 () Bool)

(assert (=> b!836053 (= e!549907 e!549905)))

(declare-fun res!382635 () Bool)

(assert (=> b!836053 (=> (not res!382635) (not e!549905))))

(assert (=> b!836053 (= res!382635 call!50150)))

(declare-fun bm!50145 () Bool)

(assert (=> bm!50145 (= call!50150 (validRegex!644 (ite c!136541 (regTwo!4695 (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177)))) (regOne!4694 (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177)))))))))

(declare-fun b!836054 () Bool)

(declare-fun call!50152 () Bool)

(assert (=> b!836054 (= e!549910 call!50152)))

(declare-fun bm!50146 () Bool)

(assert (=> bm!50146 (= call!50151 call!50152)))

(declare-fun bm!50147 () Bool)

(assert (=> bm!50147 (= call!50152 (validRegex!644 (ite c!136540 (reg!2420 (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177)))) (ite c!136541 (regOne!4695 (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177)))) (regTwo!4694 (ite c!136426 (reg!2420 r!27177) (ite c!136427 (regOne!4695 r!27177) (regTwo!4694 r!27177))))))))))

(declare-fun b!836055 () Bool)

(assert (=> b!836055 (= e!549905 call!50151)))

(assert (= (and d!260973 (not res!382636)) b!836047))

(assert (= (and b!836047 c!136540) b!836052))

(assert (= (and b!836047 (not c!136540)) b!836051))

(assert (= (and b!836052 res!382634) b!836054))

(assert (= (and b!836051 c!136541) b!836048))

(assert (= (and b!836051 (not c!136541)) b!836049))

(assert (= (and b!836048 res!382633) b!836050))

(assert (= (and b!836049 (not res!382637)) b!836053))

(assert (= (and b!836053 res!382635) b!836055))

(assert (= (or b!836048 b!836055) bm!50146))

(assert (= (or b!836050 b!836053) bm!50145))

(assert (= (or b!836054 bm!50146) bm!50147))

(declare-fun m!1070311 () Bool)

(assert (=> b!836052 m!1070311))

(declare-fun m!1070313 () Bool)

(assert (=> bm!50145 m!1070313))

(declare-fun m!1070315 () Bool)

(assert (=> bm!50147 m!1070315))

(assert (=> bm!50055 d!260973))

(declare-fun d!260975 () Bool)

(declare-fun c!136542 () Bool)

(assert (=> d!260975 (= c!136542 ((_ is Nil!8901) (firstChars!62 r!27177)))))

(declare-fun e!549912 () (InoxSet C!4752))

(assert (=> d!260975 (= (content!1329 (firstChars!62 r!27177)) e!549912)))

(declare-fun b!836056 () Bool)

(assert (=> b!836056 (= e!549912 ((as const (Array C!4752 Bool)) false))))

(declare-fun b!836057 () Bool)

(assert (=> b!836057 (= e!549912 ((_ map or) (store ((as const (Array C!4752 Bool)) false) (h!14302 (firstChars!62 r!27177)) true) (content!1329 (t!93209 (firstChars!62 r!27177)))))))

(assert (= (and d!260975 c!136542) b!836056))

(assert (= (and d!260975 (not c!136542)) b!836057))

(declare-fun m!1070317 () Bool)

(assert (=> b!836057 m!1070317))

(assert (=> b!836057 m!1070219))

(assert (=> d!260931 d!260975))

(declare-fun d!260977 () Bool)

(declare-fun e!549914 () Bool)

(assert (=> d!260977 e!549914))

(declare-fun res!382639 () Bool)

(assert (=> d!260977 (=> (not res!382639) (not e!549914))))

(declare-fun lt!317933 () List!8917)

(assert (=> d!260977 (= res!382639 (= (content!1329 lt!317933) ((_ map or) (content!1329 (ite c!136476 call!50099 call!50098)) (content!1329 (ite c!136476 call!50096 call!50099)))))))

(declare-fun e!549913 () List!8917)

(assert (=> d!260977 (= lt!317933 e!549913)))

(declare-fun c!136543 () Bool)

(assert (=> d!260977 (= c!136543 ((_ is Nil!8901) (ite c!136476 call!50099 call!50098)))))

(assert (=> d!260977 (= (++!2317 (ite c!136476 call!50099 call!50098) (ite c!136476 call!50096 call!50099)) lt!317933)))

(declare-fun b!836060 () Bool)

(declare-fun res!382638 () Bool)

(assert (=> b!836060 (=> (not res!382638) (not e!549914))))

(assert (=> b!836060 (= res!382638 (= (size!7488 lt!317933) (+ (size!7488 (ite c!136476 call!50099 call!50098)) (size!7488 (ite c!136476 call!50096 call!50099)))))))

(declare-fun b!836061 () Bool)

(assert (=> b!836061 (= e!549914 (or (not (= (ite c!136476 call!50096 call!50099) Nil!8901)) (= lt!317933 (ite c!136476 call!50099 call!50098))))))

(declare-fun b!836058 () Bool)

(assert (=> b!836058 (= e!549913 (ite c!136476 call!50096 call!50099))))

(declare-fun b!836059 () Bool)

(assert (=> b!836059 (= e!549913 (Cons!8901 (h!14302 (ite c!136476 call!50099 call!50098)) (++!2317 (t!93209 (ite c!136476 call!50099 call!50098)) (ite c!136476 call!50096 call!50099))))))

(assert (= (and d!260977 c!136543) b!836058))

(assert (= (and d!260977 (not c!136543)) b!836059))

(assert (= (and d!260977 res!382639) b!836060))

(assert (= (and b!836060 res!382638) b!836061))

(declare-fun m!1070319 () Bool)

(assert (=> d!260977 m!1070319))

(declare-fun m!1070321 () Bool)

(assert (=> d!260977 m!1070321))

(declare-fun m!1070323 () Bool)

(assert (=> d!260977 m!1070323))

(declare-fun m!1070325 () Bool)

(assert (=> b!836060 m!1070325))

(declare-fun m!1070327 () Bool)

(assert (=> b!836060 m!1070327))

(declare-fun m!1070329 () Bool)

(assert (=> b!836060 m!1070329))

(declare-fun m!1070331 () Bool)

(assert (=> b!836059 m!1070331))

(assert (=> bm!50090 d!260977))

(declare-fun b!836062 () Bool)

(declare-fun e!549919 () Bool)

(declare-fun e!549916 () Bool)

(assert (=> b!836062 (= e!549919 e!549916)))

(declare-fun c!136544 () Bool)

(assert (=> b!836062 (= c!136544 ((_ is Star!2091) (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))))))

(declare-fun b!836063 () Bool)

(declare-fun res!382640 () Bool)

(declare-fun e!549921 () Bool)

(assert (=> b!836063 (=> (not res!382640) (not e!549921))))

(declare-fun call!50154 () Bool)

(assert (=> b!836063 (= res!382640 call!50154)))

(declare-fun e!549918 () Bool)

(assert (=> b!836063 (= e!549918 e!549921)))

(declare-fun b!836064 () Bool)

(declare-fun res!382644 () Bool)

(declare-fun e!549917 () Bool)

(assert (=> b!836064 (=> res!382644 e!549917)))

(assert (=> b!836064 (= res!382644 (not ((_ is Concat!3822) (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))))))))

(assert (=> b!836064 (= e!549918 e!549917)))

(declare-fun b!836065 () Bool)

(declare-fun call!50153 () Bool)

(assert (=> b!836065 (= e!549921 call!50153)))

(declare-fun b!836066 () Bool)

(assert (=> b!836066 (= e!549916 e!549918)))

(declare-fun c!136545 () Bool)

(assert (=> b!836066 (= c!136545 ((_ is Union!2091) (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))))))

(declare-fun d!260979 () Bool)

(declare-fun res!382643 () Bool)

(assert (=> d!260979 (=> res!382643 e!549919)))

(assert (=> d!260979 (= res!382643 ((_ is ElementMatch!2091) (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))))))

(assert (=> d!260979 (= (validRegex!644 (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))) e!549919)))

(declare-fun b!836067 () Bool)

(declare-fun e!549920 () Bool)

(assert (=> b!836067 (= e!549916 e!549920)))

(declare-fun res!382641 () Bool)

(assert (=> b!836067 (= res!382641 (not (nullable!542 (reg!2420 (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))))))))

(assert (=> b!836067 (=> (not res!382641) (not e!549920))))

(declare-fun b!836068 () Bool)

(declare-fun e!549915 () Bool)

(assert (=> b!836068 (= e!549917 e!549915)))

(declare-fun res!382642 () Bool)

(assert (=> b!836068 (=> (not res!382642) (not e!549915))))

(assert (=> b!836068 (= res!382642 call!50153)))

(declare-fun bm!50148 () Bool)

(assert (=> bm!50148 (= call!50153 (validRegex!644 (ite c!136545 (regTwo!4695 (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))) (regOne!4694 (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))))))))

(declare-fun b!836069 () Bool)

(declare-fun call!50155 () Bool)

(assert (=> b!836069 (= e!549920 call!50155)))

(declare-fun bm!50149 () Bool)

(assert (=> bm!50149 (= call!50154 call!50155)))

(declare-fun bm!50150 () Bool)

(assert (=> bm!50150 (= call!50155 (validRegex!644 (ite c!136544 (reg!2420 (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))) (ite c!136545 (regOne!4695 (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177))))) (regTwo!4694 (ite c!136428 (reg!2420 (regOne!4694 r!27177)) (ite c!136429 (regOne!4695 (regOne!4694 r!27177)) (regTwo!4694 (regOne!4694 r!27177)))))))))))

(declare-fun b!836070 () Bool)

(assert (=> b!836070 (= e!549915 call!50154)))

(assert (= (and d!260979 (not res!382643)) b!836062))

(assert (= (and b!836062 c!136544) b!836067))

(assert (= (and b!836062 (not c!136544)) b!836066))

(assert (= (and b!836067 res!382641) b!836069))

(assert (= (and b!836066 c!136545) b!836063))

(assert (= (and b!836066 (not c!136545)) b!836064))

(assert (= (and b!836063 res!382640) b!836065))

(assert (= (and b!836064 (not res!382644)) b!836068))

(assert (= (and b!836068 res!382642) b!836070))

(assert (= (or b!836063 b!836070) bm!50149))

(assert (= (or b!836065 b!836068) bm!50148))

(assert (= (or b!836069 bm!50149) bm!50150))

(declare-fun m!1070333 () Bool)

(assert (=> b!836067 m!1070333))

(declare-fun m!1070335 () Bool)

(assert (=> bm!50148 m!1070335))

(declare-fun m!1070337 () Bool)

(assert (=> bm!50150 m!1070337))

(assert (=> bm!50058 d!260979))

(declare-fun b!836072 () Bool)

(declare-fun e!549922 () Bool)

(declare-fun tp!262035 () Bool)

(declare-fun tp!262037 () Bool)

(assert (=> b!836072 (= e!549922 (and tp!262035 tp!262037))))

(declare-fun b!836074 () Bool)

(declare-fun tp!262036 () Bool)

(declare-fun tp!262039 () Bool)

(assert (=> b!836074 (= e!549922 (and tp!262036 tp!262039))))

(declare-fun b!836071 () Bool)

(assert (=> b!836071 (= e!549922 tp_is_empty!3905)))

(declare-fun b!836073 () Bool)

(declare-fun tp!262038 () Bool)

(assert (=> b!836073 (= e!549922 tp!262038)))

(assert (=> b!835853 (= tp!261981 e!549922)))

(assert (= (and b!835853 ((_ is ElementMatch!2091) (regOne!4695 (regTwo!4694 r!27177)))) b!836071))

(assert (= (and b!835853 ((_ is Concat!3822) (regOne!4695 (regTwo!4694 r!27177)))) b!836072))

(assert (= (and b!835853 ((_ is Star!2091) (regOne!4695 (regTwo!4694 r!27177)))) b!836073))

(assert (= (and b!835853 ((_ is Union!2091) (regOne!4695 (regTwo!4694 r!27177)))) b!836074))

(declare-fun b!836076 () Bool)

(declare-fun e!549923 () Bool)

(declare-fun tp!262040 () Bool)

(declare-fun tp!262042 () Bool)

(assert (=> b!836076 (= e!549923 (and tp!262040 tp!262042))))

(declare-fun b!836078 () Bool)

(declare-fun tp!262041 () Bool)

(declare-fun tp!262044 () Bool)

(assert (=> b!836078 (= e!549923 (and tp!262041 tp!262044))))

(declare-fun b!836075 () Bool)

(assert (=> b!836075 (= e!549923 tp_is_empty!3905)))

(declare-fun b!836077 () Bool)

(declare-fun tp!262043 () Bool)

(assert (=> b!836077 (= e!549923 tp!262043)))

(assert (=> b!835853 (= tp!261984 e!549923)))

(assert (= (and b!835853 ((_ is ElementMatch!2091) (regTwo!4695 (regTwo!4694 r!27177)))) b!836075))

(assert (= (and b!835853 ((_ is Concat!3822) (regTwo!4695 (regTwo!4694 r!27177)))) b!836076))

(assert (= (and b!835853 ((_ is Star!2091) (regTwo!4695 (regTwo!4694 r!27177)))) b!836077))

(assert (= (and b!835853 ((_ is Union!2091) (regTwo!4695 (regTwo!4694 r!27177)))) b!836078))

(declare-fun b!836080 () Bool)

(declare-fun e!549924 () Bool)

(declare-fun tp!262045 () Bool)

(declare-fun tp!262047 () Bool)

(assert (=> b!836080 (= e!549924 (and tp!262045 tp!262047))))

(declare-fun b!836082 () Bool)

(declare-fun tp!262046 () Bool)

(declare-fun tp!262049 () Bool)

(assert (=> b!836082 (= e!549924 (and tp!262046 tp!262049))))

(declare-fun b!836079 () Bool)

(assert (=> b!836079 (= e!549924 tp_is_empty!3905)))

(declare-fun b!836081 () Bool)

(declare-fun tp!262048 () Bool)

(assert (=> b!836081 (= e!549924 tp!262048)))

(assert (=> b!835861 (= tp!261991 e!549924)))

(assert (= (and b!835861 ((_ is ElementMatch!2091) (regOne!4695 (regOne!4695 r!27177)))) b!836079))

(assert (= (and b!835861 ((_ is Concat!3822) (regOne!4695 (regOne!4695 r!27177)))) b!836080))

(assert (= (and b!835861 ((_ is Star!2091) (regOne!4695 (regOne!4695 r!27177)))) b!836081))

(assert (= (and b!835861 ((_ is Union!2091) (regOne!4695 (regOne!4695 r!27177)))) b!836082))

(declare-fun b!836084 () Bool)

(declare-fun e!549925 () Bool)

(declare-fun tp!262050 () Bool)

(declare-fun tp!262052 () Bool)

(assert (=> b!836084 (= e!549925 (and tp!262050 tp!262052))))

(declare-fun b!836086 () Bool)

(declare-fun tp!262051 () Bool)

(declare-fun tp!262054 () Bool)

(assert (=> b!836086 (= e!549925 (and tp!262051 tp!262054))))

(declare-fun b!836083 () Bool)

(assert (=> b!836083 (= e!549925 tp_is_empty!3905)))

(declare-fun b!836085 () Bool)

(declare-fun tp!262053 () Bool)

(assert (=> b!836085 (= e!549925 tp!262053)))

(assert (=> b!835861 (= tp!261994 e!549925)))

(assert (= (and b!835861 ((_ is ElementMatch!2091) (regTwo!4695 (regOne!4695 r!27177)))) b!836083))

(assert (= (and b!835861 ((_ is Concat!3822) (regTwo!4695 (regOne!4695 r!27177)))) b!836084))

(assert (= (and b!835861 ((_ is Star!2091) (regTwo!4695 (regOne!4695 r!27177)))) b!836085))

(assert (= (and b!835861 ((_ is Union!2091) (regTwo!4695 (regOne!4695 r!27177)))) b!836086))

(declare-fun b!836088 () Bool)

(declare-fun e!549926 () Bool)

(declare-fun tp!262055 () Bool)

(declare-fun tp!262057 () Bool)

(assert (=> b!836088 (= e!549926 (and tp!262055 tp!262057))))

(declare-fun b!836090 () Bool)

(declare-fun tp!262056 () Bool)

(declare-fun tp!262059 () Bool)

(assert (=> b!836090 (= e!549926 (and tp!262056 tp!262059))))

(declare-fun b!836087 () Bool)

(assert (=> b!836087 (= e!549926 tp_is_empty!3905)))

(declare-fun b!836089 () Bool)

(declare-fun tp!262058 () Bool)

(assert (=> b!836089 (= e!549926 tp!262058)))

(assert (=> b!835838 (= tp!261978 e!549926)))

(assert (= (and b!835838 ((_ is ElementMatch!2091) (reg!2420 (regOne!4694 r!27177)))) b!836087))

(assert (= (and b!835838 ((_ is Concat!3822) (reg!2420 (regOne!4694 r!27177)))) b!836088))

(assert (= (and b!835838 ((_ is Star!2091) (reg!2420 (regOne!4694 r!27177)))) b!836089))

(assert (= (and b!835838 ((_ is Union!2091) (reg!2420 (regOne!4694 r!27177)))) b!836090))

(declare-fun b!836092 () Bool)

(declare-fun e!549927 () Bool)

(declare-fun tp!262060 () Bool)

(declare-fun tp!262062 () Bool)

(assert (=> b!836092 (= e!549927 (and tp!262060 tp!262062))))

(declare-fun b!836094 () Bool)

(declare-fun tp!262061 () Bool)

(declare-fun tp!262064 () Bool)

(assert (=> b!836094 (= e!549927 (and tp!262061 tp!262064))))

(declare-fun b!836091 () Bool)

(assert (=> b!836091 (= e!549927 tp_is_empty!3905)))

(declare-fun b!836093 () Bool)

(declare-fun tp!262063 () Bool)

(assert (=> b!836093 (= e!549927 tp!262063)))

(assert (=> b!835855 (= tp!261985 e!549927)))

(assert (= (and b!835855 ((_ is ElementMatch!2091) (regOne!4694 (reg!2420 r!27177)))) b!836091))

(assert (= (and b!835855 ((_ is Concat!3822) (regOne!4694 (reg!2420 r!27177)))) b!836092))

(assert (= (and b!835855 ((_ is Star!2091) (regOne!4694 (reg!2420 r!27177)))) b!836093))

(assert (= (and b!835855 ((_ is Union!2091) (regOne!4694 (reg!2420 r!27177)))) b!836094))

(declare-fun b!836096 () Bool)

(declare-fun e!549928 () Bool)

(declare-fun tp!262065 () Bool)

(declare-fun tp!262067 () Bool)

(assert (=> b!836096 (= e!549928 (and tp!262065 tp!262067))))

(declare-fun b!836098 () Bool)

(declare-fun tp!262066 () Bool)

(declare-fun tp!262069 () Bool)

(assert (=> b!836098 (= e!549928 (and tp!262066 tp!262069))))

(declare-fun b!836095 () Bool)

(assert (=> b!836095 (= e!549928 tp_is_empty!3905)))

(declare-fun b!836097 () Bool)

(declare-fun tp!262068 () Bool)

(assert (=> b!836097 (= e!549928 tp!262068)))

(assert (=> b!835855 (= tp!261987 e!549928)))

(assert (= (and b!835855 ((_ is ElementMatch!2091) (regTwo!4694 (reg!2420 r!27177)))) b!836095))

(assert (= (and b!835855 ((_ is Concat!3822) (regTwo!4694 (reg!2420 r!27177)))) b!836096))

(assert (= (and b!835855 ((_ is Star!2091) (regTwo!4694 (reg!2420 r!27177)))) b!836097))

(assert (= (and b!835855 ((_ is Union!2091) (regTwo!4694 (reg!2420 r!27177)))) b!836098))

(declare-fun b!836100 () Bool)

(declare-fun e!549929 () Bool)

(declare-fun tp!262070 () Bool)

(declare-fun tp!262072 () Bool)

(assert (=> b!836100 (= e!549929 (and tp!262070 tp!262072))))

(declare-fun b!836102 () Bool)

(declare-fun tp!262071 () Bool)

(declare-fun tp!262074 () Bool)

(assert (=> b!836102 (= e!549929 (and tp!262071 tp!262074))))

(declare-fun b!836099 () Bool)

(assert (=> b!836099 (= e!549929 tp_is_empty!3905)))

(declare-fun b!836101 () Bool)

(declare-fun tp!262073 () Bool)

(assert (=> b!836101 (= e!549929 tp!262073)))

(assert (=> b!835874 (= tp!261998 e!549929)))

(assert (= (and b!835874 ((_ is ElementMatch!2091) (reg!2420 (regTwo!4695 r!27177)))) b!836099))

(assert (= (and b!835874 ((_ is Concat!3822) (reg!2420 (regTwo!4695 r!27177)))) b!836100))

(assert (= (and b!835874 ((_ is Star!2091) (reg!2420 (regTwo!4695 r!27177)))) b!836101))

(assert (= (and b!835874 ((_ is Union!2091) (reg!2420 (regTwo!4695 r!27177)))) b!836102))

(declare-fun b!836104 () Bool)

(declare-fun e!549930 () Bool)

(declare-fun tp!262075 () Bool)

(declare-fun tp!262077 () Bool)

(assert (=> b!836104 (= e!549930 (and tp!262075 tp!262077))))

(declare-fun b!836106 () Bool)

(declare-fun tp!262076 () Bool)

(declare-fun tp!262079 () Bool)

(assert (=> b!836106 (= e!549930 (and tp!262076 tp!262079))))

(declare-fun b!836103 () Bool)

(assert (=> b!836103 (= e!549930 tp_is_empty!3905)))

(declare-fun b!836105 () Bool)

(declare-fun tp!262078 () Bool)

(assert (=> b!836105 (= e!549930 tp!262078)))

(assert (=> b!835851 (= tp!261980 e!549930)))

(assert (= (and b!835851 ((_ is ElementMatch!2091) (regOne!4694 (regTwo!4694 r!27177)))) b!836103))

(assert (= (and b!835851 ((_ is Concat!3822) (regOne!4694 (regTwo!4694 r!27177)))) b!836104))

(assert (= (and b!835851 ((_ is Star!2091) (regOne!4694 (regTwo!4694 r!27177)))) b!836105))

(assert (= (and b!835851 ((_ is Union!2091) (regOne!4694 (regTwo!4694 r!27177)))) b!836106))

(declare-fun b!836108 () Bool)

(declare-fun e!549931 () Bool)

(declare-fun tp!262080 () Bool)

(declare-fun tp!262082 () Bool)

(assert (=> b!836108 (= e!549931 (and tp!262080 tp!262082))))

(declare-fun b!836110 () Bool)

(declare-fun tp!262081 () Bool)

(declare-fun tp!262084 () Bool)

(assert (=> b!836110 (= e!549931 (and tp!262081 tp!262084))))

(declare-fun b!836107 () Bool)

(assert (=> b!836107 (= e!549931 tp_is_empty!3905)))

(declare-fun b!836109 () Bool)

(declare-fun tp!262083 () Bool)

(assert (=> b!836109 (= e!549931 tp!262083)))

(assert (=> b!835851 (= tp!261982 e!549931)))

(assert (= (and b!835851 ((_ is ElementMatch!2091) (regTwo!4694 (regTwo!4694 r!27177)))) b!836107))

(assert (= (and b!835851 ((_ is Concat!3822) (regTwo!4694 (regTwo!4694 r!27177)))) b!836108))

(assert (= (and b!835851 ((_ is Star!2091) (regTwo!4694 (regTwo!4694 r!27177)))) b!836109))

(assert (= (and b!835851 ((_ is Union!2091) (regTwo!4694 (regTwo!4694 r!27177)))) b!836110))

(declare-fun b!836112 () Bool)

(declare-fun e!549932 () Bool)

(declare-fun tp!262085 () Bool)

(declare-fun tp!262087 () Bool)

(assert (=> b!836112 (= e!549932 (and tp!262085 tp!262087))))

(declare-fun b!836114 () Bool)

(declare-fun tp!262086 () Bool)

(declare-fun tp!262089 () Bool)

(assert (=> b!836114 (= e!549932 (and tp!262086 tp!262089))))

(declare-fun b!836111 () Bool)

(assert (=> b!836111 (= e!549932 tp_is_empty!3905)))

(declare-fun b!836113 () Bool)

(declare-fun tp!262088 () Bool)

(assert (=> b!836113 (= e!549932 tp!262088)))

(assert (=> b!835856 (= tp!261988 e!549932)))

(assert (= (and b!835856 ((_ is ElementMatch!2091) (reg!2420 (reg!2420 r!27177)))) b!836111))

(assert (= (and b!835856 ((_ is Concat!3822) (reg!2420 (reg!2420 r!27177)))) b!836112))

(assert (= (and b!835856 ((_ is Star!2091) (reg!2420 (reg!2420 r!27177)))) b!836113))

(assert (= (and b!835856 ((_ is Union!2091) (reg!2420 (reg!2420 r!27177)))) b!836114))

(declare-fun b!836116 () Bool)

(declare-fun e!549933 () Bool)

(declare-fun tp!262090 () Bool)

(declare-fun tp!262092 () Bool)

(assert (=> b!836116 (= e!549933 (and tp!262090 tp!262092))))

(declare-fun b!836118 () Bool)

(declare-fun tp!262091 () Bool)

(declare-fun tp!262094 () Bool)

(assert (=> b!836118 (= e!549933 (and tp!262091 tp!262094))))

(declare-fun b!836115 () Bool)

(assert (=> b!836115 (= e!549933 tp_is_empty!3905)))

(declare-fun b!836117 () Bool)

(declare-fun tp!262093 () Bool)

(assert (=> b!836117 (= e!549933 tp!262093)))

(assert (=> b!835859 (= tp!261990 e!549933)))

(assert (= (and b!835859 ((_ is ElementMatch!2091) (regOne!4694 (regOne!4695 r!27177)))) b!836115))

(assert (= (and b!835859 ((_ is Concat!3822) (regOne!4694 (regOne!4695 r!27177)))) b!836116))

(assert (= (and b!835859 ((_ is Star!2091) (regOne!4694 (regOne!4695 r!27177)))) b!836117))

(assert (= (and b!835859 ((_ is Union!2091) (regOne!4694 (regOne!4695 r!27177)))) b!836118))

(declare-fun b!836120 () Bool)

(declare-fun e!549934 () Bool)

(declare-fun tp!262095 () Bool)

(declare-fun tp!262097 () Bool)

(assert (=> b!836120 (= e!549934 (and tp!262095 tp!262097))))

(declare-fun b!836122 () Bool)

(declare-fun tp!262096 () Bool)

(declare-fun tp!262099 () Bool)

(assert (=> b!836122 (= e!549934 (and tp!262096 tp!262099))))

(declare-fun b!836119 () Bool)

(assert (=> b!836119 (= e!549934 tp_is_empty!3905)))

(declare-fun b!836121 () Bool)

(declare-fun tp!262098 () Bool)

(assert (=> b!836121 (= e!549934 tp!262098)))

(assert (=> b!835859 (= tp!261992 e!549934)))

(assert (= (and b!835859 ((_ is ElementMatch!2091) (regTwo!4694 (regOne!4695 r!27177)))) b!836119))

(assert (= (and b!835859 ((_ is Concat!3822) (regTwo!4694 (regOne!4695 r!27177)))) b!836120))

(assert (= (and b!835859 ((_ is Star!2091) (regTwo!4694 (regOne!4695 r!27177)))) b!836121))

(assert (= (and b!835859 ((_ is Union!2091) (regTwo!4694 (regOne!4695 r!27177)))) b!836122))

(declare-fun b!836124 () Bool)

(declare-fun e!549935 () Bool)

(declare-fun tp!262100 () Bool)

(declare-fun tp!262102 () Bool)

(assert (=> b!836124 (= e!549935 (and tp!262100 tp!262102))))

(declare-fun b!836126 () Bool)

(declare-fun tp!262101 () Bool)

(declare-fun tp!262104 () Bool)

(assert (=> b!836126 (= e!549935 (and tp!262101 tp!262104))))

(declare-fun b!836123 () Bool)

(assert (=> b!836123 (= e!549935 tp_is_empty!3905)))

(declare-fun b!836125 () Bool)

(declare-fun tp!262103 () Bool)

(assert (=> b!836125 (= e!549935 tp!262103)))

(assert (=> b!835875 (= tp!261996 e!549935)))

(assert (= (and b!835875 ((_ is ElementMatch!2091) (regOne!4695 (regTwo!4695 r!27177)))) b!836123))

(assert (= (and b!835875 ((_ is Concat!3822) (regOne!4695 (regTwo!4695 r!27177)))) b!836124))

(assert (= (and b!835875 ((_ is Star!2091) (regOne!4695 (regTwo!4695 r!27177)))) b!836125))

(assert (= (and b!835875 ((_ is Union!2091) (regOne!4695 (regTwo!4695 r!27177)))) b!836126))

(declare-fun b!836128 () Bool)

(declare-fun e!549936 () Bool)

(declare-fun tp!262105 () Bool)

(declare-fun tp!262107 () Bool)

(assert (=> b!836128 (= e!549936 (and tp!262105 tp!262107))))

(declare-fun b!836130 () Bool)

(declare-fun tp!262106 () Bool)

(declare-fun tp!262109 () Bool)

(assert (=> b!836130 (= e!549936 (and tp!262106 tp!262109))))

(declare-fun b!836127 () Bool)

(assert (=> b!836127 (= e!549936 tp_is_empty!3905)))

(declare-fun b!836129 () Bool)

(declare-fun tp!262108 () Bool)

(assert (=> b!836129 (= e!549936 tp!262108)))

(assert (=> b!835875 (= tp!261999 e!549936)))

(assert (= (and b!835875 ((_ is ElementMatch!2091) (regTwo!4695 (regTwo!4695 r!27177)))) b!836127))

(assert (= (and b!835875 ((_ is Concat!3822) (regTwo!4695 (regTwo!4695 r!27177)))) b!836128))

(assert (= (and b!835875 ((_ is Star!2091) (regTwo!4695 (regTwo!4695 r!27177)))) b!836129))

(assert (= (and b!835875 ((_ is Union!2091) (regTwo!4695 (regTwo!4695 r!27177)))) b!836130))

(declare-fun b!836132 () Bool)

(declare-fun e!549937 () Bool)

(declare-fun tp!262110 () Bool)

(declare-fun tp!262112 () Bool)

(assert (=> b!836132 (= e!549937 (and tp!262110 tp!262112))))

(declare-fun b!836134 () Bool)

(declare-fun tp!262111 () Bool)

(declare-fun tp!262114 () Bool)

(assert (=> b!836134 (= e!549937 (and tp!262111 tp!262114))))

(declare-fun b!836131 () Bool)

(assert (=> b!836131 (= e!549937 tp_is_empty!3905)))

(declare-fun b!836133 () Bool)

(declare-fun tp!262113 () Bool)

(assert (=> b!836133 (= e!549937 tp!262113)))

(assert (=> b!835852 (= tp!261983 e!549937)))

(assert (= (and b!835852 ((_ is ElementMatch!2091) (reg!2420 (regTwo!4694 r!27177)))) b!836131))

(assert (= (and b!835852 ((_ is Concat!3822) (reg!2420 (regTwo!4694 r!27177)))) b!836132))

(assert (= (and b!835852 ((_ is Star!2091) (reg!2420 (regTwo!4694 r!27177)))) b!836133))

(assert (= (and b!835852 ((_ is Union!2091) (reg!2420 (regTwo!4694 r!27177)))) b!836134))

(declare-fun b!836136 () Bool)

(declare-fun e!549938 () Bool)

(declare-fun tp!262115 () Bool)

(declare-fun tp!262117 () Bool)

(assert (=> b!836136 (= e!549938 (and tp!262115 tp!262117))))

(declare-fun b!836138 () Bool)

(declare-fun tp!262116 () Bool)

(declare-fun tp!262119 () Bool)

(assert (=> b!836138 (= e!549938 (and tp!262116 tp!262119))))

(declare-fun b!836135 () Bool)

(assert (=> b!836135 (= e!549938 tp_is_empty!3905)))

(declare-fun b!836137 () Bool)

(declare-fun tp!262118 () Bool)

(assert (=> b!836137 (= e!549938 tp!262118)))

(assert (=> b!835837 (= tp!261975 e!549938)))

(assert (= (and b!835837 ((_ is ElementMatch!2091) (regOne!4694 (regOne!4694 r!27177)))) b!836135))

(assert (= (and b!835837 ((_ is Concat!3822) (regOne!4694 (regOne!4694 r!27177)))) b!836136))

(assert (= (and b!835837 ((_ is Star!2091) (regOne!4694 (regOne!4694 r!27177)))) b!836137))

(assert (= (and b!835837 ((_ is Union!2091) (regOne!4694 (regOne!4694 r!27177)))) b!836138))

(declare-fun b!836140 () Bool)

(declare-fun e!549939 () Bool)

(declare-fun tp!262120 () Bool)

(declare-fun tp!262122 () Bool)

(assert (=> b!836140 (= e!549939 (and tp!262120 tp!262122))))

(declare-fun b!836142 () Bool)

(declare-fun tp!262121 () Bool)

(declare-fun tp!262124 () Bool)

(assert (=> b!836142 (= e!549939 (and tp!262121 tp!262124))))

(declare-fun b!836139 () Bool)

(assert (=> b!836139 (= e!549939 tp_is_empty!3905)))

(declare-fun b!836141 () Bool)

(declare-fun tp!262123 () Bool)

(assert (=> b!836141 (= e!549939 tp!262123)))

(assert (=> b!835837 (= tp!261977 e!549939)))

(assert (= (and b!835837 ((_ is ElementMatch!2091) (regTwo!4694 (regOne!4694 r!27177)))) b!836139))

(assert (= (and b!835837 ((_ is Concat!3822) (regTwo!4694 (regOne!4694 r!27177)))) b!836140))

(assert (= (and b!835837 ((_ is Star!2091) (regTwo!4694 (regOne!4694 r!27177)))) b!836141))

(assert (= (and b!835837 ((_ is Union!2091) (regTwo!4694 (regOne!4694 r!27177)))) b!836142))

(declare-fun b!836144 () Bool)

(declare-fun e!549940 () Bool)

(declare-fun tp!262125 () Bool)

(declare-fun tp!262127 () Bool)

(assert (=> b!836144 (= e!549940 (and tp!262125 tp!262127))))

(declare-fun b!836146 () Bool)

(declare-fun tp!262126 () Bool)

(declare-fun tp!262129 () Bool)

(assert (=> b!836146 (= e!549940 (and tp!262126 tp!262129))))

(declare-fun b!836143 () Bool)

(assert (=> b!836143 (= e!549940 tp_is_empty!3905)))

(declare-fun b!836145 () Bool)

(declare-fun tp!262128 () Bool)

(assert (=> b!836145 (= e!549940 tp!262128)))

(assert (=> b!835857 (= tp!261986 e!549940)))

(assert (= (and b!835857 ((_ is ElementMatch!2091) (regOne!4695 (reg!2420 r!27177)))) b!836143))

(assert (= (and b!835857 ((_ is Concat!3822) (regOne!4695 (reg!2420 r!27177)))) b!836144))

(assert (= (and b!835857 ((_ is Star!2091) (regOne!4695 (reg!2420 r!27177)))) b!836145))

(assert (= (and b!835857 ((_ is Union!2091) (regOne!4695 (reg!2420 r!27177)))) b!836146))

(declare-fun b!836148 () Bool)

(declare-fun e!549941 () Bool)

(declare-fun tp!262130 () Bool)

(declare-fun tp!262132 () Bool)

(assert (=> b!836148 (= e!549941 (and tp!262130 tp!262132))))

(declare-fun b!836150 () Bool)

(declare-fun tp!262131 () Bool)

(declare-fun tp!262134 () Bool)

(assert (=> b!836150 (= e!549941 (and tp!262131 tp!262134))))

(declare-fun b!836147 () Bool)

(assert (=> b!836147 (= e!549941 tp_is_empty!3905)))

(declare-fun b!836149 () Bool)

(declare-fun tp!262133 () Bool)

(assert (=> b!836149 (= e!549941 tp!262133)))

(assert (=> b!835857 (= tp!261989 e!549941)))

(assert (= (and b!835857 ((_ is ElementMatch!2091) (regTwo!4695 (reg!2420 r!27177)))) b!836147))

(assert (= (and b!835857 ((_ is Concat!3822) (regTwo!4695 (reg!2420 r!27177)))) b!836148))

(assert (= (and b!835857 ((_ is Star!2091) (regTwo!4695 (reg!2420 r!27177)))) b!836149))

(assert (= (and b!835857 ((_ is Union!2091) (regTwo!4695 (reg!2420 r!27177)))) b!836150))

(declare-fun b!836152 () Bool)

(declare-fun e!549942 () Bool)

(declare-fun tp!262135 () Bool)

(declare-fun tp!262137 () Bool)

(assert (=> b!836152 (= e!549942 (and tp!262135 tp!262137))))

(declare-fun b!836154 () Bool)

(declare-fun tp!262136 () Bool)

(declare-fun tp!262139 () Bool)

(assert (=> b!836154 (= e!549942 (and tp!262136 tp!262139))))

(declare-fun b!836151 () Bool)

(assert (=> b!836151 (= e!549942 tp_is_empty!3905)))

(declare-fun b!836153 () Bool)

(declare-fun tp!262138 () Bool)

(assert (=> b!836153 (= e!549942 tp!262138)))

(assert (=> b!835860 (= tp!261993 e!549942)))

(assert (= (and b!835860 ((_ is ElementMatch!2091) (reg!2420 (regOne!4695 r!27177)))) b!836151))

(assert (= (and b!835860 ((_ is Concat!3822) (reg!2420 (regOne!4695 r!27177)))) b!836152))

(assert (= (and b!835860 ((_ is Star!2091) (reg!2420 (regOne!4695 r!27177)))) b!836153))

(assert (= (and b!835860 ((_ is Union!2091) (reg!2420 (regOne!4695 r!27177)))) b!836154))

(declare-fun b!836156 () Bool)

(declare-fun e!549943 () Bool)

(declare-fun tp!262140 () Bool)

(declare-fun tp!262142 () Bool)

(assert (=> b!836156 (= e!549943 (and tp!262140 tp!262142))))

(declare-fun b!836158 () Bool)

(declare-fun tp!262141 () Bool)

(declare-fun tp!262144 () Bool)

(assert (=> b!836158 (= e!549943 (and tp!262141 tp!262144))))

(declare-fun b!836155 () Bool)

(assert (=> b!836155 (= e!549943 tp_is_empty!3905)))

(declare-fun b!836157 () Bool)

(declare-fun tp!262143 () Bool)

(assert (=> b!836157 (= e!549943 tp!262143)))

(assert (=> b!835873 (= tp!261995 e!549943)))

(assert (= (and b!835873 ((_ is ElementMatch!2091) (regOne!4694 (regTwo!4695 r!27177)))) b!836155))

(assert (= (and b!835873 ((_ is Concat!3822) (regOne!4694 (regTwo!4695 r!27177)))) b!836156))

(assert (= (and b!835873 ((_ is Star!2091) (regOne!4694 (regTwo!4695 r!27177)))) b!836157))

(assert (= (and b!835873 ((_ is Union!2091) (regOne!4694 (regTwo!4695 r!27177)))) b!836158))

(declare-fun b!836160 () Bool)

(declare-fun e!549944 () Bool)

(declare-fun tp!262145 () Bool)

(declare-fun tp!262147 () Bool)

(assert (=> b!836160 (= e!549944 (and tp!262145 tp!262147))))

(declare-fun b!836162 () Bool)

(declare-fun tp!262146 () Bool)

(declare-fun tp!262149 () Bool)

(assert (=> b!836162 (= e!549944 (and tp!262146 tp!262149))))

(declare-fun b!836159 () Bool)

(assert (=> b!836159 (= e!549944 tp_is_empty!3905)))

(declare-fun b!836161 () Bool)

(declare-fun tp!262148 () Bool)

(assert (=> b!836161 (= e!549944 tp!262148)))

(assert (=> b!835873 (= tp!261997 e!549944)))

(assert (= (and b!835873 ((_ is ElementMatch!2091) (regTwo!4694 (regTwo!4695 r!27177)))) b!836159))

(assert (= (and b!835873 ((_ is Concat!3822) (regTwo!4694 (regTwo!4695 r!27177)))) b!836160))

(assert (= (and b!835873 ((_ is Star!2091) (regTwo!4694 (regTwo!4695 r!27177)))) b!836161))

(assert (= (and b!835873 ((_ is Union!2091) (regTwo!4694 (regTwo!4695 r!27177)))) b!836162))

(declare-fun b!836164 () Bool)

(declare-fun e!549945 () Bool)

(declare-fun tp!262150 () Bool)

(declare-fun tp!262152 () Bool)

(assert (=> b!836164 (= e!549945 (and tp!262150 tp!262152))))

(declare-fun b!836166 () Bool)

(declare-fun tp!262151 () Bool)

(declare-fun tp!262154 () Bool)

(assert (=> b!836166 (= e!549945 (and tp!262151 tp!262154))))

(declare-fun b!836163 () Bool)

(assert (=> b!836163 (= e!549945 tp_is_empty!3905)))

(declare-fun b!836165 () Bool)

(declare-fun tp!262153 () Bool)

(assert (=> b!836165 (= e!549945 tp!262153)))

(assert (=> b!835839 (= tp!261976 e!549945)))

(assert (= (and b!835839 ((_ is ElementMatch!2091) (regOne!4695 (regOne!4694 r!27177)))) b!836163))

(assert (= (and b!835839 ((_ is Concat!3822) (regOne!4695 (regOne!4694 r!27177)))) b!836164))

(assert (= (and b!835839 ((_ is Star!2091) (regOne!4695 (regOne!4694 r!27177)))) b!836165))

(assert (= (and b!835839 ((_ is Union!2091) (regOne!4695 (regOne!4694 r!27177)))) b!836166))

(declare-fun b!836168 () Bool)

(declare-fun e!549946 () Bool)

(declare-fun tp!262155 () Bool)

(declare-fun tp!262157 () Bool)

(assert (=> b!836168 (= e!549946 (and tp!262155 tp!262157))))

(declare-fun b!836170 () Bool)

(declare-fun tp!262156 () Bool)

(declare-fun tp!262159 () Bool)

(assert (=> b!836170 (= e!549946 (and tp!262156 tp!262159))))

(declare-fun b!836167 () Bool)

(assert (=> b!836167 (= e!549946 tp_is_empty!3905)))

(declare-fun b!836169 () Bool)

(declare-fun tp!262158 () Bool)

(assert (=> b!836169 (= e!549946 tp!262158)))

(assert (=> b!835839 (= tp!261979 e!549946)))

(assert (= (and b!835839 ((_ is ElementMatch!2091) (regTwo!4695 (regOne!4694 r!27177)))) b!836167))

(assert (= (and b!835839 ((_ is Concat!3822) (regTwo!4695 (regOne!4694 r!27177)))) b!836168))

(assert (= (and b!835839 ((_ is Star!2091) (regTwo!4695 (regOne!4694 r!27177)))) b!836169))

(assert (= (and b!835839 ((_ is Union!2091) (regTwo!4695 (regOne!4694 r!27177)))) b!836170))

(check-sat (not b!836073) (not b!836105) (not b!835972) (not b!836096) (not b!836142) (not bm!50114) (not b!836124) (not b!836100) (not bm!50110) (not b!836067) (not bm!50123) (not b!836141) (not b!836126) (not d!260977) (not b!836092) (not b!835911) (not bm!50102) (not b!836076) (not b!836104) (not bm!50129) (not b!836148) (not b!836074) (not b!835953) (not bm!50115) (not bm!50101) (not bm!50143) (not bm!50148) (not bm!50135) (not b!836125) (not b!836169) (not bm!50145) (not b!836082) (not b!836117) (not b!836118) (not b!836150) (not bm!50117) (not b!836108) (not bm!50141) (not b!836145) (not b!836101) (not b!836144) (not b!836156) (not b!835982) (not b!836128) (not b!836078) (not bm!50134) (not b!836160) (not d!260967) (not b!836149) (not b!836059) (not b!836121) (not bm!50137) (not bm!50147) (not b!836137) (not b!836132) (not b!836166) (not b!836011) (not bm!50125) (not bm!50120) (not b!836116) (not b!836140) (not b!836094) (not bm!50128) (not d!260961) (not b!836004) (not b!836060) (not bm!50108) (not bm!50133) (not b!836114) (not b!836072) (not b!836170) (not bm!50118) (not b!836090) (not b!836106) (not b!836152) (not b!836165) (not b!836168) (not b!836084) (not b!835960) (not b!836136) (not d!260941) (not b!836122) (not bm!50150) (not b!836164) (not b!836077) (not b!836113) (not b!836158) (not b!836003) (not b!836109) (not b!836089) (not b!836162) (not bm!50142) (not b!836130) (not b!836161) (not b!836133) (not b!836035) (not b!836102) (not d!260959) (not d!260939) (not b!836026) (not b!836154) tp_is_empty!3905 (not b!836098) (not b!836057) (not bm!50139) (not b!836112) (not b!835913) (not bm!50131) (not b!836085) (not b!836093) (not b!836138) (not b!836097) (not bm!50109) (not b!836086) (not d!260955) (not b!836129) (not b!836052) (not b!836153) (not bm!50112) (not b!836088) (not b!836110) (not b!836120) (not bm!50127) (not bm!50122) (not b!836146) (not b!836134) (not b!836081) (not b!836157) (not b!836080))
(check-sat)

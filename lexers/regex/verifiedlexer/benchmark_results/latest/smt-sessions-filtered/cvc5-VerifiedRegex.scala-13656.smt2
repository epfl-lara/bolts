; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!732530 () Bool)

(assert start!732530)

(declare-fun b!7591951 () Bool)

(assert (=> b!7591951 true))

(assert (=> b!7591951 true))

(declare-fun lambda!467243 () Int)

(declare-fun lambda!467242 () Int)

(assert (=> b!7591951 (not (= lambda!467243 lambda!467242))))

(assert (=> b!7591951 true))

(assert (=> b!7591951 true))

(declare-fun b!7591946 () Bool)

(declare-fun e!4517759 () Bool)

(declare-fun tp_is_empty!50567 () Bool)

(declare-fun tp!2212663 () Bool)

(assert (=> b!7591946 (= e!4517759 (and tp_is_empty!50567 tp!2212663))))

(declare-fun res!3040579 () Bool)

(declare-fun e!4517758 () Bool)

(assert (=> start!732530 (=> (not res!3040579) (not e!4517758))))

(declare-datatypes ((C!40538 0))(
  ( (C!40539 (val!30709 Int)) )
))
(declare-datatypes ((Regex!20106 0))(
  ( (ElementMatch!20106 (c!1400591 C!40538)) (Concat!28951 (regOne!40724 Regex!20106) (regTwo!40724 Regex!20106)) (EmptyExpr!20106) (Star!20106 (reg!20435 Regex!20106)) (EmptyLang!20106) (Union!20106 (regOne!40725 Regex!20106) (regTwo!40725 Regex!20106)) )
))
(declare-fun r!22341 () Regex!20106)

(declare-fun validRegex!10534 (Regex!20106) Bool)

(assert (=> start!732530 (= res!3040579 (validRegex!10534 r!22341))))

(assert (=> start!732530 e!4517758))

(declare-fun e!4517760 () Bool)

(assert (=> start!732530 e!4517760))

(assert (=> start!732530 e!4517759))

(declare-fun b!7591947 () Bool)

(declare-fun e!4517756 () Bool)

(assert (=> b!7591947 (= e!4517758 (not e!4517756))))

(declare-fun res!3040582 () Bool)

(assert (=> b!7591947 (=> res!3040582 e!4517756)))

(declare-fun lt!2653464 () Bool)

(assert (=> b!7591947 (= res!3040582 (or (is-EmptyLang!20106 r!22341) (is-EmptyExpr!20106 r!22341) (is-ElementMatch!20106 r!22341) (is-Union!20106 r!22341) (is-Star!20106 r!22341) (not lt!2653464)))))

(declare-datatypes ((List!72989 0))(
  ( (Nil!72865) (Cons!72865 (h!79313 C!40538) (t!387724 List!72989)) )
))
(declare-fun s!13436 () List!72989)

(declare-fun matchRSpec!4419 (Regex!20106 List!72989) Bool)

(assert (=> b!7591947 (= lt!2653464 (matchRSpec!4419 r!22341 s!13436))))

(declare-fun matchR!9698 (Regex!20106 List!72989) Bool)

(assert (=> b!7591947 (= lt!2653464 (matchR!9698 r!22341 s!13436))))

(declare-datatypes ((Unit!167168 0))(
  ( (Unit!167169) )
))
(declare-fun lt!2653462 () Unit!167168)

(declare-fun mainMatchTheorem!4413 (Regex!20106 List!72989) Unit!167168)

(assert (=> b!7591947 (= lt!2653462 (mainMatchTheorem!4413 r!22341 s!13436))))

(declare-fun b!7591948 () Bool)

(declare-fun res!3040581 () Bool)

(assert (=> b!7591948 (=> (not res!3040581) (not e!4517758))))

(declare-fun lostCause!1882 (Regex!20106) Bool)

(assert (=> b!7591948 (= res!3040581 (lostCause!1882 r!22341))))

(declare-fun b!7591949 () Bool)

(declare-fun tp!2212658 () Bool)

(declare-fun tp!2212662 () Bool)

(assert (=> b!7591949 (= e!4517760 (and tp!2212658 tp!2212662))))

(declare-fun b!7591950 () Bool)

(declare-fun res!3040580 () Bool)

(assert (=> b!7591950 (=> (not res!3040580) (not e!4517758))))

(declare-fun isEmpty!41551 (List!72989) Bool)

(assert (=> b!7591950 (= res!3040580 (not (isEmpty!41551 s!13436)))))

(declare-fun e!4517757 () Bool)

(assert (=> b!7591951 (= e!4517756 e!4517757)))

(declare-fun res!3040583 () Bool)

(assert (=> b!7591951 (=> res!3040583 e!4517757)))

(declare-datatypes ((tuple2!68934 0))(
  ( (tuple2!68935 (_1!37770 List!72989) (_2!37770 List!72989)) )
))
(declare-fun lt!2653463 () tuple2!68934)

(assert (=> b!7591951 (= res!3040583 (not (matchR!9698 (regOne!40724 r!22341) (_1!37770 lt!2653463))))))

(declare-datatypes ((Option!17313 0))(
  ( (None!17312) (Some!17312 (v!54447 tuple2!68934)) )
))
(declare-fun lt!2653461 () Option!17313)

(declare-fun get!25629 (Option!17313) tuple2!68934)

(assert (=> b!7591951 (= lt!2653463 (get!25629 lt!2653461))))

(declare-fun Exists!4338 (Int) Bool)

(assert (=> b!7591951 (= (Exists!4338 lambda!467242) (Exists!4338 lambda!467243))))

(declare-fun lt!2653459 () Unit!167168)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2627 (Regex!20106 Regex!20106 List!72989) Unit!167168)

(assert (=> b!7591951 (= lt!2653459 (lemmaExistCutMatchRandMatchRSpecEquivalent!2627 (regOne!40724 r!22341) (regTwo!40724 r!22341) s!13436))))

(declare-fun isDefined!13949 (Option!17313) Bool)

(assert (=> b!7591951 (= (isDefined!13949 lt!2653461) (Exists!4338 lambda!467242))))

(declare-fun findConcatSeparation!3363 (Regex!20106 Regex!20106 List!72989 List!72989 List!72989) Option!17313)

(assert (=> b!7591951 (= lt!2653461 (findConcatSeparation!3363 (regOne!40724 r!22341) (regTwo!40724 r!22341) Nil!72865 s!13436 s!13436))))

(declare-fun lt!2653460 () Unit!167168)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!3121 (Regex!20106 Regex!20106 List!72989) Unit!167168)

(assert (=> b!7591951 (= lt!2653460 (lemmaFindConcatSeparationEquivalentToExists!3121 (regOne!40724 r!22341) (regTwo!40724 r!22341) s!13436))))

(declare-fun b!7591952 () Bool)

(declare-fun tp!2212660 () Bool)

(assert (=> b!7591952 (= e!4517760 tp!2212660)))

(declare-fun b!7591953 () Bool)

(declare-fun res!3040577 () Bool)

(assert (=> b!7591953 (=> res!3040577 e!4517757)))

(assert (=> b!7591953 (= res!3040577 (lostCause!1882 (regOne!40724 r!22341)))))

(declare-fun b!7591954 () Bool)

(declare-fun res!3040578 () Bool)

(assert (=> b!7591954 (=> res!3040578 e!4517757)))

(assert (=> b!7591954 (= res!3040578 (not (matchR!9698 (regTwo!40724 r!22341) (_2!37770 lt!2653463))))))

(declare-fun b!7591955 () Bool)

(assert (=> b!7591955 (= e!4517760 tp_is_empty!50567)))

(declare-fun b!7591956 () Bool)

(declare-fun tp!2212659 () Bool)

(declare-fun tp!2212661 () Bool)

(assert (=> b!7591956 (= e!4517760 (and tp!2212659 tp!2212661))))

(declare-fun b!7591957 () Bool)

(assert (=> b!7591957 (= e!4517757 (validRegex!10534 (regTwo!40724 r!22341)))))

(assert (= (and start!732530 res!3040579) b!7591948))

(assert (= (and b!7591948 res!3040581) b!7591950))

(assert (= (and b!7591950 res!3040580) b!7591947))

(assert (= (and b!7591947 (not res!3040582)) b!7591951))

(assert (= (and b!7591951 (not res!3040583)) b!7591954))

(assert (= (and b!7591954 (not res!3040578)) b!7591953))

(assert (= (and b!7591953 (not res!3040577)) b!7591957))

(assert (= (and start!732530 (is-ElementMatch!20106 r!22341)) b!7591955))

(assert (= (and start!732530 (is-Concat!28951 r!22341)) b!7591949))

(assert (= (and start!732530 (is-Star!20106 r!22341)) b!7591952))

(assert (= (and start!732530 (is-Union!20106 r!22341)) b!7591956))

(assert (= (and start!732530 (is-Cons!72865 s!13436)) b!7591946))

(declare-fun m!8140618 () Bool)

(assert (=> b!7591957 m!8140618))

(declare-fun m!8140620 () Bool)

(assert (=> b!7591947 m!8140620))

(declare-fun m!8140622 () Bool)

(assert (=> b!7591947 m!8140622))

(declare-fun m!8140624 () Bool)

(assert (=> b!7591947 m!8140624))

(declare-fun m!8140626 () Bool)

(assert (=> b!7591948 m!8140626))

(declare-fun m!8140628 () Bool)

(assert (=> b!7591950 m!8140628))

(declare-fun m!8140630 () Bool)

(assert (=> b!7591953 m!8140630))

(declare-fun m!8140632 () Bool)

(assert (=> b!7591951 m!8140632))

(declare-fun m!8140634 () Bool)

(assert (=> b!7591951 m!8140634))

(declare-fun m!8140636 () Bool)

(assert (=> b!7591951 m!8140636))

(declare-fun m!8140638 () Bool)

(assert (=> b!7591951 m!8140638))

(declare-fun m!8140640 () Bool)

(assert (=> b!7591951 m!8140640))

(assert (=> b!7591951 m!8140634))

(declare-fun m!8140642 () Bool)

(assert (=> b!7591951 m!8140642))

(declare-fun m!8140644 () Bool)

(assert (=> b!7591951 m!8140644))

(declare-fun m!8140646 () Bool)

(assert (=> b!7591951 m!8140646))

(declare-fun m!8140648 () Bool)

(assert (=> b!7591954 m!8140648))

(declare-fun m!8140650 () Bool)

(assert (=> start!732530 m!8140650))

(push 1)

(assert (not start!732530))

(assert (not b!7591954))

(assert (not b!7591948))

(assert (not b!7591956))

(assert (not b!7591952))

(assert (not b!7591953))

(assert (not b!7591949))

(assert tp_is_empty!50567)

(assert (not b!7591957))

(assert (not b!7591947))

(assert (not b!7591951))

(assert (not b!7591946))

(assert (not b!7591950))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2320073 () Bool)

(declare-fun lostCauseFct!532 (Regex!20106) Bool)

(assert (=> d!2320073 (= (lostCause!1882 r!22341) (lostCauseFct!532 r!22341))))

(declare-fun bs!1941725 () Bool)

(assert (= bs!1941725 d!2320073))

(declare-fun m!8140686 () Bool)

(assert (=> bs!1941725 m!8140686))

(assert (=> b!7591948 d!2320073))

(declare-fun d!2320075 () Bool)

(assert (=> d!2320075 (= (lostCause!1882 (regOne!40724 r!22341)) (lostCauseFct!532 (regOne!40724 r!22341)))))

(declare-fun bs!1941726 () Bool)

(assert (= bs!1941726 d!2320075))

(declare-fun m!8140688 () Bool)

(assert (=> bs!1941726 m!8140688))

(assert (=> b!7591953 d!2320075))

(declare-fun b!7592032 () Bool)

(declare-fun res!3040631 () Bool)

(declare-fun e!4517801 () Bool)

(assert (=> b!7592032 (=> (not res!3040631) (not e!4517801))))

(declare-fun call!696797 () Bool)

(assert (=> b!7592032 (= res!3040631 call!696797)))

(declare-fun e!4517800 () Bool)

(assert (=> b!7592032 (= e!4517800 e!4517801)))

(declare-fun b!7592033 () Bool)

(declare-fun e!4517798 () Bool)

(declare-fun e!4517799 () Bool)

(assert (=> b!7592033 (= e!4517798 e!4517799)))

(declare-fun res!3040629 () Bool)

(assert (=> b!7592033 (=> (not res!3040629) (not e!4517799))))

(declare-fun call!696799 () Bool)

(assert (=> b!7592033 (= res!3040629 call!696799)))

(declare-fun b!7592034 () Bool)

(declare-fun e!4517797 () Bool)

(declare-fun e!4517796 () Bool)

(assert (=> b!7592034 (= e!4517797 e!4517796)))

(declare-fun res!3040627 () Bool)

(declare-fun nullable!8797 (Regex!20106) Bool)

(assert (=> b!7592034 (= res!3040627 (not (nullable!8797 (reg!20435 r!22341))))))

(assert (=> b!7592034 (=> (not res!3040627) (not e!4517796))))

(declare-fun b!7592035 () Bool)

(declare-fun e!4517802 () Bool)

(assert (=> b!7592035 (= e!4517802 e!4517797)))

(declare-fun c!1400598 () Bool)

(assert (=> b!7592035 (= c!1400598 (is-Star!20106 r!22341))))

(declare-fun d!2320077 () Bool)

(declare-fun res!3040630 () Bool)

(assert (=> d!2320077 (=> res!3040630 e!4517802)))

(assert (=> d!2320077 (= res!3040630 (is-ElementMatch!20106 r!22341))))

(assert (=> d!2320077 (= (validRegex!10534 r!22341) e!4517802)))

(declare-fun b!7592036 () Bool)

(assert (=> b!7592036 (= e!4517799 call!696797)))

(declare-fun b!7592037 () Bool)

(assert (=> b!7592037 (= e!4517797 e!4517800)))

(declare-fun c!1400597 () Bool)

(assert (=> b!7592037 (= c!1400597 (is-Union!20106 r!22341))))

(declare-fun b!7592038 () Bool)

(declare-fun res!3040628 () Bool)

(assert (=> b!7592038 (=> res!3040628 e!4517798)))

(assert (=> b!7592038 (= res!3040628 (not (is-Concat!28951 r!22341)))))

(assert (=> b!7592038 (= e!4517800 e!4517798)))

(declare-fun bm!696792 () Bool)

(declare-fun call!696798 () Bool)

(assert (=> bm!696792 (= call!696798 (validRegex!10534 (ite c!1400598 (reg!20435 r!22341) (ite c!1400597 (regOne!40725 r!22341) (regTwo!40724 r!22341)))))))

(declare-fun b!7592039 () Bool)

(assert (=> b!7592039 (= e!4517801 call!696799)))

(declare-fun bm!696793 () Bool)

(assert (=> bm!696793 (= call!696799 (validRegex!10534 (ite c!1400597 (regTwo!40725 r!22341) (regOne!40724 r!22341))))))

(declare-fun bm!696794 () Bool)

(assert (=> bm!696794 (= call!696797 call!696798)))

(declare-fun b!7592040 () Bool)

(assert (=> b!7592040 (= e!4517796 call!696798)))

(assert (= (and d!2320077 (not res!3040630)) b!7592035))

(assert (= (and b!7592035 c!1400598) b!7592034))

(assert (= (and b!7592035 (not c!1400598)) b!7592037))

(assert (= (and b!7592034 res!3040627) b!7592040))

(assert (= (and b!7592037 c!1400597) b!7592032))

(assert (= (and b!7592037 (not c!1400597)) b!7592038))

(assert (= (and b!7592032 res!3040631) b!7592039))

(assert (= (and b!7592038 (not res!3040628)) b!7592033))

(assert (= (and b!7592033 res!3040629) b!7592036))

(assert (= (or b!7592039 b!7592033) bm!696793))

(assert (= (or b!7592032 b!7592036) bm!696794))

(assert (= (or b!7592040 bm!696794) bm!696792))

(declare-fun m!8140690 () Bool)

(assert (=> b!7592034 m!8140690))

(declare-fun m!8140692 () Bool)

(assert (=> bm!696792 m!8140692))

(declare-fun m!8140694 () Bool)

(assert (=> bm!696793 m!8140694))

(assert (=> start!732530 d!2320077))

(declare-fun bs!1941727 () Bool)

(declare-fun b!7592092 () Bool)

(assert (= bs!1941727 (and b!7592092 b!7591951)))

(declare-fun lambda!467256 () Int)

(assert (=> bs!1941727 (not (= lambda!467256 lambda!467242))))

(assert (=> bs!1941727 (not (= lambda!467256 lambda!467243))))

(assert (=> b!7592092 true))

(assert (=> b!7592092 true))

(declare-fun bs!1941728 () Bool)

(declare-fun b!7592101 () Bool)

(assert (= bs!1941728 (and b!7592101 b!7591951)))

(declare-fun lambda!467257 () Int)

(assert (=> bs!1941728 (not (= lambda!467257 lambda!467242))))

(assert (=> bs!1941728 (= lambda!467257 lambda!467243)))

(declare-fun bs!1941729 () Bool)

(assert (= bs!1941729 (and b!7592101 b!7592092)))

(assert (=> bs!1941729 (not (= lambda!467257 lambda!467256))))

(assert (=> b!7592101 true))

(assert (=> b!7592101 true))

(declare-fun b!7592091 () Bool)

(declare-fun c!1400614 () Bool)

(assert (=> b!7592091 (= c!1400614 (is-Union!20106 r!22341))))

(declare-fun e!4517840 () Bool)

(declare-fun e!4517836 () Bool)

(assert (=> b!7592091 (= e!4517840 e!4517836)))

(declare-fun e!4517841 () Bool)

(declare-fun call!696806 () Bool)

(assert (=> b!7592092 (= e!4517841 call!696806)))

(declare-fun b!7592093 () Bool)

(declare-fun e!4517839 () Bool)

(declare-fun call!696807 () Bool)

(assert (=> b!7592093 (= e!4517839 call!696807)))

(declare-fun bm!696799 () Bool)

(assert (=> bm!696799 (= call!696807 (isEmpty!41551 s!13436))))

(declare-fun c!1400612 () Bool)

(declare-fun bm!696800 () Bool)

(assert (=> bm!696800 (= call!696806 (Exists!4338 (ite c!1400612 lambda!467256 lambda!467257)))))

(declare-fun b!7592094 () Bool)

(declare-fun e!4517835 () Bool)

(assert (=> b!7592094 (= e!4517836 e!4517835)))

(declare-fun res!3040658 () Bool)

(assert (=> b!7592094 (= res!3040658 (matchRSpec!4419 (regOne!40725 r!22341) s!13436))))

(assert (=> b!7592094 (=> res!3040658 e!4517835)))

(declare-fun d!2320079 () Bool)

(declare-fun c!1400611 () Bool)

(assert (=> d!2320079 (= c!1400611 (is-EmptyExpr!20106 r!22341))))

(assert (=> d!2320079 (= (matchRSpec!4419 r!22341 s!13436) e!4517839)))

(declare-fun b!7592095 () Bool)

(assert (=> b!7592095 (= e!4517835 (matchRSpec!4419 (regTwo!40725 r!22341) s!13436))))

(declare-fun b!7592096 () Bool)

(declare-fun c!1400613 () Bool)

(assert (=> b!7592096 (= c!1400613 (is-ElementMatch!20106 r!22341))))

(declare-fun e!4517837 () Bool)

(assert (=> b!7592096 (= e!4517837 e!4517840)))

(declare-fun b!7592097 () Bool)

(declare-fun e!4517838 () Bool)

(assert (=> b!7592097 (= e!4517836 e!4517838)))

(assert (=> b!7592097 (= c!1400612 (is-Star!20106 r!22341))))

(declare-fun b!7592098 () Bool)

(assert (=> b!7592098 (= e!4517839 e!4517837)))

(declare-fun res!3040659 () Bool)

(assert (=> b!7592098 (= res!3040659 (not (is-EmptyLang!20106 r!22341)))))

(assert (=> b!7592098 (=> (not res!3040659) (not e!4517837))))

(declare-fun b!7592099 () Bool)

(assert (=> b!7592099 (= e!4517840 (= s!13436 (Cons!72865 (c!1400591 r!22341) Nil!72865)))))

(declare-fun b!7592100 () Bool)

(declare-fun res!3040660 () Bool)

(assert (=> b!7592100 (=> res!3040660 e!4517841)))

(assert (=> b!7592100 (= res!3040660 call!696807)))

(assert (=> b!7592100 (= e!4517838 e!4517841)))

(assert (=> b!7592101 (= e!4517838 call!696806)))

(assert (= (and d!2320079 c!1400611) b!7592093))

(assert (= (and d!2320079 (not c!1400611)) b!7592098))

(assert (= (and b!7592098 res!3040659) b!7592096))

(assert (= (and b!7592096 c!1400613) b!7592099))

(assert (= (and b!7592096 (not c!1400613)) b!7592091))

(assert (= (and b!7592091 c!1400614) b!7592094))

(assert (= (and b!7592091 (not c!1400614)) b!7592097))

(assert (= (and b!7592094 (not res!3040658)) b!7592095))

(assert (= (and b!7592097 c!1400612) b!7592100))

(assert (= (and b!7592097 (not c!1400612)) b!7592101))

(assert (= (and b!7592100 (not res!3040660)) b!7592092))

(assert (= (or b!7592092 b!7592101) bm!696800))

(assert (= (or b!7592093 b!7592100) bm!696799))

(assert (=> bm!696799 m!8140628))

(declare-fun m!8140696 () Bool)

(assert (=> bm!696800 m!8140696))

(declare-fun m!8140698 () Bool)

(assert (=> b!7592094 m!8140698))

(declare-fun m!8140700 () Bool)

(assert (=> b!7592095 m!8140700))

(assert (=> b!7591947 d!2320079))

(declare-fun b!7592148 () Bool)

(declare-fun e!4517873 () Bool)

(declare-fun e!4517871 () Bool)

(assert (=> b!7592148 (= e!4517873 e!4517871)))

(declare-fun res!3040688 () Bool)

(assert (=> b!7592148 (=> res!3040688 e!4517871)))

(declare-fun call!696820 () Bool)

(assert (=> b!7592148 (= res!3040688 call!696820)))

(declare-fun bm!696815 () Bool)

(assert (=> bm!696815 (= call!696820 (isEmpty!41551 s!13436))))

(declare-fun b!7592149 () Bool)

(declare-fun head!15624 (List!72989) C!40538)

(assert (=> b!7592149 (= e!4517871 (not (= (head!15624 s!13436) (c!1400591 r!22341))))))

(declare-fun b!7592150 () Bool)

(declare-fun res!3040694 () Bool)

(declare-fun e!4517870 () Bool)

(assert (=> b!7592150 (=> res!3040694 e!4517870)))

(assert (=> b!7592150 (= res!3040694 (not (is-ElementMatch!20106 r!22341)))))

(declare-fun e!4517876 () Bool)

(assert (=> b!7592150 (= e!4517876 e!4517870)))

(declare-fun b!7592151 () Bool)

(declare-fun e!4517872 () Bool)

(assert (=> b!7592151 (= e!4517872 (nullable!8797 r!22341))))

(declare-fun b!7592152 () Bool)

(declare-fun lt!2653485 () Bool)

(assert (=> b!7592152 (= e!4517876 (not lt!2653485))))

(declare-fun b!7592153 () Bool)

(declare-fun e!4517875 () Bool)

(assert (=> b!7592153 (= e!4517875 (= lt!2653485 call!696820))))

(declare-fun d!2320083 () Bool)

(assert (=> d!2320083 e!4517875))

(declare-fun c!1400626 () Bool)

(assert (=> d!2320083 (= c!1400626 (is-EmptyExpr!20106 r!22341))))

(assert (=> d!2320083 (= lt!2653485 e!4517872)))

(declare-fun c!1400627 () Bool)

(assert (=> d!2320083 (= c!1400627 (isEmpty!41551 s!13436))))

(assert (=> d!2320083 (validRegex!10534 r!22341)))

(assert (=> d!2320083 (= (matchR!9698 r!22341 s!13436) lt!2653485)))

(declare-fun b!7592154 () Bool)

(declare-fun derivativeStep!5824 (Regex!20106 C!40538) Regex!20106)

(declare-fun tail!15164 (List!72989) List!72989)

(assert (=> b!7592154 (= e!4517872 (matchR!9698 (derivativeStep!5824 r!22341 (head!15624 s!13436)) (tail!15164 s!13436)))))

(declare-fun b!7592155 () Bool)

(assert (=> b!7592155 (= e!4517875 e!4517876)))

(declare-fun c!1400625 () Bool)

(assert (=> b!7592155 (= c!1400625 (is-EmptyLang!20106 r!22341))))

(declare-fun b!7592156 () Bool)

(declare-fun res!3040692 () Bool)

(declare-fun e!4517874 () Bool)

(assert (=> b!7592156 (=> (not res!3040692) (not e!4517874))))

(assert (=> b!7592156 (= res!3040692 (not call!696820))))

(declare-fun b!7592157 () Bool)

(assert (=> b!7592157 (= e!4517870 e!4517873)))

(declare-fun res!3040693 () Bool)

(assert (=> b!7592157 (=> (not res!3040693) (not e!4517873))))

(assert (=> b!7592157 (= res!3040693 (not lt!2653485))))

(declare-fun b!7592158 () Bool)

(declare-fun res!3040689 () Bool)

(assert (=> b!7592158 (=> res!3040689 e!4517871)))

(assert (=> b!7592158 (= res!3040689 (not (isEmpty!41551 (tail!15164 s!13436))))))

(declare-fun b!7592159 () Bool)

(declare-fun res!3040691 () Bool)

(assert (=> b!7592159 (=> res!3040691 e!4517870)))

(assert (=> b!7592159 (= res!3040691 e!4517874)))

(declare-fun res!3040690 () Bool)

(assert (=> b!7592159 (=> (not res!3040690) (not e!4517874))))

(assert (=> b!7592159 (= res!3040690 lt!2653485)))

(declare-fun b!7592160 () Bool)

(declare-fun res!3040687 () Bool)

(assert (=> b!7592160 (=> (not res!3040687) (not e!4517874))))

(assert (=> b!7592160 (= res!3040687 (isEmpty!41551 (tail!15164 s!13436)))))

(declare-fun b!7592161 () Bool)

(assert (=> b!7592161 (= e!4517874 (= (head!15624 s!13436) (c!1400591 r!22341)))))

(assert (= (and d!2320083 c!1400627) b!7592151))

(assert (= (and d!2320083 (not c!1400627)) b!7592154))

(assert (= (and d!2320083 c!1400626) b!7592153))

(assert (= (and d!2320083 (not c!1400626)) b!7592155))

(assert (= (and b!7592155 c!1400625) b!7592152))

(assert (= (and b!7592155 (not c!1400625)) b!7592150))

(assert (= (and b!7592150 (not res!3040694)) b!7592159))

(assert (= (and b!7592159 res!3040690) b!7592156))

(assert (= (and b!7592156 res!3040692) b!7592160))

(assert (= (and b!7592160 res!3040687) b!7592161))

(assert (= (and b!7592159 (not res!3040691)) b!7592157))

(assert (= (and b!7592157 res!3040693) b!7592148))

(assert (= (and b!7592148 (not res!3040688)) b!7592158))

(assert (= (and b!7592158 (not res!3040689)) b!7592149))

(assert (= (or b!7592153 b!7592148 b!7592156) bm!696815))

(assert (=> bm!696815 m!8140628))

(declare-fun m!8140714 () Bool)

(assert (=> b!7592149 m!8140714))

(declare-fun m!8140716 () Bool)

(assert (=> b!7592151 m!8140716))

(assert (=> b!7592154 m!8140714))

(assert (=> b!7592154 m!8140714))

(declare-fun m!8140718 () Bool)

(assert (=> b!7592154 m!8140718))

(declare-fun m!8140720 () Bool)

(assert (=> b!7592154 m!8140720))

(assert (=> b!7592154 m!8140718))

(assert (=> b!7592154 m!8140720))

(declare-fun m!8140722 () Bool)

(assert (=> b!7592154 m!8140722))

(assert (=> b!7592158 m!8140720))

(assert (=> b!7592158 m!8140720))

(declare-fun m!8140724 () Bool)

(assert (=> b!7592158 m!8140724))

(assert (=> b!7592161 m!8140714))

(assert (=> b!7592160 m!8140720))

(assert (=> b!7592160 m!8140720))

(assert (=> b!7592160 m!8140724))

(assert (=> d!2320083 m!8140628))

(assert (=> d!2320083 m!8140650))

(assert (=> b!7591947 d!2320083))

(declare-fun d!2320089 () Bool)

(assert (=> d!2320089 (= (matchR!9698 r!22341 s!13436) (matchRSpec!4419 r!22341 s!13436))))

(declare-fun lt!2653488 () Unit!167168)

(declare-fun choose!58665 (Regex!20106 List!72989) Unit!167168)

(assert (=> d!2320089 (= lt!2653488 (choose!58665 r!22341 s!13436))))

(assert (=> d!2320089 (validRegex!10534 r!22341)))

(assert (=> d!2320089 (= (mainMatchTheorem!4413 r!22341 s!13436) lt!2653488)))

(declare-fun bs!1941730 () Bool)

(assert (= bs!1941730 d!2320089))

(assert (=> bs!1941730 m!8140622))

(assert (=> bs!1941730 m!8140620))

(declare-fun m!8140726 () Bool)

(assert (=> bs!1941730 m!8140726))

(assert (=> bs!1941730 m!8140650))

(assert (=> b!7591947 d!2320089))

(declare-fun b!7592162 () Bool)

(declare-fun res!3040699 () Bool)

(declare-fun e!4517882 () Bool)

(assert (=> b!7592162 (=> (not res!3040699) (not e!4517882))))

(declare-fun call!696821 () Bool)

(assert (=> b!7592162 (= res!3040699 call!696821)))

(declare-fun e!4517881 () Bool)

(assert (=> b!7592162 (= e!4517881 e!4517882)))

(declare-fun b!7592163 () Bool)

(declare-fun e!4517879 () Bool)

(declare-fun e!4517880 () Bool)

(assert (=> b!7592163 (= e!4517879 e!4517880)))

(declare-fun res!3040697 () Bool)

(assert (=> b!7592163 (=> (not res!3040697) (not e!4517880))))

(declare-fun call!696823 () Bool)

(assert (=> b!7592163 (= res!3040697 call!696823)))

(declare-fun b!7592164 () Bool)

(declare-fun e!4517878 () Bool)

(declare-fun e!4517877 () Bool)

(assert (=> b!7592164 (= e!4517878 e!4517877)))

(declare-fun res!3040695 () Bool)

(assert (=> b!7592164 (= res!3040695 (not (nullable!8797 (reg!20435 (regTwo!40724 r!22341)))))))

(assert (=> b!7592164 (=> (not res!3040695) (not e!4517877))))

(declare-fun b!7592165 () Bool)

(declare-fun e!4517883 () Bool)

(assert (=> b!7592165 (= e!4517883 e!4517878)))

(declare-fun c!1400629 () Bool)

(assert (=> b!7592165 (= c!1400629 (is-Star!20106 (regTwo!40724 r!22341)))))

(declare-fun d!2320091 () Bool)

(declare-fun res!3040698 () Bool)

(assert (=> d!2320091 (=> res!3040698 e!4517883)))

(assert (=> d!2320091 (= res!3040698 (is-ElementMatch!20106 (regTwo!40724 r!22341)))))

(assert (=> d!2320091 (= (validRegex!10534 (regTwo!40724 r!22341)) e!4517883)))

(declare-fun b!7592166 () Bool)

(assert (=> b!7592166 (= e!4517880 call!696821)))

(declare-fun b!7592167 () Bool)

(assert (=> b!7592167 (= e!4517878 e!4517881)))

(declare-fun c!1400628 () Bool)

(assert (=> b!7592167 (= c!1400628 (is-Union!20106 (regTwo!40724 r!22341)))))

(declare-fun b!7592168 () Bool)

(declare-fun res!3040696 () Bool)

(assert (=> b!7592168 (=> res!3040696 e!4517879)))

(assert (=> b!7592168 (= res!3040696 (not (is-Concat!28951 (regTwo!40724 r!22341))))))

(assert (=> b!7592168 (= e!4517881 e!4517879)))

(declare-fun bm!696816 () Bool)

(declare-fun call!696822 () Bool)

(assert (=> bm!696816 (= call!696822 (validRegex!10534 (ite c!1400629 (reg!20435 (regTwo!40724 r!22341)) (ite c!1400628 (regOne!40725 (regTwo!40724 r!22341)) (regTwo!40724 (regTwo!40724 r!22341))))))))

(declare-fun b!7592169 () Bool)

(assert (=> b!7592169 (= e!4517882 call!696823)))

(declare-fun bm!696817 () Bool)

(assert (=> bm!696817 (= call!696823 (validRegex!10534 (ite c!1400628 (regTwo!40725 (regTwo!40724 r!22341)) (regOne!40724 (regTwo!40724 r!22341)))))))

(declare-fun bm!696818 () Bool)

(assert (=> bm!696818 (= call!696821 call!696822)))

(declare-fun b!7592170 () Bool)

(assert (=> b!7592170 (= e!4517877 call!696822)))

(assert (= (and d!2320091 (not res!3040698)) b!7592165))

(assert (= (and b!7592165 c!1400629) b!7592164))

(assert (= (and b!7592165 (not c!1400629)) b!7592167))

(assert (= (and b!7592164 res!3040695) b!7592170))

(assert (= (and b!7592167 c!1400628) b!7592162))

(assert (= (and b!7592167 (not c!1400628)) b!7592168))

(assert (= (and b!7592162 res!3040699) b!7592169))

(assert (= (and b!7592168 (not res!3040696)) b!7592163))

(assert (= (and b!7592163 res!3040697) b!7592166))

(assert (= (or b!7592169 b!7592163) bm!696817))

(assert (= (or b!7592162 b!7592166) bm!696818))

(assert (= (or b!7592170 bm!696818) bm!696816))

(declare-fun m!8140728 () Bool)

(assert (=> b!7592164 m!8140728))

(declare-fun m!8140730 () Bool)

(assert (=> bm!696816 m!8140730))

(declare-fun m!8140732 () Bool)

(assert (=> bm!696817 m!8140732))

(assert (=> b!7591957 d!2320091))

(declare-fun bs!1941731 () Bool)

(declare-fun d!2320093 () Bool)

(assert (= bs!1941731 (and d!2320093 b!7591951)))

(declare-fun lambda!467262 () Int)

(assert (=> bs!1941731 (= lambda!467262 lambda!467242)))

(assert (=> bs!1941731 (not (= lambda!467262 lambda!467243))))

(declare-fun bs!1941732 () Bool)

(assert (= bs!1941732 (and d!2320093 b!7592092)))

(assert (=> bs!1941732 (not (= lambda!467262 lambda!467256))))

(declare-fun bs!1941733 () Bool)

(assert (= bs!1941733 (and d!2320093 b!7592101)))

(assert (=> bs!1941733 (not (= lambda!467262 lambda!467257))))

(assert (=> d!2320093 true))

(assert (=> d!2320093 true))

(assert (=> d!2320093 true))

(declare-fun lambda!467263 () Int)

(assert (=> bs!1941731 (not (= lambda!467263 lambda!467242))))

(declare-fun bs!1941734 () Bool)

(assert (= bs!1941734 d!2320093))

(assert (=> bs!1941734 (not (= lambda!467263 lambda!467262))))

(assert (=> bs!1941733 (= lambda!467263 lambda!467257)))

(assert (=> bs!1941731 (= lambda!467263 lambda!467243)))

(assert (=> bs!1941732 (not (= lambda!467263 lambda!467256))))

(assert (=> d!2320093 true))

(assert (=> d!2320093 true))

(assert (=> d!2320093 true))

(assert (=> d!2320093 (= (Exists!4338 lambda!467262) (Exists!4338 lambda!467263))))

(declare-fun lt!2653493 () Unit!167168)

(declare-fun choose!58666 (Regex!20106 Regex!20106 List!72989) Unit!167168)

(assert (=> d!2320093 (= lt!2653493 (choose!58666 (regOne!40724 r!22341) (regTwo!40724 r!22341) s!13436))))

(assert (=> d!2320093 (validRegex!10534 (regOne!40724 r!22341))))

(assert (=> d!2320093 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2627 (regOne!40724 r!22341) (regTwo!40724 r!22341) s!13436) lt!2653493)))

(declare-fun m!8140734 () Bool)

(assert (=> bs!1941734 m!8140734))

(declare-fun m!8140736 () Bool)

(assert (=> bs!1941734 m!8140736))

(declare-fun m!8140738 () Bool)

(assert (=> bs!1941734 m!8140738))

(declare-fun m!8140740 () Bool)

(assert (=> bs!1941734 m!8140740))

(assert (=> b!7591951 d!2320093))

(declare-fun bs!1941735 () Bool)

(declare-fun d!2320095 () Bool)

(assert (= bs!1941735 (and d!2320095 b!7591951)))

(declare-fun lambda!467266 () Int)

(assert (=> bs!1941735 (= lambda!467266 lambda!467242)))

(declare-fun bs!1941736 () Bool)

(assert (= bs!1941736 (and d!2320095 d!2320093)))

(assert (=> bs!1941736 (= lambda!467266 lambda!467262)))

(declare-fun bs!1941737 () Bool)

(assert (= bs!1941737 (and d!2320095 b!7592101)))

(assert (=> bs!1941737 (not (= lambda!467266 lambda!467257))))

(assert (=> bs!1941735 (not (= lambda!467266 lambda!467243))))

(declare-fun bs!1941738 () Bool)

(assert (= bs!1941738 (and d!2320095 b!7592092)))

(assert (=> bs!1941738 (not (= lambda!467266 lambda!467256))))

(assert (=> bs!1941736 (not (= lambda!467266 lambda!467263))))

(assert (=> d!2320095 true))

(assert (=> d!2320095 true))

(assert (=> d!2320095 true))

(assert (=> d!2320095 (= (isDefined!13949 (findConcatSeparation!3363 (regOne!40724 r!22341) (regTwo!40724 r!22341) Nil!72865 s!13436 s!13436)) (Exists!4338 lambda!467266))))

(declare-fun lt!2653497 () Unit!167168)

(declare-fun choose!58667 (Regex!20106 Regex!20106 List!72989) Unit!167168)

(assert (=> d!2320095 (= lt!2653497 (choose!58667 (regOne!40724 r!22341) (regTwo!40724 r!22341) s!13436))))

(assert (=> d!2320095 (validRegex!10534 (regOne!40724 r!22341))))

(assert (=> d!2320095 (= (lemmaFindConcatSeparationEquivalentToExists!3121 (regOne!40724 r!22341) (regTwo!40724 r!22341) s!13436) lt!2653497)))

(declare-fun bs!1941739 () Bool)

(assert (= bs!1941739 d!2320095))

(assert (=> bs!1941739 m!8140642))

(declare-fun m!8140756 () Bool)

(assert (=> bs!1941739 m!8140756))

(assert (=> bs!1941739 m!8140642))

(declare-fun m!8140758 () Bool)

(assert (=> bs!1941739 m!8140758))

(declare-fun m!8140760 () Bool)

(assert (=> bs!1941739 m!8140760))

(assert (=> bs!1941739 m!8140740))

(assert (=> b!7591951 d!2320095))

(declare-fun d!2320099 () Bool)

(declare-fun choose!58668 (Int) Bool)

(assert (=> d!2320099 (= (Exists!4338 lambda!467243) (choose!58668 lambda!467243))))

(declare-fun bs!1941740 () Bool)

(assert (= bs!1941740 d!2320099))

(declare-fun m!8140762 () Bool)

(assert (=> bs!1941740 m!8140762))

(assert (=> b!7591951 d!2320099))

(declare-fun d!2320101 () Bool)

(assert (=> d!2320101 (= (Exists!4338 lambda!467242) (choose!58668 lambda!467242))))

(declare-fun bs!1941741 () Bool)

(assert (= bs!1941741 d!2320101))

(declare-fun m!8140764 () Bool)

(assert (=> bs!1941741 m!8140764))

(assert (=> b!7591951 d!2320101))

(declare-fun b!7592225 () Bool)

(declare-fun e!4517914 () Bool)

(declare-fun e!4517912 () Bool)

(assert (=> b!7592225 (= e!4517914 e!4517912)))

(declare-fun res!3040737 () Bool)

(assert (=> b!7592225 (=> res!3040737 e!4517912)))

(declare-fun call!696827 () Bool)

(assert (=> b!7592225 (= res!3040737 call!696827)))

(declare-fun bm!696822 () Bool)

(assert (=> bm!696822 (= call!696827 (isEmpty!41551 (_1!37770 lt!2653463)))))

(declare-fun b!7592226 () Bool)

(assert (=> b!7592226 (= e!4517912 (not (= (head!15624 (_1!37770 lt!2653463)) (c!1400591 (regOne!40724 r!22341)))))))

(declare-fun b!7592227 () Bool)

(declare-fun res!3040743 () Bool)

(declare-fun e!4517911 () Bool)

(assert (=> b!7592227 (=> res!3040743 e!4517911)))

(assert (=> b!7592227 (= res!3040743 (not (is-ElementMatch!20106 (regOne!40724 r!22341))))))

(declare-fun e!4517917 () Bool)

(assert (=> b!7592227 (= e!4517917 e!4517911)))

(declare-fun b!7592228 () Bool)

(declare-fun e!4517913 () Bool)

(assert (=> b!7592228 (= e!4517913 (nullable!8797 (regOne!40724 r!22341)))))

(declare-fun b!7592229 () Bool)

(declare-fun lt!2653498 () Bool)

(assert (=> b!7592229 (= e!4517917 (not lt!2653498))))

(declare-fun b!7592230 () Bool)

(declare-fun e!4517916 () Bool)

(assert (=> b!7592230 (= e!4517916 (= lt!2653498 call!696827))))

(declare-fun d!2320103 () Bool)

(assert (=> d!2320103 e!4517916))

(declare-fun c!1400640 () Bool)

(assert (=> d!2320103 (= c!1400640 (is-EmptyExpr!20106 (regOne!40724 r!22341)))))

(assert (=> d!2320103 (= lt!2653498 e!4517913)))

(declare-fun c!1400641 () Bool)

(assert (=> d!2320103 (= c!1400641 (isEmpty!41551 (_1!37770 lt!2653463)))))

(assert (=> d!2320103 (validRegex!10534 (regOne!40724 r!22341))))

(assert (=> d!2320103 (= (matchR!9698 (regOne!40724 r!22341) (_1!37770 lt!2653463)) lt!2653498)))

(declare-fun b!7592231 () Bool)

(assert (=> b!7592231 (= e!4517913 (matchR!9698 (derivativeStep!5824 (regOne!40724 r!22341) (head!15624 (_1!37770 lt!2653463))) (tail!15164 (_1!37770 lt!2653463))))))

(declare-fun b!7592232 () Bool)

(assert (=> b!7592232 (= e!4517916 e!4517917)))

(declare-fun c!1400639 () Bool)

(assert (=> b!7592232 (= c!1400639 (is-EmptyLang!20106 (regOne!40724 r!22341)))))

(declare-fun b!7592233 () Bool)

(declare-fun res!3040741 () Bool)

(declare-fun e!4517915 () Bool)

(assert (=> b!7592233 (=> (not res!3040741) (not e!4517915))))

(assert (=> b!7592233 (= res!3040741 (not call!696827))))

(declare-fun b!7592234 () Bool)

(assert (=> b!7592234 (= e!4517911 e!4517914)))

(declare-fun res!3040742 () Bool)

(assert (=> b!7592234 (=> (not res!3040742) (not e!4517914))))

(assert (=> b!7592234 (= res!3040742 (not lt!2653498))))

(declare-fun b!7592235 () Bool)

(declare-fun res!3040738 () Bool)

(assert (=> b!7592235 (=> res!3040738 e!4517912)))

(assert (=> b!7592235 (= res!3040738 (not (isEmpty!41551 (tail!15164 (_1!37770 lt!2653463)))))))

(declare-fun b!7592236 () Bool)

(declare-fun res!3040740 () Bool)

(assert (=> b!7592236 (=> res!3040740 e!4517911)))

(assert (=> b!7592236 (= res!3040740 e!4517915)))

(declare-fun res!3040739 () Bool)

(assert (=> b!7592236 (=> (not res!3040739) (not e!4517915))))

(assert (=> b!7592236 (= res!3040739 lt!2653498)))

(declare-fun b!7592237 () Bool)

(declare-fun res!3040736 () Bool)

(assert (=> b!7592237 (=> (not res!3040736) (not e!4517915))))

(assert (=> b!7592237 (= res!3040736 (isEmpty!41551 (tail!15164 (_1!37770 lt!2653463))))))

(declare-fun b!7592238 () Bool)

(assert (=> b!7592238 (= e!4517915 (= (head!15624 (_1!37770 lt!2653463)) (c!1400591 (regOne!40724 r!22341))))))

(assert (= (and d!2320103 c!1400641) b!7592228))

(assert (= (and d!2320103 (not c!1400641)) b!7592231))

(assert (= (and d!2320103 c!1400640) b!7592230))

(assert (= (and d!2320103 (not c!1400640)) b!7592232))

(assert (= (and b!7592232 c!1400639) b!7592229))

(assert (= (and b!7592232 (not c!1400639)) b!7592227))

(assert (= (and b!7592227 (not res!3040743)) b!7592236))

(assert (= (and b!7592236 res!3040739) b!7592233))

(assert (= (and b!7592233 res!3040741) b!7592237))

(assert (= (and b!7592237 res!3040736) b!7592238))

(assert (= (and b!7592236 (not res!3040740)) b!7592234))

(assert (= (and b!7592234 res!3040742) b!7592225))

(assert (= (and b!7592225 (not res!3040737)) b!7592235))

(assert (= (and b!7592235 (not res!3040738)) b!7592226))

(assert (= (or b!7592230 b!7592225 b!7592233) bm!696822))

(declare-fun m!8140766 () Bool)

(assert (=> bm!696822 m!8140766))

(declare-fun m!8140768 () Bool)

(assert (=> b!7592226 m!8140768))

(declare-fun m!8140770 () Bool)

(assert (=> b!7592228 m!8140770))

(assert (=> b!7592231 m!8140768))

(assert (=> b!7592231 m!8140768))

(declare-fun m!8140772 () Bool)

(assert (=> b!7592231 m!8140772))

(declare-fun m!8140774 () Bool)

(assert (=> b!7592231 m!8140774))

(assert (=> b!7592231 m!8140772))

(assert (=> b!7592231 m!8140774))

(declare-fun m!8140776 () Bool)

(assert (=> b!7592231 m!8140776))

(assert (=> b!7592235 m!8140774))

(assert (=> b!7592235 m!8140774))

(declare-fun m!8140778 () Bool)

(assert (=> b!7592235 m!8140778))

(assert (=> b!7592238 m!8140768))

(assert (=> b!7592237 m!8140774))

(assert (=> b!7592237 m!8140774))

(assert (=> b!7592237 m!8140778))

(assert (=> d!2320103 m!8140766))

(assert (=> d!2320103 m!8140740))

(assert (=> b!7591951 d!2320103))

(declare-fun b!7592285 () Bool)

(declare-fun e!4517947 () Bool)

(declare-fun lt!2653507 () Option!17313)

(declare-fun ++!17515 (List!72989 List!72989) List!72989)

(assert (=> b!7592285 (= e!4517947 (= (++!17515 (_1!37770 (get!25629 lt!2653507)) (_2!37770 (get!25629 lt!2653507))) s!13436))))

(declare-fun d!2320105 () Bool)

(declare-fun e!4517944 () Bool)

(assert (=> d!2320105 e!4517944))

(declare-fun res!3040768 () Bool)

(assert (=> d!2320105 (=> res!3040768 e!4517944)))

(assert (=> d!2320105 (= res!3040768 e!4517947)))

(declare-fun res!3040769 () Bool)

(assert (=> d!2320105 (=> (not res!3040769) (not e!4517947))))

(assert (=> d!2320105 (= res!3040769 (isDefined!13949 lt!2653507))))

(declare-fun e!4517948 () Option!17313)

(assert (=> d!2320105 (= lt!2653507 e!4517948)))

(declare-fun c!1400654 () Bool)

(declare-fun e!4517946 () Bool)

(assert (=> d!2320105 (= c!1400654 e!4517946)))

(declare-fun res!3040766 () Bool)

(assert (=> d!2320105 (=> (not res!3040766) (not e!4517946))))

(assert (=> d!2320105 (= res!3040766 (matchR!9698 (regOne!40724 r!22341) Nil!72865))))

(assert (=> d!2320105 (validRegex!10534 (regOne!40724 r!22341))))

(assert (=> d!2320105 (= (findConcatSeparation!3363 (regOne!40724 r!22341) (regTwo!40724 r!22341) Nil!72865 s!13436 s!13436) lt!2653507)))

(declare-fun b!7592286 () Bool)

(declare-fun res!3040770 () Bool)

(assert (=> b!7592286 (=> (not res!3040770) (not e!4517947))))

(assert (=> b!7592286 (= res!3040770 (matchR!9698 (regOne!40724 r!22341) (_1!37770 (get!25629 lt!2653507))))))

(declare-fun b!7592287 () Bool)

(assert (=> b!7592287 (= e!4517948 (Some!17312 (tuple2!68935 Nil!72865 s!13436)))))

(declare-fun b!7592288 () Bool)

(declare-fun e!4517945 () Option!17313)

(assert (=> b!7592288 (= e!4517945 None!17312)))

(declare-fun b!7592289 () Bool)

(assert (=> b!7592289 (= e!4517948 e!4517945)))

(declare-fun c!1400655 () Bool)

(assert (=> b!7592289 (= c!1400655 (is-Nil!72865 s!13436))))

(declare-fun b!7592290 () Bool)

(assert (=> b!7592290 (= e!4517944 (not (isDefined!13949 lt!2653507)))))

(declare-fun b!7592291 () Bool)

(assert (=> b!7592291 (= e!4517946 (matchR!9698 (regTwo!40724 r!22341) s!13436))))

(declare-fun b!7592292 () Bool)

(declare-fun res!3040767 () Bool)

(assert (=> b!7592292 (=> (not res!3040767) (not e!4517947))))

(assert (=> b!7592292 (= res!3040767 (matchR!9698 (regTwo!40724 r!22341) (_2!37770 (get!25629 lt!2653507))))))

(declare-fun b!7592293 () Bool)

(declare-fun lt!2653505 () Unit!167168)

(declare-fun lt!2653506 () Unit!167168)

(assert (=> b!7592293 (= lt!2653505 lt!2653506)))

(assert (=> b!7592293 (= (++!17515 (++!17515 Nil!72865 (Cons!72865 (h!79313 s!13436) Nil!72865)) (t!387724 s!13436)) s!13436)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!3202 (List!72989 C!40538 List!72989 List!72989) Unit!167168)

(assert (=> b!7592293 (= lt!2653506 (lemmaMoveElementToOtherListKeepsConcatEq!3202 Nil!72865 (h!79313 s!13436) (t!387724 s!13436) s!13436))))

(assert (=> b!7592293 (= e!4517945 (findConcatSeparation!3363 (regOne!40724 r!22341) (regTwo!40724 r!22341) (++!17515 Nil!72865 (Cons!72865 (h!79313 s!13436) Nil!72865)) (t!387724 s!13436) s!13436))))

(assert (= (and d!2320105 res!3040766) b!7592291))

(assert (= (and d!2320105 c!1400654) b!7592287))

(assert (= (and d!2320105 (not c!1400654)) b!7592289))

(assert (= (and b!7592289 c!1400655) b!7592288))

(assert (= (and b!7592289 (not c!1400655)) b!7592293))

(assert (= (and d!2320105 res!3040769) b!7592286))

(assert (= (and b!7592286 res!3040770) b!7592292))

(assert (= (and b!7592292 res!3040767) b!7592285))

(assert (= (and d!2320105 (not res!3040768)) b!7592290))

(declare-fun m!8140780 () Bool)

(assert (=> d!2320105 m!8140780))

(declare-fun m!8140782 () Bool)

(assert (=> d!2320105 m!8140782))

(assert (=> d!2320105 m!8140740))

(declare-fun m!8140784 () Bool)

(assert (=> b!7592286 m!8140784))

(declare-fun m!8140786 () Bool)

(assert (=> b!7592286 m!8140786))

(assert (=> b!7592292 m!8140784))

(declare-fun m!8140788 () Bool)

(assert (=> b!7592292 m!8140788))

(assert (=> b!7592285 m!8140784))

(declare-fun m!8140790 () Bool)

(assert (=> b!7592285 m!8140790))

(declare-fun m!8140792 () Bool)

(assert (=> b!7592293 m!8140792))

(assert (=> b!7592293 m!8140792))

(declare-fun m!8140794 () Bool)

(assert (=> b!7592293 m!8140794))

(declare-fun m!8140796 () Bool)

(assert (=> b!7592293 m!8140796))

(assert (=> b!7592293 m!8140792))

(declare-fun m!8140798 () Bool)

(assert (=> b!7592293 m!8140798))

(assert (=> b!7592290 m!8140780))

(declare-fun m!8140800 () Bool)

(assert (=> b!7592291 m!8140800))

(assert (=> b!7591951 d!2320105))

(declare-fun d!2320107 () Bool)

(declare-fun isEmpty!41553 (Option!17313) Bool)

(assert (=> d!2320107 (= (isDefined!13949 lt!2653461) (not (isEmpty!41553 lt!2653461)))))

(declare-fun bs!1941742 () Bool)

(assert (= bs!1941742 d!2320107))

(declare-fun m!8140802 () Bool)

(assert (=> bs!1941742 m!8140802))

(assert (=> b!7591951 d!2320107))

(declare-fun d!2320109 () Bool)

(assert (=> d!2320109 (= (get!25629 lt!2653461) (v!54447 lt!2653461))))

(assert (=> b!7591951 d!2320109))

(declare-fun d!2320111 () Bool)

(assert (=> d!2320111 (= (isEmpty!41551 s!13436) (is-Nil!72865 s!13436))))

(assert (=> b!7591950 d!2320111))

(declare-fun b!7592294 () Bool)

(declare-fun e!4517952 () Bool)

(declare-fun e!4517950 () Bool)

(assert (=> b!7592294 (= e!4517952 e!4517950)))

(declare-fun res!3040772 () Bool)

(assert (=> b!7592294 (=> res!3040772 e!4517950)))

(declare-fun call!696828 () Bool)

(assert (=> b!7592294 (= res!3040772 call!696828)))

(declare-fun bm!696823 () Bool)

(assert (=> bm!696823 (= call!696828 (isEmpty!41551 (_2!37770 lt!2653463)))))

(declare-fun b!7592295 () Bool)

(assert (=> b!7592295 (= e!4517950 (not (= (head!15624 (_2!37770 lt!2653463)) (c!1400591 (regTwo!40724 r!22341)))))))

(declare-fun b!7592296 () Bool)

(declare-fun res!3040778 () Bool)

(declare-fun e!4517949 () Bool)

(assert (=> b!7592296 (=> res!3040778 e!4517949)))

(assert (=> b!7592296 (= res!3040778 (not (is-ElementMatch!20106 (regTwo!40724 r!22341))))))

(declare-fun e!4517955 () Bool)

(assert (=> b!7592296 (= e!4517955 e!4517949)))

(declare-fun b!7592297 () Bool)

(declare-fun e!4517951 () Bool)

(assert (=> b!7592297 (= e!4517951 (nullable!8797 (regTwo!40724 r!22341)))))

(declare-fun b!7592298 () Bool)

(declare-fun lt!2653508 () Bool)

(assert (=> b!7592298 (= e!4517955 (not lt!2653508))))

(declare-fun b!7592299 () Bool)

(declare-fun e!4517954 () Bool)

(assert (=> b!7592299 (= e!4517954 (= lt!2653508 call!696828))))

(declare-fun d!2320113 () Bool)

(assert (=> d!2320113 e!4517954))

(declare-fun c!1400657 () Bool)

(assert (=> d!2320113 (= c!1400657 (is-EmptyExpr!20106 (regTwo!40724 r!22341)))))

(assert (=> d!2320113 (= lt!2653508 e!4517951)))

(declare-fun c!1400658 () Bool)

(assert (=> d!2320113 (= c!1400658 (isEmpty!41551 (_2!37770 lt!2653463)))))

(assert (=> d!2320113 (validRegex!10534 (regTwo!40724 r!22341))))

(assert (=> d!2320113 (= (matchR!9698 (regTwo!40724 r!22341) (_2!37770 lt!2653463)) lt!2653508)))

(declare-fun b!7592300 () Bool)

(assert (=> b!7592300 (= e!4517951 (matchR!9698 (derivativeStep!5824 (regTwo!40724 r!22341) (head!15624 (_2!37770 lt!2653463))) (tail!15164 (_2!37770 lt!2653463))))))

(declare-fun b!7592301 () Bool)

(assert (=> b!7592301 (= e!4517954 e!4517955)))

(declare-fun c!1400656 () Bool)

(assert (=> b!7592301 (= c!1400656 (is-EmptyLang!20106 (regTwo!40724 r!22341)))))

(declare-fun b!7592302 () Bool)

(declare-fun res!3040776 () Bool)

(declare-fun e!4517953 () Bool)

(assert (=> b!7592302 (=> (not res!3040776) (not e!4517953))))

(assert (=> b!7592302 (= res!3040776 (not call!696828))))

(declare-fun b!7592303 () Bool)

(assert (=> b!7592303 (= e!4517949 e!4517952)))

(declare-fun res!3040777 () Bool)

(assert (=> b!7592303 (=> (not res!3040777) (not e!4517952))))

(assert (=> b!7592303 (= res!3040777 (not lt!2653508))))

(declare-fun b!7592304 () Bool)

(declare-fun res!3040773 () Bool)

(assert (=> b!7592304 (=> res!3040773 e!4517950)))

(assert (=> b!7592304 (= res!3040773 (not (isEmpty!41551 (tail!15164 (_2!37770 lt!2653463)))))))

(declare-fun b!7592305 () Bool)

(declare-fun res!3040775 () Bool)

(assert (=> b!7592305 (=> res!3040775 e!4517949)))

(assert (=> b!7592305 (= res!3040775 e!4517953)))

(declare-fun res!3040774 () Bool)

(assert (=> b!7592305 (=> (not res!3040774) (not e!4517953))))

(assert (=> b!7592305 (= res!3040774 lt!2653508)))

(declare-fun b!7592306 () Bool)

(declare-fun res!3040771 () Bool)

(assert (=> b!7592306 (=> (not res!3040771) (not e!4517953))))

(assert (=> b!7592306 (= res!3040771 (isEmpty!41551 (tail!15164 (_2!37770 lt!2653463))))))

(declare-fun b!7592307 () Bool)

(assert (=> b!7592307 (= e!4517953 (= (head!15624 (_2!37770 lt!2653463)) (c!1400591 (regTwo!40724 r!22341))))))

(assert (= (and d!2320113 c!1400658) b!7592297))

(assert (= (and d!2320113 (not c!1400658)) b!7592300))

(assert (= (and d!2320113 c!1400657) b!7592299))

(assert (= (and d!2320113 (not c!1400657)) b!7592301))

(assert (= (and b!7592301 c!1400656) b!7592298))

(assert (= (and b!7592301 (not c!1400656)) b!7592296))

(assert (= (and b!7592296 (not res!3040778)) b!7592305))

(assert (= (and b!7592305 res!3040774) b!7592302))

(assert (= (and b!7592302 res!3040776) b!7592306))

(assert (= (and b!7592306 res!3040771) b!7592307))

(assert (= (and b!7592305 (not res!3040775)) b!7592303))

(assert (= (and b!7592303 res!3040777) b!7592294))

(assert (= (and b!7592294 (not res!3040772)) b!7592304))

(assert (= (and b!7592304 (not res!3040773)) b!7592295))

(assert (= (or b!7592299 b!7592294 b!7592302) bm!696823))

(declare-fun m!8140804 () Bool)

(assert (=> bm!696823 m!8140804))

(declare-fun m!8140806 () Bool)

(assert (=> b!7592295 m!8140806))

(declare-fun m!8140808 () Bool)

(assert (=> b!7592297 m!8140808))

(assert (=> b!7592300 m!8140806))

(assert (=> b!7592300 m!8140806))

(declare-fun m!8140810 () Bool)

(assert (=> b!7592300 m!8140810))

(declare-fun m!8140812 () Bool)

(assert (=> b!7592300 m!8140812))

(assert (=> b!7592300 m!8140810))

(assert (=> b!7592300 m!8140812))

(declare-fun m!8140814 () Bool)

(assert (=> b!7592300 m!8140814))

(assert (=> b!7592304 m!8140812))

(assert (=> b!7592304 m!8140812))

(declare-fun m!8140816 () Bool)

(assert (=> b!7592304 m!8140816))

(assert (=> b!7592307 m!8140806))

(assert (=> b!7592306 m!8140812))

(assert (=> b!7592306 m!8140812))

(assert (=> b!7592306 m!8140816))

(assert (=> d!2320113 m!8140804))

(assert (=> d!2320113 m!8140618))

(assert (=> b!7591954 d!2320113))

(declare-fun e!4517960 () Bool)

(assert (=> b!7591952 (= tp!2212660 e!4517960)))

(declare-fun b!7592323 () Bool)

(declare-fun tp!2212695 () Bool)

(declare-fun tp!2212693 () Bool)

(assert (=> b!7592323 (= e!4517960 (and tp!2212695 tp!2212693))))

(declare-fun b!7592322 () Bool)

(assert (=> b!7592322 (= e!4517960 tp_is_empty!50567)))

(declare-fun b!7592324 () Bool)

(declare-fun tp!2212694 () Bool)

(assert (=> b!7592324 (= e!4517960 tp!2212694)))

(declare-fun b!7592325 () Bool)

(declare-fun tp!2212696 () Bool)

(declare-fun tp!2212692 () Bool)

(assert (=> b!7592325 (= e!4517960 (and tp!2212696 tp!2212692))))

(assert (= (and b!7591952 (is-ElementMatch!20106 (reg!20435 r!22341))) b!7592322))

(assert (= (and b!7591952 (is-Concat!28951 (reg!20435 r!22341))) b!7592323))

(assert (= (and b!7591952 (is-Star!20106 (reg!20435 r!22341))) b!7592324))

(assert (= (and b!7591952 (is-Union!20106 (reg!20435 r!22341))) b!7592325))

(declare-fun b!7592330 () Bool)

(declare-fun e!4517963 () Bool)

(declare-fun tp!2212699 () Bool)

(assert (=> b!7592330 (= e!4517963 (and tp_is_empty!50567 tp!2212699))))

(assert (=> b!7591946 (= tp!2212663 e!4517963)))

(assert (= (and b!7591946 (is-Cons!72865 (t!387724 s!13436))) b!7592330))

(declare-fun e!4517964 () Bool)

(assert (=> b!7591956 (= tp!2212659 e!4517964)))

(declare-fun b!7592332 () Bool)

(declare-fun tp!2212703 () Bool)

(declare-fun tp!2212701 () Bool)

(assert (=> b!7592332 (= e!4517964 (and tp!2212703 tp!2212701))))

(declare-fun b!7592331 () Bool)

(assert (=> b!7592331 (= e!4517964 tp_is_empty!50567)))

(declare-fun b!7592333 () Bool)

(declare-fun tp!2212702 () Bool)

(assert (=> b!7592333 (= e!4517964 tp!2212702)))

(declare-fun b!7592334 () Bool)

(declare-fun tp!2212704 () Bool)

(declare-fun tp!2212700 () Bool)

(assert (=> b!7592334 (= e!4517964 (and tp!2212704 tp!2212700))))

(assert (= (and b!7591956 (is-ElementMatch!20106 (regOne!40725 r!22341))) b!7592331))

(assert (= (and b!7591956 (is-Concat!28951 (regOne!40725 r!22341))) b!7592332))

(assert (= (and b!7591956 (is-Star!20106 (regOne!40725 r!22341))) b!7592333))

(assert (= (and b!7591956 (is-Union!20106 (regOne!40725 r!22341))) b!7592334))

(declare-fun e!4517965 () Bool)

(assert (=> b!7591956 (= tp!2212661 e!4517965)))

(declare-fun b!7592336 () Bool)

(declare-fun tp!2212708 () Bool)

(declare-fun tp!2212706 () Bool)

(assert (=> b!7592336 (= e!4517965 (and tp!2212708 tp!2212706))))

(declare-fun b!7592335 () Bool)

(assert (=> b!7592335 (= e!4517965 tp_is_empty!50567)))

(declare-fun b!7592337 () Bool)

(declare-fun tp!2212707 () Bool)

(assert (=> b!7592337 (= e!4517965 tp!2212707)))

(declare-fun b!7592338 () Bool)

(declare-fun tp!2212709 () Bool)

(declare-fun tp!2212705 () Bool)

(assert (=> b!7592338 (= e!4517965 (and tp!2212709 tp!2212705))))

(assert (= (and b!7591956 (is-ElementMatch!20106 (regTwo!40725 r!22341))) b!7592335))

(assert (= (and b!7591956 (is-Concat!28951 (regTwo!40725 r!22341))) b!7592336))

(assert (= (and b!7591956 (is-Star!20106 (regTwo!40725 r!22341))) b!7592337))

(assert (= (and b!7591956 (is-Union!20106 (regTwo!40725 r!22341))) b!7592338))

(declare-fun e!4517966 () Bool)

(assert (=> b!7591949 (= tp!2212658 e!4517966)))

(declare-fun b!7592340 () Bool)

(declare-fun tp!2212713 () Bool)

(declare-fun tp!2212711 () Bool)

(assert (=> b!7592340 (= e!4517966 (and tp!2212713 tp!2212711))))

(declare-fun b!7592339 () Bool)

(assert (=> b!7592339 (= e!4517966 tp_is_empty!50567)))

(declare-fun b!7592341 () Bool)

(declare-fun tp!2212712 () Bool)

(assert (=> b!7592341 (= e!4517966 tp!2212712)))

(declare-fun b!7592342 () Bool)

(declare-fun tp!2212714 () Bool)

(declare-fun tp!2212710 () Bool)

(assert (=> b!7592342 (= e!4517966 (and tp!2212714 tp!2212710))))

(assert (= (and b!7591949 (is-ElementMatch!20106 (regOne!40724 r!22341))) b!7592339))

(assert (= (and b!7591949 (is-Concat!28951 (regOne!40724 r!22341))) b!7592340))

(assert (= (and b!7591949 (is-Star!20106 (regOne!40724 r!22341))) b!7592341))

(assert (= (and b!7591949 (is-Union!20106 (regOne!40724 r!22341))) b!7592342))

(declare-fun e!4517967 () Bool)

(assert (=> b!7591949 (= tp!2212662 e!4517967)))

(declare-fun b!7592344 () Bool)

(declare-fun tp!2212718 () Bool)

(declare-fun tp!2212716 () Bool)

(assert (=> b!7592344 (= e!4517967 (and tp!2212718 tp!2212716))))

(declare-fun b!7592343 () Bool)

(assert (=> b!7592343 (= e!4517967 tp_is_empty!50567)))

(declare-fun b!7592345 () Bool)

(declare-fun tp!2212717 () Bool)

(assert (=> b!7592345 (= e!4517967 tp!2212717)))

(declare-fun b!7592346 () Bool)

(declare-fun tp!2212719 () Bool)

(declare-fun tp!2212715 () Bool)

(assert (=> b!7592346 (= e!4517967 (and tp!2212719 tp!2212715))))

(assert (= (and b!7591949 (is-ElementMatch!20106 (regTwo!40724 r!22341))) b!7592343))

(assert (= (and b!7591949 (is-Concat!28951 (regTwo!40724 r!22341))) b!7592344))

(assert (= (and b!7591949 (is-Star!20106 (regTwo!40724 r!22341))) b!7592345))

(assert (= (and b!7591949 (is-Union!20106 (regTwo!40724 r!22341))) b!7592346))

(push 1)

(assert (not d!2320099))

(assert (not bm!696800))

(assert (not b!7592332))

(assert (not b!7592226))

(assert (not b!7592325))

(assert (not b!7592340))

(assert (not b!7592342))

(assert (not b!7592095))

(assert (not b!7592330))

(assert (not d!2320073))

(assert (not bm!696799))

(assert (not b!7592151))

(assert (not d!2320101))

(assert (not b!7592149))

(assert (not b!7592237))

(assert (not bm!696815))

(assert (not b!7592290))

(assert (not b!7592304))

(assert (not b!7592293))

(assert (not b!7592164))

(assert (not b!7592286))

(assert (not b!7592297))

(assert (not bm!696792))

(assert (not b!7592306))

(assert (not bm!696822))

(assert (not b!7592337))

(assert (not d!2320089))

(assert (not bm!696793))

(assert (not bm!696816))

(assert (not b!7592346))

(assert (not d!2320103))

(assert (not b!7592285))

(assert (not b!7592235))

(assert (not b!7592291))

(assert (not b!7592336))

(assert (not d!2320083))

(assert (not b!7592324))

(assert (not d!2320075))

(assert (not d!2320105))

(assert (not b!7592228))

(assert tp_is_empty!50567)

(assert (not b!7592333))

(assert (not b!7592307))

(assert (not b!7592160))

(assert (not b!7592323))

(assert (not b!7592345))

(assert (not b!7592334))

(assert (not b!7592094))

(assert (not b!7592238))

(assert (not bm!696817))

(assert (not d!2320093))

(assert (not b!7592300))

(assert (not d!2320107))

(assert (not b!7592344))

(assert (not b!7592161))

(assert (not b!7592034))

(assert (not d!2320113))

(assert (not b!7592338))

(assert (not b!7592158))

(assert (not b!7592231))

(assert (not b!7592154))

(assert (not b!7592292))

(assert (not b!7592295))

(assert (not d!2320095))

(assert (not b!7592341))

(assert (not bm!696823))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


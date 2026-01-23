; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!756778 () Bool)

(assert start!756778)

(declare-fun b!8035624 () Bool)

(declare-fun e!4733428 () Bool)

(declare-fun tp!2405978 () Bool)

(assert (=> b!8035624 (= e!4733428 tp!2405978)))

(declare-fun res!3177037 () Bool)

(declare-fun e!4733429 () Bool)

(assert (=> start!756778 (=> (not res!3177037) (not e!4733429))))

(declare-datatypes ((C!43822 0))(
  ( (C!43823 (val!32687 Int)) )
))
(declare-datatypes ((Regex!21742 0))(
  ( (ElementMatch!21742 (c!1474147 C!43822)) (Concat!30745 (regOne!43996 Regex!21742) (regTwo!43996 Regex!21742)) (EmptyExpr!21742) (Star!21742 (reg!22071 Regex!21742)) (EmptyLang!21742) (Union!21742 (regOne!43997 Regex!21742) (regTwo!43997 Regex!21742)) )
))
(declare-fun r!13107 () Regex!21742)

(declare-fun validRegex!12038 (Regex!21742) Bool)

(assert (=> start!756778 (= res!3177037 (validRegex!12038 r!13107))))

(assert (=> start!756778 e!4733429))

(assert (=> start!756778 e!4733428))

(declare-fun tp_is_empty!54479 () Bool)

(assert (=> start!756778 tp_is_empty!54479))

(declare-fun b!8035625 () Bool)

(declare-fun tp!2405974 () Bool)

(declare-fun tp!2405975 () Bool)

(assert (=> b!8035625 (= e!4733428 (and tp!2405974 tp!2405975))))

(declare-fun b!8035626 () Bool)

(declare-fun tp!2405977 () Bool)

(declare-fun tp!2405976 () Bool)

(assert (=> b!8035626 (= e!4733428 (and tp!2405977 tp!2405976))))

(declare-fun b!8035627 () Bool)

(declare-fun a!2390 () C!43822)

(declare-fun derivativeStep!6663 (Regex!21742 C!43822) Regex!21742)

(assert (=> b!8035627 (= e!4733429 (not (validRegex!12038 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107))))))

(declare-fun b!8035628 () Bool)

(assert (=> b!8035628 (= e!4733428 tp_is_empty!54479)))

(declare-fun b!8035629 () Bool)

(declare-fun res!3177036 () Bool)

(assert (=> b!8035629 (=> (not res!3177036) (not e!4733429))))

(assert (=> b!8035629 (= res!3177036 (and (not (is-EmptyExpr!21742 r!13107)) (not (is-EmptyLang!21742 r!13107)) (not (is-ElementMatch!21742 r!13107)) (not (is-Union!21742 r!13107)) (is-Star!21742 r!13107)))))

(assert (= (and start!756778 res!3177037) b!8035629))

(assert (= (and b!8035629 res!3177036) b!8035627))

(assert (= (and start!756778 (is-ElementMatch!21742 r!13107)) b!8035628))

(assert (= (and start!756778 (is-Concat!30745 r!13107)) b!8035626))

(assert (= (and start!756778 (is-Star!21742 r!13107)) b!8035624))

(assert (= (and start!756778 (is-Union!21742 r!13107)) b!8035625))

(declare-fun m!8393226 () Bool)

(assert (=> start!756778 m!8393226))

(declare-fun m!8393228 () Bool)

(assert (=> b!8035627 m!8393228))

(declare-fun m!8393230 () Bool)

(assert (=> b!8035627 m!8393230))

(push 1)

(assert (not b!8035626))

(assert tp_is_empty!54479)

(assert (not b!8035624))

(assert (not start!756778))

(assert (not b!8035625))

(assert (not b!8035627))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!745666 () Bool)

(declare-fun call!745672 () Bool)

(declare-fun call!745671 () Bool)

(assert (=> bm!745666 (= call!745672 call!745671)))

(declare-fun b!8035666 () Bool)

(declare-fun res!3177057 () Bool)

(declare-fun e!4733456 () Bool)

(assert (=> b!8035666 (=> res!3177057 e!4733456)))

(assert (=> b!8035666 (= res!3177057 (not (is-Concat!30745 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107))))))

(declare-fun e!4733455 () Bool)

(assert (=> b!8035666 (= e!4733455 e!4733456)))

(declare-fun bm!745667 () Bool)

(declare-fun c!1474154 () Bool)

(declare-fun c!1474153 () Bool)

(assert (=> bm!745667 (= call!745671 (validRegex!12038 (ite c!1474154 (reg!22071 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107)) (ite c!1474153 (regTwo!43997 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107)) (regTwo!43996 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107))))))))

(declare-fun b!8035667 () Bool)

(declare-fun e!4733453 () Bool)

(declare-fun e!4733451 () Bool)

(assert (=> b!8035667 (= e!4733453 e!4733451)))

(assert (=> b!8035667 (= c!1474154 (is-Star!21742 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107)))))

(declare-fun b!8035668 () Bool)

(declare-fun e!4733454 () Bool)

(assert (=> b!8035668 (= e!4733451 e!4733454)))

(declare-fun res!3177058 () Bool)

(declare-fun nullable!9767 (Regex!21742) Bool)

(assert (=> b!8035668 (= res!3177058 (not (nullable!9767 (reg!22071 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107)))))))

(assert (=> b!8035668 (=> (not res!3177058) (not e!4733454))))

(declare-fun b!8035669 () Bool)

(declare-fun e!4733452 () Bool)

(assert (=> b!8035669 (= e!4733452 call!745672)))

(declare-fun b!8035670 () Bool)

(declare-fun res!3177054 () Bool)

(declare-fun e!4733450 () Bool)

(assert (=> b!8035670 (=> (not res!3177054) (not e!4733450))))

(declare-fun call!745673 () Bool)

(assert (=> b!8035670 (= res!3177054 call!745673)))

(assert (=> b!8035670 (= e!4733455 e!4733450)))

(declare-fun b!8035671 () Bool)

(assert (=> b!8035671 (= e!4733450 call!745672)))

(declare-fun d!2394988 () Bool)

(declare-fun res!3177056 () Bool)

(assert (=> d!2394988 (=> res!3177056 e!4733453)))

(assert (=> d!2394988 (= res!3177056 (is-ElementMatch!21742 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107)))))

(assert (=> d!2394988 (= (validRegex!12038 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107)) e!4733453)))

(declare-fun b!8035672 () Bool)

(assert (=> b!8035672 (= e!4733456 e!4733452)))

(declare-fun res!3177055 () Bool)

(assert (=> b!8035672 (=> (not res!3177055) (not e!4733452))))

(assert (=> b!8035672 (= res!3177055 call!745673)))

(declare-fun b!8035673 () Bool)

(assert (=> b!8035673 (= e!4733454 call!745671)))

(declare-fun bm!745668 () Bool)

(assert (=> bm!745668 (= call!745673 (validRegex!12038 (ite c!1474153 (regOne!43997 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107)) (regOne!43996 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107)))))))

(declare-fun b!8035674 () Bool)

(assert (=> b!8035674 (= e!4733451 e!4733455)))

(assert (=> b!8035674 (= c!1474153 (is-Union!21742 (Concat!30745 (derivativeStep!6663 (reg!22071 r!13107) a!2390) r!13107)))))

(assert (= (and d!2394988 (not res!3177056)) b!8035667))

(assert (= (and b!8035667 c!1474154) b!8035668))

(assert (= (and b!8035667 (not c!1474154)) b!8035674))

(assert (= (and b!8035668 res!3177058) b!8035673))

(assert (= (and b!8035674 c!1474153) b!8035670))

(assert (= (and b!8035674 (not c!1474153)) b!8035666))

(assert (= (and b!8035670 res!3177054) b!8035671))

(assert (= (and b!8035666 (not res!3177057)) b!8035672))

(assert (= (and b!8035672 res!3177055) b!8035669))

(assert (= (or b!8035671 b!8035669) bm!745666))

(assert (= (or b!8035670 b!8035672) bm!745668))

(assert (= (or b!8035673 bm!745666) bm!745667))

(declare-fun m!8393238 () Bool)

(assert (=> bm!745667 m!8393238))

(declare-fun m!8393240 () Bool)

(assert (=> b!8035668 m!8393240))

(declare-fun m!8393242 () Bool)

(assert (=> bm!745668 m!8393242))

(assert (=> b!8035627 d!2394988))

(declare-fun call!745692 () Regex!21742)

(declare-fun bm!745686 () Bool)

(declare-fun c!1474171 () Bool)

(assert (=> bm!745686 (= call!745692 (derivativeStep!6663 (ite c!1474171 (regTwo!43997 (reg!22071 r!13107)) (regOne!43996 (reg!22071 r!13107))) a!2390))))

(declare-fun b!8035722 () Bool)

(declare-fun e!4733491 () Regex!21742)

(assert (=> b!8035722 (= e!4733491 EmptyLang!21742)))

(declare-fun call!745691 () Regex!21742)

(declare-fun b!8035723 () Bool)

(declare-fun e!4733488 () Regex!21742)

(assert (=> b!8035723 (= e!4733488 (Union!21742 (Concat!30745 call!745692 (regTwo!43996 (reg!22071 r!13107))) call!745691))))

(declare-fun bm!745687 () Bool)

(declare-fun call!745693 () Regex!21742)

(declare-fun call!745694 () Regex!21742)

(assert (=> bm!745687 (= call!745693 call!745694)))

(declare-fun b!8035724 () Bool)

(declare-fun e!4733492 () Regex!21742)

(assert (=> b!8035724 (= e!4733491 e!4733492)))

(declare-fun c!1474172 () Bool)

(assert (=> b!8035724 (= c!1474172 (is-ElementMatch!21742 (reg!22071 r!13107)))))

(declare-fun b!8035725 () Bool)

(declare-fun c!1474175 () Bool)

(assert (=> b!8035725 (= c!1474175 (nullable!9767 (regOne!43996 (reg!22071 r!13107))))))

(declare-fun e!4733489 () Regex!21742)

(assert (=> b!8035725 (= e!4733489 e!4733488)))

(declare-fun c!1474173 () Bool)

(declare-fun bm!745688 () Bool)

(assert (=> bm!745688 (= call!745694 (derivativeStep!6663 (ite c!1474171 (regOne!43997 (reg!22071 r!13107)) (ite c!1474173 (reg!22071 (reg!22071 r!13107)) (ite c!1474175 (regTwo!43996 (reg!22071 r!13107)) (regOne!43996 (reg!22071 r!13107))))) a!2390))))

(declare-fun b!8035726 () Bool)

(assert (=> b!8035726 (= c!1474171 (is-Union!21742 (reg!22071 r!13107)))))

(declare-fun e!4733490 () Regex!21742)

(assert (=> b!8035726 (= e!4733492 e!4733490)))

(declare-fun bm!745689 () Bool)

(assert (=> bm!745689 (= call!745691 call!745693)))

(declare-fun b!8035727 () Bool)

(assert (=> b!8035727 (= e!4733492 (ite (= a!2390 (c!1474147 (reg!22071 r!13107))) EmptyExpr!21742 EmptyLang!21742))))

(declare-fun b!8035728 () Bool)

(assert (=> b!8035728 (= e!4733488 (Union!21742 (Concat!30745 call!745691 (regTwo!43996 (reg!22071 r!13107))) EmptyLang!21742))))

(declare-fun d!2394992 () Bool)

(declare-fun lt!2722077 () Regex!21742)

(assert (=> d!2394992 (validRegex!12038 lt!2722077)))

(assert (=> d!2394992 (= lt!2722077 e!4733491)))

(declare-fun c!1474174 () Bool)

(assert (=> d!2394992 (= c!1474174 (or (is-EmptyExpr!21742 (reg!22071 r!13107)) (is-EmptyLang!21742 (reg!22071 r!13107))))))

(assert (=> d!2394992 (validRegex!12038 (reg!22071 r!13107))))

(assert (=> d!2394992 (= (derivativeStep!6663 (reg!22071 r!13107) a!2390) lt!2722077)))

(declare-fun b!8035729 () Bool)

(assert (=> b!8035729 (= e!4733490 e!4733489)))

(assert (=> b!8035729 (= c!1474173 (is-Star!21742 (reg!22071 r!13107)))))

(declare-fun b!8035730 () Bool)

(assert (=> b!8035730 (= e!4733489 (Concat!30745 call!745693 (reg!22071 r!13107)))))

(declare-fun b!8035731 () Bool)

(assert (=> b!8035731 (= e!4733490 (Union!21742 call!745694 call!745692))))

(assert (= (and d!2394992 c!1474174) b!8035722))

(assert (= (and d!2394992 (not c!1474174)) b!8035724))

(assert (= (and b!8035724 c!1474172) b!8035727))

(assert (= (and b!8035724 (not c!1474172)) b!8035726))

(assert (= (and b!8035726 c!1474171) b!8035731))

(assert (= (and b!8035726 (not c!1474171)) b!8035729))

(assert (= (and b!8035729 c!1474173) b!8035730))

(assert (= (and b!8035729 (not c!1474173)) b!8035725))

(assert (= (and b!8035725 c!1474175) b!8035723))

(assert (= (and b!8035725 (not c!1474175)) b!8035728))

(assert (= (or b!8035723 b!8035728) bm!745689))

(assert (= (or b!8035730 bm!745689) bm!745687))

(assert (= (or b!8035731 b!8035723) bm!745686))

(assert (= (or b!8035731 bm!745687) bm!745688))

(declare-fun m!8393250 () Bool)

(assert (=> bm!745686 m!8393250))

(declare-fun m!8393252 () Bool)

(assert (=> b!8035725 m!8393252))

(declare-fun m!8393254 () Bool)

(assert (=> bm!745688 m!8393254))

(declare-fun m!8393256 () Bool)

(assert (=> d!2394992 m!8393256))

(declare-fun m!8393258 () Bool)

(assert (=> d!2394992 m!8393258))

(assert (=> b!8035627 d!2394992))

(declare-fun bm!745690 () Bool)

(declare-fun call!745696 () Bool)

(declare-fun call!745695 () Bool)

(assert (=> bm!745690 (= call!745696 call!745695)))

(declare-fun b!8035732 () Bool)

(declare-fun res!3177077 () Bool)

(declare-fun e!4733499 () Bool)

(assert (=> b!8035732 (=> res!3177077 e!4733499)))

(assert (=> b!8035732 (= res!3177077 (not (is-Concat!30745 r!13107)))))

(declare-fun e!4733498 () Bool)

(assert (=> b!8035732 (= e!4733498 e!4733499)))

(declare-fun c!1474177 () Bool)

(declare-fun c!1474176 () Bool)

(declare-fun bm!745691 () Bool)

(assert (=> bm!745691 (= call!745695 (validRegex!12038 (ite c!1474177 (reg!22071 r!13107) (ite c!1474176 (regTwo!43997 r!13107) (regTwo!43996 r!13107)))))))

(declare-fun b!8035733 () Bool)

(declare-fun e!4733496 () Bool)

(declare-fun e!4733494 () Bool)

(assert (=> b!8035733 (= e!4733496 e!4733494)))

(assert (=> b!8035733 (= c!1474177 (is-Star!21742 r!13107))))

(declare-fun b!8035734 () Bool)

(declare-fun e!4733497 () Bool)

(assert (=> b!8035734 (= e!4733494 e!4733497)))

(declare-fun res!3177078 () Bool)

(assert (=> b!8035734 (= res!3177078 (not (nullable!9767 (reg!22071 r!13107))))))

(assert (=> b!8035734 (=> (not res!3177078) (not e!4733497))))

(declare-fun b!8035735 () Bool)

(declare-fun e!4733495 () Bool)

(assert (=> b!8035735 (= e!4733495 call!745696)))

(declare-fun b!8035736 () Bool)

(declare-fun res!3177074 () Bool)

(declare-fun e!4733493 () Bool)

(assert (=> b!8035736 (=> (not res!3177074) (not e!4733493))))

(declare-fun call!745697 () Bool)

(assert (=> b!8035736 (= res!3177074 call!745697)))

(assert (=> b!8035736 (= e!4733498 e!4733493)))

(declare-fun b!8035737 () Bool)

(assert (=> b!8035737 (= e!4733493 call!745696)))

(declare-fun d!2394996 () Bool)

(declare-fun res!3177076 () Bool)

(assert (=> d!2394996 (=> res!3177076 e!4733496)))

(assert (=> d!2394996 (= res!3177076 (is-ElementMatch!21742 r!13107))))

(assert (=> d!2394996 (= (validRegex!12038 r!13107) e!4733496)))

(declare-fun b!8035738 () Bool)

(assert (=> b!8035738 (= e!4733499 e!4733495)))

(declare-fun res!3177075 () Bool)

(assert (=> b!8035738 (=> (not res!3177075) (not e!4733495))))

(assert (=> b!8035738 (= res!3177075 call!745697)))

(declare-fun b!8035739 () Bool)

(assert (=> b!8035739 (= e!4733497 call!745695)))

(declare-fun bm!745692 () Bool)

(assert (=> bm!745692 (= call!745697 (validRegex!12038 (ite c!1474176 (regOne!43997 r!13107) (regOne!43996 r!13107))))))

(declare-fun b!8035740 () Bool)

(assert (=> b!8035740 (= e!4733494 e!4733498)))

(assert (=> b!8035740 (= c!1474176 (is-Union!21742 r!13107))))

(assert (= (and d!2394996 (not res!3177076)) b!8035733))

(assert (= (and b!8035733 c!1474177) b!8035734))

(assert (= (and b!8035733 (not c!1474177)) b!8035740))

(assert (= (and b!8035734 res!3177078) b!8035739))

(assert (= (and b!8035740 c!1474176) b!8035736))

(assert (= (and b!8035740 (not c!1474176)) b!8035732))

(assert (= (and b!8035736 res!3177074) b!8035737))

(assert (= (and b!8035732 (not res!3177077)) b!8035738))

(assert (= (and b!8035738 res!3177075) b!8035735))

(assert (= (or b!8035737 b!8035735) bm!745690))

(assert (= (or b!8035736 b!8035738) bm!745692))

(assert (= (or b!8035739 bm!745690) bm!745691))

(declare-fun m!8393260 () Bool)

(assert (=> bm!745691 m!8393260))

(declare-fun m!8393262 () Bool)

(assert (=> b!8035734 m!8393262))

(declare-fun m!8393264 () Bool)

(assert (=> bm!745692 m!8393264))

(assert (=> start!756778 d!2394996))

(declare-fun b!8035754 () Bool)

(declare-fun e!4733502 () Bool)

(declare-fun tp!2406006 () Bool)

(declare-fun tp!2406008 () Bool)

(assert (=> b!8035754 (= e!4733502 (and tp!2406006 tp!2406008))))

(declare-fun b!8035751 () Bool)

(assert (=> b!8035751 (= e!4733502 tp_is_empty!54479)))

(declare-fun b!8035752 () Bool)

(declare-fun tp!2406004 () Bool)

(declare-fun tp!2406007 () Bool)

(assert (=> b!8035752 (= e!4733502 (and tp!2406004 tp!2406007))))

(assert (=> b!8035626 (= tp!2405977 e!4733502)))

(declare-fun b!8035753 () Bool)

(declare-fun tp!2406005 () Bool)

(assert (=> b!8035753 (= e!4733502 tp!2406005)))

(assert (= (and b!8035626 (is-ElementMatch!21742 (regOne!43996 r!13107))) b!8035751))

(assert (= (and b!8035626 (is-Concat!30745 (regOne!43996 r!13107))) b!8035752))

(assert (= (and b!8035626 (is-Star!21742 (regOne!43996 r!13107))) b!8035753))

(assert (= (and b!8035626 (is-Union!21742 (regOne!43996 r!13107))) b!8035754))

(declare-fun b!8035758 () Bool)

(declare-fun e!4733503 () Bool)

(declare-fun tp!2406011 () Bool)

(declare-fun tp!2406013 () Bool)

(assert (=> b!8035758 (= e!4733503 (and tp!2406011 tp!2406013))))

(declare-fun b!8035755 () Bool)

(assert (=> b!8035755 (= e!4733503 tp_is_empty!54479)))

(declare-fun b!8035756 () Bool)

(declare-fun tp!2406009 () Bool)

(declare-fun tp!2406012 () Bool)

(assert (=> b!8035756 (= e!4733503 (and tp!2406009 tp!2406012))))

(assert (=> b!8035626 (= tp!2405976 e!4733503)))

(declare-fun b!8035757 () Bool)

(declare-fun tp!2406010 () Bool)

(assert (=> b!8035757 (= e!4733503 tp!2406010)))

(assert (= (and b!8035626 (is-ElementMatch!21742 (regTwo!43996 r!13107))) b!8035755))

(assert (= (and b!8035626 (is-Concat!30745 (regTwo!43996 r!13107))) b!8035756))

(assert (= (and b!8035626 (is-Star!21742 (regTwo!43996 r!13107))) b!8035757))

(assert (= (and b!8035626 (is-Union!21742 (regTwo!43996 r!13107))) b!8035758))

(declare-fun b!8035762 () Bool)

(declare-fun e!4733504 () Bool)

(declare-fun tp!2406016 () Bool)

(declare-fun tp!2406018 () Bool)

(assert (=> b!8035762 (= e!4733504 (and tp!2406016 tp!2406018))))

(declare-fun b!8035759 () Bool)

(assert (=> b!8035759 (= e!4733504 tp_is_empty!54479)))

(declare-fun b!8035760 () Bool)

(declare-fun tp!2406014 () Bool)

(declare-fun tp!2406017 () Bool)

(assert (=> b!8035760 (= e!4733504 (and tp!2406014 tp!2406017))))

(assert (=> b!8035625 (= tp!2405974 e!4733504)))

(declare-fun b!8035761 () Bool)

(declare-fun tp!2406015 () Bool)

(assert (=> b!8035761 (= e!4733504 tp!2406015)))

(assert (= (and b!8035625 (is-ElementMatch!21742 (regOne!43997 r!13107))) b!8035759))

(assert (= (and b!8035625 (is-Concat!30745 (regOne!43997 r!13107))) b!8035760))

(assert (= (and b!8035625 (is-Star!21742 (regOne!43997 r!13107))) b!8035761))

(assert (= (and b!8035625 (is-Union!21742 (regOne!43997 r!13107))) b!8035762))

(declare-fun b!8035766 () Bool)

(declare-fun e!4733505 () Bool)

(declare-fun tp!2406021 () Bool)

(declare-fun tp!2406023 () Bool)

(assert (=> b!8035766 (= e!4733505 (and tp!2406021 tp!2406023))))

(declare-fun b!8035763 () Bool)

(assert (=> b!8035763 (= e!4733505 tp_is_empty!54479)))

(declare-fun b!8035764 () Bool)

(declare-fun tp!2406019 () Bool)

(declare-fun tp!2406022 () Bool)

(assert (=> b!8035764 (= e!4733505 (and tp!2406019 tp!2406022))))

(assert (=> b!8035625 (= tp!2405975 e!4733505)))

(declare-fun b!8035765 () Bool)

(declare-fun tp!2406020 () Bool)

(assert (=> b!8035765 (= e!4733505 tp!2406020)))

(assert (= (and b!8035625 (is-ElementMatch!21742 (regTwo!43997 r!13107))) b!8035763))

(assert (= (and b!8035625 (is-Concat!30745 (regTwo!43997 r!13107))) b!8035764))

(assert (= (and b!8035625 (is-Star!21742 (regTwo!43997 r!13107))) b!8035765))

(assert (= (and b!8035625 (is-Union!21742 (regTwo!43997 r!13107))) b!8035766))

(declare-fun b!8035770 () Bool)

(declare-fun e!4733506 () Bool)

(declare-fun tp!2406026 () Bool)

(declare-fun tp!2406028 () Bool)

(assert (=> b!8035770 (= e!4733506 (and tp!2406026 tp!2406028))))

(declare-fun b!8035767 () Bool)

(assert (=> b!8035767 (= e!4733506 tp_is_empty!54479)))

(declare-fun b!8035768 () Bool)

(declare-fun tp!2406024 () Bool)

(declare-fun tp!2406027 () Bool)

(assert (=> b!8035768 (= e!4733506 (and tp!2406024 tp!2406027))))

(assert (=> b!8035624 (= tp!2405978 e!4733506)))

(declare-fun b!8035769 () Bool)

(declare-fun tp!2406025 () Bool)

(assert (=> b!8035769 (= e!4733506 tp!2406025)))

(assert (= (and b!8035624 (is-ElementMatch!21742 (reg!22071 r!13107))) b!8035767))

(assert (= (and b!8035624 (is-Concat!30745 (reg!22071 r!13107))) b!8035768))

(assert (= (and b!8035624 (is-Star!21742 (reg!22071 r!13107))) b!8035769))

(assert (= (and b!8035624 (is-Union!21742 (reg!22071 r!13107))) b!8035770))

(push 1)

(assert (not bm!745692))

(assert (not bm!745668))

(assert (not b!8035762))

(assert (not b!8035768))

(assert (not bm!745686))

(assert (not b!8035764))

(assert (not b!8035752))

(assert (not bm!745688))

(assert (not bm!745667))

(assert (not b!8035770))

(assert (not b!8035758))

(assert (not b!8035765))

(assert (not d!2394992))

(assert (not b!8035725))

(assert (not b!8035766))

(assert (not bm!745691))

(assert (not b!8035761))

(assert (not b!8035760))

(assert (not b!8035769))

(assert (not b!8035668))

(assert (not b!8035734))

(assert (not b!8035757))

(assert tp_is_empty!54479)

(assert (not b!8035754))

(assert (not b!8035756))

(assert (not b!8035753))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


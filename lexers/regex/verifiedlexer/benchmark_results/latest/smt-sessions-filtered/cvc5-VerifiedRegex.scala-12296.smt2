; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690754 () Bool)

(assert start!690754)

(declare-fun b!7096169 () Bool)

(declare-fun res!2897763 () Bool)

(declare-fun e!4265579 () Bool)

(assert (=> b!7096169 (=> (not res!2897763) (not e!4265579))))

(declare-datatypes ((C!35938 0))(
  ( (C!35939 (val!27675 Int)) )
))
(declare-datatypes ((Regex!17834 0))(
  ( (ElementMatch!17834 (c!1324243 C!35938)) (Concat!26679 (regOne!36180 Regex!17834) (regTwo!36180 Regex!17834)) (EmptyExpr!17834) (Star!17834 (reg!18163 Regex!17834)) (EmptyLang!17834) (Union!17834 (regOne!36181 Regex!17834) (regTwo!36181 Regex!17834)) )
))
(declare-fun r!11554 () Regex!17834)

(assert (=> b!7096169 (= res!2897763 (is-Concat!26679 r!11554))))

(declare-fun b!7096170 () Bool)

(declare-fun e!4265585 () Bool)

(declare-fun e!4265581 () Bool)

(assert (=> b!7096170 (= e!4265585 e!4265581)))

(declare-fun res!2897758 () Bool)

(assert (=> b!7096170 (=> res!2897758 e!4265581)))

(declare-datatypes ((List!68797 0))(
  ( (Nil!68673) (Cons!68673 (h!75121 Regex!17834) (t!382598 List!68797)) )
))
(declare-datatypes ((Context!13660 0))(
  ( (Context!13661 (exprs!7330 List!68797)) )
))
(declare-fun c!9994 () Context!13660)

(declare-fun lambda!430486 () Int)

(declare-fun forall!16756 (List!68797 Int) Bool)

(assert (=> b!7096170 (= res!2897758 (not (forall!16756 (exprs!7330 c!9994) lambda!430486)))))

(declare-fun b!7096171 () Bool)

(declare-fun e!4265583 () Bool)

(declare-fun tp!1950018 () Bool)

(declare-fun tp!1950019 () Bool)

(assert (=> b!7096171 (= e!4265583 (and tp!1950018 tp!1950019))))

(declare-fun b!7096172 () Bool)

(declare-fun e!4265580 () Bool)

(declare-fun tp!1950013 () Bool)

(assert (=> b!7096172 (= e!4265580 tp!1950013)))

(declare-fun b!7096173 () Bool)

(declare-fun tp_is_empty!44901 () Bool)

(assert (=> b!7096173 (= e!4265583 tp_is_empty!44901)))

(declare-fun b!7096174 () Bool)

(declare-fun tp!1950014 () Bool)

(declare-fun tp!1950015 () Bool)

(assert (=> b!7096174 (= e!4265583 (and tp!1950014 tp!1950015))))

(declare-fun b!7096175 () Bool)

(declare-fun res!2897759 () Bool)

(assert (=> b!7096175 (=> (not res!2897759) (not e!4265579))))

(declare-fun e!4265578 () Bool)

(assert (=> b!7096175 (= res!2897759 e!4265578)))

(declare-fun res!2897760 () Bool)

(assert (=> b!7096175 (=> res!2897760 e!4265578)))

(assert (=> b!7096175 (= res!2897760 (not (is-Concat!26679 r!11554)))))

(declare-fun b!7096176 () Bool)

(declare-fun e!4265582 () Bool)

(declare-fun e!4265577 () Bool)

(assert (=> b!7096176 (= e!4265582 e!4265577)))

(declare-fun res!2897757 () Bool)

(assert (=> b!7096176 (=> (not res!2897757) (not e!4265577))))

(declare-fun lt!2557319 () List!68797)

(declare-fun a!1901 () C!35938)

(declare-fun lt!2557313 () (Set Context!13660))

(declare-fun derivationStepZipperDown!2385 (Regex!17834 Context!13660 C!35938) (Set Context!13660))

(declare-fun $colon$colon!2729 (List!68797 Regex!17834) List!68797)

(assert (=> b!7096176 (= res!2897757 (= lt!2557313 (derivationStepZipperDown!2385 (regOne!36180 r!11554) (Context!13661 ($colon$colon!2729 lt!2557319 (regTwo!36180 r!11554))) a!1901)))))

(assert (=> b!7096176 (= lt!2557313 (derivationStepZipperDown!2385 r!11554 (Context!13661 lt!2557319) a!1901))))

(declare-fun b!7096177 () Bool)

(declare-fun nullable!7474 (Regex!17834) Bool)

(assert (=> b!7096177 (= e!4265578 (not (nullable!7474 (regOne!36180 r!11554))))))

(declare-fun res!2897761 () Bool)

(assert (=> start!690754 (=> (not res!2897761) (not e!4265579))))

(declare-fun validRegex!9109 (Regex!17834) Bool)

(assert (=> start!690754 (= res!2897761 (validRegex!9109 r!11554))))

(assert (=> start!690754 e!4265579))

(assert (=> start!690754 e!4265583))

(assert (=> start!690754 tp_is_empty!44901))

(declare-fun inv!87451 (Context!13660) Bool)

(assert (=> start!690754 (and (inv!87451 c!9994) e!4265580)))

(declare-fun auxCtx!45 () Context!13660)

(declare-fun e!4265584 () Bool)

(assert (=> start!690754 (and (inv!87451 auxCtx!45) e!4265584)))

(declare-fun b!7096178 () Bool)

(declare-fun res!2897755 () Bool)

(assert (=> b!7096178 (=> (not res!2897755) (not e!4265579))))

(assert (=> b!7096178 (= res!2897755 (and (or (not (is-ElementMatch!17834 r!11554)) (not (= (c!1324243 r!11554) a!1901))) (not (is-Union!17834 r!11554))))))

(declare-fun b!7096179 () Bool)

(declare-fun tp!1950016 () Bool)

(assert (=> b!7096179 (= e!4265584 tp!1950016)))

(declare-fun b!7096180 () Bool)

(assert (=> b!7096180 (= e!4265581 (forall!16756 (exprs!7330 auxCtx!45) lambda!430486))))

(declare-fun b!7096181 () Bool)

(declare-fun tp!1950017 () Bool)

(assert (=> b!7096181 (= e!4265583 tp!1950017)))

(declare-fun b!7096182 () Bool)

(assert (=> b!7096182 (= e!4265579 e!4265582)))

(declare-fun res!2897756 () Bool)

(assert (=> b!7096182 (=> (not res!2897756) (not e!4265582))))

(assert (=> b!7096182 (= res!2897756 (validRegex!9109 (regTwo!36180 r!11554)))))

(declare-fun ++!15998 (List!68797 List!68797) List!68797)

(assert (=> b!7096182 (= lt!2557319 (++!15998 (exprs!7330 c!9994) (exprs!7330 auxCtx!45)))))

(declare-datatypes ((Unit!162351 0))(
  ( (Unit!162352) )
))
(declare-fun lt!2557316 () Unit!162351)

(declare-fun lemmaConcatPreservesForall!1129 (List!68797 List!68797 Int) Unit!162351)

(assert (=> b!7096182 (= lt!2557316 (lemmaConcatPreservesForall!1129 (exprs!7330 c!9994) (exprs!7330 auxCtx!45) lambda!430486))))

(declare-fun lt!2557320 () Unit!162351)

(assert (=> b!7096182 (= lt!2557320 (lemmaConcatPreservesForall!1129 (exprs!7330 c!9994) (exprs!7330 auxCtx!45) lambda!430486))))

(declare-fun b!7096183 () Bool)

(assert (=> b!7096183 (= e!4265577 (not e!4265585))))

(declare-fun res!2897762 () Bool)

(assert (=> b!7096183 (=> res!2897762 e!4265585)))

(declare-fun appendTo!891 ((Set Context!13660) Context!13660) (Set Context!13660))

(assert (=> b!7096183 (= res!2897762 (not (= lt!2557313 (appendTo!891 (derivationStepZipperDown!2385 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2557321 () Unit!162351)

(assert (=> b!7096183 (= lt!2557321 (lemmaConcatPreservesForall!1129 (exprs!7330 c!9994) (exprs!7330 auxCtx!45) lambda!430486))))

(declare-fun lt!2557314 () List!68797)

(declare-fun lt!2557315 () Context!13660)

(assert (=> b!7096183 (= (derivationStepZipperDown!2385 (regOne!36180 r!11554) (Context!13661 (++!15998 lt!2557314 (exprs!7330 auxCtx!45))) a!1901) (appendTo!891 (derivationStepZipperDown!2385 (regOne!36180 r!11554) lt!2557315 a!1901) auxCtx!45))))

(declare-fun lt!2557318 () Unit!162351)

(assert (=> b!7096183 (= lt!2557318 (lemmaConcatPreservesForall!1129 lt!2557314 (exprs!7330 auxCtx!45) lambda!430486))))

(declare-fun lt!2557317 () Unit!162351)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!199 (Context!13660 Regex!17834 C!35938 Context!13660) Unit!162351)

(assert (=> b!7096183 (= lt!2557317 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!199 lt!2557315 (regOne!36180 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7096183 (= lt!2557315 (Context!13661 lt!2557314))))

(assert (=> b!7096183 (= lt!2557314 ($colon$colon!2729 (exprs!7330 c!9994) (regTwo!36180 r!11554)))))

(assert (= (and start!690754 res!2897761) b!7096178))

(assert (= (and b!7096178 res!2897755) b!7096175))

(assert (= (and b!7096175 (not res!2897760)) b!7096177))

(assert (= (and b!7096175 res!2897759) b!7096169))

(assert (= (and b!7096169 res!2897763) b!7096182))

(assert (= (and b!7096182 res!2897756) b!7096176))

(assert (= (and b!7096176 res!2897757) b!7096183))

(assert (= (and b!7096183 (not res!2897762)) b!7096170))

(assert (= (and b!7096170 (not res!2897758)) b!7096180))

(assert (= (and start!690754 (is-ElementMatch!17834 r!11554)) b!7096173))

(assert (= (and start!690754 (is-Concat!26679 r!11554)) b!7096174))

(assert (= (and start!690754 (is-Star!17834 r!11554)) b!7096181))

(assert (= (and start!690754 (is-Union!17834 r!11554)) b!7096171))

(assert (= start!690754 b!7096172))

(assert (= start!690754 b!7096179))

(declare-fun m!7823696 () Bool)

(assert (=> b!7096180 m!7823696))

(declare-fun m!7823698 () Bool)

(assert (=> b!7096182 m!7823698))

(declare-fun m!7823700 () Bool)

(assert (=> b!7096182 m!7823700))

(declare-fun m!7823702 () Bool)

(assert (=> b!7096182 m!7823702))

(assert (=> b!7096182 m!7823702))

(declare-fun m!7823704 () Bool)

(assert (=> b!7096176 m!7823704))

(declare-fun m!7823706 () Bool)

(assert (=> b!7096176 m!7823706))

(declare-fun m!7823708 () Bool)

(assert (=> b!7096176 m!7823708))

(declare-fun m!7823710 () Bool)

(assert (=> b!7096177 m!7823710))

(assert (=> b!7096183 m!7823702))

(declare-fun m!7823712 () Bool)

(assert (=> b!7096183 m!7823712))

(declare-fun m!7823714 () Bool)

(assert (=> b!7096183 m!7823714))

(declare-fun m!7823716 () Bool)

(assert (=> b!7096183 m!7823716))

(declare-fun m!7823718 () Bool)

(assert (=> b!7096183 m!7823718))

(declare-fun m!7823720 () Bool)

(assert (=> b!7096183 m!7823720))

(declare-fun m!7823722 () Bool)

(assert (=> b!7096183 m!7823722))

(declare-fun m!7823724 () Bool)

(assert (=> b!7096183 m!7823724))

(assert (=> b!7096183 m!7823714))

(assert (=> b!7096183 m!7823718))

(declare-fun m!7823726 () Bool)

(assert (=> b!7096183 m!7823726))

(declare-fun m!7823728 () Bool)

(assert (=> b!7096183 m!7823728))

(declare-fun m!7823730 () Bool)

(assert (=> b!7096170 m!7823730))

(declare-fun m!7823732 () Bool)

(assert (=> start!690754 m!7823732))

(declare-fun m!7823734 () Bool)

(assert (=> start!690754 m!7823734))

(declare-fun m!7823736 () Bool)

(assert (=> start!690754 m!7823736))

(push 1)

(assert (not b!7096171))

(assert (not b!7096177))

(assert tp_is_empty!44901)

(assert (not b!7096182))

(assert (not b!7096176))

(assert (not b!7096172))

(assert (not b!7096170))

(assert (not b!7096183))

(assert (not b!7096181))

(assert (not b!7096179))

(assert (not b!7096180))

(assert (not b!7096174))

(assert (not start!690754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2217839 () Bool)

(declare-fun res!2897795 () Bool)

(declare-fun e!4265617 () Bool)

(assert (=> d!2217839 (=> res!2897795 e!4265617)))

(assert (=> d!2217839 (= res!2897795 (is-Nil!68673 (exprs!7330 auxCtx!45)))))

(assert (=> d!2217839 (= (forall!16756 (exprs!7330 auxCtx!45) lambda!430486) e!4265617)))

(declare-fun b!7096233 () Bool)

(declare-fun e!4265618 () Bool)

(assert (=> b!7096233 (= e!4265617 e!4265618)))

(declare-fun res!2897796 () Bool)

(assert (=> b!7096233 (=> (not res!2897796) (not e!4265618))))

(declare-fun dynLambda!28021 (Int Regex!17834) Bool)

(assert (=> b!7096233 (= res!2897796 (dynLambda!28021 lambda!430486 (h!75121 (exprs!7330 auxCtx!45))))))

(declare-fun b!7096234 () Bool)

(assert (=> b!7096234 (= e!4265618 (forall!16756 (t!382598 (exprs!7330 auxCtx!45)) lambda!430486))))

(assert (= (and d!2217839 (not res!2897795)) b!7096233))

(assert (= (and b!7096233 res!2897796) b!7096234))

(declare-fun b_lambda!271153 () Bool)

(assert (=> (not b_lambda!271153) (not b!7096233)))

(declare-fun m!7823780 () Bool)

(assert (=> b!7096233 m!7823780))

(declare-fun m!7823782 () Bool)

(assert (=> b!7096234 m!7823782))

(assert (=> b!7096180 d!2217839))

(declare-fun bm!645805 () Bool)

(declare-fun call!645811 () List!68797)

(declare-fun call!645814 () List!68797)

(assert (=> bm!645805 (= call!645811 call!645814)))

(declare-fun c!1324258 () Bool)

(declare-fun bm!645806 () Bool)

(declare-fun c!1324255 () Bool)

(assert (=> bm!645806 (= call!645814 ($colon$colon!2729 (exprs!7330 (Context!13661 ($colon$colon!2729 lt!2557319 (regTwo!36180 r!11554)))) (ite (or c!1324255 c!1324258) (regTwo!36180 (regOne!36180 r!11554)) (regOne!36180 r!11554))))))

(declare-fun b!7096257 () Bool)

(declare-fun e!4265632 () (Set Context!13660))

(declare-fun call!645813 () (Set Context!13660))

(declare-fun call!645815 () (Set Context!13660))

(assert (=> b!7096257 (= e!4265632 (set.union call!645813 call!645815))))

(declare-fun b!7096258 () Bool)

(declare-fun e!4265633 () (Set Context!13660))

(assert (=> b!7096258 (= e!4265633 (as set.empty (Set Context!13660)))))

(declare-fun d!2217841 () Bool)

(declare-fun c!1324259 () Bool)

(assert (=> d!2217841 (= c!1324259 (and (is-ElementMatch!17834 (regOne!36180 r!11554)) (= (c!1324243 (regOne!36180 r!11554)) a!1901)))))

(declare-fun e!4265631 () (Set Context!13660))

(assert (=> d!2217841 (= (derivationStepZipperDown!2385 (regOne!36180 r!11554) (Context!13661 ($colon$colon!2729 lt!2557319 (regTwo!36180 r!11554))) a!1901) e!4265631)))

(declare-fun b!7096259 () Bool)

(declare-fun e!4265634 () (Set Context!13660))

(assert (=> b!7096259 (= e!4265631 e!4265634)))

(declare-fun c!1324256 () Bool)

(assert (=> b!7096259 (= c!1324256 (is-Union!17834 (regOne!36180 r!11554)))))

(declare-fun b!7096260 () Bool)

(declare-fun call!645812 () (Set Context!13660))

(assert (=> b!7096260 (= e!4265634 (set.union call!645813 call!645812))))

(declare-fun bm!645807 () Bool)

(assert (=> bm!645807 (= call!645813 (derivationStepZipperDown!2385 (ite c!1324256 (regOne!36181 (regOne!36180 r!11554)) (regOne!36180 (regOne!36180 r!11554))) (ite c!1324256 (Context!13661 ($colon$colon!2729 lt!2557319 (regTwo!36180 r!11554))) (Context!13661 call!645814)) a!1901))))

(declare-fun b!7096261 () Bool)

(declare-fun c!1324257 () Bool)

(assert (=> b!7096261 (= c!1324257 (is-Star!17834 (regOne!36180 r!11554)))))

(declare-fun e!4265636 () (Set Context!13660))

(assert (=> b!7096261 (= e!4265636 e!4265633)))

(declare-fun b!7096262 () Bool)

(assert (=> b!7096262 (= e!4265631 (set.insert (Context!13661 ($colon$colon!2729 lt!2557319 (regTwo!36180 r!11554))) (as set.empty (Set Context!13660))))))

(declare-fun bm!645808 () Bool)

(declare-fun call!645810 () (Set Context!13660))

(assert (=> bm!645808 (= call!645810 call!645815)))

(declare-fun b!7096263 () Bool)

(assert (=> b!7096263 (= e!4265636 call!645810)))

(declare-fun b!7096264 () Bool)

(declare-fun e!4265635 () Bool)

(assert (=> b!7096264 (= e!4265635 (nullable!7474 (regOne!36180 (regOne!36180 r!11554))))))

(declare-fun bm!645809 () Bool)

(assert (=> bm!645809 (= call!645812 (derivationStepZipperDown!2385 (ite c!1324256 (regTwo!36181 (regOne!36180 r!11554)) (ite c!1324255 (regTwo!36180 (regOne!36180 r!11554)) (ite c!1324258 (regOne!36180 (regOne!36180 r!11554)) (reg!18163 (regOne!36180 r!11554))))) (ite (or c!1324256 c!1324255) (Context!13661 ($colon$colon!2729 lt!2557319 (regTwo!36180 r!11554))) (Context!13661 call!645811)) a!1901))))

(declare-fun b!7096265 () Bool)

(assert (=> b!7096265 (= e!4265633 call!645810)))

(declare-fun b!7096266 () Bool)

(assert (=> b!7096266 (= c!1324255 e!4265635)))

(declare-fun res!2897799 () Bool)

(assert (=> b!7096266 (=> (not res!2897799) (not e!4265635))))

(assert (=> b!7096266 (= res!2897799 (is-Concat!26679 (regOne!36180 r!11554)))))

(assert (=> b!7096266 (= e!4265634 e!4265632)))

(declare-fun b!7096267 () Bool)

(assert (=> b!7096267 (= e!4265632 e!4265636)))

(assert (=> b!7096267 (= c!1324258 (is-Concat!26679 (regOne!36180 r!11554)))))

(declare-fun bm!645810 () Bool)

(assert (=> bm!645810 (= call!645815 call!645812)))

(assert (= (and d!2217841 c!1324259) b!7096262))

(assert (= (and d!2217841 (not c!1324259)) b!7096259))

(assert (= (and b!7096259 c!1324256) b!7096260))

(assert (= (and b!7096259 (not c!1324256)) b!7096266))

(assert (= (and b!7096266 res!2897799) b!7096264))

(assert (= (and b!7096266 c!1324255) b!7096257))

(assert (= (and b!7096266 (not c!1324255)) b!7096267))

(assert (= (and b!7096267 c!1324258) b!7096263))

(assert (= (and b!7096267 (not c!1324258)) b!7096261))

(assert (= (and b!7096261 c!1324257) b!7096265))

(assert (= (and b!7096261 (not c!1324257)) b!7096258))

(assert (= (or b!7096263 b!7096265) bm!645805))

(assert (= (or b!7096263 b!7096265) bm!645808))

(assert (= (or b!7096257 bm!645808) bm!645810))

(assert (= (or b!7096257 bm!645805) bm!645806))

(assert (= (or b!7096260 bm!645810) bm!645809))

(assert (= (or b!7096260 b!7096257) bm!645807))

(declare-fun m!7823784 () Bool)

(assert (=> b!7096264 m!7823784))

(declare-fun m!7823786 () Bool)

(assert (=> bm!645806 m!7823786))

(declare-fun m!7823788 () Bool)

(assert (=> bm!645809 m!7823788))

(declare-fun m!7823790 () Bool)

(assert (=> bm!645807 m!7823790))

(declare-fun m!7823792 () Bool)

(assert (=> b!7096262 m!7823792))

(assert (=> b!7096176 d!2217841))

(declare-fun d!2217845 () Bool)

(assert (=> d!2217845 (= ($colon$colon!2729 lt!2557319 (regTwo!36180 r!11554)) (Cons!68673 (regTwo!36180 r!11554) lt!2557319))))

(assert (=> b!7096176 d!2217845))

(declare-fun bm!645811 () Bool)

(declare-fun call!645817 () List!68797)

(declare-fun call!645820 () List!68797)

(assert (=> bm!645811 (= call!645817 call!645820)))

(declare-fun bm!645812 () Bool)

(declare-fun c!1324262 () Bool)

(declare-fun c!1324265 () Bool)

(assert (=> bm!645812 (= call!645820 ($colon$colon!2729 (exprs!7330 (Context!13661 lt!2557319)) (ite (or c!1324262 c!1324265) (regTwo!36180 r!11554) r!11554)))))

(declare-fun b!7096272 () Bool)

(declare-fun e!4265640 () (Set Context!13660))

(declare-fun call!645819 () (Set Context!13660))

(declare-fun call!645821 () (Set Context!13660))

(assert (=> b!7096272 (= e!4265640 (set.union call!645819 call!645821))))

(declare-fun b!7096273 () Bool)

(declare-fun e!4265641 () (Set Context!13660))

(assert (=> b!7096273 (= e!4265641 (as set.empty (Set Context!13660)))))

(declare-fun d!2217847 () Bool)

(declare-fun c!1324266 () Bool)

(assert (=> d!2217847 (= c!1324266 (and (is-ElementMatch!17834 r!11554) (= (c!1324243 r!11554) a!1901)))))

(declare-fun e!4265639 () (Set Context!13660))

(assert (=> d!2217847 (= (derivationStepZipperDown!2385 r!11554 (Context!13661 lt!2557319) a!1901) e!4265639)))

(declare-fun b!7096274 () Bool)

(declare-fun e!4265642 () (Set Context!13660))

(assert (=> b!7096274 (= e!4265639 e!4265642)))

(declare-fun c!1324263 () Bool)

(assert (=> b!7096274 (= c!1324263 (is-Union!17834 r!11554))))

(declare-fun b!7096275 () Bool)

(declare-fun call!645818 () (Set Context!13660))

(assert (=> b!7096275 (= e!4265642 (set.union call!645819 call!645818))))

(declare-fun bm!645813 () Bool)

(assert (=> bm!645813 (= call!645819 (derivationStepZipperDown!2385 (ite c!1324263 (regOne!36181 r!11554) (regOne!36180 r!11554)) (ite c!1324263 (Context!13661 lt!2557319) (Context!13661 call!645820)) a!1901))))

(declare-fun b!7096276 () Bool)

(declare-fun c!1324264 () Bool)

(assert (=> b!7096276 (= c!1324264 (is-Star!17834 r!11554))))

(declare-fun e!4265644 () (Set Context!13660))

(assert (=> b!7096276 (= e!4265644 e!4265641)))

(declare-fun b!7096277 () Bool)

(assert (=> b!7096277 (= e!4265639 (set.insert (Context!13661 lt!2557319) (as set.empty (Set Context!13660))))))

(declare-fun bm!645814 () Bool)

(declare-fun call!645816 () (Set Context!13660))

(assert (=> bm!645814 (= call!645816 call!645821)))

(declare-fun b!7096278 () Bool)

(assert (=> b!7096278 (= e!4265644 call!645816)))

(declare-fun b!7096279 () Bool)

(declare-fun e!4265643 () Bool)

(assert (=> b!7096279 (= e!4265643 (nullable!7474 (regOne!36180 r!11554)))))

(declare-fun bm!645815 () Bool)

(assert (=> bm!645815 (= call!645818 (derivationStepZipperDown!2385 (ite c!1324263 (regTwo!36181 r!11554) (ite c!1324262 (regTwo!36180 r!11554) (ite c!1324265 (regOne!36180 r!11554) (reg!18163 r!11554)))) (ite (or c!1324263 c!1324262) (Context!13661 lt!2557319) (Context!13661 call!645817)) a!1901))))

(declare-fun b!7096280 () Bool)

(assert (=> b!7096280 (= e!4265641 call!645816)))

(declare-fun b!7096281 () Bool)

(assert (=> b!7096281 (= c!1324262 e!4265643)))

(declare-fun res!2897800 () Bool)

(assert (=> b!7096281 (=> (not res!2897800) (not e!4265643))))

(assert (=> b!7096281 (= res!2897800 (is-Concat!26679 r!11554))))

(assert (=> b!7096281 (= e!4265642 e!4265640)))

(declare-fun b!7096282 () Bool)

(assert (=> b!7096282 (= e!4265640 e!4265644)))

(assert (=> b!7096282 (= c!1324265 (is-Concat!26679 r!11554))))

(declare-fun bm!645816 () Bool)

(assert (=> bm!645816 (= call!645821 call!645818)))

(assert (= (and d!2217847 c!1324266) b!7096277))

(assert (= (and d!2217847 (not c!1324266)) b!7096274))

(assert (= (and b!7096274 c!1324263) b!7096275))

(assert (= (and b!7096274 (not c!1324263)) b!7096281))

(assert (= (and b!7096281 res!2897800) b!7096279))

(assert (= (and b!7096281 c!1324262) b!7096272))

(assert (= (and b!7096281 (not c!1324262)) b!7096282))

(assert (= (and b!7096282 c!1324265) b!7096278))

(assert (= (and b!7096282 (not c!1324265)) b!7096276))

(assert (= (and b!7096276 c!1324264) b!7096280))

(assert (= (and b!7096276 (not c!1324264)) b!7096273))

(assert (= (or b!7096278 b!7096280) bm!645811))

(assert (= (or b!7096278 b!7096280) bm!645814))

(assert (= (or b!7096272 bm!645814) bm!645816))

(assert (= (or b!7096272 bm!645811) bm!645812))

(assert (= (or b!7096275 bm!645816) bm!645815))

(assert (= (or b!7096275 b!7096272) bm!645813))

(assert (=> b!7096279 m!7823710))

(declare-fun m!7823794 () Bool)

(assert (=> bm!645812 m!7823794))

(declare-fun m!7823796 () Bool)

(assert (=> bm!645815 m!7823796))

(declare-fun m!7823798 () Bool)

(assert (=> bm!645813 m!7823798))

(declare-fun m!7823800 () Bool)

(assert (=> b!7096277 m!7823800))

(assert (=> b!7096176 d!2217847))

(declare-fun b!7096319 () Bool)

(declare-fun e!4265674 () Bool)

(declare-fun call!645836 () Bool)

(assert (=> b!7096319 (= e!4265674 call!645836)))

(declare-fun b!7096320 () Bool)

(declare-fun e!4265672 () Bool)

(declare-fun e!4265670 () Bool)

(assert (=> b!7096320 (= e!4265672 e!4265670)))

(declare-fun res!2897815 () Bool)

(assert (=> b!7096320 (= res!2897815 (not (nullable!7474 (reg!18163 r!11554))))))

(assert (=> b!7096320 (=> (not res!2897815) (not e!4265670))))

(declare-fun b!7096321 () Bool)

(declare-fun res!2897817 () Bool)

(declare-fun e!4265673 () Bool)

(assert (=> b!7096321 (=> res!2897817 e!4265673)))

(assert (=> b!7096321 (= res!2897817 (not (is-Concat!26679 r!11554)))))

(declare-fun e!4265671 () Bool)

(assert (=> b!7096321 (= e!4265671 e!4265673)))

(declare-fun b!7096322 () Bool)

(declare-fun e!4265675 () Bool)

(assert (=> b!7096322 (= e!4265675 e!4265672)))

(declare-fun c!1324279 () Bool)

(assert (=> b!7096322 (= c!1324279 (is-Star!17834 r!11554))))

(declare-fun b!7096323 () Bool)

(assert (=> b!7096323 (= e!4265672 e!4265671)))

(declare-fun c!1324280 () Bool)

(assert (=> b!7096323 (= c!1324280 (is-Union!17834 r!11554))))

(declare-fun bm!645831 () Bool)

(declare-fun call!645837 () Bool)

(assert (=> bm!645831 (= call!645837 (validRegex!9109 (ite c!1324280 (regOne!36181 r!11554) (regTwo!36180 r!11554))))))

(declare-fun b!7096324 () Bool)

(declare-fun res!2897813 () Bool)

(assert (=> b!7096324 (=> (not res!2897813) (not e!4265674))))

(assert (=> b!7096324 (= res!2897813 call!645837)))

(assert (=> b!7096324 (= e!4265671 e!4265674)))

(declare-fun b!7096325 () Bool)

(declare-fun call!645838 () Bool)

(assert (=> b!7096325 (= e!4265670 call!645838)))

(declare-fun bm!645832 () Bool)

(assert (=> bm!645832 (= call!645838 (validRegex!9109 (ite c!1324279 (reg!18163 r!11554) (ite c!1324280 (regTwo!36181 r!11554) (regOne!36180 r!11554)))))))

(declare-fun bm!645833 () Bool)

(assert (=> bm!645833 (= call!645836 call!645838)))

(declare-fun d!2217849 () Bool)

(declare-fun res!2897816 () Bool)

(assert (=> d!2217849 (=> res!2897816 e!4265675)))

(assert (=> d!2217849 (= res!2897816 (is-ElementMatch!17834 r!11554))))

(assert (=> d!2217849 (= (validRegex!9109 r!11554) e!4265675)))

(declare-fun b!7096326 () Bool)

(declare-fun e!4265669 () Bool)

(assert (=> b!7096326 (= e!4265669 call!645837)))

(declare-fun b!7096327 () Bool)

(assert (=> b!7096327 (= e!4265673 e!4265669)))

(declare-fun res!2897814 () Bool)

(assert (=> b!7096327 (=> (not res!2897814) (not e!4265669))))

(assert (=> b!7096327 (= res!2897814 call!645836)))

(assert (= (and d!2217849 (not res!2897816)) b!7096322))

(assert (= (and b!7096322 c!1324279) b!7096320))

(assert (= (and b!7096322 (not c!1324279)) b!7096323))

(assert (= (and b!7096320 res!2897815) b!7096325))

(assert (= (and b!7096323 c!1324280) b!7096324))

(assert (= (and b!7096323 (not c!1324280)) b!7096321))

(assert (= (and b!7096324 res!2897813) b!7096319))

(assert (= (and b!7096321 (not res!2897817)) b!7096327))

(assert (= (and b!7096327 res!2897814) b!7096326))

(assert (= (or b!7096324 b!7096326) bm!645831))

(assert (= (or b!7096319 b!7096327) bm!645833))

(assert (= (or b!7096325 bm!645833) bm!645832))

(declare-fun m!7823802 () Bool)

(assert (=> b!7096320 m!7823802))

(declare-fun m!7823804 () Bool)

(assert (=> bm!645831 m!7823804))

(declare-fun m!7823806 () Bool)

(assert (=> bm!645832 m!7823806))

(assert (=> start!690754 d!2217849))

(declare-fun bs!1883935 () Bool)

(declare-fun d!2217851 () Bool)

(assert (= bs!1883935 (and d!2217851 b!7096182)))

(declare-fun lambda!430500 () Int)

(assert (=> bs!1883935 (= lambda!430500 lambda!430486)))

(assert (=> d!2217851 (= (inv!87451 c!9994) (forall!16756 (exprs!7330 c!9994) lambda!430500))))

(declare-fun bs!1883936 () Bool)

(assert (= bs!1883936 d!2217851))

(declare-fun m!7823808 () Bool)

(assert (=> bs!1883936 m!7823808))

(assert (=> start!690754 d!2217851))

(declare-fun bs!1883937 () Bool)

(declare-fun d!2217853 () Bool)

(assert (= bs!1883937 (and d!2217853 b!7096182)))

(declare-fun lambda!430501 () Int)

(assert (=> bs!1883937 (= lambda!430501 lambda!430486)))

(declare-fun bs!1883938 () Bool)

(assert (= bs!1883938 (and d!2217853 d!2217851)))

(assert (=> bs!1883938 (= lambda!430501 lambda!430500)))

(assert (=> d!2217853 (= (inv!87451 auxCtx!45) (forall!16756 (exprs!7330 auxCtx!45) lambda!430501))))

(declare-fun bs!1883939 () Bool)

(assert (= bs!1883939 d!2217853))

(declare-fun m!7823810 () Bool)

(assert (=> bs!1883939 m!7823810))

(assert (=> start!690754 d!2217853))

(declare-fun d!2217855 () Bool)

(declare-fun res!2897818 () Bool)

(declare-fun e!4265676 () Bool)

(assert (=> d!2217855 (=> res!2897818 e!4265676)))

(assert (=> d!2217855 (= res!2897818 (is-Nil!68673 (exprs!7330 c!9994)))))

(assert (=> d!2217855 (= (forall!16756 (exprs!7330 c!9994) lambda!430486) e!4265676)))

(declare-fun b!7096328 () Bool)

(declare-fun e!4265677 () Bool)

(assert (=> b!7096328 (= e!4265676 e!4265677)))

(declare-fun res!2897819 () Bool)

(assert (=> b!7096328 (=> (not res!2897819) (not e!4265677))))

(assert (=> b!7096328 (= res!2897819 (dynLambda!28021 lambda!430486 (h!75121 (exprs!7330 c!9994))))))

(declare-fun b!7096329 () Bool)

(assert (=> b!7096329 (= e!4265677 (forall!16756 (t!382598 (exprs!7330 c!9994)) lambda!430486))))

(assert (= (and d!2217855 (not res!2897818)) b!7096328))

(assert (= (and b!7096328 res!2897819) b!7096329))

(declare-fun b_lambda!271155 () Bool)

(assert (=> (not b_lambda!271155) (not b!7096328)))

(declare-fun m!7823812 () Bool)

(assert (=> b!7096328 m!7823812))

(declare-fun m!7823814 () Bool)

(assert (=> b!7096329 m!7823814))

(assert (=> b!7096170 d!2217855))

(declare-fun d!2217857 () Bool)

(assert (=> d!2217857 true))

(declare-fun lambda!430506 () Int)

(declare-fun map!16182 ((Set Context!13660) Int) (Set Context!13660))

(assert (=> d!2217857 (= (appendTo!891 (derivationStepZipperDown!2385 r!11554 c!9994 a!1901) auxCtx!45) (map!16182 (derivationStepZipperDown!2385 r!11554 c!9994 a!1901) lambda!430506))))

(declare-fun bs!1883940 () Bool)

(assert (= bs!1883940 d!2217857))

(assert (=> bs!1883940 m!7823718))

(declare-fun m!7823816 () Bool)

(assert (=> bs!1883940 m!7823816))

(assert (=> b!7096183 d!2217857))

(declare-fun bm!645838 () Bool)

(declare-fun call!645844 () List!68797)

(declare-fun call!645847 () List!68797)

(assert (=> bm!645838 (= call!645844 call!645847)))

(declare-fun c!1324282 () Bool)

(declare-fun c!1324285 () Bool)

(declare-fun bm!645839 () Bool)

(assert (=> bm!645839 (= call!645847 ($colon$colon!2729 (exprs!7330 c!9994) (ite (or c!1324282 c!1324285) (regTwo!36180 r!11554) r!11554)))))

(declare-fun b!7096332 () Bool)

(declare-fun e!4265679 () (Set Context!13660))

(declare-fun call!645846 () (Set Context!13660))

(declare-fun call!645848 () (Set Context!13660))

(assert (=> b!7096332 (= e!4265679 (set.union call!645846 call!645848))))

(declare-fun b!7096333 () Bool)

(declare-fun e!4265680 () (Set Context!13660))

(assert (=> b!7096333 (= e!4265680 (as set.empty (Set Context!13660)))))

(declare-fun d!2217859 () Bool)

(declare-fun c!1324286 () Bool)

(assert (=> d!2217859 (= c!1324286 (and (is-ElementMatch!17834 r!11554) (= (c!1324243 r!11554) a!1901)))))

(declare-fun e!4265678 () (Set Context!13660))

(assert (=> d!2217859 (= (derivationStepZipperDown!2385 r!11554 c!9994 a!1901) e!4265678)))

(declare-fun b!7096334 () Bool)

(declare-fun e!4265681 () (Set Context!13660))

(assert (=> b!7096334 (= e!4265678 e!4265681)))

(declare-fun c!1324283 () Bool)

(assert (=> b!7096334 (= c!1324283 (is-Union!17834 r!11554))))

(declare-fun b!7096335 () Bool)

(declare-fun call!645845 () (Set Context!13660))

(assert (=> b!7096335 (= e!4265681 (set.union call!645846 call!645845))))

(declare-fun bm!645840 () Bool)

(assert (=> bm!645840 (= call!645846 (derivationStepZipperDown!2385 (ite c!1324283 (regOne!36181 r!11554) (regOne!36180 r!11554)) (ite c!1324283 c!9994 (Context!13661 call!645847)) a!1901))))

(declare-fun b!7096336 () Bool)

(declare-fun c!1324284 () Bool)

(assert (=> b!7096336 (= c!1324284 (is-Star!17834 r!11554))))

(declare-fun e!4265683 () (Set Context!13660))

(assert (=> b!7096336 (= e!4265683 e!4265680)))

(declare-fun b!7096337 () Bool)

(assert (=> b!7096337 (= e!4265678 (set.insert c!9994 (as set.empty (Set Context!13660))))))

(declare-fun bm!645841 () Bool)

(declare-fun call!645843 () (Set Context!13660))

(assert (=> bm!645841 (= call!645843 call!645848)))

(declare-fun b!7096338 () Bool)

(assert (=> b!7096338 (= e!4265683 call!645843)))

(declare-fun b!7096339 () Bool)

(declare-fun e!4265682 () Bool)

(assert (=> b!7096339 (= e!4265682 (nullable!7474 (regOne!36180 r!11554)))))

(declare-fun bm!645842 () Bool)

(assert (=> bm!645842 (= call!645845 (derivationStepZipperDown!2385 (ite c!1324283 (regTwo!36181 r!11554) (ite c!1324282 (regTwo!36180 r!11554) (ite c!1324285 (regOne!36180 r!11554) (reg!18163 r!11554)))) (ite (or c!1324283 c!1324282) c!9994 (Context!13661 call!645844)) a!1901))))

(declare-fun b!7096340 () Bool)

(assert (=> b!7096340 (= e!4265680 call!645843)))

(declare-fun b!7096341 () Bool)

(assert (=> b!7096341 (= c!1324282 e!4265682)))

(declare-fun res!2897820 () Bool)

(assert (=> b!7096341 (=> (not res!2897820) (not e!4265682))))

(assert (=> b!7096341 (= res!2897820 (is-Concat!26679 r!11554))))

(assert (=> b!7096341 (= e!4265681 e!4265679)))

(declare-fun b!7096342 () Bool)

(assert (=> b!7096342 (= e!4265679 e!4265683)))

(assert (=> b!7096342 (= c!1324285 (is-Concat!26679 r!11554))))

(declare-fun bm!645843 () Bool)

(assert (=> bm!645843 (= call!645848 call!645845)))

(assert (= (and d!2217859 c!1324286) b!7096337))

(assert (= (and d!2217859 (not c!1324286)) b!7096334))

(assert (= (and b!7096334 c!1324283) b!7096335))

(assert (= (and b!7096334 (not c!1324283)) b!7096341))

(assert (= (and b!7096341 res!2897820) b!7096339))

(assert (= (and b!7096341 c!1324282) b!7096332))

(assert (= (and b!7096341 (not c!1324282)) b!7096342))

(assert (= (and b!7096342 c!1324285) b!7096338))

(assert (= (and b!7096342 (not c!1324285)) b!7096336))

(assert (= (and b!7096336 c!1324284) b!7096340))

(assert (= (and b!7096336 (not c!1324284)) b!7096333))

(assert (= (or b!7096338 b!7096340) bm!645838))

(assert (= (or b!7096338 b!7096340) bm!645841))

(assert (= (or b!7096332 bm!645841) bm!645843))

(assert (= (or b!7096332 bm!645838) bm!645839))

(assert (= (or b!7096335 bm!645843) bm!645842))

(assert (= (or b!7096335 b!7096332) bm!645840))

(assert (=> b!7096339 m!7823710))

(declare-fun m!7823818 () Bool)

(assert (=> bm!645839 m!7823818))

(declare-fun m!7823820 () Bool)

(assert (=> bm!645842 m!7823820))

(declare-fun m!7823822 () Bool)

(assert (=> bm!645840 m!7823822))

(declare-fun m!7823824 () Bool)

(assert (=> b!7096337 m!7823824))

(assert (=> b!7096183 d!2217859))

(declare-fun bm!645844 () Bool)

(declare-fun call!645850 () List!68797)

(declare-fun call!645853 () List!68797)

(assert (=> bm!645844 (= call!645850 call!645853)))

(declare-fun c!1324290 () Bool)

(declare-fun c!1324287 () Bool)

(declare-fun bm!645845 () Bool)

(assert (=> bm!645845 (= call!645853 ($colon$colon!2729 (exprs!7330 lt!2557315) (ite (or c!1324287 c!1324290) (regTwo!36180 (regOne!36180 r!11554)) (regOne!36180 r!11554))))))

(declare-fun b!7096343 () Bool)

(declare-fun e!4265685 () (Set Context!13660))

(declare-fun call!645852 () (Set Context!13660))

(declare-fun call!645854 () (Set Context!13660))

(assert (=> b!7096343 (= e!4265685 (set.union call!645852 call!645854))))

(declare-fun b!7096344 () Bool)

(declare-fun e!4265686 () (Set Context!13660))

(assert (=> b!7096344 (= e!4265686 (as set.empty (Set Context!13660)))))

(declare-fun d!2217861 () Bool)

(declare-fun c!1324291 () Bool)

(assert (=> d!2217861 (= c!1324291 (and (is-ElementMatch!17834 (regOne!36180 r!11554)) (= (c!1324243 (regOne!36180 r!11554)) a!1901)))))

(declare-fun e!4265684 () (Set Context!13660))

(assert (=> d!2217861 (= (derivationStepZipperDown!2385 (regOne!36180 r!11554) lt!2557315 a!1901) e!4265684)))

(declare-fun b!7096345 () Bool)

(declare-fun e!4265687 () (Set Context!13660))

(assert (=> b!7096345 (= e!4265684 e!4265687)))

(declare-fun c!1324288 () Bool)

(assert (=> b!7096345 (= c!1324288 (is-Union!17834 (regOne!36180 r!11554)))))

(declare-fun b!7096346 () Bool)

(declare-fun call!645851 () (Set Context!13660))

(assert (=> b!7096346 (= e!4265687 (set.union call!645852 call!645851))))

(declare-fun bm!645846 () Bool)

(assert (=> bm!645846 (= call!645852 (derivationStepZipperDown!2385 (ite c!1324288 (regOne!36181 (regOne!36180 r!11554)) (regOne!36180 (regOne!36180 r!11554))) (ite c!1324288 lt!2557315 (Context!13661 call!645853)) a!1901))))

(declare-fun b!7096347 () Bool)

(declare-fun c!1324289 () Bool)

(assert (=> b!7096347 (= c!1324289 (is-Star!17834 (regOne!36180 r!11554)))))

(declare-fun e!4265689 () (Set Context!13660))

(assert (=> b!7096347 (= e!4265689 e!4265686)))

(declare-fun b!7096348 () Bool)

(assert (=> b!7096348 (= e!4265684 (set.insert lt!2557315 (as set.empty (Set Context!13660))))))

(declare-fun bm!645847 () Bool)

(declare-fun call!645849 () (Set Context!13660))

(assert (=> bm!645847 (= call!645849 call!645854)))

(declare-fun b!7096349 () Bool)

(assert (=> b!7096349 (= e!4265689 call!645849)))

(declare-fun b!7096350 () Bool)

(declare-fun e!4265688 () Bool)

(assert (=> b!7096350 (= e!4265688 (nullable!7474 (regOne!36180 (regOne!36180 r!11554))))))

(declare-fun bm!645848 () Bool)

(assert (=> bm!645848 (= call!645851 (derivationStepZipperDown!2385 (ite c!1324288 (regTwo!36181 (regOne!36180 r!11554)) (ite c!1324287 (regTwo!36180 (regOne!36180 r!11554)) (ite c!1324290 (regOne!36180 (regOne!36180 r!11554)) (reg!18163 (regOne!36180 r!11554))))) (ite (or c!1324288 c!1324287) lt!2557315 (Context!13661 call!645850)) a!1901))))

(declare-fun b!7096351 () Bool)

(assert (=> b!7096351 (= e!4265686 call!645849)))

(declare-fun b!7096352 () Bool)

(assert (=> b!7096352 (= c!1324287 e!4265688)))

(declare-fun res!2897821 () Bool)

(assert (=> b!7096352 (=> (not res!2897821) (not e!4265688))))

(assert (=> b!7096352 (= res!2897821 (is-Concat!26679 (regOne!36180 r!11554)))))

(assert (=> b!7096352 (= e!4265687 e!4265685)))

(declare-fun b!7096353 () Bool)

(assert (=> b!7096353 (= e!4265685 e!4265689)))

(assert (=> b!7096353 (= c!1324290 (is-Concat!26679 (regOne!36180 r!11554)))))

(declare-fun bm!645849 () Bool)

(assert (=> bm!645849 (= call!645854 call!645851)))

(assert (= (and d!2217861 c!1324291) b!7096348))

(assert (= (and d!2217861 (not c!1324291)) b!7096345))

(assert (= (and b!7096345 c!1324288) b!7096346))

(assert (= (and b!7096345 (not c!1324288)) b!7096352))

(assert (= (and b!7096352 res!2897821) b!7096350))

(assert (= (and b!7096352 c!1324287) b!7096343))

(assert (= (and b!7096352 (not c!1324287)) b!7096353))

(assert (= (and b!7096353 c!1324290) b!7096349))

(assert (= (and b!7096353 (not c!1324290)) b!7096347))

(assert (= (and b!7096347 c!1324289) b!7096351))

(assert (= (and b!7096347 (not c!1324289)) b!7096344))

(assert (= (or b!7096349 b!7096351) bm!645844))

(assert (= (or b!7096349 b!7096351) bm!645847))

(assert (= (or b!7096343 bm!645847) bm!645849))

(assert (= (or b!7096343 bm!645844) bm!645845))

(assert (= (or b!7096346 bm!645849) bm!645848))

(assert (= (or b!7096346 b!7096343) bm!645846))

(assert (=> b!7096350 m!7823784))

(declare-fun m!7823826 () Bool)

(assert (=> bm!645845 m!7823826))

(declare-fun m!7823828 () Bool)

(assert (=> bm!645848 m!7823828))

(declare-fun m!7823830 () Bool)

(assert (=> bm!645846 m!7823830))

(declare-fun m!7823832 () Bool)

(assert (=> b!7096348 m!7823832))

(assert (=> b!7096183 d!2217861))

(declare-fun bs!1883941 () Bool)

(declare-fun d!2217863 () Bool)

(assert (= bs!1883941 (and d!2217863 d!2217857)))

(declare-fun lambda!430507 () Int)

(assert (=> bs!1883941 (= lambda!430507 lambda!430506)))

(assert (=> d!2217863 true))

(assert (=> d!2217863 (= (appendTo!891 (derivationStepZipperDown!2385 (regOne!36180 r!11554) lt!2557315 a!1901) auxCtx!45) (map!16182 (derivationStepZipperDown!2385 (regOne!36180 r!11554) lt!2557315 a!1901) lambda!430507))))

(declare-fun bs!1883942 () Bool)

(assert (= bs!1883942 d!2217863))

(assert (=> bs!1883942 m!7823714))

(declare-fun m!7823834 () Bool)

(assert (=> bs!1883942 m!7823834))

(assert (=> b!7096183 d!2217863))

(declare-fun bm!645850 () Bool)

(declare-fun call!645856 () List!68797)

(declare-fun call!645859 () List!68797)

(assert (=> bm!645850 (= call!645856 call!645859)))

(declare-fun c!1324295 () Bool)

(declare-fun c!1324292 () Bool)

(declare-fun bm!645851 () Bool)

(assert (=> bm!645851 (= call!645859 ($colon$colon!2729 (exprs!7330 (Context!13661 (++!15998 lt!2557314 (exprs!7330 auxCtx!45)))) (ite (or c!1324292 c!1324295) (regTwo!36180 (regOne!36180 r!11554)) (regOne!36180 r!11554))))))

(declare-fun b!7096354 () Bool)

(declare-fun e!4265691 () (Set Context!13660))

(declare-fun call!645858 () (Set Context!13660))

(declare-fun call!645860 () (Set Context!13660))

(assert (=> b!7096354 (= e!4265691 (set.union call!645858 call!645860))))

(declare-fun b!7096355 () Bool)

(declare-fun e!4265692 () (Set Context!13660))

(assert (=> b!7096355 (= e!4265692 (as set.empty (Set Context!13660)))))

(declare-fun d!2217865 () Bool)

(declare-fun c!1324296 () Bool)

(assert (=> d!2217865 (= c!1324296 (and (is-ElementMatch!17834 (regOne!36180 r!11554)) (= (c!1324243 (regOne!36180 r!11554)) a!1901)))))

(declare-fun e!4265690 () (Set Context!13660))

(assert (=> d!2217865 (= (derivationStepZipperDown!2385 (regOne!36180 r!11554) (Context!13661 (++!15998 lt!2557314 (exprs!7330 auxCtx!45))) a!1901) e!4265690)))

(declare-fun b!7096356 () Bool)

(declare-fun e!4265693 () (Set Context!13660))

(assert (=> b!7096356 (= e!4265690 e!4265693)))

(declare-fun c!1324293 () Bool)

(assert (=> b!7096356 (= c!1324293 (is-Union!17834 (regOne!36180 r!11554)))))

(declare-fun b!7096357 () Bool)

(declare-fun call!645857 () (Set Context!13660))

(assert (=> b!7096357 (= e!4265693 (set.union call!645858 call!645857))))

(declare-fun bm!645852 () Bool)

(assert (=> bm!645852 (= call!645858 (derivationStepZipperDown!2385 (ite c!1324293 (regOne!36181 (regOne!36180 r!11554)) (regOne!36180 (regOne!36180 r!11554))) (ite c!1324293 (Context!13661 (++!15998 lt!2557314 (exprs!7330 auxCtx!45))) (Context!13661 call!645859)) a!1901))))

(declare-fun b!7096358 () Bool)

(declare-fun c!1324294 () Bool)

(assert (=> b!7096358 (= c!1324294 (is-Star!17834 (regOne!36180 r!11554)))))

(declare-fun e!4265695 () (Set Context!13660))

(assert (=> b!7096358 (= e!4265695 e!4265692)))

(declare-fun b!7096359 () Bool)

(assert (=> b!7096359 (= e!4265690 (set.insert (Context!13661 (++!15998 lt!2557314 (exprs!7330 auxCtx!45))) (as set.empty (Set Context!13660))))))

(declare-fun bm!645853 () Bool)

(declare-fun call!645855 () (Set Context!13660))

(assert (=> bm!645853 (= call!645855 call!645860)))

(declare-fun b!7096360 () Bool)

(assert (=> b!7096360 (= e!4265695 call!645855)))

(declare-fun b!7096361 () Bool)

(declare-fun e!4265694 () Bool)

(assert (=> b!7096361 (= e!4265694 (nullable!7474 (regOne!36180 (regOne!36180 r!11554))))))

(declare-fun bm!645854 () Bool)

(assert (=> bm!645854 (= call!645857 (derivationStepZipperDown!2385 (ite c!1324293 (regTwo!36181 (regOne!36180 r!11554)) (ite c!1324292 (regTwo!36180 (regOne!36180 r!11554)) (ite c!1324295 (regOne!36180 (regOne!36180 r!11554)) (reg!18163 (regOne!36180 r!11554))))) (ite (or c!1324293 c!1324292) (Context!13661 (++!15998 lt!2557314 (exprs!7330 auxCtx!45))) (Context!13661 call!645856)) a!1901))))

(declare-fun b!7096362 () Bool)

(assert (=> b!7096362 (= e!4265692 call!645855)))

(declare-fun b!7096363 () Bool)

(assert (=> b!7096363 (= c!1324292 e!4265694)))

(declare-fun res!2897822 () Bool)

(assert (=> b!7096363 (=> (not res!2897822) (not e!4265694))))

(assert (=> b!7096363 (= res!2897822 (is-Concat!26679 (regOne!36180 r!11554)))))

(assert (=> b!7096363 (= e!4265693 e!4265691)))

(declare-fun b!7096364 () Bool)

(assert (=> b!7096364 (= e!4265691 e!4265695)))

(assert (=> b!7096364 (= c!1324295 (is-Concat!26679 (regOne!36180 r!11554)))))

(declare-fun bm!645855 () Bool)

(assert (=> bm!645855 (= call!645860 call!645857)))

(assert (= (and d!2217865 c!1324296) b!7096359))

(assert (= (and d!2217865 (not c!1324296)) b!7096356))

(assert (= (and b!7096356 c!1324293) b!7096357))

(assert (= (and b!7096356 (not c!1324293)) b!7096363))

(assert (= (and b!7096363 res!2897822) b!7096361))

(assert (= (and b!7096363 c!1324292) b!7096354))

(assert (= (and b!7096363 (not c!1324292)) b!7096364))

(assert (= (and b!7096364 c!1324295) b!7096360))

(assert (= (and b!7096364 (not c!1324295)) b!7096358))

(assert (= (and b!7096358 c!1324294) b!7096362))

(assert (= (and b!7096358 (not c!1324294)) b!7096355))

(assert (= (or b!7096360 b!7096362) bm!645850))

(assert (= (or b!7096360 b!7096362) bm!645853))

(assert (= (or b!7096354 bm!645853) bm!645855))

(assert (= (or b!7096354 bm!645850) bm!645851))

(assert (= (or b!7096357 bm!645855) bm!645854))

(assert (= (or b!7096357 b!7096354) bm!645852))

(assert (=> b!7096361 m!7823784))

(declare-fun m!7823836 () Bool)

(assert (=> bm!645851 m!7823836))

(declare-fun m!7823838 () Bool)

(assert (=> bm!645854 m!7823838))

(declare-fun m!7823840 () Bool)

(assert (=> bm!645852 m!7823840))

(declare-fun m!7823842 () Bool)

(assert (=> b!7096359 m!7823842))

(assert (=> b!7096183 d!2217865))

(declare-fun d!2217867 () Bool)

(assert (=> d!2217867 (= ($colon$colon!2729 (exprs!7330 c!9994) (regTwo!36180 r!11554)) (Cons!68673 (regTwo!36180 r!11554) (exprs!7330 c!9994)))))

(assert (=> b!7096183 d!2217867))

(declare-fun b!7096395 () Bool)

(declare-fun e!4265713 () List!68797)

(assert (=> b!7096395 (= e!4265713 (exprs!7330 auxCtx!45))))

(declare-fun b!7096398 () Bool)

(declare-fun e!4265712 () Bool)

(declare-fun lt!2557353 () List!68797)

(assert (=> b!7096398 (= e!4265712 (or (not (= (exprs!7330 auxCtx!45) Nil!68673)) (= lt!2557353 lt!2557314)))))

(declare-fun b!7096396 () Bool)

(assert (=> b!7096396 (= e!4265713 (Cons!68673 (h!75121 lt!2557314) (++!15998 (t!382598 lt!2557314) (exprs!7330 auxCtx!45))))))

(declare-fun d!2217869 () Bool)

(assert (=> d!2217869 e!4265712))

(declare-fun res!2897830 () Bool)

(assert (=> d!2217869 (=> (not res!2897830) (not e!4265712))))

(declare-fun content!13955 (List!68797) (Set Regex!17834))

(assert (=> d!2217869 (= res!2897830 (= (content!13955 lt!2557353) (set.union (content!13955 lt!2557314) (content!13955 (exprs!7330 auxCtx!45)))))))

(assert (=> d!2217869 (= lt!2557353 e!4265713)))

(declare-fun c!1324309 () Bool)

(assert (=> d!2217869 (= c!1324309 (is-Nil!68673 lt!2557314))))

(assert (=> d!2217869 (= (++!15998 lt!2557314 (exprs!7330 auxCtx!45)) lt!2557353)))

(declare-fun b!7096397 () Bool)

(declare-fun res!2897829 () Bool)

(assert (=> b!7096397 (=> (not res!2897829) (not e!4265712))))

(declare-fun size!41330 (List!68797) Int)

(assert (=> b!7096397 (= res!2897829 (= (size!41330 lt!2557353) (+ (size!41330 lt!2557314) (size!41330 (exprs!7330 auxCtx!45)))))))

(assert (= (and d!2217869 c!1324309) b!7096395))

(assert (= (and d!2217869 (not c!1324309)) b!7096396))

(assert (= (and d!2217869 res!2897830) b!7096397))

(assert (= (and b!7096397 res!2897829) b!7096398))

(declare-fun m!7823854 () Bool)

(assert (=> b!7096396 m!7823854))

(declare-fun m!7823856 () Bool)

(assert (=> d!2217869 m!7823856))

(declare-fun m!7823858 () Bool)

(assert (=> d!2217869 m!7823858))

(declare-fun m!7823860 () Bool)

(assert (=> d!2217869 m!7823860))

(declare-fun m!7823862 () Bool)

(assert (=> b!7096397 m!7823862))

(declare-fun m!7823864 () Bool)

(assert (=> b!7096397 m!7823864))

(declare-fun m!7823866 () Bool)

(assert (=> b!7096397 m!7823866))

(assert (=> b!7096183 d!2217869))

(declare-fun d!2217875 () Bool)

(assert (=> d!2217875 (forall!16756 (++!15998 (exprs!7330 c!9994) (exprs!7330 auxCtx!45)) lambda!430486)))

(declare-fun lt!2557356 () Unit!162351)

(declare-fun choose!54717 (List!68797 List!68797 Int) Unit!162351)

(assert (=> d!2217875 (= lt!2557356 (choose!54717 (exprs!7330 c!9994) (exprs!7330 auxCtx!45) lambda!430486))))

(assert (=> d!2217875 (forall!16756 (exprs!7330 c!9994) lambda!430486)))

(assert (=> d!2217875 (= (lemmaConcatPreservesForall!1129 (exprs!7330 c!9994) (exprs!7330 auxCtx!45) lambda!430486) lt!2557356)))

(declare-fun bs!1883943 () Bool)

(assert (= bs!1883943 d!2217875))

(assert (=> bs!1883943 m!7823700))

(assert (=> bs!1883943 m!7823700))

(declare-fun m!7823876 () Bool)

(assert (=> bs!1883943 m!7823876))

(declare-fun m!7823878 () Bool)

(assert (=> bs!1883943 m!7823878))

(assert (=> bs!1883943 m!7823730))

(assert (=> b!7096183 d!2217875))

(declare-fun bs!1883944 () Bool)

(declare-fun d!2217879 () Bool)

(assert (= bs!1883944 (and d!2217879 b!7096182)))

(declare-fun lambda!430510 () Int)

(assert (=> bs!1883944 (= lambda!430510 lambda!430486)))

(declare-fun bs!1883945 () Bool)

(assert (= bs!1883945 (and d!2217879 d!2217851)))

(assert (=> bs!1883945 (= lambda!430510 lambda!430500)))

(declare-fun bs!1883946 () Bool)

(assert (= bs!1883946 (and d!2217879 d!2217853)))

(assert (=> bs!1883946 (= lambda!430510 lambda!430501)))

(assert (=> d!2217879 (= (derivationStepZipperDown!2385 (regOne!36180 r!11554) (Context!13661 (++!15998 (exprs!7330 lt!2557315) (exprs!7330 auxCtx!45))) a!1901) (appendTo!891 (derivationStepZipperDown!2385 (regOne!36180 r!11554) lt!2557315 a!1901) auxCtx!45))))

(declare-fun lt!2557362 () Unit!162351)

(assert (=> d!2217879 (= lt!2557362 (lemmaConcatPreservesForall!1129 (exprs!7330 lt!2557315) (exprs!7330 auxCtx!45) lambda!430510))))

(declare-fun lt!2557361 () Unit!162351)

(declare-fun choose!54718 (Context!13660 Regex!17834 C!35938 Context!13660) Unit!162351)

(assert (=> d!2217879 (= lt!2557361 (choose!54718 lt!2557315 (regOne!36180 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217879 (validRegex!9109 (regOne!36180 r!11554))))

(assert (=> d!2217879 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!199 lt!2557315 (regOne!36180 r!11554) a!1901 auxCtx!45) lt!2557361)))

(declare-fun bs!1883947 () Bool)

(assert (= bs!1883947 d!2217879))

(declare-fun m!7823880 () Bool)

(assert (=> bs!1883947 m!7823880))

(declare-fun m!7823882 () Bool)

(assert (=> bs!1883947 m!7823882))

(declare-fun m!7823884 () Bool)

(assert (=> bs!1883947 m!7823884))

(assert (=> bs!1883947 m!7823714))

(assert (=> bs!1883947 m!7823716))

(declare-fun m!7823886 () Bool)

(assert (=> bs!1883947 m!7823886))

(assert (=> bs!1883947 m!7823714))

(declare-fun m!7823888 () Bool)

(assert (=> bs!1883947 m!7823888))

(assert (=> b!7096183 d!2217879))

(declare-fun d!2217881 () Bool)

(assert (=> d!2217881 (forall!16756 (++!15998 lt!2557314 (exprs!7330 auxCtx!45)) lambda!430486)))

(declare-fun lt!2557363 () Unit!162351)

(assert (=> d!2217881 (= lt!2557363 (choose!54717 lt!2557314 (exprs!7330 auxCtx!45) lambda!430486))))

(assert (=> d!2217881 (forall!16756 lt!2557314 lambda!430486)))

(assert (=> d!2217881 (= (lemmaConcatPreservesForall!1129 lt!2557314 (exprs!7330 auxCtx!45) lambda!430486) lt!2557363)))

(declare-fun bs!1883948 () Bool)

(assert (= bs!1883948 d!2217881))

(assert (=> bs!1883948 m!7823722))

(assert (=> bs!1883948 m!7823722))

(declare-fun m!7823890 () Bool)

(assert (=> bs!1883948 m!7823890))

(declare-fun m!7823892 () Bool)

(assert (=> bs!1883948 m!7823892))

(declare-fun m!7823894 () Bool)

(assert (=> bs!1883948 m!7823894))

(assert (=> b!7096183 d!2217881))

(declare-fun d!2217883 () Bool)

(declare-fun nullableFct!2873 (Regex!17834) Bool)

(assert (=> d!2217883 (= (nullable!7474 (regOne!36180 r!11554)) (nullableFct!2873 (regOne!36180 r!11554)))))

(declare-fun bs!1883949 () Bool)

(assert (= bs!1883949 d!2217883))

(declare-fun m!7823896 () Bool)

(assert (=> bs!1883949 m!7823896))

(assert (=> b!7096177 d!2217883))

(declare-fun b!7096417 () Bool)

(declare-fun e!4265733 () Bool)

(declare-fun call!645879 () Bool)

(assert (=> b!7096417 (= e!4265733 call!645879)))

(declare-fun b!7096418 () Bool)

(declare-fun e!4265731 () Bool)

(declare-fun e!4265729 () Bool)

(assert (=> b!7096418 (= e!4265731 e!4265729)))

(declare-fun res!2897843 () Bool)

(assert (=> b!7096418 (= res!2897843 (not (nullable!7474 (reg!18163 (regTwo!36180 r!11554)))))))

(assert (=> b!7096418 (=> (not res!2897843) (not e!4265729))))

(declare-fun b!7096419 () Bool)

(declare-fun res!2897845 () Bool)

(declare-fun e!4265732 () Bool)

(assert (=> b!7096419 (=> res!2897845 e!4265732)))

(assert (=> b!7096419 (= res!2897845 (not (is-Concat!26679 (regTwo!36180 r!11554))))))

(declare-fun e!4265730 () Bool)

(assert (=> b!7096419 (= e!4265730 e!4265732)))

(declare-fun b!7096420 () Bool)

(declare-fun e!4265734 () Bool)

(assert (=> b!7096420 (= e!4265734 e!4265731)))

(declare-fun c!1324315 () Bool)

(assert (=> b!7096420 (= c!1324315 (is-Star!17834 (regTwo!36180 r!11554)))))

(declare-fun b!7096421 () Bool)

(assert (=> b!7096421 (= e!4265731 e!4265730)))

(declare-fun c!1324316 () Bool)

(assert (=> b!7096421 (= c!1324316 (is-Union!17834 (regTwo!36180 r!11554)))))

(declare-fun bm!645872 () Bool)

(declare-fun call!645880 () Bool)

(assert (=> bm!645872 (= call!645880 (validRegex!9109 (ite c!1324316 (regOne!36181 (regTwo!36180 r!11554)) (regTwo!36180 (regTwo!36180 r!11554)))))))

(declare-fun b!7096422 () Bool)

(declare-fun res!2897841 () Bool)

(assert (=> b!7096422 (=> (not res!2897841) (not e!4265733))))

(assert (=> b!7096422 (= res!2897841 call!645880)))

(assert (=> b!7096422 (= e!4265730 e!4265733)))

(declare-fun b!7096423 () Bool)

(declare-fun call!645881 () Bool)

(assert (=> b!7096423 (= e!4265729 call!645881)))

(declare-fun bm!645873 () Bool)

(assert (=> bm!645873 (= call!645881 (validRegex!9109 (ite c!1324315 (reg!18163 (regTwo!36180 r!11554)) (ite c!1324316 (regTwo!36181 (regTwo!36180 r!11554)) (regOne!36180 (regTwo!36180 r!11554))))))))

(declare-fun bm!645874 () Bool)

(assert (=> bm!645874 (= call!645879 call!645881)))

(declare-fun d!2217885 () Bool)

(declare-fun res!2897844 () Bool)

(assert (=> d!2217885 (=> res!2897844 e!4265734)))

(assert (=> d!2217885 (= res!2897844 (is-ElementMatch!17834 (regTwo!36180 r!11554)))))

(assert (=> d!2217885 (= (validRegex!9109 (regTwo!36180 r!11554)) e!4265734)))

(declare-fun b!7096424 () Bool)

(declare-fun e!4265728 () Bool)

(assert (=> b!7096424 (= e!4265728 call!645880)))

(declare-fun b!7096425 () Bool)

(assert (=> b!7096425 (= e!4265732 e!4265728)))

(declare-fun res!2897842 () Bool)

(assert (=> b!7096425 (=> (not res!2897842) (not e!4265728))))

(assert (=> b!7096425 (= res!2897842 call!645879)))

(assert (= (and d!2217885 (not res!2897844)) b!7096420))

(assert (= (and b!7096420 c!1324315) b!7096418))

(assert (= (and b!7096420 (not c!1324315)) b!7096421))

(assert (= (and b!7096418 res!2897843) b!7096423))

(assert (= (and b!7096421 c!1324316) b!7096422))

(assert (= (and b!7096421 (not c!1324316)) b!7096419))

(assert (= (and b!7096422 res!2897841) b!7096417))

(assert (= (and b!7096419 (not res!2897845)) b!7096425))

(assert (= (and b!7096425 res!2897842) b!7096424))

(assert (= (or b!7096422 b!7096424) bm!645872))

(assert (= (or b!7096417 b!7096425) bm!645874))

(assert (= (or b!7096423 bm!645874) bm!645873))

(declare-fun m!7823898 () Bool)

(assert (=> b!7096418 m!7823898))

(declare-fun m!7823900 () Bool)

(assert (=> bm!645872 m!7823900))

(declare-fun m!7823902 () Bool)

(assert (=> bm!645873 m!7823902))

(assert (=> b!7096182 d!2217885))

(declare-fun b!7096426 () Bool)

(declare-fun e!4265736 () List!68797)

(assert (=> b!7096426 (= e!4265736 (exprs!7330 auxCtx!45))))

(declare-fun lt!2557364 () List!68797)

(declare-fun e!4265735 () Bool)

(declare-fun b!7096429 () Bool)

(assert (=> b!7096429 (= e!4265735 (or (not (= (exprs!7330 auxCtx!45) Nil!68673)) (= lt!2557364 (exprs!7330 c!9994))))))

(declare-fun b!7096427 () Bool)

(assert (=> b!7096427 (= e!4265736 (Cons!68673 (h!75121 (exprs!7330 c!9994)) (++!15998 (t!382598 (exprs!7330 c!9994)) (exprs!7330 auxCtx!45))))))

(declare-fun d!2217887 () Bool)

(assert (=> d!2217887 e!4265735))

(declare-fun res!2897847 () Bool)

(assert (=> d!2217887 (=> (not res!2897847) (not e!4265735))))

(assert (=> d!2217887 (= res!2897847 (= (content!13955 lt!2557364) (set.union (content!13955 (exprs!7330 c!9994)) (content!13955 (exprs!7330 auxCtx!45)))))))

(assert (=> d!2217887 (= lt!2557364 e!4265736)))

(declare-fun c!1324317 () Bool)

(assert (=> d!2217887 (= c!1324317 (is-Nil!68673 (exprs!7330 c!9994)))))

(assert (=> d!2217887 (= (++!15998 (exprs!7330 c!9994) (exprs!7330 auxCtx!45)) lt!2557364)))

(declare-fun b!7096428 () Bool)

(declare-fun res!2897846 () Bool)

(assert (=> b!7096428 (=> (not res!2897846) (not e!4265735))))

(assert (=> b!7096428 (= res!2897846 (= (size!41330 lt!2557364) (+ (size!41330 (exprs!7330 c!9994)) (size!41330 (exprs!7330 auxCtx!45)))))))

(assert (= (and d!2217887 c!1324317) b!7096426))

(assert (= (and d!2217887 (not c!1324317)) b!7096427))

(assert (= (and d!2217887 res!2897847) b!7096428))

(assert (= (and b!7096428 res!2897846) b!7096429))

(declare-fun m!7823904 () Bool)

(assert (=> b!7096427 m!7823904))

(declare-fun m!7823906 () Bool)

(assert (=> d!2217887 m!7823906))

(declare-fun m!7823908 () Bool)

(assert (=> d!2217887 m!7823908))

(assert (=> d!2217887 m!7823860))

(declare-fun m!7823910 () Bool)

(assert (=> b!7096428 m!7823910))

(declare-fun m!7823912 () Bool)

(assert (=> b!7096428 m!7823912))

(assert (=> b!7096428 m!7823866))

(assert (=> b!7096182 d!2217887))

(assert (=> b!7096182 d!2217875))

(declare-fun b!7096434 () Bool)

(declare-fun e!4265739 () Bool)

(declare-fun tp!1950045 () Bool)

(declare-fun tp!1950046 () Bool)

(assert (=> b!7096434 (= e!4265739 (and tp!1950045 tp!1950046))))

(assert (=> b!7096179 (= tp!1950016 e!4265739)))

(assert (= (and b!7096179 (is-Cons!68673 (exprs!7330 auxCtx!45))) b!7096434))

(declare-fun b!7096446 () Bool)

(declare-fun e!4265742 () Bool)

(declare-fun tp!1950059 () Bool)

(declare-fun tp!1950058 () Bool)

(assert (=> b!7096446 (= e!4265742 (and tp!1950059 tp!1950058))))

(declare-fun b!7096445 () Bool)

(assert (=> b!7096445 (= e!4265742 tp_is_empty!44901)))

(declare-fun b!7096448 () Bool)

(declare-fun tp!1950057 () Bool)

(declare-fun tp!1950060 () Bool)

(assert (=> b!7096448 (= e!4265742 (and tp!1950057 tp!1950060))))

(declare-fun b!7096447 () Bool)

(declare-fun tp!1950061 () Bool)

(assert (=> b!7096447 (= e!4265742 tp!1950061)))

(assert (=> b!7096174 (= tp!1950014 e!4265742)))

(assert (= (and b!7096174 (is-ElementMatch!17834 (regOne!36180 r!11554))) b!7096445))

(assert (= (and b!7096174 (is-Concat!26679 (regOne!36180 r!11554))) b!7096446))

(assert (= (and b!7096174 (is-Star!17834 (regOne!36180 r!11554))) b!7096447))

(assert (= (and b!7096174 (is-Union!17834 (regOne!36180 r!11554))) b!7096448))

(declare-fun b!7096450 () Bool)

(declare-fun e!4265743 () Bool)

(declare-fun tp!1950064 () Bool)

(declare-fun tp!1950063 () Bool)

(assert (=> b!7096450 (= e!4265743 (and tp!1950064 tp!1950063))))

(declare-fun b!7096449 () Bool)

(assert (=> b!7096449 (= e!4265743 tp_is_empty!44901)))

(declare-fun b!7096452 () Bool)

(declare-fun tp!1950062 () Bool)

(declare-fun tp!1950065 () Bool)

(assert (=> b!7096452 (= e!4265743 (and tp!1950062 tp!1950065))))

(declare-fun b!7096451 () Bool)

(declare-fun tp!1950066 () Bool)

(assert (=> b!7096451 (= e!4265743 tp!1950066)))

(assert (=> b!7096174 (= tp!1950015 e!4265743)))

(assert (= (and b!7096174 (is-ElementMatch!17834 (regTwo!36180 r!11554))) b!7096449))

(assert (= (and b!7096174 (is-Concat!26679 (regTwo!36180 r!11554))) b!7096450))

(assert (= (and b!7096174 (is-Star!17834 (regTwo!36180 r!11554))) b!7096451))

(assert (= (and b!7096174 (is-Union!17834 (regTwo!36180 r!11554))) b!7096452))

(declare-fun b!7096454 () Bool)

(declare-fun e!4265744 () Bool)

(declare-fun tp!1950069 () Bool)

(declare-fun tp!1950068 () Bool)

(assert (=> b!7096454 (= e!4265744 (and tp!1950069 tp!1950068))))

(declare-fun b!7096453 () Bool)

(assert (=> b!7096453 (= e!4265744 tp_is_empty!44901)))

(declare-fun b!7096456 () Bool)

(declare-fun tp!1950067 () Bool)

(declare-fun tp!1950070 () Bool)

(assert (=> b!7096456 (= e!4265744 (and tp!1950067 tp!1950070))))

(declare-fun b!7096455 () Bool)

(declare-fun tp!1950071 () Bool)

(assert (=> b!7096455 (= e!4265744 tp!1950071)))

(assert (=> b!7096171 (= tp!1950018 e!4265744)))

(assert (= (and b!7096171 (is-ElementMatch!17834 (regOne!36181 r!11554))) b!7096453))

(assert (= (and b!7096171 (is-Concat!26679 (regOne!36181 r!11554))) b!7096454))

(assert (= (and b!7096171 (is-Star!17834 (regOne!36181 r!11554))) b!7096455))

(assert (= (and b!7096171 (is-Union!17834 (regOne!36181 r!11554))) b!7096456))

(declare-fun b!7096458 () Bool)

(declare-fun e!4265745 () Bool)

(declare-fun tp!1950074 () Bool)

(declare-fun tp!1950073 () Bool)

(assert (=> b!7096458 (= e!4265745 (and tp!1950074 tp!1950073))))

(declare-fun b!7096457 () Bool)

(assert (=> b!7096457 (= e!4265745 tp_is_empty!44901)))

(declare-fun b!7096460 () Bool)

(declare-fun tp!1950072 () Bool)

(declare-fun tp!1950075 () Bool)

(assert (=> b!7096460 (= e!4265745 (and tp!1950072 tp!1950075))))

(declare-fun b!7096459 () Bool)

(declare-fun tp!1950076 () Bool)

(assert (=> b!7096459 (= e!4265745 tp!1950076)))

(assert (=> b!7096171 (= tp!1950019 e!4265745)))

(assert (= (and b!7096171 (is-ElementMatch!17834 (regTwo!36181 r!11554))) b!7096457))

(assert (= (and b!7096171 (is-Concat!26679 (regTwo!36181 r!11554))) b!7096458))

(assert (= (and b!7096171 (is-Star!17834 (regTwo!36181 r!11554))) b!7096459))

(assert (= (and b!7096171 (is-Union!17834 (regTwo!36181 r!11554))) b!7096460))

(declare-fun b!7096462 () Bool)

(declare-fun e!4265746 () Bool)

(declare-fun tp!1950079 () Bool)

(declare-fun tp!1950078 () Bool)

(assert (=> b!7096462 (= e!4265746 (and tp!1950079 tp!1950078))))

(declare-fun b!7096461 () Bool)

(assert (=> b!7096461 (= e!4265746 tp_is_empty!44901)))

(declare-fun b!7096464 () Bool)

(declare-fun tp!1950077 () Bool)

(declare-fun tp!1950080 () Bool)

(assert (=> b!7096464 (= e!4265746 (and tp!1950077 tp!1950080))))

(declare-fun b!7096463 () Bool)

(declare-fun tp!1950081 () Bool)

(assert (=> b!7096463 (= e!4265746 tp!1950081)))

(assert (=> b!7096181 (= tp!1950017 e!4265746)))

(assert (= (and b!7096181 (is-ElementMatch!17834 (reg!18163 r!11554))) b!7096461))

(assert (= (and b!7096181 (is-Concat!26679 (reg!18163 r!11554))) b!7096462))

(assert (= (and b!7096181 (is-Star!17834 (reg!18163 r!11554))) b!7096463))

(assert (= (and b!7096181 (is-Union!17834 (reg!18163 r!11554))) b!7096464))

(declare-fun b!7096465 () Bool)

(declare-fun e!4265747 () Bool)

(declare-fun tp!1950082 () Bool)

(declare-fun tp!1950083 () Bool)

(assert (=> b!7096465 (= e!4265747 (and tp!1950082 tp!1950083))))

(assert (=> b!7096172 (= tp!1950013 e!4265747)))

(assert (= (and b!7096172 (is-Cons!68673 (exprs!7330 c!9994))) b!7096465))

(declare-fun b_lambda!271157 () Bool)

(assert (= b_lambda!271153 (or b!7096182 b_lambda!271157)))

(declare-fun bs!1883950 () Bool)

(declare-fun d!2217889 () Bool)

(assert (= bs!1883950 (and d!2217889 b!7096182)))

(assert (=> bs!1883950 (= (dynLambda!28021 lambda!430486 (h!75121 (exprs!7330 auxCtx!45))) (validRegex!9109 (h!75121 (exprs!7330 auxCtx!45))))))

(declare-fun m!7823914 () Bool)

(assert (=> bs!1883950 m!7823914))

(assert (=> b!7096233 d!2217889))

(declare-fun b_lambda!271159 () Bool)

(assert (= b_lambda!271155 (or b!7096182 b_lambda!271159)))

(declare-fun bs!1883951 () Bool)

(declare-fun d!2217891 () Bool)

(assert (= bs!1883951 (and d!2217891 b!7096182)))

(assert (=> bs!1883951 (= (dynLambda!28021 lambda!430486 (h!75121 (exprs!7330 c!9994))) (validRegex!9109 (h!75121 (exprs!7330 c!9994))))))

(declare-fun m!7823916 () Bool)

(assert (=> bs!1883951 m!7823916))

(assert (=> b!7096328 d!2217891))

(push 1)

(assert (not bm!645854))

(assert (not b!7096465))

(assert (not bm!645846))

(assert (not bm!645813))

(assert (not b!7096447))

(assert (not b!7096460))

(assert (not b!7096458))

(assert (not b!7096434))

(assert (not b!7096451))

(assert (not bm!645806))

(assert (not b!7096450))

(assert (not bm!645873))

(assert (not b!7096329))

(assert (not bm!645831))

(assert (not b!7096279))

(assert (not b!7096397))

(assert (not b!7096456))

(assert (not bm!645807))

(assert (not d!2217853))

(assert (not b!7096339))

(assert (not bm!645812))

(assert (not d!2217857))

(assert (not b!7096418))

(assert (not d!2217881))

(assert tp_is_empty!44901)

(assert (not bm!645840))

(assert (not b!7096428))

(assert (not bm!645832))

(assert (not bm!645815))

(assert (not b_lambda!271157))

(assert (not bm!645809))

(assert (not b!7096464))

(assert (not b!7096264))

(assert (not bs!1883951))

(assert (not b!7096459))

(assert (not bm!645872))

(assert (not b!7096454))

(assert (not bm!645848))

(assert (not b!7096320))

(assert (not bm!645851))

(assert (not b!7096361))

(assert (not d!2217879))

(assert (not b!7096462))

(assert (not b!7096396))

(assert (not b!7096234))

(assert (not b!7096448))

(assert (not d!2217869))

(assert (not b!7096452))

(assert (not bs!1883950))

(assert (not b!7096446))

(assert (not d!2217887))

(assert (not d!2217883))

(assert (not b_lambda!271159))

(assert (not bm!645839))

(assert (not bm!645842))

(assert (not d!2217851))

(assert (not b!7096350))

(assert (not d!2217875))

(assert (not b!7096463))

(assert (not bm!645845))

(assert (not b!7096455))

(assert (not b!7096427))

(assert (not d!2217863))

(assert (not bm!645852))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


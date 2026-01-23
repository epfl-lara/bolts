; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691726 () Bool)

(assert start!691726)

(declare-fun b!7105874 () Bool)

(assert (=> b!7105874 true))

(declare-fun b!7105869 () Bool)

(declare-fun e!4270783 () Bool)

(declare-fun tp!1954082 () Bool)

(declare-fun tp!1954083 () Bool)

(assert (=> b!7105869 (= e!4270783 (and tp!1954082 tp!1954083))))

(declare-fun b!7105870 () Bool)

(declare-fun e!4270780 () Bool)

(declare-datatypes ((C!36090 0))(
  ( (C!36091 (val!27751 Int)) )
))
(declare-datatypes ((Regex!17910 0))(
  ( (ElementMatch!17910 (c!1326043 C!36090)) (Concat!26755 (regOne!36332 Regex!17910) (regTwo!36332 Regex!17910)) (EmptyExpr!17910) (Star!17910 (reg!18239 Regex!17910)) (EmptyLang!17910) (Union!17910 (regOne!36333 Regex!17910) (regTwo!36333 Regex!17910)) )
))
(declare-datatypes ((List!68871 0))(
  ( (Nil!68747) (Cons!68747 (h!75195 Regex!17910) (t!382688 List!68871)) )
))
(declare-datatypes ((Context!13808 0))(
  ( (Context!13809 (exprs!7404 List!68871)) )
))
(declare-fun lt!2559007 () Context!13808)

(declare-fun inv!87639 (Context!13808) Bool)

(assert (=> b!7105870 (= e!4270780 (inv!87639 lt!2559007))))

(declare-datatypes ((Unit!162491 0))(
  ( (Unit!162492) )
))
(declare-fun lt!2558997 () Unit!162491)

(declare-fun c!9994 () Context!13808)

(declare-fun lambda!431559 () Int)

(declare-fun auxCtx!45 () Context!13808)

(declare-fun lemmaConcatPreservesForall!1195 (List!68871 List!68871 Int) Unit!162491)

(assert (=> b!7105870 (= lt!2558997 (lemmaConcatPreservesForall!1195 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431559))))

(declare-fun b!7105871 () Bool)

(declare-fun tp!1954084 () Bool)

(declare-fun tp!1954081 () Bool)

(assert (=> b!7105871 (= e!4270783 (and tp!1954084 tp!1954081))))

(declare-fun res!2900601 () Bool)

(declare-fun e!4270778 () Bool)

(assert (=> start!691726 (=> (not res!2900601) (not e!4270778))))

(declare-fun r!11554 () Regex!17910)

(declare-fun validRegex!9183 (Regex!17910) Bool)

(assert (=> start!691726 (= res!2900601 (validRegex!9183 r!11554))))

(assert (=> start!691726 e!4270778))

(assert (=> start!691726 e!4270783))

(declare-fun e!4270781 () Bool)

(assert (=> start!691726 (and (inv!87639 c!9994) e!4270781)))

(declare-fun tp_is_empty!45053 () Bool)

(assert (=> start!691726 tp_is_empty!45053))

(declare-fun e!4270777 () Bool)

(assert (=> start!691726 (and (inv!87639 auxCtx!45) e!4270777)))

(declare-fun b!7105872 () Bool)

(assert (=> b!7105872 (= e!4270783 tp_is_empty!45053)))

(declare-fun b!7105873 () Bool)

(declare-fun tp!1954087 () Bool)

(assert (=> b!7105873 (= e!4270783 tp!1954087)))

(declare-fun e!4270779 () Bool)

(assert (=> b!7105874 (= e!4270778 e!4270779)))

(declare-fun res!2900602 () Bool)

(assert (=> b!7105874 (=> (not res!2900602) (not e!4270779))))

(declare-fun a!1901 () C!36090)

(assert (=> b!7105874 (= res!2900602 (and (or (not (is-ElementMatch!17910 r!11554)) (not (= (c!1326043 r!11554) a!1901))) (is-Union!17910 r!11554)))))

(declare-fun b!7105875 () Bool)

(declare-fun e!4270782 () Bool)

(assert (=> b!7105875 (= e!4270779 e!4270782)))

(declare-fun res!2900604 () Bool)

(assert (=> b!7105875 (=> (not res!2900604) (not e!4270782))))

(declare-fun lt!2559005 () (Set Context!13808))

(declare-fun lt!2559000 () (Set Context!13808))

(declare-fun lt!2558998 () (Set Context!13808))

(assert (=> b!7105875 (= res!2900604 (= lt!2559005 (set.union lt!2558998 lt!2559000)))))

(declare-fun derivationStepZipperDown!2433 (Regex!17910 Context!13808 C!36090) (Set Context!13808))

(assert (=> b!7105875 (= lt!2559005 (derivationStepZipperDown!2433 r!11554 lt!2559007 a!1901))))

(assert (=> b!7105875 (= lt!2559000 (derivationStepZipperDown!2433 (regTwo!36333 r!11554) lt!2559007 a!1901))))

(assert (=> b!7105875 (= lt!2558998 (derivationStepZipperDown!2433 (regOne!36333 r!11554) lt!2559007 a!1901))))

(declare-fun ++!16062 (List!68871 List!68871) List!68871)

(assert (=> b!7105875 (= lt!2559007 (Context!13809 (++!16062 (exprs!7404 c!9994) (exprs!7404 auxCtx!45))))))

(declare-fun lt!2559010 () Unit!162491)

(assert (=> b!7105875 (= lt!2559010 (lemmaConcatPreservesForall!1195 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431559))))

(declare-fun lt!2559002 () Unit!162491)

(assert (=> b!7105875 (= lt!2559002 (lemmaConcatPreservesForall!1195 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431559))))

(declare-fun lt!2559008 () Unit!162491)

(assert (=> b!7105875 (= lt!2559008 (lemmaConcatPreservesForall!1195 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431559))))

(declare-fun b!7105876 () Bool)

(assert (=> b!7105876 (= e!4270782 (not e!4270780))))

(declare-fun res!2900603 () Bool)

(assert (=> b!7105876 (=> res!2900603 e!4270780)))

(declare-fun appendTo!925 ((Set Context!13808) Context!13808) (Set Context!13808))

(assert (=> b!7105876 (= res!2900603 (not (= lt!2559005 (appendTo!925 (derivationStepZipperDown!2433 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-fun lt!2559003 () Unit!162491)

(assert (=> b!7105876 (= lt!2559003 (lemmaConcatPreservesForall!1195 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431559))))

(declare-fun lt!2559009 () (Set Context!13808))

(declare-fun lambda!431558 () Int)

(declare-fun lt!2559012 () (Set Context!13808))

(declare-fun map!16256 ((Set Context!13808) Int) (Set Context!13808))

(assert (=> b!7105876 (= (set.union (map!16256 lt!2559009 lambda!431558) (map!16256 lt!2559012 lambda!431558)) (map!16256 (set.union lt!2559009 lt!2559012) lambda!431558))))

(declare-fun lt!2559001 () Unit!162491)

(declare-fun lemmaMapAssociative!29 ((Set Context!13808) (Set Context!13808) Int) Unit!162491)

(assert (=> b!7105876 (= lt!2559001 (lemmaMapAssociative!29 lt!2559009 lt!2559012 lambda!431558))))

(assert (=> b!7105876 (= lt!2559000 (appendTo!925 lt!2559012 auxCtx!45))))

(assert (=> b!7105876 (= lt!2559012 (derivationStepZipperDown!2433 (regTwo!36333 r!11554) c!9994 a!1901))))

(declare-fun lt!2559006 () Unit!162491)

(assert (=> b!7105876 (= lt!2559006 (lemmaConcatPreservesForall!1195 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431559))))

(declare-fun lt!2558999 () Unit!162491)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!223 (Context!13808 Regex!17910 C!36090 Context!13808) Unit!162491)

(assert (=> b!7105876 (= lt!2558999 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!223 c!9994 (regTwo!36333 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7105876 (= lt!2558998 (appendTo!925 lt!2559009 auxCtx!45))))

(assert (=> b!7105876 (= lt!2559009 (derivationStepZipperDown!2433 (regOne!36333 r!11554) c!9994 a!1901))))

(declare-fun lt!2559011 () Unit!162491)

(assert (=> b!7105876 (= lt!2559011 (lemmaConcatPreservesForall!1195 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431559))))

(declare-fun lt!2559004 () Unit!162491)

(assert (=> b!7105876 (= lt!2559004 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!223 c!9994 (regOne!36333 r!11554) a!1901 auxCtx!45))))

(declare-fun b!7105877 () Bool)

(declare-fun tp!1954086 () Bool)

(assert (=> b!7105877 (= e!4270781 tp!1954086)))

(declare-fun b!7105878 () Bool)

(declare-fun tp!1954085 () Bool)

(assert (=> b!7105878 (= e!4270777 tp!1954085)))

(assert (= (and start!691726 res!2900601) b!7105874))

(assert (= (and b!7105874 res!2900602) b!7105875))

(assert (= (and b!7105875 res!2900604) b!7105876))

(assert (= (and b!7105876 (not res!2900603)) b!7105870))

(assert (= (and start!691726 (is-ElementMatch!17910 r!11554)) b!7105872))

(assert (= (and start!691726 (is-Concat!26755 r!11554)) b!7105869))

(assert (= (and start!691726 (is-Star!17910 r!11554)) b!7105873))

(assert (= (and start!691726 (is-Union!17910 r!11554)) b!7105871))

(assert (= start!691726 b!7105877))

(assert (= start!691726 b!7105878))

(declare-fun m!7829080 () Bool)

(assert (=> b!7105870 m!7829080))

(declare-fun m!7829082 () Bool)

(assert (=> b!7105870 m!7829082))

(declare-fun m!7829084 () Bool)

(assert (=> start!691726 m!7829084))

(declare-fun m!7829086 () Bool)

(assert (=> start!691726 m!7829086))

(declare-fun m!7829088 () Bool)

(assert (=> start!691726 m!7829088))

(declare-fun m!7829090 () Bool)

(assert (=> b!7105875 m!7829090))

(assert (=> b!7105875 m!7829082))

(assert (=> b!7105875 m!7829082))

(declare-fun m!7829092 () Bool)

(assert (=> b!7105875 m!7829092))

(declare-fun m!7829094 () Bool)

(assert (=> b!7105875 m!7829094))

(assert (=> b!7105875 m!7829082))

(declare-fun m!7829096 () Bool)

(assert (=> b!7105875 m!7829096))

(declare-fun m!7829098 () Bool)

(assert (=> b!7105876 m!7829098))

(assert (=> b!7105876 m!7829082))

(declare-fun m!7829100 () Bool)

(assert (=> b!7105876 m!7829100))

(declare-fun m!7829102 () Bool)

(assert (=> b!7105876 m!7829102))

(declare-fun m!7829104 () Bool)

(assert (=> b!7105876 m!7829104))

(assert (=> b!7105876 m!7829082))

(declare-fun m!7829106 () Bool)

(assert (=> b!7105876 m!7829106))

(declare-fun m!7829108 () Bool)

(assert (=> b!7105876 m!7829108))

(declare-fun m!7829110 () Bool)

(assert (=> b!7105876 m!7829110))

(assert (=> b!7105876 m!7829100))

(declare-fun m!7829112 () Bool)

(assert (=> b!7105876 m!7829112))

(declare-fun m!7829114 () Bool)

(assert (=> b!7105876 m!7829114))

(declare-fun m!7829116 () Bool)

(assert (=> b!7105876 m!7829116))

(declare-fun m!7829118 () Bool)

(assert (=> b!7105876 m!7829118))

(assert (=> b!7105876 m!7829082))

(declare-fun m!7829120 () Bool)

(assert (=> b!7105876 m!7829120))

(push 1)

(assert (not b!7105877))

(assert (not b!7105870))

(assert (not b!7105873))

(assert (not b!7105871))

(assert (not b!7105878))

(assert (not b!7105875))

(assert (not b!7105869))

(assert tp_is_empty!45053)

(assert (not b!7105876))

(assert (not start!691726))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1884707 () Bool)

(declare-fun d!2219285 () Bool)

(assert (= bs!1884707 (and d!2219285 b!7105875)))

(declare-fun lambda!431582 () Int)

(assert (=> bs!1884707 (= lambda!431582 lambda!431559)))

(assert (=> d!2219285 (= (derivationStepZipperDown!2433 (regOne!36333 r!11554) (Context!13809 (++!16062 (exprs!7404 c!9994) (exprs!7404 auxCtx!45))) a!1901) (appendTo!925 (derivationStepZipperDown!2433 (regOne!36333 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2559068 () Unit!162491)

(assert (=> d!2219285 (= lt!2559068 (lemmaConcatPreservesForall!1195 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431582))))

(declare-fun lt!2559067 () Unit!162491)

(declare-fun choose!54816 (Context!13808 Regex!17910 C!36090 Context!13808) Unit!162491)

(assert (=> d!2219285 (= lt!2559067 (choose!54816 c!9994 (regOne!36333 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2219285 (validRegex!9183 (regOne!36333 r!11554))))

(assert (=> d!2219285 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!223 c!9994 (regOne!36333 r!11554) a!1901 auxCtx!45) lt!2559067)))

(declare-fun bs!1884708 () Bool)

(assert (= bs!1884708 d!2219285))

(declare-fun m!7829164 () Bool)

(assert (=> bs!1884708 m!7829164))

(assert (=> bs!1884708 m!7829092))

(declare-fun m!7829166 () Bool)

(assert (=> bs!1884708 m!7829166))

(declare-fun m!7829168 () Bool)

(assert (=> bs!1884708 m!7829168))

(assert (=> bs!1884708 m!7829106))

(declare-fun m!7829170 () Bool)

(assert (=> bs!1884708 m!7829170))

(declare-fun m!7829172 () Bool)

(assert (=> bs!1884708 m!7829172))

(assert (=> bs!1884708 m!7829106))

(assert (=> b!7105876 d!2219285))

(declare-fun d!2219287 () Bool)

(declare-fun choose!54817 ((Set Context!13808) Int) (Set Context!13808))

(assert (=> d!2219287 (= (map!16256 lt!2559009 lambda!431558) (choose!54817 lt!2559009 lambda!431558))))

(declare-fun bs!1884709 () Bool)

(assert (= bs!1884709 d!2219287))

(declare-fun m!7829174 () Bool)

(assert (=> bs!1884709 m!7829174))

(assert (=> b!7105876 d!2219287))

(declare-fun bs!1884710 () Bool)

(declare-fun d!2219289 () Bool)

(assert (= bs!1884710 (and d!2219289 b!7105874)))

(declare-fun lambda!431587 () Int)

(assert (=> bs!1884710 (= lambda!431587 lambda!431558)))

(assert (=> d!2219289 true))

(assert (=> d!2219289 (= (appendTo!925 lt!2559009 auxCtx!45) (map!16256 lt!2559009 lambda!431587))))

(declare-fun bs!1884711 () Bool)

(assert (= bs!1884711 d!2219289))

(declare-fun m!7829176 () Bool)

(assert (=> bs!1884711 m!7829176))

(assert (=> b!7105876 d!2219289))

(declare-fun d!2219291 () Bool)

(declare-fun forall!16813 (List!68871 Int) Bool)

(assert (=> d!2219291 (forall!16813 (++!16062 (exprs!7404 c!9994) (exprs!7404 auxCtx!45)) lambda!431559)))

(declare-fun lt!2559073 () Unit!162491)

(declare-fun choose!54818 (List!68871 List!68871 Int) Unit!162491)

(assert (=> d!2219291 (= lt!2559073 (choose!54818 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431559))))

(assert (=> d!2219291 (forall!16813 (exprs!7404 c!9994) lambda!431559)))

(assert (=> d!2219291 (= (lemmaConcatPreservesForall!1195 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431559) lt!2559073)))

(declare-fun bs!1884712 () Bool)

(assert (= bs!1884712 d!2219291))

(assert (=> bs!1884712 m!7829092))

(assert (=> bs!1884712 m!7829092))

(declare-fun m!7829178 () Bool)

(assert (=> bs!1884712 m!7829178))

(declare-fun m!7829180 () Bool)

(assert (=> bs!1884712 m!7829180))

(declare-fun m!7829182 () Bool)

(assert (=> bs!1884712 m!7829182))

(assert (=> b!7105876 d!2219291))

(declare-fun bs!1884713 () Bool)

(declare-fun d!2219293 () Bool)

(assert (= bs!1884713 (and d!2219293 b!7105874)))

(declare-fun lambda!431588 () Int)

(assert (=> bs!1884713 (= lambda!431588 lambda!431558)))

(declare-fun bs!1884714 () Bool)

(assert (= bs!1884714 (and d!2219293 d!2219289)))

(assert (=> bs!1884714 (= lambda!431588 lambda!431587)))

(assert (=> d!2219293 true))

(assert (=> d!2219293 (= (appendTo!925 lt!2559012 auxCtx!45) (map!16256 lt!2559012 lambda!431588))))

(declare-fun bs!1884715 () Bool)

(assert (= bs!1884715 d!2219293))

(declare-fun m!7829184 () Bool)

(assert (=> bs!1884715 m!7829184))

(assert (=> b!7105876 d!2219293))

(declare-fun d!2219295 () Bool)

(assert (=> d!2219295 (= (set.union (map!16256 lt!2559009 lambda!431558) (map!16256 lt!2559012 lambda!431558)) (map!16256 (set.union lt!2559009 lt!2559012) lambda!431558))))

(declare-fun lt!2559076 () Unit!162491)

(declare-fun choose!54819 ((Set Context!13808) (Set Context!13808) Int) Unit!162491)

(assert (=> d!2219295 (= lt!2559076 (choose!54819 lt!2559009 lt!2559012 lambda!431558))))

(assert (=> d!2219295 (= (lemmaMapAssociative!29 lt!2559009 lt!2559012 lambda!431558) lt!2559076)))

(declare-fun bs!1884716 () Bool)

(assert (= bs!1884716 d!2219295))

(assert (=> bs!1884716 m!7829116))

(assert (=> bs!1884716 m!7829104))

(assert (=> bs!1884716 m!7829114))

(declare-fun m!7829186 () Bool)

(assert (=> bs!1884716 m!7829186))

(assert (=> b!7105876 d!2219295))

(declare-fun d!2219297 () Bool)

(assert (=> d!2219297 (= (map!16256 (set.union lt!2559009 lt!2559012) lambda!431558) (choose!54817 (set.union lt!2559009 lt!2559012) lambda!431558))))

(declare-fun bs!1884717 () Bool)

(assert (= bs!1884717 d!2219297))

(declare-fun m!7829188 () Bool)

(assert (=> bs!1884717 m!7829188))

(assert (=> b!7105876 d!2219297))

(declare-fun bm!647735 () Bool)

(declare-fun c!1326059 () Bool)

(declare-fun c!1326060 () Bool)

(declare-fun call!647744 () List!68871)

(declare-fun $colon$colon!2774 (List!68871 Regex!17910) List!68871)

(assert (=> bm!647735 (= call!647744 ($colon$colon!2774 (exprs!7404 c!9994) (ite (or c!1326060 c!1326059) (regTwo!36332 r!11554) r!11554)))))

(declare-fun b!7105935 () Bool)

(declare-fun e!4270820 () (Set Context!13808))

(declare-fun call!647745 () (Set Context!13808))

(declare-fun call!647740 () (Set Context!13808))

(assert (=> b!7105935 (= e!4270820 (set.union call!647745 call!647740))))

(declare-fun b!7105936 () Bool)

(declare-fun e!4270817 () (Set Context!13808))

(declare-fun call!647742 () (Set Context!13808))

(assert (=> b!7105936 (= e!4270817 call!647742)))

(declare-fun b!7105937 () Bool)

(declare-fun e!4270819 () (Set Context!13808))

(assert (=> b!7105937 (= e!4270820 e!4270819)))

(assert (=> b!7105937 (= c!1326059 (is-Concat!26755 r!11554))))

(declare-fun c!1326058 () Bool)

(declare-fun bm!647736 () Bool)

(assert (=> bm!647736 (= call!647745 (derivationStepZipperDown!2433 (ite c!1326058 (regTwo!36333 r!11554) (regOne!36332 r!11554)) (ite c!1326058 c!9994 (Context!13809 call!647744)) a!1901))))

(declare-fun b!7105938 () Bool)

(assert (=> b!7105938 (= e!4270817 (as set.empty (Set Context!13808)))))

(declare-fun call!647741 () (Set Context!13808))

(declare-fun bm!647737 () Bool)

(declare-fun call!647743 () List!68871)

(assert (=> bm!647737 (= call!647741 (derivationStepZipperDown!2433 (ite c!1326058 (regOne!36333 r!11554) (ite c!1326060 (regTwo!36332 r!11554) (ite c!1326059 (regOne!36332 r!11554) (reg!18239 r!11554)))) (ite (or c!1326058 c!1326060) c!9994 (Context!13809 call!647743)) a!1901))))

(declare-fun bm!647738 () Bool)

(assert (=> bm!647738 (= call!647742 call!647740)))

(declare-fun bm!647739 () Bool)

(assert (=> bm!647739 (= call!647740 call!647741)))

(declare-fun b!7105940 () Bool)

(declare-fun e!4270818 () (Set Context!13808))

(assert (=> b!7105940 (= e!4270818 (set.insert c!9994 (as set.empty (Set Context!13808))))))

(declare-fun bm!647740 () Bool)

(assert (=> bm!647740 (= call!647743 call!647744)))

(declare-fun b!7105941 () Bool)

(declare-fun e!4270822 () (Set Context!13808))

(assert (=> b!7105941 (= e!4270818 e!4270822)))

(assert (=> b!7105941 (= c!1326058 (is-Union!17910 r!11554))))

(declare-fun b!7105942 () Bool)

(assert (=> b!7105942 (= e!4270822 (set.union call!647741 call!647745))))

(declare-fun b!7105943 () Bool)

(assert (=> b!7105943 (= e!4270819 call!647742)))

(declare-fun b!7105944 () Bool)

(declare-fun c!1326061 () Bool)

(assert (=> b!7105944 (= c!1326061 (is-Star!17910 r!11554))))

(assert (=> b!7105944 (= e!4270819 e!4270817)))

(declare-fun b!7105945 () Bool)

(declare-fun e!4270821 () Bool)

(declare-fun nullable!7547 (Regex!17910) Bool)

(assert (=> b!7105945 (= e!4270821 (nullable!7547 (regOne!36332 r!11554)))))

(declare-fun b!7105939 () Bool)

(assert (=> b!7105939 (= c!1326060 e!4270821)))

(declare-fun res!2900621 () Bool)

(assert (=> b!7105939 (=> (not res!2900621) (not e!4270821))))

(assert (=> b!7105939 (= res!2900621 (is-Concat!26755 r!11554))))

(assert (=> b!7105939 (= e!4270822 e!4270820)))

(declare-fun d!2219299 () Bool)

(declare-fun c!1326057 () Bool)

(assert (=> d!2219299 (= c!1326057 (and (is-ElementMatch!17910 r!11554) (= (c!1326043 r!11554) a!1901)))))

(assert (=> d!2219299 (= (derivationStepZipperDown!2433 r!11554 c!9994 a!1901) e!4270818)))

(assert (= (and d!2219299 c!1326057) b!7105940))

(assert (= (and d!2219299 (not c!1326057)) b!7105941))

(assert (= (and b!7105941 c!1326058) b!7105942))

(assert (= (and b!7105941 (not c!1326058)) b!7105939))

(assert (= (and b!7105939 res!2900621) b!7105945))

(assert (= (and b!7105939 c!1326060) b!7105935))

(assert (= (and b!7105939 (not c!1326060)) b!7105937))

(assert (= (and b!7105937 c!1326059) b!7105943))

(assert (= (and b!7105937 (not c!1326059)) b!7105944))

(assert (= (and b!7105944 c!1326061) b!7105936))

(assert (= (and b!7105944 (not c!1326061)) b!7105938))

(assert (= (or b!7105943 b!7105936) bm!647740))

(assert (= (or b!7105943 b!7105936) bm!647738))

(assert (= (or b!7105935 bm!647738) bm!647739))

(assert (= (or b!7105935 bm!647740) bm!647735))

(assert (= (or b!7105942 b!7105935) bm!647736))

(assert (= (or b!7105942 bm!647739) bm!647737))

(declare-fun m!7829192 () Bool)

(assert (=> bm!647737 m!7829192))

(declare-fun m!7829194 () Bool)

(assert (=> bm!647735 m!7829194))

(declare-fun m!7829196 () Bool)

(assert (=> bm!647736 m!7829196))

(declare-fun m!7829198 () Bool)

(assert (=> b!7105945 m!7829198))

(declare-fun m!7829202 () Bool)

(assert (=> b!7105940 m!7829202))

(assert (=> b!7105876 d!2219299))

(declare-fun bs!1884721 () Bool)

(declare-fun d!2219305 () Bool)

(assert (= bs!1884721 (and d!2219305 b!7105875)))

(declare-fun lambda!431592 () Int)

(assert (=> bs!1884721 (= lambda!431592 lambda!431559)))

(declare-fun bs!1884722 () Bool)

(assert (= bs!1884722 (and d!2219305 d!2219285)))

(assert (=> bs!1884722 (= lambda!431592 lambda!431582)))

(assert (=> d!2219305 (= (derivationStepZipperDown!2433 (regTwo!36333 r!11554) (Context!13809 (++!16062 (exprs!7404 c!9994) (exprs!7404 auxCtx!45))) a!1901) (appendTo!925 (derivationStepZipperDown!2433 (regTwo!36333 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2559081 () Unit!162491)

(assert (=> d!2219305 (= lt!2559081 (lemmaConcatPreservesForall!1195 (exprs!7404 c!9994) (exprs!7404 auxCtx!45) lambda!431592))))

(declare-fun lt!2559080 () Unit!162491)

(assert (=> d!2219305 (= lt!2559080 (choose!54816 c!9994 (regTwo!36333 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2219305 (validRegex!9183 (regTwo!36333 r!11554))))

(assert (=> d!2219305 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!223 c!9994 (regTwo!36333 r!11554) a!1901 auxCtx!45) lt!2559080)))

(declare-fun bs!1884723 () Bool)

(assert (= bs!1884723 d!2219305))

(declare-fun m!7829208 () Bool)

(assert (=> bs!1884723 m!7829208))

(assert (=> bs!1884723 m!7829092))

(declare-fun m!7829210 () Bool)

(assert (=> bs!1884723 m!7829210))

(declare-fun m!7829212 () Bool)

(assert (=> bs!1884723 m!7829212))

(assert (=> bs!1884723 m!7829098))

(declare-fun m!7829214 () Bool)

(assert (=> bs!1884723 m!7829214))

(declare-fun m!7829216 () Bool)

(assert (=> bs!1884723 m!7829216))

(assert (=> bs!1884723 m!7829098))

(assert (=> b!7105876 d!2219305))

(declare-fun c!1326065 () Bool)

(declare-fun bm!647741 () Bool)

(declare-fun c!1326064 () Bool)

(declare-fun call!647750 () List!68871)

(assert (=> bm!647741 (= call!647750 ($colon$colon!2774 (exprs!7404 c!9994) (ite (or c!1326065 c!1326064) (regTwo!36332 (regOne!36333 r!11554)) (regOne!36333 r!11554))))))

(declare-fun b!7105946 () Bool)

(declare-fun e!4270826 () (Set Context!13808))

(declare-fun call!647751 () (Set Context!13808))

(declare-fun call!647746 () (Set Context!13808))

(assert (=> b!7105946 (= e!4270826 (set.union call!647751 call!647746))))

(declare-fun b!7105947 () Bool)

(declare-fun e!4270823 () (Set Context!13808))

(declare-fun call!647748 () (Set Context!13808))

(assert (=> b!7105947 (= e!4270823 call!647748)))

(declare-fun b!7105948 () Bool)

(declare-fun e!4270825 () (Set Context!13808))

(assert (=> b!7105948 (= e!4270826 e!4270825)))

(assert (=> b!7105948 (= c!1326064 (is-Concat!26755 (regOne!36333 r!11554)))))

(declare-fun c!1326063 () Bool)

(declare-fun bm!647742 () Bool)

(assert (=> bm!647742 (= call!647751 (derivationStepZipperDown!2433 (ite c!1326063 (regTwo!36333 (regOne!36333 r!11554)) (regOne!36332 (regOne!36333 r!11554))) (ite c!1326063 c!9994 (Context!13809 call!647750)) a!1901))))

(declare-fun b!7105949 () Bool)

(assert (=> b!7105949 (= e!4270823 (as set.empty (Set Context!13808)))))

(declare-fun call!647749 () List!68871)

(declare-fun call!647747 () (Set Context!13808))

(declare-fun bm!647743 () Bool)

(assert (=> bm!647743 (= call!647747 (derivationStepZipperDown!2433 (ite c!1326063 (regOne!36333 (regOne!36333 r!11554)) (ite c!1326065 (regTwo!36332 (regOne!36333 r!11554)) (ite c!1326064 (regOne!36332 (regOne!36333 r!11554)) (reg!18239 (regOne!36333 r!11554))))) (ite (or c!1326063 c!1326065) c!9994 (Context!13809 call!647749)) a!1901))))

(declare-fun bm!647744 () Bool)

(assert (=> bm!647744 (= call!647748 call!647746)))

(declare-fun bm!647745 () Bool)

(assert (=> bm!647745 (= call!647746 call!647747)))

(declare-fun b!7105951 () Bool)

(declare-fun e!4270824 () (Set Context!13808))

(assert (=> b!7105951 (= e!4270824 (set.insert c!9994 (as set.empty (Set Context!13808))))))

(declare-fun bm!647746 () Bool)

(assert (=> bm!647746 (= call!647749 call!647750)))

(declare-fun b!7105952 () Bool)

(declare-fun e!4270828 () (Set Context!13808))

(assert (=> b!7105952 (= e!4270824 e!4270828)))

(assert (=> b!7105952 (= c!1326063 (is-Union!17910 (regOne!36333 r!11554)))))

(declare-fun b!7105953 () Bool)

(assert (=> b!7105953 (= e!4270828 (set.union call!647747 call!647751))))

(declare-fun b!7105954 () Bool)

(assert (=> b!7105954 (= e!4270825 call!647748)))

(declare-fun b!7105955 () Bool)

(declare-fun c!1326066 () Bool)

(assert (=> b!7105955 (= c!1326066 (is-Star!17910 (regOne!36333 r!11554)))))

(assert (=> b!7105955 (= e!4270825 e!4270823)))

(declare-fun b!7105956 () Bool)

(declare-fun e!4270827 () Bool)

(assert (=> b!7105956 (= e!4270827 (nullable!7547 (regOne!36332 (regOne!36333 r!11554))))))

(declare-fun b!7105950 () Bool)

(assert (=> b!7105950 (= c!1326065 e!4270827)))

(declare-fun res!2900622 () Bool)

(assert (=> b!7105950 (=> (not res!2900622) (not e!4270827))))

(assert (=> b!7105950 (= res!2900622 (is-Concat!26755 (regOne!36333 r!11554)))))

(assert (=> b!7105950 (= e!4270828 e!4270826)))

(declare-fun d!2219309 () Bool)

(declare-fun c!1326062 () Bool)

(assert (=> d!2219309 (= c!1326062 (and (is-ElementMatch!17910 (regOne!36333 r!11554)) (= (c!1326043 (regOne!36333 r!11554)) a!1901)))))

(assert (=> d!2219309 (= (derivationStepZipperDown!2433 (regOne!36333 r!11554) c!9994 a!1901) e!4270824)))

(assert (= (and d!2219309 c!1326062) b!7105951))

(assert (= (and d!2219309 (not c!1326062)) b!7105952))

(assert (= (and b!7105952 c!1326063) b!7105953))

(assert (= (and b!7105952 (not c!1326063)) b!7105950))

(assert (= (and b!7105950 res!2900622) b!7105956))

(assert (= (and b!7105950 c!1326065) b!7105946))

(assert (= (and b!7105950 (not c!1326065)) b!7105948))

(assert (= (and b!7105948 c!1326064) b!7105954))

(assert (= (and b!7105948 (not c!1326064)) b!7105955))

(assert (= (and b!7105955 c!1326066) b!7105947))

(assert (= (and b!7105955 (not c!1326066)) b!7105949))

(assert (= (or b!7105954 b!7105947) bm!647746))

(assert (= (or b!7105954 b!7105947) bm!647744))

(assert (= (or b!7105946 bm!647744) bm!647745))

(assert (= (or b!7105946 bm!647746) bm!647741))

(assert (= (or b!7105953 b!7105946) bm!647742))

(assert (= (or b!7105953 bm!647745) bm!647743))

(declare-fun m!7829218 () Bool)

(assert (=> bm!647743 m!7829218))

(declare-fun m!7829220 () Bool)

(assert (=> bm!647741 m!7829220))

(declare-fun m!7829222 () Bool)

(assert (=> bm!647742 m!7829222))

(declare-fun m!7829224 () Bool)

(assert (=> b!7105956 m!7829224))

(assert (=> b!7105951 m!7829202))

(assert (=> b!7105876 d!2219309))

(declare-fun d!2219311 () Bool)

(assert (=> d!2219311 (= (map!16256 lt!2559012 lambda!431558) (choose!54817 lt!2559012 lambda!431558))))

(declare-fun bs!1884724 () Bool)

(assert (= bs!1884724 d!2219311))

(declare-fun m!7829226 () Bool)

(assert (=> bs!1884724 m!7829226))

(assert (=> b!7105876 d!2219311))

(declare-fun bs!1884725 () Bool)

(declare-fun d!2219313 () Bool)

(assert (= bs!1884725 (and d!2219313 b!7105874)))

(declare-fun lambda!431593 () Int)

(assert (=> bs!1884725 (= lambda!431593 lambda!431558)))

(declare-fun bs!1884726 () Bool)

(assert (= bs!1884726 (and d!2219313 d!2219289)))

(assert (=> bs!1884726 (= lambda!431593 lambda!431587)))

(declare-fun bs!1884727 () Bool)

(assert (= bs!1884727 (and d!2219313 d!2219293)))

(assert (=> bs!1884727 (= lambda!431593 lambda!431588)))

(assert (=> d!2219313 true))

(assert (=> d!2219313 (= (appendTo!925 (derivationStepZipperDown!2433 r!11554 c!9994 a!1901) auxCtx!45) (map!16256 (derivationStepZipperDown!2433 r!11554 c!9994 a!1901) lambda!431593))))

(declare-fun bs!1884728 () Bool)

(assert (= bs!1884728 d!2219313))

(assert (=> bs!1884728 m!7829100))

(declare-fun m!7829228 () Bool)

(assert (=> bs!1884728 m!7829228))

(assert (=> b!7105876 d!2219313))

(declare-fun bm!647747 () Bool)

(declare-fun c!1326070 () Bool)

(declare-fun call!647756 () List!68871)

(declare-fun c!1326069 () Bool)

(assert (=> bm!647747 (= call!647756 ($colon$colon!2774 (exprs!7404 c!9994) (ite (or c!1326070 c!1326069) (regTwo!36332 (regTwo!36333 r!11554)) (regTwo!36333 r!11554))))))

(declare-fun b!7105957 () Bool)

(declare-fun e!4270832 () (Set Context!13808))

(declare-fun call!647757 () (Set Context!13808))

(declare-fun call!647752 () (Set Context!13808))

(assert (=> b!7105957 (= e!4270832 (set.union call!647757 call!647752))))

(declare-fun b!7105958 () Bool)

(declare-fun e!4270829 () (Set Context!13808))

(declare-fun call!647754 () (Set Context!13808))

(assert (=> b!7105958 (= e!4270829 call!647754)))

(declare-fun b!7105959 () Bool)

(declare-fun e!4270831 () (Set Context!13808))

(assert (=> b!7105959 (= e!4270832 e!4270831)))

(assert (=> b!7105959 (= c!1326069 (is-Concat!26755 (regTwo!36333 r!11554)))))

(declare-fun bm!647748 () Bool)

(declare-fun c!1326068 () Bool)

(assert (=> bm!647748 (= call!647757 (derivationStepZipperDown!2433 (ite c!1326068 (regTwo!36333 (regTwo!36333 r!11554)) (regOne!36332 (regTwo!36333 r!11554))) (ite c!1326068 c!9994 (Context!13809 call!647756)) a!1901))))

(declare-fun b!7105960 () Bool)

(assert (=> b!7105960 (= e!4270829 (as set.empty (Set Context!13808)))))

(declare-fun call!647753 () (Set Context!13808))

(declare-fun call!647755 () List!68871)

(declare-fun bm!647749 () Bool)

(assert (=> bm!647749 (= call!647753 (derivationStepZipperDown!2433 (ite c!1326068 (regOne!36333 (regTwo!36333 r!11554)) (ite c!1326070 (regTwo!36332 (regTwo!36333 r!11554)) (ite c!1326069 (regOne!36332 (regTwo!36333 r!11554)) (reg!18239 (regTwo!36333 r!11554))))) (ite (or c!1326068 c!1326070) c!9994 (Context!13809 call!647755)) a!1901))))

(declare-fun bm!647750 () Bool)

(assert (=> bm!647750 (= call!647754 call!647752)))

(declare-fun bm!647751 () Bool)

(assert (=> bm!647751 (= call!647752 call!647753)))

(declare-fun b!7105962 () Bool)

(declare-fun e!4270830 () (Set Context!13808))

(assert (=> b!7105962 (= e!4270830 (set.insert c!9994 (as set.empty (Set Context!13808))))))

(declare-fun bm!647752 () Bool)

(assert (=> bm!647752 (= call!647755 call!647756)))

(declare-fun b!7105963 () Bool)

(declare-fun e!4270834 () (Set Context!13808))

(assert (=> b!7105963 (= e!4270830 e!4270834)))

(assert (=> b!7105963 (= c!1326068 (is-Union!17910 (regTwo!36333 r!11554)))))

(declare-fun b!7105964 () Bool)

(assert (=> b!7105964 (= e!4270834 (set.union call!647753 call!647757))))

(declare-fun b!7105965 () Bool)

(assert (=> b!7105965 (= e!4270831 call!647754)))

(declare-fun b!7105966 () Bool)

(declare-fun c!1326071 () Bool)

(assert (=> b!7105966 (= c!1326071 (is-Star!17910 (regTwo!36333 r!11554)))))

(assert (=> b!7105966 (= e!4270831 e!4270829)))

(declare-fun b!7105967 () Bool)

(declare-fun e!4270833 () Bool)

(assert (=> b!7105967 (= e!4270833 (nullable!7547 (regOne!36332 (regTwo!36333 r!11554))))))

(declare-fun b!7105961 () Bool)

(assert (=> b!7105961 (= c!1326070 e!4270833)))

(declare-fun res!2900623 () Bool)

(assert (=> b!7105961 (=> (not res!2900623) (not e!4270833))))

(assert (=> b!7105961 (= res!2900623 (is-Concat!26755 (regTwo!36333 r!11554)))))

(assert (=> b!7105961 (= e!4270834 e!4270832)))

(declare-fun d!2219315 () Bool)

(declare-fun c!1326067 () Bool)

(assert (=> d!2219315 (= c!1326067 (and (is-ElementMatch!17910 (regTwo!36333 r!11554)) (= (c!1326043 (regTwo!36333 r!11554)) a!1901)))))

(assert (=> d!2219315 (= (derivationStepZipperDown!2433 (regTwo!36333 r!11554) c!9994 a!1901) e!4270830)))

(assert (= (and d!2219315 c!1326067) b!7105962))

(assert (= (and d!2219315 (not c!1326067)) b!7105963))

(assert (= (and b!7105963 c!1326068) b!7105964))

(assert (= (and b!7105963 (not c!1326068)) b!7105961))

(assert (= (and b!7105961 res!2900623) b!7105967))

(assert (= (and b!7105961 c!1326070) b!7105957))

(assert (= (and b!7105961 (not c!1326070)) b!7105959))

(assert (= (and b!7105959 c!1326069) b!7105965))

(assert (= (and b!7105959 (not c!1326069)) b!7105966))

(assert (= (and b!7105966 c!1326071) b!7105958))

(assert (= (and b!7105966 (not c!1326071)) b!7105960))

(assert (= (or b!7105965 b!7105958) bm!647752))

(assert (= (or b!7105965 b!7105958) bm!647750))

(assert (= (or b!7105957 bm!647750) bm!647751))

(assert (= (or b!7105957 bm!647752) bm!647747))

(assert (= (or b!7105964 b!7105957) bm!647748))

(assert (= (or b!7105964 bm!647751) bm!647749))

(declare-fun m!7829230 () Bool)

(assert (=> bm!647749 m!7829230))

(declare-fun m!7829232 () Bool)

(assert (=> bm!647747 m!7829232))

(declare-fun m!7829234 () Bool)

(assert (=> bm!647748 m!7829234))

(declare-fun m!7829236 () Bool)

(assert (=> b!7105967 m!7829236))

(assert (=> b!7105962 m!7829202))

(assert (=> b!7105876 d!2219315))

(declare-fun bm!647753 () Bool)

(declare-fun call!647762 () List!68871)

(declare-fun c!1326075 () Bool)

(declare-fun c!1326074 () Bool)

(assert (=> bm!647753 (= call!647762 ($colon$colon!2774 (exprs!7404 lt!2559007) (ite (or c!1326075 c!1326074) (regTwo!36332 (regOne!36333 r!11554)) (regOne!36333 r!11554))))))

(declare-fun b!7105968 () Bool)

(declare-fun e!4270838 () (Set Context!13808))

(declare-fun call!647763 () (Set Context!13808))

(declare-fun call!647758 () (Set Context!13808))

(assert (=> b!7105968 (= e!4270838 (set.union call!647763 call!647758))))

(declare-fun b!7105969 () Bool)

(declare-fun e!4270835 () (Set Context!13808))

(declare-fun call!647760 () (Set Context!13808))

(assert (=> b!7105969 (= e!4270835 call!647760)))

(declare-fun b!7105970 () Bool)

(declare-fun e!4270837 () (Set Context!13808))

(assert (=> b!7105970 (= e!4270838 e!4270837)))

(assert (=> b!7105970 (= c!1326074 (is-Concat!26755 (regOne!36333 r!11554)))))

(declare-fun bm!647754 () Bool)

(declare-fun c!1326073 () Bool)

(assert (=> bm!647754 (= call!647763 (derivationStepZipperDown!2433 (ite c!1326073 (regTwo!36333 (regOne!36333 r!11554)) (regOne!36332 (regOne!36333 r!11554))) (ite c!1326073 lt!2559007 (Context!13809 call!647762)) a!1901))))

(declare-fun b!7105971 () Bool)

(assert (=> b!7105971 (= e!4270835 (as set.empty (Set Context!13808)))))

(declare-fun call!647759 () (Set Context!13808))

(declare-fun bm!647755 () Bool)

(declare-fun call!647761 () List!68871)

(assert (=> bm!647755 (= call!647759 (derivationStepZipperDown!2433 (ite c!1326073 (regOne!36333 (regOne!36333 r!11554)) (ite c!1326075 (regTwo!36332 (regOne!36333 r!11554)) (ite c!1326074 (regOne!36332 (regOne!36333 r!11554)) (reg!18239 (regOne!36333 r!11554))))) (ite (or c!1326073 c!1326075) lt!2559007 (Context!13809 call!647761)) a!1901))))

(declare-fun bm!647756 () Bool)

(assert (=> bm!647756 (= call!647760 call!647758)))

(declare-fun bm!647757 () Bool)

(assert (=> bm!647757 (= call!647758 call!647759)))

(declare-fun b!7105973 () Bool)

(declare-fun e!4270836 () (Set Context!13808))

(assert (=> b!7105973 (= e!4270836 (set.insert lt!2559007 (as set.empty (Set Context!13808))))))

(declare-fun bm!647758 () Bool)

(assert (=> bm!647758 (= call!647761 call!647762)))

(declare-fun b!7105974 () Bool)

(declare-fun e!4270840 () (Set Context!13808))

(assert (=> b!7105974 (= e!4270836 e!4270840)))

(assert (=> b!7105974 (= c!1326073 (is-Union!17910 (regOne!36333 r!11554)))))

(declare-fun b!7105975 () Bool)

(assert (=> b!7105975 (= e!4270840 (set.union call!647759 call!647763))))

(declare-fun b!7105976 () Bool)

(assert (=> b!7105976 (= e!4270837 call!647760)))

(declare-fun b!7105977 () Bool)

(declare-fun c!1326076 () Bool)

(assert (=> b!7105977 (= c!1326076 (is-Star!17910 (regOne!36333 r!11554)))))

(assert (=> b!7105977 (= e!4270837 e!4270835)))

(declare-fun b!7105978 () Bool)

(declare-fun e!4270839 () Bool)

(assert (=> b!7105978 (= e!4270839 (nullable!7547 (regOne!36332 (regOne!36333 r!11554))))))

(declare-fun b!7105972 () Bool)

(assert (=> b!7105972 (= c!1326075 e!4270839)))

(declare-fun res!2900624 () Bool)

(assert (=> b!7105972 (=> (not res!2900624) (not e!4270839))))

(assert (=> b!7105972 (= res!2900624 (is-Concat!26755 (regOne!36333 r!11554)))))

(assert (=> b!7105972 (= e!4270840 e!4270838)))

(declare-fun d!2219317 () Bool)

(declare-fun c!1326072 () Bool)

(assert (=> d!2219317 (= c!1326072 (and (is-ElementMatch!17910 (regOne!36333 r!11554)) (= (c!1326043 (regOne!36333 r!11554)) a!1901)))))

(assert (=> d!2219317 (= (derivationStepZipperDown!2433 (regOne!36333 r!11554) lt!2559007 a!1901) e!4270836)))

(assert (= (and d!2219317 c!1326072) b!7105973))

(assert (= (and d!2219317 (not c!1326072)) b!7105974))

(assert (= (and b!7105974 c!1326073) b!7105975))

(assert (= (and b!7105974 (not c!1326073)) b!7105972))

(assert (= (and b!7105972 res!2900624) b!7105978))

(assert (= (and b!7105972 c!1326075) b!7105968))

(assert (= (and b!7105972 (not c!1326075)) b!7105970))

(assert (= (and b!7105970 c!1326074) b!7105976))

(assert (= (and b!7105970 (not c!1326074)) b!7105977))

(assert (= (and b!7105977 c!1326076) b!7105969))

(assert (= (and b!7105977 (not c!1326076)) b!7105971))

(assert (= (or b!7105976 b!7105969) bm!647758))

(assert (= (or b!7105976 b!7105969) bm!647756))

(assert (= (or b!7105968 bm!647756) bm!647757))

(assert (= (or b!7105968 bm!647758) bm!647753))

(assert (= (or b!7105975 b!7105968) bm!647754))

(assert (= (or b!7105975 bm!647757) bm!647755))

(declare-fun m!7829238 () Bool)

(assert (=> bm!647755 m!7829238))

(declare-fun m!7829240 () Bool)

(assert (=> bm!647753 m!7829240))

(declare-fun m!7829242 () Bool)

(assert (=> bm!647754 m!7829242))

(assert (=> b!7105978 m!7829224))

(declare-fun m!7829244 () Bool)

(assert (=> b!7105973 m!7829244))

(assert (=> b!7105875 d!2219317))

(assert (=> b!7105875 d!2219291))

(declare-fun bm!647759 () Bool)

(declare-fun c!1326080 () Bool)

(declare-fun call!647768 () List!68871)

(declare-fun c!1326079 () Bool)

(assert (=> bm!647759 (= call!647768 ($colon$colon!2774 (exprs!7404 lt!2559007) (ite (or c!1326080 c!1326079) (regTwo!36332 (regTwo!36333 r!11554)) (regTwo!36333 r!11554))))))

(declare-fun b!7105979 () Bool)

(declare-fun e!4270844 () (Set Context!13808))

(declare-fun call!647769 () (Set Context!13808))

(declare-fun call!647764 () (Set Context!13808))

(assert (=> b!7105979 (= e!4270844 (set.union call!647769 call!647764))))

(declare-fun b!7105980 () Bool)

(declare-fun e!4270841 () (Set Context!13808))

(declare-fun call!647766 () (Set Context!13808))

(assert (=> b!7105980 (= e!4270841 call!647766)))

(declare-fun b!7105981 () Bool)

(declare-fun e!4270843 () (Set Context!13808))

(assert (=> b!7105981 (= e!4270844 e!4270843)))

(assert (=> b!7105981 (= c!1326079 (is-Concat!26755 (regTwo!36333 r!11554)))))

(declare-fun bm!647760 () Bool)

(declare-fun c!1326078 () Bool)

(assert (=> bm!647760 (= call!647769 (derivationStepZipperDown!2433 (ite c!1326078 (regTwo!36333 (regTwo!36333 r!11554)) (regOne!36332 (regTwo!36333 r!11554))) (ite c!1326078 lt!2559007 (Context!13809 call!647768)) a!1901))))

(declare-fun b!7105982 () Bool)

(assert (=> b!7105982 (= e!4270841 (as set.empty (Set Context!13808)))))

(declare-fun bm!647761 () Bool)

(declare-fun call!647767 () List!68871)

(declare-fun call!647765 () (Set Context!13808))

(assert (=> bm!647761 (= call!647765 (derivationStepZipperDown!2433 (ite c!1326078 (regOne!36333 (regTwo!36333 r!11554)) (ite c!1326080 (regTwo!36332 (regTwo!36333 r!11554)) (ite c!1326079 (regOne!36332 (regTwo!36333 r!11554)) (reg!18239 (regTwo!36333 r!11554))))) (ite (or c!1326078 c!1326080) lt!2559007 (Context!13809 call!647767)) a!1901))))

(declare-fun bm!647762 () Bool)

(assert (=> bm!647762 (= call!647766 call!647764)))

(declare-fun bm!647763 () Bool)

(assert (=> bm!647763 (= call!647764 call!647765)))

(declare-fun b!7105984 () Bool)

(declare-fun e!4270842 () (Set Context!13808))

(assert (=> b!7105984 (= e!4270842 (set.insert lt!2559007 (as set.empty (Set Context!13808))))))

(declare-fun bm!647764 () Bool)

(assert (=> bm!647764 (= call!647767 call!647768)))

(declare-fun b!7105985 () Bool)

(declare-fun e!4270846 () (Set Context!13808))

(assert (=> b!7105985 (= e!4270842 e!4270846)))

(assert (=> b!7105985 (= c!1326078 (is-Union!17910 (regTwo!36333 r!11554)))))

(declare-fun b!7105986 () Bool)

(assert (=> b!7105986 (= e!4270846 (set.union call!647765 call!647769))))

(declare-fun b!7105987 () Bool)

(assert (=> b!7105987 (= e!4270843 call!647766)))

(declare-fun b!7105988 () Bool)

(declare-fun c!1326081 () Bool)

(assert (=> b!7105988 (= c!1326081 (is-Star!17910 (regTwo!36333 r!11554)))))

(assert (=> b!7105988 (= e!4270843 e!4270841)))

(declare-fun b!7105989 () Bool)

(declare-fun e!4270845 () Bool)

(assert (=> b!7105989 (= e!4270845 (nullable!7547 (regOne!36332 (regTwo!36333 r!11554))))))

(declare-fun b!7105983 () Bool)

(assert (=> b!7105983 (= c!1326080 e!4270845)))

(declare-fun res!2900625 () Bool)

(assert (=> b!7105983 (=> (not res!2900625) (not e!4270845))))

(assert (=> b!7105983 (= res!2900625 (is-Concat!26755 (regTwo!36333 r!11554)))))

(assert (=> b!7105983 (= e!4270846 e!4270844)))

(declare-fun d!2219319 () Bool)

(declare-fun c!1326077 () Bool)

(assert (=> d!2219319 (= c!1326077 (and (is-ElementMatch!17910 (regTwo!36333 r!11554)) (= (c!1326043 (regTwo!36333 r!11554)) a!1901)))))

(assert (=> d!2219319 (= (derivationStepZipperDown!2433 (regTwo!36333 r!11554) lt!2559007 a!1901) e!4270842)))

(assert (= (and d!2219319 c!1326077) b!7105984))

(assert (= (and d!2219319 (not c!1326077)) b!7105985))

(assert (= (and b!7105985 c!1326078) b!7105986))

(assert (= (and b!7105985 (not c!1326078)) b!7105983))

(assert (= (and b!7105983 res!2900625) b!7105989))

(assert (= (and b!7105983 c!1326080) b!7105979))

(assert (= (and b!7105983 (not c!1326080)) b!7105981))

(assert (= (and b!7105981 c!1326079) b!7105987))

(assert (= (and b!7105981 (not c!1326079)) b!7105988))

(assert (= (and b!7105988 c!1326081) b!7105980))

(assert (= (and b!7105988 (not c!1326081)) b!7105982))

(assert (= (or b!7105987 b!7105980) bm!647764))

(assert (= (or b!7105987 b!7105980) bm!647762))

(assert (= (or b!7105979 bm!647762) bm!647763))

(assert (= (or b!7105979 bm!647764) bm!647759))

(assert (= (or b!7105986 b!7105979) bm!647760))

(assert (= (or b!7105986 bm!647763) bm!647761))

(declare-fun m!7829246 () Bool)

(assert (=> bm!647761 m!7829246))

(declare-fun m!7829248 () Bool)

(assert (=> bm!647759 m!7829248))

(declare-fun m!7829250 () Bool)

(assert (=> bm!647760 m!7829250))

(assert (=> b!7105989 m!7829236))

(assert (=> b!7105984 m!7829244))

(assert (=> b!7105875 d!2219319))

(declare-fun bm!647765 () Bool)

(declare-fun c!1326084 () Bool)

(declare-fun c!1326085 () Bool)

(declare-fun call!647774 () List!68871)

(assert (=> bm!647765 (= call!647774 ($colon$colon!2774 (exprs!7404 lt!2559007) (ite (or c!1326085 c!1326084) (regTwo!36332 r!11554) r!11554)))))

(declare-fun b!7105990 () Bool)

(declare-fun e!4270850 () (Set Context!13808))

(declare-fun call!647775 () (Set Context!13808))

(declare-fun call!647770 () (Set Context!13808))

(assert (=> b!7105990 (= e!4270850 (set.union call!647775 call!647770))))

(declare-fun b!7105991 () Bool)

(declare-fun e!4270847 () (Set Context!13808))

(declare-fun call!647772 () (Set Context!13808))

(assert (=> b!7105991 (= e!4270847 call!647772)))

(declare-fun b!7105992 () Bool)

(declare-fun e!4270849 () (Set Context!13808))

(assert (=> b!7105992 (= e!4270850 e!4270849)))

(assert (=> b!7105992 (= c!1326084 (is-Concat!26755 r!11554))))

(declare-fun c!1326083 () Bool)

(declare-fun bm!647766 () Bool)

(assert (=> bm!647766 (= call!647775 (derivationStepZipperDown!2433 (ite c!1326083 (regTwo!36333 r!11554) (regOne!36332 r!11554)) (ite c!1326083 lt!2559007 (Context!13809 call!647774)) a!1901))))

(declare-fun b!7105993 () Bool)

(assert (=> b!7105993 (= e!4270847 (as set.empty (Set Context!13808)))))

(declare-fun call!647773 () List!68871)

(declare-fun call!647771 () (Set Context!13808))

(declare-fun bm!647767 () Bool)

(assert (=> bm!647767 (= call!647771 (derivationStepZipperDown!2433 (ite c!1326083 (regOne!36333 r!11554) (ite c!1326085 (regTwo!36332 r!11554) (ite c!1326084 (regOne!36332 r!11554) (reg!18239 r!11554)))) (ite (or c!1326083 c!1326085) lt!2559007 (Context!13809 call!647773)) a!1901))))

(declare-fun bm!647768 () Bool)

(assert (=> bm!647768 (= call!647772 call!647770)))

(declare-fun bm!647769 () Bool)

(assert (=> bm!647769 (= call!647770 call!647771)))

(declare-fun b!7105995 () Bool)

(declare-fun e!4270848 () (Set Context!13808))

(assert (=> b!7105995 (= e!4270848 (set.insert lt!2559007 (as set.empty (Set Context!13808))))))

(declare-fun bm!647770 () Bool)

(assert (=> bm!647770 (= call!647773 call!647774)))

(declare-fun b!7105996 () Bool)

(declare-fun e!4270852 () (Set Context!13808))

(assert (=> b!7105996 (= e!4270848 e!4270852)))

(assert (=> b!7105996 (= c!1326083 (is-Union!17910 r!11554))))

(declare-fun b!7105997 () Bool)

(assert (=> b!7105997 (= e!4270852 (set.union call!647771 call!647775))))

(declare-fun b!7105998 () Bool)

(assert (=> b!7105998 (= e!4270849 call!647772)))

(declare-fun b!7105999 () Bool)

(declare-fun c!1326086 () Bool)

(assert (=> b!7105999 (= c!1326086 (is-Star!17910 r!11554))))

(assert (=> b!7105999 (= e!4270849 e!4270847)))

(declare-fun b!7106000 () Bool)

(declare-fun e!4270851 () Bool)

(assert (=> b!7106000 (= e!4270851 (nullable!7547 (regOne!36332 r!11554)))))

(declare-fun b!7105994 () Bool)

(assert (=> b!7105994 (= c!1326085 e!4270851)))

(declare-fun res!2900626 () Bool)

(assert (=> b!7105994 (=> (not res!2900626) (not e!4270851))))

(assert (=> b!7105994 (= res!2900626 (is-Concat!26755 r!11554))))

(assert (=> b!7105994 (= e!4270852 e!4270850)))

(declare-fun d!2219321 () Bool)

(declare-fun c!1326082 () Bool)

(assert (=> d!2219321 (= c!1326082 (and (is-ElementMatch!17910 r!11554) (= (c!1326043 r!11554) a!1901)))))

(assert (=> d!2219321 (= (derivationStepZipperDown!2433 r!11554 lt!2559007 a!1901) e!4270848)))

(assert (= (and d!2219321 c!1326082) b!7105995))

(assert (= (and d!2219321 (not c!1326082)) b!7105996))

(assert (= (and b!7105996 c!1326083) b!7105997))

(assert (= (and b!7105996 (not c!1326083)) b!7105994))

(assert (= (and b!7105994 res!2900626) b!7106000))

(assert (= (and b!7105994 c!1326085) b!7105990))

(assert (= (and b!7105994 (not c!1326085)) b!7105992))

(assert (= (and b!7105992 c!1326084) b!7105998))

(assert (= (and b!7105992 (not c!1326084)) b!7105999))

(assert (= (and b!7105999 c!1326086) b!7105991))

(assert (= (and b!7105999 (not c!1326086)) b!7105993))

(assert (= (or b!7105998 b!7105991) bm!647770))

(assert (= (or b!7105998 b!7105991) bm!647768))

(assert (= (or b!7105990 bm!647768) bm!647769))

(assert (= (or b!7105990 bm!647770) bm!647765))

(assert (= (or b!7105997 b!7105990) bm!647766))

(assert (= (or b!7105997 bm!647769) bm!647767))

(declare-fun m!7829252 () Bool)

(assert (=> bm!647767 m!7829252))

(declare-fun m!7829254 () Bool)

(assert (=> bm!647765 m!7829254))

(declare-fun m!7829256 () Bool)

(assert (=> bm!647766 m!7829256))

(assert (=> b!7106000 m!7829198))

(assert (=> b!7105995 m!7829244))

(assert (=> b!7105875 d!2219321))

(declare-fun b!7106031 () Bool)

(declare-fun e!4270870 () List!68871)

(assert (=> b!7106031 (= e!4270870 (exprs!7404 auxCtx!45))))

(declare-fun e!4270869 () Bool)

(declare-fun lt!2559084 () List!68871)

(declare-fun b!7106034 () Bool)

(assert (=> b!7106034 (= e!4270869 (or (not (= (exprs!7404 auxCtx!45) Nil!68747)) (= lt!2559084 (exprs!7404 c!9994))))))

(declare-fun b!7106032 () Bool)

(assert (=> b!7106032 (= e!4270870 (Cons!68747 (h!75195 (exprs!7404 c!9994)) (++!16062 (t!382688 (exprs!7404 c!9994)) (exprs!7404 auxCtx!45))))))

(declare-fun d!2219323 () Bool)

(assert (=> d!2219323 e!4270869))

(declare-fun res!2900634 () Bool)

(assert (=> d!2219323 (=> (not res!2900634) (not e!4270869))))

(declare-fun content!14000 (List!68871) (Set Regex!17910))

(assert (=> d!2219323 (= res!2900634 (= (content!14000 lt!2559084) (set.union (content!14000 (exprs!7404 c!9994)) (content!14000 (exprs!7404 auxCtx!45)))))))

(assert (=> d!2219323 (= lt!2559084 e!4270870)))

(declare-fun c!1326099 () Bool)

(assert (=> d!2219323 (= c!1326099 (is-Nil!68747 (exprs!7404 c!9994)))))

(assert (=> d!2219323 (= (++!16062 (exprs!7404 c!9994) (exprs!7404 auxCtx!45)) lt!2559084)))

(declare-fun b!7106033 () Bool)

(declare-fun res!2900633 () Bool)

(assert (=> b!7106033 (=> (not res!2900633) (not e!4270869))))

(declare-fun size!41375 (List!68871) Int)

(assert (=> b!7106033 (= res!2900633 (= (size!41375 lt!2559084) (+ (size!41375 (exprs!7404 c!9994)) (size!41375 (exprs!7404 auxCtx!45)))))))

(assert (= (and d!2219323 c!1326099) b!7106031))

(assert (= (and d!2219323 (not c!1326099)) b!7106032))

(assert (= (and d!2219323 res!2900634) b!7106033))

(assert (= (and b!7106033 res!2900633) b!7106034))

(declare-fun m!7829258 () Bool)

(assert (=> b!7106032 m!7829258))

(declare-fun m!7829260 () Bool)

(assert (=> d!2219323 m!7829260))

(declare-fun m!7829262 () Bool)

(assert (=> d!2219323 m!7829262))

(declare-fun m!7829264 () Bool)

(assert (=> d!2219323 m!7829264))

(declare-fun m!7829266 () Bool)

(assert (=> b!7106033 m!7829266))

(declare-fun m!7829268 () Bool)

(assert (=> b!7106033 m!7829268))

(declare-fun m!7829270 () Bool)

(assert (=> b!7106033 m!7829270))

(assert (=> b!7105875 d!2219323))

(declare-fun bs!1884729 () Bool)

(declare-fun d!2219325 () Bool)

(assert (= bs!1884729 (and d!2219325 b!7105875)))

(declare-fun lambda!431596 () Int)

(assert (=> bs!1884729 (= lambda!431596 lambda!431559)))

(declare-fun bs!1884730 () Bool)

(assert (= bs!1884730 (and d!2219325 d!2219285)))

(assert (=> bs!1884730 (= lambda!431596 lambda!431582)))

(declare-fun bs!1884731 () Bool)

(assert (= bs!1884731 (and d!2219325 d!2219305)))

(assert (=> bs!1884731 (= lambda!431596 lambda!431592)))

(assert (=> d!2219325 (= (inv!87639 lt!2559007) (forall!16813 (exprs!7404 lt!2559007) lambda!431596))))

(declare-fun bs!1884732 () Bool)

(assert (= bs!1884732 d!2219325))

(declare-fun m!7829272 () Bool)

(assert (=> bs!1884732 m!7829272))

(assert (=> b!7105870 d!2219325))

(assert (=> b!7105870 d!2219291))

(declare-fun bm!647789 () Bool)

(declare-fun call!647796 () Bool)

(declare-fun call!647795 () Bool)

(assert (=> bm!647789 (= call!647796 call!647795)))

(declare-fun b!7106053 () Bool)

(declare-fun res!2900648 () Bool)

(declare-fun e!4270890 () Bool)

(assert (=> b!7106053 (=> res!2900648 e!4270890)))

(assert (=> b!7106053 (= res!2900648 (not (is-Concat!26755 r!11554)))))

(declare-fun e!4270887 () Bool)

(assert (=> b!7106053 (= e!4270887 e!4270890)))

(declare-fun b!7106055 () Bool)

(declare-fun e!4270891 () Bool)

(assert (=> b!7106055 (= e!4270890 e!4270891)))

(declare-fun res!2900647 () Bool)

(assert (=> b!7106055 (=> (not res!2900647) (not e!4270891))))

(declare-fun call!647794 () Bool)

(assert (=> b!7106055 (= res!2900647 call!647794)))

(declare-fun b!7106056 () Bool)

(declare-fun e!4270889 () Bool)

(assert (=> b!7106056 (= e!4270889 call!647795)))

(declare-fun b!7106057 () Bool)

(declare-fun res!2900645 () Bool)

(declare-fun e!4270885 () Bool)

(assert (=> b!7106057 (=> (not res!2900645) (not e!4270885))))

(assert (=> b!7106057 (= res!2900645 call!647796)))

(assert (=> b!7106057 (= e!4270887 e!4270885)))

(declare-fun bm!647790 () Bool)

(declare-fun c!1326104 () Bool)

(assert (=> bm!647790 (= call!647794 (validRegex!9183 (ite c!1326104 (regTwo!36333 r!11554) (regOne!36332 r!11554))))))

(declare-fun b!7106058 () Bool)

(assert (=> b!7106058 (= e!4270891 call!647796)))

(declare-fun bm!647791 () Bool)

(declare-fun c!1326105 () Bool)

(assert (=> bm!647791 (= call!647795 (validRegex!9183 (ite c!1326105 (reg!18239 r!11554) (ite c!1326104 (regOne!36333 r!11554) (regTwo!36332 r!11554)))))))

(declare-fun b!7106059 () Bool)

(declare-fun e!4270886 () Bool)

(assert (=> b!7106059 (= e!4270886 e!4270889)))

(declare-fun res!2900646 () Bool)

(assert (=> b!7106059 (= res!2900646 (not (nullable!7547 (reg!18239 r!11554))))))

(assert (=> b!7106059 (=> (not res!2900646) (not e!4270889))))

(declare-fun d!2219327 () Bool)

(declare-fun res!2900649 () Bool)

(declare-fun e!4270888 () Bool)

(assert (=> d!2219327 (=> res!2900649 e!4270888)))

(assert (=> d!2219327 (= res!2900649 (is-ElementMatch!17910 r!11554))))

(assert (=> d!2219327 (= (validRegex!9183 r!11554) e!4270888)))

(declare-fun b!7106054 () Bool)

(assert (=> b!7106054 (= e!4270888 e!4270886)))

(assert (=> b!7106054 (= c!1326105 (is-Star!17910 r!11554))))

(declare-fun b!7106060 () Bool)

(assert (=> b!7106060 (= e!4270885 call!647794)))

(declare-fun b!7106061 () Bool)

(assert (=> b!7106061 (= e!4270886 e!4270887)))

(assert (=> b!7106061 (= c!1326104 (is-Union!17910 r!11554))))

(assert (= (and d!2219327 (not res!2900649)) b!7106054))

(assert (= (and b!7106054 c!1326105) b!7106059))

(assert (= (and b!7106054 (not c!1326105)) b!7106061))

(assert (= (and b!7106059 res!2900646) b!7106056))

(assert (= (and b!7106061 c!1326104) b!7106057))

(assert (= (and b!7106061 (not c!1326104)) b!7106053))

(assert (= (and b!7106057 res!2900645) b!7106060))

(assert (= (and b!7106053 (not res!2900648)) b!7106055))

(assert (= (and b!7106055 res!2900647) b!7106058))

(assert (= (or b!7106057 b!7106058) bm!647789))

(assert (= (or b!7106060 b!7106055) bm!647790))

(assert (= (or b!7106056 bm!647789) bm!647791))

(declare-fun m!7829274 () Bool)

(assert (=> bm!647790 m!7829274))

(declare-fun m!7829276 () Bool)

(assert (=> bm!647791 m!7829276))

(declare-fun m!7829278 () Bool)

(assert (=> b!7106059 m!7829278))

(assert (=> start!691726 d!2219327))

(declare-fun bs!1884733 () Bool)

(declare-fun d!2219329 () Bool)

(assert (= bs!1884733 (and d!2219329 b!7105875)))

(declare-fun lambda!431597 () Int)

(assert (=> bs!1884733 (= lambda!431597 lambda!431559)))

(declare-fun bs!1884734 () Bool)

(assert (= bs!1884734 (and d!2219329 d!2219285)))

(assert (=> bs!1884734 (= lambda!431597 lambda!431582)))

(declare-fun bs!1884735 () Bool)

(assert (= bs!1884735 (and d!2219329 d!2219305)))

(assert (=> bs!1884735 (= lambda!431597 lambda!431592)))

(declare-fun bs!1884736 () Bool)

(assert (= bs!1884736 (and d!2219329 d!2219325)))

(assert (=> bs!1884736 (= lambda!431597 lambda!431596)))

(assert (=> d!2219329 (= (inv!87639 c!9994) (forall!16813 (exprs!7404 c!9994) lambda!431597))))

(declare-fun bs!1884737 () Bool)

(assert (= bs!1884737 d!2219329))

(declare-fun m!7829280 () Bool)

(assert (=> bs!1884737 m!7829280))

(assert (=> start!691726 d!2219329))

(declare-fun bs!1884738 () Bool)

(declare-fun d!2219331 () Bool)

(assert (= bs!1884738 (and d!2219331 d!2219285)))

(declare-fun lambda!431598 () Int)

(assert (=> bs!1884738 (= lambda!431598 lambda!431582)))

(declare-fun bs!1884739 () Bool)

(assert (= bs!1884739 (and d!2219331 b!7105875)))

(assert (=> bs!1884739 (= lambda!431598 lambda!431559)))

(declare-fun bs!1884740 () Bool)

(assert (= bs!1884740 (and d!2219331 d!2219305)))

(assert (=> bs!1884740 (= lambda!431598 lambda!431592)))

(declare-fun bs!1884741 () Bool)

(assert (= bs!1884741 (and d!2219331 d!2219325)))

(assert (=> bs!1884741 (= lambda!431598 lambda!431596)))

(declare-fun bs!1884742 () Bool)

(assert (= bs!1884742 (and d!2219331 d!2219329)))

(assert (=> bs!1884742 (= lambda!431598 lambda!431597)))

(assert (=> d!2219331 (= (inv!87639 auxCtx!45) (forall!16813 (exprs!7404 auxCtx!45) lambda!431598))))

(declare-fun bs!1884743 () Bool)

(assert (= bs!1884743 d!2219331))

(declare-fun m!7829282 () Bool)

(assert (=> bs!1884743 m!7829282))

(assert (=> start!691726 d!2219331))

(declare-fun b!7106077 () Bool)

(declare-fun e!4270900 () Bool)

(declare-fun tp!1954113 () Bool)

(declare-fun tp!1954114 () Bool)

(assert (=> b!7106077 (= e!4270900 (and tp!1954113 tp!1954114))))

(assert (=> b!7105877 (= tp!1954086 e!4270900)))

(assert (= (and b!7105877 (is-Cons!68747 (exprs!7404 c!9994))) b!7106077))

(declare-fun e!4270903 () Bool)

(assert (=> b!7105871 (= tp!1954084 e!4270903)))

(declare-fun b!7106088 () Bool)

(assert (=> b!7106088 (= e!4270903 tp_is_empty!45053)))

(declare-fun b!7106091 () Bool)

(declare-fun tp!1954129 () Bool)

(declare-fun tp!1954125 () Bool)

(assert (=> b!7106091 (= e!4270903 (and tp!1954129 tp!1954125))))

(declare-fun b!7106089 () Bool)

(declare-fun tp!1954128 () Bool)

(declare-fun tp!1954127 () Bool)

(assert (=> b!7106089 (= e!4270903 (and tp!1954128 tp!1954127))))

(declare-fun b!7106090 () Bool)

(declare-fun tp!1954126 () Bool)

(assert (=> b!7106090 (= e!4270903 tp!1954126)))

(assert (= (and b!7105871 (is-ElementMatch!17910 (regOne!36333 r!11554))) b!7106088))

(assert (= (and b!7105871 (is-Concat!26755 (regOne!36333 r!11554))) b!7106089))

(assert (= (and b!7105871 (is-Star!17910 (regOne!36333 r!11554))) b!7106090))

(assert (= (and b!7105871 (is-Union!17910 (regOne!36333 r!11554))) b!7106091))

(declare-fun e!4270904 () Bool)

(assert (=> b!7105871 (= tp!1954081 e!4270904)))

(declare-fun b!7106092 () Bool)

(assert (=> b!7106092 (= e!4270904 tp_is_empty!45053)))

(declare-fun b!7106095 () Bool)

(declare-fun tp!1954134 () Bool)

(declare-fun tp!1954130 () Bool)

(assert (=> b!7106095 (= e!4270904 (and tp!1954134 tp!1954130))))

(declare-fun b!7106093 () Bool)

(declare-fun tp!1954133 () Bool)

(declare-fun tp!1954132 () Bool)

(assert (=> b!7106093 (= e!4270904 (and tp!1954133 tp!1954132))))

(declare-fun b!7106094 () Bool)

(declare-fun tp!1954131 () Bool)

(assert (=> b!7106094 (= e!4270904 tp!1954131)))

(assert (= (and b!7105871 (is-ElementMatch!17910 (regTwo!36333 r!11554))) b!7106092))

(assert (= (and b!7105871 (is-Concat!26755 (regTwo!36333 r!11554))) b!7106093))

(assert (= (and b!7105871 (is-Star!17910 (regTwo!36333 r!11554))) b!7106094))

(assert (= (and b!7105871 (is-Union!17910 (regTwo!36333 r!11554))) b!7106095))

(declare-fun e!4270905 () Bool)

(assert (=> b!7105869 (= tp!1954082 e!4270905)))

(declare-fun b!7106096 () Bool)

(assert (=> b!7106096 (= e!4270905 tp_is_empty!45053)))

(declare-fun b!7106099 () Bool)

(declare-fun tp!1954139 () Bool)

(declare-fun tp!1954135 () Bool)

(assert (=> b!7106099 (= e!4270905 (and tp!1954139 tp!1954135))))

(declare-fun b!7106097 () Bool)

(declare-fun tp!1954138 () Bool)

(declare-fun tp!1954137 () Bool)

(assert (=> b!7106097 (= e!4270905 (and tp!1954138 tp!1954137))))

(declare-fun b!7106098 () Bool)

(declare-fun tp!1954136 () Bool)

(assert (=> b!7106098 (= e!4270905 tp!1954136)))

(assert (= (and b!7105869 (is-ElementMatch!17910 (regOne!36332 r!11554))) b!7106096))

(assert (= (and b!7105869 (is-Concat!26755 (regOne!36332 r!11554))) b!7106097))

(assert (= (and b!7105869 (is-Star!17910 (regOne!36332 r!11554))) b!7106098))

(assert (= (and b!7105869 (is-Union!17910 (regOne!36332 r!11554))) b!7106099))

(declare-fun e!4270906 () Bool)

(assert (=> b!7105869 (= tp!1954083 e!4270906)))

(declare-fun b!7106100 () Bool)

(assert (=> b!7106100 (= e!4270906 tp_is_empty!45053)))

(declare-fun b!7106103 () Bool)

(declare-fun tp!1954144 () Bool)

(declare-fun tp!1954140 () Bool)

(assert (=> b!7106103 (= e!4270906 (and tp!1954144 tp!1954140))))

(declare-fun b!7106101 () Bool)

(declare-fun tp!1954143 () Bool)

(declare-fun tp!1954142 () Bool)

(assert (=> b!7106101 (= e!4270906 (and tp!1954143 tp!1954142))))

(declare-fun b!7106102 () Bool)

(declare-fun tp!1954141 () Bool)

(assert (=> b!7106102 (= e!4270906 tp!1954141)))

(assert (= (and b!7105869 (is-ElementMatch!17910 (regTwo!36332 r!11554))) b!7106100))

(assert (= (and b!7105869 (is-Concat!26755 (regTwo!36332 r!11554))) b!7106101))

(assert (= (and b!7105869 (is-Star!17910 (regTwo!36332 r!11554))) b!7106102))

(assert (= (and b!7105869 (is-Union!17910 (regTwo!36332 r!11554))) b!7106103))

(declare-fun e!4270907 () Bool)

(assert (=> b!7105873 (= tp!1954087 e!4270907)))

(declare-fun b!7106104 () Bool)

(assert (=> b!7106104 (= e!4270907 tp_is_empty!45053)))

(declare-fun b!7106107 () Bool)

(declare-fun tp!1954149 () Bool)

(declare-fun tp!1954145 () Bool)

(assert (=> b!7106107 (= e!4270907 (and tp!1954149 tp!1954145))))

(declare-fun b!7106105 () Bool)

(declare-fun tp!1954148 () Bool)

(declare-fun tp!1954147 () Bool)

(assert (=> b!7106105 (= e!4270907 (and tp!1954148 tp!1954147))))

(declare-fun b!7106106 () Bool)

(declare-fun tp!1954146 () Bool)

(assert (=> b!7106106 (= e!4270907 tp!1954146)))

(assert (= (and b!7105873 (is-ElementMatch!17910 (reg!18239 r!11554))) b!7106104))

(assert (= (and b!7105873 (is-Concat!26755 (reg!18239 r!11554))) b!7106105))

(assert (= (and b!7105873 (is-Star!17910 (reg!18239 r!11554))) b!7106106))

(assert (= (and b!7105873 (is-Union!17910 (reg!18239 r!11554))) b!7106107))

(declare-fun b!7106108 () Bool)

(declare-fun e!4270908 () Bool)

(declare-fun tp!1954150 () Bool)

(declare-fun tp!1954151 () Bool)

(assert (=> b!7106108 (= e!4270908 (and tp!1954150 tp!1954151))))

(assert (=> b!7105878 (= tp!1954085 e!4270908)))

(assert (= (and b!7105878 (is-Cons!68747 (exprs!7404 auxCtx!45))) b!7106108))

(push 1)

(assert (not b!7106103))

(assert (not d!2219297))

(assert (not d!2219291))

(assert (not b!7106107))

(assert (not b!7106106))

(assert (not d!2219323))

(assert (not bm!647790))

(assert (not bm!647765))

(assert (not bm!647741))

(assert (not b!7105945))

(assert (not b!7106101))

(assert (not bm!647767))

(assert (not d!2219313))

(assert (not bm!647748))

(assert (not bm!647759))

(assert (not bm!647735))

(assert (not d!2219285))

(assert (not b!7106102))

(assert (not b!7106091))

(assert (not d!2219305))

(assert (not b!7106099))

(assert (not b!7106095))

(assert (not bm!647747))

(assert (not bm!647754))

(assert (not bm!647766))

(assert (not bm!647749))

(assert (not bm!647737))

(assert (not b!7106093))

(assert (not b!7105956))

(assert (not b!7106097))

(assert (not b!7105978))

(assert (not bm!647736))

(assert (not bm!647755))

(assert (not b!7106105))

(assert (not b!7106077))

(assert (not b!7105989))

(assert (not d!2219311))

(assert (not d!2219331))

(assert (not b!7106032))

(assert (not bm!647761))

(assert (not b!7106108))

(assert (not b!7106000))

(assert (not d!2219325))

(assert (not b!7106094))

(assert (not b!7106090))

(assert (not b!7106098))

(assert (not d!2219289))

(assert (not bm!647743))

(assert (not b!7105967))

(assert (not b!7106033))

(assert (not bm!647760))

(assert (not bm!647753))

(assert (not d!2219329))

(assert (not b!7106089))

(assert (not d!2219293))

(assert (not d!2219295))

(assert (not bm!647742))

(assert (not bm!647791))

(assert (not b!7106059))

(assert tp_is_empty!45053)

(assert (not d!2219287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


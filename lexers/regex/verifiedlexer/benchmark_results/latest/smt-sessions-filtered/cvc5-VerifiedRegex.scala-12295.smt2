; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690710 () Bool)

(assert start!690710)

(declare-fun b!7095737 () Bool)

(declare-fun res!2897623 () Bool)

(declare-fun e!4265343 () Bool)

(assert (=> b!7095737 (=> (not res!2897623) (not e!4265343))))

(declare-datatypes ((C!35934 0))(
  ( (C!35935 (val!27673 Int)) )
))
(declare-datatypes ((Regex!17832 0))(
  ( (ElementMatch!17832 (c!1324143 C!35934)) (Concat!26677 (regOne!36176 Regex!17832) (regTwo!36176 Regex!17832)) (EmptyExpr!17832) (Star!17832 (reg!18161 Regex!17832)) (EmptyLang!17832) (Union!17832 (regOne!36177 Regex!17832) (regTwo!36177 Regex!17832)) )
))
(declare-fun r!11554 () Regex!17832)

(declare-fun a!1901 () C!35934)

(assert (=> b!7095737 (= res!2897623 (and (or (not (is-ElementMatch!17832 r!11554)) (not (= (c!1324143 r!11554) a!1901))) (not (is-Union!17832 r!11554))))))

(declare-fun b!7095738 () Bool)

(declare-fun res!2897624 () Bool)

(assert (=> b!7095738 (=> (not res!2897624) (not e!4265343))))

(assert (=> b!7095738 (= res!2897624 (is-Concat!26677 r!11554))))

(declare-fun b!7095739 () Bool)

(declare-fun e!4265341 () Bool)

(declare-datatypes ((List!68795 0))(
  ( (Nil!68671) (Cons!68671 (h!75119 Regex!17832) (t!382594 List!68795)) )
))
(declare-datatypes ((Context!13656 0))(
  ( (Context!13657 (exprs!7328 List!68795)) )
))
(declare-fun c!9994 () Context!13656)

(declare-fun lambda!430438 () Int)

(declare-fun forall!16754 (List!68795 Int) Bool)

(assert (=> b!7095739 (= e!4265341 (forall!16754 (exprs!7328 c!9994) lambda!430438))))

(declare-fun b!7095740 () Bool)

(declare-fun res!2897628 () Bool)

(assert (=> b!7095740 (=> (not res!2897628) (not e!4265343))))

(declare-fun e!4265340 () Bool)

(assert (=> b!7095740 (= res!2897628 e!4265340)))

(declare-fun res!2897626 () Bool)

(assert (=> b!7095740 (=> res!2897626 e!4265340)))

(assert (=> b!7095740 (= res!2897626 (not (is-Concat!26677 r!11554)))))

(declare-fun b!7095741 () Bool)

(declare-fun e!4265337 () Bool)

(declare-fun e!4265344 () Bool)

(assert (=> b!7095741 (= e!4265337 e!4265344)))

(declare-fun res!2897625 () Bool)

(assert (=> b!7095741 (=> (not res!2897625) (not e!4265344))))

(declare-fun lt!2557235 () (Set Context!13656))

(declare-fun lt!2557231 () List!68795)

(declare-fun derivationStepZipperDown!2383 (Regex!17832 Context!13656 C!35934) (Set Context!13656))

(declare-fun $colon$colon!2727 (List!68795 Regex!17832) List!68795)

(assert (=> b!7095741 (= res!2897625 (= lt!2557235 (derivationStepZipperDown!2383 (regOne!36176 r!11554) (Context!13657 ($colon$colon!2727 lt!2557231 (regTwo!36176 r!11554))) a!1901)))))

(assert (=> b!7095741 (= lt!2557235 (derivationStepZipperDown!2383 r!11554 (Context!13657 lt!2557231) a!1901))))

(declare-fun b!7095742 () Bool)

(declare-fun nullable!7472 (Regex!17832) Bool)

(assert (=> b!7095742 (= e!4265340 (not (nullable!7472 (regOne!36176 r!11554))))))

(declare-fun b!7095743 () Bool)

(declare-fun e!4265342 () Bool)

(declare-fun tp_is_empty!44897 () Bool)

(assert (=> b!7095743 (= e!4265342 tp_is_empty!44897)))

(declare-fun b!7095744 () Bool)

(declare-fun tp!1949887 () Bool)

(assert (=> b!7095744 (= e!4265342 tp!1949887)))

(declare-fun b!7095745 () Bool)

(declare-fun tp!1949891 () Bool)

(declare-fun tp!1949888 () Bool)

(assert (=> b!7095745 (= e!4265342 (and tp!1949891 tp!1949888))))

(declare-fun b!7095746 () Bool)

(declare-fun e!4265339 () Bool)

(declare-fun tp!1949886 () Bool)

(assert (=> b!7095746 (= e!4265339 tp!1949886)))

(declare-fun b!7095747 () Bool)

(assert (=> b!7095747 (= e!4265344 (not e!4265341))))

(declare-fun res!2897629 () Bool)

(assert (=> b!7095747 (=> res!2897629 e!4265341)))

(declare-fun auxCtx!45 () Context!13656)

(declare-fun appendTo!889 ((Set Context!13656) Context!13656) (Set Context!13656))

(assert (=> b!7095747 (= res!2897629 (not (= lt!2557235 (appendTo!889 (derivationStepZipperDown!2383 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-datatypes ((Unit!162347 0))(
  ( (Unit!162348) )
))
(declare-fun lt!2557230 () Unit!162347)

(declare-fun lemmaConcatPreservesForall!1127 (List!68795 List!68795 Int) Unit!162347)

(assert (=> b!7095747 (= lt!2557230 (lemmaConcatPreservesForall!1127 (exprs!7328 c!9994) (exprs!7328 auxCtx!45) lambda!430438))))

(declare-fun lt!2557233 () Context!13656)

(declare-fun lt!2557229 () List!68795)

(declare-fun ++!15996 (List!68795 List!68795) List!68795)

(assert (=> b!7095747 (= (derivationStepZipperDown!2383 (regOne!36176 r!11554) (Context!13657 (++!15996 lt!2557229 (exprs!7328 auxCtx!45))) a!1901) (appendTo!889 (derivationStepZipperDown!2383 (regOne!36176 r!11554) lt!2557233 a!1901) auxCtx!45))))

(declare-fun lt!2557228 () Unit!162347)

(assert (=> b!7095747 (= lt!2557228 (lemmaConcatPreservesForall!1127 lt!2557229 (exprs!7328 auxCtx!45) lambda!430438))))

(declare-fun lt!2557232 () Unit!162347)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!197 (Context!13656 Regex!17832 C!35934 Context!13656) Unit!162347)

(assert (=> b!7095747 (= lt!2557232 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!197 lt!2557233 (regOne!36176 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7095747 (= lt!2557233 (Context!13657 lt!2557229))))

(assert (=> b!7095747 (= lt!2557229 ($colon$colon!2727 (exprs!7328 c!9994) (regTwo!36176 r!11554)))))

(declare-fun b!7095748 () Bool)

(declare-fun e!4265338 () Bool)

(declare-fun tp!1949885 () Bool)

(assert (=> b!7095748 (= e!4265338 tp!1949885)))

(declare-fun b!7095749 () Bool)

(assert (=> b!7095749 (= e!4265343 e!4265337)))

(declare-fun res!2897630 () Bool)

(assert (=> b!7095749 (=> (not res!2897630) (not e!4265337))))

(declare-fun validRegex!9107 (Regex!17832) Bool)

(assert (=> b!7095749 (= res!2897630 (validRegex!9107 (regTwo!36176 r!11554)))))

(assert (=> b!7095749 (= lt!2557231 (++!15996 (exprs!7328 c!9994) (exprs!7328 auxCtx!45)))))

(declare-fun lt!2557234 () Unit!162347)

(assert (=> b!7095749 (= lt!2557234 (lemmaConcatPreservesForall!1127 (exprs!7328 c!9994) (exprs!7328 auxCtx!45) lambda!430438))))

(declare-fun lt!2557227 () Unit!162347)

(assert (=> b!7095749 (= lt!2557227 (lemmaConcatPreservesForall!1127 (exprs!7328 c!9994) (exprs!7328 auxCtx!45) lambda!430438))))

(declare-fun res!2897627 () Bool)

(assert (=> start!690710 (=> (not res!2897627) (not e!4265343))))

(assert (=> start!690710 (= res!2897627 (validRegex!9107 r!11554))))

(assert (=> start!690710 e!4265343))

(assert (=> start!690710 e!4265342))

(assert (=> start!690710 tp_is_empty!44897))

(declare-fun inv!87446 (Context!13656) Bool)

(assert (=> start!690710 (and (inv!87446 c!9994) e!4265338)))

(assert (=> start!690710 (and (inv!87446 auxCtx!45) e!4265339)))

(declare-fun b!7095750 () Bool)

(declare-fun tp!1949890 () Bool)

(declare-fun tp!1949889 () Bool)

(assert (=> b!7095750 (= e!4265342 (and tp!1949890 tp!1949889))))

(assert (= (and start!690710 res!2897627) b!7095737))

(assert (= (and b!7095737 res!2897623) b!7095740))

(assert (= (and b!7095740 (not res!2897626)) b!7095742))

(assert (= (and b!7095740 res!2897628) b!7095738))

(assert (= (and b!7095738 res!2897624) b!7095749))

(assert (= (and b!7095749 res!2897630) b!7095741))

(assert (= (and b!7095741 res!2897625) b!7095747))

(assert (= (and b!7095747 (not res!2897629)) b!7095739))

(assert (= (and start!690710 (is-ElementMatch!17832 r!11554)) b!7095743))

(assert (= (and start!690710 (is-Concat!26677 r!11554)) b!7095750))

(assert (= (and start!690710 (is-Star!17832 r!11554)) b!7095744))

(assert (= (and start!690710 (is-Union!17832 r!11554)) b!7095745))

(assert (= start!690710 b!7095748))

(assert (= start!690710 b!7095746))

(declare-fun m!7823388 () Bool)

(assert (=> b!7095739 m!7823388))

(declare-fun m!7823390 () Bool)

(assert (=> start!690710 m!7823390))

(declare-fun m!7823392 () Bool)

(assert (=> start!690710 m!7823392))

(declare-fun m!7823394 () Bool)

(assert (=> start!690710 m!7823394))

(declare-fun m!7823396 () Bool)

(assert (=> b!7095741 m!7823396))

(declare-fun m!7823398 () Bool)

(assert (=> b!7095741 m!7823398))

(declare-fun m!7823400 () Bool)

(assert (=> b!7095741 m!7823400))

(declare-fun m!7823402 () Bool)

(assert (=> b!7095747 m!7823402))

(declare-fun m!7823404 () Bool)

(assert (=> b!7095747 m!7823404))

(declare-fun m!7823406 () Bool)

(assert (=> b!7095747 m!7823406))

(declare-fun m!7823408 () Bool)

(assert (=> b!7095747 m!7823408))

(declare-fun m!7823410 () Bool)

(assert (=> b!7095747 m!7823410))

(declare-fun m!7823412 () Bool)

(assert (=> b!7095747 m!7823412))

(assert (=> b!7095747 m!7823408))

(assert (=> b!7095747 m!7823412))

(declare-fun m!7823414 () Bool)

(assert (=> b!7095747 m!7823414))

(declare-fun m!7823416 () Bool)

(assert (=> b!7095747 m!7823416))

(declare-fun m!7823418 () Bool)

(assert (=> b!7095747 m!7823418))

(declare-fun m!7823420 () Bool)

(assert (=> b!7095747 m!7823420))

(declare-fun m!7823422 () Bool)

(assert (=> b!7095749 m!7823422))

(declare-fun m!7823424 () Bool)

(assert (=> b!7095749 m!7823424))

(assert (=> b!7095749 m!7823406))

(assert (=> b!7095749 m!7823406))

(declare-fun m!7823426 () Bool)

(assert (=> b!7095742 m!7823426))

(push 1)

(assert (not b!7095745))

(assert (not b!7095739))

(assert (not b!7095744))

(assert (not b!7095748))

(assert (not b!7095747))

(assert (not b!7095741))

(assert (not start!690710))

(assert (not b!7095746))

(assert tp_is_empty!44897)

(assert (not b!7095749))

(assert (not b!7095750))

(assert (not b!7095742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!645691 () Bool)

(declare-fun c!1324149 () Bool)

(declare-fun c!1324150 () Bool)

(declare-fun call!645697 () Bool)

(assert (=> bm!645691 (= call!645697 (validRegex!9107 (ite c!1324149 (reg!18161 (regTwo!36176 r!11554)) (ite c!1324150 (regTwo!36177 (regTwo!36176 r!11554)) (regOne!36176 (regTwo!36176 r!11554))))))))

(declare-fun b!7095811 () Bool)

(declare-fun e!4265387 () Bool)

(declare-fun e!4265385 () Bool)

(assert (=> b!7095811 (= e!4265387 e!4265385)))

(assert (=> b!7095811 (= c!1324149 (is-Star!17832 (regTwo!36176 r!11554)))))

(declare-fun b!7095812 () Bool)

(declare-fun res!2897668 () Bool)

(declare-fun e!4265383 () Bool)

(assert (=> b!7095812 (=> res!2897668 e!4265383)))

(assert (=> b!7095812 (= res!2897668 (not (is-Concat!26677 (regTwo!36176 r!11554))))))

(declare-fun e!4265389 () Bool)

(assert (=> b!7095812 (= e!4265389 e!4265383)))

(declare-fun bm!645692 () Bool)

(declare-fun call!645698 () Bool)

(assert (=> bm!645692 (= call!645698 (validRegex!9107 (ite c!1324150 (regOne!36177 (regTwo!36176 r!11554)) (regTwo!36176 (regTwo!36176 r!11554)))))))

(declare-fun b!7095813 () Bool)

(declare-fun e!4265386 () Bool)

(assert (=> b!7095813 (= e!4265383 e!4265386)))

(declare-fun res!2897667 () Bool)

(assert (=> b!7095813 (=> (not res!2897667) (not e!4265386))))

(declare-fun call!645696 () Bool)

(assert (=> b!7095813 (= res!2897667 call!645696)))

(declare-fun b!7095814 () Bool)

(assert (=> b!7095814 (= e!4265385 e!4265389)))

(assert (=> b!7095814 (= c!1324150 (is-Union!17832 (regTwo!36176 r!11554)))))

(declare-fun b!7095816 () Bool)

(declare-fun e!4265388 () Bool)

(assert (=> b!7095816 (= e!4265388 call!645696)))

(declare-fun b!7095817 () Bool)

(declare-fun res!2897665 () Bool)

(assert (=> b!7095817 (=> (not res!2897665) (not e!4265388))))

(assert (=> b!7095817 (= res!2897665 call!645698)))

(assert (=> b!7095817 (= e!4265389 e!4265388)))

(declare-fun b!7095818 () Bool)

(assert (=> b!7095818 (= e!4265386 call!645698)))

(declare-fun b!7095819 () Bool)

(declare-fun e!4265384 () Bool)

(assert (=> b!7095819 (= e!4265385 e!4265384)))

(declare-fun res!2897666 () Bool)

(assert (=> b!7095819 (= res!2897666 (not (nullable!7472 (reg!18161 (regTwo!36176 r!11554)))))))

(assert (=> b!7095819 (=> (not res!2897666) (not e!4265384))))

(declare-fun bm!645693 () Bool)

(assert (=> bm!645693 (= call!645696 call!645697)))

(declare-fun d!2217754 () Bool)

(declare-fun res!2897669 () Bool)

(assert (=> d!2217754 (=> res!2897669 e!4265387)))

(assert (=> d!2217754 (= res!2897669 (is-ElementMatch!17832 (regTwo!36176 r!11554)))))

(assert (=> d!2217754 (= (validRegex!9107 (regTwo!36176 r!11554)) e!4265387)))

(declare-fun b!7095815 () Bool)

(assert (=> b!7095815 (= e!4265384 call!645697)))

(assert (= (and d!2217754 (not res!2897669)) b!7095811))

(assert (= (and b!7095811 c!1324149) b!7095819))

(assert (= (and b!7095811 (not c!1324149)) b!7095814))

(assert (= (and b!7095819 res!2897666) b!7095815))

(assert (= (and b!7095814 c!1324150) b!7095817))

(assert (= (and b!7095814 (not c!1324150)) b!7095812))

(assert (= (and b!7095817 res!2897665) b!7095816))

(assert (= (and b!7095812 (not res!2897668)) b!7095813))

(assert (= (and b!7095813 res!2897667) b!7095818))

(assert (= (or b!7095817 b!7095818) bm!645692))

(assert (= (or b!7095816 b!7095813) bm!645693))

(assert (= (or b!7095815 bm!645693) bm!645691))

(declare-fun m!7823468 () Bool)

(assert (=> bm!645691 m!7823468))

(declare-fun m!7823470 () Bool)

(assert (=> bm!645692 m!7823470))

(declare-fun m!7823472 () Bool)

(assert (=> b!7095819 m!7823472))

(assert (=> b!7095749 d!2217754))

(declare-fun d!2217758 () Bool)

(declare-fun e!4265408 () Bool)

(assert (=> d!2217758 e!4265408))

(declare-fun res!2897684 () Bool)

(assert (=> d!2217758 (=> (not res!2897684) (not e!4265408))))

(declare-fun lt!2557265 () List!68795)

(declare-fun content!13953 (List!68795) (Set Regex!17832))

(assert (=> d!2217758 (= res!2897684 (= (content!13953 lt!2557265) (set.union (content!13953 (exprs!7328 c!9994)) (content!13953 (exprs!7328 auxCtx!45)))))))

(declare-fun e!4265409 () List!68795)

(assert (=> d!2217758 (= lt!2557265 e!4265409)))

(declare-fun c!1324157 () Bool)

(assert (=> d!2217758 (= c!1324157 (is-Nil!68671 (exprs!7328 c!9994)))))

(assert (=> d!2217758 (= (++!15996 (exprs!7328 c!9994) (exprs!7328 auxCtx!45)) lt!2557265)))

(declare-fun b!7095849 () Bool)

(assert (=> b!7095849 (= e!4265408 (or (not (= (exprs!7328 auxCtx!45) Nil!68671)) (= lt!2557265 (exprs!7328 c!9994))))))

(declare-fun b!7095848 () Bool)

(declare-fun res!2897685 () Bool)

(assert (=> b!7095848 (=> (not res!2897685) (not e!4265408))))

(declare-fun size!41328 (List!68795) Int)

(assert (=> b!7095848 (= res!2897685 (= (size!41328 lt!2557265) (+ (size!41328 (exprs!7328 c!9994)) (size!41328 (exprs!7328 auxCtx!45)))))))

(declare-fun b!7095847 () Bool)

(assert (=> b!7095847 (= e!4265409 (Cons!68671 (h!75119 (exprs!7328 c!9994)) (++!15996 (t!382594 (exprs!7328 c!9994)) (exprs!7328 auxCtx!45))))))

(declare-fun b!7095846 () Bool)

(assert (=> b!7095846 (= e!4265409 (exprs!7328 auxCtx!45))))

(assert (= (and d!2217758 c!1324157) b!7095846))

(assert (= (and d!2217758 (not c!1324157)) b!7095847))

(assert (= (and d!2217758 res!2897684) b!7095848))

(assert (= (and b!7095848 res!2897685) b!7095849))

(declare-fun m!7823474 () Bool)

(assert (=> d!2217758 m!7823474))

(declare-fun m!7823476 () Bool)

(assert (=> d!2217758 m!7823476))

(declare-fun m!7823478 () Bool)

(assert (=> d!2217758 m!7823478))

(declare-fun m!7823480 () Bool)

(assert (=> b!7095848 m!7823480))

(declare-fun m!7823482 () Bool)

(assert (=> b!7095848 m!7823482))

(declare-fun m!7823484 () Bool)

(assert (=> b!7095848 m!7823484))

(declare-fun m!7823486 () Bool)

(assert (=> b!7095847 m!7823486))

(assert (=> b!7095749 d!2217758))

(declare-fun d!2217760 () Bool)

(assert (=> d!2217760 (forall!16754 (++!15996 (exprs!7328 c!9994) (exprs!7328 auxCtx!45)) lambda!430438)))

(declare-fun lt!2557268 () Unit!162347)

(declare-fun choose!54713 (List!68795 List!68795 Int) Unit!162347)

(assert (=> d!2217760 (= lt!2557268 (choose!54713 (exprs!7328 c!9994) (exprs!7328 auxCtx!45) lambda!430438))))

(assert (=> d!2217760 (forall!16754 (exprs!7328 c!9994) lambda!430438)))

(assert (=> d!2217760 (= (lemmaConcatPreservesForall!1127 (exprs!7328 c!9994) (exprs!7328 auxCtx!45) lambda!430438) lt!2557268)))

(declare-fun bs!1883901 () Bool)

(assert (= bs!1883901 d!2217760))

(assert (=> bs!1883901 m!7823424))

(assert (=> bs!1883901 m!7823424))

(declare-fun m!7823488 () Bool)

(assert (=> bs!1883901 m!7823488))

(declare-fun m!7823490 () Bool)

(assert (=> bs!1883901 m!7823490))

(assert (=> bs!1883901 m!7823388))

(assert (=> b!7095749 d!2217760))

(declare-fun d!2217762 () Bool)

(declare-fun res!2897690 () Bool)

(declare-fun e!4265414 () Bool)

(assert (=> d!2217762 (=> res!2897690 e!4265414)))

(assert (=> d!2217762 (= res!2897690 (is-Nil!68671 (exprs!7328 c!9994)))))

(assert (=> d!2217762 (= (forall!16754 (exprs!7328 c!9994) lambda!430438) e!4265414)))

(declare-fun b!7095854 () Bool)

(declare-fun e!4265415 () Bool)

(assert (=> b!7095854 (= e!4265414 e!4265415)))

(declare-fun res!2897691 () Bool)

(assert (=> b!7095854 (=> (not res!2897691) (not e!4265415))))

(declare-fun dynLambda!28019 (Int Regex!17832) Bool)

(assert (=> b!7095854 (= res!2897691 (dynLambda!28019 lambda!430438 (h!75119 (exprs!7328 c!9994))))))

(declare-fun b!7095855 () Bool)

(assert (=> b!7095855 (= e!4265415 (forall!16754 (t!382594 (exprs!7328 c!9994)) lambda!430438))))

(assert (= (and d!2217762 (not res!2897690)) b!7095854))

(assert (= (and b!7095854 res!2897691) b!7095855))

(declare-fun b_lambda!271145 () Bool)

(assert (=> (not b_lambda!271145) (not b!7095854)))

(declare-fun m!7823492 () Bool)

(assert (=> b!7095854 m!7823492))

(declare-fun m!7823494 () Bool)

(assert (=> b!7095855 m!7823494))

(assert (=> b!7095739 d!2217762))

(declare-fun d!2217764 () Bool)

(declare-fun nullableFct!2871 (Regex!17832) Bool)

(assert (=> d!2217764 (= (nullable!7472 (regOne!36176 r!11554)) (nullableFct!2871 (regOne!36176 r!11554)))))

(declare-fun bs!1883902 () Bool)

(assert (= bs!1883902 d!2217764))

(declare-fun m!7823496 () Bool)

(assert (=> bs!1883902 m!7823496))

(assert (=> b!7095742 d!2217764))

(declare-fun b!7095896 () Bool)

(declare-fun c!1324176 () Bool)

(declare-fun e!4265443 () Bool)

(assert (=> b!7095896 (= c!1324176 e!4265443)))

(declare-fun res!2897704 () Bool)

(assert (=> b!7095896 (=> (not res!2897704) (not e!4265443))))

(assert (=> b!7095896 (= res!2897704 (is-Concat!26677 (regOne!36176 r!11554)))))

(declare-fun e!4265447 () (Set Context!13656))

(declare-fun e!4265445 () (Set Context!13656))

(assert (=> b!7095896 (= e!4265447 e!4265445)))

(declare-fun d!2217766 () Bool)

(declare-fun c!1324175 () Bool)

(assert (=> d!2217766 (= c!1324175 (and (is-ElementMatch!17832 (regOne!36176 r!11554)) (= (c!1324143 (regOne!36176 r!11554)) a!1901)))))

(declare-fun e!4265442 () (Set Context!13656))

(assert (=> d!2217766 (= (derivationStepZipperDown!2383 (regOne!36176 r!11554) (Context!13657 ($colon$colon!2727 lt!2557231 (regTwo!36176 r!11554))) a!1901) e!4265442)))

(declare-fun bm!645718 () Bool)

(declare-fun call!645724 () (Set Context!13656))

(declare-fun call!645726 () (Set Context!13656))

(assert (=> bm!645718 (= call!645724 call!645726)))

(declare-fun bm!645719 () Bool)

(declare-fun call!645723 () List!68795)

(declare-fun call!645727 () (Set Context!13656))

(declare-fun c!1324172 () Bool)

(assert (=> bm!645719 (= call!645727 (derivationStepZipperDown!2383 (ite c!1324172 (regTwo!36177 (regOne!36176 r!11554)) (regOne!36176 (regOne!36176 r!11554))) (ite c!1324172 (Context!13657 ($colon$colon!2727 lt!2557231 (regTwo!36176 r!11554))) (Context!13657 call!645723)) a!1901))))

(declare-fun b!7095897 () Bool)

(assert (=> b!7095897 (= e!4265442 e!4265447)))

(assert (=> b!7095897 (= c!1324172 (is-Union!17832 (regOne!36176 r!11554)))))

(declare-fun b!7095898 () Bool)

(assert (=> b!7095898 (= e!4265443 (nullable!7472 (regOne!36176 (regOne!36176 r!11554))))))

(declare-fun b!7095899 () Bool)

(declare-fun c!1324174 () Bool)

(assert (=> b!7095899 (= c!1324174 (is-Star!17832 (regOne!36176 r!11554)))))

(declare-fun e!4265446 () (Set Context!13656))

(declare-fun e!4265444 () (Set Context!13656))

(assert (=> b!7095899 (= e!4265446 e!4265444)))

(declare-fun c!1324173 () Bool)

(declare-fun bm!645720 () Bool)

(declare-fun call!645728 () List!68795)

(assert (=> bm!645720 (= call!645726 (derivationStepZipperDown!2383 (ite c!1324172 (regOne!36177 (regOne!36176 r!11554)) (ite c!1324176 (regTwo!36176 (regOne!36176 r!11554)) (ite c!1324173 (regOne!36176 (regOne!36176 r!11554)) (reg!18161 (regOne!36176 r!11554))))) (ite (or c!1324172 c!1324176) (Context!13657 ($colon$colon!2727 lt!2557231 (regTwo!36176 r!11554))) (Context!13657 call!645728)) a!1901))))

(declare-fun b!7095900 () Bool)

(declare-fun call!645725 () (Set Context!13656))

(assert (=> b!7095900 (= e!4265444 call!645725)))

(declare-fun b!7095901 () Bool)

(assert (=> b!7095901 (= e!4265445 e!4265446)))

(assert (=> b!7095901 (= c!1324173 (is-Concat!26677 (regOne!36176 r!11554)))))

(declare-fun b!7095902 () Bool)

(assert (=> b!7095902 (= e!4265444 (as set.empty (Set Context!13656)))))

(declare-fun bm!645721 () Bool)

(assert (=> bm!645721 (= call!645728 call!645723)))

(declare-fun bm!645722 () Bool)

(assert (=> bm!645722 (= call!645725 call!645724)))

(declare-fun b!7095903 () Bool)

(assert (=> b!7095903 (= e!4265447 (set.union call!645726 call!645727))))

(declare-fun b!7095904 () Bool)

(assert (=> b!7095904 (= e!4265442 (set.insert (Context!13657 ($colon$colon!2727 lt!2557231 (regTwo!36176 r!11554))) (as set.empty (Set Context!13656))))))

(declare-fun b!7095905 () Bool)

(assert (=> b!7095905 (= e!4265445 (set.union call!645727 call!645724))))

(declare-fun bm!645723 () Bool)

(assert (=> bm!645723 (= call!645723 ($colon$colon!2727 (exprs!7328 (Context!13657 ($colon$colon!2727 lt!2557231 (regTwo!36176 r!11554)))) (ite (or c!1324176 c!1324173) (regTwo!36176 (regOne!36176 r!11554)) (regOne!36176 r!11554))))))

(declare-fun b!7095906 () Bool)

(assert (=> b!7095906 (= e!4265446 call!645725)))

(assert (= (and d!2217766 c!1324175) b!7095904))

(assert (= (and d!2217766 (not c!1324175)) b!7095897))

(assert (= (and b!7095897 c!1324172) b!7095903))

(assert (= (and b!7095897 (not c!1324172)) b!7095896))

(assert (= (and b!7095896 res!2897704) b!7095898))

(assert (= (and b!7095896 c!1324176) b!7095905))

(assert (= (and b!7095896 (not c!1324176)) b!7095901))

(assert (= (and b!7095901 c!1324173) b!7095906))

(assert (= (and b!7095901 (not c!1324173)) b!7095899))

(assert (= (and b!7095899 c!1324174) b!7095900))

(assert (= (and b!7095899 (not c!1324174)) b!7095902))

(assert (= (or b!7095906 b!7095900) bm!645721))

(assert (= (or b!7095906 b!7095900) bm!645722))

(assert (= (or b!7095905 bm!645722) bm!645718))

(assert (= (or b!7095905 bm!645721) bm!645723))

(assert (= (or b!7095903 b!7095905) bm!645719))

(assert (= (or b!7095903 bm!645718) bm!645720))

(declare-fun m!7823514 () Bool)

(assert (=> b!7095904 m!7823514))

(declare-fun m!7823516 () Bool)

(assert (=> bm!645719 m!7823516))

(declare-fun m!7823518 () Bool)

(assert (=> b!7095898 m!7823518))

(declare-fun m!7823520 () Bool)

(assert (=> bm!645720 m!7823520))

(declare-fun m!7823522 () Bool)

(assert (=> bm!645723 m!7823522))

(assert (=> b!7095741 d!2217766))

(declare-fun d!2217776 () Bool)

(assert (=> d!2217776 (= ($colon$colon!2727 lt!2557231 (regTwo!36176 r!11554)) (Cons!68671 (regTwo!36176 r!11554) lt!2557231))))

(assert (=> b!7095741 d!2217776))

(declare-fun b!7095907 () Bool)

(declare-fun c!1324181 () Bool)

(declare-fun e!4265449 () Bool)

(assert (=> b!7095907 (= c!1324181 e!4265449)))

(declare-fun res!2897705 () Bool)

(assert (=> b!7095907 (=> (not res!2897705) (not e!4265449))))

(assert (=> b!7095907 (= res!2897705 (is-Concat!26677 r!11554))))

(declare-fun e!4265453 () (Set Context!13656))

(declare-fun e!4265451 () (Set Context!13656))

(assert (=> b!7095907 (= e!4265453 e!4265451)))

(declare-fun d!2217778 () Bool)

(declare-fun c!1324180 () Bool)

(assert (=> d!2217778 (= c!1324180 (and (is-ElementMatch!17832 r!11554) (= (c!1324143 r!11554) a!1901)))))

(declare-fun e!4265448 () (Set Context!13656))

(assert (=> d!2217778 (= (derivationStepZipperDown!2383 r!11554 (Context!13657 lt!2557231) a!1901) e!4265448)))

(declare-fun bm!645724 () Bool)

(declare-fun call!645730 () (Set Context!13656))

(declare-fun call!645732 () (Set Context!13656))

(assert (=> bm!645724 (= call!645730 call!645732)))

(declare-fun call!645729 () List!68795)

(declare-fun bm!645725 () Bool)

(declare-fun c!1324177 () Bool)

(declare-fun call!645733 () (Set Context!13656))

(assert (=> bm!645725 (= call!645733 (derivationStepZipperDown!2383 (ite c!1324177 (regTwo!36177 r!11554) (regOne!36176 r!11554)) (ite c!1324177 (Context!13657 lt!2557231) (Context!13657 call!645729)) a!1901))))

(declare-fun b!7095908 () Bool)

(assert (=> b!7095908 (= e!4265448 e!4265453)))

(assert (=> b!7095908 (= c!1324177 (is-Union!17832 r!11554))))

(declare-fun b!7095909 () Bool)

(assert (=> b!7095909 (= e!4265449 (nullable!7472 (regOne!36176 r!11554)))))

(declare-fun b!7095910 () Bool)

(declare-fun c!1324179 () Bool)

(assert (=> b!7095910 (= c!1324179 (is-Star!17832 r!11554))))

(declare-fun e!4265452 () (Set Context!13656))

(declare-fun e!4265450 () (Set Context!13656))

(assert (=> b!7095910 (= e!4265452 e!4265450)))

(declare-fun call!645734 () List!68795)

(declare-fun c!1324178 () Bool)

(declare-fun bm!645726 () Bool)

(assert (=> bm!645726 (= call!645732 (derivationStepZipperDown!2383 (ite c!1324177 (regOne!36177 r!11554) (ite c!1324181 (regTwo!36176 r!11554) (ite c!1324178 (regOne!36176 r!11554) (reg!18161 r!11554)))) (ite (or c!1324177 c!1324181) (Context!13657 lt!2557231) (Context!13657 call!645734)) a!1901))))

(declare-fun b!7095911 () Bool)

(declare-fun call!645731 () (Set Context!13656))

(assert (=> b!7095911 (= e!4265450 call!645731)))

(declare-fun b!7095912 () Bool)

(assert (=> b!7095912 (= e!4265451 e!4265452)))

(assert (=> b!7095912 (= c!1324178 (is-Concat!26677 r!11554))))

(declare-fun b!7095913 () Bool)

(assert (=> b!7095913 (= e!4265450 (as set.empty (Set Context!13656)))))

(declare-fun bm!645727 () Bool)

(assert (=> bm!645727 (= call!645734 call!645729)))

(declare-fun bm!645728 () Bool)

(assert (=> bm!645728 (= call!645731 call!645730)))

(declare-fun b!7095914 () Bool)

(assert (=> b!7095914 (= e!4265453 (set.union call!645732 call!645733))))

(declare-fun b!7095915 () Bool)

(assert (=> b!7095915 (= e!4265448 (set.insert (Context!13657 lt!2557231) (as set.empty (Set Context!13656))))))

(declare-fun b!7095916 () Bool)

(assert (=> b!7095916 (= e!4265451 (set.union call!645733 call!645730))))

(declare-fun bm!645729 () Bool)

(assert (=> bm!645729 (= call!645729 ($colon$colon!2727 (exprs!7328 (Context!13657 lt!2557231)) (ite (or c!1324181 c!1324178) (regTwo!36176 r!11554) r!11554)))))

(declare-fun b!7095917 () Bool)

(assert (=> b!7095917 (= e!4265452 call!645731)))

(assert (= (and d!2217778 c!1324180) b!7095915))

(assert (= (and d!2217778 (not c!1324180)) b!7095908))

(assert (= (and b!7095908 c!1324177) b!7095914))

(assert (= (and b!7095908 (not c!1324177)) b!7095907))

(assert (= (and b!7095907 res!2897705) b!7095909))

(assert (= (and b!7095907 c!1324181) b!7095916))

(assert (= (and b!7095907 (not c!1324181)) b!7095912))

(assert (= (and b!7095912 c!1324178) b!7095917))

(assert (= (and b!7095912 (not c!1324178)) b!7095910))

(assert (= (and b!7095910 c!1324179) b!7095911))

(assert (= (and b!7095910 (not c!1324179)) b!7095913))

(assert (= (or b!7095917 b!7095911) bm!645727))

(assert (= (or b!7095917 b!7095911) bm!645728))

(assert (= (or b!7095916 bm!645728) bm!645724))

(assert (= (or b!7095916 bm!645727) bm!645729))

(assert (= (or b!7095914 b!7095916) bm!645725))

(assert (= (or b!7095914 bm!645724) bm!645726))

(declare-fun m!7823524 () Bool)

(assert (=> b!7095915 m!7823524))

(declare-fun m!7823526 () Bool)

(assert (=> bm!645725 m!7823526))

(assert (=> b!7095909 m!7823426))

(declare-fun m!7823528 () Bool)

(assert (=> bm!645726 m!7823528))

(declare-fun m!7823530 () Bool)

(assert (=> bm!645729 m!7823530))

(assert (=> b!7095741 d!2217778))

(declare-fun c!1324183 () Bool)

(declare-fun c!1324182 () Bool)

(declare-fun call!645736 () Bool)

(declare-fun bm!645730 () Bool)

(assert (=> bm!645730 (= call!645736 (validRegex!9107 (ite c!1324182 (reg!18161 r!11554) (ite c!1324183 (regTwo!36177 r!11554) (regOne!36176 r!11554)))))))

(declare-fun b!7095918 () Bool)

(declare-fun e!4265458 () Bool)

(declare-fun e!4265456 () Bool)

(assert (=> b!7095918 (= e!4265458 e!4265456)))

(assert (=> b!7095918 (= c!1324182 (is-Star!17832 r!11554))))

(declare-fun b!7095919 () Bool)

(declare-fun res!2897709 () Bool)

(declare-fun e!4265454 () Bool)

(assert (=> b!7095919 (=> res!2897709 e!4265454)))

(assert (=> b!7095919 (= res!2897709 (not (is-Concat!26677 r!11554)))))

(declare-fun e!4265460 () Bool)

(assert (=> b!7095919 (= e!4265460 e!4265454)))

(declare-fun bm!645731 () Bool)

(declare-fun call!645737 () Bool)

(assert (=> bm!645731 (= call!645737 (validRegex!9107 (ite c!1324183 (regOne!36177 r!11554) (regTwo!36176 r!11554))))))

(declare-fun b!7095920 () Bool)

(declare-fun e!4265457 () Bool)

(assert (=> b!7095920 (= e!4265454 e!4265457)))

(declare-fun res!2897708 () Bool)

(assert (=> b!7095920 (=> (not res!2897708) (not e!4265457))))

(declare-fun call!645735 () Bool)

(assert (=> b!7095920 (= res!2897708 call!645735)))

(declare-fun b!7095921 () Bool)

(assert (=> b!7095921 (= e!4265456 e!4265460)))

(assert (=> b!7095921 (= c!1324183 (is-Union!17832 r!11554))))

(declare-fun b!7095923 () Bool)

(declare-fun e!4265459 () Bool)

(assert (=> b!7095923 (= e!4265459 call!645735)))

(declare-fun b!7095924 () Bool)

(declare-fun res!2897706 () Bool)

(assert (=> b!7095924 (=> (not res!2897706) (not e!4265459))))

(assert (=> b!7095924 (= res!2897706 call!645737)))

(assert (=> b!7095924 (= e!4265460 e!4265459)))

(declare-fun b!7095925 () Bool)

(assert (=> b!7095925 (= e!4265457 call!645737)))

(declare-fun b!7095926 () Bool)

(declare-fun e!4265455 () Bool)

(assert (=> b!7095926 (= e!4265456 e!4265455)))

(declare-fun res!2897707 () Bool)

(assert (=> b!7095926 (= res!2897707 (not (nullable!7472 (reg!18161 r!11554))))))

(assert (=> b!7095926 (=> (not res!2897707) (not e!4265455))))

(declare-fun bm!645732 () Bool)

(assert (=> bm!645732 (= call!645735 call!645736)))

(declare-fun d!2217780 () Bool)

(declare-fun res!2897710 () Bool)

(assert (=> d!2217780 (=> res!2897710 e!4265458)))

(assert (=> d!2217780 (= res!2897710 (is-ElementMatch!17832 r!11554))))

(assert (=> d!2217780 (= (validRegex!9107 r!11554) e!4265458)))

(declare-fun b!7095922 () Bool)

(assert (=> b!7095922 (= e!4265455 call!645736)))

(assert (= (and d!2217780 (not res!2897710)) b!7095918))

(assert (= (and b!7095918 c!1324182) b!7095926))

(assert (= (and b!7095918 (not c!1324182)) b!7095921))

(assert (= (and b!7095926 res!2897707) b!7095922))

(assert (= (and b!7095921 c!1324183) b!7095924))

(assert (= (and b!7095921 (not c!1324183)) b!7095919))

(assert (= (and b!7095924 res!2897706) b!7095923))

(assert (= (and b!7095919 (not res!2897709)) b!7095920))

(assert (= (and b!7095920 res!2897708) b!7095925))

(assert (= (or b!7095924 b!7095925) bm!645731))

(assert (= (or b!7095923 b!7095920) bm!645732))

(assert (= (or b!7095922 bm!645732) bm!645730))

(declare-fun m!7823532 () Bool)

(assert (=> bm!645730 m!7823532))

(declare-fun m!7823534 () Bool)

(assert (=> bm!645731 m!7823534))

(declare-fun m!7823536 () Bool)

(assert (=> b!7095926 m!7823536))

(assert (=> start!690710 d!2217780))

(declare-fun bs!1883908 () Bool)

(declare-fun d!2217782 () Bool)

(assert (= bs!1883908 (and d!2217782 b!7095749)))

(declare-fun lambda!430456 () Int)

(assert (=> bs!1883908 (= lambda!430456 lambda!430438)))

(assert (=> d!2217782 (= (inv!87446 c!9994) (forall!16754 (exprs!7328 c!9994) lambda!430456))))

(declare-fun bs!1883909 () Bool)

(assert (= bs!1883909 d!2217782))

(declare-fun m!7823538 () Bool)

(assert (=> bs!1883909 m!7823538))

(assert (=> start!690710 d!2217782))

(declare-fun bs!1883910 () Bool)

(declare-fun d!2217784 () Bool)

(assert (= bs!1883910 (and d!2217784 b!7095749)))

(declare-fun lambda!430457 () Int)

(assert (=> bs!1883910 (= lambda!430457 lambda!430438)))

(declare-fun bs!1883911 () Bool)

(assert (= bs!1883911 (and d!2217784 d!2217782)))

(assert (=> bs!1883911 (= lambda!430457 lambda!430456)))

(assert (=> d!2217784 (= (inv!87446 auxCtx!45) (forall!16754 (exprs!7328 auxCtx!45) lambda!430457))))

(declare-fun bs!1883912 () Bool)

(assert (= bs!1883912 d!2217784))

(declare-fun m!7823540 () Bool)

(assert (=> bs!1883912 m!7823540))

(assert (=> start!690710 d!2217784))

(declare-fun bs!1883913 () Bool)

(declare-fun d!2217786 () Bool)

(assert (= bs!1883913 (and d!2217786 b!7095749)))

(declare-fun lambda!430460 () Int)

(assert (=> bs!1883913 (= lambda!430460 lambda!430438)))

(declare-fun bs!1883914 () Bool)

(assert (= bs!1883914 (and d!2217786 d!2217782)))

(assert (=> bs!1883914 (= lambda!430460 lambda!430456)))

(declare-fun bs!1883915 () Bool)

(assert (= bs!1883915 (and d!2217786 d!2217784)))

(assert (=> bs!1883915 (= lambda!430460 lambda!430457)))

(assert (=> d!2217786 (= (derivationStepZipperDown!2383 (regOne!36176 r!11554) (Context!13657 (++!15996 (exprs!7328 lt!2557233) (exprs!7328 auxCtx!45))) a!1901) (appendTo!889 (derivationStepZipperDown!2383 (regOne!36176 r!11554) lt!2557233 a!1901) auxCtx!45))))

(declare-fun lt!2557277 () Unit!162347)

(assert (=> d!2217786 (= lt!2557277 (lemmaConcatPreservesForall!1127 (exprs!7328 lt!2557233) (exprs!7328 auxCtx!45) lambda!430460))))

(declare-fun lt!2557276 () Unit!162347)

(declare-fun choose!54714 (Context!13656 Regex!17832 C!35934 Context!13656) Unit!162347)

(assert (=> d!2217786 (= lt!2557276 (choose!54714 lt!2557233 (regOne!36176 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217786 (validRegex!9107 (regOne!36176 r!11554))))

(assert (=> d!2217786 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!197 lt!2557233 (regOne!36176 r!11554) a!1901 auxCtx!45) lt!2557276)))

(declare-fun bs!1883916 () Bool)

(assert (= bs!1883916 d!2217786))

(declare-fun m!7823556 () Bool)

(assert (=> bs!1883916 m!7823556))

(declare-fun m!7823558 () Bool)

(assert (=> bs!1883916 m!7823558))

(declare-fun m!7823560 () Bool)

(assert (=> bs!1883916 m!7823560))

(assert (=> bs!1883916 m!7823412))

(assert (=> bs!1883916 m!7823414))

(assert (=> bs!1883916 m!7823412))

(declare-fun m!7823562 () Bool)

(assert (=> bs!1883916 m!7823562))

(declare-fun m!7823564 () Bool)

(assert (=> bs!1883916 m!7823564))

(assert (=> b!7095747 d!2217786))

(declare-fun d!2217790 () Bool)

(assert (=> d!2217790 true))

(declare-fun lambda!430465 () Int)

(declare-fun map!16179 ((Set Context!13656) Int) (Set Context!13656))

(assert (=> d!2217790 (= (appendTo!889 (derivationStepZipperDown!2383 (regOne!36176 r!11554) lt!2557233 a!1901) auxCtx!45) (map!16179 (derivationStepZipperDown!2383 (regOne!36176 r!11554) lt!2557233 a!1901) lambda!430465))))

(declare-fun bs!1883918 () Bool)

(assert (= bs!1883918 d!2217790))

(assert (=> bs!1883918 m!7823412))

(declare-fun m!7823570 () Bool)

(assert (=> bs!1883918 m!7823570))

(assert (=> b!7095747 d!2217790))

(declare-fun bs!1883919 () Bool)

(declare-fun d!2217794 () Bool)

(assert (= bs!1883919 (and d!2217794 d!2217790)))

(declare-fun lambda!430466 () Int)

(assert (=> bs!1883919 (= lambda!430466 lambda!430465)))

(assert (=> d!2217794 true))

(assert (=> d!2217794 (= (appendTo!889 (derivationStepZipperDown!2383 r!11554 c!9994 a!1901) auxCtx!45) (map!16179 (derivationStepZipperDown!2383 r!11554 c!9994 a!1901) lambda!430466))))

(declare-fun bs!1883920 () Bool)

(assert (= bs!1883920 d!2217794))

(assert (=> bs!1883920 m!7823408))

(declare-fun m!7823572 () Bool)

(assert (=> bs!1883920 m!7823572))

(assert (=> b!7095747 d!2217794))

(declare-fun d!2217796 () Bool)

(assert (=> d!2217796 (forall!16754 (++!15996 lt!2557229 (exprs!7328 auxCtx!45)) lambda!430438)))

(declare-fun lt!2557283 () Unit!162347)

(assert (=> d!2217796 (= lt!2557283 (choose!54713 lt!2557229 (exprs!7328 auxCtx!45) lambda!430438))))

(assert (=> d!2217796 (forall!16754 lt!2557229 lambda!430438)))

(assert (=> d!2217796 (= (lemmaConcatPreservesForall!1127 lt!2557229 (exprs!7328 auxCtx!45) lambda!430438) lt!2557283)))

(declare-fun bs!1883921 () Bool)

(assert (= bs!1883921 d!2217796))

(assert (=> bs!1883921 m!7823420))

(assert (=> bs!1883921 m!7823420))

(declare-fun m!7823574 () Bool)

(assert (=> bs!1883921 m!7823574))

(declare-fun m!7823576 () Bool)

(assert (=> bs!1883921 m!7823576))

(declare-fun m!7823578 () Bool)

(assert (=> bs!1883921 m!7823578))

(assert (=> b!7095747 d!2217796))

(assert (=> b!7095747 d!2217760))

(declare-fun d!2217798 () Bool)

(assert (=> d!2217798 (= ($colon$colon!2727 (exprs!7328 c!9994) (regTwo!36176 r!11554)) (Cons!68671 (regTwo!36176 r!11554) (exprs!7328 c!9994)))))

(assert (=> b!7095747 d!2217798))

(declare-fun b!7095945 () Bool)

(declare-fun c!1324193 () Bool)

(declare-fun e!4265472 () Bool)

(assert (=> b!7095945 (= c!1324193 e!4265472)))

(declare-fun res!2897721 () Bool)

(assert (=> b!7095945 (=> (not res!2897721) (not e!4265472))))

(assert (=> b!7095945 (= res!2897721 (is-Concat!26677 r!11554))))

(declare-fun e!4265476 () (Set Context!13656))

(declare-fun e!4265474 () (Set Context!13656))

(assert (=> b!7095945 (= e!4265476 e!4265474)))

(declare-fun d!2217800 () Bool)

(declare-fun c!1324192 () Bool)

(assert (=> d!2217800 (= c!1324192 (and (is-ElementMatch!17832 r!11554) (= (c!1324143 r!11554) a!1901)))))

(declare-fun e!4265471 () (Set Context!13656))

(assert (=> d!2217800 (= (derivationStepZipperDown!2383 r!11554 c!9994 a!1901) e!4265471)))

(declare-fun bm!645733 () Bool)

(declare-fun call!645739 () (Set Context!13656))

(declare-fun call!645741 () (Set Context!13656))

(assert (=> bm!645733 (= call!645739 call!645741)))

(declare-fun bm!645734 () Bool)

(declare-fun call!645742 () (Set Context!13656))

(declare-fun call!645738 () List!68795)

(declare-fun c!1324189 () Bool)

(assert (=> bm!645734 (= call!645742 (derivationStepZipperDown!2383 (ite c!1324189 (regTwo!36177 r!11554) (regOne!36176 r!11554)) (ite c!1324189 c!9994 (Context!13657 call!645738)) a!1901))))

(declare-fun b!7095946 () Bool)

(assert (=> b!7095946 (= e!4265471 e!4265476)))

(assert (=> b!7095946 (= c!1324189 (is-Union!17832 r!11554))))

(declare-fun b!7095947 () Bool)

(assert (=> b!7095947 (= e!4265472 (nullable!7472 (regOne!36176 r!11554)))))

(declare-fun b!7095948 () Bool)

(declare-fun c!1324191 () Bool)

(assert (=> b!7095948 (= c!1324191 (is-Star!17832 r!11554))))

(declare-fun e!4265475 () (Set Context!13656))

(declare-fun e!4265473 () (Set Context!13656))

(assert (=> b!7095948 (= e!4265475 e!4265473)))

(declare-fun call!645743 () List!68795)

(declare-fun bm!645735 () Bool)

(declare-fun c!1324190 () Bool)

(assert (=> bm!645735 (= call!645741 (derivationStepZipperDown!2383 (ite c!1324189 (regOne!36177 r!11554) (ite c!1324193 (regTwo!36176 r!11554) (ite c!1324190 (regOne!36176 r!11554) (reg!18161 r!11554)))) (ite (or c!1324189 c!1324193) c!9994 (Context!13657 call!645743)) a!1901))))

(declare-fun b!7095949 () Bool)

(declare-fun call!645740 () (Set Context!13656))

(assert (=> b!7095949 (= e!4265473 call!645740)))

(declare-fun b!7095950 () Bool)

(assert (=> b!7095950 (= e!4265474 e!4265475)))

(assert (=> b!7095950 (= c!1324190 (is-Concat!26677 r!11554))))

(declare-fun b!7095951 () Bool)

(assert (=> b!7095951 (= e!4265473 (as set.empty (Set Context!13656)))))

(declare-fun bm!645736 () Bool)

(assert (=> bm!645736 (= call!645743 call!645738)))

(declare-fun bm!645737 () Bool)

(assert (=> bm!645737 (= call!645740 call!645739)))

(declare-fun b!7095952 () Bool)

(assert (=> b!7095952 (= e!4265476 (set.union call!645741 call!645742))))

(declare-fun b!7095953 () Bool)

(assert (=> b!7095953 (= e!4265471 (set.insert c!9994 (as set.empty (Set Context!13656))))))

(declare-fun b!7095954 () Bool)

(assert (=> b!7095954 (= e!4265474 (set.union call!645742 call!645739))))

(declare-fun bm!645738 () Bool)

(assert (=> bm!645738 (= call!645738 ($colon$colon!2727 (exprs!7328 c!9994) (ite (or c!1324193 c!1324190) (regTwo!36176 r!11554) r!11554)))))

(declare-fun b!7095955 () Bool)

(assert (=> b!7095955 (= e!4265475 call!645740)))

(assert (= (and d!2217800 c!1324192) b!7095953))

(assert (= (and d!2217800 (not c!1324192)) b!7095946))

(assert (= (and b!7095946 c!1324189) b!7095952))

(assert (= (and b!7095946 (not c!1324189)) b!7095945))

(assert (= (and b!7095945 res!2897721) b!7095947))

(assert (= (and b!7095945 c!1324193) b!7095954))

(assert (= (and b!7095945 (not c!1324193)) b!7095950))

(assert (= (and b!7095950 c!1324190) b!7095955))

(assert (= (and b!7095950 (not c!1324190)) b!7095948))

(assert (= (and b!7095948 c!1324191) b!7095949))

(assert (= (and b!7095948 (not c!1324191)) b!7095951))

(assert (= (or b!7095955 b!7095949) bm!645736))

(assert (= (or b!7095955 b!7095949) bm!645737))

(assert (= (or b!7095954 bm!645737) bm!645733))

(assert (= (or b!7095954 bm!645736) bm!645738))

(assert (= (or b!7095952 b!7095954) bm!645734))

(assert (= (or b!7095952 bm!645733) bm!645735))

(declare-fun m!7823580 () Bool)

(assert (=> b!7095953 m!7823580))

(declare-fun m!7823582 () Bool)

(assert (=> bm!645734 m!7823582))

(assert (=> b!7095947 m!7823426))

(declare-fun m!7823584 () Bool)

(assert (=> bm!645735 m!7823584))

(declare-fun m!7823586 () Bool)

(assert (=> bm!645738 m!7823586))

(assert (=> b!7095747 d!2217800))

(declare-fun b!7095958 () Bool)

(declare-fun c!1324198 () Bool)

(declare-fun e!4265480 () Bool)

(assert (=> b!7095958 (= c!1324198 e!4265480)))

(declare-fun res!2897724 () Bool)

(assert (=> b!7095958 (=> (not res!2897724) (not e!4265480))))

(assert (=> b!7095958 (= res!2897724 (is-Concat!26677 (regOne!36176 r!11554)))))

(declare-fun e!4265484 () (Set Context!13656))

(declare-fun e!4265482 () (Set Context!13656))

(assert (=> b!7095958 (= e!4265484 e!4265482)))

(declare-fun d!2217802 () Bool)

(declare-fun c!1324197 () Bool)

(assert (=> d!2217802 (= c!1324197 (and (is-ElementMatch!17832 (regOne!36176 r!11554)) (= (c!1324143 (regOne!36176 r!11554)) a!1901)))))

(declare-fun e!4265479 () (Set Context!13656))

(assert (=> d!2217802 (= (derivationStepZipperDown!2383 (regOne!36176 r!11554) lt!2557233 a!1901) e!4265479)))

(declare-fun bm!645739 () Bool)

(declare-fun call!645745 () (Set Context!13656))

(declare-fun call!645747 () (Set Context!13656))

(assert (=> bm!645739 (= call!645745 call!645747)))

(declare-fun bm!645740 () Bool)

(declare-fun call!645748 () (Set Context!13656))

(declare-fun c!1324194 () Bool)

(declare-fun call!645744 () List!68795)

(assert (=> bm!645740 (= call!645748 (derivationStepZipperDown!2383 (ite c!1324194 (regTwo!36177 (regOne!36176 r!11554)) (regOne!36176 (regOne!36176 r!11554))) (ite c!1324194 lt!2557233 (Context!13657 call!645744)) a!1901))))

(declare-fun b!7095959 () Bool)

(assert (=> b!7095959 (= e!4265479 e!4265484)))

(assert (=> b!7095959 (= c!1324194 (is-Union!17832 (regOne!36176 r!11554)))))

(declare-fun b!7095960 () Bool)

(assert (=> b!7095960 (= e!4265480 (nullable!7472 (regOne!36176 (regOne!36176 r!11554))))))

(declare-fun b!7095961 () Bool)

(declare-fun c!1324196 () Bool)

(assert (=> b!7095961 (= c!1324196 (is-Star!17832 (regOne!36176 r!11554)))))

(declare-fun e!4265483 () (Set Context!13656))

(declare-fun e!4265481 () (Set Context!13656))

(assert (=> b!7095961 (= e!4265483 e!4265481)))

(declare-fun c!1324195 () Bool)

(declare-fun call!645749 () List!68795)

(declare-fun bm!645741 () Bool)

(assert (=> bm!645741 (= call!645747 (derivationStepZipperDown!2383 (ite c!1324194 (regOne!36177 (regOne!36176 r!11554)) (ite c!1324198 (regTwo!36176 (regOne!36176 r!11554)) (ite c!1324195 (regOne!36176 (regOne!36176 r!11554)) (reg!18161 (regOne!36176 r!11554))))) (ite (or c!1324194 c!1324198) lt!2557233 (Context!13657 call!645749)) a!1901))))

(declare-fun b!7095962 () Bool)

(declare-fun call!645746 () (Set Context!13656))

(assert (=> b!7095962 (= e!4265481 call!645746)))

(declare-fun b!7095963 () Bool)

(assert (=> b!7095963 (= e!4265482 e!4265483)))

(assert (=> b!7095963 (= c!1324195 (is-Concat!26677 (regOne!36176 r!11554)))))

(declare-fun b!7095964 () Bool)

(assert (=> b!7095964 (= e!4265481 (as set.empty (Set Context!13656)))))

(declare-fun bm!645742 () Bool)

(assert (=> bm!645742 (= call!645749 call!645744)))

(declare-fun bm!645743 () Bool)

(assert (=> bm!645743 (= call!645746 call!645745)))

(declare-fun b!7095965 () Bool)

(assert (=> b!7095965 (= e!4265484 (set.union call!645747 call!645748))))

(declare-fun b!7095966 () Bool)

(assert (=> b!7095966 (= e!4265479 (set.insert lt!2557233 (as set.empty (Set Context!13656))))))

(declare-fun b!7095967 () Bool)

(assert (=> b!7095967 (= e!4265482 (set.union call!645748 call!645745))))

(declare-fun bm!645744 () Bool)

(assert (=> bm!645744 (= call!645744 ($colon$colon!2727 (exprs!7328 lt!2557233) (ite (or c!1324198 c!1324195) (regTwo!36176 (regOne!36176 r!11554)) (regOne!36176 r!11554))))))

(declare-fun b!7095968 () Bool)

(assert (=> b!7095968 (= e!4265483 call!645746)))

(assert (= (and d!2217802 c!1324197) b!7095966))

(assert (= (and d!2217802 (not c!1324197)) b!7095959))

(assert (= (and b!7095959 c!1324194) b!7095965))

(assert (= (and b!7095959 (not c!1324194)) b!7095958))

(assert (= (and b!7095958 res!2897724) b!7095960))

(assert (= (and b!7095958 c!1324198) b!7095967))

(assert (= (and b!7095958 (not c!1324198)) b!7095963))

(assert (= (and b!7095963 c!1324195) b!7095968))

(assert (= (and b!7095963 (not c!1324195)) b!7095961))

(assert (= (and b!7095961 c!1324196) b!7095962))

(assert (= (and b!7095961 (not c!1324196)) b!7095964))

(assert (= (or b!7095968 b!7095962) bm!645742))

(assert (= (or b!7095968 b!7095962) bm!645743))

(assert (= (or b!7095967 bm!645743) bm!645739))

(assert (= (or b!7095967 bm!645742) bm!645744))

(assert (= (or b!7095965 b!7095967) bm!645740))

(assert (= (or b!7095965 bm!645739) bm!645741))

(declare-fun m!7823592 () Bool)

(assert (=> b!7095966 m!7823592))

(declare-fun m!7823594 () Bool)

(assert (=> bm!645740 m!7823594))

(assert (=> b!7095960 m!7823518))

(declare-fun m!7823596 () Bool)

(assert (=> bm!645741 m!7823596))

(declare-fun m!7823598 () Bool)

(assert (=> bm!645744 m!7823598))

(assert (=> b!7095747 d!2217802))

(declare-fun d!2217806 () Bool)

(declare-fun e!4265485 () Bool)

(assert (=> d!2217806 e!4265485))

(declare-fun res!2897725 () Bool)

(assert (=> d!2217806 (=> (not res!2897725) (not e!4265485))))

(declare-fun lt!2557284 () List!68795)

(assert (=> d!2217806 (= res!2897725 (= (content!13953 lt!2557284) (set.union (content!13953 lt!2557229) (content!13953 (exprs!7328 auxCtx!45)))))))

(declare-fun e!4265486 () List!68795)

(assert (=> d!2217806 (= lt!2557284 e!4265486)))

(declare-fun c!1324199 () Bool)

(assert (=> d!2217806 (= c!1324199 (is-Nil!68671 lt!2557229))))

(assert (=> d!2217806 (= (++!15996 lt!2557229 (exprs!7328 auxCtx!45)) lt!2557284)))

(declare-fun b!7095972 () Bool)

(assert (=> b!7095972 (= e!4265485 (or (not (= (exprs!7328 auxCtx!45) Nil!68671)) (= lt!2557284 lt!2557229)))))

(declare-fun b!7095971 () Bool)

(declare-fun res!2897726 () Bool)

(assert (=> b!7095971 (=> (not res!2897726) (not e!4265485))))

(assert (=> b!7095971 (= res!2897726 (= (size!41328 lt!2557284) (+ (size!41328 lt!2557229) (size!41328 (exprs!7328 auxCtx!45)))))))

(declare-fun b!7095970 () Bool)

(assert (=> b!7095970 (= e!4265486 (Cons!68671 (h!75119 lt!2557229) (++!15996 (t!382594 lt!2557229) (exprs!7328 auxCtx!45))))))

(declare-fun b!7095969 () Bool)

(assert (=> b!7095969 (= e!4265486 (exprs!7328 auxCtx!45))))

(assert (= (and d!2217806 c!1324199) b!7095969))

(assert (= (and d!2217806 (not c!1324199)) b!7095970))

(assert (= (and d!2217806 res!2897725) b!7095971))

(assert (= (and b!7095971 res!2897726) b!7095972))

(declare-fun m!7823600 () Bool)

(assert (=> d!2217806 m!7823600))

(declare-fun m!7823602 () Bool)

(assert (=> d!2217806 m!7823602))

(assert (=> d!2217806 m!7823478))

(declare-fun m!7823604 () Bool)

(assert (=> b!7095971 m!7823604))

(declare-fun m!7823606 () Bool)

(assert (=> b!7095971 m!7823606))

(assert (=> b!7095971 m!7823484))

(declare-fun m!7823608 () Bool)

(assert (=> b!7095970 m!7823608))

(assert (=> b!7095747 d!2217806))

(declare-fun b!7095973 () Bool)

(declare-fun c!1324204 () Bool)

(declare-fun e!4265488 () Bool)

(assert (=> b!7095973 (= c!1324204 e!4265488)))

(declare-fun res!2897727 () Bool)

(assert (=> b!7095973 (=> (not res!2897727) (not e!4265488))))

(assert (=> b!7095973 (= res!2897727 (is-Concat!26677 (regOne!36176 r!11554)))))

(declare-fun e!4265492 () (Set Context!13656))

(declare-fun e!4265490 () (Set Context!13656))

(assert (=> b!7095973 (= e!4265492 e!4265490)))

(declare-fun d!2217808 () Bool)

(declare-fun c!1324203 () Bool)

(assert (=> d!2217808 (= c!1324203 (and (is-ElementMatch!17832 (regOne!36176 r!11554)) (= (c!1324143 (regOne!36176 r!11554)) a!1901)))))

(declare-fun e!4265487 () (Set Context!13656))

(assert (=> d!2217808 (= (derivationStepZipperDown!2383 (regOne!36176 r!11554) (Context!13657 (++!15996 lt!2557229 (exprs!7328 auxCtx!45))) a!1901) e!4265487)))

(declare-fun bm!645745 () Bool)

(declare-fun call!645751 () (Set Context!13656))

(declare-fun call!645753 () (Set Context!13656))

(assert (=> bm!645745 (= call!645751 call!645753)))

(declare-fun call!645750 () List!68795)

(declare-fun bm!645746 () Bool)

(declare-fun c!1324200 () Bool)

(declare-fun call!645754 () (Set Context!13656))

(assert (=> bm!645746 (= call!645754 (derivationStepZipperDown!2383 (ite c!1324200 (regTwo!36177 (regOne!36176 r!11554)) (regOne!36176 (regOne!36176 r!11554))) (ite c!1324200 (Context!13657 (++!15996 lt!2557229 (exprs!7328 auxCtx!45))) (Context!13657 call!645750)) a!1901))))

(declare-fun b!7095974 () Bool)

(assert (=> b!7095974 (= e!4265487 e!4265492)))

(assert (=> b!7095974 (= c!1324200 (is-Union!17832 (regOne!36176 r!11554)))))

(declare-fun b!7095975 () Bool)

(assert (=> b!7095975 (= e!4265488 (nullable!7472 (regOne!36176 (regOne!36176 r!11554))))))

(declare-fun b!7095976 () Bool)

(declare-fun c!1324202 () Bool)

(assert (=> b!7095976 (= c!1324202 (is-Star!17832 (regOne!36176 r!11554)))))

(declare-fun e!4265491 () (Set Context!13656))

(declare-fun e!4265489 () (Set Context!13656))

(assert (=> b!7095976 (= e!4265491 e!4265489)))

(declare-fun c!1324201 () Bool)

(declare-fun call!645755 () List!68795)

(declare-fun bm!645747 () Bool)

(assert (=> bm!645747 (= call!645753 (derivationStepZipperDown!2383 (ite c!1324200 (regOne!36177 (regOne!36176 r!11554)) (ite c!1324204 (regTwo!36176 (regOne!36176 r!11554)) (ite c!1324201 (regOne!36176 (regOne!36176 r!11554)) (reg!18161 (regOne!36176 r!11554))))) (ite (or c!1324200 c!1324204) (Context!13657 (++!15996 lt!2557229 (exprs!7328 auxCtx!45))) (Context!13657 call!645755)) a!1901))))

(declare-fun b!7095977 () Bool)

(declare-fun call!645752 () (Set Context!13656))

(assert (=> b!7095977 (= e!4265489 call!645752)))

(declare-fun b!7095978 () Bool)

(assert (=> b!7095978 (= e!4265490 e!4265491)))

(assert (=> b!7095978 (= c!1324201 (is-Concat!26677 (regOne!36176 r!11554)))))

(declare-fun b!7095979 () Bool)

(assert (=> b!7095979 (= e!4265489 (as set.empty (Set Context!13656)))))

(declare-fun bm!645748 () Bool)

(assert (=> bm!645748 (= call!645755 call!645750)))

(declare-fun bm!645749 () Bool)

(assert (=> bm!645749 (= call!645752 call!645751)))

(declare-fun b!7095980 () Bool)

(assert (=> b!7095980 (= e!4265492 (set.union call!645753 call!645754))))

(declare-fun b!7095981 () Bool)

(assert (=> b!7095981 (= e!4265487 (set.insert (Context!13657 (++!15996 lt!2557229 (exprs!7328 auxCtx!45))) (as set.empty (Set Context!13656))))))

(declare-fun b!7095982 () Bool)

(assert (=> b!7095982 (= e!4265490 (set.union call!645754 call!645751))))

(declare-fun bm!645750 () Bool)

(assert (=> bm!645750 (= call!645750 ($colon$colon!2727 (exprs!7328 (Context!13657 (++!15996 lt!2557229 (exprs!7328 auxCtx!45)))) (ite (or c!1324204 c!1324201) (regTwo!36176 (regOne!36176 r!11554)) (regOne!36176 r!11554))))))

(declare-fun b!7095983 () Bool)

(assert (=> b!7095983 (= e!4265491 call!645752)))

(assert (= (and d!2217808 c!1324203) b!7095981))

(assert (= (and d!2217808 (not c!1324203)) b!7095974))

(assert (= (and b!7095974 c!1324200) b!7095980))

(assert (= (and b!7095974 (not c!1324200)) b!7095973))

(assert (= (and b!7095973 res!2897727) b!7095975))

(assert (= (and b!7095973 c!1324204) b!7095982))

(assert (= (and b!7095973 (not c!1324204)) b!7095978))

(assert (= (and b!7095978 c!1324201) b!7095983))

(assert (= (and b!7095978 (not c!1324201)) b!7095976))

(assert (= (and b!7095976 c!1324202) b!7095977))

(assert (= (and b!7095976 (not c!1324202)) b!7095979))

(assert (= (or b!7095983 b!7095977) bm!645748))

(assert (= (or b!7095983 b!7095977) bm!645749))

(assert (= (or b!7095982 bm!645749) bm!645745))

(assert (= (or b!7095982 bm!645748) bm!645750))

(assert (= (or b!7095980 b!7095982) bm!645746))

(assert (= (or b!7095980 bm!645745) bm!645747))

(declare-fun m!7823612 () Bool)

(assert (=> b!7095981 m!7823612))

(declare-fun m!7823614 () Bool)

(assert (=> bm!645746 m!7823614))

(assert (=> b!7095975 m!7823518))

(declare-fun m!7823616 () Bool)

(assert (=> bm!645747 m!7823616))

(declare-fun m!7823618 () Bool)

(assert (=> bm!645750 m!7823618))

(assert (=> b!7095747 d!2217808))

(declare-fun e!4265497 () Bool)

(assert (=> b!7095744 (= tp!1949887 e!4265497)))

(declare-fun b!7095999 () Bool)

(declare-fun tp!1949927 () Bool)

(declare-fun tp!1949925 () Bool)

(assert (=> b!7095999 (= e!4265497 (and tp!1949927 tp!1949925))))

(declare-fun b!7095998 () Bool)

(assert (=> b!7095998 (= e!4265497 tp_is_empty!44897)))

(declare-fun b!7096000 () Bool)

(declare-fun tp!1949924 () Bool)

(assert (=> b!7096000 (= e!4265497 tp!1949924)))

(declare-fun b!7096001 () Bool)

(declare-fun tp!1949926 () Bool)

(declare-fun tp!1949923 () Bool)

(assert (=> b!7096001 (= e!4265497 (and tp!1949926 tp!1949923))))

(assert (= (and b!7095744 (is-ElementMatch!17832 (reg!18161 r!11554))) b!7095998))

(assert (= (and b!7095744 (is-Concat!26677 (reg!18161 r!11554))) b!7095999))

(assert (= (and b!7095744 (is-Star!17832 (reg!18161 r!11554))) b!7096000))

(assert (= (and b!7095744 (is-Union!17832 (reg!18161 r!11554))) b!7096001))

(declare-fun b!7096006 () Bool)

(declare-fun e!4265500 () Bool)

(declare-fun tp!1949932 () Bool)

(declare-fun tp!1949933 () Bool)

(assert (=> b!7096006 (= e!4265500 (and tp!1949932 tp!1949933))))

(assert (=> b!7095748 (= tp!1949885 e!4265500)))

(assert (= (and b!7095748 (is-Cons!68671 (exprs!7328 c!9994))) b!7096006))

(declare-fun b!7096007 () Bool)

(declare-fun e!4265501 () Bool)

(declare-fun tp!1949934 () Bool)

(declare-fun tp!1949935 () Bool)

(assert (=> b!7096007 (= e!4265501 (and tp!1949934 tp!1949935))))

(assert (=> b!7095746 (= tp!1949886 e!4265501)))

(assert (= (and b!7095746 (is-Cons!68671 (exprs!7328 auxCtx!45))) b!7096007))

(declare-fun e!4265502 () Bool)

(assert (=> b!7095745 (= tp!1949891 e!4265502)))

(declare-fun b!7096009 () Bool)

(declare-fun tp!1949940 () Bool)

(declare-fun tp!1949938 () Bool)

(assert (=> b!7096009 (= e!4265502 (and tp!1949940 tp!1949938))))

(declare-fun b!7096008 () Bool)

(assert (=> b!7096008 (= e!4265502 tp_is_empty!44897)))

(declare-fun b!7096010 () Bool)

(declare-fun tp!1949937 () Bool)

(assert (=> b!7096010 (= e!4265502 tp!1949937)))

(declare-fun b!7096011 () Bool)

(declare-fun tp!1949939 () Bool)

(declare-fun tp!1949936 () Bool)

(assert (=> b!7096011 (= e!4265502 (and tp!1949939 tp!1949936))))

(assert (= (and b!7095745 (is-ElementMatch!17832 (regOne!36177 r!11554))) b!7096008))

(assert (= (and b!7095745 (is-Concat!26677 (regOne!36177 r!11554))) b!7096009))

(assert (= (and b!7095745 (is-Star!17832 (regOne!36177 r!11554))) b!7096010))

(assert (= (and b!7095745 (is-Union!17832 (regOne!36177 r!11554))) b!7096011))

(declare-fun e!4265503 () Bool)

(assert (=> b!7095745 (= tp!1949888 e!4265503)))

(declare-fun b!7096013 () Bool)

(declare-fun tp!1949945 () Bool)

(declare-fun tp!1949943 () Bool)

(assert (=> b!7096013 (= e!4265503 (and tp!1949945 tp!1949943))))

(declare-fun b!7096012 () Bool)

(assert (=> b!7096012 (= e!4265503 tp_is_empty!44897)))

(declare-fun b!7096014 () Bool)

(declare-fun tp!1949942 () Bool)

(assert (=> b!7096014 (= e!4265503 tp!1949942)))

(declare-fun b!7096015 () Bool)

(declare-fun tp!1949944 () Bool)

(declare-fun tp!1949941 () Bool)

(assert (=> b!7096015 (= e!4265503 (and tp!1949944 tp!1949941))))

(assert (= (and b!7095745 (is-ElementMatch!17832 (regTwo!36177 r!11554))) b!7096012))

(assert (= (and b!7095745 (is-Concat!26677 (regTwo!36177 r!11554))) b!7096013))

(assert (= (and b!7095745 (is-Star!17832 (regTwo!36177 r!11554))) b!7096014))

(assert (= (and b!7095745 (is-Union!17832 (regTwo!36177 r!11554))) b!7096015))

(declare-fun e!4265504 () Bool)

(assert (=> b!7095750 (= tp!1949890 e!4265504)))

(declare-fun b!7096017 () Bool)

(declare-fun tp!1949950 () Bool)

(declare-fun tp!1949948 () Bool)

(assert (=> b!7096017 (= e!4265504 (and tp!1949950 tp!1949948))))

(declare-fun b!7096016 () Bool)

(assert (=> b!7096016 (= e!4265504 tp_is_empty!44897)))

(declare-fun b!7096018 () Bool)

(declare-fun tp!1949947 () Bool)

(assert (=> b!7096018 (= e!4265504 tp!1949947)))

(declare-fun b!7096019 () Bool)

(declare-fun tp!1949949 () Bool)

(declare-fun tp!1949946 () Bool)

(assert (=> b!7096019 (= e!4265504 (and tp!1949949 tp!1949946))))

(assert (= (and b!7095750 (is-ElementMatch!17832 (regOne!36176 r!11554))) b!7096016))

(assert (= (and b!7095750 (is-Concat!26677 (regOne!36176 r!11554))) b!7096017))

(assert (= (and b!7095750 (is-Star!17832 (regOne!36176 r!11554))) b!7096018))

(assert (= (and b!7095750 (is-Union!17832 (regOne!36176 r!11554))) b!7096019))

(declare-fun e!4265505 () Bool)

(assert (=> b!7095750 (= tp!1949889 e!4265505)))

(declare-fun b!7096021 () Bool)

(declare-fun tp!1949955 () Bool)

(declare-fun tp!1949953 () Bool)

(assert (=> b!7096021 (= e!4265505 (and tp!1949955 tp!1949953))))

(declare-fun b!7096020 () Bool)

(assert (=> b!7096020 (= e!4265505 tp_is_empty!44897)))

(declare-fun b!7096022 () Bool)

(declare-fun tp!1949952 () Bool)

(assert (=> b!7096022 (= e!4265505 tp!1949952)))

(declare-fun b!7096023 () Bool)

(declare-fun tp!1949954 () Bool)

(declare-fun tp!1949951 () Bool)

(assert (=> b!7096023 (= e!4265505 (and tp!1949954 tp!1949951))))

(assert (= (and b!7095750 (is-ElementMatch!17832 (regTwo!36176 r!11554))) b!7096020))

(assert (= (and b!7095750 (is-Concat!26677 (regTwo!36176 r!11554))) b!7096021))

(assert (= (and b!7095750 (is-Star!17832 (regTwo!36176 r!11554))) b!7096022))

(assert (= (and b!7095750 (is-Union!17832 (regTwo!36176 r!11554))) b!7096023))

(declare-fun b_lambda!271149 () Bool)

(assert (= b_lambda!271145 (or b!7095749 b_lambda!271149)))

(declare-fun bs!1883923 () Bool)

(declare-fun d!2217814 () Bool)

(assert (= bs!1883923 (and d!2217814 b!7095749)))

(assert (=> bs!1883923 (= (dynLambda!28019 lambda!430438 (h!75119 (exprs!7328 c!9994))) (validRegex!9107 (h!75119 (exprs!7328 c!9994))))))

(declare-fun m!7823630 () Bool)

(assert (=> bs!1883923 m!7823630))

(assert (=> b!7095854 d!2217814))

(push 1)

(assert (not bm!645731))

(assert (not d!2217784))

(assert (not d!2217760))

(assert (not b!7096014))

(assert (not bm!645747))

(assert (not bm!645734))

(assert (not b!7095909))

(assert (not d!2217806))

(assert (not bs!1883923))

(assert (not b!7096009))

(assert (not b!7095819))

(assert (not b!7095848))

(assert (not b!7096022))

(assert (not bm!645738))

(assert (not b!7095999))

(assert (not d!2217796))

(assert (not bm!645744))

(assert (not b!7095970))

(assert (not b!7095898))

(assert (not bm!645725))

(assert (not bm!645720))

(assert (not d!2217764))

(assert (not b!7096019))

(assert (not d!2217758))

(assert (not b!7096023))

(assert (not b!7095855))

(assert (not b!7095847))

(assert (not b!7096000))

(assert (not bm!645726))

(assert (not bm!645729))

(assert (not bm!645740))

(assert (not b!7095971))

(assert (not b!7096021))

(assert (not bm!645691))

(assert (not bm!645735))

(assert (not b!7095960))

(assert (not b!7096015))

(assert (not bm!645730))

(assert (not d!2217790))

(assert (not b!7095975))

(assert (not b!7096010))

(assert (not b!7096017))

(assert (not d!2217782))

(assert (not b!7096006))

(assert (not b!7095947))

(assert (not b!7096001))

(assert (not b!7095926))

(assert (not b_lambda!271149))

(assert (not b!7096018))

(assert tp_is_empty!44897)

(assert (not bm!645741))

(assert (not bm!645723))

(assert (not bm!645719))

(assert (not b!7096007))

(assert (not bm!645746))

(assert (not d!2217786))

(assert (not d!2217794))

(assert (not b!7096011))

(assert (not b!7096013))

(assert (not bm!645692))

(assert (not bm!645750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


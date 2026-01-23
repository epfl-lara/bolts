; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691322 () Bool)

(assert start!691322)

(declare-fun b!7101647 () Bool)

(declare-fun res!2899595 () Bool)

(declare-fun e!4268509 () Bool)

(assert (=> b!7101647 (=> (not res!2899595) (not e!4268509))))

(declare-datatypes ((C!36038 0))(
  ( (C!36039 (val!27725 Int)) )
))
(declare-datatypes ((Regex!17884 0))(
  ( (ElementMatch!17884 (c!1325101 C!36038)) (Concat!26729 (regOne!36280 Regex!17884) (regTwo!36280 Regex!17884)) (EmptyExpr!17884) (Star!17884 (reg!18213 Regex!17884)) (EmptyLang!17884) (Union!17884 (regOne!36281 Regex!17884) (regTwo!36281 Regex!17884)) )
))
(declare-fun r!11554 () Regex!17884)

(assert (=> b!7101647 (= res!2899595 (is-Concat!26729 r!11554))))

(declare-fun res!2899594 () Bool)

(assert (=> start!691322 (=> (not res!2899594) (not e!4268509))))

(declare-fun validRegex!9157 (Regex!17884) Bool)

(assert (=> start!691322 (= res!2899594 (validRegex!9157 r!11554))))

(assert (=> start!691322 e!4268509))

(declare-fun e!4268512 () Bool)

(assert (=> start!691322 e!4268512))

(declare-fun tp_is_empty!45001 () Bool)

(assert (=> start!691322 tp_is_empty!45001))

(declare-datatypes ((List!68845 0))(
  ( (Nil!68721) (Cons!68721 (h!75169 Regex!17884) (t!382658 List!68845)) )
))
(declare-datatypes ((Context!13756 0))(
  ( (Context!13757 (exprs!7378 List!68845)) )
))
(declare-fun c!9994 () Context!13756)

(declare-fun e!4268508 () Bool)

(declare-fun inv!87574 (Context!13756) Bool)

(assert (=> start!691322 (and (inv!87574 c!9994) e!4268508)))

(declare-fun auxCtx!45 () Context!13756)

(declare-fun e!4268507 () Bool)

(assert (=> start!691322 (and (inv!87574 auxCtx!45) e!4268507)))

(declare-fun b!7101648 () Bool)

(declare-fun e!4268511 () Bool)

(declare-fun lt!2558211 () List!68845)

(declare-fun a!1901 () C!36038)

(declare-fun derivationStepZipperDown!2413 (Regex!17884 Context!13756 C!36038) (Set Context!13756))

(declare-fun $colon$colon!2755 (List!68845 Regex!17884) List!68845)

(assert (=> b!7101648 (= e!4268511 (not (= (derivationStepZipperDown!2413 r!11554 (Context!13757 lt!2558211) a!1901) (derivationStepZipperDown!2413 (regOne!36280 r!11554) (Context!13757 ($colon$colon!2755 lt!2558211 (regTwo!36280 r!11554))) a!1901))))))

(declare-fun b!7101649 () Bool)

(declare-fun res!2899593 () Bool)

(assert (=> b!7101649 (=> (not res!2899593) (not e!4268509))))

(declare-fun e!4268510 () Bool)

(assert (=> b!7101649 (= res!2899593 e!4268510)))

(declare-fun res!2899598 () Bool)

(assert (=> b!7101649 (=> res!2899598 e!4268510)))

(assert (=> b!7101649 (= res!2899598 (not (is-Concat!26729 r!11554)))))

(declare-fun b!7101650 () Bool)

(declare-fun tp!1952419 () Bool)

(declare-fun tp!1952421 () Bool)

(assert (=> b!7101650 (= e!4268512 (and tp!1952419 tp!1952421))))

(declare-fun b!7101651 () Bool)

(declare-fun tp!1952420 () Bool)

(assert (=> b!7101651 (= e!4268507 tp!1952420)))

(declare-fun b!7101652 () Bool)

(declare-fun tp!1952422 () Bool)

(assert (=> b!7101652 (= e!4268508 tp!1952422)))

(declare-fun b!7101653 () Bool)

(declare-fun tp!1952417 () Bool)

(declare-fun tp!1952418 () Bool)

(assert (=> b!7101653 (= e!4268512 (and tp!1952417 tp!1952418))))

(declare-fun b!7101654 () Bool)

(declare-fun res!2899597 () Bool)

(assert (=> b!7101654 (=> (not res!2899597) (not e!4268509))))

(assert (=> b!7101654 (= res!2899597 (and (or (not (is-ElementMatch!17884 r!11554)) (not (= (c!1325101 r!11554) a!1901))) (not (is-Union!17884 r!11554))))))

(declare-fun b!7101655 () Bool)

(declare-fun tp!1952423 () Bool)

(assert (=> b!7101655 (= e!4268512 tp!1952423)))

(declare-fun b!7101656 () Bool)

(assert (=> b!7101656 (= e!4268509 e!4268511)))

(declare-fun res!2899596 () Bool)

(assert (=> b!7101656 (=> (not res!2899596) (not e!4268511))))

(assert (=> b!7101656 (= res!2899596 (validRegex!9157 (regTwo!36280 r!11554)))))

(declare-fun ++!16036 (List!68845 List!68845) List!68845)

(assert (=> b!7101656 (= lt!2558211 (++!16036 (exprs!7378 c!9994) (exprs!7378 auxCtx!45)))))

(declare-fun lambda!431090 () Int)

(declare-datatypes ((Unit!162439 0))(
  ( (Unit!162440) )
))
(declare-fun lt!2558213 () Unit!162439)

(declare-fun lemmaConcatPreservesForall!1169 (List!68845 List!68845 Int) Unit!162439)

(assert (=> b!7101656 (= lt!2558213 (lemmaConcatPreservesForall!1169 (exprs!7378 c!9994) (exprs!7378 auxCtx!45) lambda!431090))))

(declare-fun lt!2558212 () Unit!162439)

(assert (=> b!7101656 (= lt!2558212 (lemmaConcatPreservesForall!1169 (exprs!7378 c!9994) (exprs!7378 auxCtx!45) lambda!431090))))

(declare-fun b!7101657 () Bool)

(assert (=> b!7101657 (= e!4268512 tp_is_empty!45001)))

(declare-fun b!7101658 () Bool)

(declare-fun nullable!7522 (Regex!17884) Bool)

(assert (=> b!7101658 (= e!4268510 (not (nullable!7522 (regOne!36280 r!11554))))))

(assert (= (and start!691322 res!2899594) b!7101654))

(assert (= (and b!7101654 res!2899597) b!7101649))

(assert (= (and b!7101649 (not res!2899598)) b!7101658))

(assert (= (and b!7101649 res!2899593) b!7101647))

(assert (= (and b!7101647 res!2899595) b!7101656))

(assert (= (and b!7101656 res!2899596) b!7101648))

(assert (= (and start!691322 (is-ElementMatch!17884 r!11554)) b!7101657))

(assert (= (and start!691322 (is-Concat!26729 r!11554)) b!7101653))

(assert (= (and start!691322 (is-Star!17884 r!11554)) b!7101655))

(assert (= (and start!691322 (is-Union!17884 r!11554)) b!7101650))

(assert (= start!691322 b!7101652))

(assert (= start!691322 b!7101651))

(declare-fun m!7826744 () Bool)

(assert (=> start!691322 m!7826744))

(declare-fun m!7826746 () Bool)

(assert (=> start!691322 m!7826746))

(declare-fun m!7826748 () Bool)

(assert (=> start!691322 m!7826748))

(declare-fun m!7826750 () Bool)

(assert (=> b!7101648 m!7826750))

(declare-fun m!7826752 () Bool)

(assert (=> b!7101648 m!7826752))

(declare-fun m!7826754 () Bool)

(assert (=> b!7101648 m!7826754))

(declare-fun m!7826756 () Bool)

(assert (=> b!7101656 m!7826756))

(declare-fun m!7826758 () Bool)

(assert (=> b!7101656 m!7826758))

(declare-fun m!7826760 () Bool)

(assert (=> b!7101656 m!7826760))

(assert (=> b!7101656 m!7826760))

(declare-fun m!7826762 () Bool)

(assert (=> b!7101658 m!7826762))

(push 1)

(assert (not b!7101653))

(assert (not b!7101651))

(assert (not start!691322))

(assert tp_is_empty!45001)

(assert (not b!7101648))

(assert (not b!7101658))

(assert (not b!7101652))

(assert (not b!7101650))

(assert (not b!7101655))

(assert (not b!7101656))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2218680 () Bool)

(declare-fun res!2899627 () Bool)

(declare-fun e!4268547 () Bool)

(assert (=> d!2218680 (=> res!2899627 e!4268547)))

(assert (=> d!2218680 (= res!2899627 (is-ElementMatch!17884 (regTwo!36280 r!11554)))))

(assert (=> d!2218680 (= (validRegex!9157 (regTwo!36280 r!11554)) e!4268547)))

(declare-fun b!7101713 () Bool)

(declare-fun e!4268546 () Bool)

(declare-fun call!646724 () Bool)

(assert (=> b!7101713 (= e!4268546 call!646724)))

(declare-fun bm!646717 () Bool)

(declare-fun call!646722 () Bool)

(declare-fun c!1325108 () Bool)

(assert (=> bm!646717 (= call!646722 (validRegex!9157 (ite c!1325108 (regTwo!36281 (regTwo!36280 r!11554)) (regOne!36280 (regTwo!36280 r!11554)))))))

(declare-fun bm!646718 () Bool)

(declare-fun call!646723 () Bool)

(assert (=> bm!646718 (= call!646724 call!646723)))

(declare-fun b!7101714 () Bool)

(declare-fun e!4268551 () Bool)

(assert (=> b!7101714 (= e!4268551 call!646722)))

(declare-fun b!7101715 () Bool)

(declare-fun e!4268549 () Bool)

(assert (=> b!7101715 (= e!4268547 e!4268549)))

(declare-fun c!1325107 () Bool)

(assert (=> b!7101715 (= c!1325107 (is-Star!17884 (regTwo!36280 r!11554)))))

(declare-fun b!7101716 () Bool)

(declare-fun res!2899629 () Bool)

(assert (=> b!7101716 (=> (not res!2899629) (not e!4268551))))

(assert (=> b!7101716 (= res!2899629 call!646724)))

(declare-fun e!4268550 () Bool)

(assert (=> b!7101716 (= e!4268550 e!4268551)))

(declare-fun b!7101717 () Bool)

(declare-fun res!2899631 () Bool)

(declare-fun e!4268545 () Bool)

(assert (=> b!7101717 (=> res!2899631 e!4268545)))

(assert (=> b!7101717 (= res!2899631 (not (is-Concat!26729 (regTwo!36280 r!11554))))))

(assert (=> b!7101717 (= e!4268550 e!4268545)))

(declare-fun bm!646719 () Bool)

(assert (=> bm!646719 (= call!646723 (validRegex!9157 (ite c!1325107 (reg!18213 (regTwo!36280 r!11554)) (ite c!1325108 (regOne!36281 (regTwo!36280 r!11554)) (regTwo!36280 (regTwo!36280 r!11554))))))))

(declare-fun b!7101718 () Bool)

(declare-fun e!4268548 () Bool)

(assert (=> b!7101718 (= e!4268549 e!4268548)))

(declare-fun res!2899628 () Bool)

(assert (=> b!7101718 (= res!2899628 (not (nullable!7522 (reg!18213 (regTwo!36280 r!11554)))))))

(assert (=> b!7101718 (=> (not res!2899628) (not e!4268548))))

(declare-fun b!7101719 () Bool)

(assert (=> b!7101719 (= e!4268548 call!646723)))

(declare-fun b!7101720 () Bool)

(assert (=> b!7101720 (= e!4268549 e!4268550)))

(assert (=> b!7101720 (= c!1325108 (is-Union!17884 (regTwo!36280 r!11554)))))

(declare-fun b!7101721 () Bool)

(assert (=> b!7101721 (= e!4268545 e!4268546)))

(declare-fun res!2899630 () Bool)

(assert (=> b!7101721 (=> (not res!2899630) (not e!4268546))))

(assert (=> b!7101721 (= res!2899630 call!646722)))

(assert (= (and d!2218680 (not res!2899627)) b!7101715))

(assert (= (and b!7101715 c!1325107) b!7101718))

(assert (= (and b!7101715 (not c!1325107)) b!7101720))

(assert (= (and b!7101718 res!2899628) b!7101719))

(assert (= (and b!7101720 c!1325108) b!7101716))

(assert (= (and b!7101720 (not c!1325108)) b!7101717))

(assert (= (and b!7101716 res!2899629) b!7101714))

(assert (= (and b!7101717 (not res!2899631)) b!7101721))

(assert (= (and b!7101721 res!2899630) b!7101713))

(assert (= (or b!7101716 b!7101713) bm!646718))

(assert (= (or b!7101714 b!7101721) bm!646717))

(assert (= (or b!7101719 bm!646718) bm!646719))

(declare-fun m!7826784 () Bool)

(assert (=> bm!646717 m!7826784))

(declare-fun m!7826786 () Bool)

(assert (=> bm!646719 m!7826786))

(declare-fun m!7826788 () Bool)

(assert (=> b!7101718 m!7826788))

(assert (=> b!7101656 d!2218680))

(declare-fun b!7101753 () Bool)

(declare-fun e!4268568 () List!68845)

(assert (=> b!7101753 (= e!4268568 (Cons!68721 (h!75169 (exprs!7378 c!9994)) (++!16036 (t!382658 (exprs!7378 c!9994)) (exprs!7378 auxCtx!45))))))

(declare-fun b!7101754 () Bool)

(declare-fun res!2899638 () Bool)

(declare-fun e!4268569 () Bool)

(assert (=> b!7101754 (=> (not res!2899638) (not e!4268569))))

(declare-fun lt!2558225 () List!68845)

(declare-fun size!41350 (List!68845) Int)

(assert (=> b!7101754 (= res!2899638 (= (size!41350 lt!2558225) (+ (size!41350 (exprs!7378 c!9994)) (size!41350 (exprs!7378 auxCtx!45)))))))

(declare-fun b!7101752 () Bool)

(assert (=> b!7101752 (= e!4268568 (exprs!7378 auxCtx!45))))

(declare-fun d!2218684 () Bool)

(assert (=> d!2218684 e!4268569))

(declare-fun res!2899639 () Bool)

(assert (=> d!2218684 (=> (not res!2899639) (not e!4268569))))

(declare-fun content!13975 (List!68845) (Set Regex!17884))

(assert (=> d!2218684 (= res!2899639 (= (content!13975 lt!2558225) (set.union (content!13975 (exprs!7378 c!9994)) (content!13975 (exprs!7378 auxCtx!45)))))))

(assert (=> d!2218684 (= lt!2558225 e!4268568)))

(declare-fun c!1325121 () Bool)

(assert (=> d!2218684 (= c!1325121 (is-Nil!68721 (exprs!7378 c!9994)))))

(assert (=> d!2218684 (= (++!16036 (exprs!7378 c!9994) (exprs!7378 auxCtx!45)) lt!2558225)))

(declare-fun b!7101755 () Bool)

(assert (=> b!7101755 (= e!4268569 (or (not (= (exprs!7378 auxCtx!45) Nil!68721)) (= lt!2558225 (exprs!7378 c!9994))))))

(assert (= (and d!2218684 c!1325121) b!7101752))

(assert (= (and d!2218684 (not c!1325121)) b!7101753))

(assert (= (and d!2218684 res!2899639) b!7101754))

(assert (= (and b!7101754 res!2899638) b!7101755))

(declare-fun m!7826790 () Bool)

(assert (=> b!7101753 m!7826790))

(declare-fun m!7826792 () Bool)

(assert (=> b!7101754 m!7826792))

(declare-fun m!7826794 () Bool)

(assert (=> b!7101754 m!7826794))

(declare-fun m!7826796 () Bool)

(assert (=> b!7101754 m!7826796))

(declare-fun m!7826798 () Bool)

(assert (=> d!2218684 m!7826798))

(declare-fun m!7826800 () Bool)

(assert (=> d!2218684 m!7826800))

(declare-fun m!7826802 () Bool)

(assert (=> d!2218684 m!7826802))

(assert (=> b!7101656 d!2218684))

(declare-fun d!2218686 () Bool)

(declare-fun forall!16788 (List!68845 Int) Bool)

(assert (=> d!2218686 (forall!16788 (++!16036 (exprs!7378 c!9994) (exprs!7378 auxCtx!45)) lambda!431090)))

(declare-fun lt!2558228 () Unit!162439)

(declare-fun choose!54765 (List!68845 List!68845 Int) Unit!162439)

(assert (=> d!2218686 (= lt!2558228 (choose!54765 (exprs!7378 c!9994) (exprs!7378 auxCtx!45) lambda!431090))))

(assert (=> d!2218686 (forall!16788 (exprs!7378 c!9994) lambda!431090)))

(assert (=> d!2218686 (= (lemmaConcatPreservesForall!1169 (exprs!7378 c!9994) (exprs!7378 auxCtx!45) lambda!431090) lt!2558228)))

(declare-fun bs!1884329 () Bool)

(assert (= bs!1884329 d!2218686))

(assert (=> bs!1884329 m!7826758))

(assert (=> bs!1884329 m!7826758))

(declare-fun m!7826804 () Bool)

(assert (=> bs!1884329 m!7826804))

(declare-fun m!7826806 () Bool)

(assert (=> bs!1884329 m!7826806))

(declare-fun m!7826808 () Bool)

(assert (=> bs!1884329 m!7826808))

(assert (=> b!7101656 d!2218686))

(declare-fun d!2218688 () Bool)

(declare-fun nullableFct!2902 (Regex!17884) Bool)

(assert (=> d!2218688 (= (nullable!7522 (regOne!36280 r!11554)) (nullableFct!2902 (regOne!36280 r!11554)))))

(declare-fun bs!1884330 () Bool)

(assert (= bs!1884330 d!2218688))

(declare-fun m!7826810 () Bool)

(assert (=> bs!1884330 m!7826810))

(assert (=> b!7101658 d!2218688))

(declare-fun b!7101789 () Bool)

(declare-fun e!4268591 () (Set Context!13756))

(assert (=> b!7101789 (= e!4268591 (set.insert (Context!13757 lt!2558211) (as set.empty (Set Context!13756))))))

(declare-fun b!7101790 () Bool)

(declare-fun e!4268588 () (Set Context!13756))

(declare-fun call!646759 () (Set Context!13756))

(assert (=> b!7101790 (= e!4268588 call!646759)))

(declare-fun b!7101791 () Bool)

(declare-fun e!4268593 () (Set Context!13756))

(declare-fun call!646756 () (Set Context!13756))

(declare-fun call!646757 () (Set Context!13756))

(assert (=> b!7101791 (= e!4268593 (set.union call!646756 call!646757))))

(declare-fun b!7101792 () Bool)

(declare-fun e!4268589 () Bool)

(assert (=> b!7101792 (= e!4268589 (nullable!7522 (regOne!36280 r!11554)))))

(declare-fun c!1325139 () Bool)

(declare-fun call!646758 () List!68845)

(declare-fun bm!646750 () Bool)

(declare-fun c!1325141 () Bool)

(assert (=> bm!646750 (= call!646758 ($colon$colon!2755 (exprs!7378 (Context!13757 lt!2558211)) (ite (or c!1325139 c!1325141) (regTwo!36280 r!11554) r!11554)))))

(declare-fun b!7101793 () Bool)

(assert (=> b!7101793 (= c!1325139 e!4268589)))

(declare-fun res!2899643 () Bool)

(assert (=> b!7101793 (=> (not res!2899643) (not e!4268589))))

(assert (=> b!7101793 (= res!2899643 (is-Concat!26729 r!11554))))

(declare-fun e!4268592 () (Set Context!13756))

(assert (=> b!7101793 (= e!4268593 e!4268592)))

(declare-fun bm!646752 () Bool)

(declare-fun call!646755 () (Set Context!13756))

(assert (=> bm!646752 (= call!646759 call!646755)))

(declare-fun bm!646753 () Bool)

(assert (=> bm!646753 (= call!646755 call!646757)))

(declare-fun b!7101794 () Bool)

(declare-fun c!1325140 () Bool)

(assert (=> b!7101794 (= c!1325140 (is-Star!17884 r!11554))))

(declare-fun e!4268590 () (Set Context!13756))

(assert (=> b!7101794 (= e!4268588 e!4268590)))

(declare-fun bm!646754 () Bool)

(declare-fun call!646760 () List!68845)

(assert (=> bm!646754 (= call!646760 call!646758)))

(declare-fun b!7101795 () Bool)

(assert (=> b!7101795 (= e!4268592 e!4268588)))

(assert (=> b!7101795 (= c!1325141 (is-Concat!26729 r!11554))))

(declare-fun b!7101796 () Bool)

(assert (=> b!7101796 (= e!4268590 call!646759)))

(declare-fun b!7101797 () Bool)

(assert (=> b!7101797 (= e!4268590 (as set.empty (Set Context!13756)))))

(declare-fun b!7101798 () Bool)

(assert (=> b!7101798 (= e!4268592 (set.union call!646756 call!646755))))

(declare-fun bm!646751 () Bool)

(declare-fun c!1325138 () Bool)

(assert (=> bm!646751 (= call!646756 (derivationStepZipperDown!2413 (ite c!1325138 (regOne!36281 r!11554) (regOne!36280 r!11554)) (ite c!1325138 (Context!13757 lt!2558211) (Context!13757 call!646758)) a!1901))))

(declare-fun d!2218690 () Bool)

(declare-fun c!1325137 () Bool)

(assert (=> d!2218690 (= c!1325137 (and (is-ElementMatch!17884 r!11554) (= (c!1325101 r!11554) a!1901)))))

(assert (=> d!2218690 (= (derivationStepZipperDown!2413 r!11554 (Context!13757 lt!2558211) a!1901) e!4268591)))

(declare-fun b!7101799 () Bool)

(assert (=> b!7101799 (= e!4268591 e!4268593)))

(assert (=> b!7101799 (= c!1325138 (is-Union!17884 r!11554))))

(declare-fun bm!646755 () Bool)

(assert (=> bm!646755 (= call!646757 (derivationStepZipperDown!2413 (ite c!1325138 (regTwo!36281 r!11554) (ite c!1325139 (regTwo!36280 r!11554) (ite c!1325141 (regOne!36280 r!11554) (reg!18213 r!11554)))) (ite (or c!1325138 c!1325139) (Context!13757 lt!2558211) (Context!13757 call!646760)) a!1901))))

(assert (= (and d!2218690 c!1325137) b!7101789))

(assert (= (and d!2218690 (not c!1325137)) b!7101799))

(assert (= (and b!7101799 c!1325138) b!7101791))

(assert (= (and b!7101799 (not c!1325138)) b!7101793))

(assert (= (and b!7101793 res!2899643) b!7101792))

(assert (= (and b!7101793 c!1325139) b!7101798))

(assert (= (and b!7101793 (not c!1325139)) b!7101795))

(assert (= (and b!7101795 c!1325141) b!7101790))

(assert (= (and b!7101795 (not c!1325141)) b!7101794))

(assert (= (and b!7101794 c!1325140) b!7101796))

(assert (= (and b!7101794 (not c!1325140)) b!7101797))

(assert (= (or b!7101790 b!7101796) bm!646754))

(assert (= (or b!7101790 b!7101796) bm!646752))

(assert (= (or b!7101798 bm!646752) bm!646753))

(assert (= (or b!7101798 bm!646754) bm!646750))

(assert (= (or b!7101791 bm!646753) bm!646755))

(assert (= (or b!7101791 b!7101798) bm!646751))

(declare-fun m!7826812 () Bool)

(assert (=> bm!646750 m!7826812))

(assert (=> b!7101792 m!7826762))

(declare-fun m!7826814 () Bool)

(assert (=> bm!646751 m!7826814))

(declare-fun m!7826816 () Bool)

(assert (=> b!7101789 m!7826816))

(declare-fun m!7826818 () Bool)

(assert (=> bm!646755 m!7826818))

(assert (=> b!7101648 d!2218690))

(declare-fun b!7101800 () Bool)

(declare-fun e!4268597 () (Set Context!13756))

(assert (=> b!7101800 (= e!4268597 (set.insert (Context!13757 ($colon$colon!2755 lt!2558211 (regTwo!36280 r!11554))) (as set.empty (Set Context!13756))))))

(declare-fun b!7101801 () Bool)

(declare-fun e!4268594 () (Set Context!13756))

(declare-fun call!646765 () (Set Context!13756))

(assert (=> b!7101801 (= e!4268594 call!646765)))

(declare-fun b!7101802 () Bool)

(declare-fun e!4268599 () (Set Context!13756))

(declare-fun call!646762 () (Set Context!13756))

(declare-fun call!646763 () (Set Context!13756))

(assert (=> b!7101802 (= e!4268599 (set.union call!646762 call!646763))))

(declare-fun b!7101803 () Bool)

(declare-fun e!4268595 () Bool)

(assert (=> b!7101803 (= e!4268595 (nullable!7522 (regOne!36280 (regOne!36280 r!11554))))))

(declare-fun c!1325144 () Bool)

(declare-fun bm!646756 () Bool)

(declare-fun c!1325146 () Bool)

(declare-fun call!646764 () List!68845)

(assert (=> bm!646756 (= call!646764 ($colon$colon!2755 (exprs!7378 (Context!13757 ($colon$colon!2755 lt!2558211 (regTwo!36280 r!11554)))) (ite (or c!1325144 c!1325146) (regTwo!36280 (regOne!36280 r!11554)) (regOne!36280 r!11554))))))

(declare-fun b!7101804 () Bool)

(assert (=> b!7101804 (= c!1325144 e!4268595)))

(declare-fun res!2899644 () Bool)

(assert (=> b!7101804 (=> (not res!2899644) (not e!4268595))))

(assert (=> b!7101804 (= res!2899644 (is-Concat!26729 (regOne!36280 r!11554)))))

(declare-fun e!4268598 () (Set Context!13756))

(assert (=> b!7101804 (= e!4268599 e!4268598)))

(declare-fun bm!646758 () Bool)

(declare-fun call!646761 () (Set Context!13756))

(assert (=> bm!646758 (= call!646765 call!646761)))

(declare-fun bm!646759 () Bool)

(assert (=> bm!646759 (= call!646761 call!646763)))

(declare-fun b!7101805 () Bool)

(declare-fun c!1325145 () Bool)

(assert (=> b!7101805 (= c!1325145 (is-Star!17884 (regOne!36280 r!11554)))))

(declare-fun e!4268596 () (Set Context!13756))

(assert (=> b!7101805 (= e!4268594 e!4268596)))

(declare-fun bm!646760 () Bool)

(declare-fun call!646766 () List!68845)

(assert (=> bm!646760 (= call!646766 call!646764)))

(declare-fun b!7101806 () Bool)

(assert (=> b!7101806 (= e!4268598 e!4268594)))

(assert (=> b!7101806 (= c!1325146 (is-Concat!26729 (regOne!36280 r!11554)))))

(declare-fun b!7101807 () Bool)

(assert (=> b!7101807 (= e!4268596 call!646765)))

(declare-fun b!7101808 () Bool)

(assert (=> b!7101808 (= e!4268596 (as set.empty (Set Context!13756)))))

(declare-fun b!7101809 () Bool)

(assert (=> b!7101809 (= e!4268598 (set.union call!646762 call!646761))))

(declare-fun c!1325143 () Bool)

(declare-fun bm!646757 () Bool)

(assert (=> bm!646757 (= call!646762 (derivationStepZipperDown!2413 (ite c!1325143 (regOne!36281 (regOne!36280 r!11554)) (regOne!36280 (regOne!36280 r!11554))) (ite c!1325143 (Context!13757 ($colon$colon!2755 lt!2558211 (regTwo!36280 r!11554))) (Context!13757 call!646764)) a!1901))))

(declare-fun d!2218692 () Bool)

(declare-fun c!1325142 () Bool)

(assert (=> d!2218692 (= c!1325142 (and (is-ElementMatch!17884 (regOne!36280 r!11554)) (= (c!1325101 (regOne!36280 r!11554)) a!1901)))))

(assert (=> d!2218692 (= (derivationStepZipperDown!2413 (regOne!36280 r!11554) (Context!13757 ($colon$colon!2755 lt!2558211 (regTwo!36280 r!11554))) a!1901) e!4268597)))

(declare-fun b!7101810 () Bool)

(assert (=> b!7101810 (= e!4268597 e!4268599)))

(assert (=> b!7101810 (= c!1325143 (is-Union!17884 (regOne!36280 r!11554)))))

(declare-fun bm!646761 () Bool)

(assert (=> bm!646761 (= call!646763 (derivationStepZipperDown!2413 (ite c!1325143 (regTwo!36281 (regOne!36280 r!11554)) (ite c!1325144 (regTwo!36280 (regOne!36280 r!11554)) (ite c!1325146 (regOne!36280 (regOne!36280 r!11554)) (reg!18213 (regOne!36280 r!11554))))) (ite (or c!1325143 c!1325144) (Context!13757 ($colon$colon!2755 lt!2558211 (regTwo!36280 r!11554))) (Context!13757 call!646766)) a!1901))))

(assert (= (and d!2218692 c!1325142) b!7101800))

(assert (= (and d!2218692 (not c!1325142)) b!7101810))

(assert (= (and b!7101810 c!1325143) b!7101802))

(assert (= (and b!7101810 (not c!1325143)) b!7101804))

(assert (= (and b!7101804 res!2899644) b!7101803))

(assert (= (and b!7101804 c!1325144) b!7101809))

(assert (= (and b!7101804 (not c!1325144)) b!7101806))

(assert (= (and b!7101806 c!1325146) b!7101801))

(assert (= (and b!7101806 (not c!1325146)) b!7101805))

(assert (= (and b!7101805 c!1325145) b!7101807))

(assert (= (and b!7101805 (not c!1325145)) b!7101808))

(assert (= (or b!7101801 b!7101807) bm!646760))

(assert (= (or b!7101801 b!7101807) bm!646758))

(assert (= (or b!7101809 bm!646758) bm!646759))

(assert (= (or b!7101809 bm!646760) bm!646756))

(assert (= (or b!7101802 bm!646759) bm!646761))

(assert (= (or b!7101802 b!7101809) bm!646757))

(declare-fun m!7826828 () Bool)

(assert (=> bm!646756 m!7826828))

(declare-fun m!7826830 () Bool)

(assert (=> b!7101803 m!7826830))

(declare-fun m!7826832 () Bool)

(assert (=> bm!646757 m!7826832))

(declare-fun m!7826834 () Bool)

(assert (=> b!7101800 m!7826834))

(declare-fun m!7826836 () Bool)

(assert (=> bm!646761 m!7826836))

(assert (=> b!7101648 d!2218692))

(declare-fun d!2218696 () Bool)

(assert (=> d!2218696 (= ($colon$colon!2755 lt!2558211 (regTwo!36280 r!11554)) (Cons!68721 (regTwo!36280 r!11554) lt!2558211))))

(assert (=> b!7101648 d!2218696))

(declare-fun d!2218698 () Bool)

(declare-fun res!2899646 () Bool)

(declare-fun e!4268608 () Bool)

(assert (=> d!2218698 (=> res!2899646 e!4268608)))

(assert (=> d!2218698 (= res!2899646 (is-ElementMatch!17884 r!11554))))

(assert (=> d!2218698 (= (validRegex!9157 r!11554) e!4268608)))

(declare-fun b!7101822 () Bool)

(declare-fun e!4268607 () Bool)

(declare-fun call!646775 () Bool)

(assert (=> b!7101822 (= e!4268607 call!646775)))

(declare-fun bm!646768 () Bool)

(declare-fun call!646773 () Bool)

(declare-fun c!1325153 () Bool)

(assert (=> bm!646768 (= call!646773 (validRegex!9157 (ite c!1325153 (regTwo!36281 r!11554) (regOne!36280 r!11554))))))

(declare-fun bm!646769 () Bool)

(declare-fun call!646774 () Bool)

(assert (=> bm!646769 (= call!646775 call!646774)))

(declare-fun b!7101823 () Bool)

(declare-fun e!4268612 () Bool)

(assert (=> b!7101823 (= e!4268612 call!646773)))

(declare-fun b!7101824 () Bool)

(declare-fun e!4268610 () Bool)

(assert (=> b!7101824 (= e!4268608 e!4268610)))

(declare-fun c!1325152 () Bool)

(assert (=> b!7101824 (= c!1325152 (is-Star!17884 r!11554))))

(declare-fun b!7101825 () Bool)

(declare-fun res!2899648 () Bool)

(assert (=> b!7101825 (=> (not res!2899648) (not e!4268612))))

(assert (=> b!7101825 (= res!2899648 call!646775)))

(declare-fun e!4268611 () Bool)

(assert (=> b!7101825 (= e!4268611 e!4268612)))

(declare-fun b!7101826 () Bool)

(declare-fun res!2899650 () Bool)

(declare-fun e!4268606 () Bool)

(assert (=> b!7101826 (=> res!2899650 e!4268606)))

(assert (=> b!7101826 (= res!2899650 (not (is-Concat!26729 r!11554)))))

(assert (=> b!7101826 (= e!4268611 e!4268606)))

(declare-fun bm!646770 () Bool)

(assert (=> bm!646770 (= call!646774 (validRegex!9157 (ite c!1325152 (reg!18213 r!11554) (ite c!1325153 (regOne!36281 r!11554) (regTwo!36280 r!11554)))))))

(declare-fun b!7101827 () Bool)

(declare-fun e!4268609 () Bool)

(assert (=> b!7101827 (= e!4268610 e!4268609)))

(declare-fun res!2899647 () Bool)

(assert (=> b!7101827 (= res!2899647 (not (nullable!7522 (reg!18213 r!11554))))))

(assert (=> b!7101827 (=> (not res!2899647) (not e!4268609))))

(declare-fun b!7101828 () Bool)

(assert (=> b!7101828 (= e!4268609 call!646774)))

(declare-fun b!7101829 () Bool)

(assert (=> b!7101829 (= e!4268610 e!4268611)))

(assert (=> b!7101829 (= c!1325153 (is-Union!17884 r!11554))))

(declare-fun b!7101830 () Bool)

(assert (=> b!7101830 (= e!4268606 e!4268607)))

(declare-fun res!2899649 () Bool)

(assert (=> b!7101830 (=> (not res!2899649) (not e!4268607))))

(assert (=> b!7101830 (= res!2899649 call!646773)))

(assert (= (and d!2218698 (not res!2899646)) b!7101824))

(assert (= (and b!7101824 c!1325152) b!7101827))

(assert (= (and b!7101824 (not c!1325152)) b!7101829))

(assert (= (and b!7101827 res!2899647) b!7101828))

(assert (= (and b!7101829 c!1325153) b!7101825))

(assert (= (and b!7101829 (not c!1325153)) b!7101826))

(assert (= (and b!7101825 res!2899648) b!7101823))

(assert (= (and b!7101826 (not res!2899650)) b!7101830))

(assert (= (and b!7101830 res!2899649) b!7101822))

(assert (= (or b!7101825 b!7101822) bm!646769))

(assert (= (or b!7101823 b!7101830) bm!646768))

(assert (= (or b!7101828 bm!646769) bm!646770))

(declare-fun m!7826838 () Bool)

(assert (=> bm!646768 m!7826838))

(declare-fun m!7826840 () Bool)

(assert (=> bm!646770 m!7826840))

(declare-fun m!7826842 () Bool)

(assert (=> b!7101827 m!7826842))

(assert (=> start!691322 d!2218698))

(declare-fun bs!1884331 () Bool)

(declare-fun d!2218700 () Bool)

(assert (= bs!1884331 (and d!2218700 b!7101656)))

(declare-fun lambda!431098 () Int)

(assert (=> bs!1884331 (= lambda!431098 lambda!431090)))

(assert (=> d!2218700 (= (inv!87574 c!9994) (forall!16788 (exprs!7378 c!9994) lambda!431098))))

(declare-fun bs!1884332 () Bool)

(assert (= bs!1884332 d!2218700))

(declare-fun m!7826854 () Bool)

(assert (=> bs!1884332 m!7826854))

(assert (=> start!691322 d!2218700))

(declare-fun bs!1884333 () Bool)

(declare-fun d!2218706 () Bool)

(assert (= bs!1884333 (and d!2218706 b!7101656)))

(declare-fun lambda!431099 () Int)

(assert (=> bs!1884333 (= lambda!431099 lambda!431090)))

(declare-fun bs!1884334 () Bool)

(assert (= bs!1884334 (and d!2218706 d!2218700)))

(assert (=> bs!1884334 (= lambda!431099 lambda!431098)))

(assert (=> d!2218706 (= (inv!87574 auxCtx!45) (forall!16788 (exprs!7378 auxCtx!45) lambda!431099))))

(declare-fun bs!1884335 () Bool)

(assert (= bs!1884335 d!2218706))

(declare-fun m!7826856 () Bool)

(assert (=> bs!1884335 m!7826856))

(assert (=> start!691322 d!2218706))

(declare-fun b!7101843 () Bool)

(declare-fun e!4268615 () Bool)

(declare-fun tp!1952458 () Bool)

(assert (=> b!7101843 (= e!4268615 tp!1952458)))

(declare-fun b!7101841 () Bool)

(assert (=> b!7101841 (= e!4268615 tp_is_empty!45001)))

(declare-fun b!7101842 () Bool)

(declare-fun tp!1952459 () Bool)

(declare-fun tp!1952456 () Bool)

(assert (=> b!7101842 (= e!4268615 (and tp!1952459 tp!1952456))))

(assert (=> b!7101650 (= tp!1952419 e!4268615)))

(declare-fun b!7101844 () Bool)

(declare-fun tp!1952455 () Bool)

(declare-fun tp!1952457 () Bool)

(assert (=> b!7101844 (= e!4268615 (and tp!1952455 tp!1952457))))

(assert (= (and b!7101650 (is-ElementMatch!17884 (regOne!36281 r!11554))) b!7101841))

(assert (= (and b!7101650 (is-Concat!26729 (regOne!36281 r!11554))) b!7101842))

(assert (= (and b!7101650 (is-Star!17884 (regOne!36281 r!11554))) b!7101843))

(assert (= (and b!7101650 (is-Union!17884 (regOne!36281 r!11554))) b!7101844))

(declare-fun b!7101847 () Bool)

(declare-fun e!4268616 () Bool)

(declare-fun tp!1952463 () Bool)

(assert (=> b!7101847 (= e!4268616 tp!1952463)))

(declare-fun b!7101845 () Bool)

(assert (=> b!7101845 (= e!4268616 tp_is_empty!45001)))

(declare-fun b!7101846 () Bool)

(declare-fun tp!1952464 () Bool)

(declare-fun tp!1952461 () Bool)

(assert (=> b!7101846 (= e!4268616 (and tp!1952464 tp!1952461))))

(assert (=> b!7101650 (= tp!1952421 e!4268616)))

(declare-fun b!7101848 () Bool)

(declare-fun tp!1952460 () Bool)

(declare-fun tp!1952462 () Bool)

(assert (=> b!7101848 (= e!4268616 (and tp!1952460 tp!1952462))))

(assert (= (and b!7101650 (is-ElementMatch!17884 (regTwo!36281 r!11554))) b!7101845))

(assert (= (and b!7101650 (is-Concat!26729 (regTwo!36281 r!11554))) b!7101846))

(assert (= (and b!7101650 (is-Star!17884 (regTwo!36281 r!11554))) b!7101847))

(assert (= (and b!7101650 (is-Union!17884 (regTwo!36281 r!11554))) b!7101848))

(declare-fun b!7101851 () Bool)

(declare-fun e!4268617 () Bool)

(declare-fun tp!1952468 () Bool)

(assert (=> b!7101851 (= e!4268617 tp!1952468)))

(declare-fun b!7101849 () Bool)

(assert (=> b!7101849 (= e!4268617 tp_is_empty!45001)))

(declare-fun b!7101850 () Bool)

(declare-fun tp!1952469 () Bool)

(declare-fun tp!1952466 () Bool)

(assert (=> b!7101850 (= e!4268617 (and tp!1952469 tp!1952466))))

(assert (=> b!7101655 (= tp!1952423 e!4268617)))

(declare-fun b!7101852 () Bool)

(declare-fun tp!1952465 () Bool)

(declare-fun tp!1952467 () Bool)

(assert (=> b!7101852 (= e!4268617 (and tp!1952465 tp!1952467))))

(assert (= (and b!7101655 (is-ElementMatch!17884 (reg!18213 r!11554))) b!7101849))

(assert (= (and b!7101655 (is-Concat!26729 (reg!18213 r!11554))) b!7101850))

(assert (= (and b!7101655 (is-Star!17884 (reg!18213 r!11554))) b!7101851))

(assert (= (and b!7101655 (is-Union!17884 (reg!18213 r!11554))) b!7101852))

(declare-fun b!7101857 () Bool)

(declare-fun e!4268620 () Bool)

(declare-fun tp!1952474 () Bool)

(declare-fun tp!1952475 () Bool)

(assert (=> b!7101857 (= e!4268620 (and tp!1952474 tp!1952475))))

(assert (=> b!7101651 (= tp!1952420 e!4268620)))

(assert (= (and b!7101651 (is-Cons!68721 (exprs!7378 auxCtx!45))) b!7101857))

(declare-fun b!7101858 () Bool)

(declare-fun e!4268621 () Bool)

(declare-fun tp!1952476 () Bool)

(declare-fun tp!1952477 () Bool)

(assert (=> b!7101858 (= e!4268621 (and tp!1952476 tp!1952477))))

(assert (=> b!7101652 (= tp!1952422 e!4268621)))

(assert (= (and b!7101652 (is-Cons!68721 (exprs!7378 c!9994))) b!7101858))

(declare-fun b!7101861 () Bool)

(declare-fun e!4268622 () Bool)

(declare-fun tp!1952481 () Bool)

(assert (=> b!7101861 (= e!4268622 tp!1952481)))

(declare-fun b!7101859 () Bool)

(assert (=> b!7101859 (= e!4268622 tp_is_empty!45001)))

(declare-fun b!7101860 () Bool)

(declare-fun tp!1952482 () Bool)

(declare-fun tp!1952479 () Bool)

(assert (=> b!7101860 (= e!4268622 (and tp!1952482 tp!1952479))))

(assert (=> b!7101653 (= tp!1952417 e!4268622)))

(declare-fun b!7101862 () Bool)

(declare-fun tp!1952478 () Bool)

(declare-fun tp!1952480 () Bool)

(assert (=> b!7101862 (= e!4268622 (and tp!1952478 tp!1952480))))

(assert (= (and b!7101653 (is-ElementMatch!17884 (regOne!36280 r!11554))) b!7101859))

(assert (= (and b!7101653 (is-Concat!26729 (regOne!36280 r!11554))) b!7101860))

(assert (= (and b!7101653 (is-Star!17884 (regOne!36280 r!11554))) b!7101861))

(assert (= (and b!7101653 (is-Union!17884 (regOne!36280 r!11554))) b!7101862))

(declare-fun b!7101865 () Bool)

(declare-fun e!4268623 () Bool)

(declare-fun tp!1952486 () Bool)

(assert (=> b!7101865 (= e!4268623 tp!1952486)))

(declare-fun b!7101863 () Bool)

(assert (=> b!7101863 (= e!4268623 tp_is_empty!45001)))

(declare-fun b!7101864 () Bool)

(declare-fun tp!1952487 () Bool)

(declare-fun tp!1952484 () Bool)

(assert (=> b!7101864 (= e!4268623 (and tp!1952487 tp!1952484))))

(assert (=> b!7101653 (= tp!1952418 e!4268623)))

(declare-fun b!7101866 () Bool)

(declare-fun tp!1952483 () Bool)

(declare-fun tp!1952485 () Bool)

(assert (=> b!7101866 (= e!4268623 (and tp!1952483 tp!1952485))))

(assert (= (and b!7101653 (is-ElementMatch!17884 (regTwo!36280 r!11554))) b!7101863))

(assert (= (and b!7101653 (is-Concat!26729 (regTwo!36280 r!11554))) b!7101864))

(assert (= (and b!7101653 (is-Star!17884 (regTwo!36280 r!11554))) b!7101865))

(assert (= (and b!7101653 (is-Union!17884 (regTwo!36280 r!11554))) b!7101866))

(push 1)

(assert (not b!7101851))

(assert (not b!7101852))

(assert (not b!7101866))

(assert (not bm!646757))

(assert (not b!7101844))

(assert (not b!7101754))

(assert (not b!7101847))

(assert (not b!7101848))

(assert (not b!7101850))

(assert (not bm!646717))

(assert (not d!2218700))

(assert (not bm!646768))

(assert (not b!7101865))

(assert (not b!7101862))

(assert (not bm!646751))

(assert (not b!7101864))

(assert (not b!7101792))

(assert (not bm!646770))

(assert tp_is_empty!45001)

(assert (not d!2218688))

(assert (not b!7101858))

(assert (not bm!646761))

(assert (not d!2218686))

(assert (not d!2218684))

(assert (not d!2218706))

(assert (not b!7101846))

(assert (not b!7101843))

(assert (not bm!646756))

(assert (not b!7101803))

(assert (not b!7101753))

(assert (not b!7101861))

(assert (not bm!646750))

(assert (not b!7101857))

(assert (not b!7101860))

(assert (not b!7101827))

(assert (not b!7101842))

(assert (not b!7101718))

(assert (not bm!646719))

(assert (not bm!646755))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


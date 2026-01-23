; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691814 () Bool)

(assert start!691814)

(declare-fun b!7106685 () Bool)

(declare-fun res!2900817 () Bool)

(declare-fun e!4271205 () Bool)

(assert (=> b!7106685 (=> (not res!2900817) (not e!4271205))))

(declare-datatypes ((C!36102 0))(
  ( (C!36103 (val!27757 Int)) )
))
(declare-datatypes ((Regex!17916 0))(
  ( (ElementMatch!17916 (c!1326191 C!36102)) (Concat!26761 (regOne!36344 Regex!17916) (regTwo!36344 Regex!17916)) (EmptyExpr!17916) (Star!17916 (reg!18245 Regex!17916)) (EmptyLang!17916) (Union!17916 (regOne!36345 Regex!17916) (regTwo!36345 Regex!17916)) )
))
(declare-fun r!11554 () Regex!17916)

(declare-fun nullable!7553 (Regex!17916) Bool)

(assert (=> b!7106685 (= res!2900817 (nullable!7553 (regOne!36344 r!11554)))))

(declare-fun b!7106686 () Bool)

(declare-fun e!4271201 () Bool)

(declare-fun tp!1954466 () Bool)

(assert (=> b!7106686 (= e!4271201 tp!1954466)))

(declare-fun res!2900815 () Bool)

(assert (=> start!691814 (=> (not res!2900815) (not e!4271205))))

(declare-fun validRegex!9189 (Regex!17916) Bool)

(assert (=> start!691814 (= res!2900815 (validRegex!9189 r!11554))))

(assert (=> start!691814 e!4271205))

(declare-fun e!4271204 () Bool)

(assert (=> start!691814 e!4271204))

(declare-fun tp_is_empty!45065 () Bool)

(assert (=> start!691814 tp_is_empty!45065))

(declare-datatypes ((List!68877 0))(
  ( (Nil!68753) (Cons!68753 (h!75201 Regex!17916) (t!382694 List!68877)) )
))
(declare-datatypes ((Context!13820 0))(
  ( (Context!13821 (exprs!7410 List!68877)) )
))
(declare-fun c!9994 () Context!13820)

(declare-fun e!4271203 () Bool)

(declare-fun inv!87654 (Context!13820) Bool)

(assert (=> start!691814 (and (inv!87654 c!9994) e!4271203)))

(declare-fun auxCtx!45 () Context!13820)

(assert (=> start!691814 (and (inv!87654 auxCtx!45) e!4271201)))

(declare-fun b!7106687 () Bool)

(declare-fun tp!1954468 () Bool)

(assert (=> b!7106687 (= e!4271203 tp!1954468)))

(declare-fun b!7106688 () Bool)

(declare-fun e!4271202 () Bool)

(assert (=> b!7106688 (= e!4271205 e!4271202)))

(declare-fun res!2900816 () Bool)

(assert (=> b!7106688 (=> (not res!2900816) (not e!4271202))))

(assert (=> b!7106688 (= res!2900816 (validRegex!9189 (regTwo!36344 r!11554)))))

(declare-datatypes ((Unit!162503 0))(
  ( (Unit!162504) )
))
(declare-fun lt!2559169 () Unit!162503)

(declare-fun lambda!431660 () Int)

(declare-fun lemmaConcatPreservesForall!1201 (List!68877 List!68877 Int) Unit!162503)

(assert (=> b!7106688 (= lt!2559169 (lemmaConcatPreservesForall!1201 (exprs!7410 c!9994) (exprs!7410 auxCtx!45) lambda!431660))))

(declare-fun lt!2559170 () List!68877)

(declare-fun ++!16068 (List!68877 List!68877) List!68877)

(assert (=> b!7106688 (= lt!2559170 (++!16068 (exprs!7410 c!9994) (exprs!7410 auxCtx!45)))))

(declare-fun lt!2559171 () Unit!162503)

(assert (=> b!7106688 (= lt!2559171 (lemmaConcatPreservesForall!1201 (exprs!7410 c!9994) (exprs!7410 auxCtx!45) lambda!431660))))

(declare-fun lt!2559172 () Unit!162503)

(assert (=> b!7106688 (= lt!2559172 (lemmaConcatPreservesForall!1201 (exprs!7410 c!9994) (exprs!7410 auxCtx!45) lambda!431660))))

(declare-fun b!7106689 () Bool)

(declare-fun tp!1954471 () Bool)

(assert (=> b!7106689 (= e!4271204 tp!1954471)))

(declare-fun b!7106690 () Bool)

(declare-fun tp!1954465 () Bool)

(declare-fun tp!1954470 () Bool)

(assert (=> b!7106690 (= e!4271204 (and tp!1954465 tp!1954470))))

(declare-fun b!7106691 () Bool)

(declare-fun res!2900818 () Bool)

(assert (=> b!7106691 (=> (not res!2900818) (not e!4271205))))

(declare-fun a!1901 () C!36102)

(assert (=> b!7106691 (= res!2900818 (and (or (not (is-ElementMatch!17916 r!11554)) (not (= (c!1326191 r!11554) a!1901))) (not (is-Union!17916 r!11554)) (is-Concat!26761 r!11554)))))

(declare-fun b!7106692 () Bool)

(assert (=> b!7106692 (= e!4271204 tp_is_empty!45065)))

(declare-fun b!7106693 () Bool)

(assert (=> b!7106693 (= e!4271202 (not (inv!87654 (Context!13821 lt!2559170))))))

(declare-fun b!7106694 () Bool)

(declare-fun tp!1954469 () Bool)

(declare-fun tp!1954467 () Bool)

(assert (=> b!7106694 (= e!4271204 (and tp!1954469 tp!1954467))))

(assert (= (and start!691814 res!2900815) b!7106691))

(assert (= (and b!7106691 res!2900818) b!7106685))

(assert (= (and b!7106685 res!2900817) b!7106688))

(assert (= (and b!7106688 res!2900816) b!7106693))

(assert (= (and start!691814 (is-ElementMatch!17916 r!11554)) b!7106692))

(assert (= (and start!691814 (is-Concat!26761 r!11554)) b!7106690))

(assert (= (and start!691814 (is-Star!17916 r!11554)) b!7106689))

(assert (= (and start!691814 (is-Union!17916 r!11554)) b!7106694))

(assert (= start!691814 b!7106687))

(assert (= start!691814 b!7106686))

(declare-fun m!7829588 () Bool)

(assert (=> b!7106685 m!7829588))

(declare-fun m!7829590 () Bool)

(assert (=> start!691814 m!7829590))

(declare-fun m!7829592 () Bool)

(assert (=> start!691814 m!7829592))

(declare-fun m!7829594 () Bool)

(assert (=> start!691814 m!7829594))

(declare-fun m!7829596 () Bool)

(assert (=> b!7106688 m!7829596))

(assert (=> b!7106688 m!7829596))

(declare-fun m!7829598 () Bool)

(assert (=> b!7106688 m!7829598))

(declare-fun m!7829600 () Bool)

(assert (=> b!7106688 m!7829600))

(assert (=> b!7106688 m!7829596))

(declare-fun m!7829602 () Bool)

(assert (=> b!7106693 m!7829602))

(push 1)

(assert (not b!7106688))

(assert (not b!7106690))

(assert tp_is_empty!45065)

(assert (not b!7106689))

(assert (not b!7106687))

(assert (not b!7106694))

(assert (not b!7106685))

(assert (not b!7106686))

(assert (not b!7106693))

(assert (not start!691814))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2219428 () Bool)

(declare-fun forall!16819 (List!68877 Int) Bool)

(assert (=> d!2219428 (forall!16819 (++!16068 (exprs!7410 c!9994) (exprs!7410 auxCtx!45)) lambda!431660)))

(declare-fun lt!2559187 () Unit!162503)

(declare-fun choose!54827 (List!68877 List!68877 Int) Unit!162503)

(assert (=> d!2219428 (= lt!2559187 (choose!54827 (exprs!7410 c!9994) (exprs!7410 auxCtx!45) lambda!431660))))

(assert (=> d!2219428 (forall!16819 (exprs!7410 c!9994) lambda!431660)))

(assert (=> d!2219428 (= (lemmaConcatPreservesForall!1201 (exprs!7410 c!9994) (exprs!7410 auxCtx!45) lambda!431660) lt!2559187)))

(declare-fun bs!1884817 () Bool)

(assert (= bs!1884817 d!2219428))

(assert (=> bs!1884817 m!7829598))

(assert (=> bs!1884817 m!7829598))

(declare-fun m!7829620 () Bool)

(assert (=> bs!1884817 m!7829620))

(declare-fun m!7829622 () Bool)

(assert (=> bs!1884817 m!7829622))

(declare-fun m!7829624 () Bool)

(assert (=> bs!1884817 m!7829624))

(assert (=> b!7106688 d!2219428))

(declare-fun b!7106734 () Bool)

(declare-fun e!4271225 () List!68877)

(assert (=> b!7106734 (= e!4271225 (Cons!68753 (h!75201 (exprs!7410 c!9994)) (++!16068 (t!382694 (exprs!7410 c!9994)) (exprs!7410 auxCtx!45))))))

(declare-fun b!7106733 () Bool)

(assert (=> b!7106733 (= e!4271225 (exprs!7410 auxCtx!45))))

(declare-fun e!4271226 () Bool)

(declare-fun b!7106736 () Bool)

(declare-fun lt!2559190 () List!68877)

(assert (=> b!7106736 (= e!4271226 (or (not (= (exprs!7410 auxCtx!45) Nil!68753)) (= lt!2559190 (exprs!7410 c!9994))))))

(declare-fun b!7106735 () Bool)

(declare-fun res!2900836 () Bool)

(assert (=> b!7106735 (=> (not res!2900836) (not e!4271226))))

(declare-fun size!41379 (List!68877) Int)

(assert (=> b!7106735 (= res!2900836 (= (size!41379 lt!2559190) (+ (size!41379 (exprs!7410 c!9994)) (size!41379 (exprs!7410 auxCtx!45)))))))

(declare-fun d!2219430 () Bool)

(assert (=> d!2219430 e!4271226))

(declare-fun res!2900835 () Bool)

(assert (=> d!2219430 (=> (not res!2900835) (not e!4271226))))

(declare-fun content!14004 (List!68877) (Set Regex!17916))

(assert (=> d!2219430 (= res!2900835 (= (content!14004 lt!2559190) (set.union (content!14004 (exprs!7410 c!9994)) (content!14004 (exprs!7410 auxCtx!45)))))))

(assert (=> d!2219430 (= lt!2559190 e!4271225)))

(declare-fun c!1326195 () Bool)

(assert (=> d!2219430 (= c!1326195 (is-Nil!68753 (exprs!7410 c!9994)))))

(assert (=> d!2219430 (= (++!16068 (exprs!7410 c!9994) (exprs!7410 auxCtx!45)) lt!2559190)))

(assert (= (and d!2219430 c!1326195) b!7106733))

(assert (= (and d!2219430 (not c!1326195)) b!7106734))

(assert (= (and d!2219430 res!2900835) b!7106735))

(assert (= (and b!7106735 res!2900836) b!7106736))

(declare-fun m!7829626 () Bool)

(assert (=> b!7106734 m!7829626))

(declare-fun m!7829628 () Bool)

(assert (=> b!7106735 m!7829628))

(declare-fun m!7829630 () Bool)

(assert (=> b!7106735 m!7829630))

(declare-fun m!7829632 () Bool)

(assert (=> b!7106735 m!7829632))

(declare-fun m!7829634 () Bool)

(assert (=> d!2219430 m!7829634))

(declare-fun m!7829636 () Bool)

(assert (=> d!2219430 m!7829636))

(declare-fun m!7829638 () Bool)

(assert (=> d!2219430 m!7829638))

(assert (=> b!7106688 d!2219430))

(declare-fun b!7106773 () Bool)

(declare-fun e!4271258 () Bool)

(declare-fun call!647898 () Bool)

(assert (=> b!7106773 (= e!4271258 call!647898)))

(declare-fun bm!647891 () Bool)

(declare-fun call!647896 () Bool)

(assert (=> bm!647891 (= call!647896 call!647898)))

(declare-fun d!2219434 () Bool)

(declare-fun res!2900857 () Bool)

(declare-fun e!4271260 () Bool)

(assert (=> d!2219434 (=> res!2900857 e!4271260)))

(assert (=> d!2219434 (= res!2900857 (is-ElementMatch!17916 (regTwo!36344 r!11554)))))

(assert (=> d!2219434 (= (validRegex!9189 (regTwo!36344 r!11554)) e!4271260)))

(declare-fun b!7106774 () Bool)

(declare-fun e!4271261 () Bool)

(assert (=> b!7106774 (= e!4271260 e!4271261)))

(declare-fun c!1326204 () Bool)

(assert (=> b!7106774 (= c!1326204 (is-Star!17916 (regTwo!36344 r!11554)))))

(declare-fun bm!647892 () Bool)

(declare-fun call!647897 () Bool)

(declare-fun c!1326205 () Bool)

(assert (=> bm!647892 (= call!647897 (validRegex!9189 (ite c!1326205 (regTwo!36345 (regTwo!36344 r!11554)) (regOne!36344 (regTwo!36344 r!11554)))))))

(declare-fun b!7106775 () Bool)

(declare-fun e!4271257 () Bool)

(assert (=> b!7106775 (= e!4271257 call!647896)))

(declare-fun b!7106776 () Bool)

(assert (=> b!7106776 (= e!4271261 e!4271258)))

(declare-fun res!2900861 () Bool)

(assert (=> b!7106776 (= res!2900861 (not (nullable!7553 (reg!18245 (regTwo!36344 r!11554)))))))

(assert (=> b!7106776 (=> (not res!2900861) (not e!4271258))))

(declare-fun b!7106777 () Bool)

(declare-fun e!4271256 () Bool)

(assert (=> b!7106777 (= e!4271256 e!4271257)))

(declare-fun res!2900860 () Bool)

(assert (=> b!7106777 (=> (not res!2900860) (not e!4271257))))

(assert (=> b!7106777 (= res!2900860 call!647897)))

(declare-fun b!7106778 () Bool)

(declare-fun res!2900859 () Bool)

(declare-fun e!4271259 () Bool)

(assert (=> b!7106778 (=> (not res!2900859) (not e!4271259))))

(assert (=> b!7106778 (= res!2900859 call!647896)))

(declare-fun e!4271255 () Bool)

(assert (=> b!7106778 (= e!4271255 e!4271259)))

(declare-fun bm!647893 () Bool)

(assert (=> bm!647893 (= call!647898 (validRegex!9189 (ite c!1326204 (reg!18245 (regTwo!36344 r!11554)) (ite c!1326205 (regOne!36345 (regTwo!36344 r!11554)) (regTwo!36344 (regTwo!36344 r!11554))))))))

(declare-fun b!7106779 () Bool)

(assert (=> b!7106779 (= e!4271259 call!647897)))

(declare-fun b!7106780 () Bool)

(declare-fun res!2900858 () Bool)

(assert (=> b!7106780 (=> res!2900858 e!4271256)))

(assert (=> b!7106780 (= res!2900858 (not (is-Concat!26761 (regTwo!36344 r!11554))))))

(assert (=> b!7106780 (= e!4271255 e!4271256)))

(declare-fun b!7106781 () Bool)

(assert (=> b!7106781 (= e!4271261 e!4271255)))

(assert (=> b!7106781 (= c!1326205 (is-Union!17916 (regTwo!36344 r!11554)))))

(assert (= (and d!2219434 (not res!2900857)) b!7106774))

(assert (= (and b!7106774 c!1326204) b!7106776))

(assert (= (and b!7106774 (not c!1326204)) b!7106781))

(assert (= (and b!7106776 res!2900861) b!7106773))

(assert (= (and b!7106781 c!1326205) b!7106778))

(assert (= (and b!7106781 (not c!1326205)) b!7106780))

(assert (= (and b!7106778 res!2900859) b!7106779))

(assert (= (and b!7106780 (not res!2900858)) b!7106777))

(assert (= (and b!7106777 res!2900860) b!7106775))

(assert (= (or b!7106778 b!7106775) bm!647891))

(assert (= (or b!7106779 b!7106777) bm!647892))

(assert (= (or b!7106773 bm!647891) bm!647893))

(declare-fun m!7829640 () Bool)

(assert (=> bm!647892 m!7829640))

(declare-fun m!7829642 () Bool)

(assert (=> b!7106776 m!7829642))

(declare-fun m!7829644 () Bool)

(assert (=> bm!647893 m!7829644))

(assert (=> b!7106688 d!2219434))

(declare-fun b!7106782 () Bool)

(declare-fun e!4271265 () Bool)

(declare-fun call!647901 () Bool)

(assert (=> b!7106782 (= e!4271265 call!647901)))

(declare-fun bm!647894 () Bool)

(declare-fun call!647899 () Bool)

(assert (=> bm!647894 (= call!647899 call!647901)))

(declare-fun d!2219436 () Bool)

(declare-fun res!2900862 () Bool)

(declare-fun e!4271267 () Bool)

(assert (=> d!2219436 (=> res!2900862 e!4271267)))

(assert (=> d!2219436 (= res!2900862 (is-ElementMatch!17916 r!11554))))

(assert (=> d!2219436 (= (validRegex!9189 r!11554) e!4271267)))

(declare-fun b!7106783 () Bool)

(declare-fun e!4271268 () Bool)

(assert (=> b!7106783 (= e!4271267 e!4271268)))

(declare-fun c!1326206 () Bool)

(assert (=> b!7106783 (= c!1326206 (is-Star!17916 r!11554))))

(declare-fun bm!647895 () Bool)

(declare-fun call!647900 () Bool)

(declare-fun c!1326207 () Bool)

(assert (=> bm!647895 (= call!647900 (validRegex!9189 (ite c!1326207 (regTwo!36345 r!11554) (regOne!36344 r!11554))))))

(declare-fun b!7106784 () Bool)

(declare-fun e!4271264 () Bool)

(assert (=> b!7106784 (= e!4271264 call!647899)))

(declare-fun b!7106785 () Bool)

(assert (=> b!7106785 (= e!4271268 e!4271265)))

(declare-fun res!2900866 () Bool)

(assert (=> b!7106785 (= res!2900866 (not (nullable!7553 (reg!18245 r!11554))))))

(assert (=> b!7106785 (=> (not res!2900866) (not e!4271265))))

(declare-fun b!7106786 () Bool)

(declare-fun e!4271263 () Bool)

(assert (=> b!7106786 (= e!4271263 e!4271264)))

(declare-fun res!2900865 () Bool)

(assert (=> b!7106786 (=> (not res!2900865) (not e!4271264))))

(assert (=> b!7106786 (= res!2900865 call!647900)))

(declare-fun b!7106787 () Bool)

(declare-fun res!2900864 () Bool)

(declare-fun e!4271266 () Bool)

(assert (=> b!7106787 (=> (not res!2900864) (not e!4271266))))

(assert (=> b!7106787 (= res!2900864 call!647899)))

(declare-fun e!4271262 () Bool)

(assert (=> b!7106787 (= e!4271262 e!4271266)))

(declare-fun bm!647896 () Bool)

(assert (=> bm!647896 (= call!647901 (validRegex!9189 (ite c!1326206 (reg!18245 r!11554) (ite c!1326207 (regOne!36345 r!11554) (regTwo!36344 r!11554)))))))

(declare-fun b!7106788 () Bool)

(assert (=> b!7106788 (= e!4271266 call!647900)))

(declare-fun b!7106789 () Bool)

(declare-fun res!2900863 () Bool)

(assert (=> b!7106789 (=> res!2900863 e!4271263)))

(assert (=> b!7106789 (= res!2900863 (not (is-Concat!26761 r!11554)))))

(assert (=> b!7106789 (= e!4271262 e!4271263)))

(declare-fun b!7106790 () Bool)

(assert (=> b!7106790 (= e!4271268 e!4271262)))

(assert (=> b!7106790 (= c!1326207 (is-Union!17916 r!11554))))

(assert (= (and d!2219436 (not res!2900862)) b!7106783))

(assert (= (and b!7106783 c!1326206) b!7106785))

(assert (= (and b!7106783 (not c!1326206)) b!7106790))

(assert (= (and b!7106785 res!2900866) b!7106782))

(assert (= (and b!7106790 c!1326207) b!7106787))

(assert (= (and b!7106790 (not c!1326207)) b!7106789))

(assert (= (and b!7106787 res!2900864) b!7106788))

(assert (= (and b!7106789 (not res!2900863)) b!7106786))

(assert (= (and b!7106786 res!2900865) b!7106784))

(assert (= (or b!7106787 b!7106784) bm!647894))

(assert (= (or b!7106788 b!7106786) bm!647895))

(assert (= (or b!7106782 bm!647894) bm!647896))

(declare-fun m!7829646 () Bool)

(assert (=> bm!647895 m!7829646))

(declare-fun m!7829648 () Bool)

(assert (=> b!7106785 m!7829648))

(declare-fun m!7829650 () Bool)

(assert (=> bm!647896 m!7829650))

(assert (=> start!691814 d!2219436))

(declare-fun bs!1884818 () Bool)

(declare-fun d!2219438 () Bool)

(assert (= bs!1884818 (and d!2219438 b!7106688)))

(declare-fun lambda!431670 () Int)

(assert (=> bs!1884818 (= lambda!431670 lambda!431660)))

(assert (=> d!2219438 (= (inv!87654 c!9994) (forall!16819 (exprs!7410 c!9994) lambda!431670))))

(declare-fun bs!1884819 () Bool)

(assert (= bs!1884819 d!2219438))

(declare-fun m!7829652 () Bool)

(assert (=> bs!1884819 m!7829652))

(assert (=> start!691814 d!2219438))

(declare-fun bs!1884820 () Bool)

(declare-fun d!2219440 () Bool)

(assert (= bs!1884820 (and d!2219440 b!7106688)))

(declare-fun lambda!431671 () Int)

(assert (=> bs!1884820 (= lambda!431671 lambda!431660)))

(declare-fun bs!1884821 () Bool)

(assert (= bs!1884821 (and d!2219440 d!2219438)))

(assert (=> bs!1884821 (= lambda!431671 lambda!431670)))

(assert (=> d!2219440 (= (inv!87654 auxCtx!45) (forall!16819 (exprs!7410 auxCtx!45) lambda!431671))))

(declare-fun bs!1884822 () Bool)

(assert (= bs!1884822 d!2219440))

(declare-fun m!7829654 () Bool)

(assert (=> bs!1884822 m!7829654))

(assert (=> start!691814 d!2219440))

(declare-fun bs!1884823 () Bool)

(declare-fun d!2219442 () Bool)

(assert (= bs!1884823 (and d!2219442 b!7106688)))

(declare-fun lambda!431672 () Int)

(assert (=> bs!1884823 (= lambda!431672 lambda!431660)))

(declare-fun bs!1884824 () Bool)

(assert (= bs!1884824 (and d!2219442 d!2219438)))

(assert (=> bs!1884824 (= lambda!431672 lambda!431670)))

(declare-fun bs!1884825 () Bool)

(assert (= bs!1884825 (and d!2219442 d!2219440)))

(assert (=> bs!1884825 (= lambda!431672 lambda!431671)))

(assert (=> d!2219442 (= (inv!87654 (Context!13821 lt!2559170)) (forall!16819 (exprs!7410 (Context!13821 lt!2559170)) lambda!431672))))

(declare-fun bs!1884826 () Bool)

(assert (= bs!1884826 d!2219442))

(declare-fun m!7829656 () Bool)

(assert (=> bs!1884826 m!7829656))

(assert (=> b!7106693 d!2219442))

(declare-fun d!2219444 () Bool)

(declare-fun nullableFct!2910 (Regex!17916) Bool)

(assert (=> d!2219444 (= (nullable!7553 (regOne!36344 r!11554)) (nullableFct!2910 (regOne!36344 r!11554)))))

(declare-fun bs!1884827 () Bool)

(assert (= bs!1884827 d!2219444))

(declare-fun m!7829664 () Bool)

(assert (=> bs!1884827 m!7829664))

(assert (=> b!7106685 d!2219444))

(declare-fun b!7106813 () Bool)

(declare-fun e!4271278 () Bool)

(declare-fun tp!1954507 () Bool)

(declare-fun tp!1954505 () Bool)

(assert (=> b!7106813 (= e!4271278 (and tp!1954507 tp!1954505))))

(declare-fun b!7106810 () Bool)

(assert (=> b!7106810 (= e!4271278 tp_is_empty!45065)))

(declare-fun b!7106811 () Bool)

(declare-fun tp!1954503 () Bool)

(declare-fun tp!1954504 () Bool)

(assert (=> b!7106811 (= e!4271278 (and tp!1954503 tp!1954504))))

(declare-fun b!7106812 () Bool)

(declare-fun tp!1954506 () Bool)

(assert (=> b!7106812 (= e!4271278 tp!1954506)))

(assert (=> b!7106694 (= tp!1954469 e!4271278)))

(assert (= (and b!7106694 (is-ElementMatch!17916 (regOne!36345 r!11554))) b!7106810))

(assert (= (and b!7106694 (is-Concat!26761 (regOne!36345 r!11554))) b!7106811))

(assert (= (and b!7106694 (is-Star!17916 (regOne!36345 r!11554))) b!7106812))

(assert (= (and b!7106694 (is-Union!17916 (regOne!36345 r!11554))) b!7106813))

(declare-fun b!7106817 () Bool)

(declare-fun e!4271279 () Bool)

(declare-fun tp!1954512 () Bool)

(declare-fun tp!1954510 () Bool)

(assert (=> b!7106817 (= e!4271279 (and tp!1954512 tp!1954510))))

(declare-fun b!7106814 () Bool)

(assert (=> b!7106814 (= e!4271279 tp_is_empty!45065)))

(declare-fun b!7106815 () Bool)

(declare-fun tp!1954508 () Bool)

(declare-fun tp!1954509 () Bool)

(assert (=> b!7106815 (= e!4271279 (and tp!1954508 tp!1954509))))

(declare-fun b!7106816 () Bool)

(declare-fun tp!1954511 () Bool)

(assert (=> b!7106816 (= e!4271279 tp!1954511)))

(assert (=> b!7106694 (= tp!1954467 e!4271279)))

(assert (= (and b!7106694 (is-ElementMatch!17916 (regTwo!36345 r!11554))) b!7106814))

(assert (= (and b!7106694 (is-Concat!26761 (regTwo!36345 r!11554))) b!7106815))

(assert (= (and b!7106694 (is-Star!17916 (regTwo!36345 r!11554))) b!7106816))

(assert (= (and b!7106694 (is-Union!17916 (regTwo!36345 r!11554))) b!7106817))

(declare-fun b!7106821 () Bool)

(declare-fun e!4271280 () Bool)

(declare-fun tp!1954517 () Bool)

(declare-fun tp!1954515 () Bool)

(assert (=> b!7106821 (= e!4271280 (and tp!1954517 tp!1954515))))

(declare-fun b!7106818 () Bool)

(assert (=> b!7106818 (= e!4271280 tp_is_empty!45065)))

(declare-fun b!7106819 () Bool)

(declare-fun tp!1954513 () Bool)

(declare-fun tp!1954514 () Bool)

(assert (=> b!7106819 (= e!4271280 (and tp!1954513 tp!1954514))))

(declare-fun b!7106820 () Bool)

(declare-fun tp!1954516 () Bool)

(assert (=> b!7106820 (= e!4271280 tp!1954516)))

(assert (=> b!7106689 (= tp!1954471 e!4271280)))

(assert (= (and b!7106689 (is-ElementMatch!17916 (reg!18245 r!11554))) b!7106818))

(assert (= (and b!7106689 (is-Concat!26761 (reg!18245 r!11554))) b!7106819))

(assert (= (and b!7106689 (is-Star!17916 (reg!18245 r!11554))) b!7106820))

(assert (= (and b!7106689 (is-Union!17916 (reg!18245 r!11554))) b!7106821))

(declare-fun b!7106825 () Bool)

(declare-fun e!4271281 () Bool)

(declare-fun tp!1954522 () Bool)

(declare-fun tp!1954520 () Bool)

(assert (=> b!7106825 (= e!4271281 (and tp!1954522 tp!1954520))))

(declare-fun b!7106822 () Bool)

(assert (=> b!7106822 (= e!4271281 tp_is_empty!45065)))

(declare-fun b!7106823 () Bool)

(declare-fun tp!1954518 () Bool)

(declare-fun tp!1954519 () Bool)

(assert (=> b!7106823 (= e!4271281 (and tp!1954518 tp!1954519))))

(declare-fun b!7106824 () Bool)

(declare-fun tp!1954521 () Bool)

(assert (=> b!7106824 (= e!4271281 tp!1954521)))

(assert (=> b!7106690 (= tp!1954465 e!4271281)))

(assert (= (and b!7106690 (is-ElementMatch!17916 (regOne!36344 r!11554))) b!7106822))

(assert (= (and b!7106690 (is-Concat!26761 (regOne!36344 r!11554))) b!7106823))

(assert (= (and b!7106690 (is-Star!17916 (regOne!36344 r!11554))) b!7106824))

(assert (= (and b!7106690 (is-Union!17916 (regOne!36344 r!11554))) b!7106825))

(declare-fun b!7106829 () Bool)

(declare-fun e!4271282 () Bool)

(declare-fun tp!1954527 () Bool)

(declare-fun tp!1954525 () Bool)

(assert (=> b!7106829 (= e!4271282 (and tp!1954527 tp!1954525))))

(declare-fun b!7106826 () Bool)

(assert (=> b!7106826 (= e!4271282 tp_is_empty!45065)))

(declare-fun b!7106827 () Bool)

(declare-fun tp!1954523 () Bool)

(declare-fun tp!1954524 () Bool)

(assert (=> b!7106827 (= e!4271282 (and tp!1954523 tp!1954524))))

(declare-fun b!7106828 () Bool)

(declare-fun tp!1954526 () Bool)

(assert (=> b!7106828 (= e!4271282 tp!1954526)))

(assert (=> b!7106690 (= tp!1954470 e!4271282)))

(assert (= (and b!7106690 (is-ElementMatch!17916 (regTwo!36344 r!11554))) b!7106826))

(assert (= (and b!7106690 (is-Concat!26761 (regTwo!36344 r!11554))) b!7106827))

(assert (= (and b!7106690 (is-Star!17916 (regTwo!36344 r!11554))) b!7106828))

(assert (= (and b!7106690 (is-Union!17916 (regTwo!36344 r!11554))) b!7106829))

(declare-fun b!7106834 () Bool)

(declare-fun e!4271285 () Bool)

(declare-fun tp!1954532 () Bool)

(declare-fun tp!1954533 () Bool)

(assert (=> b!7106834 (= e!4271285 (and tp!1954532 tp!1954533))))

(assert (=> b!7106687 (= tp!1954468 e!4271285)))

(assert (= (and b!7106687 (is-Cons!68753 (exprs!7410 c!9994))) b!7106834))

(declare-fun b!7106835 () Bool)

(declare-fun e!4271286 () Bool)

(declare-fun tp!1954534 () Bool)

(declare-fun tp!1954535 () Bool)

(assert (=> b!7106835 (= e!4271286 (and tp!1954534 tp!1954535))))

(assert (=> b!7106686 (= tp!1954466 e!4271286)))

(assert (= (and b!7106686 (is-Cons!68753 (exprs!7410 auxCtx!45))) b!7106835))

(push 1)

(assert (not d!2219440))

(assert (not b!7106829))

(assert (not b!7106815))

(assert (not b!7106825))

(assert (not bm!647893))

(assert (not b!7106817))

(assert (not b!7106823))

(assert (not d!2219428))

(assert (not d!2219444))

(assert (not b!7106785))

(assert (not d!2219442))

(assert (not b!7106835))

(assert (not d!2219430))

(assert (not d!2219438))

(assert (not b!7106816))

(assert (not b!7106811))

(assert (not b!7106827))

(assert (not b!7106819))

(assert (not b!7106812))

(assert (not b!7106820))

(assert (not bm!647896))

(assert (not b!7106824))

(assert (not b!7106813))

(assert (not b!7106828))

(assert (not b!7106821))

(assert (not b!7106776))

(assert (not bm!647895))

(assert (not bm!647892))

(assert (not b!7106734))

(assert tp_is_empty!45065)

(assert (not b!7106735))

(assert (not b!7106834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


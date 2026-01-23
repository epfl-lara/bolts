; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!667332 () Bool)

(assert start!667332)

(declare-fun b!6953691 () Bool)

(assert (=> b!6953691 true))

(assert (=> b!6953691 true))

(declare-fun b!6953686 () Bool)

(declare-fun e!4181711 () Bool)

(declare-fun tp!1916974 () Bool)

(assert (=> b!6953686 (= e!4181711 tp!1916974)))

(declare-fun res!2837221 () Bool)

(declare-fun e!4181710 () Bool)

(assert (=> start!667332 (=> (not res!2837221) (not e!4181710))))

(declare-datatypes ((C!34354 0))(
  ( (C!34355 (val!26879 Int)) )
))
(declare-datatypes ((Regex!17042 0))(
  ( (ElementMatch!17042 (c!1289616 C!34354)) (Concat!25887 (regOne!34596 Regex!17042) (regTwo!34596 Regex!17042)) (EmptyExpr!17042) (Star!17042 (reg!17371 Regex!17042)) (EmptyLang!17042) (Union!17042 (regOne!34597 Regex!17042) (regTwo!34597 Regex!17042)) )
))
(declare-fun rInner!765 () Regex!17042)

(declare-fun validRegex!8748 (Regex!17042) Bool)

(assert (=> start!667332 (= res!2837221 (validRegex!8748 rInner!765))))

(assert (=> start!667332 e!4181710))

(assert (=> start!667332 e!4181711))

(declare-fun e!4181709 () Bool)

(assert (=> start!667332 e!4181709))

(declare-fun b!6953687 () Bool)

(declare-fun tp_is_empty!43309 () Bool)

(declare-fun tp!1916976 () Bool)

(assert (=> b!6953687 (= e!4181709 (and tp_is_empty!43309 tp!1916976))))

(declare-fun b!6953688 () Bool)

(assert (=> b!6953688 (= e!4181711 tp_is_empty!43309)))

(declare-fun b!6953689 () Bool)

(declare-fun tp!1916975 () Bool)

(declare-fun tp!1916977 () Bool)

(assert (=> b!6953689 (= e!4181711 (and tp!1916975 tp!1916977))))

(declare-fun b!6953690 () Bool)

(declare-fun res!2837220 () Bool)

(assert (=> b!6953690 (=> (not res!2837220) (not e!4181710))))

(declare-fun nullable!6855 (Regex!17042) Bool)

(assert (=> b!6953690 (= res!2837220 (not (nullable!6855 rInner!765)))))

(declare-fun res!2837219 () Bool)

(assert (=> b!6953691 (=> (not res!2837219) (not e!4181710))))

(declare-fun lambda!396645 () Int)

(declare-fun Exists!4038 (Int) Bool)

(assert (=> b!6953691 (= res!2837219 (Exists!4038 lambda!396645))))

(declare-fun b!6953692 () Bool)

(declare-datatypes ((List!66795 0))(
  ( (Nil!66671) (Cons!66671 (h!73119 C!34354) (t!380538 List!66795)) )
))
(declare-datatypes ((tuple2!67790 0))(
  ( (tuple2!67791 (_1!37198 List!66795) (_2!37198 List!66795)) )
))
(declare-fun lt!2478194 () tuple2!67790)

(declare-fun s!10388 () List!66795)

(declare-fun ++!15073 (List!66795 List!66795) List!66795)

(assert (=> b!6953692 (= e!4181710 (not (= (++!15073 (_1!37198 lt!2478194) (_2!37198 lt!2478194)) s!10388)))))

(declare-fun pickWitness!367 (Int) tuple2!67790)

(assert (=> b!6953692 (= lt!2478194 (pickWitness!367 lambda!396645))))

(declare-fun b!6953693 () Bool)

(declare-fun tp!1916979 () Bool)

(declare-fun tp!1916978 () Bool)

(assert (=> b!6953693 (= e!4181711 (and tp!1916979 tp!1916978))))

(assert (= (and start!667332 res!2837221) b!6953690))

(assert (= (and b!6953690 res!2837220) b!6953691))

(assert (= (and b!6953691 res!2837219) b!6953692))

(assert (= (and start!667332 (is-ElementMatch!17042 rInner!765)) b!6953688))

(assert (= (and start!667332 (is-Concat!25887 rInner!765)) b!6953693))

(assert (= (and start!667332 (is-Star!17042 rInner!765)) b!6953686))

(assert (= (and start!667332 (is-Union!17042 rInner!765)) b!6953689))

(assert (= (and start!667332 (is-Cons!66671 s!10388)) b!6953687))

(declare-fun m!7653316 () Bool)

(assert (=> start!667332 m!7653316))

(declare-fun m!7653318 () Bool)

(assert (=> b!6953690 m!7653318))

(declare-fun m!7653320 () Bool)

(assert (=> b!6953691 m!7653320))

(declare-fun m!7653322 () Bool)

(assert (=> b!6953692 m!7653322))

(declare-fun m!7653324 () Bool)

(assert (=> b!6953692 m!7653324))

(push 1)

(assert (not b!6953691))

(assert (not b!6953690))

(assert (not b!6953693))

(assert (not b!6953686))

(assert (not b!6953692))

(assert (not b!6953687))

(assert tp_is_empty!43309)

(assert (not start!667332))

(assert (not b!6953689))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2169317 () Bool)

(declare-fun choose!51814 (Int) Bool)

(assert (=> d!2169317 (= (Exists!4038 lambda!396645) (choose!51814 lambda!396645))))

(declare-fun bs!1857861 () Bool)

(assert (= bs!1857861 d!2169317))

(declare-fun m!7653338 () Bool)

(assert (=> bs!1857861 m!7653338))

(assert (=> b!6953691 d!2169317))

(declare-fun d!2169319 () Bool)

(declare-fun res!2837253 () Bool)

(declare-fun e!4181745 () Bool)

(assert (=> d!2169319 (=> res!2837253 e!4181745)))

(assert (=> d!2169319 (= res!2837253 (is-ElementMatch!17042 rInner!765))))

(assert (=> d!2169319 (= (validRegex!8748 rInner!765) e!4181745)))

(declare-fun b!6953760 () Bool)

(declare-fun e!4181747 () Bool)

(declare-fun call!631504 () Bool)

(assert (=> b!6953760 (= e!4181747 call!631504)))

(declare-fun b!6953761 () Bool)

(declare-fun e!4181744 () Bool)

(declare-fun e!4181743 () Bool)

(assert (=> b!6953761 (= e!4181744 e!4181743)))

(declare-fun c!1289624 () Bool)

(assert (=> b!6953761 (= c!1289624 (is-Union!17042 rInner!765))))

(declare-fun b!6953762 () Bool)

(declare-fun e!4181748 () Bool)

(declare-fun call!631502 () Bool)

(assert (=> b!6953762 (= e!4181748 call!631502)))

(declare-fun bm!631497 () Bool)

(assert (=> bm!631497 (= call!631504 call!631502)))

(declare-fun b!6953763 () Bool)

(assert (=> b!6953763 (= e!4181744 e!4181748)))

(declare-fun res!2837257 () Bool)

(assert (=> b!6953763 (= res!2837257 (not (nullable!6855 (reg!17371 rInner!765))))))

(assert (=> b!6953763 (=> (not res!2837257) (not e!4181748))))

(declare-fun b!6953764 () Bool)

(declare-fun e!4181749 () Bool)

(declare-fun e!4181746 () Bool)

(assert (=> b!6953764 (= e!4181749 e!4181746)))

(declare-fun res!2837254 () Bool)

(assert (=> b!6953764 (=> (not res!2837254) (not e!4181746))))

(assert (=> b!6953764 (= res!2837254 call!631504)))

(declare-fun b!6953765 () Bool)

(declare-fun res!2837255 () Bool)

(assert (=> b!6953765 (=> res!2837255 e!4181749)))

(assert (=> b!6953765 (= res!2837255 (not (is-Concat!25887 rInner!765)))))

(assert (=> b!6953765 (= e!4181743 e!4181749)))

(declare-fun b!6953766 () Bool)

(assert (=> b!6953766 (= e!4181745 e!4181744)))

(declare-fun c!1289625 () Bool)

(assert (=> b!6953766 (= c!1289625 (is-Star!17042 rInner!765))))

(declare-fun bm!631498 () Bool)

(declare-fun call!631503 () Bool)

(assert (=> bm!631498 (= call!631503 (validRegex!8748 (ite c!1289624 (regOne!34597 rInner!765) (regTwo!34596 rInner!765))))))

(declare-fun bm!631499 () Bool)

(assert (=> bm!631499 (= call!631502 (validRegex!8748 (ite c!1289625 (reg!17371 rInner!765) (ite c!1289624 (regTwo!34597 rInner!765) (regOne!34596 rInner!765)))))))

(declare-fun b!6953767 () Bool)

(declare-fun res!2837256 () Bool)

(assert (=> b!6953767 (=> (not res!2837256) (not e!4181747))))

(assert (=> b!6953767 (= res!2837256 call!631503)))

(assert (=> b!6953767 (= e!4181743 e!4181747)))

(declare-fun b!6953768 () Bool)

(assert (=> b!6953768 (= e!4181746 call!631503)))

(assert (= (and d!2169319 (not res!2837253)) b!6953766))

(assert (= (and b!6953766 c!1289625) b!6953763))

(assert (= (and b!6953766 (not c!1289625)) b!6953761))

(assert (= (and b!6953763 res!2837257) b!6953762))

(assert (= (and b!6953761 c!1289624) b!6953767))

(assert (= (and b!6953761 (not c!1289624)) b!6953765))

(assert (= (and b!6953767 res!2837256) b!6953760))

(assert (= (and b!6953765 (not res!2837255)) b!6953764))

(assert (= (and b!6953764 res!2837254) b!6953768))

(assert (= (or b!6953767 b!6953768) bm!631498))

(assert (= (or b!6953760 b!6953764) bm!631497))

(assert (= (or b!6953762 bm!631497) bm!631499))

(declare-fun m!7653340 () Bool)

(assert (=> b!6953763 m!7653340))

(declare-fun m!7653342 () Bool)

(assert (=> bm!631498 m!7653342))

(declare-fun m!7653344 () Bool)

(assert (=> bm!631499 m!7653344))

(assert (=> start!667332 d!2169319))

(declare-fun d!2169321 () Bool)

(declare-fun nullableFct!2567 (Regex!17042) Bool)

(assert (=> d!2169321 (= (nullable!6855 rInner!765) (nullableFct!2567 rInner!765))))

(declare-fun bs!1857862 () Bool)

(assert (= bs!1857862 d!2169321))

(declare-fun m!7653346 () Bool)

(assert (=> bs!1857862 m!7653346))

(assert (=> b!6953690 d!2169321))

(declare-fun b!6953783 () Bool)

(declare-fun res!2837265 () Bool)

(declare-fun e!4181757 () Bool)

(assert (=> b!6953783 (=> (not res!2837265) (not e!4181757))))

(declare-fun lt!2478203 () List!66795)

(declare-fun size!40836 (List!66795) Int)

(assert (=> b!6953783 (= res!2837265 (= (size!40836 lt!2478203) (+ (size!40836 (_1!37198 lt!2478194)) (size!40836 (_2!37198 lt!2478194)))))))

(declare-fun b!6953784 () Bool)

(assert (=> b!6953784 (= e!4181757 (or (not (= (_2!37198 lt!2478194) Nil!66671)) (= lt!2478203 (_1!37198 lt!2478194))))))

(declare-fun d!2169323 () Bool)

(assert (=> d!2169323 e!4181757))

(declare-fun res!2837264 () Bool)

(assert (=> d!2169323 (=> (not res!2837264) (not e!4181757))))

(declare-fun content!13139 (List!66795) (Set C!34354))

(assert (=> d!2169323 (= res!2837264 (= (content!13139 lt!2478203) (set.union (content!13139 (_1!37198 lt!2478194)) (content!13139 (_2!37198 lt!2478194)))))))

(declare-fun e!4181756 () List!66795)

(assert (=> d!2169323 (= lt!2478203 e!4181756)))

(declare-fun c!1289629 () Bool)

(assert (=> d!2169323 (= c!1289629 (is-Nil!66671 (_1!37198 lt!2478194)))))

(assert (=> d!2169323 (= (++!15073 (_1!37198 lt!2478194) (_2!37198 lt!2478194)) lt!2478203)))

(declare-fun b!6953782 () Bool)

(assert (=> b!6953782 (= e!4181756 (Cons!66671 (h!73119 (_1!37198 lt!2478194)) (++!15073 (t!380538 (_1!37198 lt!2478194)) (_2!37198 lt!2478194))))))

(declare-fun b!6953781 () Bool)

(assert (=> b!6953781 (= e!4181756 (_2!37198 lt!2478194))))

(assert (= (and d!2169323 c!1289629) b!6953781))

(assert (= (and d!2169323 (not c!1289629)) b!6953782))

(assert (= (and d!2169323 res!2837264) b!6953783))

(assert (= (and b!6953783 res!2837265) b!6953784))

(declare-fun m!7653362 () Bool)

(assert (=> b!6953783 m!7653362))

(declare-fun m!7653364 () Bool)

(assert (=> b!6953783 m!7653364))

(declare-fun m!7653366 () Bool)

(assert (=> b!6953783 m!7653366))

(declare-fun m!7653368 () Bool)

(assert (=> d!2169323 m!7653368))

(declare-fun m!7653370 () Bool)

(assert (=> d!2169323 m!7653370))

(declare-fun m!7653372 () Bool)

(assert (=> d!2169323 m!7653372))

(declare-fun m!7653374 () Bool)

(assert (=> b!6953782 m!7653374))

(assert (=> b!6953692 d!2169323))

(declare-fun d!2169327 () Bool)

(declare-fun lt!2478208 () tuple2!67790)

(declare-fun dynLambda!26584 (Int tuple2!67790) Bool)

(assert (=> d!2169327 (dynLambda!26584 lambda!396645 lt!2478208)))

(declare-fun choose!51815 (Int) tuple2!67790)

(assert (=> d!2169327 (= lt!2478208 (choose!51815 lambda!396645))))

(assert (=> d!2169327 (Exists!4038 lambda!396645)))

(assert (=> d!2169327 (= (pickWitness!367 lambda!396645) lt!2478208)))

(declare-fun b_lambda!260417 () Bool)

(assert (=> (not b_lambda!260417) (not d!2169327)))

(declare-fun bs!1857863 () Bool)

(assert (= bs!1857863 d!2169327))

(declare-fun m!7653376 () Bool)

(assert (=> bs!1857863 m!7653376))

(declare-fun m!7653378 () Bool)

(assert (=> bs!1857863 m!7653378))

(assert (=> bs!1857863 m!7653320))

(assert (=> b!6953692 d!2169327))

(declare-fun b!6953796 () Bool)

(declare-fun e!4181760 () Bool)

(declare-fun tp!1917010 () Bool)

(declare-fun tp!1917009 () Bool)

(assert (=> b!6953796 (= e!4181760 (and tp!1917010 tp!1917009))))

(declare-fun b!6953797 () Bool)

(declare-fun tp!1917008 () Bool)

(assert (=> b!6953797 (= e!4181760 tp!1917008)))

(declare-fun b!6953798 () Bool)

(declare-fun tp!1917011 () Bool)

(declare-fun tp!1917012 () Bool)

(assert (=> b!6953798 (= e!4181760 (and tp!1917011 tp!1917012))))

(declare-fun b!6953795 () Bool)

(assert (=> b!6953795 (= e!4181760 tp_is_empty!43309)))

(assert (=> b!6953686 (= tp!1916974 e!4181760)))

(assert (= (and b!6953686 (is-ElementMatch!17042 (reg!17371 rInner!765))) b!6953795))

(assert (= (and b!6953686 (is-Concat!25887 (reg!17371 rInner!765))) b!6953796))

(assert (= (and b!6953686 (is-Star!17042 (reg!17371 rInner!765))) b!6953797))

(assert (= (and b!6953686 (is-Union!17042 (reg!17371 rInner!765))) b!6953798))

(declare-fun b!6953800 () Bool)

(declare-fun e!4181761 () Bool)

(declare-fun tp!1917015 () Bool)

(declare-fun tp!1917014 () Bool)

(assert (=> b!6953800 (= e!4181761 (and tp!1917015 tp!1917014))))

(declare-fun b!6953801 () Bool)

(declare-fun tp!1917013 () Bool)

(assert (=> b!6953801 (= e!4181761 tp!1917013)))

(declare-fun b!6953802 () Bool)

(declare-fun tp!1917016 () Bool)

(declare-fun tp!1917017 () Bool)

(assert (=> b!6953802 (= e!4181761 (and tp!1917016 tp!1917017))))

(declare-fun b!6953799 () Bool)

(assert (=> b!6953799 (= e!4181761 tp_is_empty!43309)))

(assert (=> b!6953689 (= tp!1916975 e!4181761)))

(assert (= (and b!6953689 (is-ElementMatch!17042 (regOne!34597 rInner!765))) b!6953799))

(assert (= (and b!6953689 (is-Concat!25887 (regOne!34597 rInner!765))) b!6953800))

(assert (= (and b!6953689 (is-Star!17042 (regOne!34597 rInner!765))) b!6953801))

(assert (= (and b!6953689 (is-Union!17042 (regOne!34597 rInner!765))) b!6953802))

(declare-fun b!6953804 () Bool)

(declare-fun e!4181762 () Bool)

(declare-fun tp!1917020 () Bool)

(declare-fun tp!1917019 () Bool)

(assert (=> b!6953804 (= e!4181762 (and tp!1917020 tp!1917019))))

(declare-fun b!6953805 () Bool)

(declare-fun tp!1917018 () Bool)

(assert (=> b!6953805 (= e!4181762 tp!1917018)))

(declare-fun b!6953806 () Bool)

(declare-fun tp!1917021 () Bool)

(declare-fun tp!1917022 () Bool)

(assert (=> b!6953806 (= e!4181762 (and tp!1917021 tp!1917022))))

(declare-fun b!6953803 () Bool)

(assert (=> b!6953803 (= e!4181762 tp_is_empty!43309)))

(assert (=> b!6953689 (= tp!1916977 e!4181762)))

(assert (= (and b!6953689 (is-ElementMatch!17042 (regTwo!34597 rInner!765))) b!6953803))

(assert (= (and b!6953689 (is-Concat!25887 (regTwo!34597 rInner!765))) b!6953804))

(assert (= (and b!6953689 (is-Star!17042 (regTwo!34597 rInner!765))) b!6953805))

(assert (= (and b!6953689 (is-Union!17042 (regTwo!34597 rInner!765))) b!6953806))

(declare-fun b!6953811 () Bool)

(declare-fun e!4181765 () Bool)

(declare-fun tp!1917025 () Bool)

(assert (=> b!6953811 (= e!4181765 (and tp_is_empty!43309 tp!1917025))))

(assert (=> b!6953687 (= tp!1916976 e!4181765)))

(assert (= (and b!6953687 (is-Cons!66671 (t!380538 s!10388))) b!6953811))

(declare-fun b!6953813 () Bool)

(declare-fun e!4181766 () Bool)

(declare-fun tp!1917028 () Bool)

(declare-fun tp!1917027 () Bool)

(assert (=> b!6953813 (= e!4181766 (and tp!1917028 tp!1917027))))

(declare-fun b!6953814 () Bool)

(declare-fun tp!1917026 () Bool)

(assert (=> b!6953814 (= e!4181766 tp!1917026)))

(declare-fun b!6953815 () Bool)

(declare-fun tp!1917029 () Bool)

(declare-fun tp!1917030 () Bool)

(assert (=> b!6953815 (= e!4181766 (and tp!1917029 tp!1917030))))

(declare-fun b!6953812 () Bool)

(assert (=> b!6953812 (= e!4181766 tp_is_empty!43309)))

(assert (=> b!6953693 (= tp!1916979 e!4181766)))

(assert (= (and b!6953693 (is-ElementMatch!17042 (regOne!34596 rInner!765))) b!6953812))

(assert (= (and b!6953693 (is-Concat!25887 (regOne!34596 rInner!765))) b!6953813))

(assert (= (and b!6953693 (is-Star!17042 (regOne!34596 rInner!765))) b!6953814))

(assert (= (and b!6953693 (is-Union!17042 (regOne!34596 rInner!765))) b!6953815))

(declare-fun b!6953817 () Bool)

(declare-fun e!4181767 () Bool)

(declare-fun tp!1917033 () Bool)

(declare-fun tp!1917032 () Bool)

(assert (=> b!6953817 (= e!4181767 (and tp!1917033 tp!1917032))))

(declare-fun b!6953818 () Bool)

(declare-fun tp!1917031 () Bool)

(assert (=> b!6953818 (= e!4181767 tp!1917031)))

(declare-fun b!6953819 () Bool)

(declare-fun tp!1917034 () Bool)

(declare-fun tp!1917035 () Bool)

(assert (=> b!6953819 (= e!4181767 (and tp!1917034 tp!1917035))))

(declare-fun b!6953816 () Bool)

(assert (=> b!6953816 (= e!4181767 tp_is_empty!43309)))

(assert (=> b!6953693 (= tp!1916978 e!4181767)))

(assert (= (and b!6953693 (is-ElementMatch!17042 (regTwo!34596 rInner!765))) b!6953816))

(assert (= (and b!6953693 (is-Concat!25887 (regTwo!34596 rInner!765))) b!6953817))

(assert (= (and b!6953693 (is-Star!17042 (regTwo!34596 rInner!765))) b!6953818))

(assert (= (and b!6953693 (is-Union!17042 (regTwo!34596 rInner!765))) b!6953819))

(declare-fun b_lambda!260421 () Bool)

(assert (= b_lambda!260417 (or b!6953691 b_lambda!260421)))

(declare-fun bs!1857865 () Bool)

(declare-fun d!2169331 () Bool)

(assert (= bs!1857865 (and d!2169331 b!6953691)))

(declare-fun res!2837266 () Bool)

(declare-fun e!4181768 () Bool)

(assert (=> bs!1857865 (=> (not res!2837266) (not e!4181768))))

(assert (=> bs!1857865 (= res!2837266 (= (++!15073 (_1!37198 lt!2478208) (_2!37198 lt!2478208)) s!10388))))

(assert (=> bs!1857865 (= (dynLambda!26584 lambda!396645 lt!2478208) e!4181768)))

(declare-fun b!6953820 () Bool)

(declare-fun res!2837267 () Bool)

(assert (=> b!6953820 (=> (not res!2837267) (not e!4181768))))

(declare-fun matchR!9155 (Regex!17042 List!66795) Bool)

(assert (=> b!6953820 (= res!2837267 (matchR!9155 rInner!765 (_1!37198 lt!2478208)))))

(declare-fun b!6953821 () Bool)

(assert (=> b!6953821 (= e!4181768 (matchR!9155 (Star!17042 rInner!765) (_2!37198 lt!2478208)))))

(assert (= (and bs!1857865 res!2837266) b!6953820))

(assert (= (and b!6953820 res!2837267) b!6953821))

(declare-fun m!7653384 () Bool)

(assert (=> bs!1857865 m!7653384))

(declare-fun m!7653386 () Bool)

(assert (=> b!6953820 m!7653386))

(declare-fun m!7653388 () Bool)

(assert (=> b!6953821 m!7653388))

(assert (=> d!2169327 d!2169331))

(push 1)

(assert (not b!6953802))

(assert (not b!6953804))

(assert (not b!6953818))

(assert (not b_lambda!260421))

(assert (not b!6953763))

(assert (not bs!1857865))

(assert (not d!2169321))

(assert (not b!6953805))

(assert (not b!6953798))

(assert (not b!6953821))

(assert (not d!2169327))

(assert (not b!6953817))

(assert (not b!6953814))

(assert (not bm!631499))

(assert (not d!2169317))

(assert (not b!6953783))

(assert (not b!6953796))

(assert (not b!6953800))

(assert (not b!6953782))

(assert (not b!6953813))

(assert (not b!6953801))

(assert (not bm!631498))

(assert (not b!6953797))

(assert (not d!2169323))

(assert (not b!6953815))

(assert (not b!6953819))

(assert (not b!6953820))

(assert (not b!6953806))

(assert (not b!6953811))

(assert tp_is_empty!43309)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


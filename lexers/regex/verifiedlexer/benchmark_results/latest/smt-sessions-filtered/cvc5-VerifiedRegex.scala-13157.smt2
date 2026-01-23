; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!718454 () Bool)

(assert start!718454)

(declare-fun b!7357578 () Bool)

(declare-fun e!4405262 () Bool)

(declare-fun e!4405259 () Bool)

(assert (=> b!7357578 (= e!4405262 e!4405259)))

(declare-fun res!2970785 () Bool)

(assert (=> b!7357578 (=> (not res!2970785) (not e!4405259))))

(declare-datatypes ((C!38678 0))(
  ( (C!38679 (val!29699 Int)) )
))
(declare-datatypes ((Regex!19202 0))(
  ( (ElementMatch!19202 (c!1367018 C!38678)) (Concat!28047 (regOne!38916 Regex!19202) (regTwo!38916 Regex!19202)) (EmptyExpr!19202) (Star!19202 (reg!19531 Regex!19202)) (EmptyLang!19202) (Union!19202 (regOne!38917 Regex!19202) (regTwo!38917 Regex!19202)) )
))
(declare-fun r1!2370 () Regex!19202)

(declare-fun c!10362 () C!38678)

(assert (=> b!7357578 (= res!2970785 (and (or (not (is-ElementMatch!19202 r1!2370)) (not (= c!10362 (c!1367018 r1!2370)))) (not (is-Union!19202 r1!2370))))))

(declare-datatypes ((List!71698 0))(
  ( (Nil!71574) (Cons!71574 (h!78022 Regex!19202) (t!386141 List!71698)) )
))
(declare-datatypes ((Context!16284 0))(
  ( (Context!16285 (exprs!8642 List!71698)) )
))
(declare-fun lt!2613480 () (Set Context!16284))

(declare-fun ct1!282 () Context!16284)

(declare-fun ct2!378 () Context!16284)

(declare-fun derivationStepZipperDown!3028 (Regex!19202 Context!16284 C!38678) (Set Context!16284))

(declare-fun ++!17020 (List!71698 List!71698) List!71698)

(assert (=> b!7357578 (= lt!2613480 (derivationStepZipperDown!3028 r1!2370 (Context!16285 (++!17020 (exprs!8642 ct1!282) (exprs!8642 ct2!378))) c!10362))))

(declare-fun lambda!457140 () Int)

(declare-datatypes ((Unit!165357 0))(
  ( (Unit!165358) )
))
(declare-fun lt!2613481 () Unit!165357)

(declare-fun lemmaConcatPreservesForall!1877 (List!71698 List!71698 Int) Unit!165357)

(assert (=> b!7357578 (= lt!2613481 (lemmaConcatPreservesForall!1877 (exprs!8642 ct1!282) (exprs!8642 ct2!378) lambda!457140))))

(declare-fun b!7357579 () Bool)

(declare-fun e!4405263 () Bool)

(declare-fun tp!2090160 () Bool)

(assert (=> b!7357579 (= e!4405263 tp!2090160)))

(declare-fun b!7357580 () Bool)

(declare-fun e!4405260 () Bool)

(assert (=> b!7357580 (= e!4405259 e!4405260)))

(declare-fun res!2970790 () Bool)

(assert (=> b!7357580 (=> (not res!2970790) (not e!4405260))))

(declare-fun forall!18022 (List!71698 Int) Bool)

(assert (=> b!7357580 (= res!2970790 (forall!18022 (exprs!8642 ct1!282) lambda!457140))))

(declare-fun cWitness!61 () Context!16284)

(declare-fun lt!2613482 () Unit!165357)

(assert (=> b!7357580 (= lt!2613482 (lemmaConcatPreservesForall!1877 (exprs!8642 cWitness!61) (exprs!8642 ct2!378) lambda!457140))))

(declare-fun b!7357581 () Bool)

(declare-fun res!2970789 () Bool)

(assert (=> b!7357581 (=> (not res!2970789) (not e!4405262))))

(assert (=> b!7357581 (= res!2970789 (set.member cWitness!61 (derivationStepZipperDown!3028 r1!2370 ct1!282 c!10362)))))

(declare-fun res!2970791 () Bool)

(assert (=> start!718454 (=> (not res!2970791) (not e!4405262))))

(declare-fun validRegex!9798 (Regex!19202) Bool)

(assert (=> start!718454 (= res!2970791 (validRegex!9798 r1!2370))))

(assert (=> start!718454 e!4405262))

(declare-fun tp_is_empty!48649 () Bool)

(assert (=> start!718454 tp_is_empty!48649))

(declare-fun e!4405266 () Bool)

(declare-fun inv!91346 (Context!16284) Bool)

(assert (=> start!718454 (and (inv!91346 cWitness!61) e!4405266)))

(assert (=> start!718454 (and (inv!91346 ct1!282) e!4405263)))

(declare-fun e!4405264 () Bool)

(assert (=> start!718454 e!4405264))

(declare-fun e!4405261 () Bool)

(assert (=> start!718454 (and (inv!91346 ct2!378) e!4405261)))

(declare-fun b!7357582 () Bool)

(declare-fun res!2970788 () Bool)

(assert (=> b!7357582 (=> (not res!2970788) (not e!4405259))))

(declare-fun e!4405265 () Bool)

(assert (=> b!7357582 (= res!2970788 e!4405265)))

(declare-fun res!2970786 () Bool)

(assert (=> b!7357582 (=> res!2970786 e!4405265)))

(assert (=> b!7357582 (= res!2970786 (not (is-Concat!28047 r1!2370)))))

(declare-fun b!7357583 () Bool)

(declare-fun tp!2090164 () Bool)

(assert (=> b!7357583 (= e!4405264 tp!2090164)))

(declare-fun b!7357584 () Bool)

(assert (=> b!7357584 (= e!4405260 (not (forall!18022 (exprs!8642 ct2!378) lambda!457140)))))

(declare-fun b!7357585 () Bool)

(declare-fun tp!2090163 () Bool)

(assert (=> b!7357585 (= e!4405261 tp!2090163)))

(declare-fun b!7357586 () Bool)

(declare-fun tp!2090161 () Bool)

(declare-fun tp!2090162 () Bool)

(assert (=> b!7357586 (= e!4405264 (and tp!2090161 tp!2090162))))

(declare-fun b!7357587 () Bool)

(declare-fun tp!2090158 () Bool)

(declare-fun tp!2090159 () Bool)

(assert (=> b!7357587 (= e!4405264 (and tp!2090158 tp!2090159))))

(declare-fun b!7357588 () Bool)

(declare-fun tp!2090165 () Bool)

(assert (=> b!7357588 (= e!4405266 tp!2090165)))

(declare-fun b!7357589 () Bool)

(declare-fun nullable!8293 (Regex!19202) Bool)

(assert (=> b!7357589 (= e!4405265 (not (nullable!8293 (regOne!38916 r1!2370))))))

(declare-fun b!7357590 () Bool)

(declare-fun res!2970787 () Bool)

(assert (=> b!7357590 (=> (not res!2970787) (not e!4405259))))

(assert (=> b!7357590 (= res!2970787 (and (not (is-Concat!28047 r1!2370)) (not (is-Star!19202 r1!2370))))))

(declare-fun b!7357591 () Bool)

(assert (=> b!7357591 (= e!4405264 tp_is_empty!48649)))

(assert (= (and start!718454 res!2970791) b!7357581))

(assert (= (and b!7357581 res!2970789) b!7357578))

(assert (= (and b!7357578 res!2970785) b!7357582))

(assert (= (and b!7357582 (not res!2970786)) b!7357589))

(assert (= (and b!7357582 res!2970788) b!7357590))

(assert (= (and b!7357590 res!2970787) b!7357580))

(assert (= (and b!7357580 res!2970790) b!7357584))

(assert (= start!718454 b!7357588))

(assert (= start!718454 b!7357579))

(assert (= (and start!718454 (is-ElementMatch!19202 r1!2370)) b!7357591))

(assert (= (and start!718454 (is-Concat!28047 r1!2370)) b!7357587))

(assert (= (and start!718454 (is-Star!19202 r1!2370)) b!7357583))

(assert (= (and start!718454 (is-Union!19202 r1!2370)) b!7357586))

(assert (= start!718454 b!7357585))

(declare-fun m!8016846 () Bool)

(assert (=> start!718454 m!8016846))

(declare-fun m!8016848 () Bool)

(assert (=> start!718454 m!8016848))

(declare-fun m!8016850 () Bool)

(assert (=> start!718454 m!8016850))

(declare-fun m!8016852 () Bool)

(assert (=> start!718454 m!8016852))

(declare-fun m!8016854 () Bool)

(assert (=> b!7357584 m!8016854))

(declare-fun m!8016856 () Bool)

(assert (=> b!7357581 m!8016856))

(declare-fun m!8016858 () Bool)

(assert (=> b!7357581 m!8016858))

(declare-fun m!8016860 () Bool)

(assert (=> b!7357580 m!8016860))

(declare-fun m!8016862 () Bool)

(assert (=> b!7357580 m!8016862))

(declare-fun m!8016864 () Bool)

(assert (=> b!7357589 m!8016864))

(declare-fun m!8016866 () Bool)

(assert (=> b!7357578 m!8016866))

(declare-fun m!8016868 () Bool)

(assert (=> b!7357578 m!8016868))

(declare-fun m!8016870 () Bool)

(assert (=> b!7357578 m!8016870))

(push 1)

(assert (not b!7357587))

(assert (not b!7357589))

(assert (not b!7357588))

(assert (not b!7357581))

(assert (not b!7357584))

(assert (not b!7357579))

(assert (not b!7357578))

(assert (not b!7357585))

(assert tp_is_empty!48649)

(assert (not b!7357583))

(assert (not start!718454))

(assert (not b!7357586))

(assert (not b!7357580))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2281732 () Bool)

(declare-fun res!2970826 () Bool)

(declare-fun e!4405308 () Bool)

(assert (=> d!2281732 (=> res!2970826 e!4405308)))

(assert (=> d!2281732 (= res!2970826 (is-ElementMatch!19202 r1!2370))))

(assert (=> d!2281732 (= (validRegex!9798 r1!2370) e!4405308)))

(declare-fun b!7357652 () Bool)

(declare-fun res!2970825 () Bool)

(declare-fun e!4405307 () Bool)

(assert (=> b!7357652 (=> res!2970825 e!4405307)))

(assert (=> b!7357652 (= res!2970825 (not (is-Concat!28047 r1!2370)))))

(declare-fun e!4405309 () Bool)

(assert (=> b!7357652 (= e!4405309 e!4405307)))

(declare-fun b!7357653 () Bool)

(declare-fun e!4405305 () Bool)

(declare-fun call!673812 () Bool)

(assert (=> b!7357653 (= e!4405305 call!673812)))

(declare-fun b!7357654 () Bool)

(declare-fun e!4405310 () Bool)

(declare-fun e!4405311 () Bool)

(assert (=> b!7357654 (= e!4405310 e!4405311)))

(declare-fun res!2970823 () Bool)

(assert (=> b!7357654 (= res!2970823 (not (nullable!8293 (reg!19531 r1!2370))))))

(assert (=> b!7357654 (=> (not res!2970823) (not e!4405311))))

(declare-fun b!7357655 () Bool)

(declare-fun e!4405306 () Bool)

(assert (=> b!7357655 (= e!4405307 e!4405306)))

(declare-fun res!2970824 () Bool)

(assert (=> b!7357655 (=> (not res!2970824) (not e!4405306))))

(assert (=> b!7357655 (= res!2970824 call!673812)))

(declare-fun b!7357656 () Bool)

(declare-fun call!673813 () Bool)

(assert (=> b!7357656 (= e!4405306 call!673813)))

(declare-fun b!7357657 () Bool)

(assert (=> b!7357657 (= e!4405310 e!4405309)))

(declare-fun c!1367024 () Bool)

(assert (=> b!7357657 (= c!1367024 (is-Union!19202 r1!2370))))

(declare-fun b!7357658 () Bool)

(assert (=> b!7357658 (= e!4405308 e!4405310)))

(declare-fun c!1367025 () Bool)

(assert (=> b!7357658 (= c!1367025 (is-Star!19202 r1!2370))))

(declare-fun bm!673807 () Bool)

(assert (=> bm!673807 (= call!673812 (validRegex!9798 (ite c!1367024 (regTwo!38917 r1!2370) (regOne!38916 r1!2370))))))

(declare-fun b!7357659 () Bool)

(declare-fun res!2970827 () Bool)

(assert (=> b!7357659 (=> (not res!2970827) (not e!4405305))))

(assert (=> b!7357659 (= res!2970827 call!673813)))

(assert (=> b!7357659 (= e!4405309 e!4405305)))

(declare-fun bm!673808 () Bool)

(declare-fun call!673814 () Bool)

(assert (=> bm!673808 (= call!673813 call!673814)))

(declare-fun bm!673809 () Bool)

(assert (=> bm!673809 (= call!673814 (validRegex!9798 (ite c!1367025 (reg!19531 r1!2370) (ite c!1367024 (regOne!38917 r1!2370) (regTwo!38916 r1!2370)))))))

(declare-fun b!7357660 () Bool)

(assert (=> b!7357660 (= e!4405311 call!673814)))

(assert (= (and d!2281732 (not res!2970826)) b!7357658))

(assert (= (and b!7357658 c!1367025) b!7357654))

(assert (= (and b!7357658 (not c!1367025)) b!7357657))

(assert (= (and b!7357654 res!2970823) b!7357660))

(assert (= (and b!7357657 c!1367024) b!7357659))

(assert (= (and b!7357657 (not c!1367024)) b!7357652))

(assert (= (and b!7357659 res!2970827) b!7357653))

(assert (= (and b!7357652 (not res!2970825)) b!7357655))

(assert (= (and b!7357655 res!2970824) b!7357656))

(assert (= (or b!7357659 b!7357656) bm!673808))

(assert (= (or b!7357653 b!7357655) bm!673807))

(assert (= (or b!7357660 bm!673808) bm!673809))

(declare-fun m!8016898 () Bool)

(assert (=> b!7357654 m!8016898))

(declare-fun m!8016900 () Bool)

(assert (=> bm!673807 m!8016900))

(declare-fun m!8016902 () Bool)

(assert (=> bm!673809 m!8016902))

(assert (=> start!718454 d!2281732))

(declare-fun bs!1919890 () Bool)

(declare-fun d!2281736 () Bool)

(assert (= bs!1919890 (and d!2281736 b!7357578)))

(declare-fun lambda!457150 () Int)

(assert (=> bs!1919890 (= lambda!457150 lambda!457140)))

(assert (=> d!2281736 (= (inv!91346 cWitness!61) (forall!18022 (exprs!8642 cWitness!61) lambda!457150))))

(declare-fun bs!1919891 () Bool)

(assert (= bs!1919891 d!2281736))

(declare-fun m!8016904 () Bool)

(assert (=> bs!1919891 m!8016904))

(assert (=> start!718454 d!2281736))

(declare-fun bs!1919892 () Bool)

(declare-fun d!2281738 () Bool)

(assert (= bs!1919892 (and d!2281738 b!7357578)))

(declare-fun lambda!457151 () Int)

(assert (=> bs!1919892 (= lambda!457151 lambda!457140)))

(declare-fun bs!1919893 () Bool)

(assert (= bs!1919893 (and d!2281738 d!2281736)))

(assert (=> bs!1919893 (= lambda!457151 lambda!457150)))

(assert (=> d!2281738 (= (inv!91346 ct1!282) (forall!18022 (exprs!8642 ct1!282) lambda!457151))))

(declare-fun bs!1919894 () Bool)

(assert (= bs!1919894 d!2281738))

(declare-fun m!8016906 () Bool)

(assert (=> bs!1919894 m!8016906))

(assert (=> start!718454 d!2281738))

(declare-fun bs!1919895 () Bool)

(declare-fun d!2281740 () Bool)

(assert (= bs!1919895 (and d!2281740 b!7357578)))

(declare-fun lambda!457152 () Int)

(assert (=> bs!1919895 (= lambda!457152 lambda!457140)))

(declare-fun bs!1919896 () Bool)

(assert (= bs!1919896 (and d!2281740 d!2281736)))

(assert (=> bs!1919896 (= lambda!457152 lambda!457150)))

(declare-fun bs!1919897 () Bool)

(assert (= bs!1919897 (and d!2281740 d!2281738)))

(assert (=> bs!1919897 (= lambda!457152 lambda!457151)))

(assert (=> d!2281740 (= (inv!91346 ct2!378) (forall!18022 (exprs!8642 ct2!378) lambda!457152))))

(declare-fun bs!1919898 () Bool)

(assert (= bs!1919898 d!2281740))

(declare-fun m!8016908 () Bool)

(assert (=> bs!1919898 m!8016908))

(assert (=> start!718454 d!2281740))

(declare-fun call!673847 () List!71698)

(declare-fun c!1367053 () Bool)

(declare-fun c!1367052 () Bool)

(declare-fun bm!673840 () Bool)

(declare-fun call!673849 () (Set Context!16284))

(declare-fun c!1367055 () Bool)

(assert (=> bm!673840 (= call!673849 (derivationStepZipperDown!3028 (ite c!1367053 (regTwo!38917 r1!2370) (ite c!1367052 (regTwo!38916 r1!2370) (ite c!1367055 (regOne!38916 r1!2370) (reg!19531 r1!2370)))) (ite (or c!1367053 c!1367052) ct1!282 (Context!16285 call!673847)) c!10362))))

(declare-fun bm!673841 () Bool)

(declare-fun call!673848 () (Set Context!16284))

(declare-fun call!673846 () (Set Context!16284))

(assert (=> bm!673841 (= call!673848 call!673846)))

(declare-fun b!7357716 () Bool)

(declare-fun e!4405343 () (Set Context!16284))

(assert (=> b!7357716 (= e!4405343 (as set.empty (Set Context!16284)))))

(declare-fun bm!673842 () Bool)

(assert (=> bm!673842 (= call!673846 call!673849)))

(declare-fun b!7357718 () Bool)

(declare-fun e!4405344 () (Set Context!16284))

(declare-fun e!4405342 () (Set Context!16284))

(assert (=> b!7357718 (= e!4405344 e!4405342)))

(assert (=> b!7357718 (= c!1367053 (is-Union!19202 r1!2370))))

(declare-fun call!673850 () List!71698)

(declare-fun bm!673843 () Bool)

(declare-fun $colon$colon!3200 (List!71698 Regex!19202) List!71698)

(assert (=> bm!673843 (= call!673850 ($colon$colon!3200 (exprs!8642 ct1!282) (ite (or c!1367052 c!1367055) (regTwo!38916 r1!2370) r1!2370)))))

(declare-fun b!7357719 () Bool)

(declare-fun call!673845 () (Set Context!16284))

(assert (=> b!7357719 (= e!4405342 (set.union call!673845 call!673849))))

(declare-fun b!7357720 () Bool)

(assert (=> b!7357720 (= e!4405343 call!673848)))

(declare-fun bm!673844 () Bool)

(assert (=> bm!673844 (= call!673845 (derivationStepZipperDown!3028 (ite c!1367053 (regOne!38917 r1!2370) (regOne!38916 r1!2370)) (ite c!1367053 ct1!282 (Context!16285 call!673850)) c!10362))))

(declare-fun b!7357721 () Bool)

(declare-fun e!4405346 () (Set Context!16284))

(assert (=> b!7357721 (= e!4405346 call!673848)))

(declare-fun d!2281742 () Bool)

(declare-fun c!1367054 () Bool)

(assert (=> d!2281742 (= c!1367054 (and (is-ElementMatch!19202 r1!2370) (= (c!1367018 r1!2370) c!10362)))))

(assert (=> d!2281742 (= (derivationStepZipperDown!3028 r1!2370 ct1!282 c!10362) e!4405344)))

(declare-fun b!7357717 () Bool)

(assert (=> b!7357717 (= e!4405344 (set.insert ct1!282 (as set.empty (Set Context!16284))))))

(declare-fun b!7357722 () Bool)

(declare-fun c!1367051 () Bool)

(assert (=> b!7357722 (= c!1367051 (is-Star!19202 r1!2370))))

(assert (=> b!7357722 (= e!4405346 e!4405343)))

(declare-fun b!7357723 () Bool)

(declare-fun e!4405347 () Bool)

(assert (=> b!7357723 (= c!1367052 e!4405347)))

(declare-fun res!2970833 () Bool)

(assert (=> b!7357723 (=> (not res!2970833) (not e!4405347))))

(assert (=> b!7357723 (= res!2970833 (is-Concat!28047 r1!2370))))

(declare-fun e!4405345 () (Set Context!16284))

(assert (=> b!7357723 (= e!4405342 e!4405345)))

(declare-fun bm!673845 () Bool)

(assert (=> bm!673845 (= call!673847 call!673850)))

(declare-fun b!7357724 () Bool)

(assert (=> b!7357724 (= e!4405347 (nullable!8293 (regOne!38916 r1!2370)))))

(declare-fun b!7357725 () Bool)

(assert (=> b!7357725 (= e!4405345 (set.union call!673845 call!673846))))

(declare-fun b!7357726 () Bool)

(assert (=> b!7357726 (= e!4405345 e!4405346)))

(assert (=> b!7357726 (= c!1367055 (is-Concat!28047 r1!2370))))

(assert (= (and d!2281742 c!1367054) b!7357717))

(assert (= (and d!2281742 (not c!1367054)) b!7357718))

(assert (= (and b!7357718 c!1367053) b!7357719))

(assert (= (and b!7357718 (not c!1367053)) b!7357723))

(assert (= (and b!7357723 res!2970833) b!7357724))

(assert (= (and b!7357723 c!1367052) b!7357725))

(assert (= (and b!7357723 (not c!1367052)) b!7357726))

(assert (= (and b!7357726 c!1367055) b!7357721))

(assert (= (and b!7357726 (not c!1367055)) b!7357722))

(assert (= (and b!7357722 c!1367051) b!7357720))

(assert (= (and b!7357722 (not c!1367051)) b!7357716))

(assert (= (or b!7357721 b!7357720) bm!673845))

(assert (= (or b!7357721 b!7357720) bm!673841))

(assert (= (or b!7357725 bm!673841) bm!673842))

(assert (= (or b!7357725 bm!673845) bm!673843))

(assert (= (or b!7357719 bm!673842) bm!673840))

(assert (= (or b!7357719 b!7357725) bm!673844))

(declare-fun m!8016918 () Bool)

(assert (=> bm!673843 m!8016918))

(declare-fun m!8016920 () Bool)

(assert (=> bm!673844 m!8016920))

(declare-fun m!8016922 () Bool)

(assert (=> b!7357717 m!8016922))

(assert (=> b!7357724 m!8016864))

(declare-fun m!8016924 () Bool)

(assert (=> bm!673840 m!8016924))

(assert (=> b!7357581 d!2281742))

(declare-fun d!2281746 () Bool)

(declare-fun res!2970848 () Bool)

(declare-fun e!4405366 () Bool)

(assert (=> d!2281746 (=> res!2970848 e!4405366)))

(assert (=> d!2281746 (= res!2970848 (is-Nil!71574 (exprs!8642 ct1!282)))))

(assert (=> d!2281746 (= (forall!18022 (exprs!8642 ct1!282) lambda!457140) e!4405366)))

(declare-fun b!7357749 () Bool)

(declare-fun e!4405367 () Bool)

(assert (=> b!7357749 (= e!4405366 e!4405367)))

(declare-fun res!2970849 () Bool)

(assert (=> b!7357749 (=> (not res!2970849) (not e!4405367))))

(declare-fun dynLambda!29518 (Int Regex!19202) Bool)

(assert (=> b!7357749 (= res!2970849 (dynLambda!29518 lambda!457140 (h!78022 (exprs!8642 ct1!282))))))

(declare-fun b!7357750 () Bool)

(assert (=> b!7357750 (= e!4405367 (forall!18022 (t!386141 (exprs!8642 ct1!282)) lambda!457140))))

(assert (= (and d!2281746 (not res!2970848)) b!7357749))

(assert (= (and b!7357749 res!2970849) b!7357750))

(declare-fun b_lambda!284299 () Bool)

(assert (=> (not b_lambda!284299) (not b!7357749)))

(declare-fun m!8016926 () Bool)

(assert (=> b!7357749 m!8016926))

(declare-fun m!8016928 () Bool)

(assert (=> b!7357750 m!8016928))

(assert (=> b!7357580 d!2281746))

(declare-fun d!2281748 () Bool)

(assert (=> d!2281748 (forall!18022 (++!17020 (exprs!8642 cWitness!61) (exprs!8642 ct2!378)) lambda!457140)))

(declare-fun lt!2613494 () Unit!165357)

(declare-fun choose!57233 (List!71698 List!71698 Int) Unit!165357)

(assert (=> d!2281748 (= lt!2613494 (choose!57233 (exprs!8642 cWitness!61) (exprs!8642 ct2!378) lambda!457140))))

(assert (=> d!2281748 (forall!18022 (exprs!8642 cWitness!61) lambda!457140)))

(assert (=> d!2281748 (= (lemmaConcatPreservesForall!1877 (exprs!8642 cWitness!61) (exprs!8642 ct2!378) lambda!457140) lt!2613494)))

(declare-fun bs!1919899 () Bool)

(assert (= bs!1919899 d!2281748))

(declare-fun m!8016930 () Bool)

(assert (=> bs!1919899 m!8016930))

(assert (=> bs!1919899 m!8016930))

(declare-fun m!8016934 () Bool)

(assert (=> bs!1919899 m!8016934))

(declare-fun m!8016938 () Bool)

(assert (=> bs!1919899 m!8016938))

(declare-fun m!8016940 () Bool)

(assert (=> bs!1919899 m!8016940))

(assert (=> b!7357580 d!2281748))

(declare-fun d!2281750 () Bool)

(declare-fun res!2970855 () Bool)

(declare-fun e!4405375 () Bool)

(assert (=> d!2281750 (=> res!2970855 e!4405375)))

(assert (=> d!2281750 (= res!2970855 (is-Nil!71574 (exprs!8642 ct2!378)))))

(assert (=> d!2281750 (= (forall!18022 (exprs!8642 ct2!378) lambda!457140) e!4405375)))

(declare-fun b!7357760 () Bool)

(declare-fun e!4405376 () Bool)

(assert (=> b!7357760 (= e!4405375 e!4405376)))

(declare-fun res!2970856 () Bool)

(assert (=> b!7357760 (=> (not res!2970856) (not e!4405376))))

(assert (=> b!7357760 (= res!2970856 (dynLambda!29518 lambda!457140 (h!78022 (exprs!8642 ct2!378))))))

(declare-fun b!7357761 () Bool)

(assert (=> b!7357761 (= e!4405376 (forall!18022 (t!386141 (exprs!8642 ct2!378)) lambda!457140))))

(assert (= (and d!2281750 (not res!2970855)) b!7357760))

(assert (= (and b!7357760 res!2970856) b!7357761))

(declare-fun b_lambda!284301 () Bool)

(assert (=> (not b_lambda!284301) (not b!7357760)))

(declare-fun m!8016944 () Bool)

(assert (=> b!7357760 m!8016944))

(declare-fun m!8016946 () Bool)

(assert (=> b!7357761 m!8016946))

(assert (=> b!7357584 d!2281750))

(declare-fun d!2281754 () Bool)

(declare-fun nullableFct!3319 (Regex!19202) Bool)

(assert (=> d!2281754 (= (nullable!8293 (regOne!38916 r1!2370)) (nullableFct!3319 (regOne!38916 r1!2370)))))

(declare-fun bs!1919900 () Bool)

(assert (= bs!1919900 d!2281754))

(declare-fun m!8016948 () Bool)

(assert (=> bs!1919900 m!8016948))

(assert (=> b!7357589 d!2281754))

(declare-fun bm!673855 () Bool)

(declare-fun c!1367066 () Bool)

(declare-fun c!1367064 () Bool)

(declare-fun call!673864 () (Set Context!16284))

(declare-fun call!673862 () List!71698)

(declare-fun c!1367063 () Bool)

(assert (=> bm!673855 (= call!673864 (derivationStepZipperDown!3028 (ite c!1367064 (regTwo!38917 r1!2370) (ite c!1367063 (regTwo!38916 r1!2370) (ite c!1367066 (regOne!38916 r1!2370) (reg!19531 r1!2370)))) (ite (or c!1367064 c!1367063) (Context!16285 (++!17020 (exprs!8642 ct1!282) (exprs!8642 ct2!378))) (Context!16285 call!673862)) c!10362))))

(declare-fun bm!673856 () Bool)

(declare-fun call!673863 () (Set Context!16284))

(declare-fun call!673861 () (Set Context!16284))

(assert (=> bm!673856 (= call!673863 call!673861)))

(declare-fun b!7357762 () Bool)

(declare-fun e!4405378 () (Set Context!16284))

(assert (=> b!7357762 (= e!4405378 (as set.empty (Set Context!16284)))))

(declare-fun bm!673857 () Bool)

(assert (=> bm!673857 (= call!673861 call!673864)))

(declare-fun b!7357764 () Bool)

(declare-fun e!4405379 () (Set Context!16284))

(declare-fun e!4405377 () (Set Context!16284))

(assert (=> b!7357764 (= e!4405379 e!4405377)))

(assert (=> b!7357764 (= c!1367064 (is-Union!19202 r1!2370))))

(declare-fun bm!673858 () Bool)

(declare-fun call!673865 () List!71698)

(assert (=> bm!673858 (= call!673865 ($colon$colon!3200 (exprs!8642 (Context!16285 (++!17020 (exprs!8642 ct1!282) (exprs!8642 ct2!378)))) (ite (or c!1367063 c!1367066) (regTwo!38916 r1!2370) r1!2370)))))

(declare-fun b!7357765 () Bool)

(declare-fun call!673860 () (Set Context!16284))

(assert (=> b!7357765 (= e!4405377 (set.union call!673860 call!673864))))

(declare-fun b!7357766 () Bool)

(assert (=> b!7357766 (= e!4405378 call!673863)))

(declare-fun bm!673859 () Bool)

(assert (=> bm!673859 (= call!673860 (derivationStepZipperDown!3028 (ite c!1367064 (regOne!38917 r1!2370) (regOne!38916 r1!2370)) (ite c!1367064 (Context!16285 (++!17020 (exprs!8642 ct1!282) (exprs!8642 ct2!378))) (Context!16285 call!673865)) c!10362))))

(declare-fun b!7357767 () Bool)

(declare-fun e!4405381 () (Set Context!16284))

(assert (=> b!7357767 (= e!4405381 call!673863)))

(declare-fun d!2281756 () Bool)

(declare-fun c!1367065 () Bool)

(assert (=> d!2281756 (= c!1367065 (and (is-ElementMatch!19202 r1!2370) (= (c!1367018 r1!2370) c!10362)))))

(assert (=> d!2281756 (= (derivationStepZipperDown!3028 r1!2370 (Context!16285 (++!17020 (exprs!8642 ct1!282) (exprs!8642 ct2!378))) c!10362) e!4405379)))

(declare-fun b!7357763 () Bool)

(assert (=> b!7357763 (= e!4405379 (set.insert (Context!16285 (++!17020 (exprs!8642 ct1!282) (exprs!8642 ct2!378))) (as set.empty (Set Context!16284))))))

(declare-fun b!7357768 () Bool)

(declare-fun c!1367062 () Bool)

(assert (=> b!7357768 (= c!1367062 (is-Star!19202 r1!2370))))

(assert (=> b!7357768 (= e!4405381 e!4405378)))

(declare-fun b!7357769 () Bool)

(declare-fun e!4405382 () Bool)

(assert (=> b!7357769 (= c!1367063 e!4405382)))

(declare-fun res!2970857 () Bool)

(assert (=> b!7357769 (=> (not res!2970857) (not e!4405382))))

(assert (=> b!7357769 (= res!2970857 (is-Concat!28047 r1!2370))))

(declare-fun e!4405380 () (Set Context!16284))

(assert (=> b!7357769 (= e!4405377 e!4405380)))

(declare-fun bm!673860 () Bool)

(assert (=> bm!673860 (= call!673862 call!673865)))

(declare-fun b!7357770 () Bool)

(assert (=> b!7357770 (= e!4405382 (nullable!8293 (regOne!38916 r1!2370)))))

(declare-fun b!7357771 () Bool)

(assert (=> b!7357771 (= e!4405380 (set.union call!673860 call!673861))))

(declare-fun b!7357772 () Bool)

(assert (=> b!7357772 (= e!4405380 e!4405381)))

(assert (=> b!7357772 (= c!1367066 (is-Concat!28047 r1!2370))))

(assert (= (and d!2281756 c!1367065) b!7357763))

(assert (= (and d!2281756 (not c!1367065)) b!7357764))

(assert (= (and b!7357764 c!1367064) b!7357765))

(assert (= (and b!7357764 (not c!1367064)) b!7357769))

(assert (= (and b!7357769 res!2970857) b!7357770))

(assert (= (and b!7357769 c!1367063) b!7357771))

(assert (= (and b!7357769 (not c!1367063)) b!7357772))

(assert (= (and b!7357772 c!1367066) b!7357767))

(assert (= (and b!7357772 (not c!1367066)) b!7357768))

(assert (= (and b!7357768 c!1367062) b!7357766))

(assert (= (and b!7357768 (not c!1367062)) b!7357762))

(assert (= (or b!7357767 b!7357766) bm!673860))

(assert (= (or b!7357767 b!7357766) bm!673856))

(assert (= (or b!7357771 bm!673856) bm!673857))

(assert (= (or b!7357771 bm!673860) bm!673858))

(assert (= (or b!7357765 bm!673857) bm!673855))

(assert (= (or b!7357765 b!7357771) bm!673859))

(declare-fun m!8016952 () Bool)

(assert (=> bm!673858 m!8016952))

(declare-fun m!8016954 () Bool)

(assert (=> bm!673859 m!8016954))

(declare-fun m!8016956 () Bool)

(assert (=> b!7357763 m!8016956))

(assert (=> b!7357770 m!8016864))

(declare-fun m!8016960 () Bool)

(assert (=> bm!673855 m!8016960))

(assert (=> b!7357578 d!2281756))

(declare-fun lt!2613497 () List!71698)

(declare-fun b!7357792 () Bool)

(declare-fun e!4405395 () Bool)

(assert (=> b!7357792 (= e!4405395 (or (not (= (exprs!8642 ct2!378) Nil!71574)) (= lt!2613497 (exprs!8642 ct1!282))))))

(declare-fun b!7357790 () Bool)

(declare-fun e!4405396 () List!71698)

(assert (=> b!7357790 (= e!4405396 (Cons!71574 (h!78022 (exprs!8642 ct1!282)) (++!17020 (t!386141 (exprs!8642 ct1!282)) (exprs!8642 ct2!378))))))

(declare-fun d!2281762 () Bool)

(assert (=> d!2281762 e!4405395))

(declare-fun res!2970870 () Bool)

(assert (=> d!2281762 (=> (not res!2970870) (not e!4405395))))

(declare-fun content!15104 (List!71698) (Set Regex!19202))

(assert (=> d!2281762 (= res!2970870 (= (content!15104 lt!2613497) (set.union (content!15104 (exprs!8642 ct1!282)) (content!15104 (exprs!8642 ct2!378)))))))

(assert (=> d!2281762 (= lt!2613497 e!4405396)))

(declare-fun c!1367069 () Bool)

(assert (=> d!2281762 (= c!1367069 (is-Nil!71574 (exprs!8642 ct1!282)))))

(assert (=> d!2281762 (= (++!17020 (exprs!8642 ct1!282) (exprs!8642 ct2!378)) lt!2613497)))

(declare-fun b!7357789 () Bool)

(assert (=> b!7357789 (= e!4405396 (exprs!8642 ct2!378))))

(declare-fun b!7357791 () Bool)

(declare-fun res!2970871 () Bool)

(assert (=> b!7357791 (=> (not res!2970871) (not e!4405395))))

(declare-fun size!42082 (List!71698) Int)

(assert (=> b!7357791 (= res!2970871 (= (size!42082 lt!2613497) (+ (size!42082 (exprs!8642 ct1!282)) (size!42082 (exprs!8642 ct2!378)))))))

(assert (= (and d!2281762 c!1367069) b!7357789))

(assert (= (and d!2281762 (not c!1367069)) b!7357790))

(assert (= (and d!2281762 res!2970870) b!7357791))

(assert (= (and b!7357791 res!2970871) b!7357792))

(declare-fun m!8016974 () Bool)

(assert (=> b!7357790 m!8016974))

(declare-fun m!8016976 () Bool)

(assert (=> d!2281762 m!8016976))

(declare-fun m!8016978 () Bool)

(assert (=> d!2281762 m!8016978))

(declare-fun m!8016980 () Bool)

(assert (=> d!2281762 m!8016980))

(declare-fun m!8016982 () Bool)

(assert (=> b!7357791 m!8016982))

(declare-fun m!8016984 () Bool)

(assert (=> b!7357791 m!8016984))

(declare-fun m!8016986 () Bool)

(assert (=> b!7357791 m!8016986))

(assert (=> b!7357578 d!2281762))

(declare-fun d!2281772 () Bool)

(assert (=> d!2281772 (forall!18022 (++!17020 (exprs!8642 ct1!282) (exprs!8642 ct2!378)) lambda!457140)))

(declare-fun lt!2613500 () Unit!165357)

(assert (=> d!2281772 (= lt!2613500 (choose!57233 (exprs!8642 ct1!282) (exprs!8642 ct2!378) lambda!457140))))

(assert (=> d!2281772 (forall!18022 (exprs!8642 ct1!282) lambda!457140)))

(assert (=> d!2281772 (= (lemmaConcatPreservesForall!1877 (exprs!8642 ct1!282) (exprs!8642 ct2!378) lambda!457140) lt!2613500)))

(declare-fun bs!1919911 () Bool)

(assert (= bs!1919911 d!2281772))

(assert (=> bs!1919911 m!8016866))

(assert (=> bs!1919911 m!8016866))

(declare-fun m!8016988 () Bool)

(assert (=> bs!1919911 m!8016988))

(declare-fun m!8016990 () Bool)

(assert (=> bs!1919911 m!8016990))

(assert (=> bs!1919911 m!8016860))

(assert (=> b!7357578 d!2281772))

(declare-fun e!4405405 () Bool)

(assert (=> b!7357586 (= tp!2090161 e!4405405)))

(declare-fun b!7357815 () Bool)

(declare-fun tp!2090203 () Bool)

(declare-fun tp!2090202 () Bool)

(assert (=> b!7357815 (= e!4405405 (and tp!2090203 tp!2090202))))

(declare-fun b!7357814 () Bool)

(assert (=> b!7357814 (= e!4405405 tp_is_empty!48649)))

(declare-fun b!7357817 () Bool)

(declare-fun tp!2090201 () Bool)

(declare-fun tp!2090200 () Bool)

(assert (=> b!7357817 (= e!4405405 (and tp!2090201 tp!2090200))))

(declare-fun b!7357816 () Bool)

(declare-fun tp!2090204 () Bool)

(assert (=> b!7357816 (= e!4405405 tp!2090204)))

(assert (= (and b!7357586 (is-ElementMatch!19202 (regOne!38917 r1!2370))) b!7357814))

(assert (= (and b!7357586 (is-Concat!28047 (regOne!38917 r1!2370))) b!7357815))

(assert (= (and b!7357586 (is-Star!19202 (regOne!38917 r1!2370))) b!7357816))

(assert (= (and b!7357586 (is-Union!19202 (regOne!38917 r1!2370))) b!7357817))

(declare-fun e!4405406 () Bool)

(assert (=> b!7357586 (= tp!2090162 e!4405406)))

(declare-fun b!7357819 () Bool)

(declare-fun tp!2090208 () Bool)

(declare-fun tp!2090207 () Bool)

(assert (=> b!7357819 (= e!4405406 (and tp!2090208 tp!2090207))))

(declare-fun b!7357818 () Bool)

(assert (=> b!7357818 (= e!4405406 tp_is_empty!48649)))

(declare-fun b!7357821 () Bool)

(declare-fun tp!2090206 () Bool)

(declare-fun tp!2090205 () Bool)

(assert (=> b!7357821 (= e!4405406 (and tp!2090206 tp!2090205))))

(declare-fun b!7357820 () Bool)

(declare-fun tp!2090209 () Bool)

(assert (=> b!7357820 (= e!4405406 tp!2090209)))

(assert (= (and b!7357586 (is-ElementMatch!19202 (regTwo!38917 r1!2370))) b!7357818))

(assert (= (and b!7357586 (is-Concat!28047 (regTwo!38917 r1!2370))) b!7357819))

(assert (= (and b!7357586 (is-Star!19202 (regTwo!38917 r1!2370))) b!7357820))

(assert (= (and b!7357586 (is-Union!19202 (regTwo!38917 r1!2370))) b!7357821))

(declare-fun b!7357826 () Bool)

(declare-fun e!4405409 () Bool)

(declare-fun tp!2090214 () Bool)

(declare-fun tp!2090215 () Bool)

(assert (=> b!7357826 (= e!4405409 (and tp!2090214 tp!2090215))))

(assert (=> b!7357585 (= tp!2090163 e!4405409)))

(assert (= (and b!7357585 (is-Cons!71574 (exprs!8642 ct2!378))) b!7357826))

(declare-fun b!7357827 () Bool)

(declare-fun e!4405410 () Bool)

(declare-fun tp!2090216 () Bool)

(declare-fun tp!2090217 () Bool)

(assert (=> b!7357827 (= e!4405410 (and tp!2090216 tp!2090217))))

(assert (=> b!7357579 (= tp!2090160 e!4405410)))

(assert (= (and b!7357579 (is-Cons!71574 (exprs!8642 ct1!282))) b!7357827))

(declare-fun e!4405411 () Bool)

(assert (=> b!7357583 (= tp!2090164 e!4405411)))

(declare-fun b!7357829 () Bool)

(declare-fun tp!2090221 () Bool)

(declare-fun tp!2090220 () Bool)

(assert (=> b!7357829 (= e!4405411 (and tp!2090221 tp!2090220))))

(declare-fun b!7357828 () Bool)

(assert (=> b!7357828 (= e!4405411 tp_is_empty!48649)))

(declare-fun b!7357831 () Bool)

(declare-fun tp!2090219 () Bool)

(declare-fun tp!2090218 () Bool)

(assert (=> b!7357831 (= e!4405411 (and tp!2090219 tp!2090218))))

(declare-fun b!7357830 () Bool)

(declare-fun tp!2090222 () Bool)

(assert (=> b!7357830 (= e!4405411 tp!2090222)))

(assert (= (and b!7357583 (is-ElementMatch!19202 (reg!19531 r1!2370))) b!7357828))

(assert (= (and b!7357583 (is-Concat!28047 (reg!19531 r1!2370))) b!7357829))

(assert (= (and b!7357583 (is-Star!19202 (reg!19531 r1!2370))) b!7357830))

(assert (= (and b!7357583 (is-Union!19202 (reg!19531 r1!2370))) b!7357831))

(declare-fun b!7357832 () Bool)

(declare-fun e!4405412 () Bool)

(declare-fun tp!2090223 () Bool)

(declare-fun tp!2090224 () Bool)

(assert (=> b!7357832 (= e!4405412 (and tp!2090223 tp!2090224))))

(assert (=> b!7357588 (= tp!2090165 e!4405412)))

(assert (= (and b!7357588 (is-Cons!71574 (exprs!8642 cWitness!61))) b!7357832))

(declare-fun e!4405413 () Bool)

(assert (=> b!7357587 (= tp!2090158 e!4405413)))

(declare-fun b!7357834 () Bool)

(declare-fun tp!2090228 () Bool)

(declare-fun tp!2090227 () Bool)

(assert (=> b!7357834 (= e!4405413 (and tp!2090228 tp!2090227))))

(declare-fun b!7357833 () Bool)

(assert (=> b!7357833 (= e!4405413 tp_is_empty!48649)))

(declare-fun b!7357836 () Bool)

(declare-fun tp!2090226 () Bool)

(declare-fun tp!2090225 () Bool)

(assert (=> b!7357836 (= e!4405413 (and tp!2090226 tp!2090225))))

(declare-fun b!7357835 () Bool)

(declare-fun tp!2090229 () Bool)

(assert (=> b!7357835 (= e!4405413 tp!2090229)))

(assert (= (and b!7357587 (is-ElementMatch!19202 (regOne!38916 r1!2370))) b!7357833))

(assert (= (and b!7357587 (is-Concat!28047 (regOne!38916 r1!2370))) b!7357834))

(assert (= (and b!7357587 (is-Star!19202 (regOne!38916 r1!2370))) b!7357835))

(assert (= (and b!7357587 (is-Union!19202 (regOne!38916 r1!2370))) b!7357836))

(declare-fun e!4405414 () Bool)

(assert (=> b!7357587 (= tp!2090159 e!4405414)))

(declare-fun b!7357838 () Bool)

(declare-fun tp!2090233 () Bool)

(declare-fun tp!2090232 () Bool)

(assert (=> b!7357838 (= e!4405414 (and tp!2090233 tp!2090232))))

(declare-fun b!7357837 () Bool)

(assert (=> b!7357837 (= e!4405414 tp_is_empty!48649)))

(declare-fun b!7357840 () Bool)

(declare-fun tp!2090231 () Bool)

(declare-fun tp!2090230 () Bool)

(assert (=> b!7357840 (= e!4405414 (and tp!2090231 tp!2090230))))

(declare-fun b!7357839 () Bool)

(declare-fun tp!2090234 () Bool)

(assert (=> b!7357839 (= e!4405414 tp!2090234)))

(assert (= (and b!7357587 (is-ElementMatch!19202 (regTwo!38916 r1!2370))) b!7357837))

(assert (= (and b!7357587 (is-Concat!28047 (regTwo!38916 r1!2370))) b!7357838))

(assert (= (and b!7357587 (is-Star!19202 (regTwo!38916 r1!2370))) b!7357839))

(assert (= (and b!7357587 (is-Union!19202 (regTwo!38916 r1!2370))) b!7357840))

(declare-fun b_lambda!284307 () Bool)

(assert (= b_lambda!284299 (or b!7357578 b_lambda!284307)))

(declare-fun bs!1919913 () Bool)

(declare-fun d!2281778 () Bool)

(assert (= bs!1919913 (and d!2281778 b!7357578)))

(assert (=> bs!1919913 (= (dynLambda!29518 lambda!457140 (h!78022 (exprs!8642 ct1!282))) (validRegex!9798 (h!78022 (exprs!8642 ct1!282))))))

(declare-fun m!8017008 () Bool)

(assert (=> bs!1919913 m!8017008))

(assert (=> b!7357749 d!2281778))

(declare-fun b_lambda!284309 () Bool)

(assert (= b_lambda!284301 (or b!7357578 b_lambda!284309)))

(declare-fun bs!1919914 () Bool)

(declare-fun d!2281780 () Bool)

(assert (= bs!1919914 (and d!2281780 b!7357578)))

(assert (=> bs!1919914 (= (dynLambda!29518 lambda!457140 (h!78022 (exprs!8642 ct2!378))) (validRegex!9798 (h!78022 (exprs!8642 ct2!378))))))

(declare-fun m!8017010 () Bool)

(assert (=> bs!1919914 m!8017010))

(assert (=> b!7357760 d!2281780))

(push 1)

(assert (not b!7357817))

(assert (not bm!673859))

(assert (not b!7357820))

(assert (not d!2281740))

(assert (not b_lambda!284307))

(assert (not b!7357827))

(assert (not b!7357724))

(assert tp_is_empty!48649)

(assert (not bm!673843))

(assert (not b!7357791))

(assert (not b!7357832))

(assert (not d!2281738))

(assert (not d!2281736))

(assert (not bm!673807))

(assert (not b_lambda!284309))

(assert (not b!7357830))

(assert (not bm!673858))

(assert (not b!7357815))

(assert (not d!2281772))

(assert (not b!7357819))

(assert (not d!2281762))

(assert (not b!7357831))

(assert (not bm!673809))

(assert (not bm!673844))

(assert (not bs!1919913))

(assert (not b!7357826))

(assert (not d!2281748))

(assert (not b!7357790))

(assert (not b!7357770))

(assert (not b!7357839))

(assert (not bs!1919914))

(assert (not b!7357761))

(assert (not b!7357654))

(assert (not b!7357838))

(assert (not b!7357835))

(assert (not b!7357840))

(assert (not b!7357829))

(assert (not b!7357836))

(assert (not bm!673855))

(assert (not b!7357750))

(assert (not bm!673840))

(assert (not d!2281754))

(assert (not b!7357834))

(assert (not b!7357816))

(assert (not b!7357821))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


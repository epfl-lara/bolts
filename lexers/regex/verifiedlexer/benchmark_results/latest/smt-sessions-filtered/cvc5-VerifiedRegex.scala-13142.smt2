; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717926 () Bool)

(assert start!717926)

(declare-fun b!7351834 () Bool)

(declare-fun e!4401957 () Bool)

(declare-fun tp!2088183 () Bool)

(assert (=> b!7351834 (= e!4401957 tp!2088183)))

(declare-fun b!7351835 () Bool)

(declare-fun res!2968909 () Bool)

(declare-fun e!4401949 () Bool)

(assert (=> b!7351835 (=> (not res!2968909) (not e!4401949))))

(declare-datatypes ((C!38618 0))(
  ( (C!38619 (val!29669 Int)) )
))
(declare-datatypes ((Regex!19172 0))(
  ( (ElementMatch!19172 (c!1365868 C!38618)) (Concat!28017 (regOne!38856 Regex!19172) (regTwo!38856 Regex!19172)) (EmptyExpr!19172) (Star!19172 (reg!19501 Regex!19172)) (EmptyLang!19172) (Union!19172 (regOne!38857 Regex!19172) (regTwo!38857 Regex!19172)) )
))
(declare-fun r1!2370 () Regex!19172)

(declare-fun validRegex!9768 (Regex!19172) Bool)

(assert (=> b!7351835 (= res!2968909 (validRegex!9768 (regTwo!38856 r1!2370)))))

(declare-fun b!7351836 () Bool)

(declare-fun e!4401955 () Bool)

(declare-fun tp!2088185 () Bool)

(assert (=> b!7351836 (= e!4401955 tp!2088185)))

(declare-fun b!7351837 () Bool)

(declare-fun e!4401956 () Bool)

(declare-fun tp!2088180 () Bool)

(assert (=> b!7351837 (= e!4401956 tp!2088180)))

(declare-fun b!7351838 () Bool)

(declare-fun e!4401958 () Bool)

(declare-fun tp!2088178 () Bool)

(assert (=> b!7351838 (= e!4401958 tp!2088178)))

(declare-fun b!7351839 () Bool)

(declare-fun e!4401954 () Bool)

(declare-fun nullable!8263 (Regex!19172) Bool)

(assert (=> b!7351839 (= e!4401954 (not (nullable!8263 (regOne!38856 r1!2370))))))

(declare-fun b!7351840 () Bool)

(declare-fun tp_is_empty!48589 () Bool)

(assert (=> b!7351840 (= e!4401957 tp_is_empty!48589)))

(declare-fun b!7351841 () Bool)

(declare-fun tp!2088181 () Bool)

(declare-fun tp!2088182 () Bool)

(assert (=> b!7351841 (= e!4401957 (and tp!2088181 tp!2088182))))

(declare-fun b!7351842 () Bool)

(declare-fun e!4401951 () Bool)

(declare-datatypes ((List!71668 0))(
  ( (Nil!71544) (Cons!71544 (h!77992 Regex!19172) (t!386091 List!71668)) )
))
(declare-datatypes ((Context!16224 0))(
  ( (Context!16225 (exprs!8612 List!71668)) )
))
(declare-fun cWitness!61 () Context!16224)

(declare-fun lambda!456630 () Int)

(declare-fun forall!17994 (List!71668 Int) Bool)

(assert (=> b!7351842 (= e!4401951 (forall!17994 (exprs!8612 cWitness!61) lambda!456630))))

(declare-fun b!7351843 () Bool)

(declare-fun res!2968912 () Bool)

(assert (=> b!7351843 (=> (not res!2968912) (not e!4401949))))

(assert (=> b!7351843 (= res!2968912 (is-Concat!28017 r1!2370))))

(declare-fun b!7351844 () Bool)

(declare-fun e!4401950 () Bool)

(assert (=> b!7351844 (= e!4401949 e!4401950)))

(declare-fun res!2968914 () Bool)

(assert (=> b!7351844 (=> (not res!2968914) (not e!4401950))))

(declare-fun c!10362 () C!38618)

(declare-fun lt!2612354 () (Set Context!16224))

(declare-fun lt!2612358 () Context!16224)

(declare-fun derivationStepZipperDown!2998 (Regex!19172 Context!16224 C!38618) (Set Context!16224))

(assert (=> b!7351844 (= res!2968914 (= lt!2612354 (derivationStepZipperDown!2998 (regOne!38856 r1!2370) lt!2612358 c!10362)))))

(declare-fun lt!2612355 () List!71668)

(assert (=> b!7351844 (= lt!2612358 (Context!16225 lt!2612355))))

(declare-fun ct1!282 () Context!16224)

(declare-fun $colon$colon!3170 (List!71668 Regex!19172) List!71668)

(assert (=> b!7351844 (= lt!2612355 ($colon$colon!3170 (exprs!8612 ct1!282) (regTwo!38856 r1!2370)))))

(declare-fun b!7351845 () Bool)

(declare-fun e!4401952 () Bool)

(declare-fun e!4401953 () Bool)

(assert (=> b!7351845 (= e!4401952 e!4401953)))

(declare-fun res!2968908 () Bool)

(assert (=> b!7351845 (=> (not res!2968908) (not e!4401953))))

(assert (=> b!7351845 (= res!2968908 (set.member cWitness!61 lt!2612354))))

(assert (=> b!7351845 (= lt!2612354 (derivationStepZipperDown!2998 r1!2370 ct1!282 c!10362))))

(declare-fun res!2968907 () Bool)

(assert (=> start!717926 (=> (not res!2968907) (not e!4401952))))

(assert (=> start!717926 (= res!2968907 (validRegex!9768 r1!2370))))

(assert (=> start!717926 e!4401952))

(assert (=> start!717926 tp_is_empty!48589))

(declare-fun inv!91271 (Context!16224) Bool)

(assert (=> start!717926 (and (inv!91271 cWitness!61) e!4401956)))

(assert (=> start!717926 (and (inv!91271 ct1!282) e!4401958)))

(assert (=> start!717926 e!4401957))

(declare-fun ct2!378 () Context!16224)

(assert (=> start!717926 (and (inv!91271 ct2!378) e!4401955)))

(declare-fun b!7351846 () Bool)

(assert (=> b!7351846 (= e!4401953 e!4401949)))

(declare-fun res!2968913 () Bool)

(assert (=> b!7351846 (=> (not res!2968913) (not e!4401949))))

(assert (=> b!7351846 (= res!2968913 (and (or (not (is-ElementMatch!19172 r1!2370)) (not (= c!10362 (c!1365868 r1!2370)))) (not (is-Union!19172 r1!2370))))))

(declare-fun lt!2612352 () (Set Context!16224))

(declare-fun ++!16990 (List!71668 List!71668) List!71668)

(assert (=> b!7351846 (= lt!2612352 (derivationStepZipperDown!2998 r1!2370 (Context!16225 (++!16990 (exprs!8612 ct1!282) (exprs!8612 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165297 0))(
  ( (Unit!165298) )
))
(declare-fun lt!2612356 () Unit!165297)

(declare-fun lemmaConcatPreservesForall!1847 (List!71668 List!71668 Int) Unit!165297)

(assert (=> b!7351846 (= lt!2612356 (lemmaConcatPreservesForall!1847 (exprs!8612 ct1!282) (exprs!8612 ct2!378) lambda!456630))))

(declare-fun b!7351847 () Bool)

(assert (=> b!7351847 (= e!4401950 (not e!4401951))))

(declare-fun res!2968910 () Bool)

(assert (=> b!7351847 (=> res!2968910 e!4401951)))

(declare-fun lt!2612359 () Context!16224)

(assert (=> b!7351847 (= res!2968910 (not (set.member lt!2612359 lt!2612352)))))

(declare-fun lt!2612351 () Unit!165297)

(assert (=> b!7351847 (= lt!2612351 (lemmaConcatPreservesForall!1847 (exprs!8612 cWitness!61) (exprs!8612 ct2!378) lambda!456630))))

(assert (=> b!7351847 (set.member lt!2612359 (derivationStepZipperDown!2998 (regOne!38856 r1!2370) (Context!16225 (++!16990 lt!2612355 (exprs!8612 ct2!378))) c!10362))))

(assert (=> b!7351847 (= lt!2612359 (Context!16225 (++!16990 (exprs!8612 cWitness!61) (exprs!8612 ct2!378))))))

(declare-fun lt!2612357 () Unit!165297)

(assert (=> b!7351847 (= lt!2612357 (lemmaConcatPreservesForall!1847 lt!2612355 (exprs!8612 ct2!378) lambda!456630))))

(declare-fun lt!2612350 () Unit!165297)

(assert (=> b!7351847 (= lt!2612350 (lemmaConcatPreservesForall!1847 (exprs!8612 cWitness!61) (exprs!8612 ct2!378) lambda!456630))))

(declare-fun lt!2612353 () Unit!165297)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!93 (Regex!19172 Context!16224 Context!16224 Context!16224 C!38618) Unit!165297)

(assert (=> b!7351847 (= lt!2612353 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!93 (regOne!38856 r1!2370) lt!2612358 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7351848 () Bool)

(declare-fun res!2968911 () Bool)

(assert (=> b!7351848 (=> (not res!2968911) (not e!4401949))))

(assert (=> b!7351848 (= res!2968911 e!4401954)))

(declare-fun res!2968915 () Bool)

(assert (=> b!7351848 (=> res!2968915 e!4401954)))

(assert (=> b!7351848 (= res!2968915 (not (is-Concat!28017 r1!2370)))))

(declare-fun b!7351849 () Bool)

(declare-fun tp!2088184 () Bool)

(declare-fun tp!2088179 () Bool)

(assert (=> b!7351849 (= e!4401957 (and tp!2088184 tp!2088179))))

(assert (= (and start!717926 res!2968907) b!7351845))

(assert (= (and b!7351845 res!2968908) b!7351846))

(assert (= (and b!7351846 res!2968913) b!7351848))

(assert (= (and b!7351848 (not res!2968915)) b!7351839))

(assert (= (and b!7351848 res!2968911) b!7351843))

(assert (= (and b!7351843 res!2968912) b!7351835))

(assert (= (and b!7351835 res!2968909) b!7351844))

(assert (= (and b!7351844 res!2968914) b!7351847))

(assert (= (and b!7351847 (not res!2968910)) b!7351842))

(assert (= start!717926 b!7351837))

(assert (= start!717926 b!7351838))

(assert (= (and start!717926 (is-ElementMatch!19172 r1!2370)) b!7351840))

(assert (= (and start!717926 (is-Concat!28017 r1!2370)) b!7351841))

(assert (= (and start!717926 (is-Star!19172 r1!2370)) b!7351834))

(assert (= (and start!717926 (is-Union!19172 r1!2370)) b!7351849))

(assert (= start!717926 b!7351836))

(declare-fun m!8012690 () Bool)

(assert (=> b!7351846 m!8012690))

(declare-fun m!8012692 () Bool)

(assert (=> b!7351846 m!8012692))

(declare-fun m!8012694 () Bool)

(assert (=> b!7351846 m!8012694))

(declare-fun m!8012696 () Bool)

(assert (=> b!7351842 m!8012696))

(declare-fun m!8012698 () Bool)

(assert (=> b!7351835 m!8012698))

(declare-fun m!8012700 () Bool)

(assert (=> start!717926 m!8012700))

(declare-fun m!8012702 () Bool)

(assert (=> start!717926 m!8012702))

(declare-fun m!8012704 () Bool)

(assert (=> start!717926 m!8012704))

(declare-fun m!8012706 () Bool)

(assert (=> start!717926 m!8012706))

(declare-fun m!8012708 () Bool)

(assert (=> b!7351847 m!8012708))

(declare-fun m!8012710 () Bool)

(assert (=> b!7351847 m!8012710))

(declare-fun m!8012712 () Bool)

(assert (=> b!7351847 m!8012712))

(declare-fun m!8012714 () Bool)

(assert (=> b!7351847 m!8012714))

(declare-fun m!8012716 () Bool)

(assert (=> b!7351847 m!8012716))

(assert (=> b!7351847 m!8012710))

(declare-fun m!8012718 () Bool)

(assert (=> b!7351847 m!8012718))

(declare-fun m!8012720 () Bool)

(assert (=> b!7351847 m!8012720))

(declare-fun m!8012722 () Bool)

(assert (=> b!7351847 m!8012722))

(declare-fun m!8012724 () Bool)

(assert (=> b!7351839 m!8012724))

(declare-fun m!8012726 () Bool)

(assert (=> b!7351845 m!8012726))

(declare-fun m!8012728 () Bool)

(assert (=> b!7351845 m!8012728))

(declare-fun m!8012730 () Bool)

(assert (=> b!7351844 m!8012730))

(declare-fun m!8012732 () Bool)

(assert (=> b!7351844 m!8012732))

(push 1)

(assert (not b!7351842))

(assert (not b!7351845))

(assert (not b!7351835))

(assert (not b!7351839))

(assert (not b!7351838))

(assert (not b!7351841))

(assert (not b!7351846))

(assert (not b!7351836))

(assert tp_is_empty!48589)

(assert (not b!7351834))

(assert (not b!7351837))

(assert (not b!7351847))

(assert (not b!7351844))

(assert (not start!717926))

(assert (not b!7351849))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2280689 () Bool)

(declare-fun nullableFct!3298 (Regex!19172) Bool)

(assert (=> d!2280689 (= (nullable!8263 (regOne!38856 r1!2370)) (nullableFct!3298 (regOne!38856 r1!2370)))))

(declare-fun bs!1919372 () Bool)

(assert (= bs!1919372 d!2280689))

(declare-fun m!8012778 () Bool)

(assert (=> bs!1919372 m!8012778))

(assert (=> b!7351839 d!2280689))

(declare-fun b!7351920 () Bool)

(declare-fun c!1365883 () Bool)

(declare-fun e!4402003 () Bool)

(assert (=> b!7351920 (= c!1365883 e!4402003)))

(declare-fun res!2968945 () Bool)

(assert (=> b!7351920 (=> (not res!2968945) (not e!4402003))))

(assert (=> b!7351920 (= res!2968945 (is-Concat!28017 (regOne!38856 r1!2370)))))

(declare-fun e!4402005 () (Set Context!16224))

(declare-fun e!4402002 () (Set Context!16224))

(assert (=> b!7351920 (= e!4402005 e!4402002)))

(declare-fun b!7351921 () Bool)

(declare-fun c!1365884 () Bool)

(assert (=> b!7351921 (= c!1365884 (is-Star!19172 (regOne!38856 r1!2370)))))

(declare-fun e!4402004 () (Set Context!16224))

(declare-fun e!4402001 () (Set Context!16224))

(assert (=> b!7351921 (= e!4402004 e!4402001)))

(declare-fun d!2280691 () Bool)

(declare-fun c!1365881 () Bool)

(assert (=> d!2280691 (= c!1365881 (and (is-ElementMatch!19172 (regOne!38856 r1!2370)) (= (c!1365868 (regOne!38856 r1!2370)) c!10362)))))

(declare-fun e!4402006 () (Set Context!16224))

(assert (=> d!2280691 (= (derivationStepZipperDown!2998 (regOne!38856 r1!2370) lt!2612358 c!10362) e!4402006)))

(declare-fun b!7351922 () Bool)

(assert (=> b!7351922 (= e!4402006 (set.insert lt!2612358 (as set.empty (Set Context!16224))))))

(declare-fun b!7351923 () Bool)

(assert (=> b!7351923 (= e!4402001 (as set.empty (Set Context!16224)))))

(declare-fun b!7351924 () Bool)

(declare-fun call!672587 () (Set Context!16224))

(declare-fun call!672586 () (Set Context!16224))

(assert (=> b!7351924 (= e!4402002 (set.union call!672587 call!672586))))

(declare-fun call!672584 () List!71668)

(declare-fun c!1365880 () Bool)

(declare-fun bm!672577 () Bool)

(assert (=> bm!672577 (= call!672587 (derivationStepZipperDown!2998 (ite c!1365880 (regOne!38857 (regOne!38856 r1!2370)) (regOne!38856 (regOne!38856 r1!2370))) (ite c!1365880 lt!2612358 (Context!16225 call!672584)) c!10362))))

(declare-fun b!7351925 () Bool)

(declare-fun call!672583 () (Set Context!16224))

(assert (=> b!7351925 (= e!4402005 (set.union call!672587 call!672583))))

(declare-fun b!7351926 () Bool)

(assert (=> b!7351926 (= e!4402006 e!4402005)))

(assert (=> b!7351926 (= c!1365880 (is-Union!19172 (regOne!38856 r1!2370)))))

(declare-fun c!1365882 () Bool)

(declare-fun bm!672578 () Bool)

(assert (=> bm!672578 (= call!672584 ($colon$colon!3170 (exprs!8612 lt!2612358) (ite (or c!1365883 c!1365882) (regTwo!38856 (regOne!38856 r1!2370)) (regOne!38856 r1!2370))))))

(declare-fun bm!672579 () Bool)

(declare-fun call!672582 () (Set Context!16224))

(assert (=> bm!672579 (= call!672582 call!672586)))

(declare-fun b!7351927 () Bool)

(assert (=> b!7351927 (= e!4402004 call!672582)))

(declare-fun b!7351928 () Bool)

(assert (=> b!7351928 (= e!4402003 (nullable!8263 (regOne!38856 (regOne!38856 r1!2370))))))

(declare-fun b!7351929 () Bool)

(assert (=> b!7351929 (= e!4402002 e!4402004)))

(assert (=> b!7351929 (= c!1365882 (is-Concat!28017 (regOne!38856 r1!2370)))))

(declare-fun b!7351930 () Bool)

(assert (=> b!7351930 (= e!4402001 call!672582)))

(declare-fun bm!672580 () Bool)

(declare-fun call!672585 () List!71668)

(assert (=> bm!672580 (= call!672585 call!672584)))

(declare-fun bm!672581 () Bool)

(assert (=> bm!672581 (= call!672583 (derivationStepZipperDown!2998 (ite c!1365880 (regTwo!38857 (regOne!38856 r1!2370)) (ite c!1365883 (regTwo!38856 (regOne!38856 r1!2370)) (ite c!1365882 (regOne!38856 (regOne!38856 r1!2370)) (reg!19501 (regOne!38856 r1!2370))))) (ite (or c!1365880 c!1365883) lt!2612358 (Context!16225 call!672585)) c!10362))))

(declare-fun bm!672582 () Bool)

(assert (=> bm!672582 (= call!672586 call!672583)))

(assert (= (and d!2280691 c!1365881) b!7351922))

(assert (= (and d!2280691 (not c!1365881)) b!7351926))

(assert (= (and b!7351926 c!1365880) b!7351925))

(assert (= (and b!7351926 (not c!1365880)) b!7351920))

(assert (= (and b!7351920 res!2968945) b!7351928))

(assert (= (and b!7351920 c!1365883) b!7351924))

(assert (= (and b!7351920 (not c!1365883)) b!7351929))

(assert (= (and b!7351929 c!1365882) b!7351927))

(assert (= (and b!7351929 (not c!1365882)) b!7351921))

(assert (= (and b!7351921 c!1365884) b!7351930))

(assert (= (and b!7351921 (not c!1365884)) b!7351923))

(assert (= (or b!7351927 b!7351930) bm!672580))

(assert (= (or b!7351927 b!7351930) bm!672579))

(assert (= (or b!7351924 bm!672579) bm!672582))

(assert (= (or b!7351924 bm!672580) bm!672578))

(assert (= (or b!7351925 bm!672582) bm!672581))

(assert (= (or b!7351925 b!7351924) bm!672577))

(declare-fun m!8012780 () Bool)

(assert (=> bm!672578 m!8012780))

(declare-fun m!8012782 () Bool)

(assert (=> bm!672581 m!8012782))

(declare-fun m!8012784 () Bool)

(assert (=> b!7351922 m!8012784))

(declare-fun m!8012786 () Bool)

(assert (=> bm!672577 m!8012786))

(declare-fun m!8012788 () Bool)

(assert (=> b!7351928 m!8012788))

(assert (=> b!7351844 d!2280691))

(declare-fun d!2280695 () Bool)

(assert (=> d!2280695 (= ($colon$colon!3170 (exprs!8612 ct1!282) (regTwo!38856 r1!2370)) (Cons!71544 (regTwo!38856 r1!2370) (exprs!8612 ct1!282)))))

(assert (=> b!7351844 d!2280695))

(declare-fun b!7351931 () Bool)

(declare-fun c!1365888 () Bool)

(declare-fun e!4402009 () Bool)

(assert (=> b!7351931 (= c!1365888 e!4402009)))

(declare-fun res!2968946 () Bool)

(assert (=> b!7351931 (=> (not res!2968946) (not e!4402009))))

(assert (=> b!7351931 (= res!2968946 (is-Concat!28017 r1!2370))))

(declare-fun e!4402011 () (Set Context!16224))

(declare-fun e!4402008 () (Set Context!16224))

(assert (=> b!7351931 (= e!4402011 e!4402008)))

(declare-fun b!7351932 () Bool)

(declare-fun c!1365889 () Bool)

(assert (=> b!7351932 (= c!1365889 (is-Star!19172 r1!2370))))

(declare-fun e!4402010 () (Set Context!16224))

(declare-fun e!4402007 () (Set Context!16224))

(assert (=> b!7351932 (= e!4402010 e!4402007)))

(declare-fun d!2280697 () Bool)

(declare-fun c!1365886 () Bool)

(assert (=> d!2280697 (= c!1365886 (and (is-ElementMatch!19172 r1!2370) (= (c!1365868 r1!2370) c!10362)))))

(declare-fun e!4402012 () (Set Context!16224))

(assert (=> d!2280697 (= (derivationStepZipperDown!2998 r1!2370 ct1!282 c!10362) e!4402012)))

(declare-fun b!7351933 () Bool)

(assert (=> b!7351933 (= e!4402012 (set.insert ct1!282 (as set.empty (Set Context!16224))))))

(declare-fun b!7351934 () Bool)

(assert (=> b!7351934 (= e!4402007 (as set.empty (Set Context!16224)))))

(declare-fun b!7351935 () Bool)

(declare-fun call!672593 () (Set Context!16224))

(declare-fun call!672592 () (Set Context!16224))

(assert (=> b!7351935 (= e!4402008 (set.union call!672593 call!672592))))

(declare-fun c!1365885 () Bool)

(declare-fun call!672590 () List!71668)

(declare-fun bm!672583 () Bool)

(assert (=> bm!672583 (= call!672593 (derivationStepZipperDown!2998 (ite c!1365885 (regOne!38857 r1!2370) (regOne!38856 r1!2370)) (ite c!1365885 ct1!282 (Context!16225 call!672590)) c!10362))))

(declare-fun b!7351936 () Bool)

(declare-fun call!672589 () (Set Context!16224))

(assert (=> b!7351936 (= e!4402011 (set.union call!672593 call!672589))))

(declare-fun b!7351937 () Bool)

(assert (=> b!7351937 (= e!4402012 e!4402011)))

(assert (=> b!7351937 (= c!1365885 (is-Union!19172 r1!2370))))

(declare-fun c!1365887 () Bool)

(declare-fun bm!672584 () Bool)

(assert (=> bm!672584 (= call!672590 ($colon$colon!3170 (exprs!8612 ct1!282) (ite (or c!1365888 c!1365887) (regTwo!38856 r1!2370) r1!2370)))))

(declare-fun bm!672585 () Bool)

(declare-fun call!672588 () (Set Context!16224))

(assert (=> bm!672585 (= call!672588 call!672592)))

(declare-fun b!7351938 () Bool)

(assert (=> b!7351938 (= e!4402010 call!672588)))

(declare-fun b!7351939 () Bool)

(assert (=> b!7351939 (= e!4402009 (nullable!8263 (regOne!38856 r1!2370)))))

(declare-fun b!7351940 () Bool)

(assert (=> b!7351940 (= e!4402008 e!4402010)))

(assert (=> b!7351940 (= c!1365887 (is-Concat!28017 r1!2370))))

(declare-fun b!7351941 () Bool)

(assert (=> b!7351941 (= e!4402007 call!672588)))

(declare-fun bm!672586 () Bool)

(declare-fun call!672591 () List!71668)

(assert (=> bm!672586 (= call!672591 call!672590)))

(declare-fun bm!672587 () Bool)

(assert (=> bm!672587 (= call!672589 (derivationStepZipperDown!2998 (ite c!1365885 (regTwo!38857 r1!2370) (ite c!1365888 (regTwo!38856 r1!2370) (ite c!1365887 (regOne!38856 r1!2370) (reg!19501 r1!2370)))) (ite (or c!1365885 c!1365888) ct1!282 (Context!16225 call!672591)) c!10362))))

(declare-fun bm!672588 () Bool)

(assert (=> bm!672588 (= call!672592 call!672589)))

(assert (= (and d!2280697 c!1365886) b!7351933))

(assert (= (and d!2280697 (not c!1365886)) b!7351937))

(assert (= (and b!7351937 c!1365885) b!7351936))

(assert (= (and b!7351937 (not c!1365885)) b!7351931))

(assert (= (and b!7351931 res!2968946) b!7351939))

(assert (= (and b!7351931 c!1365888) b!7351935))

(assert (= (and b!7351931 (not c!1365888)) b!7351940))

(assert (= (and b!7351940 c!1365887) b!7351938))

(assert (= (and b!7351940 (not c!1365887)) b!7351932))

(assert (= (and b!7351932 c!1365889) b!7351941))

(assert (= (and b!7351932 (not c!1365889)) b!7351934))

(assert (= (or b!7351938 b!7351941) bm!672586))

(assert (= (or b!7351938 b!7351941) bm!672585))

(assert (= (or b!7351935 bm!672585) bm!672588))

(assert (= (or b!7351935 bm!672586) bm!672584))

(assert (= (or b!7351936 bm!672588) bm!672587))

(assert (= (or b!7351936 b!7351935) bm!672583))

(declare-fun m!8012790 () Bool)

(assert (=> bm!672584 m!8012790))

(declare-fun m!8012792 () Bool)

(assert (=> bm!672587 m!8012792))

(declare-fun m!8012794 () Bool)

(assert (=> b!7351933 m!8012794))

(declare-fun m!8012796 () Bool)

(assert (=> bm!672583 m!8012796))

(assert (=> b!7351939 m!8012724))

(assert (=> b!7351845 d!2280697))

(declare-fun b!7351982 () Bool)

(declare-fun e!4402045 () Bool)

(declare-fun call!672604 () Bool)

(assert (=> b!7351982 (= e!4402045 call!672604)))

(declare-fun bm!672599 () Bool)

(declare-fun call!672605 () Bool)

(declare-fun call!672606 () Bool)

(assert (=> bm!672599 (= call!672605 call!672606)))

(declare-fun b!7351983 () Bool)

(declare-fun e!4402040 () Bool)

(assert (=> b!7351983 (= e!4402040 call!672606)))

(declare-fun d!2280699 () Bool)

(declare-fun res!2968962 () Bool)

(declare-fun e!4402039 () Bool)

(assert (=> d!2280699 (=> res!2968962 e!4402039)))

(assert (=> d!2280699 (= res!2968962 (is-ElementMatch!19172 (regTwo!38856 r1!2370)))))

(assert (=> d!2280699 (= (validRegex!9768 (regTwo!38856 r1!2370)) e!4402039)))

(declare-fun b!7351984 () Bool)

(declare-fun e!4402042 () Bool)

(assert (=> b!7351984 (= e!4402039 e!4402042)))

(declare-fun c!1365905 () Bool)

(assert (=> b!7351984 (= c!1365905 (is-Star!19172 (regTwo!38856 r1!2370)))))

(declare-fun b!7351985 () Bool)

(declare-fun res!2968959 () Bool)

(assert (=> b!7351985 (=> (not res!2968959) (not e!4402045))))

(assert (=> b!7351985 (= res!2968959 call!672605)))

(declare-fun e!4402041 () Bool)

(assert (=> b!7351985 (= e!4402041 e!4402045)))

(declare-fun b!7351986 () Bool)

(declare-fun e!4402044 () Bool)

(assert (=> b!7351986 (= e!4402044 call!672605)))

(declare-fun b!7351987 () Bool)

(declare-fun e!4402043 () Bool)

(assert (=> b!7351987 (= e!4402043 e!4402044)))

(declare-fun res!2968960 () Bool)

(assert (=> b!7351987 (=> (not res!2968960) (not e!4402044))))

(assert (=> b!7351987 (= res!2968960 call!672604)))

(declare-fun b!7351988 () Bool)

(assert (=> b!7351988 (= e!4402042 e!4402041)))

(declare-fun c!1365904 () Bool)

(assert (=> b!7351988 (= c!1365904 (is-Union!19172 (regTwo!38856 r1!2370)))))

(declare-fun bm!672600 () Bool)

(assert (=> bm!672600 (= call!672606 (validRegex!9768 (ite c!1365905 (reg!19501 (regTwo!38856 r1!2370)) (ite c!1365904 (regOne!38857 (regTwo!38856 r1!2370)) (regTwo!38856 (regTwo!38856 r1!2370))))))))

(declare-fun bm!672601 () Bool)

(assert (=> bm!672601 (= call!672604 (validRegex!9768 (ite c!1365904 (regTwo!38857 (regTwo!38856 r1!2370)) (regOne!38856 (regTwo!38856 r1!2370)))))))

(declare-fun b!7351989 () Bool)

(assert (=> b!7351989 (= e!4402042 e!4402040)))

(declare-fun res!2968963 () Bool)

(assert (=> b!7351989 (= res!2968963 (not (nullable!8263 (reg!19501 (regTwo!38856 r1!2370)))))))

(assert (=> b!7351989 (=> (not res!2968963) (not e!4402040))))

(declare-fun b!7351990 () Bool)

(declare-fun res!2968961 () Bool)

(assert (=> b!7351990 (=> res!2968961 e!4402043)))

(assert (=> b!7351990 (= res!2968961 (not (is-Concat!28017 (regTwo!38856 r1!2370))))))

(assert (=> b!7351990 (= e!4402041 e!4402043)))

(assert (= (and d!2280699 (not res!2968962)) b!7351984))

(assert (= (and b!7351984 c!1365905) b!7351989))

(assert (= (and b!7351984 (not c!1365905)) b!7351988))

(assert (= (and b!7351989 res!2968963) b!7351983))

(assert (= (and b!7351988 c!1365904) b!7351985))

(assert (= (and b!7351988 (not c!1365904)) b!7351990))

(assert (= (and b!7351985 res!2968959) b!7351982))

(assert (= (and b!7351990 (not res!2968961)) b!7351987))

(assert (= (and b!7351987 res!2968960) b!7351986))

(assert (= (or b!7351985 b!7351986) bm!672599))

(assert (= (or b!7351982 b!7351987) bm!672601))

(assert (= (or b!7351983 bm!672599) bm!672600))

(declare-fun m!8012798 () Bool)

(assert (=> bm!672600 m!8012798))

(declare-fun m!8012800 () Bool)

(assert (=> bm!672601 m!8012800))

(declare-fun m!8012802 () Bool)

(assert (=> b!7351989 m!8012802))

(assert (=> b!7351835 d!2280699))

(declare-fun b!7351991 () Bool)

(declare-fun e!4402052 () Bool)

(declare-fun call!672609 () Bool)

(assert (=> b!7351991 (= e!4402052 call!672609)))

(declare-fun bm!672602 () Bool)

(declare-fun call!672610 () Bool)

(declare-fun call!672611 () Bool)

(assert (=> bm!672602 (= call!672610 call!672611)))

(declare-fun b!7351992 () Bool)

(declare-fun e!4402047 () Bool)

(assert (=> b!7351992 (= e!4402047 call!672611)))

(declare-fun d!2280701 () Bool)

(declare-fun res!2968967 () Bool)

(declare-fun e!4402046 () Bool)

(assert (=> d!2280701 (=> res!2968967 e!4402046)))

(assert (=> d!2280701 (= res!2968967 (is-ElementMatch!19172 r1!2370))))

(assert (=> d!2280701 (= (validRegex!9768 r1!2370) e!4402046)))

(declare-fun b!7351993 () Bool)

(declare-fun e!4402049 () Bool)

(assert (=> b!7351993 (= e!4402046 e!4402049)))

(declare-fun c!1365907 () Bool)

(assert (=> b!7351993 (= c!1365907 (is-Star!19172 r1!2370))))

(declare-fun b!7351994 () Bool)

(declare-fun res!2968964 () Bool)

(assert (=> b!7351994 (=> (not res!2968964) (not e!4402052))))

(assert (=> b!7351994 (= res!2968964 call!672610)))

(declare-fun e!4402048 () Bool)

(assert (=> b!7351994 (= e!4402048 e!4402052)))

(declare-fun b!7351995 () Bool)

(declare-fun e!4402051 () Bool)

(assert (=> b!7351995 (= e!4402051 call!672610)))

(declare-fun b!7351996 () Bool)

(declare-fun e!4402050 () Bool)

(assert (=> b!7351996 (= e!4402050 e!4402051)))

(declare-fun res!2968965 () Bool)

(assert (=> b!7351996 (=> (not res!2968965) (not e!4402051))))

(assert (=> b!7351996 (= res!2968965 call!672609)))

(declare-fun b!7351997 () Bool)

(assert (=> b!7351997 (= e!4402049 e!4402048)))

(declare-fun c!1365906 () Bool)

(assert (=> b!7351997 (= c!1365906 (is-Union!19172 r1!2370))))

(declare-fun bm!672603 () Bool)

(assert (=> bm!672603 (= call!672611 (validRegex!9768 (ite c!1365907 (reg!19501 r1!2370) (ite c!1365906 (regOne!38857 r1!2370) (regTwo!38856 r1!2370)))))))

(declare-fun bm!672604 () Bool)

(assert (=> bm!672604 (= call!672609 (validRegex!9768 (ite c!1365906 (regTwo!38857 r1!2370) (regOne!38856 r1!2370))))))

(declare-fun b!7351998 () Bool)

(assert (=> b!7351998 (= e!4402049 e!4402047)))

(declare-fun res!2968968 () Bool)

(assert (=> b!7351998 (= res!2968968 (not (nullable!8263 (reg!19501 r1!2370))))))

(assert (=> b!7351998 (=> (not res!2968968) (not e!4402047))))

(declare-fun b!7351999 () Bool)

(declare-fun res!2968966 () Bool)

(assert (=> b!7351999 (=> res!2968966 e!4402050)))

(assert (=> b!7351999 (= res!2968966 (not (is-Concat!28017 r1!2370)))))

(assert (=> b!7351999 (= e!4402048 e!4402050)))

(assert (= (and d!2280701 (not res!2968967)) b!7351993))

(assert (= (and b!7351993 c!1365907) b!7351998))

(assert (= (and b!7351993 (not c!1365907)) b!7351997))

(assert (= (and b!7351998 res!2968968) b!7351992))

(assert (= (and b!7351997 c!1365906) b!7351994))

(assert (= (and b!7351997 (not c!1365906)) b!7351999))

(assert (= (and b!7351994 res!2968964) b!7351991))

(assert (= (and b!7351999 (not res!2968966)) b!7351996))

(assert (= (and b!7351996 res!2968965) b!7351995))

(assert (= (or b!7351994 b!7351995) bm!672602))

(assert (= (or b!7351991 b!7351996) bm!672604))

(assert (= (or b!7351992 bm!672602) bm!672603))

(declare-fun m!8012804 () Bool)

(assert (=> bm!672603 m!8012804))

(declare-fun m!8012806 () Bool)

(assert (=> bm!672604 m!8012806))

(declare-fun m!8012808 () Bool)

(assert (=> b!7351998 m!8012808))

(assert (=> start!717926 d!2280701))

(declare-fun bs!1919373 () Bool)

(declare-fun d!2280703 () Bool)

(assert (= bs!1919373 (and d!2280703 b!7351846)))

(declare-fun lambda!456644 () Int)

(assert (=> bs!1919373 (= lambda!456644 lambda!456630)))

(assert (=> d!2280703 (= (inv!91271 cWitness!61) (forall!17994 (exprs!8612 cWitness!61) lambda!456644))))

(declare-fun bs!1919374 () Bool)

(assert (= bs!1919374 d!2280703))

(declare-fun m!8012810 () Bool)

(assert (=> bs!1919374 m!8012810))

(assert (=> start!717926 d!2280703))

(declare-fun bs!1919375 () Bool)

(declare-fun d!2280705 () Bool)

(assert (= bs!1919375 (and d!2280705 b!7351846)))

(declare-fun lambda!456645 () Int)

(assert (=> bs!1919375 (= lambda!456645 lambda!456630)))

(declare-fun bs!1919376 () Bool)

(assert (= bs!1919376 (and d!2280705 d!2280703)))

(assert (=> bs!1919376 (= lambda!456645 lambda!456644)))

(assert (=> d!2280705 (= (inv!91271 ct1!282) (forall!17994 (exprs!8612 ct1!282) lambda!456645))))

(declare-fun bs!1919377 () Bool)

(assert (= bs!1919377 d!2280705))

(declare-fun m!8012812 () Bool)

(assert (=> bs!1919377 m!8012812))

(assert (=> start!717926 d!2280705))

(declare-fun bs!1919378 () Bool)

(declare-fun d!2280707 () Bool)

(assert (= bs!1919378 (and d!2280707 b!7351846)))

(declare-fun lambda!456646 () Int)

(assert (=> bs!1919378 (= lambda!456646 lambda!456630)))

(declare-fun bs!1919379 () Bool)

(assert (= bs!1919379 (and d!2280707 d!2280703)))

(assert (=> bs!1919379 (= lambda!456646 lambda!456644)))

(declare-fun bs!1919380 () Bool)

(assert (= bs!1919380 (and d!2280707 d!2280705)))

(assert (=> bs!1919380 (= lambda!456646 lambda!456645)))

(assert (=> d!2280707 (= (inv!91271 ct2!378) (forall!17994 (exprs!8612 ct2!378) lambda!456646))))

(declare-fun bs!1919381 () Bool)

(assert (= bs!1919381 d!2280707))

(declare-fun m!8012814 () Bool)

(assert (=> bs!1919381 m!8012814))

(assert (=> start!717926 d!2280707))

(declare-fun b!7352000 () Bool)

(declare-fun c!1365911 () Bool)

(declare-fun e!4402055 () Bool)

(assert (=> b!7352000 (= c!1365911 e!4402055)))

(declare-fun res!2968969 () Bool)

(assert (=> b!7352000 (=> (not res!2968969) (not e!4402055))))

(assert (=> b!7352000 (= res!2968969 (is-Concat!28017 r1!2370))))

(declare-fun e!4402057 () (Set Context!16224))

(declare-fun e!4402054 () (Set Context!16224))

(assert (=> b!7352000 (= e!4402057 e!4402054)))

(declare-fun b!7352001 () Bool)

(declare-fun c!1365912 () Bool)

(assert (=> b!7352001 (= c!1365912 (is-Star!19172 r1!2370))))

(declare-fun e!4402056 () (Set Context!16224))

(declare-fun e!4402053 () (Set Context!16224))

(assert (=> b!7352001 (= e!4402056 e!4402053)))

(declare-fun d!2280709 () Bool)

(declare-fun c!1365909 () Bool)

(assert (=> d!2280709 (= c!1365909 (and (is-ElementMatch!19172 r1!2370) (= (c!1365868 r1!2370) c!10362)))))

(declare-fun e!4402058 () (Set Context!16224))

(assert (=> d!2280709 (= (derivationStepZipperDown!2998 r1!2370 (Context!16225 (++!16990 (exprs!8612 ct1!282) (exprs!8612 ct2!378))) c!10362) e!4402058)))

(declare-fun b!7352002 () Bool)

(assert (=> b!7352002 (= e!4402058 (set.insert (Context!16225 (++!16990 (exprs!8612 ct1!282) (exprs!8612 ct2!378))) (as set.empty (Set Context!16224))))))

(declare-fun b!7352003 () Bool)

(assert (=> b!7352003 (= e!4402053 (as set.empty (Set Context!16224)))))

(declare-fun b!7352004 () Bool)

(declare-fun call!672623 () (Set Context!16224))

(declare-fun call!672622 () (Set Context!16224))

(assert (=> b!7352004 (= e!4402054 (set.union call!672623 call!672622))))

(declare-fun c!1365908 () Bool)

(declare-fun call!672620 () List!71668)

(declare-fun bm!672611 () Bool)

(assert (=> bm!672611 (= call!672623 (derivationStepZipperDown!2998 (ite c!1365908 (regOne!38857 r1!2370) (regOne!38856 r1!2370)) (ite c!1365908 (Context!16225 (++!16990 (exprs!8612 ct1!282) (exprs!8612 ct2!378))) (Context!16225 call!672620)) c!10362))))

(declare-fun b!7352005 () Bool)

(declare-fun call!672619 () (Set Context!16224))

(assert (=> b!7352005 (= e!4402057 (set.union call!672623 call!672619))))

(declare-fun b!7352006 () Bool)

(assert (=> b!7352006 (= e!4402058 e!4402057)))

(assert (=> b!7352006 (= c!1365908 (is-Union!19172 r1!2370))))

(declare-fun bm!672612 () Bool)

(declare-fun c!1365910 () Bool)

(assert (=> bm!672612 (= call!672620 ($colon$colon!3170 (exprs!8612 (Context!16225 (++!16990 (exprs!8612 ct1!282) (exprs!8612 ct2!378)))) (ite (or c!1365911 c!1365910) (regTwo!38856 r1!2370) r1!2370)))))

(declare-fun bm!672613 () Bool)

(declare-fun call!672618 () (Set Context!16224))

(assert (=> bm!672613 (= call!672618 call!672622)))

(declare-fun b!7352007 () Bool)

(assert (=> b!7352007 (= e!4402056 call!672618)))

(declare-fun b!7352008 () Bool)

(assert (=> b!7352008 (= e!4402055 (nullable!8263 (regOne!38856 r1!2370)))))

(declare-fun b!7352009 () Bool)

(assert (=> b!7352009 (= e!4402054 e!4402056)))

(assert (=> b!7352009 (= c!1365910 (is-Concat!28017 r1!2370))))

(declare-fun b!7352010 () Bool)

(assert (=> b!7352010 (= e!4402053 call!672618)))

(declare-fun bm!672614 () Bool)

(declare-fun call!672621 () List!71668)

(assert (=> bm!672614 (= call!672621 call!672620)))

(declare-fun bm!672615 () Bool)

(assert (=> bm!672615 (= call!672619 (derivationStepZipperDown!2998 (ite c!1365908 (regTwo!38857 r1!2370) (ite c!1365911 (regTwo!38856 r1!2370) (ite c!1365910 (regOne!38856 r1!2370) (reg!19501 r1!2370)))) (ite (or c!1365908 c!1365911) (Context!16225 (++!16990 (exprs!8612 ct1!282) (exprs!8612 ct2!378))) (Context!16225 call!672621)) c!10362))))

(declare-fun bm!672616 () Bool)

(assert (=> bm!672616 (= call!672622 call!672619)))

(assert (= (and d!2280709 c!1365909) b!7352002))

(assert (= (and d!2280709 (not c!1365909)) b!7352006))

(assert (= (and b!7352006 c!1365908) b!7352005))

(assert (= (and b!7352006 (not c!1365908)) b!7352000))

(assert (= (and b!7352000 res!2968969) b!7352008))

(assert (= (and b!7352000 c!1365911) b!7352004))

(assert (= (and b!7352000 (not c!1365911)) b!7352009))

(assert (= (and b!7352009 c!1365910) b!7352007))

(assert (= (and b!7352009 (not c!1365910)) b!7352001))

(assert (= (and b!7352001 c!1365912) b!7352010))

(assert (= (and b!7352001 (not c!1365912)) b!7352003))

(assert (= (or b!7352007 b!7352010) bm!672614))

(assert (= (or b!7352007 b!7352010) bm!672613))

(assert (= (or b!7352004 bm!672613) bm!672616))

(assert (= (or b!7352004 bm!672614) bm!672612))

(assert (= (or b!7352005 bm!672616) bm!672615))

(assert (= (or b!7352005 b!7352004) bm!672611))

(declare-fun m!8012816 () Bool)

(assert (=> bm!672612 m!8012816))

(declare-fun m!8012818 () Bool)

(assert (=> bm!672615 m!8012818))

(declare-fun m!8012820 () Bool)

(assert (=> b!7352002 m!8012820))

(declare-fun m!8012822 () Bool)

(assert (=> bm!672611 m!8012822))

(assert (=> b!7352008 m!8012724))

(assert (=> b!7351846 d!2280709))

(declare-fun e!4402063 () Bool)

(declare-fun b!7352022 () Bool)

(declare-fun lt!2612392 () List!71668)

(assert (=> b!7352022 (= e!4402063 (or (not (= (exprs!8612 ct2!378) Nil!71544)) (= lt!2612392 (exprs!8612 ct1!282))))))

(declare-fun d!2280711 () Bool)

(assert (=> d!2280711 e!4402063))

(declare-fun res!2968975 () Bool)

(assert (=> d!2280711 (=> (not res!2968975) (not e!4402063))))

(declare-fun content!15078 (List!71668) (Set Regex!19172))

(assert (=> d!2280711 (= res!2968975 (= (content!15078 lt!2612392) (set.union (content!15078 (exprs!8612 ct1!282)) (content!15078 (exprs!8612 ct2!378)))))))

(declare-fun e!4402064 () List!71668)

(assert (=> d!2280711 (= lt!2612392 e!4402064)))

(declare-fun c!1365915 () Bool)

(assert (=> d!2280711 (= c!1365915 (is-Nil!71544 (exprs!8612 ct1!282)))))

(assert (=> d!2280711 (= (++!16990 (exprs!8612 ct1!282) (exprs!8612 ct2!378)) lt!2612392)))

(declare-fun b!7352020 () Bool)

(assert (=> b!7352020 (= e!4402064 (Cons!71544 (h!77992 (exprs!8612 ct1!282)) (++!16990 (t!386091 (exprs!8612 ct1!282)) (exprs!8612 ct2!378))))))

(declare-fun b!7352021 () Bool)

(declare-fun res!2968974 () Bool)

(assert (=> b!7352021 (=> (not res!2968974) (not e!4402063))))

(declare-fun size!42057 (List!71668) Int)

(assert (=> b!7352021 (= res!2968974 (= (size!42057 lt!2612392) (+ (size!42057 (exprs!8612 ct1!282)) (size!42057 (exprs!8612 ct2!378)))))))

(declare-fun b!7352019 () Bool)

(assert (=> b!7352019 (= e!4402064 (exprs!8612 ct2!378))))

(assert (= (and d!2280711 c!1365915) b!7352019))

(assert (= (and d!2280711 (not c!1365915)) b!7352020))

(assert (= (and d!2280711 res!2968975) b!7352021))

(assert (= (and b!7352021 res!2968974) b!7352022))

(declare-fun m!8012824 () Bool)

(assert (=> d!2280711 m!8012824))

(declare-fun m!8012826 () Bool)

(assert (=> d!2280711 m!8012826))

(declare-fun m!8012828 () Bool)

(assert (=> d!2280711 m!8012828))

(declare-fun m!8012830 () Bool)

(assert (=> b!7352020 m!8012830))

(declare-fun m!8012832 () Bool)

(assert (=> b!7352021 m!8012832))

(declare-fun m!8012834 () Bool)

(assert (=> b!7352021 m!8012834))

(declare-fun m!8012836 () Bool)

(assert (=> b!7352021 m!8012836))

(assert (=> b!7351846 d!2280711))

(declare-fun d!2280713 () Bool)

(assert (=> d!2280713 (forall!17994 (++!16990 (exprs!8612 ct1!282) (exprs!8612 ct2!378)) lambda!456630)))

(declare-fun lt!2612395 () Unit!165297)

(declare-fun choose!57189 (List!71668 List!71668 Int) Unit!165297)

(assert (=> d!2280713 (= lt!2612395 (choose!57189 (exprs!8612 ct1!282) (exprs!8612 ct2!378) lambda!456630))))

(assert (=> d!2280713 (forall!17994 (exprs!8612 ct1!282) lambda!456630)))

(assert (=> d!2280713 (= (lemmaConcatPreservesForall!1847 (exprs!8612 ct1!282) (exprs!8612 ct2!378) lambda!456630) lt!2612395)))

(declare-fun bs!1919382 () Bool)

(assert (= bs!1919382 d!2280713))

(assert (=> bs!1919382 m!8012690))

(assert (=> bs!1919382 m!8012690))

(declare-fun m!8012838 () Bool)

(assert (=> bs!1919382 m!8012838))

(declare-fun m!8012840 () Bool)

(assert (=> bs!1919382 m!8012840))

(declare-fun m!8012842 () Bool)

(assert (=> bs!1919382 m!8012842))

(assert (=> b!7351846 d!2280713))

(declare-fun bs!1919383 () Bool)

(declare-fun d!2280715 () Bool)

(assert (= bs!1919383 (and d!2280715 b!7351846)))

(declare-fun lambda!456651 () Int)

(assert (=> bs!1919383 (= lambda!456651 lambda!456630)))

(declare-fun bs!1919384 () Bool)

(assert (= bs!1919384 (and d!2280715 d!2280703)))

(assert (=> bs!1919384 (= lambda!456651 lambda!456644)))

(declare-fun bs!1919385 () Bool)

(assert (= bs!1919385 (and d!2280715 d!2280705)))

(assert (=> bs!1919385 (= lambda!456651 lambda!456645)))

(declare-fun bs!1919386 () Bool)

(assert (= bs!1919386 (and d!2280715 d!2280707)))

(assert (=> bs!1919386 (= lambda!456651 lambda!456646)))

(assert (=> d!2280715 (set.member (Context!16225 (++!16990 (exprs!8612 cWitness!61) (exprs!8612 ct2!378))) (derivationStepZipperDown!2998 (regOne!38856 r1!2370) (Context!16225 (++!16990 (exprs!8612 lt!2612358) (exprs!8612 ct2!378))) c!10362))))

(declare-fun lt!2612404 () Unit!165297)

(assert (=> d!2280715 (= lt!2612404 (lemmaConcatPreservesForall!1847 (exprs!8612 lt!2612358) (exprs!8612 ct2!378) lambda!456651))))

(declare-fun lt!2612403 () Unit!165297)

(assert (=> d!2280715 (= lt!2612403 (lemmaConcatPreservesForall!1847 (exprs!8612 cWitness!61) (exprs!8612 ct2!378) lambda!456651))))

(declare-fun lt!2612402 () Unit!165297)

(declare-fun choose!57190 (Regex!19172 Context!16224 Context!16224 Context!16224 C!38618) Unit!165297)

(assert (=> d!2280715 (= lt!2612402 (choose!57190 (regOne!38856 r1!2370) lt!2612358 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2280715 (validRegex!9768 (regOne!38856 r1!2370))))

(assert (=> d!2280715 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!93 (regOne!38856 r1!2370) lt!2612358 ct2!378 cWitness!61 c!10362) lt!2612402)))

(declare-fun bs!1919387 () Bool)

(assert (= bs!1919387 d!2280715))

(assert (=> bs!1919387 m!8012722))

(declare-fun m!8012852 () Bool)

(assert (=> bs!1919387 m!8012852))

(declare-fun m!8012854 () Bool)

(assert (=> bs!1919387 m!8012854))

(declare-fun m!8012856 () Bool)

(assert (=> bs!1919387 m!8012856))

(declare-fun m!8012858 () Bool)

(assert (=> bs!1919387 m!8012858))

(declare-fun m!8012860 () Bool)

(assert (=> bs!1919387 m!8012860))

(declare-fun m!8012862 () Bool)

(assert (=> bs!1919387 m!8012862))

(declare-fun m!8012864 () Bool)

(assert (=> bs!1919387 m!8012864))

(assert (=> b!7351847 d!2280715))

(declare-fun b!7352034 () Bool)

(declare-fun c!1365925 () Bool)

(declare-fun e!4402073 () Bool)

(assert (=> b!7352034 (= c!1365925 e!4402073)))

(declare-fun res!2968977 () Bool)

(assert (=> b!7352034 (=> (not res!2968977) (not e!4402073))))

(assert (=> b!7352034 (= res!2968977 (is-Concat!28017 (regOne!38856 r1!2370)))))

(declare-fun e!4402075 () (Set Context!16224))

(declare-fun e!4402072 () (Set Context!16224))

(assert (=> b!7352034 (= e!4402075 e!4402072)))

(declare-fun b!7352035 () Bool)

(declare-fun c!1365926 () Bool)

(assert (=> b!7352035 (= c!1365926 (is-Star!19172 (regOne!38856 r1!2370)))))

(declare-fun e!4402074 () (Set Context!16224))

(declare-fun e!4402071 () (Set Context!16224))

(assert (=> b!7352035 (= e!4402074 e!4402071)))

(declare-fun d!2280719 () Bool)

(declare-fun c!1365923 () Bool)

(assert (=> d!2280719 (= c!1365923 (and (is-ElementMatch!19172 (regOne!38856 r1!2370)) (= (c!1365868 (regOne!38856 r1!2370)) c!10362)))))

(declare-fun e!4402076 () (Set Context!16224))

(assert (=> d!2280719 (= (derivationStepZipperDown!2998 (regOne!38856 r1!2370) (Context!16225 (++!16990 lt!2612355 (exprs!8612 ct2!378))) c!10362) e!4402076)))

(declare-fun b!7352036 () Bool)

(assert (=> b!7352036 (= e!4402076 (set.insert (Context!16225 (++!16990 lt!2612355 (exprs!8612 ct2!378))) (as set.empty (Set Context!16224))))))

(declare-fun b!7352037 () Bool)

(assert (=> b!7352037 (= e!4402071 (as set.empty (Set Context!16224)))))

(declare-fun b!7352038 () Bool)

(declare-fun call!672635 () (Set Context!16224))

(declare-fun call!672634 () (Set Context!16224))

(assert (=> b!7352038 (= e!4402072 (set.union call!672635 call!672634))))

(declare-fun bm!672625 () Bool)

(declare-fun c!1365922 () Bool)

(declare-fun call!672632 () List!71668)

(assert (=> bm!672625 (= call!672635 (derivationStepZipperDown!2998 (ite c!1365922 (regOne!38857 (regOne!38856 r1!2370)) (regOne!38856 (regOne!38856 r1!2370))) (ite c!1365922 (Context!16225 (++!16990 lt!2612355 (exprs!8612 ct2!378))) (Context!16225 call!672632)) c!10362))))

(declare-fun b!7352039 () Bool)

(declare-fun call!672631 () (Set Context!16224))

(assert (=> b!7352039 (= e!4402075 (set.union call!672635 call!672631))))

(declare-fun b!7352040 () Bool)

(assert (=> b!7352040 (= e!4402076 e!4402075)))

(assert (=> b!7352040 (= c!1365922 (is-Union!19172 (regOne!38856 r1!2370)))))

(declare-fun c!1365924 () Bool)

(declare-fun bm!672626 () Bool)

(assert (=> bm!672626 (= call!672632 ($colon$colon!3170 (exprs!8612 (Context!16225 (++!16990 lt!2612355 (exprs!8612 ct2!378)))) (ite (or c!1365925 c!1365924) (regTwo!38856 (regOne!38856 r1!2370)) (regOne!38856 r1!2370))))))

(declare-fun bm!672627 () Bool)

(declare-fun call!672630 () (Set Context!16224))

(assert (=> bm!672627 (= call!672630 call!672634)))

(declare-fun b!7352041 () Bool)

(assert (=> b!7352041 (= e!4402074 call!672630)))

(declare-fun b!7352042 () Bool)

(assert (=> b!7352042 (= e!4402073 (nullable!8263 (regOne!38856 (regOne!38856 r1!2370))))))

(declare-fun b!7352043 () Bool)

(assert (=> b!7352043 (= e!4402072 e!4402074)))

(assert (=> b!7352043 (= c!1365924 (is-Concat!28017 (regOne!38856 r1!2370)))))

(declare-fun b!7352044 () Bool)

(assert (=> b!7352044 (= e!4402071 call!672630)))

(declare-fun bm!672628 () Bool)

(declare-fun call!672633 () List!71668)

(assert (=> bm!672628 (= call!672633 call!672632)))

(declare-fun bm!672629 () Bool)

(assert (=> bm!672629 (= call!672631 (derivationStepZipperDown!2998 (ite c!1365922 (regTwo!38857 (regOne!38856 r1!2370)) (ite c!1365925 (regTwo!38856 (regOne!38856 r1!2370)) (ite c!1365924 (regOne!38856 (regOne!38856 r1!2370)) (reg!19501 (regOne!38856 r1!2370))))) (ite (or c!1365922 c!1365925) (Context!16225 (++!16990 lt!2612355 (exprs!8612 ct2!378))) (Context!16225 call!672633)) c!10362))))

(declare-fun bm!672630 () Bool)

(assert (=> bm!672630 (= call!672634 call!672631)))

(assert (= (and d!2280719 c!1365923) b!7352036))

(assert (= (and d!2280719 (not c!1365923)) b!7352040))

(assert (= (and b!7352040 c!1365922) b!7352039))

(assert (= (and b!7352040 (not c!1365922)) b!7352034))

(assert (= (and b!7352034 res!2968977) b!7352042))

(assert (= (and b!7352034 c!1365925) b!7352038))

(assert (= (and b!7352034 (not c!1365925)) b!7352043))

(assert (= (and b!7352043 c!1365924) b!7352041))

(assert (= (and b!7352043 (not c!1365924)) b!7352035))

(assert (= (and b!7352035 c!1365926) b!7352044))

(assert (= (and b!7352035 (not c!1365926)) b!7352037))

(assert (= (or b!7352041 b!7352044) bm!672628))

(assert (= (or b!7352041 b!7352044) bm!672627))

(assert (= (or b!7352038 bm!672627) bm!672630))

(assert (= (or b!7352038 bm!672628) bm!672626))

(assert (= (or b!7352039 bm!672630) bm!672629))

(assert (= (or b!7352039 b!7352038) bm!672625))

(declare-fun m!8012866 () Bool)

(assert (=> bm!672626 m!8012866))

(declare-fun m!8012868 () Bool)

(assert (=> bm!672629 m!8012868))

(declare-fun m!8012870 () Bool)

(assert (=> b!7352036 m!8012870))

(declare-fun m!8012872 () Bool)

(assert (=> bm!672625 m!8012872))

(assert (=> b!7352042 m!8012788))

(assert (=> b!7351847 d!2280719))

(declare-fun e!4402077 () Bool)

(declare-fun b!7352048 () Bool)

(declare-fun lt!2612405 () List!71668)

(assert (=> b!7352048 (= e!4402077 (or (not (= (exprs!8612 ct2!378) Nil!71544)) (= lt!2612405 (exprs!8612 cWitness!61))))))

(declare-fun d!2280721 () Bool)

(assert (=> d!2280721 e!4402077))

(declare-fun res!2968979 () Bool)

(assert (=> d!2280721 (=> (not res!2968979) (not e!4402077))))

(assert (=> d!2280721 (= res!2968979 (= (content!15078 lt!2612405) (set.union (content!15078 (exprs!8612 cWitness!61)) (content!15078 (exprs!8612 ct2!378)))))))

(declare-fun e!4402078 () List!71668)

(assert (=> d!2280721 (= lt!2612405 e!4402078)))

(declare-fun c!1365927 () Bool)

(assert (=> d!2280721 (= c!1365927 (is-Nil!71544 (exprs!8612 cWitness!61)))))

(assert (=> d!2280721 (= (++!16990 (exprs!8612 cWitness!61) (exprs!8612 ct2!378)) lt!2612405)))

(declare-fun b!7352046 () Bool)

(assert (=> b!7352046 (= e!4402078 (Cons!71544 (h!77992 (exprs!8612 cWitness!61)) (++!16990 (t!386091 (exprs!8612 cWitness!61)) (exprs!8612 ct2!378))))))

(declare-fun b!7352047 () Bool)

(declare-fun res!2968978 () Bool)

(assert (=> b!7352047 (=> (not res!2968978) (not e!4402077))))

(assert (=> b!7352047 (= res!2968978 (= (size!42057 lt!2612405) (+ (size!42057 (exprs!8612 cWitness!61)) (size!42057 (exprs!8612 ct2!378)))))))

(declare-fun b!7352045 () Bool)

(assert (=> b!7352045 (= e!4402078 (exprs!8612 ct2!378))))

(assert (= (and d!2280721 c!1365927) b!7352045))

(assert (= (and d!2280721 (not c!1365927)) b!7352046))

(assert (= (and d!2280721 res!2968979) b!7352047))

(assert (= (and b!7352047 res!2968978) b!7352048))

(declare-fun m!8012874 () Bool)

(assert (=> d!2280721 m!8012874))

(declare-fun m!8012876 () Bool)

(assert (=> d!2280721 m!8012876))

(assert (=> d!2280721 m!8012828))

(declare-fun m!8012878 () Bool)

(assert (=> b!7352046 m!8012878))

(declare-fun m!8012880 () Bool)

(assert (=> b!7352047 m!8012880))

(declare-fun m!8012882 () Bool)

(assert (=> b!7352047 m!8012882))

(assert (=> b!7352047 m!8012836))

(assert (=> b!7351847 d!2280721))

(declare-fun lt!2612406 () List!71668)

(declare-fun b!7352052 () Bool)

(declare-fun e!4402079 () Bool)

(assert (=> b!7352052 (= e!4402079 (or (not (= (exprs!8612 ct2!378) Nil!71544)) (= lt!2612406 lt!2612355)))))

(declare-fun d!2280723 () Bool)

(assert (=> d!2280723 e!4402079))

(declare-fun res!2968981 () Bool)

(assert (=> d!2280723 (=> (not res!2968981) (not e!4402079))))

(assert (=> d!2280723 (= res!2968981 (= (content!15078 lt!2612406) (set.union (content!15078 lt!2612355) (content!15078 (exprs!8612 ct2!378)))))))

(declare-fun e!4402080 () List!71668)

(assert (=> d!2280723 (= lt!2612406 e!4402080)))

(declare-fun c!1365928 () Bool)

(assert (=> d!2280723 (= c!1365928 (is-Nil!71544 lt!2612355))))

(assert (=> d!2280723 (= (++!16990 lt!2612355 (exprs!8612 ct2!378)) lt!2612406)))

(declare-fun b!7352050 () Bool)

(assert (=> b!7352050 (= e!4402080 (Cons!71544 (h!77992 lt!2612355) (++!16990 (t!386091 lt!2612355) (exprs!8612 ct2!378))))))

(declare-fun b!7352051 () Bool)

(declare-fun res!2968980 () Bool)

(assert (=> b!7352051 (=> (not res!2968980) (not e!4402079))))

(assert (=> b!7352051 (= res!2968980 (= (size!42057 lt!2612406) (+ (size!42057 lt!2612355) (size!42057 (exprs!8612 ct2!378)))))))

(declare-fun b!7352049 () Bool)

(assert (=> b!7352049 (= e!4402080 (exprs!8612 ct2!378))))

(assert (= (and d!2280723 c!1365928) b!7352049))

(assert (= (and d!2280723 (not c!1365928)) b!7352050))

(assert (= (and d!2280723 res!2968981) b!7352051))

(assert (= (and b!7352051 res!2968980) b!7352052))

(declare-fun m!8012884 () Bool)

(assert (=> d!2280723 m!8012884))

(declare-fun m!8012886 () Bool)

(assert (=> d!2280723 m!8012886))

(assert (=> d!2280723 m!8012828))

(declare-fun m!8012888 () Bool)

(assert (=> b!7352050 m!8012888))

(declare-fun m!8012890 () Bool)

(assert (=> b!7352051 m!8012890))

(declare-fun m!8012892 () Bool)

(assert (=> b!7352051 m!8012892))

(assert (=> b!7352051 m!8012836))

(assert (=> b!7351847 d!2280723))

(declare-fun d!2280725 () Bool)

(assert (=> d!2280725 (forall!17994 (++!16990 (exprs!8612 cWitness!61) (exprs!8612 ct2!378)) lambda!456630)))

(declare-fun lt!2612409 () Unit!165297)

(assert (=> d!2280725 (= lt!2612409 (choose!57189 (exprs!8612 cWitness!61) (exprs!8612 ct2!378) lambda!456630))))

(assert (=> d!2280725 (forall!17994 (exprs!8612 cWitness!61) lambda!456630)))

(assert (=> d!2280725 (= (lemmaConcatPreservesForall!1847 (exprs!8612 cWitness!61) (exprs!8612 ct2!378) lambda!456630) lt!2612409)))

(declare-fun bs!1919388 () Bool)

(assert (= bs!1919388 d!2280725))

(assert (=> bs!1919388 m!8012722))

(assert (=> bs!1919388 m!8012722))

(declare-fun m!8012894 () Bool)

(assert (=> bs!1919388 m!8012894))

(declare-fun m!8012896 () Bool)

(assert (=> bs!1919388 m!8012896))

(assert (=> bs!1919388 m!8012696))

(assert (=> b!7351847 d!2280725))

(declare-fun d!2280727 () Bool)

(assert (=> d!2280727 (forall!17994 (++!16990 lt!2612355 (exprs!8612 ct2!378)) lambda!456630)))

(declare-fun lt!2612410 () Unit!165297)

(assert (=> d!2280727 (= lt!2612410 (choose!57189 lt!2612355 (exprs!8612 ct2!378) lambda!456630))))

(assert (=> d!2280727 (forall!17994 lt!2612355 lambda!456630)))

(assert (=> d!2280727 (= (lemmaConcatPreservesForall!1847 lt!2612355 (exprs!8612 ct2!378) lambda!456630) lt!2612410)))

(declare-fun bs!1919389 () Bool)

(assert (= bs!1919389 d!2280727))

(assert (=> bs!1919389 m!8012714))

(assert (=> bs!1919389 m!8012714))

(declare-fun m!8012898 () Bool)

(assert (=> bs!1919389 m!8012898))

(declare-fun m!8012900 () Bool)

(assert (=> bs!1919389 m!8012900))

(declare-fun m!8012902 () Bool)

(assert (=> bs!1919389 m!8012902))

(assert (=> b!7351847 d!2280727))

(declare-fun d!2280729 () Bool)

(declare-fun res!2968990 () Bool)

(declare-fun e!4402089 () Bool)

(assert (=> d!2280729 (=> res!2968990 e!4402089)))

(assert (=> d!2280729 (= res!2968990 (is-Nil!71544 (exprs!8612 cWitness!61)))))

(assert (=> d!2280729 (= (forall!17994 (exprs!8612 cWitness!61) lambda!456630) e!4402089)))

(declare-fun b!7352065 () Bool)

(declare-fun e!4402090 () Bool)

(assert (=> b!7352065 (= e!4402089 e!4402090)))

(declare-fun res!2968991 () Bool)

(assert (=> b!7352065 (=> (not res!2968991) (not e!4402090))))

(declare-fun dynLambda!29497 (Int Regex!19172) Bool)

(assert (=> b!7352065 (= res!2968991 (dynLambda!29497 lambda!456630 (h!77992 (exprs!8612 cWitness!61))))))

(declare-fun b!7352066 () Bool)

(assert (=> b!7352066 (= e!4402090 (forall!17994 (t!386091 (exprs!8612 cWitness!61)) lambda!456630))))

(assert (= (and d!2280729 (not res!2968990)) b!7352065))

(assert (= (and b!7352065 res!2968991) b!7352066))

(declare-fun b_lambda!284147 () Bool)

(assert (=> (not b_lambda!284147) (not b!7352065)))

(declare-fun m!8012904 () Bool)

(assert (=> b!7352065 m!8012904))

(declare-fun m!8012906 () Bool)

(assert (=> b!7352066 m!8012906))

(assert (=> b!7351842 d!2280729))

(declare-fun b!7352078 () Bool)

(declare-fun e!4402093 () Bool)

(declare-fun tp!2088224 () Bool)

(declare-fun tp!2088220 () Bool)

(assert (=> b!7352078 (= e!4402093 (and tp!2088224 tp!2088220))))

(assert (=> b!7351834 (= tp!2088183 e!4402093)))

(declare-fun b!7352080 () Bool)

(declare-fun tp!2088221 () Bool)

(declare-fun tp!2088223 () Bool)

(assert (=> b!7352080 (= e!4402093 (and tp!2088221 tp!2088223))))

(declare-fun b!7352077 () Bool)

(assert (=> b!7352077 (= e!4402093 tp_is_empty!48589)))

(declare-fun b!7352079 () Bool)

(declare-fun tp!2088222 () Bool)

(assert (=> b!7352079 (= e!4402093 tp!2088222)))

(assert (= (and b!7351834 (is-ElementMatch!19172 (reg!19501 r1!2370))) b!7352077))

(assert (= (and b!7351834 (is-Concat!28017 (reg!19501 r1!2370))) b!7352078))

(assert (= (and b!7351834 (is-Star!19172 (reg!19501 r1!2370))) b!7352079))

(assert (= (and b!7351834 (is-Union!19172 (reg!19501 r1!2370))) b!7352080))

(declare-fun b!7352082 () Bool)

(declare-fun e!4402094 () Bool)

(declare-fun tp!2088229 () Bool)

(declare-fun tp!2088225 () Bool)

(assert (=> b!7352082 (= e!4402094 (and tp!2088229 tp!2088225))))

(assert (=> b!7351841 (= tp!2088181 e!4402094)))

(declare-fun b!7352084 () Bool)

(declare-fun tp!2088226 () Bool)

(declare-fun tp!2088228 () Bool)

(assert (=> b!7352084 (= e!4402094 (and tp!2088226 tp!2088228))))

(declare-fun b!7352081 () Bool)

(assert (=> b!7352081 (= e!4402094 tp_is_empty!48589)))

(declare-fun b!7352083 () Bool)

(declare-fun tp!2088227 () Bool)

(assert (=> b!7352083 (= e!4402094 tp!2088227)))

(assert (= (and b!7351841 (is-ElementMatch!19172 (regOne!38856 r1!2370))) b!7352081))

(assert (= (and b!7351841 (is-Concat!28017 (regOne!38856 r1!2370))) b!7352082))

(assert (= (and b!7351841 (is-Star!19172 (regOne!38856 r1!2370))) b!7352083))

(assert (= (and b!7351841 (is-Union!19172 (regOne!38856 r1!2370))) b!7352084))

(declare-fun b!7352086 () Bool)

(declare-fun e!4402095 () Bool)

(declare-fun tp!2088234 () Bool)

(declare-fun tp!2088230 () Bool)

(assert (=> b!7352086 (= e!4402095 (and tp!2088234 tp!2088230))))

(assert (=> b!7351841 (= tp!2088182 e!4402095)))

(declare-fun b!7352088 () Bool)

(declare-fun tp!2088231 () Bool)

(declare-fun tp!2088233 () Bool)

(assert (=> b!7352088 (= e!4402095 (and tp!2088231 tp!2088233))))

(declare-fun b!7352085 () Bool)

(assert (=> b!7352085 (= e!4402095 tp_is_empty!48589)))

(declare-fun b!7352087 () Bool)

(declare-fun tp!2088232 () Bool)

(assert (=> b!7352087 (= e!4402095 tp!2088232)))

(assert (= (and b!7351841 (is-ElementMatch!19172 (regTwo!38856 r1!2370))) b!7352085))

(assert (= (and b!7351841 (is-Concat!28017 (regTwo!38856 r1!2370))) b!7352086))

(assert (= (and b!7351841 (is-Star!19172 (regTwo!38856 r1!2370))) b!7352087))

(assert (= (and b!7351841 (is-Union!19172 (regTwo!38856 r1!2370))) b!7352088))

(declare-fun b!7352097 () Bool)

(declare-fun e!4402100 () Bool)

(declare-fun tp!2088239 () Bool)

(declare-fun tp!2088240 () Bool)

(assert (=> b!7352097 (= e!4402100 (and tp!2088239 tp!2088240))))

(assert (=> b!7351836 (= tp!2088185 e!4402100)))

(assert (= (and b!7351836 (is-Cons!71544 (exprs!8612 ct2!378))) b!7352097))

(declare-fun b!7352098 () Bool)

(declare-fun e!4402101 () Bool)

(declare-fun tp!2088241 () Bool)

(declare-fun tp!2088242 () Bool)

(assert (=> b!7352098 (= e!4402101 (and tp!2088241 tp!2088242))))

(assert (=> b!7351837 (= tp!2088180 e!4402101)))

(assert (= (and b!7351837 (is-Cons!71544 (exprs!8612 cWitness!61))) b!7352098))

(declare-fun b!7352100 () Bool)

(declare-fun e!4402102 () Bool)

(declare-fun tp!2088247 () Bool)

(declare-fun tp!2088243 () Bool)

(assert (=> b!7352100 (= e!4402102 (and tp!2088247 tp!2088243))))

(assert (=> b!7351849 (= tp!2088184 e!4402102)))

(declare-fun b!7352102 () Bool)

(declare-fun tp!2088244 () Bool)

(declare-fun tp!2088246 () Bool)

(assert (=> b!7352102 (= e!4402102 (and tp!2088244 tp!2088246))))

(declare-fun b!7352099 () Bool)

(assert (=> b!7352099 (= e!4402102 tp_is_empty!48589)))

(declare-fun b!7352101 () Bool)

(declare-fun tp!2088245 () Bool)

(assert (=> b!7352101 (= e!4402102 tp!2088245)))

(assert (= (and b!7351849 (is-ElementMatch!19172 (regOne!38857 r1!2370))) b!7352099))

(assert (= (and b!7351849 (is-Concat!28017 (regOne!38857 r1!2370))) b!7352100))

(assert (= (and b!7351849 (is-Star!19172 (regOne!38857 r1!2370))) b!7352101))

(assert (= (and b!7351849 (is-Union!19172 (regOne!38857 r1!2370))) b!7352102))

(declare-fun b!7352104 () Bool)

(declare-fun e!4402103 () Bool)

(declare-fun tp!2088252 () Bool)

(declare-fun tp!2088248 () Bool)

(assert (=> b!7352104 (= e!4402103 (and tp!2088252 tp!2088248))))

(assert (=> b!7351849 (= tp!2088179 e!4402103)))

(declare-fun b!7352106 () Bool)

(declare-fun tp!2088249 () Bool)

(declare-fun tp!2088251 () Bool)

(assert (=> b!7352106 (= e!4402103 (and tp!2088249 tp!2088251))))

(declare-fun b!7352103 () Bool)

(assert (=> b!7352103 (= e!4402103 tp_is_empty!48589)))

(declare-fun b!7352105 () Bool)

(declare-fun tp!2088250 () Bool)

(assert (=> b!7352105 (= e!4402103 tp!2088250)))

(assert (= (and b!7351849 (is-ElementMatch!19172 (regTwo!38857 r1!2370))) b!7352103))

(assert (= (and b!7351849 (is-Concat!28017 (regTwo!38857 r1!2370))) b!7352104))

(assert (= (and b!7351849 (is-Star!19172 (regTwo!38857 r1!2370))) b!7352105))

(assert (= (and b!7351849 (is-Union!19172 (regTwo!38857 r1!2370))) b!7352106))

(declare-fun b!7352107 () Bool)

(declare-fun e!4402104 () Bool)

(declare-fun tp!2088253 () Bool)

(declare-fun tp!2088254 () Bool)

(assert (=> b!7352107 (= e!4402104 (and tp!2088253 tp!2088254))))

(assert (=> b!7351838 (= tp!2088178 e!4402104)))

(assert (= (and b!7351838 (is-Cons!71544 (exprs!8612 ct1!282))) b!7352107))

(declare-fun b_lambda!284149 () Bool)

(assert (= b_lambda!284147 (or b!7351846 b_lambda!284149)))

(declare-fun bs!1919390 () Bool)

(declare-fun d!2280731 () Bool)

(assert (= bs!1919390 (and d!2280731 b!7351846)))

(assert (=> bs!1919390 (= (dynLambda!29497 lambda!456630 (h!77992 (exprs!8612 cWitness!61))) (validRegex!9768 (h!77992 (exprs!8612 cWitness!61))))))

(declare-fun m!8012910 () Bool)

(assert (=> bs!1919390 m!8012910))

(assert (=> b!7352065 d!2280731))

(push 1)

(assert (not bm!672626))

(assert (not bs!1919390))

(assert (not b!7352104))

(assert (not b!7352008))

(assert (not bm!672601))

(assert (not bm!672615))

(assert (not b!7352107))

(assert (not b!7352100))

(assert (not bm!672612))

(assert (not b_lambda!284149))

(assert (not b!7352087))

(assert (not d!2280707))

(assert (not b!7351939))

(assert (not b!7352047))

(assert (not d!2280715))

(assert (not b!7352097))

(assert (not bm!672629))

(assert (not b!7352101))

(assert (not bm!672611))

(assert (not b!7352021))

(assert (not b!7351998))

(assert (not bm!672577))

(assert (not b!7352046))

(assert (not b!7352051))

(assert (not d!2280705))

(assert (not bm!672584))

(assert (not d!2280703))

(assert (not b!7351928))

(assert (not b!7352020))

(assert (not d!2280727))

(assert (not d!2280721))

(assert (not bm!672587))

(assert (not b!7352083))

(assert (not b!7352079))

(assert (not d!2280689))

(assert (not d!2280723))

(assert (not bm!672581))

(assert (not d!2280711))

(assert tp_is_empty!48589)

(assert (not d!2280725))

(assert (not b!7351989))

(assert (not b!7352042))

(assert (not bm!672583))

(assert (not b!7352086))

(assert (not b!7352082))

(assert (not bm!672578))

(assert (not b!7352084))

(assert (not bm!672603))

(assert (not b!7352098))

(assert (not b!7352088))

(assert (not b!7352078))

(assert (not b!7352106))

(assert (not b!7352066))

(assert (not b!7352050))

(assert (not b!7352102))

(assert (not b!7352105))

(assert (not b!7352080))

(assert (not bm!672600))

(assert (not d!2280713))

(assert (not bm!672604))

(assert (not bm!672625))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


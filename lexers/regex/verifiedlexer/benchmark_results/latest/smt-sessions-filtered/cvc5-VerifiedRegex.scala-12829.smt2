; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708596 () Bool)

(assert start!708596)

(declare-fun b!7265792 () Bool)

(assert (=> b!7265792 true))

(declare-fun b!7265784 () Bool)

(declare-fun res!2945702 () Bool)

(declare-fun e!4357124 () Bool)

(assert (=> b!7265784 (=> res!2945702 e!4357124)))

(declare-datatypes ((C!37806 0))(
  ( (C!37807 (val!28851 Int)) )
))
(declare-datatypes ((Regex!18766 0))(
  ( (ElementMatch!18766 (c!1351938 C!37806)) (Concat!27611 (regOne!38044 Regex!18766) (regTwo!38044 Regex!18766)) (EmptyExpr!18766) (Star!18766 (reg!19095 Regex!18766)) (EmptyLang!18766) (Union!18766 (regOne!38045 Regex!18766) (regTwo!38045 Regex!18766)) )
))
(declare-datatypes ((List!70847 0))(
  ( (Nil!70723) (Cons!70723 (h!77171 Regex!18766) (t!384915 List!70847)) )
))
(declare-datatypes ((Context!15412 0))(
  ( (Context!15413 (exprs!8206 List!70847)) )
))
(declare-fun ct1!250 () Context!15412)

(assert (=> b!7265784 (= res!2945702 (not (is-Cons!70723 (exprs!8206 ct1!250))))))

(declare-fun b!7265785 () Bool)

(declare-fun e!4357129 () Bool)

(declare-fun tp!2040423 () Bool)

(assert (=> b!7265785 (= e!4357129 tp!2040423)))

(declare-fun b!7265786 () Bool)

(declare-fun e!4357128 () Bool)

(declare-fun tp_is_empty!46997 () Bool)

(declare-fun tp!2040422 () Bool)

(assert (=> b!7265786 (= e!4357128 (and tp_is_empty!46997 tp!2040422))))

(declare-fun b!7265787 () Bool)

(declare-fun res!2945703 () Bool)

(declare-fun e!4357125 () Bool)

(assert (=> b!7265787 (=> (not res!2945703) (not e!4357125))))

(declare-fun nullableContext!256 (Context!15412) Bool)

(assert (=> b!7265787 (= res!2945703 (nullableContext!256 ct1!250))))

(declare-fun b!7265788 () Bool)

(declare-fun e!4357130 () Bool)

(declare-fun e!4357126 () Bool)

(assert (=> b!7265788 (= e!4357130 e!4357126)))

(declare-fun res!2945706 () Bool)

(assert (=> b!7265788 (=> res!2945706 e!4357126)))

(declare-fun lt!2592310 () List!70847)

(declare-fun lambda!447414 () Int)

(declare-fun forall!17599 (List!70847 Int) Bool)

(assert (=> b!7265788 (= res!2945706 (not (forall!17599 lt!2592310 lambda!447414)))))

(declare-datatypes ((Unit!164150 0))(
  ( (Unit!164151) )
))
(declare-fun lt!2592311 () Unit!164150)

(declare-fun ct2!346 () Context!15412)

(declare-fun lemmaConcatPreservesForall!1523 (List!70847 List!70847 Int) Unit!164150)

(assert (=> b!7265788 (= lt!2592311 (lemmaConcatPreservesForall!1523 lt!2592310 (exprs!8206 ct2!346) lambda!447414))))

(declare-fun b!7265789 () Bool)

(declare-fun res!2945710 () Bool)

(assert (=> b!7265789 (=> (not res!2945710) (not e!4357125))))

(declare-datatypes ((List!70848 0))(
  ( (Nil!70724) (Cons!70724 (h!77172 C!37806) (t!384916 List!70848)) )
))
(declare-fun s!7854 () List!70848)

(assert (=> b!7265789 (= res!2945710 (is-Cons!70724 s!7854))))

(declare-fun res!2945705 () Bool)

(assert (=> start!708596 (=> (not res!2945705) (not e!4357125))))

(declare-fun matchZipper!3670 ((Set Context!15412) List!70848) Bool)

(assert (=> start!708596 (= res!2945705 (matchZipper!3670 (set.insert ct2!346 (as set.empty (Set Context!15412))) s!7854))))

(assert (=> start!708596 e!4357125))

(declare-fun e!4357127 () Bool)

(declare-fun inv!89926 (Context!15412) Bool)

(assert (=> start!708596 (and (inv!89926 ct2!346) e!4357127)))

(assert (=> start!708596 e!4357128))

(assert (=> start!708596 (and (inv!89926 ct1!250) e!4357129)))

(declare-fun b!7265790 () Bool)

(declare-fun res!2945707 () Bool)

(assert (=> b!7265790 (=> res!2945707 e!4357124)))

(declare-fun isEmpty!40654 (List!70847) Bool)

(assert (=> b!7265790 (= res!2945707 (isEmpty!40654 (exprs!8206 ct1!250)))))

(declare-fun b!7265791 () Bool)

(declare-fun res!2945708 () Bool)

(assert (=> b!7265791 (=> res!2945708 e!4357130)))

(declare-fun lt!2592305 () Context!15412)

(declare-fun lt!2592309 () (Set Context!15412))

(declare-fun derivationStepZipperDown!2700 (Regex!18766 Context!15412 C!37806) (Set Context!15412))

(declare-fun derivationStepZipperUp!2536 (Context!15412 C!37806) (Set Context!15412))

(assert (=> b!7265791 (= res!2945708 (not (= lt!2592309 (set.union (derivationStepZipperDown!2700 (h!77171 (exprs!8206 ct1!250)) lt!2592305 (h!77172 s!7854)) (derivationStepZipperUp!2536 lt!2592305 (h!77172 s!7854))))))))

(assert (=> b!7265792 (= e!4357125 (not e!4357124))))

(declare-fun res!2945704 () Bool)

(assert (=> b!7265792 (=> res!2945704 e!4357124)))

(declare-fun lt!2592306 () (Set Context!15412))

(declare-fun lt!2592304 () (Set Context!15412))

(declare-fun derivationStepZipper!3506 ((Set Context!15412) C!37806) (Set Context!15412))

(assert (=> b!7265792 (= res!2945704 (not (= lt!2592306 (derivationStepZipper!3506 lt!2592304 (h!77172 s!7854)))))))

(declare-fun lt!2592298 () Unit!164150)

(assert (=> b!7265792 (= lt!2592298 (lemmaConcatPreservesForall!1523 (exprs!8206 ct1!250) (exprs!8206 ct2!346) lambda!447414))))

(declare-fun lt!2592301 () Context!15412)

(declare-fun lambda!447415 () Int)

(declare-fun flatMap!2879 ((Set Context!15412) Int) (Set Context!15412))

(assert (=> b!7265792 (= (flatMap!2879 lt!2592304 lambda!447415) (derivationStepZipperUp!2536 lt!2592301 (h!77172 s!7854)))))

(declare-fun lt!2592303 () Unit!164150)

(declare-fun lemmaFlatMapOnSingletonSet!2279 ((Set Context!15412) Context!15412 Int) Unit!164150)

(assert (=> b!7265792 (= lt!2592303 (lemmaFlatMapOnSingletonSet!2279 lt!2592304 lt!2592301 lambda!447415))))

(assert (=> b!7265792 (= lt!2592304 (set.insert lt!2592301 (as set.empty (Set Context!15412))))))

(declare-fun lt!2592299 () Unit!164150)

(assert (=> b!7265792 (= lt!2592299 (lemmaConcatPreservesForall!1523 (exprs!8206 ct1!250) (exprs!8206 ct2!346) lambda!447414))))

(declare-fun lt!2592302 () Unit!164150)

(assert (=> b!7265792 (= lt!2592302 (lemmaConcatPreservesForall!1523 (exprs!8206 ct1!250) (exprs!8206 ct2!346) lambda!447414))))

(declare-fun lt!2592300 () (Set Context!15412))

(assert (=> b!7265792 (= (flatMap!2879 lt!2592300 lambda!447415) (derivationStepZipperUp!2536 ct1!250 (h!77172 s!7854)))))

(declare-fun lt!2592308 () Unit!164150)

(assert (=> b!7265792 (= lt!2592308 (lemmaFlatMapOnSingletonSet!2279 lt!2592300 ct1!250 lambda!447415))))

(assert (=> b!7265792 (= lt!2592300 (set.insert ct1!250 (as set.empty (Set Context!15412))))))

(assert (=> b!7265792 (= lt!2592306 (derivationStepZipperUp!2536 lt!2592301 (h!77172 s!7854)))))

(declare-fun ++!16666 (List!70847 List!70847) List!70847)

(assert (=> b!7265792 (= lt!2592301 (Context!15413 (++!16666 (exprs!8206 ct1!250) (exprs!8206 ct2!346))))))

(declare-fun lt!2592307 () Unit!164150)

(assert (=> b!7265792 (= lt!2592307 (lemmaConcatPreservesForall!1523 (exprs!8206 ct1!250) (exprs!8206 ct2!346) lambda!447414))))

(declare-fun b!7265793 () Bool)

(declare-fun tp!2040421 () Bool)

(assert (=> b!7265793 (= e!4357127 tp!2040421)))

(declare-fun b!7265794 () Bool)

(assert (=> b!7265794 (= e!4357126 (forall!17599 (exprs!8206 ct2!346) lambda!447414))))

(declare-fun b!7265795 () Bool)

(assert (=> b!7265795 (= e!4357124 e!4357130)))

(declare-fun res!2945709 () Bool)

(assert (=> b!7265795 (=> res!2945709 e!4357130)))

(declare-fun nullable!7966 (Regex!18766) Bool)

(assert (=> b!7265795 (= res!2945709 (not (nullable!7966 (h!77171 (exprs!8206 ct1!250)))))))

(assert (=> b!7265795 (= lt!2592309 (derivationStepZipperUp!2536 ct1!250 (h!77172 s!7854)))))

(assert (=> b!7265795 (= lt!2592305 (Context!15413 lt!2592310))))

(declare-fun tail!14442 (List!70847) List!70847)

(assert (=> b!7265795 (= lt!2592310 (tail!14442 (exprs!8206 ct1!250)))))

(assert (= (and start!708596 res!2945705) b!7265787))

(assert (= (and b!7265787 res!2945703) b!7265789))

(assert (= (and b!7265789 res!2945710) b!7265792))

(assert (= (and b!7265792 (not res!2945704)) b!7265784))

(assert (= (and b!7265784 (not res!2945702)) b!7265790))

(assert (= (and b!7265790 (not res!2945707)) b!7265795))

(assert (= (and b!7265795 (not res!2945709)) b!7265791))

(assert (= (and b!7265791 (not res!2945708)) b!7265788))

(assert (= (and b!7265788 (not res!2945706)) b!7265794))

(assert (= start!708596 b!7265793))

(assert (= (and start!708596 (is-Cons!70724 s!7854)) b!7265786))

(assert (= start!708596 b!7265785))

(declare-fun m!7950438 () Bool)

(assert (=> b!7265795 m!7950438))

(declare-fun m!7950440 () Bool)

(assert (=> b!7265795 m!7950440))

(declare-fun m!7950442 () Bool)

(assert (=> b!7265795 m!7950442))

(declare-fun m!7950444 () Bool)

(assert (=> b!7265788 m!7950444))

(declare-fun m!7950446 () Bool)

(assert (=> b!7265788 m!7950446))

(declare-fun m!7950448 () Bool)

(assert (=> b!7265791 m!7950448))

(declare-fun m!7950450 () Bool)

(assert (=> b!7265791 m!7950450))

(declare-fun m!7950452 () Bool)

(assert (=> b!7265790 m!7950452))

(declare-fun m!7950454 () Bool)

(assert (=> b!7265794 m!7950454))

(declare-fun m!7950456 () Bool)

(assert (=> b!7265792 m!7950456))

(declare-fun m!7950458 () Bool)

(assert (=> b!7265792 m!7950458))

(assert (=> b!7265792 m!7950440))

(declare-fun m!7950460 () Bool)

(assert (=> b!7265792 m!7950460))

(declare-fun m!7950462 () Bool)

(assert (=> b!7265792 m!7950462))

(declare-fun m!7950464 () Bool)

(assert (=> b!7265792 m!7950464))

(assert (=> b!7265792 m!7950462))

(declare-fun m!7950466 () Bool)

(assert (=> b!7265792 m!7950466))

(declare-fun m!7950468 () Bool)

(assert (=> b!7265792 m!7950468))

(declare-fun m!7950470 () Bool)

(assert (=> b!7265792 m!7950470))

(assert (=> b!7265792 m!7950462))

(declare-fun m!7950472 () Bool)

(assert (=> b!7265792 m!7950472))

(declare-fun m!7950474 () Bool)

(assert (=> b!7265792 m!7950474))

(assert (=> b!7265792 m!7950462))

(declare-fun m!7950476 () Bool)

(assert (=> b!7265787 m!7950476))

(declare-fun m!7950478 () Bool)

(assert (=> start!708596 m!7950478))

(assert (=> start!708596 m!7950478))

(declare-fun m!7950480 () Bool)

(assert (=> start!708596 m!7950480))

(declare-fun m!7950482 () Bool)

(assert (=> start!708596 m!7950482))

(declare-fun m!7950484 () Bool)

(assert (=> start!708596 m!7950484))

(push 1)

(assert (not b!7265793))

(assert (not b!7265791))

(assert (not b!7265795))

(assert (not b!7265792))

(assert (not b!7265790))

(assert (not b!7265787))

(assert (not b!7265788))

(assert (not start!708596))

(assert (not b!7265794))

(assert (not b!7265785))

(assert tp_is_empty!46997)

(assert (not b!7265786))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun call!662194 () List!70847)

(declare-fun c!1351957 () Bool)

(declare-fun bm!662189 () Bool)

(declare-fun c!1351956 () Bool)

(declare-fun $colon$colon!2947 (List!70847 Regex!18766) List!70847)

(assert (=> bm!662189 (= call!662194 ($colon$colon!2947 (exprs!8206 lt!2592305) (ite (or c!1351957 c!1351956) (regTwo!38044 (h!77171 (exprs!8206 ct1!250))) (h!77171 (exprs!8206 ct1!250)))))))

(declare-fun b!7265858 () Bool)

(declare-fun c!1351955 () Bool)

(assert (=> b!7265858 (= c!1351955 (is-Star!18766 (h!77171 (exprs!8206 ct1!250))))))

(declare-fun e!4357164 () (Set Context!15412))

(declare-fun e!4357165 () (Set Context!15412))

(assert (=> b!7265858 (= e!4357164 e!4357165)))

(declare-fun b!7265859 () Bool)

(declare-fun e!4357167 () (Set Context!15412))

(declare-fun e!4357166 () (Set Context!15412))

(assert (=> b!7265859 (= e!4357167 e!4357166)))

(declare-fun c!1351958 () Bool)

(assert (=> b!7265859 (= c!1351958 (is-Union!18766 (h!77171 (exprs!8206 ct1!250))))))

(declare-fun b!7265860 () Bool)

(declare-fun call!662195 () (Set Context!15412))

(declare-fun call!662197 () (Set Context!15412))

(assert (=> b!7265860 (= e!4357166 (set.union call!662195 call!662197))))

(declare-fun b!7265861 () Bool)

(declare-fun e!4357169 () (Set Context!15412))

(declare-fun call!662196 () (Set Context!15412))

(assert (=> b!7265861 (= e!4357169 (set.union call!662197 call!662196))))

(declare-fun b!7265862 () Bool)

(assert (=> b!7265862 (= e!4357165 (as set.empty (Set Context!15412)))))

(declare-fun bm!662191 () Bool)

(declare-fun call!662198 () List!70847)

(assert (=> bm!662191 (= call!662195 (derivationStepZipperDown!2700 (ite c!1351958 (regOne!38045 (h!77171 (exprs!8206 ct1!250))) (ite c!1351957 (regTwo!38044 (h!77171 (exprs!8206 ct1!250))) (ite c!1351956 (regOne!38044 (h!77171 (exprs!8206 ct1!250))) (reg!19095 (h!77171 (exprs!8206 ct1!250)))))) (ite (or c!1351958 c!1351957) lt!2592305 (Context!15413 call!662198)) (h!77172 s!7854)))))

(declare-fun bm!662192 () Bool)

(assert (=> bm!662192 (= call!662197 (derivationStepZipperDown!2700 (ite c!1351958 (regTwo!38045 (h!77171 (exprs!8206 ct1!250))) (regOne!38044 (h!77171 (exprs!8206 ct1!250)))) (ite c!1351958 lt!2592305 (Context!15413 call!662194)) (h!77172 s!7854)))))

(declare-fun b!7265863 () Bool)

(declare-fun e!4357168 () Bool)

(assert (=> b!7265863 (= c!1351957 e!4357168)))

(declare-fun res!2945740 () Bool)

(assert (=> b!7265863 (=> (not res!2945740) (not e!4357168))))

(assert (=> b!7265863 (= res!2945740 (is-Concat!27611 (h!77171 (exprs!8206 ct1!250))))))

(assert (=> b!7265863 (= e!4357166 e!4357169)))

(declare-fun b!7265864 () Bool)

(declare-fun call!662199 () (Set Context!15412))

(assert (=> b!7265864 (= e!4357165 call!662199)))

(declare-fun d!2260638 () Bool)

(declare-fun c!1351954 () Bool)

(assert (=> d!2260638 (= c!1351954 (and (is-ElementMatch!18766 (h!77171 (exprs!8206 ct1!250))) (= (c!1351938 (h!77171 (exprs!8206 ct1!250))) (h!77172 s!7854))))))

(assert (=> d!2260638 (= (derivationStepZipperDown!2700 (h!77171 (exprs!8206 ct1!250)) lt!2592305 (h!77172 s!7854)) e!4357167)))

(declare-fun bm!662190 () Bool)

(assert (=> bm!662190 (= call!662199 call!662196)))

(declare-fun bm!662193 () Bool)

(assert (=> bm!662193 (= call!662198 call!662194)))

(declare-fun b!7265865 () Bool)

(assert (=> b!7265865 (= e!4357169 e!4357164)))

(assert (=> b!7265865 (= c!1351956 (is-Concat!27611 (h!77171 (exprs!8206 ct1!250))))))

(declare-fun bm!662194 () Bool)

(assert (=> bm!662194 (= call!662196 call!662195)))

(declare-fun b!7265866 () Bool)

(assert (=> b!7265866 (= e!4357167 (set.insert lt!2592305 (as set.empty (Set Context!15412))))))

(declare-fun b!7265867 () Bool)

(assert (=> b!7265867 (= e!4357164 call!662199)))

(declare-fun b!7265868 () Bool)

(assert (=> b!7265868 (= e!4357168 (nullable!7966 (regOne!38044 (h!77171 (exprs!8206 ct1!250)))))))

(assert (= (and d!2260638 c!1351954) b!7265866))

(assert (= (and d!2260638 (not c!1351954)) b!7265859))

(assert (= (and b!7265859 c!1351958) b!7265860))

(assert (= (and b!7265859 (not c!1351958)) b!7265863))

(assert (= (and b!7265863 res!2945740) b!7265868))

(assert (= (and b!7265863 c!1351957) b!7265861))

(assert (= (and b!7265863 (not c!1351957)) b!7265865))

(assert (= (and b!7265865 c!1351956) b!7265867))

(assert (= (and b!7265865 (not c!1351956)) b!7265858))

(assert (= (and b!7265858 c!1351955) b!7265864))

(assert (= (and b!7265858 (not c!1351955)) b!7265862))

(assert (= (or b!7265867 b!7265864) bm!662193))

(assert (= (or b!7265867 b!7265864) bm!662190))

(assert (= (or b!7265861 bm!662193) bm!662189))

(assert (= (or b!7265861 bm!662190) bm!662194))

(assert (= (or b!7265860 bm!662194) bm!662191))

(assert (= (or b!7265860 b!7265861) bm!662192))

(declare-fun m!7950534 () Bool)

(assert (=> b!7265868 m!7950534))

(declare-fun m!7950536 () Bool)

(assert (=> bm!662189 m!7950536))

(declare-fun m!7950538 () Bool)

(assert (=> b!7265866 m!7950538))

(declare-fun m!7950540 () Bool)

(assert (=> bm!662191 m!7950540))

(declare-fun m!7950542 () Bool)

(assert (=> bm!662192 m!7950542))

(assert (=> b!7265791 d!2260638))

(declare-fun b!7265879 () Bool)

(declare-fun e!4357176 () Bool)

(assert (=> b!7265879 (= e!4357176 (nullable!7966 (h!77171 (exprs!8206 lt!2592305))))))

(declare-fun b!7265880 () Bool)

(declare-fun e!4357177 () (Set Context!15412))

(declare-fun call!662202 () (Set Context!15412))

(assert (=> b!7265880 (= e!4357177 (set.union call!662202 (derivationStepZipperUp!2536 (Context!15413 (t!384915 (exprs!8206 lt!2592305))) (h!77172 s!7854))))))

(declare-fun d!2260640 () Bool)

(declare-fun c!1351963 () Bool)

(assert (=> d!2260640 (= c!1351963 e!4357176)))

(declare-fun res!2945743 () Bool)

(assert (=> d!2260640 (=> (not res!2945743) (not e!4357176))))

(assert (=> d!2260640 (= res!2945743 (is-Cons!70723 (exprs!8206 lt!2592305)))))

(assert (=> d!2260640 (= (derivationStepZipperUp!2536 lt!2592305 (h!77172 s!7854)) e!4357177)))

(declare-fun b!7265881 () Bool)

(declare-fun e!4357178 () (Set Context!15412))

(assert (=> b!7265881 (= e!4357177 e!4357178)))

(declare-fun c!1351964 () Bool)

(assert (=> b!7265881 (= c!1351964 (is-Cons!70723 (exprs!8206 lt!2592305)))))

(declare-fun b!7265882 () Bool)

(assert (=> b!7265882 (= e!4357178 call!662202)))

(declare-fun b!7265883 () Bool)

(assert (=> b!7265883 (= e!4357178 (as set.empty (Set Context!15412)))))

(declare-fun bm!662197 () Bool)

(assert (=> bm!662197 (= call!662202 (derivationStepZipperDown!2700 (h!77171 (exprs!8206 lt!2592305)) (Context!15413 (t!384915 (exprs!8206 lt!2592305))) (h!77172 s!7854)))))

(assert (= (and d!2260640 res!2945743) b!7265879))

(assert (= (and d!2260640 c!1351963) b!7265880))

(assert (= (and d!2260640 (not c!1351963)) b!7265881))

(assert (= (and b!7265881 c!1351964) b!7265882))

(assert (= (and b!7265881 (not c!1351964)) b!7265883))

(assert (= (or b!7265880 b!7265882) bm!662197))

(declare-fun m!7950544 () Bool)

(assert (=> b!7265879 m!7950544))

(declare-fun m!7950546 () Bool)

(assert (=> b!7265880 m!7950546))

(declare-fun m!7950548 () Bool)

(assert (=> bm!662197 m!7950548))

(assert (=> b!7265791 d!2260640))

(declare-fun d!2260642 () Bool)

(declare-fun nullableFct!3133 (Regex!18766) Bool)

(assert (=> d!2260642 (= (nullable!7966 (h!77171 (exprs!8206 ct1!250))) (nullableFct!3133 (h!77171 (exprs!8206 ct1!250))))))

(declare-fun bs!1910229 () Bool)

(assert (= bs!1910229 d!2260642))

(declare-fun m!7950550 () Bool)

(assert (=> bs!1910229 m!7950550))

(assert (=> b!7265795 d!2260642))

(declare-fun b!7265884 () Bool)

(declare-fun e!4357179 () Bool)

(assert (=> b!7265884 (= e!4357179 (nullable!7966 (h!77171 (exprs!8206 ct1!250))))))

(declare-fun call!662203 () (Set Context!15412))

(declare-fun e!4357180 () (Set Context!15412))

(declare-fun b!7265885 () Bool)

(assert (=> b!7265885 (= e!4357180 (set.union call!662203 (derivationStepZipperUp!2536 (Context!15413 (t!384915 (exprs!8206 ct1!250))) (h!77172 s!7854))))))

(declare-fun d!2260644 () Bool)

(declare-fun c!1351965 () Bool)

(assert (=> d!2260644 (= c!1351965 e!4357179)))

(declare-fun res!2945744 () Bool)

(assert (=> d!2260644 (=> (not res!2945744) (not e!4357179))))

(assert (=> d!2260644 (= res!2945744 (is-Cons!70723 (exprs!8206 ct1!250)))))

(assert (=> d!2260644 (= (derivationStepZipperUp!2536 ct1!250 (h!77172 s!7854)) e!4357180)))

(declare-fun b!7265886 () Bool)

(declare-fun e!4357181 () (Set Context!15412))

(assert (=> b!7265886 (= e!4357180 e!4357181)))

(declare-fun c!1351966 () Bool)

(assert (=> b!7265886 (= c!1351966 (is-Cons!70723 (exprs!8206 ct1!250)))))

(declare-fun b!7265887 () Bool)

(assert (=> b!7265887 (= e!4357181 call!662203)))

(declare-fun b!7265888 () Bool)

(assert (=> b!7265888 (= e!4357181 (as set.empty (Set Context!15412)))))

(declare-fun bm!662198 () Bool)

(assert (=> bm!662198 (= call!662203 (derivationStepZipperDown!2700 (h!77171 (exprs!8206 ct1!250)) (Context!15413 (t!384915 (exprs!8206 ct1!250))) (h!77172 s!7854)))))

(assert (= (and d!2260644 res!2945744) b!7265884))

(assert (= (and d!2260644 c!1351965) b!7265885))

(assert (= (and d!2260644 (not c!1351965)) b!7265886))

(assert (= (and b!7265886 c!1351966) b!7265887))

(assert (= (and b!7265886 (not c!1351966)) b!7265888))

(assert (= (or b!7265885 b!7265887) bm!662198))

(assert (=> b!7265884 m!7950438))

(declare-fun m!7950552 () Bool)

(assert (=> b!7265885 m!7950552))

(declare-fun m!7950554 () Bool)

(assert (=> bm!662198 m!7950554))

(assert (=> b!7265795 d!2260644))

(declare-fun d!2260646 () Bool)

(assert (=> d!2260646 (= (tail!14442 (exprs!8206 ct1!250)) (t!384915 (exprs!8206 ct1!250)))))

(assert (=> b!7265795 d!2260646))

(declare-fun d!2260648 () Bool)

(assert (=> d!2260648 (= (isEmpty!40654 (exprs!8206 ct1!250)) (is-Nil!70723 (exprs!8206 ct1!250)))))

(assert (=> b!7265790 d!2260648))

(declare-fun d!2260650 () Bool)

(declare-fun res!2945749 () Bool)

(declare-fun e!4357186 () Bool)

(assert (=> d!2260650 (=> res!2945749 e!4357186)))

(assert (=> d!2260650 (= res!2945749 (is-Nil!70723 lt!2592310))))

(assert (=> d!2260650 (= (forall!17599 lt!2592310 lambda!447414) e!4357186)))

(declare-fun b!7265893 () Bool)

(declare-fun e!4357187 () Bool)

(assert (=> b!7265893 (= e!4357186 e!4357187)))

(declare-fun res!2945750 () Bool)

(assert (=> b!7265893 (=> (not res!2945750) (not e!4357187))))

(declare-fun dynLambda!28884 (Int Regex!18766) Bool)

(assert (=> b!7265893 (= res!2945750 (dynLambda!28884 lambda!447414 (h!77171 lt!2592310)))))

(declare-fun b!7265894 () Bool)

(assert (=> b!7265894 (= e!4357187 (forall!17599 (t!384915 lt!2592310) lambda!447414))))

(assert (= (and d!2260650 (not res!2945749)) b!7265893))

(assert (= (and b!7265893 res!2945750) b!7265894))

(declare-fun b_lambda!279757 () Bool)

(assert (=> (not b_lambda!279757) (not b!7265893)))

(declare-fun m!7950556 () Bool)

(assert (=> b!7265893 m!7950556))

(declare-fun m!7950558 () Bool)

(assert (=> b!7265894 m!7950558))

(assert (=> b!7265788 d!2260650))

(declare-fun d!2260652 () Bool)

(assert (=> d!2260652 (forall!17599 (++!16666 lt!2592310 (exprs!8206 ct2!346)) lambda!447414)))

(declare-fun lt!2592356 () Unit!164150)

(declare-fun choose!56311 (List!70847 List!70847 Int) Unit!164150)

(assert (=> d!2260652 (= lt!2592356 (choose!56311 lt!2592310 (exprs!8206 ct2!346) lambda!447414))))

(assert (=> d!2260652 (forall!17599 lt!2592310 lambda!447414)))

(assert (=> d!2260652 (= (lemmaConcatPreservesForall!1523 lt!2592310 (exprs!8206 ct2!346) lambda!447414) lt!2592356)))

(declare-fun bs!1910230 () Bool)

(assert (= bs!1910230 d!2260652))

(declare-fun m!7950560 () Bool)

(assert (=> bs!1910230 m!7950560))

(assert (=> bs!1910230 m!7950560))

(declare-fun m!7950562 () Bool)

(assert (=> bs!1910230 m!7950562))

(declare-fun m!7950564 () Bool)

(assert (=> bs!1910230 m!7950564))

(assert (=> bs!1910230 m!7950444))

(assert (=> b!7265788 d!2260652))

(declare-fun d!2260656 () Bool)

(declare-fun res!2945751 () Bool)

(declare-fun e!4357188 () Bool)

(assert (=> d!2260656 (=> res!2945751 e!4357188)))

(assert (=> d!2260656 (= res!2945751 (is-Nil!70723 (exprs!8206 ct2!346)))))

(assert (=> d!2260656 (= (forall!17599 (exprs!8206 ct2!346) lambda!447414) e!4357188)))

(declare-fun b!7265895 () Bool)

(declare-fun e!4357189 () Bool)

(assert (=> b!7265895 (= e!4357188 e!4357189)))

(declare-fun res!2945752 () Bool)

(assert (=> b!7265895 (=> (not res!2945752) (not e!4357189))))

(assert (=> b!7265895 (= res!2945752 (dynLambda!28884 lambda!447414 (h!77171 (exprs!8206 ct2!346))))))

(declare-fun b!7265896 () Bool)

(assert (=> b!7265896 (= e!4357189 (forall!17599 (t!384915 (exprs!8206 ct2!346)) lambda!447414))))

(assert (= (and d!2260656 (not res!2945751)) b!7265895))

(assert (= (and b!7265895 res!2945752) b!7265896))

(declare-fun b_lambda!279759 () Bool)

(assert (=> (not b_lambda!279759) (not b!7265895)))

(declare-fun m!7950566 () Bool)

(assert (=> b!7265895 m!7950566))

(declare-fun m!7950568 () Bool)

(assert (=> b!7265896 m!7950568))

(assert (=> b!7265794 d!2260656))

(declare-fun d!2260658 () Bool)

(declare-fun dynLambda!28885 (Int Context!15412) (Set Context!15412))

(assert (=> d!2260658 (= (flatMap!2879 lt!2592304 lambda!447415) (dynLambda!28885 lambda!447415 lt!2592301))))

(declare-fun lt!2592359 () Unit!164150)

(declare-fun choose!56312 ((Set Context!15412) Context!15412 Int) Unit!164150)

(assert (=> d!2260658 (= lt!2592359 (choose!56312 lt!2592304 lt!2592301 lambda!447415))))

(assert (=> d!2260658 (= lt!2592304 (set.insert lt!2592301 (as set.empty (Set Context!15412))))))

(assert (=> d!2260658 (= (lemmaFlatMapOnSingletonSet!2279 lt!2592304 lt!2592301 lambda!447415) lt!2592359)))

(declare-fun b_lambda!279761 () Bool)

(assert (=> (not b_lambda!279761) (not d!2260658)))

(declare-fun bs!1910231 () Bool)

(assert (= bs!1910231 d!2260658))

(assert (=> bs!1910231 m!7950464))

(declare-fun m!7950570 () Bool)

(assert (=> bs!1910231 m!7950570))

(declare-fun m!7950572 () Bool)

(assert (=> bs!1910231 m!7950572))

(assert (=> bs!1910231 m!7950468))

(assert (=> b!7265792 d!2260658))

(declare-fun bs!1910232 () Bool)

(declare-fun d!2260660 () Bool)

(assert (= bs!1910232 (and d!2260660 b!7265792)))

(declare-fun lambda!447436 () Int)

(assert (=> bs!1910232 (= lambda!447436 lambda!447415)))

(assert (=> d!2260660 true))

(assert (=> d!2260660 (= (derivationStepZipper!3506 lt!2592304 (h!77172 s!7854)) (flatMap!2879 lt!2592304 lambda!447436))))

(declare-fun bs!1910233 () Bool)

(assert (= bs!1910233 d!2260660))

(declare-fun m!7950578 () Bool)

(assert (=> bs!1910233 m!7950578))

(assert (=> b!7265792 d!2260660))

(declare-fun d!2260664 () Bool)

(declare-fun choose!56313 ((Set Context!15412) Int) (Set Context!15412))

(assert (=> d!2260664 (= (flatMap!2879 lt!2592300 lambda!447415) (choose!56313 lt!2592300 lambda!447415))))

(declare-fun bs!1910234 () Bool)

(assert (= bs!1910234 d!2260664))

(declare-fun m!7950580 () Bool)

(assert (=> bs!1910234 m!7950580))

(assert (=> b!7265792 d!2260664))

(declare-fun d!2260668 () Bool)

(declare-fun e!4357200 () Bool)

(assert (=> d!2260668 e!4357200))

(declare-fun res!2945763 () Bool)

(assert (=> d!2260668 (=> (not res!2945763) (not e!4357200))))

(declare-fun lt!2592362 () List!70847)

(declare-fun content!14750 (List!70847) (Set Regex!18766))

(assert (=> d!2260668 (= res!2945763 (= (content!14750 lt!2592362) (set.union (content!14750 (exprs!8206 ct1!250)) (content!14750 (exprs!8206 ct2!346)))))))

(declare-fun e!4357201 () List!70847)

(assert (=> d!2260668 (= lt!2592362 e!4357201)))

(declare-fun c!1351971 () Bool)

(assert (=> d!2260668 (= c!1351971 (is-Nil!70723 (exprs!8206 ct1!250)))))

(assert (=> d!2260668 (= (++!16666 (exprs!8206 ct1!250) (exprs!8206 ct2!346)) lt!2592362)))

(declare-fun b!7265913 () Bool)

(assert (=> b!7265913 (= e!4357201 (exprs!8206 ct2!346))))

(declare-fun b!7265916 () Bool)

(assert (=> b!7265916 (= e!4357200 (or (not (= (exprs!8206 ct2!346) Nil!70723)) (= lt!2592362 (exprs!8206 ct1!250))))))

(declare-fun b!7265914 () Bool)

(assert (=> b!7265914 (= e!4357201 (Cons!70723 (h!77171 (exprs!8206 ct1!250)) (++!16666 (t!384915 (exprs!8206 ct1!250)) (exprs!8206 ct2!346))))))

(declare-fun b!7265915 () Bool)

(declare-fun res!2945764 () Bool)

(assert (=> b!7265915 (=> (not res!2945764) (not e!4357200))))

(declare-fun size!41798 (List!70847) Int)

(assert (=> b!7265915 (= res!2945764 (= (size!41798 lt!2592362) (+ (size!41798 (exprs!8206 ct1!250)) (size!41798 (exprs!8206 ct2!346)))))))

(assert (= (and d!2260668 c!1351971) b!7265913))

(assert (= (and d!2260668 (not c!1351971)) b!7265914))

(assert (= (and d!2260668 res!2945763) b!7265915))

(assert (= (and b!7265915 res!2945764) b!7265916))

(declare-fun m!7950582 () Bool)

(assert (=> d!2260668 m!7950582))

(declare-fun m!7950584 () Bool)

(assert (=> d!2260668 m!7950584))

(declare-fun m!7950586 () Bool)

(assert (=> d!2260668 m!7950586))

(declare-fun m!7950588 () Bool)

(assert (=> b!7265914 m!7950588))

(declare-fun m!7950590 () Bool)

(assert (=> b!7265915 m!7950590))

(declare-fun m!7950592 () Bool)

(assert (=> b!7265915 m!7950592))

(declare-fun m!7950594 () Bool)

(assert (=> b!7265915 m!7950594))

(assert (=> b!7265792 d!2260668))

(declare-fun d!2260670 () Bool)

(assert (=> d!2260670 (= (flatMap!2879 lt!2592304 lambda!447415) (choose!56313 lt!2592304 lambda!447415))))

(declare-fun bs!1910235 () Bool)

(assert (= bs!1910235 d!2260670))

(declare-fun m!7950596 () Bool)

(assert (=> bs!1910235 m!7950596))

(assert (=> b!7265792 d!2260670))

(declare-fun d!2260672 () Bool)

(assert (=> d!2260672 (forall!17599 (++!16666 (exprs!8206 ct1!250) (exprs!8206 ct2!346)) lambda!447414)))

(declare-fun lt!2592363 () Unit!164150)

(assert (=> d!2260672 (= lt!2592363 (choose!56311 (exprs!8206 ct1!250) (exprs!8206 ct2!346) lambda!447414))))

(assert (=> d!2260672 (forall!17599 (exprs!8206 ct1!250) lambda!447414)))

(assert (=> d!2260672 (= (lemmaConcatPreservesForall!1523 (exprs!8206 ct1!250) (exprs!8206 ct2!346) lambda!447414) lt!2592363)))

(declare-fun bs!1910236 () Bool)

(assert (= bs!1910236 d!2260672))

(assert (=> bs!1910236 m!7950474))

(assert (=> bs!1910236 m!7950474))

(declare-fun m!7950598 () Bool)

(assert (=> bs!1910236 m!7950598))

(declare-fun m!7950600 () Bool)

(assert (=> bs!1910236 m!7950600))

(declare-fun m!7950602 () Bool)

(assert (=> bs!1910236 m!7950602))

(assert (=> b!7265792 d!2260672))

(assert (=> b!7265792 d!2260644))

(declare-fun d!2260674 () Bool)

(assert (=> d!2260674 (= (flatMap!2879 lt!2592300 lambda!447415) (dynLambda!28885 lambda!447415 ct1!250))))

(declare-fun lt!2592364 () Unit!164150)

(assert (=> d!2260674 (= lt!2592364 (choose!56312 lt!2592300 ct1!250 lambda!447415))))

(assert (=> d!2260674 (= lt!2592300 (set.insert ct1!250 (as set.empty (Set Context!15412))))))

(assert (=> d!2260674 (= (lemmaFlatMapOnSingletonSet!2279 lt!2592300 ct1!250 lambda!447415) lt!2592364)))

(declare-fun b_lambda!279765 () Bool)

(assert (=> (not b_lambda!279765) (not d!2260674)))

(declare-fun bs!1910237 () Bool)

(assert (= bs!1910237 d!2260674))

(assert (=> bs!1910237 m!7950466))

(declare-fun m!7950604 () Bool)

(assert (=> bs!1910237 m!7950604))

(declare-fun m!7950606 () Bool)

(assert (=> bs!1910237 m!7950606))

(assert (=> bs!1910237 m!7950472))

(assert (=> b!7265792 d!2260674))

(declare-fun b!7265917 () Bool)

(declare-fun e!4357202 () Bool)

(assert (=> b!7265917 (= e!4357202 (nullable!7966 (h!77171 (exprs!8206 lt!2592301))))))

(declare-fun b!7265918 () Bool)

(declare-fun call!662204 () (Set Context!15412))

(declare-fun e!4357203 () (Set Context!15412))

(assert (=> b!7265918 (= e!4357203 (set.union call!662204 (derivationStepZipperUp!2536 (Context!15413 (t!384915 (exprs!8206 lt!2592301))) (h!77172 s!7854))))))

(declare-fun d!2260676 () Bool)

(declare-fun c!1351972 () Bool)

(assert (=> d!2260676 (= c!1351972 e!4357202)))

(declare-fun res!2945765 () Bool)

(assert (=> d!2260676 (=> (not res!2945765) (not e!4357202))))

(assert (=> d!2260676 (= res!2945765 (is-Cons!70723 (exprs!8206 lt!2592301)))))

(assert (=> d!2260676 (= (derivationStepZipperUp!2536 lt!2592301 (h!77172 s!7854)) e!4357203)))

(declare-fun b!7265919 () Bool)

(declare-fun e!4357204 () (Set Context!15412))

(assert (=> b!7265919 (= e!4357203 e!4357204)))

(declare-fun c!1351973 () Bool)

(assert (=> b!7265919 (= c!1351973 (is-Cons!70723 (exprs!8206 lt!2592301)))))

(declare-fun b!7265920 () Bool)

(assert (=> b!7265920 (= e!4357204 call!662204)))

(declare-fun b!7265921 () Bool)

(assert (=> b!7265921 (= e!4357204 (as set.empty (Set Context!15412)))))

(declare-fun bm!662199 () Bool)

(assert (=> bm!662199 (= call!662204 (derivationStepZipperDown!2700 (h!77171 (exprs!8206 lt!2592301)) (Context!15413 (t!384915 (exprs!8206 lt!2592301))) (h!77172 s!7854)))))

(assert (= (and d!2260676 res!2945765) b!7265917))

(assert (= (and d!2260676 c!1351972) b!7265918))

(assert (= (and d!2260676 (not c!1351972)) b!7265919))

(assert (= (and b!7265919 c!1351973) b!7265920))

(assert (= (and b!7265919 (not c!1351973)) b!7265921))

(assert (= (or b!7265918 b!7265920) bm!662199))

(declare-fun m!7950608 () Bool)

(assert (=> b!7265917 m!7950608))

(declare-fun m!7950610 () Bool)

(assert (=> b!7265918 m!7950610))

(declare-fun m!7950612 () Bool)

(assert (=> bm!662199 m!7950612))

(assert (=> b!7265792 d!2260676))

(declare-fun d!2260678 () Bool)

(declare-fun c!1351979 () Bool)

(declare-fun isEmpty!40656 (List!70848) Bool)

(assert (=> d!2260678 (= c!1351979 (isEmpty!40656 s!7854))))

(declare-fun e!4357210 () Bool)

(assert (=> d!2260678 (= (matchZipper!3670 (set.insert ct2!346 (as set.empty (Set Context!15412))) s!7854) e!4357210)))

(declare-fun b!7265932 () Bool)

(declare-fun nullableZipper!2978 ((Set Context!15412)) Bool)

(assert (=> b!7265932 (= e!4357210 (nullableZipper!2978 (set.insert ct2!346 (as set.empty (Set Context!15412)))))))

(declare-fun b!7265933 () Bool)

(declare-fun head!14977 (List!70848) C!37806)

(declare-fun tail!14444 (List!70848) List!70848)

(assert (=> b!7265933 (= e!4357210 (matchZipper!3670 (derivationStepZipper!3506 (set.insert ct2!346 (as set.empty (Set Context!15412))) (head!14977 s!7854)) (tail!14444 s!7854)))))

(assert (= (and d!2260678 c!1351979) b!7265932))

(assert (= (and d!2260678 (not c!1351979)) b!7265933))

(declare-fun m!7950626 () Bool)

(assert (=> d!2260678 m!7950626))

(assert (=> b!7265932 m!7950478))

(declare-fun m!7950628 () Bool)

(assert (=> b!7265932 m!7950628))

(declare-fun m!7950630 () Bool)

(assert (=> b!7265933 m!7950630))

(assert (=> b!7265933 m!7950478))

(assert (=> b!7265933 m!7950630))

(declare-fun m!7950632 () Bool)

(assert (=> b!7265933 m!7950632))

(declare-fun m!7950634 () Bool)

(assert (=> b!7265933 m!7950634))

(assert (=> b!7265933 m!7950632))

(assert (=> b!7265933 m!7950634))

(declare-fun m!7950636 () Bool)

(assert (=> b!7265933 m!7950636))

(assert (=> start!708596 d!2260678))

(declare-fun bs!1910238 () Bool)

(declare-fun d!2260682 () Bool)

(assert (= bs!1910238 (and d!2260682 b!7265792)))

(declare-fun lambda!447441 () Int)

(assert (=> bs!1910238 (= lambda!447441 lambda!447414)))

(assert (=> d!2260682 (= (inv!89926 ct2!346) (forall!17599 (exprs!8206 ct2!346) lambda!447441))))

(declare-fun bs!1910239 () Bool)

(assert (= bs!1910239 d!2260682))

(declare-fun m!7950638 () Bool)

(assert (=> bs!1910239 m!7950638))

(assert (=> start!708596 d!2260682))

(declare-fun bs!1910240 () Bool)

(declare-fun d!2260684 () Bool)

(assert (= bs!1910240 (and d!2260684 b!7265792)))

(declare-fun lambda!447442 () Int)

(assert (=> bs!1910240 (= lambda!447442 lambda!447414)))

(declare-fun bs!1910241 () Bool)

(assert (= bs!1910241 (and d!2260684 d!2260682)))

(assert (=> bs!1910241 (= lambda!447442 lambda!447441)))

(assert (=> d!2260684 (= (inv!89926 ct1!250) (forall!17599 (exprs!8206 ct1!250) lambda!447442))))

(declare-fun bs!1910242 () Bool)

(assert (= bs!1910242 d!2260684))

(declare-fun m!7950640 () Bool)

(assert (=> bs!1910242 m!7950640))

(assert (=> start!708596 d!2260684))

(declare-fun bs!1910246 () Bool)

(declare-fun d!2260686 () Bool)

(assert (= bs!1910246 (and d!2260686 b!7265792)))

(declare-fun lambda!447447 () Int)

(assert (=> bs!1910246 (not (= lambda!447447 lambda!447414))))

(declare-fun bs!1910247 () Bool)

(assert (= bs!1910247 (and d!2260686 d!2260682)))

(assert (=> bs!1910247 (not (= lambda!447447 lambda!447441))))

(declare-fun bs!1910249 () Bool)

(assert (= bs!1910249 (and d!2260686 d!2260684)))

(assert (=> bs!1910249 (not (= lambda!447447 lambda!447442))))

(assert (=> d!2260686 (= (nullableContext!256 ct1!250) (forall!17599 (exprs!8206 ct1!250) lambda!447447))))

(declare-fun bs!1910250 () Bool)

(assert (= bs!1910250 d!2260686))

(declare-fun m!7950644 () Bool)

(assert (=> bs!1910250 m!7950644))

(assert (=> b!7265787 d!2260686))

(declare-fun b!7265938 () Bool)

(declare-fun e!4357213 () Bool)

(declare-fun tp!2040435 () Bool)

(assert (=> b!7265938 (= e!4357213 (and tp_is_empty!46997 tp!2040435))))

(assert (=> b!7265786 (= tp!2040422 e!4357213)))

(assert (= (and b!7265786 (is-Cons!70724 (t!384916 s!7854))) b!7265938))

(declare-fun b!7265943 () Bool)

(declare-fun e!4357216 () Bool)

(declare-fun tp!2040440 () Bool)

(declare-fun tp!2040441 () Bool)

(assert (=> b!7265943 (= e!4357216 (and tp!2040440 tp!2040441))))

(assert (=> b!7265785 (= tp!2040423 e!4357216)))

(assert (= (and b!7265785 (is-Cons!70723 (exprs!8206 ct1!250))) b!7265943))

(declare-fun b!7265944 () Bool)

(declare-fun e!4357217 () Bool)

(declare-fun tp!2040442 () Bool)

(declare-fun tp!2040443 () Bool)

(assert (=> b!7265944 (= e!4357217 (and tp!2040442 tp!2040443))))

(assert (=> b!7265793 (= tp!2040421 e!4357217)))

(assert (= (and b!7265793 (is-Cons!70723 (exprs!8206 ct2!346))) b!7265944))

(declare-fun b_lambda!279767 () Bool)

(assert (= b_lambda!279757 (or b!7265792 b_lambda!279767)))

(declare-fun bs!1910252 () Bool)

(declare-fun d!2260692 () Bool)

(assert (= bs!1910252 (and d!2260692 b!7265792)))

(declare-fun validRegex!9570 (Regex!18766) Bool)

(assert (=> bs!1910252 (= (dynLambda!28884 lambda!447414 (h!77171 lt!2592310)) (validRegex!9570 (h!77171 lt!2592310)))))

(declare-fun m!7950648 () Bool)

(assert (=> bs!1910252 m!7950648))

(assert (=> b!7265893 d!2260692))

(declare-fun b_lambda!279769 () Bool)

(assert (= b_lambda!279765 (or b!7265792 b_lambda!279769)))

(declare-fun bs!1910253 () Bool)

(declare-fun d!2260694 () Bool)

(assert (= bs!1910253 (and d!2260694 b!7265792)))

(assert (=> bs!1910253 (= (dynLambda!28885 lambda!447415 ct1!250) (derivationStepZipperUp!2536 ct1!250 (h!77172 s!7854)))))

(assert (=> bs!1910253 m!7950440))

(assert (=> d!2260674 d!2260694))

(declare-fun b_lambda!279771 () Bool)

(assert (= b_lambda!279759 (or b!7265792 b_lambda!279771)))

(declare-fun bs!1910254 () Bool)

(declare-fun d!2260696 () Bool)

(assert (= bs!1910254 (and d!2260696 b!7265792)))

(assert (=> bs!1910254 (= (dynLambda!28884 lambda!447414 (h!77171 (exprs!8206 ct2!346))) (validRegex!9570 (h!77171 (exprs!8206 ct2!346))))))

(declare-fun m!7950650 () Bool)

(assert (=> bs!1910254 m!7950650))

(assert (=> b!7265895 d!2260696))

(declare-fun b_lambda!279773 () Bool)

(assert (= b_lambda!279761 (or b!7265792 b_lambda!279773)))

(declare-fun bs!1910255 () Bool)

(declare-fun d!2260698 () Bool)

(assert (= bs!1910255 (and d!2260698 b!7265792)))

(assert (=> bs!1910255 (= (dynLambda!28885 lambda!447415 lt!2592301) (derivationStepZipperUp!2536 lt!2592301 (h!77172 s!7854)))))

(assert (=> bs!1910255 m!7950470))

(assert (=> d!2260658 d!2260698))

(push 1)

(assert (not d!2260668))

(assert (not b!7265914))

(assert (not d!2260682))

(assert (not bs!1910252))

(assert (not bm!662191))

(assert (not d!2260684))

(assert (not b!7265896))

(assert (not d!2260670))

(assert (not bs!1910255))

(assert (not d!2260686))

(assert (not b!7265932))

(assert (not b_lambda!279769))

(assert (not b!7265884))

(assert (not bm!662197))

(assert (not d!2260664))

(assert (not b!7265868))

(assert (not bm!662192))

(assert (not b!7265917))

(assert (not bm!662189))

(assert (not d!2260642))

(assert (not d!2260672))

(assert (not b!7265938))

(assert (not b!7265933))

(assert (not d!2260658))

(assert (not bs!1910254))

(assert (not bm!662199))

(assert (not b_lambda!279767))

(assert (not b!7265915))

(assert (not b!7265944))

(assert (not d!2260652))

(assert (not b!7265885))

(assert tp_is_empty!46997)

(assert (not b_lambda!279771))

(assert (not b!7265894))

(assert (not bs!1910253))

(assert (not b!7265879))

(assert (not d!2260660))

(assert (not d!2260674))

(assert (not bm!662198))

(assert (not b!7265880))

(assert (not b!7265918))

(assert (not b_lambda!279773))

(assert (not b!7265943))

(assert (not d!2260678))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


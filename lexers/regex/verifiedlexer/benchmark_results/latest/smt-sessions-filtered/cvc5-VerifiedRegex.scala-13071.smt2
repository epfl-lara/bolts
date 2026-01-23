; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715660 () Bool)

(assert start!715660)

(declare-fun b!7329589 () Bool)

(declare-fun e!4388886 () Bool)

(declare-fun tp!2081142 () Bool)

(assert (=> b!7329589 (= e!4388886 tp!2081142)))

(declare-fun b!7329588 () Bool)

(declare-fun e!4388885 () Bool)

(declare-fun tp!2081141 () Bool)

(assert (=> b!7329588 (= e!4388885 tp!2081141)))

(declare-fun b!7329586 () Bool)

(declare-fun e!4388884 () Bool)

(declare-datatypes ((C!38334 0))(
  ( (C!38335 (val!29527 Int)) )
))
(declare-datatypes ((Regex!19030 0))(
  ( (ElementMatch!19030 (c!1360792 C!38334)) (Concat!27875 (regOne!38572 Regex!19030) (regTwo!38572 Regex!19030)) (EmptyExpr!19030) (Star!19030 (reg!19359 Regex!19030)) (EmptyLang!19030) (Union!19030 (regOne!38573 Regex!19030) (regTwo!38573 Regex!19030)) )
))
(declare-datatypes ((List!71526 0))(
  ( (Nil!71402) (Cons!71402 (h!77850 Regex!19030) (t!385913 List!71526)) )
))
(declare-datatypes ((Context!15940 0))(
  ( (Context!15941 (exprs!8470 List!71526)) )
))
(declare-fun ct1!256 () Context!15940)

(declare-fun ct2!352 () Context!15940)

(declare-fun inv!90916 (Context!15940) Bool)

(declare-fun ++!16852 (List!71526 List!71526) List!71526)

(assert (=> b!7329586 (= e!4388884 (not (inv!90916 (Context!15941 (++!16852 (exprs!8470 ct1!256) (exprs!8470 ct2!352))))))))

(declare-fun lambda!454508 () Int)

(declare-datatypes ((Unit!165021 0))(
  ( (Unit!165022) )
))
(declare-fun lt!2607331 () Unit!165021)

(declare-fun lemmaConcatPreservesForall!1709 (List!71526 List!71526 Int) Unit!165021)

(assert (=> b!7329586 (= lt!2607331 (lemmaConcatPreservesForall!1709 (exprs!8470 ct1!256) (exprs!8470 ct2!352) lambda!454508))))

(declare-fun b!7329587 () Bool)

(declare-fun e!4388887 () Bool)

(declare-fun tp!2081140 () Bool)

(assert (=> b!7329587 (= e!4388887 tp!2081140)))

(declare-fun res!2962299 () Bool)

(assert (=> start!715660 (=> (not res!2962299) (not e!4388884))))

(declare-fun c!10305 () C!38334)

(declare-fun cWitness!35 () Context!15940)

(declare-fun derivationStepZipperUp!2710 (Context!15940 C!38334) (Set Context!15940))

(assert (=> start!715660 (= res!2962299 (set.member cWitness!35 (derivationStepZipperUp!2710 ct1!256 c!10305)))))

(assert (=> start!715660 e!4388884))

(assert (=> start!715660 (and (inv!90916 cWitness!35) e!4388887)))

(assert (=> start!715660 (and (inv!90916 ct1!256) e!4388885)))

(declare-fun tp_is_empty!48305 () Bool)

(assert (=> start!715660 tp_is_empty!48305))

(assert (=> start!715660 (and (inv!90916 ct2!352) e!4388886)))

(assert (= (and start!715660 res!2962299) b!7329586))

(assert (= start!715660 b!7329587))

(assert (= start!715660 b!7329588))

(assert (= start!715660 b!7329589))

(declare-fun m!7995578 () Bool)

(assert (=> b!7329586 m!7995578))

(declare-fun m!7995580 () Bool)

(assert (=> b!7329586 m!7995580))

(declare-fun m!7995582 () Bool)

(assert (=> b!7329586 m!7995582))

(declare-fun m!7995584 () Bool)

(assert (=> start!715660 m!7995584))

(declare-fun m!7995586 () Bool)

(assert (=> start!715660 m!7995586))

(declare-fun m!7995588 () Bool)

(assert (=> start!715660 m!7995588))

(declare-fun m!7995590 () Bool)

(assert (=> start!715660 m!7995590))

(declare-fun m!7995592 () Bool)

(assert (=> start!715660 m!7995592))

(push 1)

(assert (not start!715660))

(assert (not b!7329586))

(assert (not b!7329588))

(assert (not b!7329589))

(assert (not b!7329587))

(assert tp_is_empty!48305)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!667513 () Bool)

(declare-fun call!667518 () (Set Context!15940))

(declare-fun derivationStepZipperDown!2858 (Regex!19030 Context!15940 C!38334) (Set Context!15940))

(assert (=> bm!667513 (= call!667518 (derivationStepZipperDown!2858 (h!77850 (exprs!8470 ct1!256)) (Context!15941 (t!385913 (exprs!8470 ct1!256))) c!10305))))

(declare-fun e!4388908 () (Set Context!15940))

(declare-fun b!7329612 () Bool)

(assert (=> b!7329612 (= e!4388908 (set.union call!667518 (derivationStepZipperUp!2710 (Context!15941 (t!385913 (exprs!8470 ct1!256))) c!10305)))))

(declare-fun b!7329613 () Bool)

(declare-fun e!4388906 () (Set Context!15940))

(assert (=> b!7329613 (= e!4388906 (as set.empty (Set Context!15940)))))

(declare-fun b!7329615 () Bool)

(assert (=> b!7329615 (= e!4388906 call!667518)))

(declare-fun b!7329616 () Bool)

(assert (=> b!7329616 (= e!4388908 e!4388906)))

(declare-fun c!1360799 () Bool)

(assert (=> b!7329616 (= c!1360799 (is-Cons!71402 (exprs!8470 ct1!256)))))

(declare-fun b!7329614 () Bool)

(declare-fun e!4388907 () Bool)

(declare-fun nullable!8131 (Regex!19030) Bool)

(assert (=> b!7329614 (= e!4388907 (nullable!8131 (h!77850 (exprs!8470 ct1!256))))))

(declare-fun d!2276104 () Bool)

(declare-fun c!1360798 () Bool)

(assert (=> d!2276104 (= c!1360798 e!4388907)))

(declare-fun res!2962305 () Bool)

(assert (=> d!2276104 (=> (not res!2962305) (not e!4388907))))

(assert (=> d!2276104 (= res!2962305 (is-Cons!71402 (exprs!8470 ct1!256)))))

(assert (=> d!2276104 (= (derivationStepZipperUp!2710 ct1!256 c!10305) e!4388908)))

(assert (= (and d!2276104 res!2962305) b!7329614))

(assert (= (and d!2276104 c!1360798) b!7329612))

(assert (= (and d!2276104 (not c!1360798)) b!7329616))

(assert (= (and b!7329616 c!1360799) b!7329615))

(assert (= (and b!7329616 (not c!1360799)) b!7329613))

(assert (= (or b!7329612 b!7329615) bm!667513))

(declare-fun m!7995610 () Bool)

(assert (=> bm!667513 m!7995610))

(declare-fun m!7995612 () Bool)

(assert (=> b!7329612 m!7995612))

(declare-fun m!7995614 () Bool)

(assert (=> b!7329614 m!7995614))

(assert (=> start!715660 d!2276104))

(declare-fun bs!1917147 () Bool)

(declare-fun d!2276108 () Bool)

(assert (= bs!1917147 (and d!2276108 b!7329586)))

(declare-fun lambda!454514 () Int)

(assert (=> bs!1917147 (= lambda!454514 lambda!454508)))

(declare-fun forall!17872 (List!71526 Int) Bool)

(assert (=> d!2276108 (= (inv!90916 cWitness!35) (forall!17872 (exprs!8470 cWitness!35) lambda!454514))))

(declare-fun bs!1917148 () Bool)

(assert (= bs!1917148 d!2276108))

(declare-fun m!7995616 () Bool)

(assert (=> bs!1917148 m!7995616))

(assert (=> start!715660 d!2276108))

(declare-fun bs!1917149 () Bool)

(declare-fun d!2276110 () Bool)

(assert (= bs!1917149 (and d!2276110 b!7329586)))

(declare-fun lambda!454517 () Int)

(assert (=> bs!1917149 (= lambda!454517 lambda!454508)))

(declare-fun bs!1917150 () Bool)

(assert (= bs!1917150 (and d!2276110 d!2276108)))

(assert (=> bs!1917150 (= lambda!454517 lambda!454514)))

(assert (=> d!2276110 (= (inv!90916 ct1!256) (forall!17872 (exprs!8470 ct1!256) lambda!454517))))

(declare-fun bs!1917151 () Bool)

(assert (= bs!1917151 d!2276110))

(declare-fun m!7995618 () Bool)

(assert (=> bs!1917151 m!7995618))

(assert (=> start!715660 d!2276110))

(declare-fun bs!1917152 () Bool)

(declare-fun d!2276112 () Bool)

(assert (= bs!1917152 (and d!2276112 b!7329586)))

(declare-fun lambda!454518 () Int)

(assert (=> bs!1917152 (= lambda!454518 lambda!454508)))

(declare-fun bs!1917153 () Bool)

(assert (= bs!1917153 (and d!2276112 d!2276108)))

(assert (=> bs!1917153 (= lambda!454518 lambda!454514)))

(declare-fun bs!1917154 () Bool)

(assert (= bs!1917154 (and d!2276112 d!2276110)))

(assert (=> bs!1917154 (= lambda!454518 lambda!454517)))

(assert (=> d!2276112 (= (inv!90916 ct2!352) (forall!17872 (exprs!8470 ct2!352) lambda!454518))))

(declare-fun bs!1917155 () Bool)

(assert (= bs!1917155 d!2276112))

(declare-fun m!7995620 () Bool)

(assert (=> bs!1917155 m!7995620))

(assert (=> start!715660 d!2276112))

(declare-fun bs!1917156 () Bool)

(declare-fun d!2276114 () Bool)

(assert (= bs!1917156 (and d!2276114 b!7329586)))

(declare-fun lambda!454519 () Int)

(assert (=> bs!1917156 (= lambda!454519 lambda!454508)))

(declare-fun bs!1917157 () Bool)

(assert (= bs!1917157 (and d!2276114 d!2276108)))

(assert (=> bs!1917157 (= lambda!454519 lambda!454514)))

(declare-fun bs!1917158 () Bool)

(assert (= bs!1917158 (and d!2276114 d!2276110)))

(assert (=> bs!1917158 (= lambda!454519 lambda!454517)))

(declare-fun bs!1917159 () Bool)

(assert (= bs!1917159 (and d!2276114 d!2276112)))

(assert (=> bs!1917159 (= lambda!454519 lambda!454518)))

(assert (=> d!2276114 (= (inv!90916 (Context!15941 (++!16852 (exprs!8470 ct1!256) (exprs!8470 ct2!352)))) (forall!17872 (exprs!8470 (Context!15941 (++!16852 (exprs!8470 ct1!256) (exprs!8470 ct2!352)))) lambda!454519))))

(declare-fun bs!1917160 () Bool)

(assert (= bs!1917160 d!2276114))

(declare-fun m!7995622 () Bool)

(assert (=> bs!1917160 m!7995622))

(assert (=> b!7329586 d!2276114))

(declare-fun b!7329627 () Bool)

(declare-fun res!2962310 () Bool)

(declare-fun e!4388913 () Bool)

(assert (=> b!7329627 (=> (not res!2962310) (not e!4388913))))

(declare-fun lt!2607337 () List!71526)

(declare-fun size!41942 (List!71526) Int)

(assert (=> b!7329627 (= res!2962310 (= (size!41942 lt!2607337) (+ (size!41942 (exprs!8470 ct1!256)) (size!41942 (exprs!8470 ct2!352)))))))

(declare-fun d!2276116 () Bool)

(assert (=> d!2276116 e!4388913))

(declare-fun res!2962311 () Bool)

(assert (=> d!2276116 (=> (not res!2962311) (not e!4388913))))

(declare-fun content!14963 (List!71526) (Set Regex!19030))

(assert (=> d!2276116 (= res!2962311 (= (content!14963 lt!2607337) (set.union (content!14963 (exprs!8470 ct1!256)) (content!14963 (exprs!8470 ct2!352)))))))

(declare-fun e!4388914 () List!71526)

(assert (=> d!2276116 (= lt!2607337 e!4388914)))

(declare-fun c!1360802 () Bool)

(assert (=> d!2276116 (= c!1360802 (is-Nil!71402 (exprs!8470 ct1!256)))))

(assert (=> d!2276116 (= (++!16852 (exprs!8470 ct1!256) (exprs!8470 ct2!352)) lt!2607337)))

(declare-fun b!7329625 () Bool)

(assert (=> b!7329625 (= e!4388914 (exprs!8470 ct2!352))))

(declare-fun b!7329628 () Bool)

(assert (=> b!7329628 (= e!4388913 (or (not (= (exprs!8470 ct2!352) Nil!71402)) (= lt!2607337 (exprs!8470 ct1!256))))))

(declare-fun b!7329626 () Bool)

(assert (=> b!7329626 (= e!4388914 (Cons!71402 (h!77850 (exprs!8470 ct1!256)) (++!16852 (t!385913 (exprs!8470 ct1!256)) (exprs!8470 ct2!352))))))

(assert (= (and d!2276116 c!1360802) b!7329625))

(assert (= (and d!2276116 (not c!1360802)) b!7329626))

(assert (= (and d!2276116 res!2962311) b!7329627))

(assert (= (and b!7329627 res!2962310) b!7329628))

(declare-fun m!7995626 () Bool)

(assert (=> b!7329627 m!7995626))

(declare-fun m!7995628 () Bool)

(assert (=> b!7329627 m!7995628))

(declare-fun m!7995630 () Bool)

(assert (=> b!7329627 m!7995630))

(declare-fun m!7995632 () Bool)

(assert (=> d!2276116 m!7995632))

(declare-fun m!7995634 () Bool)

(assert (=> d!2276116 m!7995634))

(declare-fun m!7995636 () Bool)

(assert (=> d!2276116 m!7995636))

(declare-fun m!7995638 () Bool)

(assert (=> b!7329626 m!7995638))

(assert (=> b!7329586 d!2276116))

(declare-fun d!2276120 () Bool)

(assert (=> d!2276120 (forall!17872 (++!16852 (exprs!8470 ct1!256) (exprs!8470 ct2!352)) lambda!454508)))

(declare-fun lt!2607340 () Unit!165021)

(declare-fun choose!57009 (List!71526 List!71526 Int) Unit!165021)

(assert (=> d!2276120 (= lt!2607340 (choose!57009 (exprs!8470 ct1!256) (exprs!8470 ct2!352) lambda!454508))))

(assert (=> d!2276120 (forall!17872 (exprs!8470 ct1!256) lambda!454508)))

(assert (=> d!2276120 (= (lemmaConcatPreservesForall!1709 (exprs!8470 ct1!256) (exprs!8470 ct2!352) lambda!454508) lt!2607340)))

(declare-fun bs!1917163 () Bool)

(assert (= bs!1917163 d!2276120))

(assert (=> bs!1917163 m!7995578))

(assert (=> bs!1917163 m!7995578))

(declare-fun m!7995640 () Bool)

(assert (=> bs!1917163 m!7995640))

(declare-fun m!7995642 () Bool)

(assert (=> bs!1917163 m!7995642))

(declare-fun m!7995644 () Bool)

(assert (=> bs!1917163 m!7995644))

(assert (=> b!7329586 d!2276120))

(declare-fun b!7329637 () Bool)

(declare-fun e!4388919 () Bool)

(declare-fun tp!2081156 () Bool)

(declare-fun tp!2081157 () Bool)

(assert (=> b!7329637 (= e!4388919 (and tp!2081156 tp!2081157))))

(assert (=> b!7329589 (= tp!2081142 e!4388919)))

(assert (= (and b!7329589 (is-Cons!71402 (exprs!8470 ct2!352))) b!7329637))

(declare-fun b!7329638 () Bool)

(declare-fun e!4388920 () Bool)

(declare-fun tp!2081158 () Bool)

(declare-fun tp!2081159 () Bool)

(assert (=> b!7329638 (= e!4388920 (and tp!2081158 tp!2081159))))

(assert (=> b!7329587 (= tp!2081140 e!4388920)))

(assert (= (and b!7329587 (is-Cons!71402 (exprs!8470 cWitness!35))) b!7329638))

(declare-fun b!7329639 () Bool)

(declare-fun e!4388923 () Bool)

(declare-fun tp!2081160 () Bool)

(declare-fun tp!2081161 () Bool)

(assert (=> b!7329639 (= e!4388923 (and tp!2081160 tp!2081161))))

(assert (=> b!7329588 (= tp!2081141 e!4388923)))

(assert (= (and b!7329588 (is-Cons!71402 (exprs!8470 ct1!256))) b!7329639))

(push 1)

(assert (not d!2276116))

(assert (not d!2276112))

(assert (not d!2276120))

(assert (not b!7329626))

(assert (not b!7329627))

(assert tp_is_empty!48305)

(assert (not bm!667513))

(assert (not b!7329614))

(assert (not d!2276110))

(assert (not b!7329612))

(assert (not b!7329638))

(assert (not d!2276114))

(assert (not b!7329639))

(assert (not b!7329637))

(assert (not d!2276108))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714472 () Bool)

(assert start!714472)

(declare-fun res!2959691 () Bool)

(declare-fun e!4384031 () Bool)

(assert (=> start!714472 (=> (not res!2959691) (not e!4384031))))

(declare-datatypes ((C!38194 0))(
  ( (C!38195 (val!29457 Int)) )
))
(declare-fun c!10305 () C!38194)

(declare-datatypes ((Regex!18960 0))(
  ( (ElementMatch!18960 (c!1358807 C!38194)) (Concat!27805 (regOne!38432 Regex!18960) (regTwo!38432 Regex!18960)) (EmptyExpr!18960) (Star!18960 (reg!19289 Regex!18960)) (EmptyLang!18960) (Union!18960 (regOne!38433 Regex!18960) (regTwo!38433 Regex!18960)) )
))
(declare-datatypes ((List!71456 0))(
  ( (Nil!71332) (Cons!71332 (h!77780 Regex!18960) (t!385839 List!71456)) )
))
(declare-datatypes ((Context!15800 0))(
  ( (Context!15801 (exprs!8400 List!71456)) )
))
(declare-fun cWitness!35 () Context!15800)

(declare-fun ct1!256 () Context!15800)

(declare-fun derivationStepZipperUp!2640 (Context!15800 C!38194) (Set Context!15800))

(assert (=> start!714472 (= res!2959691 (set.member cWitness!35 (derivationStepZipperUp!2640 ct1!256 c!10305)))))

(assert (=> start!714472 e!4384031))

(declare-fun e!4384030 () Bool)

(declare-fun inv!90741 (Context!15800) Bool)

(assert (=> start!714472 (and (inv!90741 cWitness!35) e!4384030)))

(declare-fun e!4384032 () Bool)

(assert (=> start!714472 (and (inv!90741 ct1!256) e!4384032)))

(declare-fun tp_is_empty!48165 () Bool)

(assert (=> start!714472 tp_is_empty!48165))

(declare-fun b!7322064 () Bool)

(declare-fun lambda!453561 () Int)

(declare-fun forall!17818 (List!71456 Int) Bool)

(assert (=> b!7322064 (= e!4384031 (not (forall!17818 (exprs!8400 ct1!256) lambda!453561)))))

(declare-fun b!7322065 () Bool)

(declare-fun tp!2079782 () Bool)

(assert (=> b!7322065 (= e!4384030 tp!2079782)))

(declare-fun b!7322066 () Bool)

(declare-fun tp!2079783 () Bool)

(assert (=> b!7322066 (= e!4384032 tp!2079783)))

(assert (= (and start!714472 res!2959691) b!7322064))

(assert (= start!714472 b!7322065))

(assert (= start!714472 b!7322066))

(declare-fun m!7987646 () Bool)

(assert (=> start!714472 m!7987646))

(declare-fun m!7987648 () Bool)

(assert (=> start!714472 m!7987648))

(declare-fun m!7987650 () Bool)

(assert (=> start!714472 m!7987650))

(declare-fun m!7987652 () Bool)

(assert (=> start!714472 m!7987652))

(declare-fun m!7987654 () Bool)

(assert (=> b!7322064 m!7987654))

(push 1)

(assert (not b!7322064))

(assert tp_is_empty!48165)

(assert (not start!714472))

(assert (not b!7322066))

(assert (not b!7322065))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7322086 () Bool)

(declare-fun e!4384049 () (Set Context!15800))

(assert (=> b!7322086 (= e!4384049 (as set.empty (Set Context!15800)))))

(declare-fun bm!665901 () Bool)

(declare-fun call!665906 () (Set Context!15800))

(declare-fun derivationStepZipperDown!2794 (Regex!18960 Context!15800 C!38194) (Set Context!15800))

(assert (=> bm!665901 (= call!665906 (derivationStepZipperDown!2794 (h!77780 (exprs!8400 ct1!256)) (Context!15801 (t!385839 (exprs!8400 ct1!256))) c!10305))))

(declare-fun d!2273797 () Bool)

(declare-fun c!1358813 () Bool)

(declare-fun e!4384048 () Bool)

(assert (=> d!2273797 (= c!1358813 e!4384048)))

(declare-fun res!2959697 () Bool)

(assert (=> d!2273797 (=> (not res!2959697) (not e!4384048))))

(assert (=> d!2273797 (= res!2959697 (is-Cons!71332 (exprs!8400 ct1!256)))))

(declare-fun e!4384050 () (Set Context!15800))

(assert (=> d!2273797 (= (derivationStepZipperUp!2640 ct1!256 c!10305) e!4384050)))

(declare-fun b!7322087 () Bool)

(assert (=> b!7322087 (= e!4384050 (set.union call!665906 (derivationStepZipperUp!2640 (Context!15801 (t!385839 (exprs!8400 ct1!256))) c!10305)))))

(declare-fun b!7322088 () Bool)

(declare-fun nullable!8067 (Regex!18960) Bool)

(assert (=> b!7322088 (= e!4384048 (nullable!8067 (h!77780 (exprs!8400 ct1!256))))))

(declare-fun b!7322089 () Bool)

(assert (=> b!7322089 (= e!4384050 e!4384049)))

(declare-fun c!1358814 () Bool)

(assert (=> b!7322089 (= c!1358814 (is-Cons!71332 (exprs!8400 ct1!256)))))

(declare-fun b!7322090 () Bool)

(assert (=> b!7322090 (= e!4384049 call!665906)))

(assert (= (and d!2273797 res!2959697) b!7322088))

(assert (= (and d!2273797 c!1358813) b!7322087))

(assert (= (and d!2273797 (not c!1358813)) b!7322089))

(assert (= (and b!7322089 c!1358814) b!7322090))

(assert (= (and b!7322089 (not c!1358814)) b!7322086))

(assert (= (or b!7322087 b!7322090) bm!665901))

(declare-fun m!7987666 () Bool)

(assert (=> bm!665901 m!7987666))

(declare-fun m!7987668 () Bool)

(assert (=> b!7322087 m!7987668))

(declare-fun m!7987670 () Bool)

(assert (=> b!7322088 m!7987670))

(assert (=> start!714472 d!2273797))

(declare-fun bs!1916139 () Bool)

(declare-fun d!2273799 () Bool)

(assert (= bs!1916139 (and d!2273799 b!7322064)))

(declare-fun lambda!453567 () Int)

(assert (=> bs!1916139 (= lambda!453567 lambda!453561)))

(assert (=> d!2273799 (= (inv!90741 cWitness!35) (forall!17818 (exprs!8400 cWitness!35) lambda!453567))))

(declare-fun bs!1916140 () Bool)

(assert (= bs!1916140 d!2273799))

(declare-fun m!7987672 () Bool)

(assert (=> bs!1916140 m!7987672))

(assert (=> start!714472 d!2273799))

(declare-fun bs!1916141 () Bool)

(declare-fun d!2273801 () Bool)

(assert (= bs!1916141 (and d!2273801 b!7322064)))

(declare-fun lambda!453568 () Int)

(assert (=> bs!1916141 (= lambda!453568 lambda!453561)))

(declare-fun bs!1916142 () Bool)

(assert (= bs!1916142 (and d!2273801 d!2273799)))

(assert (=> bs!1916142 (= lambda!453568 lambda!453567)))

(assert (=> d!2273801 (= (inv!90741 ct1!256) (forall!17818 (exprs!8400 ct1!256) lambda!453568))))

(declare-fun bs!1916143 () Bool)

(assert (= bs!1916143 d!2273801))

(declare-fun m!7987674 () Bool)

(assert (=> bs!1916143 m!7987674))

(assert (=> start!714472 d!2273801))

(declare-fun d!2273805 () Bool)

(declare-fun res!2959702 () Bool)

(declare-fun e!4384055 () Bool)

(assert (=> d!2273805 (=> res!2959702 e!4384055)))

(assert (=> d!2273805 (= res!2959702 (is-Nil!71332 (exprs!8400 ct1!256)))))

(assert (=> d!2273805 (= (forall!17818 (exprs!8400 ct1!256) lambda!453561) e!4384055)))

(declare-fun b!7322095 () Bool)

(declare-fun e!4384056 () Bool)

(assert (=> b!7322095 (= e!4384055 e!4384056)))

(declare-fun res!2959703 () Bool)

(assert (=> b!7322095 (=> (not res!2959703) (not e!4384056))))

(declare-fun dynLambda!29385 (Int Regex!18960) Bool)

(assert (=> b!7322095 (= res!2959703 (dynLambda!29385 lambda!453561 (h!77780 (exprs!8400 ct1!256))))))

(declare-fun b!7322096 () Bool)

(assert (=> b!7322096 (= e!4384056 (forall!17818 (t!385839 (exprs!8400 ct1!256)) lambda!453561))))

(assert (= (and d!2273805 (not res!2959702)) b!7322095))

(assert (= (and b!7322095 res!2959703) b!7322096))

(declare-fun b_lambda!283135 () Bool)

(assert (=> (not b_lambda!283135) (not b!7322095)))

(declare-fun m!7987676 () Bool)

(assert (=> b!7322095 m!7987676))

(declare-fun m!7987678 () Bool)

(assert (=> b!7322096 m!7987678))

(assert (=> b!7322064 d!2273805))

(declare-fun b!7322101 () Bool)

(declare-fun e!4384059 () Bool)

(declare-fun tp!2079794 () Bool)

(declare-fun tp!2079795 () Bool)

(assert (=> b!7322101 (= e!4384059 (and tp!2079794 tp!2079795))))

(assert (=> b!7322066 (= tp!2079783 e!4384059)))

(assert (= (and b!7322066 (is-Cons!71332 (exprs!8400 ct1!256))) b!7322101))

(declare-fun b!7322102 () Bool)

(declare-fun e!4384060 () Bool)

(declare-fun tp!2079796 () Bool)

(declare-fun tp!2079797 () Bool)

(assert (=> b!7322102 (= e!4384060 (and tp!2079796 tp!2079797))))

(assert (=> b!7322065 (= tp!2079782 e!4384060)))

(assert (= (and b!7322065 (is-Cons!71332 (exprs!8400 cWitness!35))) b!7322102))

(declare-fun b_lambda!283137 () Bool)

(assert (= b_lambda!283135 (or b!7322064 b_lambda!283137)))

(declare-fun bs!1916144 () Bool)

(declare-fun d!2273807 () Bool)

(assert (= bs!1916144 (and d!2273807 b!7322064)))

(declare-fun validRegex!9615 (Regex!18960) Bool)

(assert (=> bs!1916144 (= (dynLambda!29385 lambda!453561 (h!77780 (exprs!8400 ct1!256))) (validRegex!9615 (h!77780 (exprs!8400 ct1!256))))))

(declare-fun m!7987680 () Bool)

(assert (=> bs!1916144 m!7987680))

(assert (=> b!7322095 d!2273807))

(push 1)

(assert (not bm!665901))

(assert (not d!2273801))

(assert (not b!7322088))

(assert tp_is_empty!48165)

(assert (not bs!1916144))

(assert (not b_lambda!283137))

(assert (not b!7322101))

(assert (not b!7322096))

(assert (not d!2273799))

(assert (not b!7322102))

(assert (not b!7322087))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


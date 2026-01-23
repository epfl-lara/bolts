; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714488 () Bool)

(assert start!714488)

(declare-fun b!7322140 () Bool)

(declare-fun e!4384093 () Bool)

(declare-fun e!4384091 () Bool)

(assert (=> b!7322140 (= e!4384093 e!4384091)))

(declare-fun res!2959718 () Bool)

(assert (=> b!7322140 (=> (not res!2959718) (not e!4384091))))

(declare-datatypes ((C!38198 0))(
  ( (C!38199 (val!29459 Int)) )
))
(declare-datatypes ((Regex!18962 0))(
  ( (ElementMatch!18962 (c!1358821 C!38198)) (Concat!27807 (regOne!38436 Regex!18962) (regTwo!38436 Regex!18962)) (EmptyExpr!18962) (Star!18962 (reg!19291 Regex!18962)) (EmptyLang!18962) (Union!18962 (regOne!38437 Regex!18962) (regTwo!38437 Regex!18962)) )
))
(declare-datatypes ((List!71458 0))(
  ( (Nil!71334) (Cons!71334 (h!77782 Regex!18962) (t!385841 List!71458)) )
))
(declare-datatypes ((Context!15804 0))(
  ( (Context!15805 (exprs!8402 List!71458)) )
))
(declare-fun ct1!256 () Context!15804)

(declare-fun lambda!453575 () Int)

(declare-fun forall!17820 (List!71458 Int) Bool)

(assert (=> b!7322140 (= res!2959718 (forall!17820 (exprs!8402 ct1!256) lambda!453575))))

(declare-fun b!7322141 () Bool)

(declare-fun ct2!352 () Context!15804)

(assert (=> b!7322141 (= e!4384091 (not (forall!17820 (exprs!8402 ct2!352) lambda!453575)))))

(declare-fun res!2959717 () Bool)

(assert (=> start!714488 (=> (not res!2959717) (not e!4384093))))

(declare-fun c!10305 () C!38198)

(declare-fun cWitness!35 () Context!15804)

(declare-fun derivationStepZipperUp!2642 (Context!15804 C!38198) (Set Context!15804))

(assert (=> start!714488 (= res!2959717 (set.member cWitness!35 (derivationStepZipperUp!2642 ct1!256 c!10305)))))

(assert (=> start!714488 e!4384093))

(declare-fun e!4384094 () Bool)

(declare-fun inv!90746 (Context!15804) Bool)

(assert (=> start!714488 (and (inv!90746 cWitness!35) e!4384094)))

(declare-fun e!4384090 () Bool)

(assert (=> start!714488 (and (inv!90746 ct1!256) e!4384090)))

(declare-fun tp_is_empty!48169 () Bool)

(assert (=> start!714488 tp_is_empty!48169))

(declare-fun e!4384092 () Bool)

(assert (=> start!714488 (and (inv!90746 ct2!352) e!4384092)))

(declare-fun b!7322142 () Bool)

(declare-fun tp!2079813 () Bool)

(assert (=> b!7322142 (= e!4384090 tp!2079813)))

(declare-fun b!7322143 () Bool)

(declare-fun tp!2079814 () Bool)

(assert (=> b!7322143 (= e!4384094 tp!2079814)))

(declare-fun b!7322144 () Bool)

(declare-fun tp!2079812 () Bool)

(assert (=> b!7322144 (= e!4384092 tp!2079812)))

(assert (= (and start!714488 res!2959717) b!7322140))

(assert (= (and b!7322140 res!2959718) b!7322141))

(assert (= start!714488 b!7322143))

(assert (= start!714488 b!7322142))

(assert (= start!714488 b!7322144))

(declare-fun m!7987692 () Bool)

(assert (=> b!7322140 m!7987692))

(declare-fun m!7987694 () Bool)

(assert (=> b!7322141 m!7987694))

(declare-fun m!7987696 () Bool)

(assert (=> start!714488 m!7987696))

(declare-fun m!7987698 () Bool)

(assert (=> start!714488 m!7987698))

(declare-fun m!7987700 () Bool)

(assert (=> start!714488 m!7987700))

(declare-fun m!7987702 () Bool)

(assert (=> start!714488 m!7987702))

(declare-fun m!7987704 () Bool)

(assert (=> start!714488 m!7987704))

(push 1)

(assert (not b!7322140))

(assert (not b!7322143))

(assert (not b!7322141))

(assert (not start!714488))

(assert tp_is_empty!48169)

(assert (not b!7322142))

(assert (not b!7322144))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2273818 () Bool)

(declare-fun res!2959729 () Bool)

(declare-fun e!4384114 () Bool)

(assert (=> d!2273818 (=> res!2959729 e!4384114)))

(assert (=> d!2273818 (= res!2959729 (is-Nil!71334 (exprs!8402 ct2!352)))))

(assert (=> d!2273818 (= (forall!17820 (exprs!8402 ct2!352) lambda!453575) e!4384114)))

(declare-fun b!7322164 () Bool)

(declare-fun e!4384115 () Bool)

(assert (=> b!7322164 (= e!4384114 e!4384115)))

(declare-fun res!2959730 () Bool)

(assert (=> b!7322164 (=> (not res!2959730) (not e!4384115))))

(declare-fun dynLambda!29386 (Int Regex!18962) Bool)

(assert (=> b!7322164 (= res!2959730 (dynLambda!29386 lambda!453575 (h!77782 (exprs!8402 ct2!352))))))

(declare-fun b!7322165 () Bool)

(assert (=> b!7322165 (= e!4384115 (forall!17820 (t!385841 (exprs!8402 ct2!352)) lambda!453575))))

(assert (= (and d!2273818 (not res!2959729)) b!7322164))

(assert (= (and b!7322164 res!2959730) b!7322165))

(declare-fun b_lambda!283139 () Bool)

(assert (=> (not b_lambda!283139) (not b!7322164)))

(declare-fun m!7987720 () Bool)

(assert (=> b!7322164 m!7987720))

(declare-fun m!7987722 () Bool)

(assert (=> b!7322165 m!7987722))

(assert (=> b!7322141 d!2273818))

(declare-fun d!2273820 () Bool)

(declare-fun res!2959731 () Bool)

(declare-fun e!4384116 () Bool)

(assert (=> d!2273820 (=> res!2959731 e!4384116)))

(assert (=> d!2273820 (= res!2959731 (is-Nil!71334 (exprs!8402 ct1!256)))))

(assert (=> d!2273820 (= (forall!17820 (exprs!8402 ct1!256) lambda!453575) e!4384116)))

(declare-fun b!7322166 () Bool)

(declare-fun e!4384117 () Bool)

(assert (=> b!7322166 (= e!4384116 e!4384117)))

(declare-fun res!2959732 () Bool)

(assert (=> b!7322166 (=> (not res!2959732) (not e!4384117))))

(assert (=> b!7322166 (= res!2959732 (dynLambda!29386 lambda!453575 (h!77782 (exprs!8402 ct1!256))))))

(declare-fun b!7322167 () Bool)

(assert (=> b!7322167 (= e!4384117 (forall!17820 (t!385841 (exprs!8402 ct1!256)) lambda!453575))))

(assert (= (and d!2273820 (not res!2959731)) b!7322166))

(assert (= (and b!7322166 res!2959732) b!7322167))

(declare-fun b_lambda!283141 () Bool)

(assert (=> (not b_lambda!283141) (not b!7322166)))

(declare-fun m!7987724 () Bool)

(assert (=> b!7322166 m!7987724))

(declare-fun m!7987726 () Bool)

(assert (=> b!7322167 m!7987726))

(assert (=> b!7322140 d!2273820))

(declare-fun b!7322188 () Bool)

(declare-fun e!4384132 () (Set Context!15804))

(assert (=> b!7322188 (= e!4384132 (as set.empty (Set Context!15804)))))

(declare-fun call!665914 () (Set Context!15804))

(declare-fun b!7322189 () Bool)

(declare-fun e!4384131 () (Set Context!15804))

(assert (=> b!7322189 (= e!4384131 (set.union call!665914 (derivationStepZipperUp!2642 (Context!15805 (t!385841 (exprs!8402 ct1!256))) c!10305)))))

(declare-fun d!2273822 () Bool)

(declare-fun c!1358831 () Bool)

(declare-fun e!4384130 () Bool)

(assert (=> d!2273822 (= c!1358831 e!4384130)))

(declare-fun res!2959737 () Bool)

(assert (=> d!2273822 (=> (not res!2959737) (not e!4384130))))

(assert (=> d!2273822 (= res!2959737 (is-Cons!71334 (exprs!8402 ct1!256)))))

(assert (=> d!2273822 (= (derivationStepZipperUp!2642 ct1!256 c!10305) e!4384131)))

(declare-fun bm!665909 () Bool)

(declare-fun derivationStepZipperDown!2795 (Regex!18962 Context!15804 C!38198) (Set Context!15804))

(assert (=> bm!665909 (= call!665914 (derivationStepZipperDown!2795 (h!77782 (exprs!8402 ct1!256)) (Context!15805 (t!385841 (exprs!8402 ct1!256))) c!10305))))

(declare-fun b!7322190 () Bool)

(declare-fun nullable!8068 (Regex!18962) Bool)

(assert (=> b!7322190 (= e!4384130 (nullable!8068 (h!77782 (exprs!8402 ct1!256))))))

(declare-fun b!7322191 () Bool)

(assert (=> b!7322191 (= e!4384131 e!4384132)))

(declare-fun c!1358832 () Bool)

(assert (=> b!7322191 (= c!1358832 (is-Cons!71334 (exprs!8402 ct1!256)))))

(declare-fun b!7322192 () Bool)

(assert (=> b!7322192 (= e!4384132 call!665914)))

(assert (= (and d!2273822 res!2959737) b!7322190))

(assert (= (and d!2273822 c!1358831) b!7322189))

(assert (= (and d!2273822 (not c!1358831)) b!7322191))

(assert (= (and b!7322191 c!1358832) b!7322192))

(assert (= (and b!7322191 (not c!1358832)) b!7322188))

(assert (= (or b!7322189 b!7322192) bm!665909))

(declare-fun m!7987728 () Bool)

(assert (=> b!7322189 m!7987728))

(declare-fun m!7987730 () Bool)

(assert (=> bm!665909 m!7987730))

(declare-fun m!7987732 () Bool)

(assert (=> b!7322190 m!7987732))

(assert (=> start!714488 d!2273822))

(declare-fun bs!1916152 () Bool)

(declare-fun d!2273824 () Bool)

(assert (= bs!1916152 (and d!2273824 b!7322140)))

(declare-fun lambda!453581 () Int)

(assert (=> bs!1916152 (= lambda!453581 lambda!453575)))

(assert (=> d!2273824 (= (inv!90746 cWitness!35) (forall!17820 (exprs!8402 cWitness!35) lambda!453581))))

(declare-fun bs!1916153 () Bool)

(assert (= bs!1916153 d!2273824))

(declare-fun m!7987734 () Bool)

(assert (=> bs!1916153 m!7987734))

(assert (=> start!714488 d!2273824))

(declare-fun bs!1916154 () Bool)

(declare-fun d!2273826 () Bool)

(assert (= bs!1916154 (and d!2273826 b!7322140)))

(declare-fun lambda!453582 () Int)

(assert (=> bs!1916154 (= lambda!453582 lambda!453575)))

(declare-fun bs!1916155 () Bool)

(assert (= bs!1916155 (and d!2273826 d!2273824)))

(assert (=> bs!1916155 (= lambda!453582 lambda!453581)))

(assert (=> d!2273826 (= (inv!90746 ct1!256) (forall!17820 (exprs!8402 ct1!256) lambda!453582))))

(declare-fun bs!1916156 () Bool)

(assert (= bs!1916156 d!2273826))

(declare-fun m!7987736 () Bool)

(assert (=> bs!1916156 m!7987736))

(assert (=> start!714488 d!2273826))

(declare-fun bs!1916157 () Bool)

(declare-fun d!2273828 () Bool)

(assert (= bs!1916157 (and d!2273828 b!7322140)))

(declare-fun lambda!453583 () Int)

(assert (=> bs!1916157 (= lambda!453583 lambda!453575)))

(declare-fun bs!1916158 () Bool)

(assert (= bs!1916158 (and d!2273828 d!2273824)))

(assert (=> bs!1916158 (= lambda!453583 lambda!453581)))

(declare-fun bs!1916159 () Bool)

(assert (= bs!1916159 (and d!2273828 d!2273826)))

(assert (=> bs!1916159 (= lambda!453583 lambda!453582)))

(assert (=> d!2273828 (= (inv!90746 ct2!352) (forall!17820 (exprs!8402 ct2!352) lambda!453583))))

(declare-fun bs!1916160 () Bool)

(assert (= bs!1916160 d!2273828))

(declare-fun m!7987738 () Bool)

(assert (=> bs!1916160 m!7987738))

(assert (=> start!714488 d!2273828))

(declare-fun b!7322202 () Bool)

(declare-fun e!4384138 () Bool)

(declare-fun tp!2079828 () Bool)

(declare-fun tp!2079829 () Bool)

(assert (=> b!7322202 (= e!4384138 (and tp!2079828 tp!2079829))))

(assert (=> b!7322144 (= tp!2079812 e!4384138)))

(assert (= (and b!7322144 (is-Cons!71334 (exprs!8402 ct2!352))) b!7322202))

(declare-fun b!7322203 () Bool)

(declare-fun e!4384139 () Bool)

(declare-fun tp!2079830 () Bool)

(declare-fun tp!2079831 () Bool)

(assert (=> b!7322203 (= e!4384139 (and tp!2079830 tp!2079831))))

(assert (=> b!7322143 (= tp!2079814 e!4384139)))

(assert (= (and b!7322143 (is-Cons!71334 (exprs!8402 cWitness!35))) b!7322203))

(declare-fun b!7322204 () Bool)

(declare-fun e!4384140 () Bool)

(declare-fun tp!2079832 () Bool)

(declare-fun tp!2079833 () Bool)

(assert (=> b!7322204 (= e!4384140 (and tp!2079832 tp!2079833))))

(assert (=> b!7322142 (= tp!2079813 e!4384140)))

(assert (= (and b!7322142 (is-Cons!71334 (exprs!8402 ct1!256))) b!7322204))

(declare-fun b_lambda!283143 () Bool)

(assert (= b_lambda!283141 (or b!7322140 b_lambda!283143)))

(declare-fun bs!1916161 () Bool)

(declare-fun d!2273830 () Bool)

(assert (= bs!1916161 (and d!2273830 b!7322140)))

(declare-fun validRegex!9616 (Regex!18962) Bool)

(assert (=> bs!1916161 (= (dynLambda!29386 lambda!453575 (h!77782 (exprs!8402 ct1!256))) (validRegex!9616 (h!77782 (exprs!8402 ct1!256))))))

(declare-fun m!7987740 () Bool)

(assert (=> bs!1916161 m!7987740))

(assert (=> b!7322166 d!2273830))

(declare-fun b_lambda!283145 () Bool)

(assert (= b_lambda!283139 (or b!7322140 b_lambda!283145)))

(declare-fun bs!1916162 () Bool)

(declare-fun d!2273832 () Bool)

(assert (= bs!1916162 (and d!2273832 b!7322140)))

(assert (=> bs!1916162 (= (dynLambda!29386 lambda!453575 (h!77782 (exprs!8402 ct2!352))) (validRegex!9616 (h!77782 (exprs!8402 ct2!352))))))

(declare-fun m!7987743 () Bool)

(assert (=> bs!1916162 m!7987743))

(assert (=> b!7322164 d!2273832))

(push 1)

(assert (not b!7322190))

(assert (not bs!1916162))

(assert tp_is_empty!48169)

(assert (not b_lambda!283143))

(assert (not b!7322165))

(assert (not d!2273826))

(assert (not d!2273824))

(assert (not bs!1916161))

(assert (not b!7322202))

(assert (not b_lambda!283145))

(assert (not bm!665909))

(assert (not b!7322204))

(assert (not b!7322203))

(assert (not b!7322189))

(assert (not b!7322167))

(assert (not d!2273828))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


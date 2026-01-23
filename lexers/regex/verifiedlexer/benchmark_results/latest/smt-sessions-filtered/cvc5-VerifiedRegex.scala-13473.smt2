; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727832 () Bool)

(assert start!727832)

(declare-fun res!3014088 () Bool)

(declare-fun e!4482607 () Bool)

(assert (=> start!727832 (=> (not res!3014088) (not e!4482607))))

(declare-datatypes ((C!39846 0))(
  ( (C!39847 (val!30343 Int)) )
))
(declare-datatypes ((Regex!19760 0))(
  ( (ElementMatch!19760 (c!1389484 C!39846)) (Concat!28605 (regOne!40032 Regex!19760) (regTwo!40032 Regex!19760)) (EmptyExpr!19760) (Star!19760 (reg!20089 Regex!19760)) (EmptyLang!19760) (Union!19760 (regOne!40033 Regex!19760) (regTwo!40033 Regex!19760)) )
))
(declare-datatypes ((List!72651 0))(
  ( (Nil!72527) (Cons!72527 (h!78975 Regex!19760) (t!387288 List!72651)) )
))
(declare-datatypes ((Context!17024 0))(
  ( (Context!17025 (exprs!9012 List!72651)) )
))
(declare-fun c!7091 () Context!17024)

(assert (=> start!727832 (= res!3014088 (not (is-Cons!72527 (exprs!9012 c!7091))))))

(assert (=> start!727832 e!4482607))

(declare-fun e!4482608 () Bool)

(declare-fun inv!92664 (Context!17024) Bool)

(assert (=> start!727832 (and (inv!92664 c!7091) e!4482608)))

(declare-fun b!7519744 () Bool)

(declare-fun lambda!466270 () Int)

(declare-fun exists!4938 (List!72651 Int) Bool)

(assert (=> b!7519744 (= e!4482607 (not (= false (exists!4938 (exprs!9012 c!7091) lambda!466270))))))

(declare-fun b!7519745 () Bool)

(declare-fun tp!2184093 () Bool)

(assert (=> b!7519745 (= e!4482608 tp!2184093)))

(assert (= (and start!727832 res!3014088) b!7519744))

(assert (= start!727832 b!7519745))

(declare-fun m!8099644 () Bool)

(assert (=> start!727832 m!8099644))

(declare-fun m!8099646 () Bool)

(assert (=> b!7519744 m!8099646))

(push 1)

(assert (not start!727832))

(assert (not b!7519744))

(assert (not b!7519745))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1939441 () Bool)

(declare-fun d!2308628 () Bool)

(assert (= bs!1939441 (and d!2308628 b!7519744)))

(declare-fun lambda!466276 () Int)

(assert (=> bs!1939441 (not (= lambda!466276 lambda!466270))))

(declare-fun forall!18383 (List!72651 Int) Bool)

(assert (=> d!2308628 (= (inv!92664 c!7091) (forall!18383 (exprs!9012 c!7091) lambda!466276))))

(declare-fun bs!1939442 () Bool)

(assert (= bs!1939442 d!2308628))

(declare-fun m!8099652 () Bool)

(assert (=> bs!1939442 m!8099652))

(assert (=> start!727832 d!2308628))

(declare-fun bs!1939443 () Bool)

(declare-fun d!2308630 () Bool)

(assert (= bs!1939443 (and d!2308630 b!7519744)))

(declare-fun lambda!466279 () Int)

(assert (=> bs!1939443 (not (= lambda!466279 lambda!466270))))

(declare-fun bs!1939444 () Bool)

(assert (= bs!1939444 (and d!2308630 d!2308628)))

(assert (=> bs!1939444 (not (= lambda!466279 lambda!466276))))

(assert (=> d!2308630 true))

(declare-fun order!29733 () Int)

(declare-fun dynLambda!29852 (Int Int) Int)

(assert (=> d!2308630 (< (dynLambda!29852 order!29733 lambda!466270) (dynLambda!29852 order!29733 lambda!466279))))

(assert (=> d!2308630 (= (exists!4938 (exprs!9012 c!7091) lambda!466270) (not (forall!18383 (exprs!9012 c!7091) lambda!466279)))))

(declare-fun bs!1939445 () Bool)

(assert (= bs!1939445 d!2308630))

(declare-fun m!8099654 () Bool)

(assert (=> bs!1939445 m!8099654))

(assert (=> b!7519744 d!2308630))

(declare-fun b!7519758 () Bool)

(declare-fun e!4482617 () Bool)

(declare-fun tp!2184101 () Bool)

(declare-fun tp!2184102 () Bool)

(assert (=> b!7519758 (= e!4482617 (and tp!2184101 tp!2184102))))

(assert (=> b!7519745 (= tp!2184093 e!4482617)))

(assert (= (and b!7519745 (is-Cons!72527 (exprs!9012 c!7091))) b!7519758))

(push 1)

(assert (not d!2308628))

(assert (not d!2308630))

(assert (not b!7519758))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2308636 () Bool)

(declare-fun res!3014096 () Bool)

(declare-fun e!4482622 () Bool)

(assert (=> d!2308636 (=> res!3014096 e!4482622)))

(assert (=> d!2308636 (= res!3014096 (is-Nil!72527 (exprs!9012 c!7091)))))

(assert (=> d!2308636 (= (forall!18383 (exprs!9012 c!7091) lambda!466276) e!4482622)))

(declare-fun b!7519763 () Bool)

(declare-fun e!4482623 () Bool)

(assert (=> b!7519763 (= e!4482622 e!4482623)))

(declare-fun res!3014097 () Bool)

(assert (=> b!7519763 (=> (not res!3014097) (not e!4482623))))

(declare-fun dynLambda!29853 (Int Regex!19760) Bool)

(assert (=> b!7519763 (= res!3014097 (dynLambda!29853 lambda!466276 (h!78975 (exprs!9012 c!7091))))))

(declare-fun b!7519764 () Bool)

(assert (=> b!7519764 (= e!4482623 (forall!18383 (t!387288 (exprs!9012 c!7091)) lambda!466276))))

(assert (= (and d!2308636 (not res!3014096)) b!7519763))

(assert (= (and b!7519763 res!3014097) b!7519764))

(declare-fun b_lambda!288429 () Bool)

(assert (=> (not b_lambda!288429) (not b!7519763)))

(declare-fun m!8099658 () Bool)

(assert (=> b!7519763 m!8099658))

(declare-fun m!8099660 () Bool)

(assert (=> b!7519764 m!8099660))

(assert (=> d!2308628 d!2308636))

(declare-fun d!2308638 () Bool)

(declare-fun res!3014098 () Bool)

(declare-fun e!4482624 () Bool)

(assert (=> d!2308638 (=> res!3014098 e!4482624)))

(assert (=> d!2308638 (= res!3014098 (is-Nil!72527 (exprs!9012 c!7091)))))

(assert (=> d!2308638 (= (forall!18383 (exprs!9012 c!7091) lambda!466279) e!4482624)))

(declare-fun b!7519765 () Bool)

(declare-fun e!4482625 () Bool)

(assert (=> b!7519765 (= e!4482624 e!4482625)))

(declare-fun res!3014099 () Bool)

(assert (=> b!7519765 (=> (not res!3014099) (not e!4482625))))

(assert (=> b!7519765 (= res!3014099 (dynLambda!29853 lambda!466279 (h!78975 (exprs!9012 c!7091))))))

(declare-fun b!7519766 () Bool)

(assert (=> b!7519766 (= e!4482625 (forall!18383 (t!387288 (exprs!9012 c!7091)) lambda!466279))))

(assert (= (and d!2308638 (not res!3014098)) b!7519765))

(assert (= (and b!7519765 res!3014099) b!7519766))

(declare-fun b_lambda!288431 () Bool)

(assert (=> (not b_lambda!288431) (not b!7519765)))

(declare-fun m!8099662 () Bool)

(assert (=> b!7519765 m!8099662))

(declare-fun m!8099664 () Bool)

(assert (=> b!7519766 m!8099664))

(assert (=> d!2308630 d!2308638))

(declare-fun e!4482628 () Bool)

(assert (=> b!7519758 (= tp!2184101 e!4482628)))

(declare-fun b!7519780 () Bool)

(declare-fun tp!2184114 () Bool)

(declare-fun tp!2184115 () Bool)

(assert (=> b!7519780 (= e!4482628 (and tp!2184114 tp!2184115))))

(declare-fun b!7519782 () Bool)

(declare-fun tp!2184117 () Bool)

(declare-fun tp!2184113 () Bool)

(assert (=> b!7519782 (= e!4482628 (and tp!2184117 tp!2184113))))

(declare-fun b!7519779 () Bool)

(declare-fun tp_is_empty!49847 () Bool)

(assert (=> b!7519779 (= e!4482628 tp_is_empty!49847)))

(declare-fun b!7519781 () Bool)

(declare-fun tp!2184116 () Bool)

(assert (=> b!7519781 (= e!4482628 tp!2184116)))

(assert (= (and b!7519758 (is-ElementMatch!19760 (h!78975 (exprs!9012 c!7091)))) b!7519779))

(assert (= (and b!7519758 (is-Concat!28605 (h!78975 (exprs!9012 c!7091)))) b!7519780))

(assert (= (and b!7519758 (is-Star!19760 (h!78975 (exprs!9012 c!7091)))) b!7519781))

(assert (= (and b!7519758 (is-Union!19760 (h!78975 (exprs!9012 c!7091)))) b!7519782))

(declare-fun b!7519783 () Bool)

(declare-fun e!4482629 () Bool)

(declare-fun tp!2184118 () Bool)

(declare-fun tp!2184119 () Bool)

(assert (=> b!7519783 (= e!4482629 (and tp!2184118 tp!2184119))))

(assert (=> b!7519758 (= tp!2184102 e!4482629)))

(assert (= (and b!7519758 (is-Cons!72527 (t!387288 (exprs!9012 c!7091)))) b!7519783))

(declare-fun b_lambda!288433 () Bool)

(assert (= b_lambda!288431 (or d!2308630 b_lambda!288433)))

(declare-fun bs!1939450 () Bool)

(declare-fun d!2308640 () Bool)

(assert (= bs!1939450 (and d!2308640 d!2308630)))

(assert (=> bs!1939450 (= (dynLambda!29853 lambda!466279 (h!78975 (exprs!9012 c!7091))) (not (dynLambda!29853 lambda!466270 (h!78975 (exprs!9012 c!7091)))))))

(declare-fun b_lambda!288437 () Bool)

(assert (=> (not b_lambda!288437) (not bs!1939450)))

(declare-fun m!8099668 () Bool)

(assert (=> bs!1939450 m!8099668))

(assert (=> b!7519765 d!2308640))

(declare-fun b_lambda!288435 () Bool)

(assert (= b_lambda!288429 (or d!2308628 b_lambda!288435)))

(declare-fun bs!1939452 () Bool)

(declare-fun d!2308642 () Bool)

(assert (= bs!1939452 (and d!2308642 d!2308628)))

(declare-fun validRegex!10194 (Regex!19760) Bool)

(assert (=> bs!1939452 (= (dynLambda!29853 lambda!466276 (h!78975 (exprs!9012 c!7091))) (validRegex!10194 (h!78975 (exprs!9012 c!7091))))))

(declare-fun m!8099670 () Bool)

(assert (=> bs!1939452 m!8099670))

(assert (=> b!7519763 d!2308642))

(push 1)

(assert (not b!7519766))

(assert (not b_lambda!288433))

(assert tp_is_empty!49847)

(assert (not bs!1939452))

(assert (not b!7519782))

(assert (not b!7519764))

(assert (not b_lambda!288437))

(assert (not b!7519781))

(assert (not b!7519780))

(assert (not b!7519783))

(assert (not b_lambda!288435))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


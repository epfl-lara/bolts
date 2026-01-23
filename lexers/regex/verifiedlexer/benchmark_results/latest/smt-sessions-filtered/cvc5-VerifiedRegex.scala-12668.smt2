; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!701008 () Bool)

(assert start!701008)

(declare-fun b!7228546 () Bool)

(assert (=> b!7228546 true))

(declare-fun bs!1902189 () Bool)

(declare-fun b!7228548 () Bool)

(assert (= bs!1902189 (and b!7228548 b!7228546)))

(declare-fun b!25551 () Int)

(declare-fun lambda!438789 () Int)

(declare-fun lambda!438788 () Int)

(declare-fun a!1071 () Int)

(assert (=> bs!1902189 (= (= a!1071 b!25551) (= lambda!438789 lambda!438788))))

(assert (=> b!7228548 true))

(declare-fun b!7228547 () Bool)

(declare-fun res!2932799 () Bool)

(declare-fun e!4333182 () Bool)

(assert (=> b!7228547 (=> (not res!2932799) (not e!4333182))))

(declare-datatypes ((C!37162 0))(
  ( (C!37163 (val!28529 Int)) )
))
(declare-datatypes ((Regex!18444 0))(
  ( (ElementMatch!18444 (c!1341157 C!37162)) (Concat!27289 (regOne!37400 Regex!18444) (regTwo!37400 Regex!18444)) (EmptyExpr!18444) (Star!18444 (reg!18773 Regex!18444)) (EmptyLang!18444) (Union!18444 (regOne!37401 Regex!18444) (regTwo!37401 Regex!18444)) )
))
(declare-datatypes ((List!69982 0))(
  ( (Nil!69858) (Cons!69858 (h!76306 Regex!18444) (t!384013 List!69982)) )
))
(declare-fun l!7017 () List!69982)

(assert (=> b!7228547 (= res!2932799 (is-Nil!69858 l!7017))))

(declare-fun res!2932798 () Bool)

(assert (=> b!7228546 (=> (not res!2932798) (not e!4333182))))

(declare-fun forall!17267 (List!69982 Int) Bool)

(assert (=> b!7228546 (= res!2932798 (forall!17267 l!7017 lambda!438788))))

(assert (=> b!7228548 (= e!4333182 (not (forall!17267 l!7017 lambda!438789)))))

(declare-fun res!2932797 () Bool)

(assert (=> start!701008 (=> (not res!2932797) (not e!4333182))))

(assert (=> start!701008 (= res!2932797 (>= a!1071 b!25551))))

(assert (=> start!701008 e!4333182))

(assert (=> start!701008 true))

(declare-fun e!4333183 () Bool)

(assert (=> start!701008 e!4333183))

(declare-fun b!7228549 () Bool)

(declare-fun tp!2032816 () Bool)

(declare-fun tp!2032815 () Bool)

(assert (=> b!7228549 (= e!4333183 (and tp!2032816 tp!2032815))))

(assert (= (and start!701008 res!2932797) b!7228546))

(assert (= (and b!7228546 res!2932798) b!7228547))

(assert (= (and b!7228547 res!2932799) b!7228548))

(assert (= (and start!701008 (is-Cons!69858 l!7017)) b!7228549))

(declare-fun m!7896994 () Bool)

(assert (=> b!7228546 m!7896994))

(declare-fun m!7896996 () Bool)

(assert (=> b!7228548 m!7896996))

(push 1)

(assert (not b!7228548))

(assert (not b!7228546))

(assert (not b!7228549))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244929 () Bool)

(declare-fun res!2932813 () Bool)

(declare-fun e!4333194 () Bool)

(assert (=> d!2244929 (=> res!2932813 e!4333194)))

(assert (=> d!2244929 (= res!2932813 (is-Nil!69858 l!7017))))

(assert (=> d!2244929 (= (forall!17267 l!7017 lambda!438789) e!4333194)))

(declare-fun b!7228570 () Bool)

(declare-fun e!4333195 () Bool)

(assert (=> b!7228570 (= e!4333194 e!4333195)))

(declare-fun res!2932814 () Bool)

(assert (=> b!7228570 (=> (not res!2932814) (not e!4333195))))

(declare-fun dynLambda!28451 (Int Regex!18444) Bool)

(assert (=> b!7228570 (= res!2932814 (dynLambda!28451 lambda!438789 (h!76306 l!7017)))))

(declare-fun b!7228571 () Bool)

(assert (=> b!7228571 (= e!4333195 (forall!17267 (t!384013 l!7017) lambda!438789))))

(assert (= (and d!2244929 (not res!2932813)) b!7228570))

(assert (= (and b!7228570 res!2932814) b!7228571))

(declare-fun b_lambda!276807 () Bool)

(assert (=> (not b_lambda!276807) (not b!7228570)))

(declare-fun m!7897002 () Bool)

(assert (=> b!7228570 m!7897002))

(declare-fun m!7897004 () Bool)

(assert (=> b!7228571 m!7897004))

(assert (=> b!7228548 d!2244929))

(declare-fun d!2244931 () Bool)

(declare-fun res!2932815 () Bool)

(declare-fun e!4333196 () Bool)

(assert (=> d!2244931 (=> res!2932815 e!4333196)))

(assert (=> d!2244931 (= res!2932815 (is-Nil!69858 l!7017))))

(assert (=> d!2244931 (= (forall!17267 l!7017 lambda!438788) e!4333196)))

(declare-fun b!7228572 () Bool)

(declare-fun e!4333197 () Bool)

(assert (=> b!7228572 (= e!4333196 e!4333197)))

(declare-fun res!2932816 () Bool)

(assert (=> b!7228572 (=> (not res!2932816) (not e!4333197))))

(assert (=> b!7228572 (= res!2932816 (dynLambda!28451 lambda!438788 (h!76306 l!7017)))))

(declare-fun b!7228573 () Bool)

(assert (=> b!7228573 (= e!4333197 (forall!17267 (t!384013 l!7017) lambda!438788))))

(assert (= (and d!2244931 (not res!2932815)) b!7228572))

(assert (= (and b!7228572 res!2932816) b!7228573))

(declare-fun b_lambda!276809 () Bool)

(assert (=> (not b_lambda!276809) (not b!7228572)))

(declare-fun m!7897006 () Bool)

(assert (=> b!7228572 m!7897006))

(declare-fun m!7897008 () Bool)

(assert (=> b!7228573 m!7897008))

(assert (=> b!7228546 d!2244931))

(declare-fun b!7228587 () Bool)

(declare-fun e!4333200 () Bool)

(declare-fun tp!2032833 () Bool)

(declare-fun tp!2032836 () Bool)

(assert (=> b!7228587 (= e!4333200 (and tp!2032833 tp!2032836))))

(assert (=> b!7228549 (= tp!2032816 e!4333200)))

(declare-fun b!7228585 () Bool)

(declare-fun tp!2032834 () Bool)

(declare-fun tp!2032835 () Bool)

(assert (=> b!7228585 (= e!4333200 (and tp!2032834 tp!2032835))))

(declare-fun b!7228584 () Bool)

(declare-fun tp_is_empty!46377 () Bool)

(assert (=> b!7228584 (= e!4333200 tp_is_empty!46377)))

(declare-fun b!7228586 () Bool)

(declare-fun tp!2032837 () Bool)

(assert (=> b!7228586 (= e!4333200 tp!2032837)))

(assert (= (and b!7228549 (is-ElementMatch!18444 (h!76306 l!7017))) b!7228584))

(assert (= (and b!7228549 (is-Concat!27289 (h!76306 l!7017))) b!7228585))

(assert (= (and b!7228549 (is-Star!18444 (h!76306 l!7017))) b!7228586))

(assert (= (and b!7228549 (is-Union!18444 (h!76306 l!7017))) b!7228587))

(declare-fun b!7228592 () Bool)

(declare-fun e!4333203 () Bool)

(declare-fun tp!2032842 () Bool)

(declare-fun tp!2032843 () Bool)

(assert (=> b!7228592 (= e!4333203 (and tp!2032842 tp!2032843))))

(assert (=> b!7228549 (= tp!2032815 e!4333203)))

(assert (= (and b!7228549 (is-Cons!69858 (t!384013 l!7017))) b!7228592))

(declare-fun b_lambda!276811 () Bool)

(assert (= b_lambda!276807 (or b!7228548 b_lambda!276811)))

(declare-fun bs!1902191 () Bool)

(declare-fun d!2244935 () Bool)

(assert (= bs!1902191 (and d!2244935 b!7228548)))

(declare-fun regexDepth!429 (Regex!18444) Int)

(assert (=> bs!1902191 (= (dynLambda!28451 lambda!438789 (h!76306 l!7017)) (>= a!1071 (regexDepth!429 (h!76306 l!7017))))))

(declare-fun m!7897010 () Bool)

(assert (=> bs!1902191 m!7897010))

(assert (=> b!7228570 d!2244935))

(declare-fun b_lambda!276813 () Bool)

(assert (= b_lambda!276809 (or b!7228546 b_lambda!276813)))

(declare-fun bs!1902192 () Bool)

(declare-fun d!2244937 () Bool)

(assert (= bs!1902192 (and d!2244937 b!7228546)))

(assert (=> bs!1902192 (= (dynLambda!28451 lambda!438788 (h!76306 l!7017)) (>= b!25551 (regexDepth!429 (h!76306 l!7017))))))

(assert (=> bs!1902192 m!7897010))

(assert (=> b!7228572 d!2244937))

(push 1)

(assert (not b!7228573))

(assert (not b_lambda!276811))

(assert (not bs!1902192))

(assert (not b!7228592))

(assert (not b!7228571))

(assert (not bs!1902191))

(assert (not b!7228587))

(assert (not b!7228586))

(assert (not b!7228585))

(assert (not b_lambda!276813))

(assert tp_is_empty!46377)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


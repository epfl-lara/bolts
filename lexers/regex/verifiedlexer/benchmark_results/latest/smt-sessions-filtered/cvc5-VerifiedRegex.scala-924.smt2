; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!47494 () Bool)

(assert start!47494)

(assert (=> start!47494 true))

(declare-fun b!519956 () Bool)

(declare-fun e!311531 () Bool)

(declare-datatypes ((B!1139 0))(
  ( (B!1140 (val!1857 Int)) )
))
(declare-datatypes ((List!4797 0))(
  ( (Nil!4787) (Cons!4787 (h!10188 B!1139) (t!73387 List!4797)) )
))
(declare-fun lIn!3 () List!4797)

(declare-fun l!3695 () List!4797)

(declare-fun size!3908 (List!4797) Int)

(assert (=> b!519956 (= e!311531 (> (size!3908 lIn!3) (size!3908 l!3695)))))

(declare-fun res!220737 () Bool)

(assert (=> start!47494 (=> (not res!220737) (not e!311531))))

(declare-fun lambda!14904 () Int)

(declare-fun forall!1456 (List!4797 Int) Bool)

(assert (=> start!47494 (= res!220737 (forall!1456 lIn!3 lambda!14904))))

(assert (=> start!47494 e!311531))

(declare-fun e!311530 () Bool)

(assert (=> start!47494 e!311530))

(declare-fun e!311529 () Bool)

(assert (=> start!47494 e!311529))

(declare-fun b!519957 () Bool)

(declare-fun res!220736 () Bool)

(assert (=> b!519957 (=> (not res!220736) (not e!311531))))

(declare-fun noDuplicate!148 (List!4797) Bool)

(assert (=> b!519957 (= res!220736 (noDuplicate!148 lIn!3))))

(declare-fun b!519958 () Bool)

(declare-fun tp_is_empty!2735 () Bool)

(declare-fun tp!161858 () Bool)

(assert (=> b!519958 (= e!311529 (and tp_is_empty!2735 tp!161858))))

(declare-fun b!519959 () Bool)

(declare-fun res!220735 () Bool)

(assert (=> b!519959 (=> (not res!220735) (not e!311531))))

(assert (=> b!519959 (= res!220735 (not (is-Cons!4787 lIn!3)))))

(declare-fun b!519960 () Bool)

(declare-fun tp!161859 () Bool)

(assert (=> b!519960 (= e!311530 (and tp_is_empty!2735 tp!161859))))

(assert (= (and start!47494 res!220737) b!519957))

(assert (= (and b!519957 res!220736) b!519959))

(assert (= (and b!519959 res!220735) b!519956))

(assert (= (and start!47494 (is-Cons!4787 lIn!3)) b!519960))

(assert (= (and start!47494 (is-Cons!4787 l!3695)) b!519958))

(declare-fun m!766681 () Bool)

(assert (=> b!519956 m!766681))

(declare-fun m!766683 () Bool)

(assert (=> b!519956 m!766683))

(declare-fun m!766685 () Bool)

(assert (=> start!47494 m!766685))

(declare-fun m!766687 () Bool)

(assert (=> b!519957 m!766687))

(push 1)

(assert (not b!519958))

(assert (not b!519960))

(assert (not start!47494))

(assert tp_is_empty!2735)

(assert (not b!519957))

(assert (not b!519956))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!185679 () Bool)

(declare-fun lt!216726 () Int)

(assert (=> d!185679 (>= lt!216726 0)))

(declare-fun e!311545 () Int)

(assert (=> d!185679 (= lt!216726 e!311545)))

(declare-fun c!100538 () Bool)

(assert (=> d!185679 (= c!100538 (is-Nil!4787 lIn!3))))

(assert (=> d!185679 (= (size!3908 lIn!3) lt!216726)))

(declare-fun b!519984 () Bool)

(assert (=> b!519984 (= e!311545 0)))

(declare-fun b!519985 () Bool)

(assert (=> b!519985 (= e!311545 (+ 1 (size!3908 (t!73387 lIn!3))))))

(assert (= (and d!185679 c!100538) b!519984))

(assert (= (and d!185679 (not c!100538)) b!519985))

(declare-fun m!766697 () Bool)

(assert (=> b!519985 m!766697))

(assert (=> b!519956 d!185679))

(declare-fun d!185681 () Bool)

(declare-fun lt!216727 () Int)

(assert (=> d!185681 (>= lt!216727 0)))

(declare-fun e!311546 () Int)

(assert (=> d!185681 (= lt!216727 e!311546)))

(declare-fun c!100539 () Bool)

(assert (=> d!185681 (= c!100539 (is-Nil!4787 l!3695))))

(assert (=> d!185681 (= (size!3908 l!3695) lt!216727)))

(declare-fun b!519986 () Bool)

(assert (=> b!519986 (= e!311546 0)))

(declare-fun b!519987 () Bool)

(assert (=> b!519987 (= e!311546 (+ 1 (size!3908 (t!73387 l!3695))))))

(assert (= (and d!185681 c!100539) b!519986))

(assert (= (and d!185681 (not c!100539)) b!519987))

(declare-fun m!766699 () Bool)

(assert (=> b!519987 m!766699))

(assert (=> b!519956 d!185681))

(declare-fun d!185683 () Bool)

(declare-fun res!220751 () Bool)

(declare-fun e!311552 () Bool)

(assert (=> d!185683 (=> res!220751 e!311552)))

(assert (=> d!185683 (= res!220751 (is-Nil!4787 lIn!3))))

(assert (=> d!185683 (= (noDuplicate!148 lIn!3) e!311552)))

(declare-fun b!519996 () Bool)

(declare-fun e!311553 () Bool)

(assert (=> b!519996 (= e!311552 e!311553)))

(declare-fun res!220752 () Bool)

(assert (=> b!519996 (=> (not res!220752) (not e!311553))))

(declare-fun contains!1147 (List!4797 B!1139) Bool)

(assert (=> b!519996 (= res!220752 (not (contains!1147 (t!73387 lIn!3) (h!10188 lIn!3))))))

(declare-fun b!519997 () Bool)

(assert (=> b!519997 (= e!311553 (noDuplicate!148 (t!73387 lIn!3)))))

(assert (= (and d!185683 (not res!220751)) b!519996))

(assert (= (and b!519996 res!220752) b!519997))

(declare-fun m!766701 () Bool)

(assert (=> b!519996 m!766701))

(declare-fun m!766703 () Bool)

(assert (=> b!519997 m!766703))

(assert (=> b!519957 d!185683))

(declare-fun d!185687 () Bool)

(declare-fun res!220757 () Bool)

(declare-fun e!311561 () Bool)

(assert (=> d!185687 (=> res!220757 e!311561)))

(assert (=> d!185687 (= res!220757 (is-Nil!4787 lIn!3))))

(assert (=> d!185687 (= (forall!1456 lIn!3 lambda!14904) e!311561)))

(declare-fun b!520006 () Bool)

(declare-fun e!311562 () Bool)

(assert (=> b!520006 (= e!311561 e!311562)))

(declare-fun res!220758 () Bool)

(assert (=> b!520006 (=> (not res!220758) (not e!311562))))

(declare-fun dynLambda!3006 (Int B!1139) Bool)

(assert (=> b!520006 (= res!220758 (dynLambda!3006 lambda!14904 (h!10188 lIn!3)))))

(declare-fun b!520007 () Bool)

(assert (=> b!520007 (= e!311562 (forall!1456 (t!73387 lIn!3) lambda!14904))))

(assert (= (and d!185687 (not res!220757)) b!520006))

(assert (= (and b!520006 res!220758) b!520007))

(declare-fun b_lambda!20285 () Bool)

(assert (=> (not b_lambda!20285) (not b!520006)))

(declare-fun m!766709 () Bool)

(assert (=> b!520006 m!766709))

(declare-fun m!766711 () Bool)

(assert (=> b!520007 m!766711))

(assert (=> start!47494 d!185687))

(declare-fun b!520012 () Bool)

(declare-fun e!311565 () Bool)

(declare-fun tp!161868 () Bool)

(assert (=> b!520012 (= e!311565 (and tp_is_empty!2735 tp!161868))))

(assert (=> b!519960 (= tp!161859 e!311565)))

(assert (= (and b!519960 (is-Cons!4787 (t!73387 lIn!3))) b!520012))

(declare-fun b!520013 () Bool)

(declare-fun e!311566 () Bool)

(declare-fun tp!161869 () Bool)

(assert (=> b!520013 (= e!311566 (and tp_is_empty!2735 tp!161869))))

(assert (=> b!519958 (= tp!161858 e!311566)))

(assert (= (and b!519958 (is-Cons!4787 (t!73387 l!3695))) b!520013))

(declare-fun b_lambda!20287 () Bool)

(assert (= b_lambda!20285 (or start!47494 b_lambda!20287)))

(declare-fun bs!60487 () Bool)

(declare-fun d!185693 () Bool)

(assert (= bs!60487 (and d!185693 start!47494)))

(assert (=> bs!60487 (= (dynLambda!3006 lambda!14904 (h!10188 lIn!3)) (contains!1147 l!3695 (h!10188 lIn!3)))))

(declare-fun m!766713 () Bool)

(assert (=> bs!60487 m!766713))

(assert (=> b!520006 d!185693))

(push 1)

(assert (not b!519997))

(assert (not b!520013))

(assert (not b_lambda!20287))

(assert (not b!519987))

(assert (not b!520012))

(assert (not b!519985))

(assert (not b!519996))

(assert (not b!520007))

(assert tp_is_empty!2735)

(assert (not bs!60487))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


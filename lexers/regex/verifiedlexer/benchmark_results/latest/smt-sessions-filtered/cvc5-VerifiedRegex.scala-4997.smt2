; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252754 () Bool)

(assert start!252754)

(declare-fun b!2600677 () Bool)

(assert (=> b!2600677 true))

(declare-fun b!2600674 () Bool)

(declare-fun res!1095515 () Bool)

(declare-fun e!1641627 () Bool)

(assert (=> b!2600674 (=> (not res!1095515) (not e!1641627))))

(declare-datatypes ((B!2407 0))(
  ( (B!2408 (val!9671 Int)) )
))
(declare-datatypes ((List!30104 0))(
  ( (Nil!30004) (Cons!30004 (h!35424 B!2407) (t!213153 List!30104)) )
))
(declare-fun l!3766 () List!30104)

(declare-fun refHd!9 () B!2407)

(declare-fun contains!5548 (List!30104 B!2407) Bool)

(assert (=> b!2600674 (= res!1095515 (not (contains!5548 l!3766 refHd!9)))))

(declare-fun b!2600675 () Bool)

(declare-fun refL!9 () List!30104)

(assert (=> b!2600675 (= e!1641627 (= refL!9 Nil!30004))))

(declare-datatypes ((Unit!44025 0))(
  ( (Unit!44026) )
))
(declare-fun lt!915298 () Unit!44025)

(declare-fun lemmaForallContainsThenForTailIfContainsNotHead!31 (List!30104 List!30104 B!2407) Unit!44025)

(assert (=> b!2600675 (= lt!915298 (lemmaForallContainsThenForTailIfContainsNotHead!31 (t!213153 l!3766) refL!9 refHd!9))))

(declare-fun b!2600676 () Bool)

(declare-fun e!1641626 () Bool)

(declare-fun tp_is_empty!13687 () Bool)

(declare-fun tp!823937 () Bool)

(assert (=> b!2600676 (= e!1641626 (and tp_is_empty!13687 tp!823937))))

(declare-fun res!1095518 () Bool)

(assert (=> b!2600677 (=> (not res!1095518) (not e!1641627))))

(declare-fun lambda!97285 () Int)

(declare-fun forall!6183 (List!30104 Int) Bool)

(assert (=> b!2600677 (= res!1095518 (forall!6183 l!3766 lambda!97285))))

(declare-fun b!2600678 () Bool)

(declare-fun res!1095517 () Bool)

(assert (=> b!2600678 (=> (not res!1095517) (not e!1641627))))

(assert (=> b!2600678 (= res!1095517 (not (is-Nil!30004 l!3766)))))

(declare-fun res!1095516 () Bool)

(assert (=> start!252754 (=> (not res!1095516) (not e!1641627))))

(declare-fun isEmpty!17157 (List!30104) Bool)

(assert (=> start!252754 (= res!1095516 (not (isEmpty!17157 refL!9)))))

(assert (=> start!252754 e!1641627))

(assert (=> start!252754 e!1641626))

(declare-fun e!1641628 () Bool)

(assert (=> start!252754 e!1641628))

(assert (=> start!252754 tp_is_empty!13687))

(declare-fun b!2600679 () Bool)

(declare-fun tp!823938 () Bool)

(assert (=> b!2600679 (= e!1641628 (and tp_is_empty!13687 tp!823938))))

(declare-fun b!2600680 () Bool)

(declare-fun res!1095514 () Bool)

(assert (=> b!2600680 (=> (not res!1095514) (not e!1641627))))

(declare-fun head!5925 (List!30104) B!2407)

(assert (=> b!2600680 (= res!1095514 (= refHd!9 (head!5925 refL!9)))))

(assert (= (and start!252754 res!1095516) b!2600677))

(assert (= (and b!2600677 res!1095518) b!2600680))

(assert (= (and b!2600680 res!1095514) b!2600674))

(assert (= (and b!2600674 res!1095515) b!2600678))

(assert (= (and b!2600678 res!1095517) b!2600675))

(assert (= (and start!252754 (is-Cons!30004 refL!9)) b!2600676))

(assert (= (and start!252754 (is-Cons!30004 l!3766)) b!2600679))

(declare-fun m!2935937 () Bool)

(assert (=> start!252754 m!2935937))

(declare-fun m!2935939 () Bool)

(assert (=> b!2600674 m!2935939))

(declare-fun m!2935941 () Bool)

(assert (=> b!2600675 m!2935941))

(declare-fun m!2935943 () Bool)

(assert (=> b!2600680 m!2935943))

(declare-fun m!2935945 () Bool)

(assert (=> b!2600677 m!2935945))

(push 1)

(assert (not b!2600675))

(assert tp_is_empty!13687)

(assert (not b!2600680))

(assert (not start!252754))

(assert (not b!2600676))

(assert (not b!2600679))

(assert (not b!2600674))

(assert (not b!2600677))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736778 () Bool)

(declare-fun res!1095538 () Bool)

(declare-fun e!1641644 () Bool)

(assert (=> d!736778 (=> res!1095538 e!1641644)))

(assert (=> d!736778 (= res!1095538 (is-Nil!30004 l!3766))))

(assert (=> d!736778 (= (forall!6183 l!3766 lambda!97285) e!1641644)))

(declare-fun b!2600710 () Bool)

(declare-fun e!1641645 () Bool)

(assert (=> b!2600710 (= e!1641644 e!1641645)))

(declare-fun res!1095539 () Bool)

(assert (=> b!2600710 (=> (not res!1095539) (not e!1641645))))

(declare-fun dynLambda!12688 (Int B!2407) Bool)

(assert (=> b!2600710 (= res!1095539 (dynLambda!12688 lambda!97285 (h!35424 l!3766)))))

(declare-fun b!2600711 () Bool)

(assert (=> b!2600711 (= e!1641645 (forall!6183 (t!213153 l!3766) lambda!97285))))

(assert (= (and d!736778 (not res!1095538)) b!2600710))

(assert (= (and b!2600710 res!1095539) b!2600711))

(declare-fun b_lambda!77851 () Bool)

(assert (=> (not b_lambda!77851) (not b!2600710)))

(declare-fun m!2935957 () Bool)

(assert (=> b!2600710 m!2935957))

(declare-fun m!2935959 () Bool)

(assert (=> b!2600711 m!2935959))

(assert (=> b!2600677 d!736778))

(declare-fun d!736780 () Bool)

(assert (=> d!736780 (= (isEmpty!17157 refL!9) (is-Nil!30004 refL!9))))

(assert (=> start!252754 d!736780))

(declare-fun bs!473181 () Bool)

(declare-fun d!736782 () Bool)

(assert (= bs!473181 d!736782))

(declare-fun m!2935961 () Bool)

(assert (=> bs!473181 m!2935961))

(declare-fun bs!473182 () Bool)

(assert (= bs!473182 (and d!736782 b!2600677)))

(declare-fun lambda!97291 () Int)

(declare-fun tail!4170 (List!30104) List!30104)

(assert (=> bs!473182 (= (= (tail!4170 refL!9) refL!9) (= lambda!97291 lambda!97285))))

(assert (=> d!736782 true))

(assert (=> d!736782 (forall!6183 (t!213153 l!3766) lambda!97291)))

(declare-fun lt!915304 () Unit!44025)

(declare-fun choose!15459 (List!30104 List!30104 B!2407) Unit!44025)

(assert (=> d!736782 (= lt!915304 (choose!15459 (t!213153 l!3766) refL!9 refHd!9))))

(assert (=> d!736782 (not (isEmpty!17157 refL!9))))

(assert (=> d!736782 (= (lemmaForallContainsThenForTailIfContainsNotHead!31 (t!213153 l!3766) refL!9 refHd!9) lt!915304)))

(declare-fun m!2935963 () Bool)

(assert (=> bs!473181 m!2935963))

(declare-fun m!2935965 () Bool)

(assert (=> bs!473181 m!2935965))

(assert (=> bs!473181 m!2935937))

(assert (=> b!2600675 d!736782))

(declare-fun d!736784 () Bool)

(assert (=> d!736784 (= (head!5925 refL!9) (h!35424 refL!9))))

(assert (=> b!2600680 d!736784))

(declare-fun d!736786 () Bool)

(declare-fun lt!915307 () Bool)

(declare-fun content!4258 (List!30104) (Set B!2407))

(assert (=> d!736786 (= lt!915307 (set.member refHd!9 (content!4258 l!3766)))))

(declare-fun e!1641652 () Bool)

(assert (=> d!736786 (= lt!915307 e!1641652)))

(declare-fun res!1095545 () Bool)

(assert (=> d!736786 (=> (not res!1095545) (not e!1641652))))

(assert (=> d!736786 (= res!1095545 (is-Cons!30004 l!3766))))

(assert (=> d!736786 (= (contains!5548 l!3766 refHd!9) lt!915307)))

(declare-fun b!2600716 () Bool)

(declare-fun e!1641653 () Bool)

(assert (=> b!2600716 (= e!1641652 e!1641653)))

(declare-fun res!1095544 () Bool)

(assert (=> b!2600716 (=> res!1095544 e!1641653)))

(assert (=> b!2600716 (= res!1095544 (= (h!35424 l!3766) refHd!9))))

(declare-fun b!2600717 () Bool)

(assert (=> b!2600717 (= e!1641653 (contains!5548 (t!213153 l!3766) refHd!9))))

(assert (= (and d!736786 res!1095545) b!2600716))

(assert (= (and b!2600716 (not res!1095544)) b!2600717))

(declare-fun m!2935967 () Bool)

(assert (=> d!736786 m!2935967))

(declare-fun m!2935969 () Bool)

(assert (=> d!736786 m!2935969))

(declare-fun m!2935971 () Bool)

(assert (=> b!2600717 m!2935971))

(assert (=> b!2600674 d!736786))

(declare-fun b!2600722 () Bool)

(declare-fun e!1641656 () Bool)

(declare-fun tp!823947 () Bool)

(assert (=> b!2600722 (= e!1641656 (and tp_is_empty!13687 tp!823947))))

(assert (=> b!2600676 (= tp!823937 e!1641656)))

(assert (= (and b!2600676 (is-Cons!30004 (t!213153 refL!9))) b!2600722))

(declare-fun b!2600723 () Bool)

(declare-fun e!1641657 () Bool)

(declare-fun tp!823948 () Bool)

(assert (=> b!2600723 (= e!1641657 (and tp_is_empty!13687 tp!823948))))

(assert (=> b!2600679 (= tp!823938 e!1641657)))

(assert (= (and b!2600679 (is-Cons!30004 (t!213153 l!3766))) b!2600723))

(declare-fun b_lambda!77853 () Bool)

(assert (= b_lambda!77851 (or b!2600677 b_lambda!77853)))

(declare-fun bs!473183 () Bool)

(declare-fun d!736790 () Bool)

(assert (= bs!473183 (and d!736790 b!2600677)))

(assert (=> bs!473183 (= (dynLambda!12688 lambda!97285 (h!35424 l!3766)) (contains!5548 refL!9 (h!35424 l!3766)))))

(declare-fun m!2935973 () Bool)

(assert (=> bs!473183 m!2935973))

(assert (=> b!2600710 d!736790))

(push 1)

(assert (not b_lambda!77853))

(assert (not bs!473183))

(assert (not b!2600722))

(assert tp_is_empty!13687)

(assert (not d!736782))

(assert (not d!736786))

(assert (not b!2600723))

(assert (not b!2600711))

(assert (not b!2600717))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


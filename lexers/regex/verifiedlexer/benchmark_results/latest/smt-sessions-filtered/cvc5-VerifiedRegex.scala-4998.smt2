; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252778 () Bool)

(assert start!252778)

(declare-fun b!2600759 () Bool)

(assert (=> b!2600759 true))

(declare-fun res!1095567 () Bool)

(declare-fun e!1641686 () Bool)

(assert (=> start!252778 (=> (not res!1095567) (not e!1641686))))

(declare-datatypes ((B!2411 0))(
  ( (B!2412 (val!9673 Int)) )
))
(declare-datatypes ((List!30106 0))(
  ( (Nil!30006) (Cons!30006 (h!35426 B!2411) (t!213155 List!30106)) )
))
(declare-fun refL!9 () List!30106)

(declare-fun isEmpty!17159 (List!30106) Bool)

(assert (=> start!252778 (= res!1095567 (not (isEmpty!17159 refL!9)))))

(assert (=> start!252778 e!1641686))

(declare-fun e!1641685 () Bool)

(assert (=> start!252778 e!1641685))

(declare-fun e!1641684 () Bool)

(assert (=> start!252778 e!1641684))

(declare-fun tp_is_empty!13691 () Bool)

(assert (=> start!252778 tp_is_empty!13691))

(declare-fun b!2600754 () Bool)

(declare-fun tp!823958 () Bool)

(assert (=> b!2600754 (= e!1641685 (and tp_is_empty!13691 tp!823958))))

(declare-fun b!2600755 () Bool)

(declare-fun res!1095569 () Bool)

(assert (=> b!2600755 (=> (not res!1095569) (not e!1641686))))

(declare-fun refHd!9 () B!2411)

(declare-fun head!5927 (List!30106) B!2411)

(assert (=> b!2600755 (= res!1095569 (= refHd!9 (head!5927 refL!9)))))

(declare-fun b!2600756 () Bool)

(declare-fun tp!823957 () Bool)

(assert (=> b!2600756 (= e!1641684 (and tp_is_empty!13691 tp!823957))))

(declare-fun b!2600757 () Bool)

(declare-fun l!3766 () List!30106)

(declare-fun ListPrimitiveSize!194 (List!30106) Int)

(assert (=> b!2600757 (= e!1641686 (< (ListPrimitiveSize!194 l!3766) 0))))

(declare-fun b!2600758 () Bool)

(declare-fun res!1095566 () Bool)

(assert (=> b!2600758 (=> (not res!1095566) (not e!1641686))))

(declare-fun contains!5550 (List!30106 B!2411) Bool)

(assert (=> b!2600758 (= res!1095566 (not (contains!5550 l!3766 refHd!9)))))

(declare-fun res!1095568 () Bool)

(assert (=> b!2600759 (=> (not res!1095568) (not e!1641686))))

(declare-fun lambda!97297 () Int)

(declare-fun forall!6185 (List!30106 Int) Bool)

(assert (=> b!2600759 (= res!1095568 (forall!6185 l!3766 lambda!97297))))

(assert (= (and start!252778 res!1095567) b!2600759))

(assert (= (and b!2600759 res!1095568) b!2600755))

(assert (= (and b!2600755 res!1095569) b!2600758))

(assert (= (and b!2600758 res!1095566) b!2600757))

(assert (= (and start!252778 (is-Cons!30006 refL!9)) b!2600754))

(assert (= (and start!252778 (is-Cons!30006 l!3766)) b!2600756))

(declare-fun m!2935985 () Bool)

(assert (=> b!2600755 m!2935985))

(declare-fun m!2935987 () Bool)

(assert (=> start!252778 m!2935987))

(declare-fun m!2935989 () Bool)

(assert (=> b!2600759 m!2935989))

(declare-fun m!2935991 () Bool)

(assert (=> b!2600758 m!2935991))

(declare-fun m!2935993 () Bool)

(assert (=> b!2600757 m!2935993))

(push 1)

(assert (not b!2600757))

(assert (not start!252778))

(assert (not b!2600755))

(assert (not b!2600759))

(assert (not b!2600758))

(assert tp_is_empty!13691)

(assert (not b!2600756))

(assert (not b!2600754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736801 () Bool)

(declare-fun res!1095586 () Bool)

(declare-fun e!1641702 () Bool)

(assert (=> d!736801 (=> res!1095586 e!1641702)))

(assert (=> d!736801 (= res!1095586 (is-Nil!30006 l!3766))))

(assert (=> d!736801 (= (forall!6185 l!3766 lambda!97297) e!1641702)))

(declare-fun b!2600786 () Bool)

(declare-fun e!1641703 () Bool)

(assert (=> b!2600786 (= e!1641702 e!1641703)))

(declare-fun res!1095587 () Bool)

(assert (=> b!2600786 (=> (not res!1095587) (not e!1641703))))

(declare-fun dynLambda!12689 (Int B!2411) Bool)

(assert (=> b!2600786 (= res!1095587 (dynLambda!12689 lambda!97297 (h!35426 l!3766)))))

(declare-fun b!2600787 () Bool)

(assert (=> b!2600787 (= e!1641703 (forall!6185 (t!213155 l!3766) lambda!97297))))

(assert (= (and d!736801 (not res!1095586)) b!2600786))

(assert (= (and b!2600786 res!1095587) b!2600787))

(declare-fun b_lambda!77859 () Bool)

(assert (=> (not b_lambda!77859) (not b!2600786)))

(declare-fun m!2936005 () Bool)

(assert (=> b!2600786 m!2936005))

(declare-fun m!2936007 () Bool)

(assert (=> b!2600787 m!2936007))

(assert (=> b!2600759 d!736801))

(declare-fun d!736803 () Bool)

(assert (=> d!736803 (= (head!5927 refL!9) (h!35426 refL!9))))

(assert (=> b!2600755 d!736803))

(declare-fun d!736805 () Bool)

(declare-fun lt!915316 () Int)

(assert (=> d!736805 (>= lt!915316 0)))

(declare-fun e!1641706 () Int)

(assert (=> d!736805 (= lt!915316 e!1641706)))

(declare-fun c!418657 () Bool)

(assert (=> d!736805 (= c!418657 (is-Nil!30006 l!3766))))

(assert (=> d!736805 (= (ListPrimitiveSize!194 l!3766) lt!915316)))

(declare-fun b!2600792 () Bool)

(assert (=> b!2600792 (= e!1641706 0)))

(declare-fun b!2600793 () Bool)

(assert (=> b!2600793 (= e!1641706 (+ 1 (ListPrimitiveSize!194 (t!213155 l!3766))))))

(assert (= (and d!736805 c!418657) b!2600792))

(assert (= (and d!736805 (not c!418657)) b!2600793))

(declare-fun m!2936009 () Bool)

(assert (=> b!2600793 m!2936009))

(assert (=> b!2600757 d!736805))

(declare-fun d!736809 () Bool)

(assert (=> d!736809 (= (isEmpty!17159 refL!9) (is-Nil!30006 refL!9))))

(assert (=> start!252778 d!736809))

(declare-fun d!736811 () Bool)

(declare-fun lt!915321 () Bool)

(declare-fun content!4259 (List!30106) (Set B!2411))

(assert (=> d!736811 (= lt!915321 (set.member refHd!9 (content!4259 l!3766)))))

(declare-fun e!1641713 () Bool)

(assert (=> d!736811 (= lt!915321 e!1641713)))

(declare-fun res!1095592 () Bool)

(assert (=> d!736811 (=> (not res!1095592) (not e!1641713))))

(assert (=> d!736811 (= res!1095592 (is-Cons!30006 l!3766))))

(assert (=> d!736811 (= (contains!5550 l!3766 refHd!9) lt!915321)))

(declare-fun b!2600802 () Bool)

(declare-fun e!1641714 () Bool)

(assert (=> b!2600802 (= e!1641713 e!1641714)))

(declare-fun res!1095593 () Bool)

(assert (=> b!2600802 (=> res!1095593 e!1641714)))

(assert (=> b!2600802 (= res!1095593 (= (h!35426 l!3766) refHd!9))))

(declare-fun b!2600803 () Bool)

(assert (=> b!2600803 (= e!1641714 (contains!5550 (t!213155 l!3766) refHd!9))))

(assert (= (and d!736811 res!1095592) b!2600802))

(assert (= (and b!2600802 (not res!1095593)) b!2600803))

(declare-fun m!2936011 () Bool)

(assert (=> d!736811 m!2936011))

(declare-fun m!2936013 () Bool)

(assert (=> d!736811 m!2936013))

(declare-fun m!2936015 () Bool)

(assert (=> b!2600803 m!2936015))

(assert (=> b!2600758 d!736811))

(declare-fun b!2600808 () Bool)

(declare-fun e!1641717 () Bool)

(declare-fun tp!823967 () Bool)

(assert (=> b!2600808 (= e!1641717 (and tp_is_empty!13691 tp!823967))))

(assert (=> b!2600754 (= tp!823958 e!1641717)))

(assert (= (and b!2600754 (is-Cons!30006 (t!213155 refL!9))) b!2600808))

(declare-fun b!2600809 () Bool)

(declare-fun e!1641718 () Bool)

(declare-fun tp!823968 () Bool)

(assert (=> b!2600809 (= e!1641718 (and tp_is_empty!13691 tp!823968))))

(assert (=> b!2600756 (= tp!823957 e!1641718)))

(assert (= (and b!2600756 (is-Cons!30006 (t!213155 l!3766))) b!2600809))

(declare-fun b_lambda!77861 () Bool)

(assert (= b_lambda!77859 (or b!2600759 b_lambda!77861)))

(declare-fun bs!473187 () Bool)

(declare-fun d!736813 () Bool)

(assert (= bs!473187 (and d!736813 b!2600759)))

(assert (=> bs!473187 (= (dynLambda!12689 lambda!97297 (h!35426 l!3766)) (contains!5550 refL!9 (h!35426 l!3766)))))

(declare-fun m!2936017 () Bool)

(assert (=> bs!473187 m!2936017))

(assert (=> b!2600786 d!736813))

(push 1)

(assert (not b!2600793))

(assert (not d!736811))

(assert (not b!2600803))

(assert (not b_lambda!77861))

(assert (not b!2600787))

(assert (not b!2600809))

(assert (not bs!473187))

(assert tp_is_empty!13691)

(assert (not b!2600808))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


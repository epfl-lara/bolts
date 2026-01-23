; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!252826 () Bool)

(assert start!252826)

(declare-fun b!2600935 () Bool)

(assert (=> b!2600935 true))

(declare-fun b!2600930 () Bool)

(declare-fun e!1641807 () Bool)

(declare-datatypes ((B!2419 0))(
  ( (B!2420 (val!9677 Int)) )
))
(declare-datatypes ((List!30110 0))(
  ( (Nil!30010) (Cons!30010 (h!35430 B!2419) (t!213159 List!30110)) )
))
(declare-fun l!3766 () List!30110)

(declare-fun ListPrimitiveSize!196 (List!30110) Int)

(assert (=> b!2600930 (= e!1641807 (>= (ListPrimitiveSize!196 (t!213159 l!3766)) (ListPrimitiveSize!196 l!3766)))))

(declare-fun b!2600931 () Bool)

(declare-fun e!1641806 () Bool)

(declare-fun tp_is_empty!13699 () Bool)

(declare-fun tp!823997 () Bool)

(assert (=> b!2600931 (= e!1641806 (and tp_is_empty!13699 tp!823997))))

(declare-fun b!2600932 () Bool)

(declare-fun res!1095675 () Bool)

(assert (=> b!2600932 (=> (not res!1095675) (not e!1641807))))

(declare-fun refHd!9 () B!2419)

(declare-fun contains!5554 (List!30110 B!2419) Bool)

(assert (=> b!2600932 (= res!1095675 (not (contains!5554 l!3766 refHd!9)))))

(declare-fun res!1095678 () Bool)

(assert (=> start!252826 (=> (not res!1095678) (not e!1641807))))

(declare-fun refL!9 () List!30110)

(declare-fun isEmpty!17163 (List!30110) Bool)

(assert (=> start!252826 (= res!1095678 (not (isEmpty!17163 refL!9)))))

(assert (=> start!252826 e!1641807))

(assert (=> start!252826 e!1641806))

(declare-fun e!1641808 () Bool)

(assert (=> start!252826 e!1641808))

(assert (=> start!252826 tp_is_empty!13699))

(declare-fun b!2600933 () Bool)

(declare-fun res!1095674 () Bool)

(assert (=> b!2600933 (=> (not res!1095674) (not e!1641807))))

(declare-fun head!5931 (List!30110) B!2419)

(assert (=> b!2600933 (= res!1095674 (= refHd!9 (head!5931 refL!9)))))

(declare-fun b!2600934 () Bool)

(declare-fun res!1095677 () Bool)

(assert (=> b!2600934 (=> (not res!1095677) (not e!1641807))))

(assert (=> b!2600934 (= res!1095677 (not (is-Nil!30010 l!3766)))))

(declare-fun res!1095676 () Bool)

(assert (=> b!2600935 (=> (not res!1095676) (not e!1641807))))

(declare-fun lambda!97315 () Int)

(declare-fun forall!6189 (List!30110 Int) Bool)

(assert (=> b!2600935 (= res!1095676 (forall!6189 l!3766 lambda!97315))))

(declare-fun b!2600936 () Bool)

(declare-fun tp!823998 () Bool)

(assert (=> b!2600936 (= e!1641808 (and tp_is_empty!13699 tp!823998))))

(assert (= (and start!252826 res!1095678) b!2600935))

(assert (= (and b!2600935 res!1095676) b!2600933))

(assert (= (and b!2600933 res!1095674) b!2600932))

(assert (= (and b!2600932 res!1095675) b!2600934))

(assert (= (and b!2600934 res!1095677) b!2600930))

(assert (= (and start!252826 (is-Cons!30010 refL!9)) b!2600931))

(assert (= (and start!252826 (is-Cons!30010 l!3766)) b!2600936))

(declare-fun m!2936089 () Bool)

(assert (=> b!2600935 m!2936089))

(declare-fun m!2936091 () Bool)

(assert (=> b!2600933 m!2936091))

(declare-fun m!2936093 () Bool)

(assert (=> b!2600930 m!2936093))

(declare-fun m!2936095 () Bool)

(assert (=> b!2600930 m!2936095))

(declare-fun m!2936097 () Bool)

(assert (=> b!2600932 m!2936097))

(declare-fun m!2936099 () Bool)

(assert (=> start!252826 m!2936099))

(push 1)

(assert (not b!2600933))

(assert (not start!252826))

(assert (not b!2600931))

(assert tp_is_empty!13699)

(assert (not b!2600936))

(assert (not b!2600935))

(assert (not b!2600932))

(assert (not b!2600930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!736855 () Bool)

(assert (=> d!736855 (= (isEmpty!17163 refL!9) (is-Nil!30010 refL!9))))

(assert (=> start!252826 d!736855))

(declare-fun d!736857 () Bool)

(declare-fun lt!915334 () Bool)

(declare-fun content!4262 (List!30110) (Set B!2419))

(assert (=> d!736857 (= lt!915334 (set.member refHd!9 (content!4262 l!3766)))))

(declare-fun e!1641825 () Bool)

(assert (=> d!736857 (= lt!915334 e!1641825)))

(declare-fun res!1095699 () Bool)

(assert (=> d!736857 (=> (not res!1095699) (not e!1641825))))

(assert (=> d!736857 (= res!1095699 (is-Cons!30010 l!3766))))

(assert (=> d!736857 (= (contains!5554 l!3766 refHd!9) lt!915334)))

(declare-fun b!2600966 () Bool)

(declare-fun e!1641824 () Bool)

(assert (=> b!2600966 (= e!1641825 e!1641824)))

(declare-fun res!1095698 () Bool)

(assert (=> b!2600966 (=> res!1095698 e!1641824)))

(assert (=> b!2600966 (= res!1095698 (= (h!35430 l!3766) refHd!9))))

(declare-fun b!2600967 () Bool)

(assert (=> b!2600967 (= e!1641824 (contains!5554 (t!213159 l!3766) refHd!9))))

(assert (= (and d!736857 res!1095699) b!2600966))

(assert (= (and b!2600966 (not res!1095698)) b!2600967))

(declare-fun m!2936113 () Bool)

(assert (=> d!736857 m!2936113))

(declare-fun m!2936115 () Bool)

(assert (=> d!736857 m!2936115))

(declare-fun m!2936117 () Bool)

(assert (=> b!2600967 m!2936117))

(assert (=> b!2600932 d!736857))

(declare-fun d!736859 () Bool)

(assert (=> d!736859 (= (head!5931 refL!9) (h!35430 refL!9))))

(assert (=> b!2600933 d!736859))

(declare-fun d!736861 () Bool)

(declare-fun res!1095704 () Bool)

(declare-fun e!1641830 () Bool)

(assert (=> d!736861 (=> res!1095704 e!1641830)))

(assert (=> d!736861 (= res!1095704 (is-Nil!30010 l!3766))))

(assert (=> d!736861 (= (forall!6189 l!3766 lambda!97315) e!1641830)))

(declare-fun b!2600972 () Bool)

(declare-fun e!1641831 () Bool)

(assert (=> b!2600972 (= e!1641830 e!1641831)))

(declare-fun res!1095705 () Bool)

(assert (=> b!2600972 (=> (not res!1095705) (not e!1641831))))

(declare-fun dynLambda!12691 (Int B!2419) Bool)

(assert (=> b!2600972 (= res!1095705 (dynLambda!12691 lambda!97315 (h!35430 l!3766)))))

(declare-fun b!2600973 () Bool)

(assert (=> b!2600973 (= e!1641831 (forall!6189 (t!213159 l!3766) lambda!97315))))

(assert (= (and d!736861 (not res!1095704)) b!2600972))

(assert (= (and b!2600972 res!1095705) b!2600973))

(declare-fun b_lambda!77883 () Bool)

(assert (=> (not b_lambda!77883) (not b!2600972)))

(declare-fun m!2936119 () Bool)

(assert (=> b!2600972 m!2936119))

(declare-fun m!2936121 () Bool)

(assert (=> b!2600973 m!2936121))

(assert (=> b!2600935 d!736861))

(declare-fun d!736865 () Bool)

(declare-fun lt!915337 () Int)

(assert (=> d!736865 (>= lt!915337 0)))

(declare-fun e!1641834 () Int)

(assert (=> d!736865 (= lt!915337 e!1641834)))

(declare-fun c!418663 () Bool)

(assert (=> d!736865 (= c!418663 (is-Nil!30010 (t!213159 l!3766)))))

(assert (=> d!736865 (= (ListPrimitiveSize!196 (t!213159 l!3766)) lt!915337)))

(declare-fun b!2600978 () Bool)

(assert (=> b!2600978 (= e!1641834 0)))

(declare-fun b!2600979 () Bool)

(assert (=> b!2600979 (= e!1641834 (+ 1 (ListPrimitiveSize!196 (t!213159 (t!213159 l!3766)))))))

(assert (= (and d!736865 c!418663) b!2600978))

(assert (= (and d!736865 (not c!418663)) b!2600979))

(declare-fun m!2936123 () Bool)

(assert (=> b!2600979 m!2936123))

(assert (=> b!2600930 d!736865))

(declare-fun d!736869 () Bool)

(declare-fun lt!915338 () Int)

(assert (=> d!736869 (>= lt!915338 0)))

(declare-fun e!1641835 () Int)

(assert (=> d!736869 (= lt!915338 e!1641835)))

(declare-fun c!418664 () Bool)

(assert (=> d!736869 (= c!418664 (is-Nil!30010 l!3766))))

(assert (=> d!736869 (= (ListPrimitiveSize!196 l!3766) lt!915338)))

(declare-fun b!2600980 () Bool)

(assert (=> b!2600980 (= e!1641835 0)))

(declare-fun b!2600981 () Bool)

(assert (=> b!2600981 (= e!1641835 (+ 1 (ListPrimitiveSize!196 (t!213159 l!3766))))))

(assert (= (and d!736869 c!418664) b!2600980))

(assert (= (and d!736869 (not c!418664)) b!2600981))

(assert (=> b!2600981 m!2936093))

(assert (=> b!2600930 d!736869))

(declare-fun b!2600986 () Bool)

(declare-fun e!1641838 () Bool)

(declare-fun tp!824007 () Bool)

(assert (=> b!2600986 (= e!1641838 (and tp_is_empty!13699 tp!824007))))

(assert (=> b!2600931 (= tp!823997 e!1641838)))

(assert (= (and b!2600931 (is-Cons!30010 (t!213159 refL!9))) b!2600986))

(declare-fun b!2600987 () Bool)

(declare-fun e!1641839 () Bool)

(declare-fun tp!824008 () Bool)

(assert (=> b!2600987 (= e!1641839 (and tp_is_empty!13699 tp!824008))))

(assert (=> b!2600936 (= tp!823998 e!1641839)))

(assert (= (and b!2600936 (is-Cons!30010 (t!213159 l!3766))) b!2600987))

(declare-fun b_lambda!77885 () Bool)

(assert (= b_lambda!77883 (or b!2600935 b_lambda!77885)))

(declare-fun bs!473197 () Bool)

(declare-fun d!736871 () Bool)

(assert (= bs!473197 (and d!736871 b!2600935)))

(assert (=> bs!473197 (= (dynLambda!12691 lambda!97315 (h!35430 l!3766)) (contains!5554 refL!9 (h!35430 l!3766)))))

(declare-fun m!2936125 () Bool)

(assert (=> bs!473197 m!2936125))

(assert (=> b!2600972 d!736871))

(push 1)

(assert (not b!2600973))

(assert tp_is_empty!13699)

(assert (not b!2600967))

(assert (not b!2600987))

(assert (not b!2600981))

(assert (not d!736857))

(assert (not b!2600986))

(assert (not b!2600979))

(assert (not b_lambda!77885))

(assert (not bs!473197))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


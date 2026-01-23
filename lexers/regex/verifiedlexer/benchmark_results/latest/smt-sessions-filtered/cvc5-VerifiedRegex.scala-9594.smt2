; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504678 () Bool)

(assert start!504678)

(declare-fun b!4845814 () Bool)

(declare-fun res!2067038 () Bool)

(declare-fun e!3028731 () Bool)

(assert (=> b!4845814 (=> (not res!2067038) (not e!3028731))))

(declare-fun e!3028730 () Bool)

(assert (=> b!4845814 (= res!2067038 e!3028730)))

(declare-fun res!2067039 () Bool)

(assert (=> b!4845814 (=> res!2067039 e!3028730)))

(declare-datatypes ((K!17257 0))(
  ( (K!17258 (val!22111 Int)) )
))
(declare-datatypes ((V!17503 0))(
  ( (V!17504 (val!22112 Int)) )
))
(declare-datatypes ((tuple2!59094 0))(
  ( (tuple2!59095 (_1!32841 K!17257) (_2!32841 V!17503)) )
))
(declare-datatypes ((List!55604 0))(
  ( (Nil!55480) (Cons!55480 (h!61917 tuple2!59094) (t!363100 List!55604)) )
))
(declare-datatypes ((tuple2!59096 0))(
  ( (tuple2!59097 (_1!32842 (_ BitVec 64)) (_2!32842 List!55604)) )
))
(declare-datatypes ((List!55605 0))(
  ( (Nil!55481) (Cons!55481 (h!61918 tuple2!59096) (t!363101 List!55605)) )
))
(declare-fun l!11108 () List!55605)

(assert (=> b!4845814 (= res!2067039 (not (is-Cons!55481 l!11108)))))

(declare-fun b!4845815 () Bool)

(declare-fun res!2067036 () Bool)

(assert (=> b!4845815 (=> (not res!2067036) (not e!3028731))))

(declare-fun lambda!242249 () Int)

(declare-fun forall!12914 (List!55605 Int) Bool)

(assert (=> b!4845815 (= res!2067036 (forall!12914 l!11108 lambda!242249))))

(declare-fun res!2067037 () Bool)

(assert (=> start!504678 (=> (not res!2067037) (not e!3028731))))

(declare-fun k!1656 () K!17257)

(declare-fun containsKeyBiggerList!759 (List!55605 K!17257) Bool)

(assert (=> start!504678 (= res!2067037 (containsKeyBiggerList!759 l!11108 k!1656))))

(assert (=> start!504678 e!3028731))

(declare-fun e!3028729 () Bool)

(assert (=> start!504678 e!3028729))

(declare-fun tp_is_empty!35093 () Bool)

(assert (=> start!504678 tp_is_empty!35093))

(declare-fun b!4845816 () Bool)

(assert (=> b!4845816 (= e!3028731 (not (is-Cons!55481 l!11108)))))

(declare-fun b!4845817 () Bool)

(declare-fun tp!1364370 () Bool)

(declare-fun tp!1364369 () Bool)

(assert (=> b!4845817 (= e!3028729 (and tp!1364370 tp!1364369))))

(declare-fun b!4845818 () Bool)

(declare-fun containsKey!4647 (List!55604 K!17257) Bool)

(assert (=> b!4845818 (= e!3028730 (not (containsKey!4647 (_2!32842 (h!61918 l!11108)) k!1656)))))

(assert (= (and start!504678 res!2067037) b!4845815))

(assert (= (and b!4845815 res!2067036) b!4845814))

(assert (= (and b!4845814 (not res!2067039)) b!4845818))

(assert (= (and b!4845814 res!2067038) b!4845816))

(assert (= (and start!504678 (is-Cons!55481 l!11108)) b!4845817))

(declare-fun m!5843868 () Bool)

(assert (=> b!4845815 m!5843868))

(declare-fun m!5843870 () Bool)

(assert (=> start!504678 m!5843870))

(declare-fun m!5843872 () Bool)

(assert (=> b!4845818 m!5843872))

(push 1)

(assert tp_is_empty!35093)

(assert (not start!504678))

(assert (not b!4845818))

(assert (not b!4845815))

(assert (not b!4845817))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554565 () Bool)

(declare-fun res!2067060 () Bool)

(declare-fun e!3028749 () Bool)

(assert (=> d!1554565 (=> res!2067060 e!3028749)))

(declare-fun e!3028747 () Bool)

(assert (=> d!1554565 (= res!2067060 e!3028747)))

(declare-fun res!2067058 () Bool)

(assert (=> d!1554565 (=> (not res!2067058) (not e!3028747))))

(assert (=> d!1554565 (= res!2067058 (is-Cons!55481 l!11108))))

(assert (=> d!1554565 (= (containsKeyBiggerList!759 l!11108 k!1656) e!3028749)))

(declare-fun b!4845840 () Bool)

(assert (=> b!4845840 (= e!3028747 (containsKey!4647 (_2!32842 (h!61918 l!11108)) k!1656))))

(declare-fun b!4845841 () Bool)

(declare-fun e!3028748 () Bool)

(assert (=> b!4845841 (= e!3028749 e!3028748)))

(declare-fun res!2067059 () Bool)

(assert (=> b!4845841 (=> (not res!2067059) (not e!3028748))))

(assert (=> b!4845841 (= res!2067059 (is-Cons!55481 l!11108))))

(declare-fun b!4845842 () Bool)

(assert (=> b!4845842 (= e!3028748 (containsKeyBiggerList!759 (t!363101 l!11108) k!1656))))

(assert (= (and d!1554565 res!2067058) b!4845840))

(assert (= (and d!1554565 (not res!2067060)) b!4845841))

(assert (= (and b!4845841 res!2067059) b!4845842))

(assert (=> b!4845840 m!5843872))

(declare-fun m!5843880 () Bool)

(assert (=> b!4845842 m!5843880))

(assert (=> start!504678 d!1554565))

(declare-fun d!1554567 () Bool)

(declare-fun res!2067065 () Bool)

(declare-fun e!3028754 () Bool)

(assert (=> d!1554567 (=> res!2067065 e!3028754)))

(assert (=> d!1554567 (= res!2067065 (is-Nil!55481 l!11108))))

(assert (=> d!1554567 (= (forall!12914 l!11108 lambda!242249) e!3028754)))

(declare-fun b!4845847 () Bool)

(declare-fun e!3028755 () Bool)

(assert (=> b!4845847 (= e!3028754 e!3028755)))

(declare-fun res!2067066 () Bool)

(assert (=> b!4845847 (=> (not res!2067066) (not e!3028755))))

(declare-fun dynLambda!22338 (Int tuple2!59096) Bool)

(assert (=> b!4845847 (= res!2067066 (dynLambda!22338 lambda!242249 (h!61918 l!11108)))))

(declare-fun b!4845848 () Bool)

(assert (=> b!4845848 (= e!3028755 (forall!12914 (t!363101 l!11108) lambda!242249))))

(assert (= (and d!1554567 (not res!2067065)) b!4845847))

(assert (= (and b!4845847 res!2067066) b!4845848))

(declare-fun b_lambda!192331 () Bool)

(assert (=> (not b_lambda!192331) (not b!4845847)))

(declare-fun m!5843882 () Bool)

(assert (=> b!4845847 m!5843882))

(declare-fun m!5843884 () Bool)

(assert (=> b!4845848 m!5843884))

(assert (=> b!4845815 d!1554567))

(declare-fun d!1554569 () Bool)

(declare-fun res!2067071 () Bool)

(declare-fun e!3028760 () Bool)

(assert (=> d!1554569 (=> res!2067071 e!3028760)))

(assert (=> d!1554569 (= res!2067071 (and (is-Cons!55480 (_2!32842 (h!61918 l!11108))) (= (_1!32841 (h!61917 (_2!32842 (h!61918 l!11108)))) k!1656)))))

(assert (=> d!1554569 (= (containsKey!4647 (_2!32842 (h!61918 l!11108)) k!1656) e!3028760)))

(declare-fun b!4845853 () Bool)

(declare-fun e!3028761 () Bool)

(assert (=> b!4845853 (= e!3028760 e!3028761)))

(declare-fun res!2067072 () Bool)

(assert (=> b!4845853 (=> (not res!2067072) (not e!3028761))))

(assert (=> b!4845853 (= res!2067072 (is-Cons!55480 (_2!32842 (h!61918 l!11108))))))

(declare-fun b!4845854 () Bool)

(assert (=> b!4845854 (= e!3028761 (containsKey!4647 (t!363100 (_2!32842 (h!61918 l!11108))) k!1656))))

(assert (= (and d!1554569 (not res!2067071)) b!4845853))

(assert (= (and b!4845853 res!2067072) b!4845854))

(declare-fun m!5843886 () Bool)

(assert (=> b!4845854 m!5843886))

(assert (=> b!4845818 d!1554569))

(declare-fun tp!1364379 () Bool)

(declare-fun b!4845859 () Bool)

(declare-fun e!3028764 () Bool)

(declare-fun tp_is_empty!35097 () Bool)

(assert (=> b!4845859 (= e!3028764 (and tp_is_empty!35093 tp_is_empty!35097 tp!1364379))))

(assert (=> b!4845817 (= tp!1364370 e!3028764)))

(assert (= (and b!4845817 (is-Cons!55480 (_2!32842 (h!61918 l!11108)))) b!4845859))

(declare-fun b!4845864 () Bool)

(declare-fun e!3028767 () Bool)

(declare-fun tp!1364384 () Bool)

(declare-fun tp!1364385 () Bool)

(assert (=> b!4845864 (= e!3028767 (and tp!1364384 tp!1364385))))

(assert (=> b!4845817 (= tp!1364369 e!3028767)))

(assert (= (and b!4845817 (is-Cons!55481 (t!363101 l!11108))) b!4845864))

(declare-fun b_lambda!192333 () Bool)

(assert (= b_lambda!192331 (or b!4845815 b_lambda!192333)))

(declare-fun bs!1172283 () Bool)

(declare-fun d!1554573 () Bool)

(assert (= bs!1172283 (and d!1554573 b!4845815)))

(declare-fun noDuplicateKeys!2572 (List!55604) Bool)

(assert (=> bs!1172283 (= (dynLambda!22338 lambda!242249 (h!61918 l!11108)) (noDuplicateKeys!2572 (_2!32842 (h!61918 l!11108))))))

(declare-fun m!5843888 () Bool)

(assert (=> bs!1172283 m!5843888))

(assert (=> b!4845847 d!1554573))

(push 1)

(assert (not b!4845859))

(assert (not b!4845840))

(assert (not b!4845854))

(assert (not b!4845848))

(assert tp_is_empty!35097)

(assert (not b!4845842))

(assert tp_is_empty!35093)

(assert (not b!4845864))

(assert (not bs!1172283))

(assert (not b_lambda!192333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


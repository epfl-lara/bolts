; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!508002 () Bool)

(assert start!508002)

(declare-fun res!2075132 () Bool)

(declare-fun e!3039185 () Bool)

(assert (=> start!508002 (=> (not res!2075132) (not e!3039185))))

(declare-datatypes ((V!17920 0))(
  ( (V!17921 (val!22477 Int)) )
))
(declare-datatypes ((K!17650 0))(
  ( (K!17651 (val!22478 Int)) )
))
(declare-datatypes ((tuple2!59654 0))(
  ( (tuple2!59655 (_1!33130 K!17650) (_2!33130 V!17920)) )
))
(declare-datatypes ((List!55948 0))(
  ( (Nil!55824) (Cons!55824 (h!62272 tuple2!59654) (t!363568 List!55948)) )
))
(declare-datatypes ((tuple2!59656 0))(
  ( (tuple2!59657 (_1!33131 (_ BitVec 64)) (_2!33131 List!55948)) )
))
(declare-datatypes ((List!55949 0))(
  ( (Nil!55825) (Cons!55825 (h!62273 tuple2!59656) (t!363569 List!55949)) )
))
(declare-fun l!10962 () List!55949)

(declare-fun lambda!243156 () Int)

(declare-fun forall!13027 (List!55949 Int) Bool)

(assert (=> start!508002 (= res!2075132 (forall!13027 l!10962 lambda!243156))))

(assert (=> start!508002 e!3039185))

(declare-fun e!3039184 () Bool)

(assert (=> start!508002 e!3039184))

(declare-fun b!4861016 () Bool)

(declare-fun ListPrimitiveSize!372 (List!55949) Int)

(assert (=> b!4861016 (= e!3039185 (< (ListPrimitiveSize!372 l!10962) 0))))

(declare-fun b!4861017 () Bool)

(declare-fun tp!1367626 () Bool)

(declare-fun tp!1367627 () Bool)

(assert (=> b!4861017 (= e!3039184 (and tp!1367626 tp!1367627))))

(assert (= (and start!508002 res!2075132) b!4861016))

(assert (= (and start!508002 (is-Cons!55825 l!10962)) b!4861017))

(declare-fun m!5858830 () Bool)

(assert (=> start!508002 m!5858830))

(declare-fun m!5858832 () Bool)

(assert (=> b!4861016 m!5858832))

(push 1)

(assert (not b!4861016))

(assert (not start!508002))

(assert (not b!4861017))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1560234 () Bool)

(declare-fun lt!1992357 () Int)

(assert (=> d!1560234 (>= lt!1992357 0)))

(declare-fun e!3039194 () Int)

(assert (=> d!1560234 (= lt!1992357 e!3039194)))

(declare-fun c!826827 () Bool)

(assert (=> d!1560234 (= c!826827 (is-Nil!55825 l!10962))))

(assert (=> d!1560234 (= (ListPrimitiveSize!372 l!10962) lt!1992357)))

(declare-fun b!4861028 () Bool)

(assert (=> b!4861028 (= e!3039194 0)))

(declare-fun b!4861029 () Bool)

(assert (=> b!4861029 (= e!3039194 (+ 1 (ListPrimitiveSize!372 (t!363569 l!10962))))))

(assert (= (and d!1560234 c!826827) b!4861028))

(assert (= (and d!1560234 (not c!826827)) b!4861029))

(declare-fun m!5858838 () Bool)

(assert (=> b!4861029 m!5858838))

(assert (=> b!4861016 d!1560234))

(declare-fun d!1560236 () Bool)

(declare-fun res!2075140 () Bool)

(declare-fun e!3039199 () Bool)

(assert (=> d!1560236 (=> res!2075140 e!3039199)))

(assert (=> d!1560236 (= res!2075140 (is-Nil!55825 l!10962))))

(assert (=> d!1560236 (= (forall!13027 l!10962 lambda!243156) e!3039199)))

(declare-fun b!4861034 () Bool)

(declare-fun e!3039200 () Bool)

(assert (=> b!4861034 (= e!3039199 e!3039200)))

(declare-fun res!2075141 () Bool)

(assert (=> b!4861034 (=> (not res!2075141) (not e!3039200))))

(declare-fun dynLambda!22399 (Int tuple2!59656) Bool)

(assert (=> b!4861034 (= res!2075141 (dynLambda!22399 lambda!243156 (h!62273 l!10962)))))

(declare-fun b!4861035 () Bool)

(assert (=> b!4861035 (= e!3039200 (forall!13027 (t!363569 l!10962) lambda!243156))))

(assert (= (and d!1560236 (not res!2075140)) b!4861034))

(assert (= (and b!4861034 res!2075141) b!4861035))

(declare-fun b_lambda!193337 () Bool)

(assert (=> (not b_lambda!193337) (not b!4861034)))

(declare-fun m!5858840 () Bool)

(assert (=> b!4861034 m!5858840))

(declare-fun m!5858842 () Bool)

(assert (=> b!4861035 m!5858842))

(assert (=> start!508002 d!1560236))

(declare-fun tp_is_empty!35605 () Bool)

(declare-fun tp_is_empty!35607 () Bool)

(declare-fun b!4861040 () Bool)

(declare-fun tp!1367636 () Bool)

(declare-fun e!3039203 () Bool)

(assert (=> b!4861040 (= e!3039203 (and tp_is_empty!35605 tp_is_empty!35607 tp!1367636))))

(assert (=> b!4861017 (= tp!1367626 e!3039203)))

(assert (= (and b!4861017 (is-Cons!55824 (_2!33131 (h!62273 l!10962)))) b!4861040))

(declare-fun b!4861049 () Bool)

(declare-fun e!3039208 () Bool)

(declare-fun tp!1367641 () Bool)

(declare-fun tp!1367642 () Bool)

(assert (=> b!4861049 (= e!3039208 (and tp!1367641 tp!1367642))))

(assert (=> b!4861017 (= tp!1367627 e!3039208)))

(assert (= (and b!4861017 (is-Cons!55825 (t!363569 l!10962))) b!4861049))

(declare-fun b_lambda!193339 () Bool)

(assert (= b_lambda!193337 (or start!508002 b_lambda!193339)))

(declare-fun bs!1173905 () Bool)

(declare-fun d!1560240 () Bool)

(assert (= bs!1173905 (and d!1560240 start!508002)))

(declare-fun noDuplicateKeys!2651 (List!55948) Bool)

(assert (=> bs!1173905 (= (dynLambda!22399 lambda!243156 (h!62273 l!10962)) (noDuplicateKeys!2651 (_2!33131 (h!62273 l!10962))))))

(declare-fun m!5858844 () Bool)

(assert (=> bs!1173905 m!5858844))

(assert (=> b!4861034 d!1560240))

(push 1)

(assert (not b!4861049))

(assert (not b!4861029))

(assert (not bs!1173905))

(assert tp_is_empty!35607)

(assert (not b_lambda!193339))

(assert (not b!4861035))

(assert (not b!4861040))

(assert tp_is_empty!35605)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


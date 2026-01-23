; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504642 () Bool)

(assert start!504642)

(declare-fun res!2066918 () Bool)

(declare-fun e!3028587 () Bool)

(assert (=> start!504642 (=> (not res!2066918) (not e!3028587))))

(declare-datatypes ((K!17247 0))(
  ( (K!17248 (val!22103 Int)) )
))
(declare-datatypes ((V!17493 0))(
  ( (V!17494 (val!22104 Int)) )
))
(declare-datatypes ((tuple2!59078 0))(
  ( (tuple2!59079 (_1!32833 K!17247) (_2!32833 V!17493)) )
))
(declare-datatypes ((List!55596 0))(
  ( (Nil!55472) (Cons!55472 (h!61909 tuple2!59078) (t!363092 List!55596)) )
))
(declare-datatypes ((tuple2!59080 0))(
  ( (tuple2!59081 (_1!32834 (_ BitVec 64)) (_2!32834 List!55596)) )
))
(declare-datatypes ((List!55597 0))(
  ( (Nil!55473) (Cons!55473 (h!61910 tuple2!59080) (t!363093 List!55597)) )
))
(declare-fun l!11108 () List!55597)

(declare-fun k!1656 () K!17247)

(declare-fun containsKeyBiggerList!755 (List!55597 K!17247) Bool)

(assert (=> start!504642 (= res!2066918 (containsKeyBiggerList!755 l!11108 k!1656))))

(assert (=> start!504642 e!3028587))

(declare-fun e!3028588 () Bool)

(assert (=> start!504642 e!3028588))

(declare-fun tp_is_empty!35077 () Bool)

(assert (=> start!504642 tp_is_empty!35077))

(declare-fun b!4845616 () Bool)

(declare-fun res!2066919 () Bool)

(assert (=> b!4845616 (=> (not res!2066919) (not e!3028587))))

(declare-fun lambda!242237 () Int)

(declare-fun forall!12910 (List!55597 Int) Bool)

(assert (=> b!4845616 (= res!2066919 (forall!12910 l!11108 lambda!242237))))

(declare-fun b!4845617 () Bool)

(declare-fun ListPrimitiveSize!354 (List!55597) Int)

(assert (=> b!4845617 (= e!3028587 (< (ListPrimitiveSize!354 l!11108) 0))))

(declare-fun b!4845618 () Bool)

(declare-fun tp!1364309 () Bool)

(declare-fun tp!1364310 () Bool)

(assert (=> b!4845618 (= e!3028588 (and tp!1364309 tp!1364310))))

(assert (= (and start!504642 res!2066918) b!4845616))

(assert (= (and b!4845616 res!2066919) b!4845617))

(assert (= (and start!504642 (is-Cons!55473 l!11108)) b!4845618))

(declare-fun m!5843788 () Bool)

(assert (=> start!504642 m!5843788))

(declare-fun m!5843790 () Bool)

(assert (=> b!4845616 m!5843790))

(declare-fun m!5843792 () Bool)

(assert (=> b!4845617 m!5843792))

(push 1)

(assert (not b!4845617))

(assert (not start!504642))

(assert (not b!4845616))

(assert (not b!4845618))

(assert tp_is_empty!35077)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554523 () Bool)

(declare-fun res!2066930 () Bool)

(declare-fun e!3028599 () Bool)

(assert (=> d!1554523 (=> res!2066930 e!3028599)))

(assert (=> d!1554523 (= res!2066930 (is-Nil!55473 l!11108))))

(assert (=> d!1554523 (= (forall!12910 l!11108 lambda!242237) e!3028599)))

(declare-fun b!4845632 () Bool)

(declare-fun e!3028600 () Bool)

(assert (=> b!4845632 (= e!3028599 e!3028600)))

(declare-fun res!2066931 () Bool)

(assert (=> b!4845632 (=> (not res!2066931) (not e!3028600))))

(declare-fun dynLambda!22334 (Int tuple2!59080) Bool)

(assert (=> b!4845632 (= res!2066931 (dynLambda!22334 lambda!242237 (h!61910 l!11108)))))

(declare-fun b!4845633 () Bool)

(assert (=> b!4845633 (= e!3028600 (forall!12910 (t!363093 l!11108) lambda!242237))))

(assert (= (and d!1554523 (not res!2066930)) b!4845632))

(assert (= (and b!4845632 res!2066931) b!4845633))

(declare-fun b_lambda!192315 () Bool)

(assert (=> (not b_lambda!192315) (not b!4845632)))

(declare-fun m!5843800 () Bool)

(assert (=> b!4845632 m!5843800))

(declare-fun m!5843802 () Bool)

(assert (=> b!4845633 m!5843802))

(assert (=> b!4845616 d!1554523))

(declare-fun d!1554525 () Bool)

(declare-fun res!2066939 () Bool)

(declare-fun e!3028609 () Bool)

(assert (=> d!1554525 (=> res!2066939 e!3028609)))

(declare-fun e!3028607 () Bool)

(assert (=> d!1554525 (= res!2066939 e!3028607)))

(declare-fun res!2066938 () Bool)

(assert (=> d!1554525 (=> (not res!2066938) (not e!3028607))))

(assert (=> d!1554525 (= res!2066938 (is-Cons!55473 l!11108))))

(assert (=> d!1554525 (= (containsKeyBiggerList!755 l!11108 k!1656) e!3028609)))

(declare-fun b!4845640 () Bool)

(declare-fun containsKey!4644 (List!55596 K!17247) Bool)

(assert (=> b!4845640 (= e!3028607 (containsKey!4644 (_2!32834 (h!61910 l!11108)) k!1656))))

(declare-fun b!4845641 () Bool)

(declare-fun e!3028608 () Bool)

(assert (=> b!4845641 (= e!3028609 e!3028608)))

(declare-fun res!2066940 () Bool)

(assert (=> b!4845641 (=> (not res!2066940) (not e!3028608))))

(assert (=> b!4845641 (= res!2066940 (is-Cons!55473 l!11108))))

(declare-fun b!4845642 () Bool)

(assert (=> b!4845642 (= e!3028608 (containsKeyBiggerList!755 (t!363093 l!11108) k!1656))))

(assert (= (and d!1554525 res!2066938) b!4845640))

(assert (= (and d!1554525 (not res!2066939)) b!4845641))

(assert (= (and b!4845641 res!2066940) b!4845642))

(declare-fun m!5843804 () Bool)

(assert (=> b!4845640 m!5843804))

(declare-fun m!5843806 () Bool)

(assert (=> b!4845642 m!5843806))

(assert (=> start!504642 d!1554525))

(declare-fun d!1554529 () Bool)

(declare-fun lt!1987918 () Int)

(assert (=> d!1554529 (>= lt!1987918 0)))

(declare-fun e!3028616 () Int)

(assert (=> d!1554529 (= lt!1987918 e!3028616)))

(declare-fun c!824961 () Bool)

(assert (=> d!1554529 (= c!824961 (is-Nil!55473 l!11108))))

(assert (=> d!1554529 (= (ListPrimitiveSize!354 l!11108) lt!1987918)))

(declare-fun b!4845651 () Bool)

(assert (=> b!4845651 (= e!3028616 0)))

(declare-fun b!4845652 () Bool)

(assert (=> b!4845652 (= e!3028616 (+ 1 (ListPrimitiveSize!354 (t!363093 l!11108))))))

(assert (= (and d!1554529 c!824961) b!4845651))

(assert (= (and d!1554529 (not c!824961)) b!4845652))

(declare-fun m!5843808 () Bool)

(assert (=> b!4845652 m!5843808))

(assert (=> b!4845617 d!1554529))

(declare-fun tp!1364319 () Bool)

(declare-fun b!4845657 () Bool)

(declare-fun e!3028619 () Bool)

(declare-fun tp_is_empty!35081 () Bool)

(assert (=> b!4845657 (= e!3028619 (and tp_is_empty!35077 tp_is_empty!35081 tp!1364319))))

(assert (=> b!4845618 (= tp!1364309 e!3028619)))

(assert (= (and b!4845618 (is-Cons!55472 (_2!32834 (h!61910 l!11108)))) b!4845657))

(declare-fun b!4845662 () Bool)

(declare-fun e!3028622 () Bool)

(declare-fun tp!1364324 () Bool)

(declare-fun tp!1364325 () Bool)

(assert (=> b!4845662 (= e!3028622 (and tp!1364324 tp!1364325))))

(assert (=> b!4845618 (= tp!1364310 e!3028622)))

(assert (= (and b!4845618 (is-Cons!55473 (t!363093 l!11108))) b!4845662))

(declare-fun b_lambda!192317 () Bool)

(assert (= b_lambda!192315 (or b!4845616 b_lambda!192317)))

(declare-fun bs!1172275 () Bool)

(declare-fun d!1554531 () Bool)

(assert (= bs!1172275 (and d!1554531 b!4845616)))

(declare-fun noDuplicateKeys!2569 (List!55596) Bool)

(assert (=> bs!1172275 (= (dynLambda!22334 lambda!242237 (h!61910 l!11108)) (noDuplicateKeys!2569 (_2!32834 (h!61910 l!11108))))))

(declare-fun m!5843810 () Bool)

(assert (=> bs!1172275 m!5843810))

(assert (=> b!4845632 d!1554531))

(push 1)

(assert (not b!4845657))

(assert (not b!4845640))

(assert tp_is_empty!35077)

(assert (not b!4845633))

(assert (not bs!1172275))

(assert (not b!4845642))

(assert (not b!4845662))

(assert tp_is_empty!35081)

(assert (not b_lambda!192317))

(assert (not b!4845652))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


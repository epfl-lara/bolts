; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504566 () Bool)

(assert start!504566)

(declare-fun b!4845158 () Bool)

(declare-fun e!3028254 () Bool)

(declare-fun tp!1364190 () Bool)

(declare-fun tp!1364189 () Bool)

(assert (=> b!4845158 (= e!3028254 (and tp!1364190 tp!1364189))))

(declare-fun b!4845159 () Bool)

(declare-fun res!2066589 () Bool)

(declare-fun e!3028253 () Bool)

(assert (=> b!4845159 (=> (not res!2066589) (not e!3028253))))

(declare-datatypes ((K!17227 0))(
  ( (K!17228 (val!22087 Int)) )
))
(declare-datatypes ((V!17473 0))(
  ( (V!17474 (val!22088 Int)) )
))
(declare-datatypes ((tuple2!59046 0))(
  ( (tuple2!59047 (_1!32817 K!17227) (_2!32817 V!17473)) )
))
(declare-datatypes ((List!55580 0))(
  ( (Nil!55456) (Cons!55456 (h!61893 tuple2!59046) (t!363076 List!55580)) )
))
(declare-datatypes ((tuple2!59048 0))(
  ( (tuple2!59049 (_1!32818 (_ BitVec 64)) (_2!32818 List!55580)) )
))
(declare-datatypes ((List!55581 0))(
  ( (Nil!55457) (Cons!55457 (h!61894 tuple2!59048) (t!363077 List!55581)) )
))
(declare-fun l!11108 () List!55581)

(assert (=> b!4845159 (= res!2066589 (is-Cons!55457 l!11108))))

(declare-fun b!4845160 () Bool)

(declare-fun noDuplicateKeys!2563 (List!55580) Bool)

(assert (=> b!4845160 (= e!3028253 (not (noDuplicateKeys!2563 (_2!32818 (h!61894 l!11108)))))))

(declare-fun res!2066590 () Bool)

(assert (=> start!504566 (=> (not res!2066590) (not e!3028253))))

(declare-fun k!1656 () K!17227)

(declare-fun containsKeyBiggerList!747 (List!55581 K!17227) Bool)

(assert (=> start!504566 (= res!2066590 (containsKeyBiggerList!747 l!11108 k!1656))))

(assert (=> start!504566 e!3028253))

(assert (=> start!504566 e!3028254))

(declare-fun tp_is_empty!35045 () Bool)

(assert (=> start!504566 tp_is_empty!35045))

(declare-fun b!4845161 () Bool)

(declare-fun res!2066588 () Bool)

(assert (=> b!4845161 (=> (not res!2066588) (not e!3028253))))

(declare-fun containsKey!4636 (List!55580 K!17227) Bool)

(assert (=> b!4845161 (= res!2066588 (containsKey!4636 (_2!32818 (h!61894 l!11108)) k!1656))))

(declare-fun b!4845162 () Bool)

(declare-fun res!2066591 () Bool)

(assert (=> b!4845162 (=> (not res!2066591) (not e!3028253))))

(declare-fun lambda!242209 () Int)

(declare-fun forall!12902 (List!55581 Int) Bool)

(assert (=> b!4845162 (= res!2066591 (forall!12902 l!11108 lambda!242209))))

(assert (= (and start!504566 res!2066590) b!4845162))

(assert (= (and b!4845162 res!2066591) b!4845159))

(assert (= (and b!4845159 res!2066589) b!4845161))

(assert (= (and b!4845161 res!2066588) b!4845160))

(assert (= (and start!504566 (is-Cons!55457 l!11108)) b!4845158))

(declare-fun m!5843596 () Bool)

(assert (=> b!4845160 m!5843596))

(declare-fun m!5843598 () Bool)

(assert (=> start!504566 m!5843598))

(declare-fun m!5843600 () Bool)

(assert (=> b!4845161 m!5843600))

(declare-fun m!5843602 () Bool)

(assert (=> b!4845162 m!5843602))

(push 1)

(assert (not start!504566))

(assert (not b!4845160))

(assert tp_is_empty!35045)

(assert (not b!4845161))

(assert (not b!4845158))

(assert (not b!4845162))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554429 () Bool)

(declare-fun res!2066608 () Bool)

(declare-fun e!3028265 () Bool)

(assert (=> d!1554429 (=> res!2066608 e!3028265)))

(assert (=> d!1554429 (= res!2066608 (is-Nil!55457 l!11108))))

(assert (=> d!1554429 (= (forall!12902 l!11108 lambda!242209) e!3028265)))

(declare-fun b!4845182 () Bool)

(declare-fun e!3028266 () Bool)

(assert (=> b!4845182 (= e!3028265 e!3028266)))

(declare-fun res!2066609 () Bool)

(assert (=> b!4845182 (=> (not res!2066609) (not e!3028266))))

(declare-fun dynLambda!22329 (Int tuple2!59048) Bool)

(assert (=> b!4845182 (= res!2066609 (dynLambda!22329 lambda!242209 (h!61894 l!11108)))))

(declare-fun b!4845183 () Bool)

(assert (=> b!4845183 (= e!3028266 (forall!12902 (t!363077 l!11108) lambda!242209))))

(assert (= (and d!1554429 (not res!2066608)) b!4845182))

(assert (= (and b!4845182 res!2066609) b!4845183))

(declare-fun b_lambda!192279 () Bool)

(assert (=> (not b_lambda!192279) (not b!4845182)))

(declare-fun m!5843612 () Bool)

(assert (=> b!4845182 m!5843612))

(declare-fun m!5843614 () Bool)

(assert (=> b!4845183 m!5843614))

(assert (=> b!4845162 d!1554429))

(declare-fun d!1554431 () Bool)

(declare-fun res!2066614 () Bool)

(declare-fun e!3028271 () Bool)

(assert (=> d!1554431 (=> res!2066614 e!3028271)))

(assert (=> d!1554431 (= res!2066614 (and (is-Cons!55456 (_2!32818 (h!61894 l!11108))) (= (_1!32817 (h!61893 (_2!32818 (h!61894 l!11108)))) k!1656)))))

(assert (=> d!1554431 (= (containsKey!4636 (_2!32818 (h!61894 l!11108)) k!1656) e!3028271)))

(declare-fun b!4845188 () Bool)

(declare-fun e!3028272 () Bool)

(assert (=> b!4845188 (= e!3028271 e!3028272)))

(declare-fun res!2066615 () Bool)

(assert (=> b!4845188 (=> (not res!2066615) (not e!3028272))))

(assert (=> b!4845188 (= res!2066615 (is-Cons!55456 (_2!32818 (h!61894 l!11108))))))

(declare-fun b!4845189 () Bool)

(assert (=> b!4845189 (= e!3028272 (containsKey!4636 (t!363076 (_2!32818 (h!61894 l!11108))) k!1656))))

(assert (= (and d!1554431 (not res!2066614)) b!4845188))

(assert (= (and b!4845188 res!2066615) b!4845189))

(declare-fun m!5843616 () Bool)

(assert (=> b!4845189 m!5843616))

(assert (=> b!4845161 d!1554431))

(declare-fun d!1554433 () Bool)

(declare-fun res!2066624 () Bool)

(declare-fun e!3028280 () Bool)

(assert (=> d!1554433 (=> res!2066624 e!3028280)))

(declare-fun e!3028281 () Bool)

(assert (=> d!1554433 (= res!2066624 e!3028281)))

(declare-fun res!2066622 () Bool)

(assert (=> d!1554433 (=> (not res!2066622) (not e!3028281))))

(assert (=> d!1554433 (= res!2066622 (is-Cons!55457 l!11108))))

(assert (=> d!1554433 (= (containsKeyBiggerList!747 l!11108 k!1656) e!3028280)))

(declare-fun b!4845196 () Bool)

(assert (=> b!4845196 (= e!3028281 (containsKey!4636 (_2!32818 (h!61894 l!11108)) k!1656))))

(declare-fun b!4845197 () Bool)

(declare-fun e!3028279 () Bool)

(assert (=> b!4845197 (= e!3028280 e!3028279)))

(declare-fun res!2066623 () Bool)

(assert (=> b!4845197 (=> (not res!2066623) (not e!3028279))))

(assert (=> b!4845197 (= res!2066623 (is-Cons!55457 l!11108))))

(declare-fun b!4845198 () Bool)

(assert (=> b!4845198 (= e!3028279 (containsKeyBiggerList!747 (t!363077 l!11108) k!1656))))

(assert (= (and d!1554433 res!2066622) b!4845196))

(assert (= (and d!1554433 (not res!2066624)) b!4845197))

(assert (= (and b!4845197 res!2066623) b!4845198))

(assert (=> b!4845196 m!5843600))

(declare-fun m!5843618 () Bool)

(assert (=> b!4845198 m!5843618))

(assert (=> start!504566 d!1554433))

(declare-fun d!1554435 () Bool)

(declare-fun res!2066629 () Bool)

(declare-fun e!3028286 () Bool)

(assert (=> d!1554435 (=> res!2066629 e!3028286)))

(assert (=> d!1554435 (= res!2066629 (not (is-Cons!55456 (_2!32818 (h!61894 l!11108)))))))

(assert (=> d!1554435 (= (noDuplicateKeys!2563 (_2!32818 (h!61894 l!11108))) e!3028286)))

(declare-fun b!4845203 () Bool)

(declare-fun e!3028287 () Bool)

(assert (=> b!4845203 (= e!3028286 e!3028287)))

(declare-fun res!2066630 () Bool)

(assert (=> b!4845203 (=> (not res!2066630) (not e!3028287))))

(assert (=> b!4845203 (= res!2066630 (not (containsKey!4636 (t!363076 (_2!32818 (h!61894 l!11108))) (_1!32817 (h!61893 (_2!32818 (h!61894 l!11108)))))))))

(declare-fun b!4845204 () Bool)

(assert (=> b!4845204 (= e!3028287 (noDuplicateKeys!2563 (t!363076 (_2!32818 (h!61894 l!11108)))))))

(assert (= (and d!1554435 (not res!2066629)) b!4845203))

(assert (= (and b!4845203 res!2066630) b!4845204))

(declare-fun m!5843620 () Bool)

(assert (=> b!4845203 m!5843620))

(declare-fun m!5843622 () Bool)

(assert (=> b!4845204 m!5843622))

(assert (=> b!4845160 d!1554435))

(declare-fun tp!1364199 () Bool)

(declare-fun b!4845209 () Bool)

(declare-fun e!3028290 () Bool)

(declare-fun tp_is_empty!35049 () Bool)

(assert (=> b!4845209 (= e!3028290 (and tp_is_empty!35045 tp_is_empty!35049 tp!1364199))))

(assert (=> b!4845158 (= tp!1364190 e!3028290)))

(assert (= (and b!4845158 (is-Cons!55456 (_2!32818 (h!61894 l!11108)))) b!4845209))

(declare-fun b!4845214 () Bool)

(declare-fun e!3028293 () Bool)

(declare-fun tp!1364204 () Bool)

(declare-fun tp!1364205 () Bool)

(assert (=> b!4845214 (= e!3028293 (and tp!1364204 tp!1364205))))

(assert (=> b!4845158 (= tp!1364189 e!3028293)))

(assert (= (and b!4845158 (is-Cons!55457 (t!363077 l!11108))) b!4845214))

(declare-fun b_lambda!192281 () Bool)

(assert (= b_lambda!192279 (or b!4845162 b_lambda!192281)))

(declare-fun bs!1172256 () Bool)

(declare-fun d!1554439 () Bool)

(assert (= bs!1172256 (and d!1554439 b!4845162)))

(assert (=> bs!1172256 (= (dynLambda!22329 lambda!242209 (h!61894 l!11108)) (noDuplicateKeys!2563 (_2!32818 (h!61894 l!11108))))))

(assert (=> bs!1172256 m!5843596))

(assert (=> b!4845182 d!1554439))

(push 1)

(assert (not bs!1172256))

(assert tp_is_empty!35045)

(assert (not b!4845203))

(assert (not b!4845189))

(assert (not b_lambda!192281))

(assert tp_is_empty!35049)

(assert (not b!4845204))

(assert (not b!4845198))

(assert (not b!4845214))

(assert (not b!4845196))

(assert (not b!4845209))

(assert (not b!4845183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)


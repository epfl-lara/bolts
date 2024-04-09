; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!137892 () Bool)

(assert start!137892)

(declare-fun b!1583122 () Bool)

(declare-fun e!883661 () Bool)

(declare-datatypes ((B!2842 0))(
  ( (B!2843 (val!19783 Int)) )
))
(declare-datatypes ((tuple2!25898 0))(
  ( (tuple2!25899 (_1!12959 (_ BitVec 64)) (_2!12959 B!2842)) )
))
(declare-datatypes ((List!37064 0))(
  ( (Nil!37061) (Cons!37060 (h!38604 tuple2!25898) (t!51985 List!37064)) )
))
(declare-fun l!1065 () List!37064)

(declare-fun key!287 () (_ BitVec 64))

(declare-datatypes ((Option!946 0))(
  ( (Some!945 (v!22469 B!2842)) (None!944) )
))
(declare-fun isDefined!606 (Option!946) Bool)

(declare-fun getValueByKey!838 (List!37064 (_ BitVec 64)) Option!946)

(assert (=> b!1583122 (= e!883661 (not (isDefined!606 (getValueByKey!838 l!1065 key!287))))))

(declare-fun res!1081580 () Bool)

(assert (=> start!137892 (=> (not res!1081580) (not e!883661))))

(declare-fun isStrictlySorted!1135 (List!37064) Bool)

(assert (=> start!137892 (= res!1081580 (isStrictlySorted!1135 l!1065))))

(assert (=> start!137892 e!883661))

(declare-fun e!883662 () Bool)

(assert (=> start!137892 e!883662))

(assert (=> start!137892 true))

(declare-fun b!1583120 () Bool)

(declare-fun res!1081578 () Bool)

(assert (=> b!1583120 (=> (not res!1081578) (not e!883661))))

(declare-fun containsKey!981 (List!37064 (_ BitVec 64)) Bool)

(assert (=> b!1583120 (= res!1081578 (containsKey!981 l!1065 key!287))))

(declare-fun b!1583121 () Bool)

(declare-fun res!1081579 () Bool)

(assert (=> b!1583121 (=> (not res!1081579) (not e!883661))))

(get-info :version)

(assert (=> b!1583121 (= res!1081579 (or (not ((_ is Cons!37060) l!1065)) (= (_1!12959 (h!38604 l!1065)) key!287)))))

(declare-fun b!1583123 () Bool)

(declare-fun tp_is_empty!39375 () Bool)

(declare-fun tp!114916 () Bool)

(assert (=> b!1583123 (= e!883662 (and tp_is_empty!39375 tp!114916))))

(assert (= (and start!137892 res!1081580) b!1583120))

(assert (= (and b!1583120 res!1081578) b!1583121))

(assert (= (and b!1583121 res!1081579) b!1583122))

(assert (= (and start!137892 ((_ is Cons!37060) l!1065)) b!1583123))

(declare-fun m!1453159 () Bool)

(assert (=> b!1583122 m!1453159))

(assert (=> b!1583122 m!1453159))

(declare-fun m!1453161 () Bool)

(assert (=> b!1583122 m!1453161))

(declare-fun m!1453163 () Bool)

(assert (=> start!137892 m!1453163))

(declare-fun m!1453165 () Bool)

(assert (=> b!1583120 m!1453165))

(check-sat tp_is_empty!39375 (not start!137892) (not b!1583123) (not b!1583122) (not b!1583120))
(check-sat)
(get-model)

(declare-fun d!167115 () Bool)

(declare-fun res!1081594 () Bool)

(declare-fun e!883673 () Bool)

(assert (=> d!167115 (=> res!1081594 e!883673)))

(assert (=> d!167115 (= res!1081594 (and ((_ is Cons!37060) l!1065) (= (_1!12959 (h!38604 l!1065)) key!287)))))

(assert (=> d!167115 (= (containsKey!981 l!1065 key!287) e!883673)))

(declare-fun b!1583140 () Bool)

(declare-fun e!883674 () Bool)

(assert (=> b!1583140 (= e!883673 e!883674)))

(declare-fun res!1081595 () Bool)

(assert (=> b!1583140 (=> (not res!1081595) (not e!883674))))

(assert (=> b!1583140 (= res!1081595 (and (or (not ((_ is Cons!37060) l!1065)) (bvsle (_1!12959 (h!38604 l!1065)) key!287)) ((_ is Cons!37060) l!1065) (bvslt (_1!12959 (h!38604 l!1065)) key!287)))))

(declare-fun b!1583141 () Bool)

(assert (=> b!1583141 (= e!883674 (containsKey!981 (t!51985 l!1065) key!287))))

(assert (= (and d!167115 (not res!1081594)) b!1583140))

(assert (= (and b!1583140 res!1081595) b!1583141))

(declare-fun m!1453177 () Bool)

(assert (=> b!1583141 m!1453177))

(assert (=> b!1583120 d!167115))

(declare-fun d!167123 () Bool)

(declare-fun res!1081606 () Bool)

(declare-fun e!883689 () Bool)

(assert (=> d!167123 (=> res!1081606 e!883689)))

(assert (=> d!167123 (= res!1081606 (or ((_ is Nil!37061) l!1065) ((_ is Nil!37061) (t!51985 l!1065))))))

(assert (=> d!167123 (= (isStrictlySorted!1135 l!1065) e!883689)))

(declare-fun b!1583160 () Bool)

(declare-fun e!883690 () Bool)

(assert (=> b!1583160 (= e!883689 e!883690)))

(declare-fun res!1081607 () Bool)

(assert (=> b!1583160 (=> (not res!1081607) (not e!883690))))

(assert (=> b!1583160 (= res!1081607 (bvslt (_1!12959 (h!38604 l!1065)) (_1!12959 (h!38604 (t!51985 l!1065)))))))

(declare-fun b!1583161 () Bool)

(assert (=> b!1583161 (= e!883690 (isStrictlySorted!1135 (t!51985 l!1065)))))

(assert (= (and d!167123 (not res!1081606)) b!1583160))

(assert (= (and b!1583160 res!1081607) b!1583161))

(declare-fun m!1453183 () Bool)

(assert (=> b!1583161 m!1453183))

(assert (=> start!137892 d!167123))

(declare-fun d!167129 () Bool)

(declare-fun isEmpty!1194 (Option!946) Bool)

(assert (=> d!167129 (= (isDefined!606 (getValueByKey!838 l!1065 key!287)) (not (isEmpty!1194 (getValueByKey!838 l!1065 key!287))))))

(declare-fun bs!45885 () Bool)

(assert (= bs!45885 d!167129))

(assert (=> bs!45885 m!1453159))

(declare-fun m!1453187 () Bool)

(assert (=> bs!45885 m!1453187))

(assert (=> b!1583122 d!167129))

(declare-fun b!1583192 () Bool)

(declare-fun e!883709 () Option!946)

(assert (=> b!1583192 (= e!883709 (Some!945 (_2!12959 (h!38604 l!1065))))))

(declare-fun b!1583195 () Bool)

(declare-fun e!883710 () Option!946)

(assert (=> b!1583195 (= e!883710 None!944)))

(declare-fun b!1583193 () Bool)

(assert (=> b!1583193 (= e!883709 e!883710)))

(declare-fun c!146664 () Bool)

(assert (=> b!1583193 (= c!146664 (and ((_ is Cons!37060) l!1065) (not (= (_1!12959 (h!38604 l!1065)) key!287))))))

(declare-fun b!1583194 () Bool)

(assert (=> b!1583194 (= e!883710 (getValueByKey!838 (t!51985 l!1065) key!287))))

(declare-fun d!167133 () Bool)

(declare-fun c!146663 () Bool)

(assert (=> d!167133 (= c!146663 (and ((_ is Cons!37060) l!1065) (= (_1!12959 (h!38604 l!1065)) key!287)))))

(assert (=> d!167133 (= (getValueByKey!838 l!1065 key!287) e!883709)))

(assert (= (and d!167133 c!146663) b!1583192))

(assert (= (and d!167133 (not c!146663)) b!1583193))

(assert (= (and b!1583193 c!146664) b!1583194))

(assert (= (and b!1583193 (not c!146664)) b!1583195))

(declare-fun m!1453193 () Bool)

(assert (=> b!1583194 m!1453193))

(assert (=> b!1583122 d!167133))

(declare-fun b!1583204 () Bool)

(declare-fun e!883717 () Bool)

(declare-fun tp!114922 () Bool)

(assert (=> b!1583204 (= e!883717 (and tp_is_empty!39375 tp!114922))))

(assert (=> b!1583123 (= tp!114916 e!883717)))

(assert (= (and b!1583123 ((_ is Cons!37060) (t!51985 l!1065))) b!1583204))

(check-sat (not b!1583204) (not b!1583161) tp_is_empty!39375 (not d!167129) (not b!1583194) (not b!1583141))
(check-sat)
(get-model)

(declare-fun d!167147 () Bool)

(declare-fun res!1081630 () Bool)

(declare-fun e!883739 () Bool)

(assert (=> d!167147 (=> res!1081630 e!883739)))

(assert (=> d!167147 (= res!1081630 (or ((_ is Nil!37061) (t!51985 l!1065)) ((_ is Nil!37061) (t!51985 (t!51985 l!1065)))))))

(assert (=> d!167147 (= (isStrictlySorted!1135 (t!51985 l!1065)) e!883739)))

(declare-fun b!1583232 () Bool)

(declare-fun e!883740 () Bool)

(assert (=> b!1583232 (= e!883739 e!883740)))

(declare-fun res!1081631 () Bool)

(assert (=> b!1583232 (=> (not res!1081631) (not e!883740))))

(assert (=> b!1583232 (= res!1081631 (bvslt (_1!12959 (h!38604 (t!51985 l!1065))) (_1!12959 (h!38604 (t!51985 (t!51985 l!1065))))))))

(declare-fun b!1583233 () Bool)

(assert (=> b!1583233 (= e!883740 (isStrictlySorted!1135 (t!51985 (t!51985 l!1065))))))

(assert (= (and d!167147 (not res!1081630)) b!1583232))

(assert (= (and b!1583232 res!1081631) b!1583233))

(declare-fun m!1453205 () Bool)

(assert (=> b!1583233 m!1453205))

(assert (=> b!1583161 d!167147))

(declare-fun d!167149 () Bool)

(assert (=> d!167149 (= (isEmpty!1194 (getValueByKey!838 l!1065 key!287)) (not ((_ is Some!945) (getValueByKey!838 l!1065 key!287))))))

(assert (=> d!167129 d!167149))

(declare-fun d!167151 () Bool)

(declare-fun res!1081632 () Bool)

(declare-fun e!883741 () Bool)

(assert (=> d!167151 (=> res!1081632 e!883741)))

(assert (=> d!167151 (= res!1081632 (and ((_ is Cons!37060) (t!51985 l!1065)) (= (_1!12959 (h!38604 (t!51985 l!1065))) key!287)))))

(assert (=> d!167151 (= (containsKey!981 (t!51985 l!1065) key!287) e!883741)))

(declare-fun b!1583234 () Bool)

(declare-fun e!883742 () Bool)

(assert (=> b!1583234 (= e!883741 e!883742)))

(declare-fun res!1081633 () Bool)

(assert (=> b!1583234 (=> (not res!1081633) (not e!883742))))

(assert (=> b!1583234 (= res!1081633 (and (or (not ((_ is Cons!37060) (t!51985 l!1065))) (bvsle (_1!12959 (h!38604 (t!51985 l!1065))) key!287)) ((_ is Cons!37060) (t!51985 l!1065)) (bvslt (_1!12959 (h!38604 (t!51985 l!1065))) key!287)))))

(declare-fun b!1583235 () Bool)

(assert (=> b!1583235 (= e!883742 (containsKey!981 (t!51985 (t!51985 l!1065)) key!287))))

(assert (= (and d!167151 (not res!1081632)) b!1583234))

(assert (= (and b!1583234 res!1081633) b!1583235))

(declare-fun m!1453207 () Bool)

(assert (=> b!1583235 m!1453207))

(assert (=> b!1583141 d!167151))

(declare-fun b!1583236 () Bool)

(declare-fun e!883743 () Option!946)

(assert (=> b!1583236 (= e!883743 (Some!945 (_2!12959 (h!38604 (t!51985 l!1065)))))))

(declare-fun b!1583239 () Bool)

(declare-fun e!883744 () Option!946)

(assert (=> b!1583239 (= e!883744 None!944)))

(declare-fun b!1583237 () Bool)

(assert (=> b!1583237 (= e!883743 e!883744)))

(declare-fun c!146668 () Bool)

(assert (=> b!1583237 (= c!146668 (and ((_ is Cons!37060) (t!51985 l!1065)) (not (= (_1!12959 (h!38604 (t!51985 l!1065))) key!287))))))

(declare-fun b!1583238 () Bool)

(assert (=> b!1583238 (= e!883744 (getValueByKey!838 (t!51985 (t!51985 l!1065)) key!287))))

(declare-fun d!167153 () Bool)

(declare-fun c!146667 () Bool)

(assert (=> d!167153 (= c!146667 (and ((_ is Cons!37060) (t!51985 l!1065)) (= (_1!12959 (h!38604 (t!51985 l!1065))) key!287)))))

(assert (=> d!167153 (= (getValueByKey!838 (t!51985 l!1065) key!287) e!883743)))

(assert (= (and d!167153 c!146667) b!1583236))

(assert (= (and d!167153 (not c!146667)) b!1583237))

(assert (= (and b!1583237 c!146668) b!1583238))

(assert (= (and b!1583237 (not c!146668)) b!1583239))

(declare-fun m!1453209 () Bool)

(assert (=> b!1583238 m!1453209))

(assert (=> b!1583194 d!167153))

(declare-fun b!1583240 () Bool)

(declare-fun e!883745 () Bool)

(declare-fun tp!114930 () Bool)

(assert (=> b!1583240 (= e!883745 (and tp_is_empty!39375 tp!114930))))

(assert (=> b!1583204 (= tp!114922 e!883745)))

(assert (= (and b!1583204 ((_ is Cons!37060) (t!51985 (t!51985 l!1065)))) b!1583240))

(check-sat (not b!1583233) tp_is_empty!39375 (not b!1583238) (not b!1583240) (not b!1583235))
(check-sat)

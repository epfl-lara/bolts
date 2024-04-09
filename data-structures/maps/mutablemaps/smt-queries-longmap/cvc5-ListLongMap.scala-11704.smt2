; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!136888 () Bool)

(assert start!136888)

(declare-fun b!1578727 () Bool)

(declare-fun res!1078795 () Bool)

(declare-fun e!880649 () Bool)

(assert (=> b!1578727 (=> (not res!1078795) (not e!880649))))

(declare-fun a!525 () (_ BitVec 64))

(declare-fun a0!51 () (_ BitVec 64))

(assert (=> b!1578727 (= res!1078795 (not (= a!525 a0!51)))))

(declare-fun res!1078796 () Bool)

(assert (=> start!136888 (=> (not res!1078796) (not e!880649))))

(declare-datatypes ((B!2564 0))(
  ( (B!2565 (val!19644 Int)) )
))
(declare-datatypes ((tuple2!25554 0))(
  ( (tuple2!25555 (_1!12787 (_ BitVec 64)) (_2!12787 B!2564)) )
))
(declare-datatypes ((List!36925 0))(
  ( (Nil!36922) (Cons!36921 (h!38465 tuple2!25554) (t!51846 List!36925)) )
))
(declare-datatypes ((ListLongMap!22905 0))(
  ( (ListLongMap!22906 (toList!11468 List!36925)) )
))
(declare-fun lm!251 () ListLongMap!22905)

(declare-fun contains!10453 (ListLongMap!22905 (_ BitVec 64)) Bool)

(assert (=> start!136888 (= res!1078796 (not (contains!10453 lm!251 a0!51)))))

(assert (=> start!136888 e!880649))

(declare-fun e!880650 () Bool)

(declare-fun inv!58920 (ListLongMap!22905) Bool)

(assert (=> start!136888 (and (inv!58920 lm!251) e!880650)))

(assert (=> start!136888 true))

(declare-fun b!1578728 () Bool)

(declare-fun res!1078793 () Bool)

(declare-fun e!880648 () Bool)

(assert (=> b!1578728 (=> res!1078793 e!880648)))

(declare-fun containsKey!873 (List!36925 (_ BitVec 64)) Bool)

(assert (=> b!1578728 (= res!1078793 (containsKey!873 (toList!11468 lm!251) a0!51))))

(declare-fun b!1578729 () Bool)

(assert (=> b!1578729 (= e!880649 e!880648)))

(declare-fun res!1078794 () Bool)

(assert (=> b!1578729 (=> res!1078794 e!880648)))

(declare-fun isStrictlySorted!1023 (List!36925) Bool)

(assert (=> b!1578729 (= res!1078794 (not (isStrictlySorted!1023 (toList!11468 lm!251))))))

(declare-fun b!1578730 () Bool)

(declare-fun tp!114262 () Bool)

(assert (=> b!1578730 (= e!880650 tp!114262)))

(declare-fun b!1578731 () Bool)

(assert (=> b!1578731 (= e!880648 (= a0!51 a!525))))

(assert (= (and start!136888 res!1078796) b!1578727))

(assert (= (and b!1578727 res!1078795) b!1578729))

(assert (= (and b!1578729 (not res!1078794)) b!1578728))

(assert (= (and b!1578728 (not res!1078793)) b!1578731))

(assert (= start!136888 b!1578730))

(declare-fun m!1450799 () Bool)

(assert (=> start!136888 m!1450799))

(declare-fun m!1450801 () Bool)

(assert (=> start!136888 m!1450801))

(declare-fun m!1450803 () Bool)

(assert (=> b!1578728 m!1450803))

(declare-fun m!1450805 () Bool)

(assert (=> b!1578729 m!1450805))

(push 1)

(assert (not b!1578728))

(assert (not b!1578729))

(assert (not start!136888))

(assert (not b!1578730))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!166087 () Bool)

(declare-fun res!1078835 () Bool)

(declare-fun e!880683 () Bool)

(assert (=> d!166087 (=> res!1078835 e!880683)))

(assert (=> d!166087 (= res!1078835 (and (is-Cons!36921 (toList!11468 lm!251)) (= (_1!12787 (h!38465 (toList!11468 lm!251))) a0!51)))))

(assert (=> d!166087 (= (containsKey!873 (toList!11468 lm!251) a0!51) e!880683)))

(declare-fun b!1578776 () Bool)

(declare-fun e!880684 () Bool)

(assert (=> b!1578776 (= e!880683 e!880684)))

(declare-fun res!1078836 () Bool)

(assert (=> b!1578776 (=> (not res!1078836) (not e!880684))))

(assert (=> b!1578776 (= res!1078836 (and (or (not (is-Cons!36921 (toList!11468 lm!251))) (bvsle (_1!12787 (h!38465 (toList!11468 lm!251))) a0!51)) (is-Cons!36921 (toList!11468 lm!251)) (bvslt (_1!12787 (h!38465 (toList!11468 lm!251))) a0!51)))))

(declare-fun b!1578777 () Bool)

(assert (=> b!1578777 (= e!880684 (containsKey!873 (t!51846 (toList!11468 lm!251)) a0!51))))

(assert (= (and d!166087 (not res!1078835)) b!1578776))

(assert (= (and b!1578776 res!1078836) b!1578777))

(declare-fun m!1450825 () Bool)

(assert (=> b!1578777 m!1450825))

(assert (=> b!1578728 d!166087))

(declare-fun d!166095 () Bool)

(declare-fun res!1078843 () Bool)

(declare-fun e!880691 () Bool)

(assert (=> d!166095 (=> res!1078843 e!880691)))

(assert (=> d!166095 (= res!1078843 (or (is-Nil!36922 (toList!11468 lm!251)) (is-Nil!36922 (t!51846 (toList!11468 lm!251)))))))

(assert (=> d!166095 (= (isStrictlySorted!1023 (toList!11468 lm!251)) e!880691)))

(declare-fun b!1578784 () Bool)

(declare-fun e!880692 () Bool)

(assert (=> b!1578784 (= e!880691 e!880692)))

(declare-fun res!1078844 () Bool)

(assert (=> b!1578784 (=> (not res!1078844) (not e!880692))))

(assert (=> b!1578784 (= res!1078844 (bvslt (_1!12787 (h!38465 (toList!11468 lm!251))) (_1!12787 (h!38465 (t!51846 (toList!11468 lm!251))))))))

(declare-fun b!1578785 () Bool)

(assert (=> b!1578785 (= e!880692 (isStrictlySorted!1023 (t!51846 (toList!11468 lm!251))))))

(assert (= (and d!166095 (not res!1078843)) b!1578784))

(assert (= (and b!1578784 res!1078844) b!1578785))

(declare-fun m!1450829 () Bool)

(assert (=> b!1578785 m!1450829))

(assert (=> b!1578729 d!166095))

(declare-fun d!166099 () Bool)

(declare-fun e!880710 () Bool)

(assert (=> d!166099 e!880710))

(declare-fun res!1078853 () Bool)

(assert (=> d!166099 (=> res!1078853 e!880710)))

(declare-fun lt!676287 () Bool)

(assert (=> d!166099 (= res!1078853 (not lt!676287))))

(declare-fun lt!676285 () Bool)

(assert (=> d!166099 (= lt!676287 lt!676285)))

(declare-datatypes ((Unit!52143 0))(
  ( (Unit!52144) )
))
(declare-fun lt!676288 () Unit!52143)

(declare-fun e!880709 () Unit!52143)

(assert (=> d!166099 (= lt!676288 e!880709)))

(declare-fun c!146256 () Bool)

(assert (=> d!166099 (= c!146256 lt!676285)))

(assert (=> d!166099 (= lt!676285 (containsKey!873 (toList!11468 lm!251) a0!51))))

(assert (=> d!166099 (= (contains!10453 lm!251 a0!51) lt!676287)))

(declare-fun b!1578810 () Bool)

(declare-fun lt!676286 () Unit!52143)

(assert (=> b!1578810 (= e!880709 lt!676286)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!538 (List!36925 (_ BitVec 64)) Unit!52143)

(assert (=> b!1578810 (= lt!676286 (lemmaContainsKeyImpliesGetValueByKeyDefined!538 (toList!11468 lm!251) a0!51))))

(declare-datatypes ((Option!878 0))(
  ( (Some!877 (v!22362 B!2564)) (None!876) )
))
(declare-fun isDefined!587 (Option!878) Bool)

(declare-fun getValueByKey!803 (List!36925 (_ BitVec 64)) Option!878)

(assert (=> b!1578810 (isDefined!587 (getValueByKey!803 (toList!11468 lm!251) a0!51))))

(declare-fun b!1578811 () Bool)

(declare-fun Unit!52146 () Unit!52143)

(assert (=> b!1578811 (= e!880709 Unit!52146)))

(declare-fun b!1578812 () Bool)

(assert (=> b!1578812 (= e!880710 (isDefined!587 (getValueByKey!803 (toList!11468 lm!251) a0!51)))))

(assert (= (and d!166099 c!146256) b!1578810))

(assert (= (and d!166099 (not c!146256)) b!1578811))

(assert (= (and d!166099 (not res!1078853)) b!1578812))

(assert (=> d!166099 m!1450803))

(declare-fun m!1450843 () Bool)

(assert (=> b!1578810 m!1450843))

(declare-fun m!1450845 () Bool)

(assert (=> b!1578810 m!1450845))

(assert (=> b!1578810 m!1450845))

(declare-fun m!1450847 () Bool)

(assert (=> b!1578810 m!1450847))

(assert (=> b!1578812 m!1450845))

(assert (=> b!1578812 m!1450845))

(assert (=> b!1578812 m!1450847))

(assert (=> start!136888 d!166099))

(declare-fun d!166109 () Bool)

(assert (=> d!166109 (= (inv!58920 lm!251) (isStrictlySorted!1023 (toList!11468 lm!251)))))

(declare-fun bs!45711 () Bool)

(assert (= bs!45711 d!166109))

(assert (=> bs!45711 m!1450805))

(assert (=> start!136888 d!166109))

(declare-fun b!1578833 () Bool)

(declare-fun e!880727 () Bool)

(declare-fun tp_is_empty!39109 () Bool)

(declare-fun tp!114273 () Bool)

(assert (=> b!1578833 (= e!880727 (and tp_is_empty!39109 tp!114273))))

(assert (=> b!1578730 (= tp!114262 e!880727)))

(assert (= (and b!1578730 (is-Cons!36921 (toList!11468 lm!251))) b!1578833))

(push 1)


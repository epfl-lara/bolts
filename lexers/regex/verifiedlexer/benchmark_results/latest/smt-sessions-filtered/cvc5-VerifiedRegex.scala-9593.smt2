; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504658 () Bool)

(assert start!504658)

(declare-fun b!4845702 () Bool)

(declare-fun e!3028650 () Bool)

(declare-datatypes ((K!17252 0))(
  ( (K!17253 (val!22107 Int)) )
))
(declare-datatypes ((V!17498 0))(
  ( (V!17499 (val!22108 Int)) )
))
(declare-datatypes ((tuple2!59086 0))(
  ( (tuple2!59087 (_1!32837 K!17252) (_2!32837 V!17498)) )
))
(declare-datatypes ((List!55600 0))(
  ( (Nil!55476) (Cons!55476 (h!61913 tuple2!59086) (t!363096 List!55600)) )
))
(declare-datatypes ((tuple2!59088 0))(
  ( (tuple2!59089 (_1!32838 (_ BitVec 64)) (_2!32838 List!55600)) )
))
(declare-datatypes ((List!55601 0))(
  ( (Nil!55477) (Cons!55477 (h!61914 tuple2!59088) (t!363097 List!55601)) )
))
(declare-fun l!11108 () List!55601)

(declare-fun ListPrimitiveSize!356 (List!55601) Int)

(assert (=> b!4845702 (= e!3028650 (>= (ListPrimitiveSize!356 (t!363097 l!11108)) (ListPrimitiveSize!356 l!11108)))))

(declare-fun b!4845703 () Bool)

(declare-fun res!2066966 () Bool)

(assert (=> b!4845703 (=> (not res!2066966) (not e!3028650))))

(assert (=> b!4845703 (= res!2066966 (is-Cons!55477 l!11108))))

(declare-fun b!4845704 () Bool)

(declare-fun res!2066968 () Bool)

(assert (=> b!4845704 (=> (not res!2066968) (not e!3028650))))

(declare-fun lambda!242243 () Int)

(declare-fun forall!12912 (List!55601 Int) Bool)

(assert (=> b!4845704 (= res!2066968 (forall!12912 l!11108 lambda!242243))))

(declare-fun b!4845705 () Bool)

(declare-fun e!3028649 () Bool)

(declare-fun k!1656 () K!17252)

(declare-fun containsKey!4645 (List!55600 K!17252) Bool)

(assert (=> b!4845705 (= e!3028649 (not (containsKey!4645 (_2!32838 (h!61914 l!11108)) k!1656)))))

(declare-fun b!4845706 () Bool)

(declare-fun e!3028651 () Bool)

(declare-fun tp!1364340 () Bool)

(declare-fun tp!1364339 () Bool)

(assert (=> b!4845706 (= e!3028651 (and tp!1364340 tp!1364339))))

(declare-fun res!2066970 () Bool)

(assert (=> start!504658 (=> (not res!2066970) (not e!3028650))))

(declare-fun containsKeyBiggerList!757 (List!55601 K!17252) Bool)

(assert (=> start!504658 (= res!2066970 (containsKeyBiggerList!757 l!11108 k!1656))))

(assert (=> start!504658 e!3028650))

(assert (=> start!504658 e!3028651))

(declare-fun tp_is_empty!35085 () Bool)

(assert (=> start!504658 tp_is_empty!35085))

(declare-fun b!4845707 () Bool)

(declare-fun res!2066969 () Bool)

(assert (=> b!4845707 (=> (not res!2066969) (not e!3028650))))

(assert (=> b!4845707 (= res!2066969 e!3028649)))

(declare-fun res!2066967 () Bool)

(assert (=> b!4845707 (=> res!2066967 e!3028649)))

(assert (=> b!4845707 (= res!2066967 (not (is-Cons!55477 l!11108)))))

(assert (= (and start!504658 res!2066970) b!4845704))

(assert (= (and b!4845704 res!2066968) b!4845707))

(assert (= (and b!4845707 (not res!2066967)) b!4845705))

(assert (= (and b!4845707 res!2066969) b!4845703))

(assert (= (and b!4845703 res!2066966) b!4845702))

(assert (= (and start!504658 (is-Cons!55477 l!11108)) b!4845706))

(declare-fun m!5843824 () Bool)

(assert (=> b!4845702 m!5843824))

(declare-fun m!5843826 () Bool)

(assert (=> b!4845702 m!5843826))

(declare-fun m!5843828 () Bool)

(assert (=> b!4845704 m!5843828))

(declare-fun m!5843830 () Bool)

(assert (=> b!4845705 m!5843830))

(declare-fun m!5843832 () Bool)

(assert (=> start!504658 m!5843832))

(push 1)

(assert (not b!4845704))

(assert (not b!4845705))

(assert tp_is_empty!35085)

(assert (not b!4845702))

(assert (not start!504658))

(assert (not b!4845706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554540 () Bool)

(declare-fun res!2066990 () Bool)

(declare-fun e!3028665 () Bool)

(assert (=> d!1554540 (=> res!2066990 e!3028665)))

(assert (=> d!1554540 (= res!2066990 (is-Nil!55477 l!11108))))

(assert (=> d!1554540 (= (forall!12912 l!11108 lambda!242243) e!3028665)))

(declare-fun b!4845730 () Bool)

(declare-fun e!3028666 () Bool)

(assert (=> b!4845730 (= e!3028665 e!3028666)))

(declare-fun res!2066991 () Bool)

(assert (=> b!4845730 (=> (not res!2066991) (not e!3028666))))

(declare-fun dynLambda!22336 (Int tuple2!59088) Bool)

(assert (=> b!4845730 (= res!2066991 (dynLambda!22336 lambda!242243 (h!61914 l!11108)))))

(declare-fun b!4845731 () Bool)

(assert (=> b!4845731 (= e!3028666 (forall!12912 (t!363097 l!11108) lambda!242243))))

(assert (= (and d!1554540 (not res!2066990)) b!4845730))

(assert (= (and b!4845730 res!2066991) b!4845731))

(declare-fun b_lambda!192323 () Bool)

(assert (=> (not b_lambda!192323) (not b!4845730)))

(declare-fun m!5843844 () Bool)

(assert (=> b!4845730 m!5843844))

(declare-fun m!5843846 () Bool)

(assert (=> b!4845731 m!5843846))

(assert (=> b!4845704 d!1554540))

(declare-fun d!1554544 () Bool)

(declare-fun res!2067002 () Bool)

(declare-fun e!3028677 () Bool)

(assert (=> d!1554544 (=> res!2067002 e!3028677)))

(assert (=> d!1554544 (= res!2067002 (and (is-Cons!55476 (_2!32838 (h!61914 l!11108))) (= (_1!32837 (h!61913 (_2!32838 (h!61914 l!11108)))) k!1656)))))

(assert (=> d!1554544 (= (containsKey!4645 (_2!32838 (h!61914 l!11108)) k!1656) e!3028677)))

(declare-fun b!4845742 () Bool)

(declare-fun e!3028678 () Bool)

(assert (=> b!4845742 (= e!3028677 e!3028678)))

(declare-fun res!2067003 () Bool)

(assert (=> b!4845742 (=> (not res!2067003) (not e!3028678))))

(assert (=> b!4845742 (= res!2067003 (is-Cons!55476 (_2!32838 (h!61914 l!11108))))))

(declare-fun b!4845743 () Bool)

(assert (=> b!4845743 (= e!3028678 (containsKey!4645 (t!363096 (_2!32838 (h!61914 l!11108))) k!1656))))

(assert (= (and d!1554544 (not res!2067002)) b!4845742))

(assert (= (and b!4845742 res!2067003) b!4845743))

(declare-fun m!5843848 () Bool)

(assert (=> b!4845743 m!5843848))

(assert (=> b!4845705 d!1554544))

(declare-fun d!1554546 () Bool)

(declare-fun res!2067015 () Bool)

(declare-fun e!3028689 () Bool)

(assert (=> d!1554546 (=> res!2067015 e!3028689)))

(declare-fun e!3028688 () Bool)

(assert (=> d!1554546 (= res!2067015 e!3028688)))

(declare-fun res!2067013 () Bool)

(assert (=> d!1554546 (=> (not res!2067013) (not e!3028688))))

(assert (=> d!1554546 (= res!2067013 (is-Cons!55477 l!11108))))

(assert (=> d!1554546 (= (containsKeyBiggerList!757 l!11108 k!1656) e!3028689)))

(declare-fun b!4845753 () Bool)

(assert (=> b!4845753 (= e!3028688 (containsKey!4645 (_2!32838 (h!61914 l!11108)) k!1656))))

(declare-fun b!4845754 () Bool)

(declare-fun e!3028690 () Bool)

(assert (=> b!4845754 (= e!3028689 e!3028690)))

(declare-fun res!2067014 () Bool)

(assert (=> b!4845754 (=> (not res!2067014) (not e!3028690))))

(assert (=> b!4845754 (= res!2067014 (is-Cons!55477 l!11108))))

(declare-fun b!4845755 () Bool)

(assert (=> b!4845755 (= e!3028690 (containsKeyBiggerList!757 (t!363097 l!11108) k!1656))))

(assert (= (and d!1554546 res!2067013) b!4845753))

(assert (= (and d!1554546 (not res!2067015)) b!4845754))

(assert (= (and b!4845754 res!2067014) b!4845755))

(assert (=> b!4845753 m!5843830))

(declare-fun m!5843852 () Bool)

(assert (=> b!4845755 m!5843852))

(assert (=> start!504658 d!1554546))

(declare-fun d!1554550 () Bool)

(declare-fun lt!1987924 () Int)

(assert (=> d!1554550 (>= lt!1987924 0)))

(declare-fun e!3028697 () Int)

(assert (=> d!1554550 (= lt!1987924 e!3028697)))

(declare-fun c!824967 () Bool)

(assert (=> d!1554550 (= c!824967 (is-Nil!55477 (t!363097 l!11108)))))

(assert (=> d!1554550 (= (ListPrimitiveSize!356 (t!363097 l!11108)) lt!1987924)))

(declare-fun b!4845764 () Bool)

(assert (=> b!4845764 (= e!3028697 0)))

(declare-fun b!4845765 () Bool)

(assert (=> b!4845765 (= e!3028697 (+ 1 (ListPrimitiveSize!356 (t!363097 (t!363097 l!11108)))))))

(assert (= (and d!1554550 c!824967) b!4845764))

(assert (= (and d!1554550 (not c!824967)) b!4845765))

(declare-fun m!5843854 () Bool)

(assert (=> b!4845765 m!5843854))

(assert (=> b!4845702 d!1554550))

(declare-fun d!1554552 () Bool)

(declare-fun lt!1987925 () Int)

(assert (=> d!1554552 (>= lt!1987925 0)))

(declare-fun e!3028698 () Int)

(assert (=> d!1554552 (= lt!1987925 e!3028698)))

(declare-fun c!824968 () Bool)

(assert (=> d!1554552 (= c!824968 (is-Nil!55477 l!11108))))

(assert (=> d!1554552 (= (ListPrimitiveSize!356 l!11108) lt!1987925)))

(declare-fun b!4845766 () Bool)

(assert (=> b!4845766 (= e!3028698 0)))

(declare-fun b!4845767 () Bool)

(assert (=> b!4845767 (= e!3028698 (+ 1 (ListPrimitiveSize!356 (t!363097 l!11108))))))

(assert (= (and d!1554552 c!824968) b!4845766))

(assert (= (and d!1554552 (not c!824968)) b!4845767))

(assert (=> b!4845767 m!5843824))

(assert (=> b!4845702 d!1554552))

(declare-fun tp!1364349 () Bool)

(declare-fun e!3028703 () Bool)

(declare-fun b!4845774 () Bool)

(declare-fun tp_is_empty!35089 () Bool)

(assert (=> b!4845774 (= e!3028703 (and tp_is_empty!35085 tp_is_empty!35089 tp!1364349))))

(assert (=> b!4845706 (= tp!1364340 e!3028703)))

(assert (= (and b!4845706 (is-Cons!55476 (_2!32838 (h!61914 l!11108)))) b!4845774))

(declare-fun b!4845779 () Bool)

(declare-fun e!3028706 () Bool)

(declare-fun tp!1364354 () Bool)

(declare-fun tp!1364355 () Bool)

(assert (=> b!4845779 (= e!3028706 (and tp!1364354 tp!1364355))))

(assert (=> b!4845706 (= tp!1364339 e!3028706)))

(assert (= (and b!4845706 (is-Cons!55477 (t!363097 l!11108))) b!4845779))

(declare-fun b_lambda!192327 () Bool)

(assert (= b_lambda!192323 (or b!4845704 b_lambda!192327)))

(declare-fun bs!1172279 () Bool)

(declare-fun d!1554556 () Bool)

(assert (= bs!1172279 (and d!1554556 b!4845704)))

(declare-fun noDuplicateKeys!2570 (List!55600) Bool)

(assert (=> bs!1172279 (= (dynLambda!22336 lambda!242243 (h!61914 l!11108)) (noDuplicateKeys!2570 (_2!32838 (h!61914 l!11108))))))

(declare-fun m!5843860 () Bool)

(assert (=> bs!1172279 m!5843860))

(assert (=> b!4845730 d!1554556))

(push 1)

(assert (not b!4845755))

(assert (not b_lambda!192327))

(assert (not b!4845774))

(assert (not b!4845753))

(assert (not b!4845743))

(assert tp_is_empty!35085)

(assert (not b!4845731))

(assert (not bs!1172279))

(assert (not b!4845779))

(assert tp_is_empty!35089)

(assert (not b!4845767))

(assert (not b!4845765))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

